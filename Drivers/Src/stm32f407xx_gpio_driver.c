/*
 * stm32f407xx_GPIO_driver.c
 *
 *  Created on: Mar 24, 2023
 *      Author: shane
 */
#include "stm32f407xx_GPIO_driver.h"
#include <stdint.h>

//@GPIO_PIN_MODES PIN POSSIBLE MODES
#define GPIO_MODE_INPUT		(0)
#define GPIO_MODE_OUPUT		(1)
#define GPIO_MODE_ALTFN		(2)
#define GPIO_MODE_ANALOG	(3)
#define GPIO_MODE_IT_FT		(4)
#define GPIO_MODE_IT_RT		(5)
#define GPIO_MODE_IT_RFT	(6)

//@GPIO_PIN_OP_TYPE pin possibe output types
#define GPIO_OP_TYPE_PP		(0)
#define GPIO_OP_TYPE_OD		(1)

//@GPIO_PIN_SPEEDS pin speed modes
#define GPIO_SPEED_LOW		(0)
#define GPIO_SPEED_MED		(1)
#define GPIO_SPEED_HIGH		(2)
#define GPIO_SPEED_VHIGH	(3)

//@GPIO_PUPD_CONTROL PULL UP PULL DOWN REGISTER
#define GPIO_NO_PUPD 		(0)
#define GPIO_PIN_PU			(1)
#define GPIO_PIN_PD			(2)

//@GPIO_PIN_NO Pin Numbers
#define GPIO_PIN_0 		(0)
#define GPIO_PIN_1 		(1)
#define GPIO_PIN_2 		(2)
#define GPIO_PIN_3 		(3)
#define GPIO_PIN_4 		(4)
#define GPIO_PIN_5 		(5)
#define GPIO_PIN_6 		(6)
#define GPIO_PIN_7 		(7)
#define GPIO_PIN_8 		(8)
#define GPIO_PIN_9 		(9)
#define GPIO_PIN_10 	(10)
#define GPIO_PIN_11		(11)
#define GPIO_PIN_12		(12)
#define GPIO_PIN_13		(13)
#define GPIO_PIN_14		(14)
#define GPIO_PIN_15		(15)

//@GPIO_Pin_Altfn_Modes
#define GPIO_AF0		(0)
#define GPIO_AF1		(1)
#define GPIO_AF2		(2)
#define GPIO_AF3		(3)
#define GPIO_AF4		(4)
#define GPIO_AF5		(5)
#define GPIO_AF6		(6)
#define GPIO_AF7		(7)
#define GPIO_AF8		(8)
#define GPIO_AF9		(9)
#define GPIO_AF10		(10)
#define GPIO_AF11		(11)
#define GPIO_AF12		(12)
#define GPIO_AF13		(13)
#define GPIO_AF14		(14)
#define GPIO_AF15		(15)



/*
 *
 * Peripheral Clock setup
 *
 */

/*********************************************************************
 * @fn      		  - GPIO_PeriClockControl
 *
 * @brief             - This function enables or disables peripheral clock for the given GPIO port
 *
 * @param[in]         - base address of the GPIO peripheral
 * @param[in]         - ENABLE or DISABLE macros
 * @param[in]         -
 *
 * @return            -  none
 *
 * @Note              -  none
 */

void GPIO_PeriClockControl(GPIO_RegDef_t *pGPIOx, uint8_t EnorDi)
{

if(EnorDi == ENABLE){
	if(pGPIOx == GPIOA)
	{
		GPIOA_PCLK_EN;
	}
	else if(pGPIOx == GPIOB)
	{
		GPIOB_PCLK_EN;
	}
	else if(pGPIOx == GPIOC)
	{
		GPIOC_PCLK_EN;
	}
	else if(pGPIOx == GPIOD)
	{
		GPIOD_PCLK_EN;
	}
	else if(pGPIOx == GPIOE)
	{
		GPIOE_PCLK_EN;
	}
	else if(pGPIOx == GPIOF)
	{
		GPIOF_PCLK_EN;
	}
	else if(pGPIOx == GPIOG)
	{
		GPIOG_PCLK_EN;
	}
	else if(pGPIOx == GPIOH)
	{
		GPIOH_PCLK_EN;
	}
	else if(pGPIOx == GPIOI)
	{
		GPIOI_PCLK_EN;
	}
	else
	{
		if(pGPIOx == GPIOA)
		{
			GPIOA_PCLK_DI;
		}
		else if(pGPIOx == GPIOB)
		{
			GPIOB_PCLK_DI;
		}
		else if(pGPIOx == GPIOC)
		{
			GPIOC_PCLK_DI;
		}
		else if(pGPIOx == GPIOD)
		{
			GPIOD_PCLK_DI;
		}
		else if(pGPIOx == GPIOE)
		{
			GPIOE_PCLK_DI;
		}
		else if(pGPIOx == GPIOF)
		{
			GPIOF_PCLK_DI;
		}
		else if(pGPIOx == GPIOG)
		{
			GPIOG_PCLK_DI;
		}
		else if(pGPIOx == GPIOH)
		{
			GPIOH_PCLK_DI;
		}
		else if(pGPIOx == GPIOI)
		{
			GPIOI_PCLK_DI;
		}
	}
}

}


/*
 *  Init - Deinit
 */
