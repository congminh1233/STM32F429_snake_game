################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FatFs/src/option/cc932.c \
../Middlewares/Third_Party/FatFs/src/option/cc936.c \
../Middlewares/Third_Party/FatFs/src/option/cc949.c \
../Middlewares/Third_Party/FatFs/src/option/cc950.c \
../Middlewares/Third_Party/FatFs/src/option/ccsbcs.c \
../Middlewares/Third_Party/FatFs/src/option/syscall.c \
../Middlewares/Third_Party/FatFs/src/option/unicode.c 

OBJS += \
./Middlewares/Third_Party/FatFs/src/option/cc932.o \
./Middlewares/Third_Party/FatFs/src/option/cc936.o \
./Middlewares/Third_Party/FatFs/src/option/cc949.o \
./Middlewares/Third_Party/FatFs/src/option/cc950.o \
./Middlewares/Third_Party/FatFs/src/option/ccsbcs.o \
./Middlewares/Third_Party/FatFs/src/option/syscall.o \
./Middlewares/Third_Party/FatFs/src/option/unicode.o 

C_DEPS += \
./Middlewares/Third_Party/FatFs/src/option/cc932.d \
./Middlewares/Third_Party/FatFs/src/option/cc936.d \
./Middlewares/Third_Party/FatFs/src/option/cc949.d \
./Middlewares/Third_Party/FatFs/src/option/cc950.d \
./Middlewares/Third_Party/FatFs/src/option/ccsbcs.d \
./Middlewares/Third_Party/FatFs/src/option/syscall.d \
./Middlewares/Third_Party/FatFs/src/option/unicode.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FatFs/src/option/%.o Middlewares/Third_Party/FatFs/src/option/%.su Middlewares/Third_Party/FatFs/src/option/%.cyclo: ../Middlewares/Third_Party/FatFs/src/option/%.c Middlewares/Third_Party/FatFs/src/option/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FatFs-2f-src-2f-option

clean-Middlewares-2f-Third_Party-2f-FatFs-2f-src-2f-option:
	-$(RM) ./Middlewares/Third_Party/FatFs/src/option/cc932.cyclo ./Middlewares/Third_Party/FatFs/src/option/cc932.d ./Middlewares/Third_Party/FatFs/src/option/cc932.o ./Middlewares/Third_Party/FatFs/src/option/cc932.su ./Middlewares/Third_Party/FatFs/src/option/cc936.cyclo ./Middlewares/Third_Party/FatFs/src/option/cc936.d ./Middlewares/Third_Party/FatFs/src/option/cc936.o ./Middlewares/Third_Party/FatFs/src/option/cc936.su ./Middlewares/Third_Party/FatFs/src/option/cc949.cyclo ./Middlewares/Third_Party/FatFs/src/option/cc949.d ./Middlewares/Third_Party/FatFs/src/option/cc949.o ./Middlewares/Third_Party/FatFs/src/option/cc949.su ./Middlewares/Third_Party/FatFs/src/option/cc950.cyclo ./Middlewares/Third_Party/FatFs/src/option/cc950.d ./Middlewares/Third_Party/FatFs/src/option/cc950.o ./Middlewares/Third_Party/FatFs/src/option/cc950.su ./Middlewares/Third_Party/FatFs/src/option/ccsbcs.cyclo ./Middlewares/Third_Party/FatFs/src/option/ccsbcs.d ./Middlewares/Third_Party/FatFs/src/option/ccsbcs.o ./Middlewares/Third_Party/FatFs/src/option/ccsbcs.su ./Middlewares/Third_Party/FatFs/src/option/syscall.cyclo ./Middlewares/Third_Party/FatFs/src/option/syscall.d ./Middlewares/Third_Party/FatFs/src/option/syscall.o ./Middlewares/Third_Party/FatFs/src/option/syscall.su ./Middlewares/Third_Party/FatFs/src/option/unicode.cyclo ./Middlewares/Third_Party/FatFs/src/option/unicode.d ./Middlewares/Third_Party/FatFs/src/option/unicode.o ./Middlewares/Third_Party/FatFs/src/option/unicode.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FatFs-2f-src-2f-option

