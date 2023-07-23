#include <stdint.h>
#include "stm32f407xx_SPI_driver.h"
#include "stm32f4xx.h"
#include <stdbool.h>

//usefull macros
#define SPI_CR1		1
#define SPI_CR2		2
#define SPI_SR		3
#define SPI_DR		4
#define SPI_CRCPR	5
#define SPI_RXCRCR	6
#define SPI_TXCRCR 	7
#define SPI_IS2CFGR 8
#define SPI_IS2PR	9

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
#define SPI_SW_SSM			(0)
#define SPI_HW_SSM			(1)

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

/*=================================APIs Supported for this Driver=================================
 *
 *
 *
 */

//Peripheral Clock Setup
void SPI_PeriClockControl(SPI_RegDef_t *pSPIx, uint8_t enordi){
	switch(enordi){
	case 1:
		if(pSPIx == SPI1){
			SPI1_PCLK_EN;
			break;
		}else if(pSPIx == SPI2){
			SPI2_PCLK_EN;
			break;
		}else if(pSPIx == SPI3){
			SPI3_PCLK_EN;
			break;
		}else if(pSPIx == SPI4){
			SPI4_PCLK_EN;
			break;
		}
	case 0:
		if(pSPIx == SPI1){
			SPI1_PCLK_DI;
			break;
		}else if(pSPIx == SPI2){
			SPI2_PCLK_DI;
			break;
		}else if(pSPIx == SPI3){
			SPI3_PCLK_DI;
			break;
		}else if(pSPIx == SPI4){
			SPI4_PCLK_DI;
			break;
		}default:
			break;

	}
}

//Init & De-Init
void SPI_Init(SPI_Handle_t *pSPIHandler, uint8_t tx_or_rx)
{
	SPI_PeriClockControl(pSPIHandler->pSPIx, ENABLE);

	uint32_t tempReg = 0;
	//configure slave/master for device
	tempReg |= (pSPIHandler->SPI_Config.SPI_DEVICEMODE << SPI_CR1_MSTER);

	//configure baud rate for SPI peripheral
	tempReg |= (pSPIHandler->SPI_Config.SPI_Speed << SPI_CR1_BAUDRATE);

	//configure slave management
	tempReg |= (pSPIHandler->SPI_Config.SPI_SSM << SPI_CR1_SSM);

	tempReg |= (pSPIHandler->SPI_Config.SPI_CPOL << SPI_CR1_CPOL);

	tempReg |= (pSPIHandler->SPI_Config.SPI_CPHA << SPI_CR1_CPHA);

	SPI_busConfig(pSPIHandler, tx_or_rx);


//input settings into the register
	pSPIHandler->pSPIx->SPI_CR1 = tempReg;

}
//Resets given SPI peripheral
void SPI_DeInit(SPI_RegDef_t *pSPIx)
{

	if(pSPIx == SPI1)
	{
		(RCC->APB2RSTR |= (1 << 12));
	}
	if(pSPIx == SPI4)
	{
		RCC->APB2RSTR |= (1 << 13);
	}
	if(pSPIx == SPI2)
	{
		RCC->APB1RSTR |= (1 << 14);
	}
	if(pSPIx == SPI3)
	{
		RCC->APB1RSTR |= (1 << 15);
	}

}

//Send/Receive Data - This is a blocking call
void  SPI_SendData(SPI_RegDef_t *pSPIx, uint8_t *pTxbuffer, uint32_t len)
{

	while(len > 0)
	{
		while(!(get_reg_value((uint32_t*)pSPIx, SPI_SR, SPI_SR_TXE)))
		{

		}
		if(pSPIx->SPI_CR1 & (ENABLE << SPI_CR1_DFF))
		{
		//todo
		}
	}
}

//use SPI_RX or SPI_TX for tx_or_rx
void SPI_busConfig(SPI_Handle_t *pSPIHandler, uint8_t tx_or_rx)
{
	if(pSPIHandler->SPI_Config.BusConfig == SPI_CONFIG_FD)
	{	//reset bidimode for 2 line unidirection data
		pSPIHandler->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_BIDI_MODE);
		//ensure bidioe is reset not needed for Full duplex
		pSPIHandler->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_BIDI_OE);
		//reset rx-only bit
		pSPIHandler->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_RX_ONLY);

	}
	else if(pSPIHandler->SPI_Config.BusConfig == (uint8_t)SPI_CONFIG_HD || pSPIHandler->SPI_Config.BusConfig == (uint8_t)SPI_SIMPLEX_RX_ONLY)
	{	//set bidioe bit for 1 line bidirectional data
		pSPIHandler->pSPIx->SPI_CR1 |= (SET << SPI_CR1_BIDI_MODE);
		//rest rx_only not used
		pSPIHandler->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_RX_ONLY);
		//enable tx or rx mode


	}

}

bool get_reg_value(uint32_t *address, uint32_t spi_register, uint8_t register_bit)
{
	uint32_t result = (*(address + (sizeof(uint32_t) * spi_register)) & FULL_REG_MASK);

	if(result >> register_bit == ENABLE)
	{
		return true;
	}
	else
	{
		return false;
	}

}


void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);


//IRQ config and ISR Handling
void SPI_IRQInterruptconfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityconfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);
