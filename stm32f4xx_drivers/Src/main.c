/*
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
#include "stm32f4xx.h"
#include <stdio.h>
#include <string.h>

void spi_config(void)
{
	SPI_Handle_t SPIx = {0};
	//configure pin for spi2
	SPIx.pSPIx = SPI2;
	SPIx.SPI_Config.BusConfig = SPI_CONFIG_FD;
	SPIx.SPI_Config.SPI_CPOL = IDLE_LOW;
	SPIx.SPI_Config.SPI_CPHA = LEADING_EDGE;
	SPIx.SPI_Config.SPI_DEVICEMODE = SPI_MASTER;
	SPIx.SPI_Config.SPI_SSM = SPI_HW_SSM;
	SPIx.SPI_Config.SPI_DFF = DFF_8BIT;
	SPIx.SPI_Config.SPI_Speed = DIVISOR_8;
	SPI_SSOEConfig(SPIx.pSPIx, ENABLE);


	SPI_Init(&SPIx, SPI_RX);



}

void spi_pin_config(void)
{
	//setup MOSI pin
	GPIO_Handle_t gpiox = {0};
	gpiox.pGPIOx = GPIOB;
	gpiox.GPIO_PinConfig.GPIO_PinAltFunMode = GPIO_AF5;
	gpiox.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_OUPUT;
	gpiox.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_15;
	gpiox.GPIO_PinConfig.GPIO_PinPuPDcontrol = GPIO_NO_PUPD;
	gpiox.GPIO_PinConfig.GPIO_PinOPType = GPIO_OP_TYPE_PP;
	gpiox.GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_HIGH;
	GPIO_Init(&gpiox);

	gpiox.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_13;
	GPIO_Init(&gpiox);


	gpiox.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_12;
	GPIO_Init(&gpiox);

}

void user_button(void)
{
	GPIO_Handle_t pGPIOx = {0};

	pGPIOx.pGPIOx = GPIOA;
	//This line should do everything needed to enable interrupt in pgpio init
	pGPIOx.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_INPUT;
	pGPIOx.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_0;
	pGPIOx.GPIO_PinConfig.GPIO_PinOPType = GPIO_OP_TYPE_PP;
	pGPIOx.GPIO_PinConfig.GPIO_PinSpeed = GPIO_NO_PUPD;

	GPIO_Init(&pGPIOx);
}

void user_button_interrupt(void)
{
	GPIO_IRQPriorityConfig(IRQ_NO_EXTI0, PRIORITY_LVL_0);
}


int main(void)
{
	//data to send
	char name[] = "Shane Griffith";

	spi_config();
	spi_pin_config();
	SPI_SendData(SPI2, (uint8_t*)name, sizeof(name));
	user_button();

	while(1)
	{
		if(GPIOA->IDR & (ENABLE << pgio_GPIO_PIN_0))
		{

		}
	}


}




