/*
 * stm32f407_usart_driver.h
 *
 *  Created on: Aug 12, 2023
 *      Author: shane
 */
#include "stm32f4xx.h"

#ifndef DRIVERS_INC_STM32F407_USART_DRIVER_H_
#define DRIVERS_INC_STM32F407_USART_DRIVER_H_

//usart reg pin macros
//usart sr reg
#define USART_SR_PE 0
#define USART_SR_FE 1
#define USART_SR_NF 2
#define USART_SR_ORE 3
#define USART_SR_IDLE 4
#define USART_SR_RXNE 5
#define USART_SR_TC 6
#define USART_SR_TXE 7
#define USART_SR_LBD 8
#define USART_SR_CTS 9

//usart cr1 reg - pine 14 is reserved
#define USART_CR1_SBK 0
#define USART_CR1_RWU 1
#define USART_CR1_RE 2
#define USART_CR1_TE 3
#define USART_CR1_IDLEIE 4
#define USART_CR1_RXNEIE 5
#define USART_CR1_TCIE 6
#define USART_CR1_TXEIE 7
#define USART_CR1_PEIE 8
#define USART_CR1_PS 9
#define USART_CR1_PCE 10
#define USART_CR1_WAKE 11
#define USART_CR1_M 12
#define USART_CR1_UE 13
#define USART_CR1_OVER8 15

//usart cr2 reg- pins 4 and 7 are reserved
#define USART_CR2_ADD 0
#define USART_CR2_LBDL 6
#define USART_CR2_LBDIE 7
#define USART_CR2_LBCL 8
#define USART_CR2_CPHA 9
#define USART_CR2_CPOL 10
#define USART_CR2_CLKEN 11
#define USART_CR2_STOP 12
#define USART_CR2_LINEN 14

//usart baud_rate  pins
#define USART_BRR_DIV_FRAC 0
#define USART_BRR_DIV_MANTISSA 4

#define USART_CR3_EIE 0
#define USART_CR3_IREN 1
#define USART_CR3_IRLP 2
#define USART_CR3_HDSEL 3
#define USART_CR3_NACK 4
#define USART_CR3_SCEN 5
#define USART_CR3_DMAR 6
#define USART_CR3_DMAT 7
#define USART_CR3_RTSE 8
#define USART_CR3_CTSE 9
#define USART_CR3_CTSIE 10
#define USART_CR3_ONEBIT 11

//config options
//@word_length
#define BITS_8 0
#define BITS_9 1

//@stop_bits
#define STOP_1  	0x0
#define STOP_HALF 	0x1
#define STOP_2		0x2
#define STOP_ONE_HALF 0x3

typedef struct
{
	__vo uint32_t baud_rate;
	__vo uint32_t word_length;
	__vo uint32_t stop_bits;
	__vo uint32_t dma_en;
	__vo uint32_t device_type;
	__vo uint32_t cpha;
	__vo uint32_t cpol;
	__vo uint32_t parity_ctrl;
	__vo uint32_t parity_type;
	//not available in uart 4 || uart 5
	__vo uint32_t clock_en;
	__vo uint32_t tx_it_en;
	__vo uint32_t rx_it_en;

}usart_config_t;

typedef struct
{
	usart_config_t uart_config;
	usart_regdef_t *usartx;

}usart_handle_t;

void usart_peri_ctrl(usart_handle_t *usartx, bool enable);

void usart_init(usart_handle_t *usartx);

void usart_deinit(usart_handle_t *usartx);

void usart_tx_data(usart_regdef_t *usartx, uint16_t* tx_data, uint16_t data_size);

void usart_rx_data(usart_regdef_t *usartx, uint16_t* tx_data, uint16_t data_size);

#endif /* DRIVERS_INC_STM32F407_USART_DRIVER_H_ */
