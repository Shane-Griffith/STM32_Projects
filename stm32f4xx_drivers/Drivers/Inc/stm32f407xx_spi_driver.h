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

//@Baud_DIVISOR
//This value will divide the pclk / divisor_x
#define DIVISOR_2 			(0)
#define	DIVISOR_4			(1)
#define DIVISOR_8 			(2)
#define DIVISOR_16			(3)
#define DIVISOR_32			(4)
#define DIVISOR_64     		(5)
#define DIVISOR_128			(6)
#define DIVISOR_256			(7)

//@CPHA
#define LEADING_EDGE 		(0)
#define TRAILING_EDGE		(1)

//@CPOL
#define IDLE_HIGH			(1)
#define IDLE_LOW			(0)

//@Software_Select
#define SPI_SW_SSM			(1)
#define SPI_HW_SSM			(0)

//@Device_mode
#define SPI_MASTER			(1)
#define SPI_SLAVE			(0)

//@FRAME_FORMAT_SELECT
#define DFF_8BIT 			(0)
#define DFF_16BIT			(1)

//@SPI_Bus_Config
//Half Duplex / Full Duplex / RX Only
#define SPI_CONFIG_HD		(1)
#define SPI_CONFIG_FD		(2)
#define SPI_SIMPLEX_RX_ONLY	(3)

//useful spi macros
#define SPI_ENABLE_MASK		(0x20)

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
	uint8_t SPI_PORT;

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

//enable/disable spe
void spi_enable_spe(SPI_RegDef_t *spix, bool enable);

//Init & De-Init
void SPI_Config(SPI_Handle_t* pSPIHandler);

void SPI_DeInit(SPI_RegDef_t *pSPIx);

//Send/Receive Data
void  SPI_SendData(SPI_RegDef_t *pSPIx, uint8_t *pTxbuffer, uint32_t Len);

void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);

bool get_reg_value(uint32_t *address, uint32_t spi_register, uint8_t register_bit);

void SPI_SSOEConfig(SPI_RegDef_t *pSpiX, bool enable);

//IRQ Config and ISR Handling
void SPI_IRQInterruptConfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityConfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);
void SPI_busConfig(SPI_Handle_t *pHandle);

extern SPI_Handle_t *spi_inst;


#endif /* DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_ */
