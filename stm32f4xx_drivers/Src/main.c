/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2023 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */

#include <stdint.h>
#include <stm32f4xx.h>
//this is just a test for rebasing


void delay(){

	for(int i = 0; i < 250000; i++);

}

int main(void)
{


	//enable user button as input
	GPIO_Handle_t configUserButton = {0};

	configUserButton.pGPIOx = GPIOA;
	configUserButton.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_IT_RFT;
	configUserButton.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_0;
	configUserButton.GPIO_PinConfig.GPIO_PinPuPDcontrol = GPIO_PIN_PU;
	GPIO_PeriClockControl(configUserButton.pGPIOx, ENABLE);
	GPIO_Init(&configUserButton);


	//configure data for LED
	GPIO_Handle_t configRedLed = {0};

	configRedLed.pGPIOx = GPIOA;
	configRedLed.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_OUPUT;
	configRedLed.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_13;
	GPIO_PeriClockControl(configRedLed.pGPIOx, ENABLE);
	GPIO_Init(&configRedLed);

	//configure green led
	GPIO_Handle_t greenLed = {0};

	greenLed.pGPIOx = GPIOD;
	greenLed.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_OUPUT;
	greenLed.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_14;
	GPIO_PeriClockControl(greenLed.pGPIOx, ENABLE);
	GPIO_Init(&greenLed);



	while(1){

	if(GPIO_ReadFromInputPin(configUserButton.pGPIOx, configUserButton.GPIO_PinConfig.GPIO_PinNumber) == BUTTON_PRESSED){
			delay();
			GPIO_ToggleOutputPin(configRedLed.pGPIOx, configRedLed.GPIO_PinConfig.GPIO_PinNumber);
	}


	}





}
