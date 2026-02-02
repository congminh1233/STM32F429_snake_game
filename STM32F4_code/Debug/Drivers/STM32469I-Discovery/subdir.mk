################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32469I-Discovery/stm32469i_discovery.c \
../Drivers/STM32469I-Discovery/stm32469i_discovery_audio.c \
../Drivers/STM32469I-Discovery/stm32469i_discovery_eeprom.c \
../Drivers/STM32469I-Discovery/stm32469i_discovery_lcd.c \
../Drivers/STM32469I-Discovery/stm32469i_discovery_qspi.c \
../Drivers/STM32469I-Discovery/stm32469i_discovery_sd.c \
../Drivers/STM32469I-Discovery/stm32469i_discovery_sdram.c \
../Drivers/STM32469I-Discovery/stm32469i_discovery_ts.c 

OBJS += \
./Drivers/STM32469I-Discovery/stm32469i_discovery.o \
./Drivers/STM32469I-Discovery/stm32469i_discovery_audio.o \
./Drivers/STM32469I-Discovery/stm32469i_discovery_eeprom.o \
./Drivers/STM32469I-Discovery/stm32469i_discovery_lcd.o \
./Drivers/STM32469I-Discovery/stm32469i_discovery_qspi.o \
./Drivers/STM32469I-Discovery/stm32469i_discovery_sd.o \
./Drivers/STM32469I-Discovery/stm32469i_discovery_sdram.o \
./Drivers/STM32469I-Discovery/stm32469i_discovery_ts.o 

C_DEPS += \
./Drivers/STM32469I-Discovery/stm32469i_discovery.d \
./Drivers/STM32469I-Discovery/stm32469i_discovery_audio.d \
./Drivers/STM32469I-Discovery/stm32469i_discovery_eeprom.d \
./Drivers/STM32469I-Discovery/stm32469i_discovery_lcd.d \
./Drivers/STM32469I-Discovery/stm32469i_discovery_qspi.d \
./Drivers/STM32469I-Discovery/stm32469i_discovery_sd.d \
./Drivers/STM32469I-Discovery/stm32469i_discovery_sdram.d \
./Drivers/STM32469I-Discovery/stm32469i_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32469I-Discovery/%.o Drivers/STM32469I-Discovery/%.su Drivers/STM32469I-Discovery/%.cyclo: ../Drivers/STM32469I-Discovery/%.c Drivers/STM32469I-Discovery/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-STM32469I-2d-Discovery

clean-Drivers-2f-STM32469I-2d-Discovery:
	-$(RM) ./Drivers/STM32469I-Discovery/stm32469i_discovery.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery.d ./Drivers/STM32469I-Discovery/stm32469i_discovery.o ./Drivers/STM32469I-Discovery/stm32469i_discovery.su ./Drivers/STM32469I-Discovery/stm32469i_discovery_audio.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery_audio.d ./Drivers/STM32469I-Discovery/stm32469i_discovery_audio.o ./Drivers/STM32469I-Discovery/stm32469i_discovery_audio.su ./Drivers/STM32469I-Discovery/stm32469i_discovery_eeprom.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery_eeprom.d ./Drivers/STM32469I-Discovery/stm32469i_discovery_eeprom.o ./Drivers/STM32469I-Discovery/stm32469i_discovery_eeprom.su ./Drivers/STM32469I-Discovery/stm32469i_discovery_lcd.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery_lcd.d ./Drivers/STM32469I-Discovery/stm32469i_discovery_lcd.o ./Drivers/STM32469I-Discovery/stm32469i_discovery_lcd.su ./Drivers/STM32469I-Discovery/stm32469i_discovery_qspi.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery_qspi.d ./Drivers/STM32469I-Discovery/stm32469i_discovery_qspi.o ./Drivers/STM32469I-Discovery/stm32469i_discovery_qspi.su ./Drivers/STM32469I-Discovery/stm32469i_discovery_sd.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery_sd.d ./Drivers/STM32469I-Discovery/stm32469i_discovery_sd.o ./Drivers/STM32469I-Discovery/stm32469i_discovery_sd.su ./Drivers/STM32469I-Discovery/stm32469i_discovery_sdram.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery_sdram.d ./Drivers/STM32469I-Discovery/stm32469i_discovery_sdram.o ./Drivers/STM32469I-Discovery/stm32469i_discovery_sdram.su ./Drivers/STM32469I-Discovery/stm32469i_discovery_ts.cyclo ./Drivers/STM32469I-Discovery/stm32469i_discovery_ts.d ./Drivers/STM32469I-Discovery/stm32469i_discovery_ts.o ./Drivers/STM32469I-Discovery/stm32469i_discovery_ts.su

.PHONY: clean-Drivers-2f-STM32469I-2d-Discovery

