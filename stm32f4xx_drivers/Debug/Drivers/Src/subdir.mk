################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Src/stm32f407xx_SPI_driver.c \
../Drivers/Src/stm32f407xx_gpio_driver.c \
../Drivers/Src/stm32f4xx_usart.c 

OBJS += \
./Drivers/Src/stm32f407xx_SPI_driver.o \
./Drivers/Src/stm32f407xx_gpio_driver.o \
./Drivers/Src/stm32f4xx_usart.o 

C_DEPS += \
./Drivers/Src/stm32f407xx_SPI_driver.d \
./Drivers/Src/stm32f407xx_gpio_driver.d \
./Drivers/Src/stm32f4xx_usart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Src/%.o Drivers/Src/%.su Drivers/Src/%.cyclo: ../Drivers/Src/%.c Drivers/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -c -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Src" -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Drivers/Src" -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Src

clean-Drivers-2f-Src:
	-$(RM) ./Drivers/Src/stm32f407xx_SPI_driver.cyclo ./Drivers/Src/stm32f407xx_SPI_driver.d ./Drivers/Src/stm32f407xx_SPI_driver.o ./Drivers/Src/stm32f407xx_SPI_driver.su ./Drivers/Src/stm32f407xx_gpio_driver.cyclo ./Drivers/Src/stm32f407xx_gpio_driver.d ./Drivers/Src/stm32f407xx_gpio_driver.o ./Drivers/Src/stm32f407xx_gpio_driver.su ./Drivers/Src/stm32f4xx_usart.cyclo ./Drivers/Src/stm32f4xx_usart.d ./Drivers/Src/stm32f4xx_usart.o ./Drivers/Src/stm32f4xx_usart.su

.PHONY: clean-Drivers-2f-Src

