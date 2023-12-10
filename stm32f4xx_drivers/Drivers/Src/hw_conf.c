 /*
 * hw_conf.c
 *
 *  Created on: Sep 30, 2023
 *      Author: shane
 */

#include "hw_conf.h"
#include "stm32f4xx.h"

//configuration specific for gps modeule via uart

void gpio_init(void)
{
	GPIO_Handle_t gpio_inst;

	gpio_inst.pGPIOx = GPIOA;
	gpio_inst.GPIO_PinConfig = (GPIO_PinConfig_t)
	{
		.GPIO_PinNumber = GPIO_PIN_3,
		.GPIO_PinMode = alt_function,
		.alt_func_modes = 7,
		.GPIO_PinOPType = GPIO_OP_TYPE_PP
	};

	GPIO_config(&gpio_inst);
}

void uart_init(void)
{
	usart_handle_t usart_inst;

	usart_inst.usartx = USART2;
	usart_inst.uart_config = (usart_config_t)
	{
		.baud_rate = 9600,
		.word_length = WORD_8,
		.device_mode = DEVICE_RX,
		.over8 = OVERSAMPLE8,
		.stop_bits = STOP_1,
		.clk_freq = 42000000
	};
	usart_config(&usart_inst);

}

void hw_init(void)
{
	uart_init();
	gpio_init();

}