void GPIO_Init(GPIO_Handle_t *pGPIOHandle)
{

GPIO_PeriClockControl(pGPIOHandle->pGPIOx, ENABLE);

//Configure pin mode

//if interrupt is true
if(pGPIOHandle->GPIO_PinConfig.GPIO_PinMode < GPIO_MODE_IT_FT){

	pGPIOHandle->pGPIOx->MODER |= (pGPIOHandle->GPIO_PinConfig.GPIO_PinMode <<
			(2 * pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber));

}else{

	//configure pin mode
	pGPIOHandle->pGPIOx->MODER |= (GPIO_MODE_INPUT << (2 * pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber));

	//configure pin for desired interrupt trigger type
	if(pGPIOHandle->GPIO_PinConfig.GPIO_PinMode == GPIO_MODE_IT_FT){


		//configure falling edge
		EXTI->FTRS |= (1 << pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber);
		//make sure that rising edge is clear
		EXTI->RTSR &= ~ (1 << pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber);

	}else if(pGPIOHandle->GPIO_PinConfig.GPIO_PinMode == GPIO_MODE_IT_RT){
		//configure for rising edge
		EXTI->RTSR |= (1 << pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber);
		//make sure falling edge is clear
		EXTI->FTRS &= ~(1 << pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber);

	}else if(pGPIOHandle->GPIO_PinConfig.GPIO_PinMode == GPIO_MODE_IT_RFT){
		//configure rising & falling edge
		EXTI->FTRS |= (1 << pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber);
		EXTI->RTSR |= (1 << pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber);

	}

	//enable the interrupt over that pin/port + enable pclk for syscfg
	uint8_t temp1 = pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber / 4;
	uint8_t temp2 = (4 *(pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber % 4) );
	uint8_t portCode = GPIO_BASEADDR_TO_CODE(pGPIOHandle->pGPIOx);
	SYSCFG_PCLK_EN;
	SYSCFG->EXTICR[temp1] |= (portCode << temp2);
	//enable exti interrupt using imr
	EXTI->IMR |= (1 << pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber);


}

//configure pin speed
pGPIOHandle->pGPIOx->OSPEEDR |= (pGPIOHandle->GPIO_PinConfig.GPIO_PinSpeed <<
		(2 * pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber));

//Configure Alt Function Mode

if(pGPIOHandle->GPIO_PinConfig.GPIO_PinMode == GPIO_MODE_ALTFN){
	if(pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber > 7){
		pGPIOHandle->pGPIOx->AFRH |= (pGPIOHandle->GPIO_PinConfig.GPIO_PinAltFunMode <<
				(4 * (pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber % 8)));

	}else{
		pGPIOHandle->pGPIOx->AFRL |= (pGPIOHandle->GPIO_PinConfig.GPIO_PinAltFunMode <<
						(4 * pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber));
	}



}


//Configure open drain/push pull
(pGPIOHandle->pGPIOx->OTYPER |= (pGPIOHandle->GPIO_PinConfig.GPIO_PinOPType  << (pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber)));//clear


//configure pull up/pull down register
(pGPIOHandle->pGPIOx->PUPDR |= (pGPIOHandle->GPIO_PinConfig.GPIO_PinPuPDcontrol) <<
		(2 * pGPIOHandle->GPIO_PinConfig.GPIO_PinNumber));//set



}
void GPIO_DeInit(GPIO_RegDef_t *pGPIOx)
{

	if(pGPIOx == GPIOA){
		GPIOA_RESET();
	}else if (pGPIOx == GPIOB){
		GPIOB_RESET();
	}else if (pGPIOx == GPIOC){
		GPIOC_RESET();
	}else if (pGPIOx == GPIOD){
		GPIOD_RESET();
	}else if (pGPIOx == GPIOE){
		GPIOE_RESET();
	}else if (pGPIOx == GPIOF){
		GPIOF_RESET();
	}else if (pGPIOx == GPIOG){
		GPIOG_RESET();
	}else if (pGPIOx == GPIOH){
		GPIOH_RESET();
	}


}


//Read data from pin and return it
uint8_t GPIO_ReadFromInputPin(GPIO_RegDef_t *pGPIOx, uint8_t pinNumber)
{
	//Prints 1 if value in IDR is 1 and 0 if not.
uint8_t data =  (pGPIOx->IDR >> pinNumber) & 0x01;


return data;
}

//read data from port
uint16_t GPIO_ReadFromInputPort(GPIO_RegDef_t *pGPIOx)
{
	uint16_t data = (pGPIOx->IDR);

	return data;
}

//write data to pin
void GPIO_WriteToOutputPin(GPIO_RegDef_t *pGPIOx,uint8_t pinNumber, uint8_t value)
{
	pGPIOx->ODR |= (value << pinNumber);
}

//write data to port
void GPIO_WriteToOutputPort(GPIO_RegDef_t *pGPIOx, uint16_t value)
{
	pGPIOx->ODR = value;
}


void GPIO_ToggleOutputPin(GPIO_RegDef_t *pGPIOx, uint8_t pinNumber)
{
	pGPIOx->ODR ^= (1 << pinNumber);
}

/*
 * IRQ Configuration and ISR handling
 */
void GPIO_IRQInterruptConfig(uint8_t IRQNumber, uint8_t EnorDi)
{

	//enable the interrupt handler for respective irq handler
	uint8_t temp1 = IRQNumber / 32;
	uint8_t temp2 = IRQNumber % 32;

	if(EnorDi == ENABLE)
	{
		NVIC_SET_EN->NVIC_ISER[temp1] |= (0x1 << temp2);

	}
	else
	{
		NVIC_CLR_EN->NVIC_ICER[temp1] |= (0x1 << temp2);

	}


}

//void GPIO_IRQPriorityConfig(uint8_t IRQNumber, uint8_t IRQPriority)
//{
//	//configure irq Priority
//		uint8_t iprReg = IRQNumber / 4;
//		uint8_t bitOffset = ((IRQNumber % 4) * 8);
//		NVIC_Priority_Set->NVIC_IPR[iprReg] |= (IRQNumber << bitOffset);
//}
void GPIO_IRQHandler(uint8_t pinNumber){
	EXTI->PR |=(0x1 << 0);
}
