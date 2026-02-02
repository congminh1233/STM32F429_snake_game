################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/test/unit/tcp/tcp_helper.c \
../Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp.c \
../Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp_oos.c 

OBJS += \
./Middlewares/Third_Party/LwIP/test/unit/tcp/tcp_helper.o \
./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp.o \
./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp_oos.o 

C_DEPS += \
./Middlewares/Third_Party/LwIP/test/unit/tcp/tcp_helper.d \
./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp.d \
./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp_oos.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/test/unit/tcp/%.o Middlewares/Third_Party/LwIP/test/unit/tcp/%.su Middlewares/Third_Party/LwIP/test/unit/tcp/%.cyclo: ../Middlewares/Third_Party/LwIP/test/unit/tcp/%.c Middlewares/Third_Party/LwIP/test/unit/tcp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-test-2f-unit-2f-tcp

clean-Middlewares-2f-Third_Party-2f-LwIP-2f-test-2f-unit-2f-tcp:
	-$(RM) ./Middlewares/Third_Party/LwIP/test/unit/tcp/tcp_helper.cyclo ./Middlewares/Third_Party/LwIP/test/unit/tcp/tcp_helper.d ./Middlewares/Third_Party/LwIP/test/unit/tcp/tcp_helper.o ./Middlewares/Third_Party/LwIP/test/unit/tcp/tcp_helper.su ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp.cyclo ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp.d ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp.o ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp.su ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp_oos.cyclo ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp_oos.d ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp_oos.o ./Middlewares/Third_Party/LwIP/test/unit/tcp/test_tcp_oos.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-test-2f-unit-2f-tcp

