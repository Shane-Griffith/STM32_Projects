#include <stdint.h>
#include "stm32f407xx_spi_driver.h"



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
void SPI_Init(SPI_Handle_t* pSPIHandler){

	(pSPIHandler->pSPIx->SPI_CR1 |= (ENABLE << 6));
	(pSPIHandler->pSPIx->SPI_CR1 |= (pSPIHandler->Spi_Config.SPI_SPEED << 3));
	(pSPIHandler->pSPIx->SPI_CR1 |= (pSPIHandler->Spi_Config.SPI_CPHA << 0));




}
//Resets given SPI peripheral
void SPI_DeInit(SPI_RegDef_t *pSPIx){

	if(pSPIx == SPI1){
		(RCC->APB2RSTR |= (1 << 12));
	}if(pSPIx == SPI4){
		RCC->APB2RSTR |= (1 << 13);
	}if(pSPIx == SPI2){
		RCC->APB1RSTR |= (1 << 14);
	}if(pSPIx == SPI3){
		RCC->APB1RSTR |= (1 << 15);
	}

}

//Send/Receive Data
void  SPI_SendData(SPI_RegDef_t *pSPIx, uint8_t *pTxbuffer, uint32_t Len);
void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);


//IRQ Config and ISR Handling
void SPI_IRQInterruptConfig(uint8_t IRQNumber, uint8_t EnorDi);
void SPI_IRQPriorityConfig(uint8_t IRQNumber, uint8_t IRQPriority);
void SPI_IRQHandler(SPI_Handle_t *pHandle);
