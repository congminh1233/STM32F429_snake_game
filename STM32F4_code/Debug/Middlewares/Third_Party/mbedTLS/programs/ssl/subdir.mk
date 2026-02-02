################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_client.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_server.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/mini_client.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/query_config.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client1.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client2.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_fork_server.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_mail_client.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_pthread_server.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server.c \
../Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server2.c 

OBJS += \
./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_client.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_server.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/mini_client.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/query_config.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client1.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client2.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_fork_server.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_mail_client.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_pthread_server.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server.o \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server2.o 

C_DEPS += \
./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_client.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_server.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/mini_client.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/query_config.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client1.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client2.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_fork_server.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_mail_client.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_pthread_server.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server.d \
./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server2.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/mbedTLS/programs/ssl/%.o Middlewares/Third_Party/mbedTLS/programs/ssl/%.su Middlewares/Third_Party/mbedTLS/programs/ssl/%.cyclo: ../Middlewares/Third_Party/mbedTLS/programs/ssl/%.c Middlewares/Third_Party/mbedTLS/programs/ssl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/LibJPEG/include" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include/mbedtls" -I"C:/Users/Admin/STM32CubeIDE/workspace_2.0.0/STM32F4_code/Middlewares/Third_Party/mbedTLS/include" -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-programs-2f-ssl

clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-programs-2f-ssl:
	-$(RM) ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_client.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_client.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_client.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_client.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_server.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_server.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_server.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/dtls_server.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/mini_client.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/mini_client.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/mini_client.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/mini_client.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/query_config.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/query_config.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/query_config.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/query_config.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client1.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client1.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client1.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client1.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client2.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client2.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client2.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_client2.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_fork_server.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_fork_server.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_fork_server.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_fork_server.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_mail_client.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_mail_client.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_mail_client.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_mail_client.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_pthread_server.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_pthread_server.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_pthread_server.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_pthread_server.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server.su ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server2.cyclo ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server2.d ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server2.o ./Middlewares/Third_Party/mbedTLS/programs/ssl/ssl_server2.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-mbedTLS-2f-programs-2f-ssl

