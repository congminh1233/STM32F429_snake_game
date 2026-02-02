################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port_asm.s 

C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context.c \
../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port.c \
../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_heap.c \
../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_init.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context.o \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port.o \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port_asm.o \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_heap.o \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_init.o 

S_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port_asm.d 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context.d \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port.d \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_heap.d \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_init.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/%.o Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/%.su Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/%.c Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/%.o: ../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/%.s Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I../Core/Inc -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-IAR-2f-ARM_CM23-2f-secure

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-IAR-2f-ARM_CM23-2f-secure:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context.o ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context.su ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port.o ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port.su ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port_asm.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_context_port_asm.o ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_heap.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_heap.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_heap.o ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_heap.su ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_init.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_init.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_init.o ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM23/secure/secure_init.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-IAR-2f-ARM_CM23-2f-secure

