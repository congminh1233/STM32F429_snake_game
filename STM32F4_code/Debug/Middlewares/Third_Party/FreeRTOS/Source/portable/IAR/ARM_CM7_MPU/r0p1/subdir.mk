################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/portasm.s 

C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/port.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/port.o \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/portasm.o 

S_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/portasm.d 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/port.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/%.o Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/%.su Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/%.c Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/%.o: ../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/%.s Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I../Core/Inc -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-IAR-2f-ARM_CM7_MPU-2f-r0p1

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-IAR-2f-ARM_CM7_MPU-2f-r0p1:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/port.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/port.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/port.o ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/port.su ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/portasm.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM7_MPU/r0p1/portasm.o

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-IAR-2f-ARM_CM7_MPU-2f-r0p1

