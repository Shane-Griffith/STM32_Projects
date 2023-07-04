//
 // stm32f4xx.h
 //
 //  Created on: Mar 24, 2023
 //      Author: shane
 //


//
 //
 // Base addresses Flash and Sram memories
 //
 //
 //
#ifndef INC_STM32F4XX_H_
#define INC_STM32F4XX_H_

#include <stdint.h>


#define __vo volatile


#define FLASH_BASEADDR 					0x08000000U
#define SRAM1_BASEADDR					0x20000000U
#define SRAM2_BASEADDR					0x2001C000U
#define ROM								0x1FFF0000U
#define SRAM 							SRAM1_BASEADDR


//
 //
 // Ahbx and apbx bus peripheral base addresses
 //
 //

#define PERIPHERAL_BASEADDR					0x40000000U
#define APB1PERIPHERAL_BASEADDR				PERIPHERAL_BASEADDR
#define APB2PERIPHERAL_BASEADDR				0x40010000U
#define AHB1PERIPHERAL_BASEADDR				0x40020000U
#define AHB2PERIPHERAL_BASEADDR				0x50000000U
#define AHB3PERIPHERAL_BASEADDR				0xA0000000U


//
 //
 // AHB1 Periperal Base Addresses
 //
 //

#define GPIOA_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x0000)
#define GPIOB_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x0400)
#define GPIOC_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x0800)
#define GPIOD_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x0C00)
#define GPIOE_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x1000)
#define GPIOF_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x1400)
#define GPIOG_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x1800)
#define GPIOH_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x1C00)
#define GPIOI_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x2000)
#define RCC_BASEADDR				(AHB1PERIPHERAL_BASEADDR + 0x3800)
#define RCC_RESET_REG				(AHB1PERIPHERAL_BASEADDR + 0x10)

// APB1 Peripheral Base Addresses

#define I2C1_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x5400)
#define I2C2_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x5800)
#define I2C3_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x5c00)
#define SPI2_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x3800)
#define SPI3_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x3c00)
#define SPI4_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x3400)
#define USART2_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x4400)
#define USART3_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x4800)
#define UART4_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x4c00)
#define UART5_BASEADDR				(APB1PERIPHERAL_BASEADDR + 0x5000)


//APB2 Peripheral Base Addresses
#define EXTI_BASEADDR				(APB2PERIPHERAL_BASEADDR + 0x3c00)
#define SPI1_BASEADDR				(APB2PERIPHERAL_BASEADDR + 0x3000)
#define USART1_BASEADDR				(APB2PERIPHERAL_BASEADDR + 0x1000)
#define USART6_BASEADDR				(APB2PERIPHERAL_BASEADDR + 0x1400)
#define EXTI_BASEADDR				(APB2PERIPHERAL_BASEADDR + 0x3c00)
#define SYSCFG_BASEADDR				(APB2PERIPHERAL_BASEADDR + 0x3800)

//
 //
 // NVIC BASE ADDRESSES
 //
 //
#define NVIC_ISER_BASEADDR			(0xE000E100)
#define NVIC_ICER_BASEADDR			(0XE000E180)
#define NVIC_IPR_BASEADDR			(0xE000E400)

//
 //
 // IRQ Priority lvls
 //
 //
#define PRIORITY_LVL_0 				(0x00)
#define PRIORITY_LVL_1 				(0x10)
#define PRIORITY_LVL_2 				(0x20)
#define PRIORITY_LVL_3 				(0x30)
#define PRIORITY_LVL_4 				(0x40)
#define PRIORITY_LVL_5 				(0x50)
#define PRIORITY_LVL_6 				(0x60)
#define PRIORITY_LVL_7 				(0x70)
#define PRIORITY_LVL_8 				(0x80)
#define PRIORITY_LVL_9 				(0x90)
#define PRIORITY_LVL_10				(0xA0)
#define PRIORITY_LVL_11 			(0xb0)
#define PRIORITY_LVL_12 			(0xc0)
#define PRIORITY_LVL_13 			(0xd0)
#define PRIORITY_LVL_14 			(0xe0)
#define PRIORITY_LVL_15 			(0xf0)
//
 // GPIO Peripheral Definitions
 //
