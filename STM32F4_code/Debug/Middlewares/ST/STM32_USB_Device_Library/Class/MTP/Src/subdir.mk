################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.c \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.c \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.c \
../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.c 

OBJS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.o \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.o \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.o \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.o 

C_DEPS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.d \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.d \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.d \
./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.o Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.su Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.cyclo: ../Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/%.c Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MTP-2f-Src

clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MTP-2f-Src:
	-$(RM) ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp.su ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_if_template.su ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_opt.su ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.d ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.o ./Middlewares/ST/STM32_USB_Device_Library/Class/MTP/Src/usbd_mtp_storage.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-MTP-2f-Src

