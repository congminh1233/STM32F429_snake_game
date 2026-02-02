################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/mbedTLS/programs/test/benchmark.c \
../Middlewares/Third_Party/mbedTLS/programs/test/query_compile_time_config.c \
../Middlewares/Third_Party/mbedTLS/programs/test/selftest.c \
../Middlewares/Third_Party/mbedTLS/programs/test/udp_proxy.c \
../Middlewares/Third_Party/mbedTLS/programs/test/zeroize.c 

OBJS += \
./Middlewares/Third_Party/mbedTLS/programs/test/benchmark.o \
./Middlewares/Third_Party/mbedTLS/programs/test/query_compile_time_config.o \
./Middlewares/Third_Party/mbedTLS/programs/test/selftest.o \
./Middlewares/Third_Party/mbedTLS/programs/test/udp_proxy.o \
./Middlewares/Third_Party/mbedTLS/programs/test/zeroize.o 

C_DEPS += \
./Middlewares/Third_Party/mbedTLS/programs/test/benchmark.d \
./Middlewares/Third_Party/mbedTLS/programs/test/query_compile_time_config.d \
./Middlewares/Third_Party/mbedTLS/programs/test/selftest.d \
./Middlewares/Third_Party/mbedTLS/programs/test/udp_proxy.d \
./Middlewares/Third_Party/mbedTLS/programs/test/zeroize.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/mbedTLS/programs/test/%.o Middlewares/Third_Party/mbedTLS/programs/test/%.su Middlewares/Third_Party/mbedTLS/programs/test/%.cyclo: ../Middlewares/Third_Party/mbedTLS/programs/test/%.c Middlewares/Third_Party/mbedTLS/programs/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-programs-2f-test

clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-programs-2f-test:
	-$(RM) ./Middlewares/Third_Party/mbedTLS/programs/test/benchmark.cyclo ./Middlewares/Third_Party/mbedTLS/programs/test/benchmark.d ./Middlewares/Third_Party/mbedTLS/programs/test/benchmark.o ./Middlewares/Third_Party/mbedTLS/programs/test/benchmark.su ./Middlewares/Third_Party/mbedTLS/programs/test/query_compile_time_config.cyclo ./Middlewares/Third_Party/mbedTLS/programs/test/query_compile_time_config.d ./Middlewares/Third_Party/mbedTLS/programs/test/query_compile_time_config.o ./Middlewares/Third_Party/mbedTLS/programs/test/query_compile_time_config.su ./Middlewares/Third_Party/mbedTLS/programs/test/selftest.cyclo ./Middlewares/Third_Party/mbedTLS/programs/test/selftest.d ./Middlewares/Third_Party/mbedTLS/programs/test/selftest.o ./Middlewares/Third_Party/mbedTLS/programs/test/selftest.su ./Middlewares/Third_Party/mbedTLS/programs/test/udp_proxy.cyclo ./Middlewares/Third_Party/mbedTLS/programs/test/udp_proxy.d ./Middlewares/Third_Party/mbedTLS/programs/test/udp_proxy.o ./Middlewares/Third_Party/mbedTLS/programs/test/udp_proxy.su ./Middlewares/Third_Party/mbedTLS/programs/test/zeroize.cyclo ./Middlewares/Third_Party/mbedTLS/programs/test/zeroize.d ./Middlewares/Third_Party/mbedTLS/programs/test/zeroize.o ./Middlewares/Third_Party/mbedTLS/programs/test/zeroize.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-programs-2f-test

