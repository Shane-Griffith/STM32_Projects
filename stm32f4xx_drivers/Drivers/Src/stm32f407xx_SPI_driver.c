#include <stdint.h>
#include "stm32f407xx_SPI_driver.h"



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
void SPI_Init(SPI_Handle_t* pSPIHandler)
{
uint32_t tempReg = 0;
//configure slave/master for device
tempReg |= (pSPIHandler->SPI_Config.SPI_DEVICEMODE << SPI_CR1_MSTER);

//configure baud rate for SPI peripheral
tempReg |= (pSPIHandler->SPI_Config.SPI_Speed << SPI_CR1_BAUDRATE);

//configure slave management
tempReg |= (pSPIHandler->SPI_Config.SPI_SSM << SPI_CR1_SSM);

tempReg |= (pSPIHandler->SPI_Config.SPI_CPOL << SPI_CR1_CPOL);

tempReg |= (pSPIHandler->SPI_Config.SPI_CPHA << SPI_CR1_CPHA);

//confgiure data frame format.
//tempReg |= (pSPIHandler->SPI_Config.)

//configure bus config
//Full duplex
if(pSPIHandler->SPI_Config.BusConfig == SPI_CR1_BIDI_MODE)
{
	//clear bidi mode
	(tempReg &= ~(1 << SPI_CR1_BIDI_MODE));

}

else if(pSPIHandler->SPI_Config.BusConfig == SPI_CR1_BIDI_OE)
{
	//Set the bidi mode bit
	(tempReg |= (1 << SPI_CR1_BIDI_MODE));

}

else if(pSPIHandler->SPI_Config.BusConfig == SPI_SIMPLEX_RX_ONLY)
{
	//set bidi mode bit for half duplex
	(tempReg |= (1 << SPI_CR1_BIDI_MODE));
	//set rx only bit
	(tempReg |= (1 << SPI_CR1_RX_ONLY));
}

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
void  SPI_SendData(SPI_RegDef_t *pSPIx, uint8_t *pTxbuffer, uint32_t len){

	//Check length
	while(len != 0){

		while(!(pSPIx->SPI_SR & SPI_TX_BUFFER_EMPTY));


		if(pSPIx->SPI_CR1 & SPI_CR1_DFF)
		{//16-bit dff
			pSPIx->SPI_DR = *((uint16_t*)pTxbuffer);
			len -= 2;
			(uint16_t*)pTxbuffer++;
		}
		else
		{
			//16-bit dff
			pSPIx->SPI_DR = *(pTxbuffer);
			len--;
			pTxbuffer++;
		}

	}

}
void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);


//IRQ config and ISR Handling
void SPI_IRQInterruptconfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityconfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);
