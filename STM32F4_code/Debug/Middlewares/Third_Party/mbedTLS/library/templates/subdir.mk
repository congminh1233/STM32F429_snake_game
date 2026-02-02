################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/mbedTLS/library/templates/aes_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/ccm_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/cryp_stm32.c \
../Middlewares/Third_Party/mbedTLS/library/templates/gcm_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/hash_stm32.c \
../Middlewares/Third_Party/mbedTLS/library/templates/md5_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/net_sockets_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/rng_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/sha1_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/sha256_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/threading_alt_template.c \
../Middlewares/Third_Party/mbedTLS/library/templates/timing_alt_template.c 

OBJS += \
./Middlewares/Third_Party/mbedTLS/library/templates/aes_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/ccm_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/cryp_stm32.o \
./Middlewares/Third_Party/mbedTLS/library/templates/gcm_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/hash_stm32.o \
./Middlewares/Third_Party/mbedTLS/library/templates/md5_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/net_sockets_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/rng_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/sha1_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/sha256_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/threading_alt_template.o \
./Middlewares/Third_Party/mbedTLS/library/templates/timing_alt_template.o 

C_DEPS += \
./Middlewares/Third_Party/mbedTLS/library/templates/aes_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/ccm_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/cryp_stm32.d \
./Middlewares/Third_Party/mbedTLS/library/templates/gcm_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/hash_stm32.d \
./Middlewares/Third_Party/mbedTLS/library/templates/md5_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/net_sockets_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/rng_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/sha1_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/sha256_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/threading_alt_template.d \
./Middlewares/Third_Party/mbedTLS/library/templates/timing_alt_template.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/mbedTLS/library/templates/%.o Middlewares/Third_Party/mbedTLS/library/templates/%.su Middlewares/Third_Party/mbedTLS/library/templates/%.cyclo: ../Middlewares/Third_Party/mbedTLS/library/templates/%.c Middlewares/Third_Party/mbedTLS/library/templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-library-2f-templates

clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-library-2f-templates:
	-$(RM) ./Middlewares/Third_Party/mbedTLS/library/templates/aes_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/aes_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/aes_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/aes_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/ccm_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/ccm_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/ccm_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/ccm_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/cryp_stm32.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/cryp_stm32.d ./Middlewares/Third_Party/mbedTLS/library/templates/cryp_stm32.o ./Middlewares/Third_Party/mbedTLS/library/templates/cryp_stm32.su ./Middlewares/Third_Party/mbedTLS/library/templates/gcm_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/gcm_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/gcm_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/gcm_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/hash_stm32.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/hash_stm32.d ./Middlewares/Third_Party/mbedTLS/library/templates/hash_stm32.o ./Middlewares/Third_Party/mbedTLS/library/templates/hash_stm32.su ./Middlewares/Third_Party/mbedTLS/library/templates/md5_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/md5_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/md5_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/md5_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/net_sockets_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/net_sockets_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/net_sockets_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/net_sockets_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/rng_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/rng_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/rng_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/rng_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/sha1_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/sha1_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/sha1_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/sha1_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/sha256_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/sha256_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/sha256_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/sha256_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/threading_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/threading_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/threading_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/threading_alt_template.su ./Middlewares/Third_Party/mbedTLS/library/templates/timing_alt_template.cyclo ./Middlewares/Third_Party/mbedTLS/library/templates/timing_alt_template.d ./Middlewares/Third_Party/mbedTLS/library/templates/timing_alt_template.o ./Middlewares/Third_Party/mbedTLS/library/templates/timing_alt_template.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-library-2f-templates

