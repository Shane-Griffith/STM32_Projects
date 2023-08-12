/*
 * stm32f4xx_usart.c
 *
 *  Created on: Aug 12, 2023
 *      Author: shane
 */

#include <stdint.h>
#include <stdio.h>
#include "stm32f407_usart_driver.h"
#include "stm32f4xx.h"

#define ENABLE 1
#define DISABLE 0




void usart_peri_ctrl(usart_handle_t *usartx, bool enable)
{
	switch(enable)
	{
	case(true):
		if(usartx->usartx == USART1)		{
			USART1_PCLK_EN;
		}
		else if(usartx->usartx == USART2)
		{
			USART2_PCLK_EN;
		}
		else if(usartx->usartx == USART3)
		{
			USART3_PCLK_EN;
		}
	case(false):
		if(usartx->usartx == USART1)
		{
			USART1_PCLK_DI;
		}
		else if(usartx->usartx == USART2)
		{
			USART2_PCLK_DI;
		}
		else if(usartx->usartx == USART3)
		{
			USART3_PCLK_DI;
		}
	}
}

void usart_init(usart_handle_t *usartx)
{
	usart_peri_ctrl(usartx, ENABLE);

	//set word length - 0 for 8 - 1 for 9
	if(usartx->uart_config.word_length)
	{
		usartx->usartx->usart_cr1 |= (ENABLE << USART_CR1_M);
	}
	else
	{
	//make sure bit is cleared
		usartx->usartx->usart_cr1 |= (DISABLE << USART_CR1_M);
	}

	//configure stop bit
	usartx->usartx->usart_cr1 |= (usartx->uart_config.stop_bits << USART_CR2_STOP);


}
