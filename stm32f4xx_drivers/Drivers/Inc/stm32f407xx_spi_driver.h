/*
 * stm32f407xx_spi_driver.h
 *
 *  Created on: Jul 2, 2023
 *      Author: shane
 */

#ifndef DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_
#define DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_

#include <stdint.h>
#include "stm32f4xx.h"

//@Baud_Rate
#define RATE_2 			(0)
#define	RATE_4			(1)
#define RATE_8 			(2)
#define RATE_16			(3)
#define RATE_32			(4)
#define RATE_64     	(5)
#define RATE_128		(6)
#define RATE_256		(7)

//@CPHA
#define LEADING_EDGE 	(0)
#define TRAILING_EDGE	(1)

//@CPOL
#define IDLE_HIGH		(1)
#define IDLE_LOW		(0)

//@Master_slave_select
#define MASTER_SELECT	(1)
#define SLAVE_SELECT	(0)

//Spi CLK Enable Macros



//@FRAME_FORMAT_SELECT
#define  EIGHT_BIT 		(0)
#define  SIXTEEN_BIT	(1)

//doing this to stop whatever is going on down below

typedef struct {

uint8_t BusConfig;				//0x1
uint8_t SPI_EN;					//0x1
uint8_t SPI_SPEED;				//@Baud_Rate
uint8_t	SPI_CPHA;				//@CPHA
uint8_t SPI_CPOL;				//@CPOL
uint8_t SPI_DEVICEMODE;			//@Master_slave_select
uint8_t	SPI_DATA_FORMAT;		//@Frame_FORMAT_SELECT


} SPI_Config_t;


typedef struct{

	SPI_RegDef_t  *pSPIx;
	SPI_Config_t Spi_Config;


}SPI_Handle_t;

/*=================================APIs Supported for this Driver=================================
 *
 *
 *
 */

//Peripheral Clock Setup
void SPI_PeriClockControl(SPI_RegDef_t *pSPIx, uint8_t enordi);

//Init & De-Init
void SPI_Init(SPI_Handle_t* pSPIHandler);
void SPI_DeInit(SPI_RegDef_t *pSPIx);

//Send/Receive Data
void  SPI_SendData(SPI_RegDef_t *pSPIx, uint8_t *pTxbuffer, uint32_t Len);
void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);


//IRQ Config and ISR Handling
void SPI_IRQInterruptConfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityConfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);

#endif /* DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_ */
