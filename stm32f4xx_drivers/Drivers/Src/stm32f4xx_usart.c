/*
 * stm32f4xx_usart.c
 *
 *  Created on: Aug 12, 2023
 *      Author: shane
 */

#include "stm32f407_usart_driver.h"
#include "stm32f4xx.h"

#include <stdint.h>
#include <stdio.h>
#include <math.h>

#define CLK_FREQ 42000000.0

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
			break;
		}
		else if(usartx->usartx == USART3)
		{
			USART3_PCLK_EN;
			break;
		}
	case(false):
		if(usartx->usartx == USART1)
		{
			USART1_PCLK_DI;
			break;
		}
		else if(usartx->usartx == USART2)
		{
			USART2_PCLK_DI;
			break;
		}
		else if(usartx->usartx == USART3)
		{
			USART3_PCLK_DI;
			break;
		}
	}
}
//initialize usart peripheral
void usart_config(usart_handle_t *usartx)
{
	usart_peri_ctrl(usartx, ENABLE);
	set_baud(usartx);

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
	usartx->usartx->usart_cr2 |= (usartx->uart_config.stop_bits << USART_CR2_STOP);

	//if synchronous set clken else, make sure its cleared
	if(usartx->uart_config.synchronous_mode == SYNCHRONOUS)
	{
		usartx->usartx->usart_cr2 |= (ENABLE << USART_CR2_CLKEN);
	}
	else
	{
		usartx->usartx->usart_cr2 |= ~(ENABLE << USART_CR2_CLKEN);
	}
}
// enable/disable the usart
void enable_usart(usart_regdef_t *usartx, bool enable)
{
	if(enable)
	{
		usartx->usart_cr1 |= (ENABLE << USART_CR1_UE);
	}
	else
	{
		usartx->usart_cr1 &= ~(ENABLE << USART_CR1_UE);
	}
}
// send data function
void usart_tx_data(usart_handle_t usartx, uint8_t *data, uint8_t len)
{
	enable_usart(usartx.usartx, ENABLE);
	//send idle frame as first transmission
	usartx.usartx->usart_cr1 |= (ENABLE << USART_CR1_TE);

	while(len > 0)
	{	//m bit is 8
		if(usartx.uart_config.word_length == WORD_8)
		{
			usartx.usartx->usart_dr = *data;
			len--;
			data++;
		}
		else
		{	//m bit is 9
			usartx.usartx->usart_dr = *(uint16_t*) data;

			len -= 2;
			(uint16_t*)data++;
		}
	}

	//block until tc clears
	while(usartx.usartx->usart_sr & (ENABLE << USART_SR_TC))
	{

	}
}
// receive data function
void usart_rx_data(usart_handle_t *uart, char *buffer, uint32_t buffer_size)
{
	uint32_t count = 0;

	while(1)
	{	//reading from dr clears rxne
		char msg = uart->usartx->usart_dr;
		count++;

		if(count >= buffer_size)
		{
			printf("buffer overflow\n");
			break;
		}
		//get next byte rx is ready
		if(uart->usartx->usart_sr & (ENABLE << USART_SR_RXNE))
		{
			buffer[count] = msg;
		}
		//if rxne != 1 serial message will fail
		else
		{
			printf("serial error");
			break;
		}
	}

	printf("Data messaged received\n");
	buffer[count] = '*';
}
// i forgot what any of this does...something something set baud rate
void set_baud(usart_handle_t *usartx)
{
	uint32_t clk_frac = 0;
	uint32_t div_mantissa= 0;
	double clk_val = 0;

	clk_val = usartx->uart_config.clk_freq / ((8 * (2 - usartx->uart_config.over8)) * usartx->uart_config.baud_rate);

	div_mantissa = clk_val;
	clk_frac = (clk_val - div_mantissa) * 16;

	usartx->usartx->usart_brr = (div_mantissa << 4) | (clk_frac & 0xf);
}

