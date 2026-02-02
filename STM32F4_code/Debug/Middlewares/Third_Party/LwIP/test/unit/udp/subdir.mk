################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/test/unit/udp/test_udp.c 

OBJS += \
./Middlewares/Third_Party/LwIP/test/unit/udp/test_udp.o 

C_DEPS += \
./Middlewares/Third_Party/LwIP/test/unit/udp/test_udp.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/test/unit/udp/%.o Middlewares/Third_Party/LwIP/test/unit/udp/%.su Middlewares/Third_Party/LwIP/test/unit/udp/%.cyclo: ../Middlewares/Third_Party/LwIP/test/unit/udp/%.c Middlewares/Third_Party/LwIP/test/unit/udp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-test-2f-unit-2f-udp

clean-Middlewares-2f-Third_Party-2f-LwIP-2f-test-2f-unit-2f-udp:
	-$(RM) ./Middlewares/Third_Party/LwIP/test/unit/udp/test_udp.cyclo ./Middlewares/Third_Party/LwIP/test/unit/udp/test_udp.d ./Middlewares/Third_Party/LwIP/test/unit/udp/test_udp.o ./Middlewares/Third_Party/LwIP/test/unit/udp/test_udp.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-test-2f-unit-2f-udp

