# BÁO CÁO MÔN HỌC: HỆ NHÚNG
## ĐỀ TÀI: LẬP TRÌNH GAME SNAKE TRÊN STM32F429 DISCOVERY

---

## 1. Giới thiệu

Báo cáo này trình bày quy trình thiết kế và thi công phần mềm game **Snake (Rắn săn mồi)** trên bộ kit phát triển **STM32F429 Discovery**. Dự án sử dụng hệ điều hành thời gian thực **FreeRTOS** để quản lý đa nhiệm và thư viện **BSP** để điều khiển màn hình cảm ứng **LCD TFT** tích hợp.

## 2. Phần cứng & Công cụ sử dụng

### 2.1 Phần cứng
- **Board:** STM32F429I-DISC1
- **MCU:** STM32F429ZIT6 (ARM Cortex-M4, 180MHz)
- **Hiển thị:** Màn hình LCD TFT 240×320 (giao tiếp qua bộ điều khiển LTDC)
- **Bộ nhớ:** SDRAM (làm Frame Buffer cho màn hình)
- **Input:** Nút nhấn User Button (PA0) trên board

### 2.2 Công cụ phát triển
- **IDE:** STM32CubeIDE, STM32CubeMX
- **Thư viện:** STM32 HAL Driver, BSP (Board Support Package)
- **Hệ điều hành:** FreeRTOS (CMSIS-RTOS v2)
- **Ngôn ngữ:** C

---

## 3. Quá trình xây dựng chương trình

Quá trình phát triển được chia thành các giai đoạn nhỏ (milestones), từ việc cấu hình hệ thống cơ bản đến hoàn thiện logic game phức tạp.

### 3.1. Giai đoạn 1: Cấu hình FreeRTOS & Xử lý Nút nhấn (Input)

**Vấn đề gặp phải:**
- Cần chuyển đổi từ FreeRTOS v1 sang **CMSIS-RTOS v2** để hỗ trợ quản lý Task tốt hơn.
- Nút nhấn User Button cần xử lý sự kiện theo **cạnh lên** (từ nhả sang nhấn) thay vì mức logic.

**Giải pháp & Code hiện thực:**
- Cấu hình lại nút nhấn User (PA0) và tạo Task chuyên biệt để quét nút.
- Sử dụng biến trạng thái `last` để phát hiện cạnh lên.

*Trích đoạn code xử lý Input và LED (`main.c`):*
```c
// Đọc nút USER và gửi event khi phát hiện cạnh nhấn
void Task_Input(void *argument)
{
    GPIO_PinState last = GPIO_PIN_RESET;
    Event_t event = EV_CHANGE_DIR;

    while (1)
    {
        GPIO_PinState now = HAL_GPIO_ReadPin(USER_BUTTON_GPIO_Port,
                                             USER_BUTTON_Pin);

        /* Bắt cạnh lên: Trạng thái cũ là RESET, mới là SET */
        if (last == GPIO_PIN_RESET && now == GPIO_PIN_SET)
            osMessageQueuePut(buttonQueue, &event, 0, 0);

        last = now;
        osDelay(10); // Debounce 10ms
    }
}

// Nhận event và thay đổi tốc độ nháy LED
void Task_LED(void *argument)
{
    uint8_t event;

    while (1)
    {
        if (osMessageQueueGet(buttonQueue, &event, NULL, 0) == osOK)
        {
            led_delay = (led_delay == 500) ? 200 : 500;
        }

        HAL_GPIO_TogglePin(LED_GPIO_Port, GPIO_PIN_13);
        osDelay(led_delay);
    }
}
```

---

### 3.2. Giai đoạn 2: Quản lý sự kiện (Event Driven)

**Mục tiêu:**
Loại bỏ việc sử dụng biến toàn cục (Global Variable) để đồng bộ giữa các Task, tránh tình trạng xung đột dữ liệu (Race Condition).

**Giải pháp:**

