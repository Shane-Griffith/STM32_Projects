/*
 * stm32f407xx_spi_driver.h
 *
 *  Created on: Jul 2, 2023
 *      Author: shane
 */

#ifndef DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_
#define DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_

#include <stdint.h>
#include <stdbool.h>
#include "stm32f4xx.h"


//doing this to stop whatever is going on down below

typedef struct
{
	uint8_t BusConfig;				//@SPI_BUS_CONFIG
	uint8_t SPI_SSM;				//@Software_Slave_Select
	uint8_t SPI_Speed;				//@Baud_DIVISOR
	uint8_t	SPI_CPHA;				//@CPHA
	uint8_t SPI_CPOL;				//@CPOL
	uint8_t SPI_DEVICEMODE;			//@DEVICE_MODE
	uint8_t SPI_DFF;

}SPI_Config_t;


typedef struct
{
	SPI_RegDef_t  *pSPIx;
	SPI_Config_t SPI_Config;


}SPI_Handle_t;

/*=================================APIs Supported for this Driver=================================
 *
 *
 *
 */

//Peripheral Clock Setup
void SPI_PeriClockControl(SPI_RegDef_t *pSPIx, uint8_t enordi);

//Init & De-Init
void SPI_Init(SPI_Handle_t* pSPIHandler, uint8_t rx_or_tx);
void SPI_DeInit(SPI_RegDef_t *pSPIx);

//Send/Receive Data
void  SPI_SendData(SPI_RegDef_t *pSPIx, uint8_t *pTxbuffer, uint32_t Len);
void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);

bool get_reg_value(uint32_t *address, uint32_t spi_register, uint8_t register_bit);


//IRQ Config and ISR Handling
void SPI_IRQInterruptConfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityConfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);
void SPI_busConfig(SPI_Handle_t *pHandle, uint8_t rx_or_tx);

#endif /* DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_ */
