#include <stdint.h>
#include "stm32f407xx_SPI_driver.h"
#include "stm32f4xx.h"
#include <stdbool.h>



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
void SPI_Init(SPI_Handle_t* pSPIHandler, uint8_t tx_or_rx)
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
	//Check length
	while(len != 0)
	{
		//check to make sure pspix_sr is empty before moving forward
	while(!(pSPIx->SPI_SR & SPI_TX_BUFFER_EMPTY))
	{

	}

	if(pSPIx->SPI_CR1 & (1 << SPI_CR1_DFF))
	{
		pSPIx->SPI_CR1 = *(uint16_t *)pTxbuffer;
		pTxbuffer += 2;
		len -= 2;
	}
	else if(!(pSPIx->SPI_CR1 & (1 << SPI_CR1_DFF)))
	{
		pSPIx->SPI_DR = *pTxbuffer;
		pTxbuffer++;
		len--;

	}
}
}

//use SPI_RX or SPI_TX for tx_or_rx
void SPI_busConfig(SPI_Handle_t *pSPIx, uint8_t tx_or_rx)
{
	if(pSPIx->SPI_Config.BusConfig == SPI_CONFIG_FD)
	{	//reset bidimode for 2 line unidirection data
		pSPIx->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_BIDI_MODE);
		//ensure bidioe is reset not needed for Full duplex
		pSPIx->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_BIDI_OE);
		//reset rx-only bit
		pSPIx->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_RX_ONLY);

	}
	else if(pSPIx->SPI_Config.BusConfig == (uint8_t)SPI_CONFIG_HD || pSPIx->SPI_Config.BusConfig == (uint8_t)SPI_SIMPLEX_RX_ONLY)
	{	//set bidioe bit for 1 line bidirectional data
		pSPIx->pSPIx->SPI_CR1 |= (SET << SPI_CR1_BIDI_MODE);
		//rest rx_only not used
		pSPIx->pSPIx->SPI_CR1 |= (RESET << SPI_CR1_RX_ONLY);
		//enable tx or rx mode
		pSPIx->pSPIx->SPI_CR1 |= (tx_or_rx << SPI_CR1_BIDI_OE);

	}

	uint32_t spi_cr1 = 1;
	get_reg_value(SPI2, sizeof(uint32_t) * spi_cr1, (uint8_t)SPI_CONFIG_HD);

}

bool get_reg_value(SPI_RegDef_t *pSPIx, uint32_t spi_register, uint8_t bit_definition)
{

		return false;

}


void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);


//IRQ config and ISR Handling
void SPI_IRQInterruptconfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityconfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);