#define GPIOA 				((GPIO_RegDef_t*) GPIOA_BASEADDR)
#define GPIOB 				((GPIO_RegDef_t*) GPIOB_BASEADDR)
#define GPIOC 				((GPIO_RegDef_t*) GPIOC_BASEADDR)
#define GPIOD 				((GPIO_RegDef_t*) GPIOD_BASEADDR)
#define GPIOE 				((GPIO_RegDef_t*) GPIOE_BASEADDR)
#define GPIOF 				((GPIO_RegDef_t*) GPIOF_BASEADDR)
#define GPIOG 				((GPIO_RegDef_t*) GPIOG_BASEADDR)
#define GPIOH 				((GPIO_RegDef_t*) GPIOH_BASEADDR)
#define GPIOI 				((GPIO_RegDef_t*) GPIOI_BASEADDR)
#define EXTI 				((EXTI_RegDef_t*) EXTI_BASEADDR)
#define	SYSCFG 				((SYSCFG_RegDef_t*)SYSCFG_BASEADDR)
#define RCC					((RCC_RegDef_t*	) RCC_BASEADDR)
#define SPI1				((SPI_RegDef_t*	) SPI1_BASEADDR)
#define SPI2				((SPI_RegDef_t*) SPI2_BASEADDR)
#define SPI3				((SPI_RegDef_t*) SPI3_BASEADDR)
#define SPI4				((SPI_RegDef_t*) SPI4_BASEADDR)

//Interrupt configuraiton macros
#define NVIC_Priority_Set		((NVIC_ipr_RegDef_t*) NVIC_IPR_BASEADDR)
#define NVIC_CLR_EN 			((NVIC_DI_RegDef_t*)NVIC_ICER_BASEADDR)
#define NVIC_SET_EN				((NVIC_EN_RegDef_t*) NVIC_ISER_BASEADDR)

//
 // GPOIx Clock enable Macros GPIOx
 //
 //
#define GPIOA_PCLK_EN 	(RCC->AHB1ENR |= (1 << 0))
#define GPIOB_PCLK_EN 	(RCC->AHB1ENR |= (1 << 1))
#define GPIOC_PCLK_EN 	(RCC->AHB1ENR |= (1 << 2))
#define GPIOD_PCLK_EN 	(RCC->AHB1ENR |= (1 << 3))
#define GPIOE_PCLK_EN 	(RCC->AHB1ENR |= (1 << 4))
#define GPIOF_PCLK_EN 	(RCC->AHB1ENR |= (1 << 4))
#define GPIOG_PCLK_EN 	(RCC->AHB1ENR |= (1 << 6))
#define GPIOH_PCLK_EN 	(RCC->AHB1ENR |= (1 << 7))
#define GPIOI_PCLK_EN 	(RCC->AHB1ENR |= (1 << 8))
#define SYSCFG_PCLK_EN	(RCC->APB2ENR |= (1 << 14))
//
 // Clock Enable Macros for I2cx Peripherals
 //
 //
#define I2C1_PCLK_EN	(RCC->APB1ENR |= (1 << 21))
#define I2C2_PCLK_EN 	(RCC->APB1ENR |= (1 << 22))
#define I2C3_PCLK_EN	(RCC->APB1ENR |= (1 << 23))
//
 //
 //Clock Enable Macros for SPIx Peripherals
 //
 //
#define SPI1_PCLK_EN	(RCC->APB2ENR |= (1 << 12))
#define SPI2_PCLK_EN 	(RCC->APB1ENR |= (1 << 14))
#define SPI3_PCLK_EN	(RCC->APB1ENR |= (1 << 15))
#define SPI4_PCLK_EN	(RCC->APB2ENR |= (1 << 13))
//
 //
 // Clock Enable Macros for USARTx Peripherals
 //
 //
#define USART1_PCLK_EN	(RCC->APB2ENR |= (1 << 4))
#define USART6_PCLK_EN	(RCC->APB2ENR |= (1 << 5))
#define USART2_PCLK_EN	(RCC->APB1ENR |= (1 << 17))
#define USART3_PCLK_EN	(RCC->APB1ENR |= (1 << 18))
#define UART4_PCLK_EN	(RCC->APB1ENR |= (1 << 19))
#define UART5_PCLK_EN	(RCC->APB1ENR |= (1 << 20))
//
 //
 // Clock Enable Macros for SYSCFG Peripheral
 //
 //

//
 //  Clock Disable Macros GPIOx
 //
 //
#define GPIOA_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 0))
#define GPIOB_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 1))
#define GPIOC_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 2))
#define GPIOD_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 3))
#define GPIOE_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 4))
#define GPIOF_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 4))
#define GPIOG_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 6))
#define GPIOH_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 7))
#define GPIOI_PCLK_DI 	(RCC->AHB1ENR &= ~(1 << 8))
//
 //
 // Clock Disable Macros for I2cx Peripherals
 //
 //