* Định nghĩa `enum` các sự kiện.
* Sử dụng `osMessageQueue` để truyền thông điệp giữa `Task_Input` và `Task_GameTick`.

*Trích đoạn định nghĩa (`main.c`):*

```c
typedef enum
{
    EV_NONE = 0,
    EV_CHANGE_DIR
} Event_t;

/* Queue khởi tạo trong main */
buttonQueue = osMessageQueueNew(4, sizeof(Event_t), NULL);

```

---

### 3.3. Giai đoạn 3: Hiển thị LCD & Chia màn thành các Tile

**Vấn đề gặp phải:**

* **Lỗi màn hình:** Màn hình bị hiện tượng 1/3 đen, phần còn lại nháy trắng hoặc nhiễu.
* **Nguyên nhân:** Cấu hình Clock cho bộ LTDC chưa chuẩn (quá cao so với khả năng của màn hình ILI9341).
* **Thư viện:** Cần copy và tích hợp thư viện BSP (`stm32f429i_discovery_lcd.c`) vào project thủ công.

**Giải pháp:**

* Điều chỉnh **PLLSAI** trong Clock Configuration: N=336, Q=7, R=4, DivR=8 để Clock LCD về mức **6 MHz**.
* Xây dựng hệ thống lưới (Tile System) kích thước 10x10 pixel.

*Trích đoạn code vẽ Tile (`main.c`):*

```c
#define TILE_SIZE     10

/* Vẽ một ô vuông 10x10 pixel tại tọa độ lưới (x, y) */
void draw_tile(uint16_t x, uint16_t y, uint32_t color)
{
    BSP_LCD_SetTextColor(color);
    BSP_LCD_FillRect(
        x * TILE_SIZE,
        MAP_H_OFFSET + y * TILE_SIZE, // Offset tránh đè lên điểm số
        TILE_SIZE,
        TILE_SIZE
    );
}

```

---

### 3.4. Giai đoạn 4: Game Tick & Cơ chế di chuyển (Warping)

**Vấn đề gặp phải:**

* Khi rắn đi ra khỏi màn hình, tọa độ tăng vô hạn gây lỗi bộ nhớ hoặc biến mất.
* Chỉ có 1 nút bấm nên logic di chuyển là xoay vòng (Lên -> Phải -> Xuống -> Trái).

**Giải pháp:**

* Xử lý logic tọa độ trong hàm `get_next_head` để rắn "xuyên tường" (Warping) từ cạnh này sang cạnh kia.

*Trích đoạn code Warping (`main.c`):*

```c
Point_t get_next_head(Snake_t *s)
{
    Point_t h = s->body[s->length - 1];

    /* Thay đổi tọa độ theo hướng */
    switch (s->dir)
    {
        case DIR_UP:    h.y--; break;
        case DIR_DOWN:  h.y++; break;
        case DIR_LEFT:  h.x--; break;
        case DIR_RIGHT: h.x++; break;
    }

    /* Xử lý xuyên tường */
    if (h.x >= MAP_W) h.x = 0;
    if (h.y >= MAP_H) h.y = 0;
    if (h.x < 0) h.x = MAP_W - 1;
    if (h.y < 0) h.y = MAP_H - 1;

    return h;
}

```

---

### 3.5. Giai đoạn 5: Logic Rắn (Thân & Đuôi)

**Vấn đề gặp phải:**

* Rắn di chuyển nhưng để lại "vệt dài" (Trail) màu xanh trên màn hình do không xóa đốt đuôi cũ.
* **Lỗi logic:** Đầu rắn không đi được vào vị trí đuôi vừa rút đi trong cùng 1 tick (trừ khi ăn mồi). Khi rắn di chuyển, đuôi sẽ rời đi, ô đó đáng lẽ phải trống cho đầu rắn đi vào, nhưng code va chạm cũ tính cả đuôi khiến rắn tự cắn mình oan uổng.

**Giải pháp:**

