################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../.metadata/.plugins/org.eclipse.cdt.make.core/specs.c 

OBJS += \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs.o 

C_DEPS += \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs.d 


# Each subdirectory must supply rules for building sources it contributes
.metadata/.plugins/org.eclipse.cdt.make.core/%.o .metadata/.plugins/org.eclipse.cdt.make.core/%.su .metadata/.plugins/org.eclipse.cdt.make.core/%.cyclo: ../.metadata/.plugins/org.eclipse.cdt.make.core/%.c .metadata/.plugins/org.eclipse.cdt.make.core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -c -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Src" -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Drivers/Src" -I"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx_drivers/Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -save-temps -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean--2e-metadata-2f--2e-plugins-2f-org-2e-eclipse-2e-cdt-2e-make-2e-core

clean--2e-metadata-2f--2e-plugins-2f-org-2e-eclipse-2e-cdt-2e-make-2e-core:
	-$(RM) ./.metadata/.plugins/org.eclipse.cdt.make.core/specs.cyclo ./.metadata/.plugins/org.eclipse.cdt.make.core/specs.d ./.metadata/.plugins/org.eclipse.cdt.make.core/specs.o ./.metadata/.plugins/org.eclipse.cdt.make.core/specs.su

.PHONY: clean--2e-metadata-2f--2e-plugins-2f-org-2e-eclipse-2e-cdt-2e-make-2e-core