#define I2C1_PCLK_DI	(RCC->APB1ENR &= ~(1 << 21))
#define I2C2_PCLK_DI 	(RCC->APB1ENR &= ~(1 << 22))
#define I2C3_PCLK_DI	(RCC->APB1ENR &= ~(1 << 23))

//
 //
 //Clock Disable Macros for SPIx Peripherals
 //
 //
#define SPI1_PCLK_DI	(RCC->APB2ENR &= ~(1 << 12))
#define SPI4_PCLK_DI	(RCC->APB2ENR &= ~(1 << 13))
#define SPI2_PCLK_DI 	(RCC->APB1ENR &= ~(1 << 14))
#define SPI3_PCLK_DI	(RCC->APB1ENR &= ~(1 << 15))
//
 //
 // Clock Disable Macros for USARTx Peripherals
 //
 //
#define USART1_PCLK_DI	(RCC->APB2ENR &= ~(1 << 4))
#define USART6_PCLK_DI	(RCC->APB2ENR &= ~(1 << 5))
#define USART2_PCLK_DI	(RCC->APB1ENR &= ~(1 << 17))
#define USART3_PCLK_DI	(RCC->APB1ENR &= ~(1 << 18))
#define UART4_PCLK_DI	(RCC->APB1ENR &= ~(1 << 19))
#define UART5_PCLK_DI	(RCC->APB1ENR &= ~(1 << 20))


 //
 // Clock Disable Macros for SYSCFG Peripheral
 //
 //
#define SYSCFG_PCLK_DI			(RCC->APB2ENR &= ~(1 << 14))
//
 //
 // GPIOx Reset Macros
 //
 //
#define GPIOA_RESET()			do{ (RCC->AHB1RSTR |= (1 << 0)); (RCC->AHB1RSTR &= ~(1 << 0)); } while(0)
#define GPIOB_RESET()			do{ (RCC->AHB1RSTR |= (1 << 1)); (RCC->AHB1RSTR &= ~(1 << 1)); } while(0)
#define GPIOC_RESET()			do{ (RCC->AHB1RSTR |= (1 << 2)); (RCC->AHB1RSTR &= ~(1 << 2)); } while(0)
#define GPIOD_RESET()			do{ (RCC->AHB1RSTR |= (1 << 3)); (RCC->AHB1RSTR &= ~(1 << 3)); } while(0)
#define GPIOE_RESET()			do{ (RCC->AHB1RSTR |= (1 << 4)); (RCC->AHB1RSTR &= ~(1 << 4)); } while(0)
#define GPIOF_RESET()			do{ (RCC->AHB1RSTR |= (1 << 5)); (RCC->AHB1RSTR &= ~(1 << 5)); } while(0)
#define GPIOG_RESET()			do{ (RCC->AHB1RSTR |= (1 << 6)); (RCC->AHB1RSTR &= ~(1 << 6)); } while(0)
#define GPIOH_RESET()			do{ (RCC->AHB1RSTR |= (1 << 7)); (RCC->AHB1RSTR &= ~(1 << 7)); } while(0)

//Takes gpiox as input and returns a value to encode equal to gpio port
#define GPIO_BASEADDR_TO_CODE(x) 	((x == GPIOA)? 0 :\
									(x == GPIOB) ? 1 :\
									(x == GPIOC) ? 2 :\
									(x == GPIOD) ? 3 :\
									(x == GPIOE) ? 4 :\
									(x == GPIOF) ? 5 :\
									(x == GPIOG) ? 6 :\
									(x == GPIOH) ? 7 :\
									(x == GPIOI) ? 8 : 0)

 // IRQ #'s stm32f407 mcu

//TODO Implement the rest of them

#define IRQ_NO_EXTI0		(6)
#define IRQ_NO_EXTI1		(7)
#define IRQ_NO_EXTI2		(8)
#define IRQ_NO_EXTI3		(9)
#define IRQ_NO_EXTI4		(10)
#define IRQ_NO_EXTI9_5		(23)
#define IRQ_NO_EXTI15_10 	(40)
#define IRQ_NO_SPI1			(35)
#define IRQ_NO_SPI2			(36)
#define IRQ_NO_SPI3			(51)
#define IRQ_NO_SPI4			(84)

//Some generic Macros
#define ENABLE 				1
#define DISABLE 			0
#define SET 				ENABLE
#define RESET 				DISABLE
#define GPIO_PIN_SET 		SET
#define GPIO_PIN_RESET		RESET
#define ENABLE_GREEN_LED	(GPIOD->ODR  |= (1 << 12))
#define ENABLE_RED_LED		(GPIOD->ODR  |= (1 << 14))
#define DISABLE_GREEN_LED	(GPIOD->ODR  &= ~(1 << 12))
#define DISABLE_RED_LED		(GPIOD->ODR  &= ~(1 << 14))


