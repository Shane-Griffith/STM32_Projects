#include <stdint.h>
#include "stm32f407xx_SPI_driver.h"
#include "stm32f4xx.h"
#include <stdbool.h>

#define SPI_CR1_POSITION 0
#define SPI_CR2_POSITION 1
#define SPI_SR_POSITION 	2
#define SPI_DR_POSITION  3
#define SPI_CRCPR_POSITION 4
#define SPI_RXCRCR_POSITION 5
#define SPI_TXCRCR_POSITION 6
#define SPI_IS2CFGR_POSITION 7
#define SPI_IS2PR_POSITION 8


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
	if(!(RCC->APB1ENR & (ENABLE << 14)))
	{
		SPI_PeriClockControl(pSPIx, ENABLE);
	}


	while(!get_reg_value((uint32_t*)pSPIx, SPI_SR_POSITION, SPI_SR_TXE))
	{

	}
	while(len > 0)
	{

		//dff set to 16 bit
		if(pSPIx->SPI_CR1 & (SET  << SPI_CR1_DFF))
		{
			pSPIx->SPI_DR = *(uint32_t*)pTxbuffer;
			len -= 2;
			(uint16_t*)pTxbuffer++;
		}//dff set to 8 bit
		else if(!(pSPIx->SPI_CR1 & (SET << SPI_CR1_DFF)))
		{
			pSPIx->SPI_DR = *pTxbuffer;
			len--;
			pTxbuffer++;
		}

	}

	SPI_PeriClockControl(pSPIx, DISABLE);
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
		pSPIHandler->pSPIx->SPI_CR1 |= (SET << SPI_CR1_BIDI_OE);

	}



}

bool get_reg_value(uint32_t *address, uint32_t spi_register, uint8_t register_bit)
{

	if(register_bit > SPI_IS2PR_POSITION)
	{
		return 0;
	}

	if(*(address + (sizeof(uint32_t) * spi_register)) & (1 << register_bit))
	{
		return true;
	}
	else
	{
		return false;
	}



}

void SPI_SSOEConfig(SPI_RegDef_t *pSPIx, uint8_t en_or_di)
{
	if(en_or_di == ENABLE)
	{
		pSPIx->SPI_CR2 |= (ENABLE << SPI_CR2_SSOE);

	}
	else if (en_or_di == DISABLE)
	{
		pSPIx->SPI_CR2 |= (DISABLE << SPI_CR2_SSOE);

	}
}


void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);


//IRQ config and ISR Handling
void SPI_IRQInterruptconfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityconfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);
