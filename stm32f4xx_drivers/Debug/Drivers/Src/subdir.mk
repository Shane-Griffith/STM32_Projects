################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Src/gps_interface.c \
../Drivers/Src/hw_conf.c \
../Drivers/Src/stm32f407xx_gpio_driver.c \
../Drivers/Src/stm32f407xx_spi_driver.c \
../Drivers/Src/stm32f4xx_usart.c 

OBJS += \
./Drivers/Src/gps_interface.o \
./Drivers/Src/hw_conf.o \
./Drivers/Src/stm32f407xx_gpio_driver.o \
./Drivers/Src/stm32f407xx_spi_driver.o \
./Drivers/Src/stm32f4xx_usart.o 

C_DEPS += \
./Drivers/Src/gps_interface.d \
./Drivers/Src/hw_conf.d \
./Drivers/Src/stm32f407xx_gpio_driver.d \
./Drivers/Src/stm32f407xx_spi_driver.d \
./Drivers/Src/stm32f4xx_usart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Src/%.o Drivers/Src/%.su Drivers/Src/%.cyclo: ../Drivers/Src/%.c Drivers/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -c -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Drivers/Src" -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Drivers/Inc" -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/GPS_Project" -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Src" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Src

clean-Drivers-2f-Src:
	-$(RM) ./Drivers/Src/gps_interface.cyclo ./Drivers/Src/gps_interface.d ./Drivers/Src/gps_interface.o ./Drivers/Src/gps_interface.su ./Drivers/Src/hw_conf.cyclo ./Drivers/Src/hw_conf.d ./Drivers/Src/hw_conf.o ./Drivers/Src/hw_conf.su ./Drivers/Src/stm32f407xx_gpio_driver.cyclo ./Drivers/Src/stm32f407xx_gpio_driver.d ./Drivers/Src/stm32f407xx_gpio_driver.o ./Drivers/Src/stm32f407xx_gpio_driver.su ./Drivers/Src/stm32f407xx_spi_driver.cyclo ./Drivers/Src/stm32f407xx_spi_driver.d ./Drivers/Src/stm32f407xx_spi_driver.o ./Drivers/Src/stm32f407xx_spi_driver.su ./Drivers/Src/stm32f4xx_usart.cyclo ./Drivers/Src/stm32f4xx_usart.d ./Drivers/Src/stm32f4xx_usart.o ./Drivers/Src/stm32f4xx_usart.su

.PHONY: clean-Drivers-2f-Src