#define DELAY()				(for(int i = 0; i < 250000; i++))



//-----------------------------Struct Definitions-----------------------------


//Rcc Struct macro

typedef struct{

	__vo uint32_t CR;
	__vo uint32_t PLLCFGR;
	__vo uint32_t CFGR;
	__vo uint32_t CIR;
	__vo uint32_t AHB1RSTR;
	__vo uint32_t AHB2RSTR;
	__vo uint32_t AHB3RSTR;
	 uint32_t RESERVED;
	__vo uint32_t APB1RSTR;
	__vo uint32_t APB2RSTR;
	 uint32_t RESERVED2;
	 uint32_t RESERVED3;
	__vo uint32_t AHB1ENR;
	__vo uint32_t AHB2ENR;
	__vo uint32_t AHB3ENR;
	__vo uint32_t RESERVED4;
	__vo uint32_t APB1ENR;
	__vo uint32_t APB2ENR;
	 uint32_t RESERVED5;
	 uint32_t RESERVED6;
	__vo uint32_t AHB1LPENR;
	__vo uint32_t AHB2LPENR;
	__vo uint32_t AHB3LPENR;
	 uint32_t RESERVED7;
	__vo uint32_t APB1LPENR;
	__vo uint32_t APB2LPENR;
	 uint32_t RESERVED8;
	 uint32_t RESERVED9;
	__vo uint32_t BDCR;
	__vo uint32_t CSR;
	 uint32_t RESERVED10;
	 uint32_t RESERVED11;
	__vo uint32_t SSCGR;
	__vo uint32_t PLLI2SCFGR;
	__vo uint32_t PLLSAICFGR;
	__vo uint32_t DCKCFGR;

}RCC_RegDef_t;



//spi peripheral struct definition

typedef struct{

 __vo uint32_t SPI_CR1;
 __vo uint32_t SPI_CR2;
 __vo uint32_t SPI_SR;
 __vo uint32_t SPI_DR;
 __vo uint32_t SPI_CRCPR;
 __vo uint32_t SPIs_RXCRCR;
 __vo uint32_t SPI_TXCRCR;
 __vo uint32_t SPI_TXRCR;
 __vo uint32_t SPI_IS2CFGR;
 __vo uint32_t SPI_IS2PR;


}SPI_RegDef_t;


//Peripheral definition structure for EXTI
typedef struct{
	__vo uint32_t IMR;
	__vo uint32_t EMR;
	__vo uint32_t RTSR;
	__vo uint32_t FTRS;
	__vo uint32_t SWIER;
	__vo uint32_t PR;

}EXTI_RegDef_t;


//peripheral definition struct for Syscfg

typedef struct{

	__vo uint32_t MEMRMP;
	__vo uint32_t PMC;
	__vo uint32_t EXTICR[4];
		 uint32_t RESERVED[2];
	__vo uint32_t CMPCR;


}SYSCFG_RegDef_t;


//NVIC Enable Registers
typedef struct{

	__vo uint32_t NVIC_ISER[3];

}NVIC_EN_RegDef_t ;

//interupt clear enable registers
typedef struct{

	__vo uint32_t NVIC_ICER[3];

}NVIC_DI_RegDef_t;

//interrupt pending register

typedef struct{

	__vo uint32_t NVIC_IPR[23];

}NVIC_ipr_RegDef_t;

typedef struct{

	__vo uint32_t  MODER;						//GPIO port mode register
	__vo uint32_t  OTYPER;						//GPIO port output type register
	__vo uint32_t  OSPEEDR;						//GPIO port output speed register
	__vo uint32_t  PUPDR;						//GPIO port pull-up/pull-down register
	__vo uint32_t  IDR;							//GPIO port input data register
	__vo uint32_t  ODR;							//GPIO port output data register
	__vo uint32_t  BSRR;						//GPIO port bit set/reset register
	__vo uint32_t  LCKR;						//GPIO port configuration lock register
	__vo uint32_t  AFRL;						//GPIO alternate function low register
	__vo uint32_t  AFRH;						//GPIO alternate function high register

}GPIO_RegDef_t;



#include "stm32f407xx_gpio_driver.h"
#include "stm32f407xx_spi_driver.h"




#endif // INC_STM32F4XX_H_ //
