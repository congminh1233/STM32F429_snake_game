################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STemWin/OS/GUI_X.c \
../Middlewares/ST/STemWin/OS/GUI_X_OS.c 

OBJS += \
./Middlewares/ST/STemWin/OS/GUI_X.o \
./Middlewares/ST/STemWin/OS/GUI_X_OS.o 

C_DEPS += \
./Middlewares/ST/STemWin/OS/GUI_X.d \
./Middlewares/ST/STemWin/OS/GUI_X_OS.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STemWin/OS/%.o Middlewares/ST/STemWin/OS/%.su Middlewares/ST/STemWin/OS/%.cyclo: ../Middlewares/ST/STemWin/OS/%.c Middlewares/ST/STemWin/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STemWin-2f-OS

clean-Middlewares-2f-ST-2f-STemWin-2f-OS:
	-$(RM) ./Middlewares/ST/STemWin/OS/GUI_X.cyclo ./Middlewares/ST/STemWin/OS/GUI_X.d ./Middlewares/ST/STemWin/OS/GUI_X.o ./Middlewares/ST/STemWin/OS/GUI_X.su ./Middlewares/ST/STemWin/OS/GUI_X_OS.cyclo ./Middlewares/ST/STemWin/OS/GUI_X_OS.d ./Middlewares/ST/STemWin/OS/GUI_X_OS.o ./Middlewares/ST/STemWin/OS/GUI_X_OS.su

.PHONY: clean-Middlewares-2f-ST-2f-STemWin-2f-OS