* Lưu lại tọa độ đuôi trước khi di chuyển để xóa hiển thị.
* Điều chỉnh vòng lặp kiểm tra va chạm: **Bắt đầu từ `i = 1**` (bỏ qua phần tử `body[0]` là đuôi rắn) vì đuôi sẽ di chuyển đi ngay trong tick này.

*Trích đoạn code xử lý va chạm và đuôi (`main.c`):*

```c
/* 1. Giải pháp bug va chạm đuôi: Bắt đầu kiểm tra từ i=1 thay vì i=0 */
bool snake_hit_self(Snake_t *s, Point_t h)
{
    for (int i = 1; i < s->length; i++) // Bỏ qua đuôi (index 0)
    {
        if (s->body[i].x == h.x &&
            s->body[i].y == h.y)
            return true;
    }
    return false;
}

/* 2. Xử lý xóa hiển thị đuôi cũ */
if (!grow)
{
    RenderCmd_t erase = {
        .x = old_tail.x,
        .y = old_tail.y,
        .color = LCD_COLOR_BLACK
    };
    osMessageQueuePut(renderQueue, &erase, 0, 0);
}

```

---

### 3.6. Giai đoạn 6: Random Food & Thuật toán LFSR

**Vấn đề gặp phải:**

* Hàm `rand()` chuẩn của C cần thư viện nặng và seed thời gian.
* Vị trí thức ăn (Food) sinh ra ngẫu nhiên có thể bị trùng vào thân rắn.

**Giải pháp:**

* Tự cài đặt bộ tạo số ngẫu nhiên giả (Pseudo-random) dùng thuật toán **LFSR 32-bit**.
* Dùng vòng lặp `do-while` để kiểm tra trùng lặp vị trí spawn.

*Trích đoạn code Random & Spawn (`main.c`):*

```c
/* Bộ tạo số ngẫu nhiên LFSR nhẹ cho hệ nhúng */
uint32_t lfsr_rand(void)
{
    uint32_t lsb = lfsr & 1;
    lfsr >>= 1;
    if (lsb)
        lfsr ^= 0x80200003;
    return lfsr;
}

/* Sinh thức ăn đảm bảo không trùng thân */
void food_spawn(Food_t *f, const Snake_t *s)
{
    Point_t p;
    bool ok;
    do {
        ok = true;
        p.x = rand_range(MAP_W);
        p.y = rand_range(MAP_H);

        /* Kiểm tra trùng lặp */
        for (int i = 0; i < s->length; i++)
        {
            if (s->body[i].x == p.x && s->body[i].y == p.y)
            {
                ok = false;
                break;
            }
        }
    } while (!ok);
    // ... Gán tọa độ và vẽ food ...
}

```

---

### 3.7. Giai đoạn 7: Tính điểm, HUD & Border

**Vấn đề gặp phải:**

* Khi rắn đi lên cạnh trên cùng (`y=0`), hình ảnh rắn bị vẽ đè lên điểm số.
* Vùng biên giới hạn game bị thủng khi rắn chạm vào.

**Giải pháp:**

* Tạo vùng **HUD Offset** (20 pixel). Toàn bộ Map game được dịch xuống dưới vùng này.
* Vẽ đường viền ngăn cách.

*Trích đoạn code hiển thị (`main.c`):*

```c
#define HUD_HEIGHT    20
#define MAP_H_OFFSET   (HUD_HEIGHT + 1)

void draw_score(uint32_t score)
{
    char buf[20];
    /* Xóa vùng HUD cũ và vẽ điểm mới */
    BSP_LCD_SetTextColor(LCD_COLOR_BLACK);
    BSP_LCD_FillRect(0, 0, SCREEN_W, HUD_HEIGHT);
    
    BSP_LCD_SetTextColor(LCD_COLOR_WHITE);
    BSP_LCD_SetBackColor(LCD_COLOR_BLACK);
    BSP_LCD_SetFont(&Font16);
    
    sprintf(buf, "Score: %lu", score);
    BSP_LCD_DisplayStringAt(5, 2, (uint8_t*)buf, LEFT_MODE);
}

```
