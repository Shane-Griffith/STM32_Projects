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
