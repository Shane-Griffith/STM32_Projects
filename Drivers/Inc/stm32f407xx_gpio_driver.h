/*
 * stm32f407xx_gpio_driver.h
 *
 *  Created on: Mar 24, 2023
 *      Author: shane
 */

#ifndef INC_STM32F407XX_GPIO_DRIVER_H_
#define INC_STM32F407XX_GPIO_DRIVER_H_

#include <stdint.h>
#include "stm32f4xx.h"







typedef struct
{

	uint8_t GPIO_PinNumber;				/*Possible Pin Numbers from @GPIO_PIN_NO*/
	uint8_t	GPIO_PinMode;				/*Possible pin modes from @GPIO_PIN_MODES */
	uint8_t GPIO_PinOPType;				/*Possible pin modes from @GPIO_PIN_OP_TYPE (open drain/push pull)*/
	uint8_t	GPIO_PinSpeed;				/*Possible pin modes from @GPIO_PIN_SPEED */
	uint8_t GPIO_PinPuPDcontrol; 		/*Possible PUPD modes from @GPIO_PUPD_CONTROL */
	uint8_t GPIO_PinAltFunMode;			/*Possible alt fun modes from @GPIO_Pin_Altfn_Modes*/


}GPIO_PinConfig_t;

typedef struct{

	GPIO_RegDef_t 		*pGPIOx; 			//Holds base address of the gpio port where pin belongs
	GPIO_PinConfig_t 	GPIO_PinConfig; 	//Holds GPIO pin config settings

}GPIO_Handle_t;

/*****************Api's to support this driver*****************/

/*
 *
 * Peripheral Clock setup
 *
 */

void GPIO_PeriClockControl(GPIO_RegDef_t *pGPIOx, uint8_t EnorDi);

/*
 *  Init - Deinit
 */
void GPIO_Init(GPIO_Handle_t *pGPIOHandle);
void GPIO_DeInit(GPIO_RegDef_t *pGPIOx);

/*
 * Data Read Write
 */
uint8_t GPIO_ReadFromInputPin(GPIO_RegDef_t *pGPIOx, uint8_t pinNumber);
uint16_t GPIO_ReadFromInputPort(GPIO_RegDef_t *pGPIOx);
void GPIO_WriteToOutputPin(GPIO_RegDef_t *pGPIOx,uint8_t pinNumber, uint8_t value);
void GPIO_WriteToOutputPort(GPIO_RegDef_t *pGPIOx, uint16_t value);
void GPIO_ToggleOutputPin(GPIO_RegDef_t *pGPIOx, uint8_t pinNumber);

/*
 * IRQ Configuration and ISR handling
 */
void GPIO_IRQInterruptConfig(uint8_t IRQNumber, uint8_t EnorDi);
void GPIO_IRQPriorityConfig(uint8_t IRQNumber, uint8_t IRQPriority);
void GPIO_IRQHandler(uint8_t pinNumber);





#endif /* INC_STM32F407XX_GPIO_DRIVER_H_ */
