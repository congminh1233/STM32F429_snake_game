################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STemWin/Config/GUIConf.c \
../Middlewares/ST/STemWin/Config/GUIDRV_Template.c \
../Middlewares/ST/STemWin/Config/LCDConf_FlexColor_Template.c \
../Middlewares/ST/STemWin/Config/LCDConf_Lin_Template.c \
../Middlewares/ST/STemWin/Config/SIMConf.c 

OBJS += \
./Middlewares/ST/STemWin/Config/GUIConf.o \
./Middlewares/ST/STemWin/Config/GUIDRV_Template.o \
./Middlewares/ST/STemWin/Config/LCDConf_FlexColor_Template.o \
./Middlewares/ST/STemWin/Config/LCDConf_Lin_Template.o \
./Middlewares/ST/STemWin/Config/SIMConf.o 

C_DEPS += \
./Middlewares/ST/STemWin/Config/GUIConf.d \
./Middlewares/ST/STemWin/Config/GUIDRV_Template.d \
./Middlewares/ST/STemWin/Config/LCDConf_FlexColor_Template.d \
./Middlewares/ST/STemWin/Config/LCDConf_Lin_Template.d \
./Middlewares/ST/STemWin/Config/SIMConf.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STemWin/Config/%.o Middlewares/ST/STemWin/Config/%.su Middlewares/ST/STemWin/Config/%.cyclo: ../Middlewares/ST/STemWin/Config/%.c Middlewares/ST/STemWin/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STemWin-2f-Config

clean-Middlewares-2f-ST-2f-STemWin-2f-Config:
	-$(RM) ./Middlewares/ST/STemWin/Config/GUIConf.cyclo ./Middlewares/ST/STemWin/Config/GUIConf.d ./Middlewares/ST/STemWin/Config/GUIConf.o ./Middlewares/ST/STemWin/Config/GUIConf.su ./Middlewares/ST/STemWin/Config/GUIDRV_Template.cyclo ./Middlewares/ST/STemWin/Config/GUIDRV_Template.d ./Middlewares/ST/STemWin/Config/GUIDRV_Template.o ./Middlewares/ST/STemWin/Config/GUIDRV_Template.su ./Middlewares/ST/STemWin/Config/LCDConf_FlexColor_Template.cyclo ./Middlewares/ST/STemWin/Config/LCDConf_FlexColor_Template.d ./Middlewares/ST/STemWin/Config/LCDConf_FlexColor_Template.o ./Middlewares/ST/STemWin/Config/LCDConf_FlexColor_Template.su ./Middlewares/ST/STemWin/Config/LCDConf_Lin_Template.cyclo ./Middlewares/ST/STemWin/Config/LCDConf_Lin_Template.d ./Middlewares/ST/STemWin/Config/LCDConf_Lin_Template.o ./Middlewares/ST/STemWin/Config/LCDConf_Lin_Template.su ./Middlewares/ST/STemWin/Config/SIMConf.cyclo ./Middlewares/ST/STemWin/Config/SIMConf.d ./Middlewares/ST/STemWin/Config/SIMConf.o ./Middlewares/ST/STemWin/Config/SIMConf.su

.PHONY: clean-Middlewares-2f-ST-2f-STemWin-2f-Config

