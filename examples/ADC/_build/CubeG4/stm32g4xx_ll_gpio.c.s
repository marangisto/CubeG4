   1              		.cpu cortex-m4
   2              		.eabi_attribute 27, 1
   3              		.eabi_attribute 28, 1
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 4
  11              		.eabi_attribute 34, 1
  12              		.eabi_attribute 18, 4
  13              		.file	"stm32g4xx_ll_gpio.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_AHB2_GRP1_ForceReset,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	LL_AHB2_GRP1_ForceReset:
  26              	.LVL0:
  27              	.LFB163:
  28              		.file 1 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @file    stm32g4xx_ll_bus.h
   4:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief   Header file of BUS LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
   7:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   @verbatim
   8:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****                       ##### RCC Limitations #####
   9:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ==============================================================================
  10:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****     [..]
  11:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       A delay between an RCC peripheral clock enable and the effective peripheral
  12:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       enabling should be taken into account in order to manage the peripheral read/write
  13:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       from/to registers.
  14:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       (+) This delay depends on the peripheral mapping.
  15:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****         (++) AHB & APB peripherals, 1 dummy read is necessary
  16:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  17:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****     [..]
  18:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       Workarounds:
  19:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       (#) For AHB & APB peripherals, a dummy read to the peripheral register has been
  20:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****           inserted in each LL_{BUS}_GRP{x}_EnableClock() function.
  21:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  22:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   @endverbatim
  23:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ******************************************************************************
  24:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @attention
  25:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
  26:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  27:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * All rights reserved.</center></h2>
  28:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
  29:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  30:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * the "License"; You may not use this file except in compliance with the
  31:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * License. You may obtain a copy of the License at:
  32:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *                        opensource.org/licenses/BSD-3-Clause
  33:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
  34:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ******************************************************************************
  35:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  36:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  38:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #ifndef STM32G4xx_LL_BUS_H
  39:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define STM32G4xx_LL_BUS_H
  40:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #ifdef __cplusplus
  42:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** extern "C" {
  43:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif
  44:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Includes ------------------------------------------------------------------*/
  46:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #include "stm32g4xx.h"
  47:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  48:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @addtogroup STM32G4xx_LL_Driver
  49:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  50:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  51:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  52:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(RCC)
  53:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  54:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL BUS
  55:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  56:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  57:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  58:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private types -------------------------------------------------------------*/
  59:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private variables ---------------------------------------------------------*/
  60:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  61:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private constants ---------------------------------------------------------*/
  62:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  63:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private macros ------------------------------------------------------------*/
  64:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  65:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported types ------------------------------------------------------------*/
  66:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported constants --------------------------------------------------------*/
  67:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_Exported_Constants BUS Exported Constants
  68:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  69:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  70:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  71:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_AHB1_GRP1_PERIPH  AHB1 GRP1 PERIPH
  72:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  73:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  74:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_ALL            0xFFFFFFFFU
  75:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_DMA1           RCC_AHB1ENR_DMA1EN
  76:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_DMA2           RCC_AHB1ENR_DMA2EN
  77:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_DMAMUX1        RCC_AHB1ENR_DMAMUX1EN
  78:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_CORDIC         RCC_AHB1ENR_CORDICEN
  79:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_FMAC           RCC_AHB1ENR_FMACEN
  80:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_FLASH          RCC_AHB1ENR_FLASHEN
  81:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_SRAM1          RCC_AHB1SMENR_SRAM1SMEN
  82:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_CRC            RCC_AHB1ENR_CRCEN
  83:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
  84:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
  85:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  86:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  87:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_AHB2_GRP1_PERIPH  AHB2 GRP1 PERIPH
  88:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  89:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  90:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_ALL            0xFFFFFFFFU
  91:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOA          RCC_AHB2ENR_GPIOAEN
  92:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOB          RCC_AHB2ENR_GPIOBEN
  93:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOC          RCC_AHB2ENR_GPIOCEN
  94:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOD          RCC_AHB2ENR_GPIODEN
  95:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOE          RCC_AHB2ENR_GPIOEEN
  96:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOF          RCC_AHB2ENR_GPIOFEN
  97:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOG          RCC_AHB2ENR_GPIOGEN
  98:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_CCM            RCC_AHB2SMENR_CCMSMEN
  99:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_SRAM2          RCC_AHB2SMENR_SRAM2SMEN
 100:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_ADC12          RCC_AHB2ENR_ADC12EN
 101:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(ADC345_COMMON)
 102:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_ADC345         RCC_AHB2ENR_ADC345EN
 103:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* ADC345_COMMON */
 104:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC1           RCC_AHB2ENR_DAC1EN
 105:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(DAC2)
 106:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC2           RCC_AHB2ENR_DAC2EN
 107:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* DAC2 */
 108:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC3           RCC_AHB2ENR_DAC3EN
 109:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(DAC4)
 110:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC4           RCC_AHB2ENR_DAC4EN
 111:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* DAC4 */
 112:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(AES)
 113:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_AES            RCC_AHB2ENR_AESEN
 114:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* AES */
 115:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_RNG            RCC_AHB2ENR_RNGEN
 116:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 117:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 118:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 119:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_AHB3_GRP1_PERIPH  AHB3 GRP1 PERIPH
 121:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 122:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 123:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB3_GRP1_PERIPH_ALL            0xFFFFFFFFU
 124:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(FMC_Bank1_R)
 125:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB3_GRP1_PERIPH_FMC            RCC_AHB3ENR_FMCEN
 126:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* FMC_Bank1_R */
 127:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(QUADSPI)
 128:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB3_GRP1_PERIPH_QSPI           RCC_AHB3ENR_QSPIEN
 129:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* QUADSPI */
 130:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 131:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 132:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 133:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_APB1_GRP1_PERIPH  APB1 GRP1 PERIPH
 135:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 136:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 137:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_ALL            0xFFFFFFFFU
 138:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM2           RCC_APB1ENR1_TIM2EN
 139:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM3           RCC_APB1ENR1_TIM3EN
 140:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM4           RCC_APB1ENR1_TIM4EN
 141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(TIM5)
 142:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM5           RCC_APB1ENR1_TIM5EN
 143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* TIM5 */
 144:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM6           RCC_APB1ENR1_TIM6EN
 145:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM7           RCC_APB1ENR1_TIM7EN
 146:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_CRS            RCC_APB1ENR1_CRSEN
 147:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_RTCAPB         RCC_APB1ENR1_RTCAPBEN
 148:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_WWDG           RCC_APB1ENR1_WWDGEN
 149:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_SPI2           RCC_APB1ENR1_SPI2EN
 150:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_SPI3           RCC_APB1ENR1_SPI3EN
 151:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_USART2         RCC_APB1ENR1_USART2EN
 152:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_USART3         RCC_APB1ENR1_USART3EN
 153:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(UART4)
 154:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_UART4          RCC_APB1ENR1_UART4EN
 155:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* UART4 */
 156:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(UART5)
 157:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_UART5          RCC_APB1ENR1_UART5EN
 158:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* UART5 */
 159:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_I2C1           RCC_APB1ENR1_I2C1EN
 160:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_I2C2           RCC_APB1ENR1_I2C2EN
 161:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_USB            RCC_APB1ENR1_USBEN
 162:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(FDCAN1)
 163:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_FDCAN          RCC_APB1ENR1_FDCANEN
 164:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* FDCAN1 */
 165:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_PWR            RCC_APB1ENR1_PWREN
 166:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_I2C3           RCC_APB1ENR1_I2C3EN
 167:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_LPTIM1         RCC_APB1ENR1_LPTIM1EN
 168:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 169:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 170:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 171:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 172:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 173:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_APB1_GRP2_PERIPH  APB1 GRP2 PERIPH
 174:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 175:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 176:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_ALL            0xFFFFFFFFU
 177:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_LPUART1        RCC_APB1ENR2_LPUART1EN
 178:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(I2C4)
 179:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_I2C4           RCC_APB1ENR2_I2C4EN
 180:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* I2C4 */
 181:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_UCPD1         RCC_APB1ENR2_UCPD1EN
 182:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 183:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 184:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 185:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 186:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_APB2_GRP1_PERIPH  APB2 GRP1 PERIPH
 187:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 188:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 189:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_ALL            0xFFFFFFFFU
 190:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SYSCFG         RCC_APB2ENR_SYSCFGEN
 191:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM1           RCC_APB2ENR_TIM1EN
 192:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SPI1           RCC_APB2ENR_SPI1EN
 193:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM8           RCC_APB2ENR_TIM8EN
 194:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_USART1         RCC_APB2ENR_USART1EN
 195:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(SPI4)
 196:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SPI4           RCC_APB2ENR_SPI4EN
 197:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* SPI4 */
 198:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM15          RCC_APB2ENR_TIM15EN
 199:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM16          RCC_APB2ENR_TIM16EN
 200:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM17          RCC_APB2ENR_TIM17EN
 201:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(TIM20)
 202:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM20          RCC_APB2ENR_TIM20EN
 203:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* TIM20 */
 204:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SAI1           RCC_APB2ENR_SAI1EN
 205:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(HRTIM1)
 206:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_HRTIM1         RCC_APB2ENR_HRTIM1EN
 207:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* HRTIM1 */
 208:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 209:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 210:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 212:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 213:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 214:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 215:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 216:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported macro ------------------------------------------------------------*/
 217:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported functions --------------------------------------------------------*/
 218:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_Exported_Functions BUS Exported Functions
 219:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 220:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 221:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 222:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EF_AHB1 AHB1
 223:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 224:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 225:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 226:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 227:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB1 peripherals clock.
 228:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1ENR      DMA1EN        LL_AHB1_GRP1_EnableClock\n
 229:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMA2EN        LL_AHB1_GRP1_EnableClock\n
 230:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMAMMUXEN     LL_AHB1_GRP1_EnableClock\n
 231:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CORDICEN      LL_AHB1_GRP1_EnableClock\n
 232:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FMACEN        LL_AHB1_GRP1_EnableClock\n
 233:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FLASHEN       LL_AHB1_GRP1_EnableClock\n
 234:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CRCEN         LL_AHB1_GRP1_EnableClock
 235:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 236:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 237:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 238:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 239:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 240:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 241:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 242:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 243:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 244:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 245:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_EnableClock(uint32_t Periphs)
 246:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 247:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 248:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1ENR, Periphs);
 249:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 250:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB1ENR, Periphs);
 251:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 252:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 253:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 254:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 255:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if AHB1 peripheral clock is enabled or not
 256:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1ENR      DMA1EN        LL_AHB1_GRP1_IsEnabledClock\n
 257:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMA2EN        LL_AHB1_GRP1_IsEnabledClock\n
 258:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMAMUXEN      LL_AHB1_GRP1_IsEnabledClock\n
 259:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CORDICEN      LL_AHB1_GRP1_IsEnabledClock\n
 260:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FMACEN        LL_AHB1_GRP1_IsEnabledClock\n
 261:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FLASHEN       LL_AHB1_GRP1_IsEnabledClock\n
 262:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CRCEN         LL_AHB1_GRP1_IsEnabledClock
 263:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 264:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 265:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 266:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 267:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 268:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 269:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 270:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 271:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
 272:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 273:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_AHB1_GRP1_IsEnabledClock(uint32_t Periphs)
 274:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 275:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->AHB1ENR, Periphs) == Periphs) ? 1UL : 0UL);
 276:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 277:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 278:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 279:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB1 peripherals clock.
 280:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1ENR      DMA1EN        LL_AHB1_GRP1_DisableClock\n
 281:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMA2EN        LL_AHB1_GRP1_DisableClock\n
 282:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMAMUXEN      LL_AHB1_GRP1_DisableClock\n
 283:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CORDICEN      LL_AHB1_GRP1_DisableClock\n
 284:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FMACEN        LL_AHB1_GRP1_DisableClock\n
 285:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FLASHEN       LL_AHB1_GRP1_DisableClock\n
 286:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CRCEN         LL_AHB1_GRP1_DisableClock
 287:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 288:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 289:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 290:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 291:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 292:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 293:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 294:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 295:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 296:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 297:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_DisableClock(uint32_t Periphs)
 298:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 299:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1ENR, Periphs);
 300:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 301:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 302:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 303:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force AHB1 peripherals reset.
 304:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1RSTR     DMA1RST       LL_AHB1_GRP1_ForceReset\n
 305:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMA2RST       LL_AHB1_GRP1_ForceReset\n
 306:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMAMUXRST     LL_AHB1_GRP1_ForceReset\n
 307:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CORDICRST     LL_AHB1_GRP1_ForceReset\n
 308:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FMACRST       LL_AHB1_GRP1_ForceReset\n
 309:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FLASHRST      LL_AHB1_GRP1_ForceReset\n
 310:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CRCRST        LL_AHB1_GRP1_ForceReset
 311:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 312:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_ALL
 313:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 314:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 315:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 316:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 317:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 318:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 319:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 320:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 321:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 322:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_ForceReset(uint32_t Periphs)
 323:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 324:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1RSTR, Periphs);
 325:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 326:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 327:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 328:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release AHB1 peripherals reset.
 329:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1RSTR     DMA1RST       LL_AHB1_GRP1_ReleaseReset\n
 330:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMA2RST       LL_AHB1_GRP1_ReleaseReset\n
 331:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMAMUXRST     LL_AHB1_GRP1_ReleaseReset\n
 332:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CORDICRST     LL_AHB1_GRP1_ReleaseReset\n
 333:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FMACRST       LL_AHB1_GRP1_ReleaseReset\n
 334:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FLASHRST      LL_AHB1_GRP1_ReleaseReset\n
 335:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CRCRST        LL_AHB1_GRP1_ReleaseReset
 336:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 337:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_ALL
 338:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 339:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 340:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 341:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 342:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 343:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 344:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 345:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 346:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 347:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_ReleaseReset(uint32_t Periphs)
 348:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 349:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1RSTR, Periphs);
 350:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 351:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 352:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 353:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB1 peripheral clocks in Sleep and Stop modes
 354:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1SMENR    DMA1SMEN      LL_AHB1_GRP1_EnableClockStopSleep\n
 355:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMA2SMEN      LL_AHB1_GRP1_EnableClockStopSleep\n
 356:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMAMUXSMEN    LL_AHB1_GRP1_EnableClockStopSleep\n
 357:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CORDICSMEN    LL_AHB1_GRP1_EnableClockStopSleep\n
 358:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FMACSMEN      LL_AHB1_GRP1_EnableClockStopSleep\n
 359:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FLASHSMEN     LL_AHB1_GRP1_EnableClockStopSleep\n
 360:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    SRAM1SMEN     LL_AHB1_GRP1_DisableClockStopSleep\n
 361:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CRCSMEN       LL_AHB1_GRP1_EnableClockStopSleep
 362:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 363:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 364:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 365:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 366:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 367:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 368:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 369:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_SRAM1
 370:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 371:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 372:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 373:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_EnableClockStopSleep(uint32_t Periphs)
 374:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 375:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 376:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1SMENR, Periphs);
 377:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 378:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB1SMENR, Periphs);
 379:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 380:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 381:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 382:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 383:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB1 peripheral clocks in Sleep and Stop modes
 384:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1SMENR    DMA1SMEN      LL_AHB1_GRP1_DisableClockStopSleep\n
 385:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMA2SMEN      LL_AHB1_GRP1_DisableClockStopSleep\n
 386:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMAMUXSMEN    LL_AHB1_GRP1_DisableClockStopSleep\n
 387:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CORDICSMEN    LL_AHB1_GRP1_DisableClockStopSleep\n
 388:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FMACSMEN      LL_AHB1_GRP1_DisableClockStopSleep\n
 389:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FLASHSMEN     LL_AHB1_GRP1_DisableClockStopSleep\n
 390:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    SRAM1SMEN     LL_AHB1_GRP1_DisableClockStopSleep\n
 391:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CRCSMEN       LL_AHB1_GRP1_DisableClockStopSleep
 392:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 393:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 394:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 395:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 396:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 397:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 398:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 399:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_SRAM1
 400:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 401:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 402:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 403:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_DisableClockStopSleep(uint32_t Periphs)
 404:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 405:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1SMENR, Periphs);
 406:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 407:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 408:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 409:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 410:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 411:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 412:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EF_AHB2 AHB2
 413:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 414:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 415:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 416:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 417:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB2 peripherals clock.
 418:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2ENR      GPIOAEN       LL_AHB2_GRP1_EnableClock\n
 419:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOBEN       LL_AHB2_GRP1_EnableClock\n
 420:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOCEN       LL_AHB2_GRP1_EnableClock\n
 421:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIODEN       LL_AHB2_GRP1_EnableClock\n
 422:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOEEN       LL_AHB2_GRP1_EnableClock\n
 423:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOFEN       LL_AHB2_GRP1_EnableClock\n
 424:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOGEN       LL_AHB2_GRP1_EnableClock\n
 425:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC12EN       LL_AHB2_GRP1_EnableClock\n
 426:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC345EN      LL_AHB2_GRP1_EnableClock\n
 427:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC1EN        LL_AHB2_GRP1_EnableClock\n
 428:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC2EN        LL_AHB2_GRP1_EnableClock\n
 429:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC3EN        LL_AHB2_GRP1_EnableClock\n
 430:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC4EN        LL_AHB2_GRP1_EnableClock\n
 431:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      AESEN         LL_AHB2_GRP1_EnableClock\n
 432:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      RNGEN         LL_AHB2_GRP1_EnableClock
 433:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 434:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 435:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 436:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 437:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 438:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 439:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 440:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 441:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 442:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 443:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 444:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 445:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 446:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 447:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 448:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 449:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 450:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 451:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 452:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 453:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_EnableClock(uint32_t Periphs)
 454:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 455:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 456:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB2ENR, Periphs);
 457:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 458:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB2ENR, Periphs);
 459:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 460:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 461:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 462:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 463:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if AHB2 peripheral clock is enabled or not
 464:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2ENR      GPIOAEN       LL_AHB2_GRP1_IsEnabledClock\n
 465:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOBEN       LL_AHB2_GRP1_IsEnabledClock\n
 466:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOCEN       LL_AHB2_GRP1_IsEnabledClock\n
 467:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIODEN       LL_AHB2_GRP1_IsEnabledClock\n
 468:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOEEN       LL_AHB2_GRP1_IsEnabledClock\n
 469:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOFEN       LL_AHB2_GRP1_IsEnabledClock\n
 470:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOGEN       LL_AHB2_GRP1_IsEnabledClock\n
 471:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC12EN       LL_AHB2_GRP1_IsEnabledClock\n
 472:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC345EN      LL_AHB2_GRP1_IsEnabledClock\n
 473:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC1EN        LL_AHB2_GRP1_IsEnabledClock\n
 474:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC2EN        LL_AHB2_GRP1_IsEnabledClock\n
 475:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC3EN        LL_AHB2_GRP1_IsEnabledClock\n
 476:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC4EN        LL_AHB2_GRP1_IsEnabledClock\n
 477:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      AESEN         LL_AHB2_GRP1_IsEnabledClock\n
 478:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      RNGEN         LL_AHB2_GRP1_IsEnabledClock
 479:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 480:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 481:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 482:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 483:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 484:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 485:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 486:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 487:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 488:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 489:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 490:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 491:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 492:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 493:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 494:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 495:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 496:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 497:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
 498:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 499:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_AHB2_GRP1_IsEnabledClock(uint32_t Periphs)
 500:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 501:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->AHB2ENR, Periphs) == Periphs) ? 1UL : 0UL);
 502:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 503:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 504:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 505:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB2 peripherals clock.
 506:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2ENR      GPIOAEN       LL_AHB2_GRP1_DisableClock\n
 507:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOBEN       LL_AHB2_GRP1_DisableClock\n
 508:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOCEN       LL_AHB2_GRP1_DisableClock\n
 509:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIODEN       LL_AHB2_GRP1_DisableClock\n
 510:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOEEN       LL_AHB2_GRP1_DisableClock\n
 511:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOFEN       LL_AHB2_GRP1_DisableClock\n
 512:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOGEN       LL_AHB2_GRP1_DisableClock\n
 513:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC12EN       LL_AHB2_GRP1_DisableClock\n
 514:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC345EN      LL_AHB2_GRP1_DisableClock\n
 515:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC1EN        LL_AHB2_GRP1_DisableClock\n
 516:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC2EN        LL_AHB2_GRP1_DisableClock\n
 517:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC3EN        LL_AHB2_GRP1_DisableClock\n
 518:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC4EN        LL_AHB2_GRP1_DisableClock\n
 519:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      AESEN         LL_AHB2_GRP1_DisableClock\n
 520:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      RNGEN         LL_AHB2_GRP1_DisableClock
 521:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 522:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 523:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 524:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 525:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 526:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 527:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 528:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 529:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 530:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 531:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 532:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 533:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 534:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 535:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 536:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 537:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 538:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 539:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 540:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 541:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_DisableClock(uint32_t Periphs)
 542:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 543:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB2ENR, Periphs);
 544:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 545:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 546:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 547:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force AHB2 peripherals reset.
 548:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2RSTR      GPIOARST       LL_AHB2_GRP1_ForceReset\n
 549:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOBRST       LL_AHB2_GRP1_ForceReset\n
 550:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOCRST       LL_AHB2_GRP1_ForceReset\n
 551:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIODRST       LL_AHB2_GRP1_ForceReset\n
 552:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOERST       LL_AHB2_GRP1_ForceReset\n
 553:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOFRST       LL_AHB2_GRP1_ForceReset\n
 554:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOGRST       LL_AHB2_GRP1_ForceReset\n
 555:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC12RST       LL_AHB2_GRP1_ForceReset\n
 556:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC345RST      LL_AHB2_GRP1_ForceReset\n
 557:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC1RST        LL_AHB2_GRP1_ForceReset\n
 558:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC2RST        LL_AHB2_GRP1_ForceReset\n
 559:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC3RST        LL_AHB2_GRP1_ForceReset\n
 560:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC4RST        LL_AHB2_GRP1_ForceReset\n
 561:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      AESRST         LL_AHB2_GRP1_ForceReset\n
 562:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      RNGRST         LL_AHB2_GRP1_ForceReset
 563:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 564:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 565:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 566:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 567:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 568:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 569:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 570:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 571:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 572:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 573:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 574:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 575:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 576:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 577:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 578:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 579:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 580:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 581:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 582:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 583:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_ForceReset(uint32_t Periphs)
 584:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
  29              		.loc 1 584 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
 585:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB2RSTR, Periphs);
  34              		.loc 1 585 3 view .LVU1
  35 0000 024A     		ldr	r2, .L2
  36 0002 D36A     		ldr	r3, [r2, #44]
  37 0004 1843     		orrs	r0, r0, r3
  38              	.LVL1:
  39              		.loc 1 585 3 is_stmt 0 view .LVU2
  40 0006 D062     		str	r0, [r2, #44]
 586:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  41              		.loc 1 586 1 view .LVU3
  42 0008 7047     		bx	lr
  43              	.L3:
  44 000a 00BF     		.align	2
  45              	.L2:
  46 000c 00100240 		.word	1073876992
  47              		.cfi_endproc
  48              	.LFE163:
  50              		.section	.text.LL_GPIO_DeInit,"ax",%progbits
  51              		.align	1
  52              		.global	LL_GPIO_DeInit
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  58              	LL_GPIO_DeInit:
  59              	.LVL2:
  60              	.LFB195:
  61              		.file 2 "../../..\\CubeG4\\src\\stm32g4xx_ll_gpio.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @file    stm32g4xx_ll_gpio.c
   4:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @brief   GPIO LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #include "stm32g4xx_ll_gpio.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #include "stm32g4xx_ll_bus.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #ifdef  USE_FULL_ASSERT
  25:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #include "stm32_assert.h"
  26:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #else
  27:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #define assert_param(expr) ((void)0U)
  28:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #endif /* USE_FULL_ASSERT */
  29:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  30:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /** @addtogroup STM32G4xx_LL_Driver
  31:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @{
  32:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
  33:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  34:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #if defined (GPIOA) || defined (GPIOB) || defined (GPIOC) || defined (GPIOD) || defined (GPIOE) || 
  35:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /** @addtogroup GPIO_LL
  37:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @{
  38:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
  39:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /** MISRA C:2012 deviation rule has been granted for following rules:
  40:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * Rule-12.2 - Medium: RHS argument is in interval [0,INF] which is out of
  41:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * range of the shift operator in following API :
  42:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * LL_GPIO_Init
  43:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
  44:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  45:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /* Private types -------------------------------------------------------------*/
  46:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /* Private variables ---------------------------------------------------------*/
  47:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /* Private constants ---------------------------------------------------------*/
  48:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /* Private macros ------------------------------------------------------------*/
  49:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /** @addtogroup GPIO_LL_Private_Macros
  50:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @{
  51:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
  52:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #define IS_LL_GPIO_PIN(__VALUE__)          (((0x00000000U) < (__VALUE__)) && ((__VALUE__) <= (LL_GP
  53:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  54:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #define IS_LL_GPIO_MODE(__VALUE__)         (((__VALUE__) == LL_GPIO_MODE_INPUT)     ||\
  55:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_MODE_OUTPUT)    ||\
  56:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_MODE_ALTERNATE) ||\
  57:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_MODE_ANALOG))
  58:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  59:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #define IS_LL_GPIO_OUTPUT_TYPE(__VALUE__)  (((__VALUE__) == LL_GPIO_OUTPUT_PUSHPULL)  ||\
  60:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_OUTPUT_OPENDRAIN))
  61:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  62:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #define IS_LL_GPIO_SPEED(__VALUE__)        (((__VALUE__) == LL_GPIO_SPEED_FREQ_LOW)       ||\
  63:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_SPEED_FREQ_MEDIUM)    ||\
  64:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_SPEED_FREQ_HIGH)      ||\
  65:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_SPEED_FREQ_VERY_HIGH))
  66:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  67:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #define IS_LL_GPIO_PULL(__VALUE__)         (((__VALUE__) == LL_GPIO_PULL_NO)   ||\
  68:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_PULL_UP)   ||\
  69:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_PULL_DOWN))
  70:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  71:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** #define IS_LL_GPIO_ALTERNATE(__VALUE__)    (((__VALUE__) == LL_GPIO_AF_0  )   ||\
  72:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_1  )   ||\
  73:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_2  )   ||\
  74:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_3  )   ||\
  75:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_4  )   ||\
  76:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_5  )   ||\
  77:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_6  )   ||\
  78:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_7  )   ||\
  79:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_8  )   ||\
  80:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_9  )   ||\
  81:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_10 )   ||\
  82:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_11 )   ||\
  83:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_12 )   ||\
  84:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_13 )   ||\
  85:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_14 )   ||\
  86:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****                                             ((__VALUE__) == LL_GPIO_AF_15 ))
  87:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /**
  88:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @}
  89:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
  90:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  91:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /* Private function prototypes -----------------------------------------------*/
  92:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  93:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /* Exported functions --------------------------------------------------------*/
  94:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /** @addtogroup GPIO_LL_Exported_Functions
  95:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @{
  96:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
  97:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
  98:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /** @addtogroup GPIO_LL_EF_Init
  99:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @{
 100:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
 101:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 102:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /**
 103:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @brief  De-initialize GPIO registers (Registers restored to their default values).
 104:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @param  GPIOx GPIO Port
 105:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @retval An ErrorStatus enumeration value:
 106:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *          - SUCCESS: GPIO registers are de-initialized
 107:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *          - ERROR:   Wrong GPIO Port
 108:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
 109:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** ErrorStatus LL_GPIO_DeInit(GPIO_TypeDef *GPIOx)
 110:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** {
  62              		.loc 2 110 1 is_stmt 1 view -0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
 111:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   ErrorStatus status = SUCCESS;
  66              		.loc 2 111 3 view .LVU5
 112:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 113:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   /* Check the parameters */
 114:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
  67              		.loc 2 114 3 view .LVU6
 115:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 116:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   /* Force and Release reset on clock of GPIOx Port */
 117:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   if (GPIOx == GPIOA)
  68              		.loc 2 117 3 view .LVU7
  69              		.loc 2 117 6 is_stmt 0 view .LVU8
  70 0000 B0F1904F 		cmp	r0, #1207959552
 110:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   ErrorStatus status = SUCCESS;
  71              		.loc 2 110 1 view .LVU9
  72 0004 08B5     		push	{r3, lr}
  73              		.cfi_def_cfa_offset 8
  74              		.cfi_offset 3, -8
  75              		.cfi_offset 14, -4
  76              		.loc 2 117 6 view .LVU10
  77 0006 09D1     		bne	.L5
 118:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 119:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_GPIOA);
  78              		.loc 2 119 5 is_stmt 1 view .LVU11
  79 0008 0120     		movs	r0, #1
  80              	.LVL3:
  81              		.loc 2 119 5 is_stmt 0 view .LVU12
  82 000a FFF7FEFF 		bl	LL_AHB2_GRP1_ForceReset
  83              	.LVL4:
 120:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOA);
  84              		.loc 2 120 5 is_stmt 1 view .LVU13
  85              	.LBB38:
  86              	.LBI38:
 587:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 588:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 589:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release AHB2 peripherals reset.
 590:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2RSTR      GPIOARST       LL_AHB2_GRP1_ReleaseReset\n
 591:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOBRST       LL_AHB2_GRP1_ReleaseReset\n
 592:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOCRST       LL_AHB2_GRP1_ReleaseReset\n
 593:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIODRST       LL_AHB2_GRP1_ReleaseReset\n
 594:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOERST       LL_AHB2_GRP1_ReleaseReset\n
 595:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOFRST       LL_AHB2_GRP1_ReleaseReset\n
 596:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOGRST       LL_AHB2_GRP1_ReleaseReset\n
 597:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC12RST       LL_AHB2_GRP1_ReleaseReset\n
 598:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC345RST      LL_AHB2_GRP1_ReleaseReset\n
 599:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC1RST        LL_AHB2_GRP1_ReleaseReset\n
 600:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC2RST        LL_AHB2_GRP1_ReleaseReset\n
 601:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC3RST        LL_AHB2_GRP1_ReleaseReset\n
 602:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC4RST        LL_AHB2_GRP1_ReleaseReset\n
 603:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      AESRST         LL_AHB2_GRP1_ReleaseReset\n
 604:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      RNGRST         LL_AHB2_GRP1_ReleaseReset
 605:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 606:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 607:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 608:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 609:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 610:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 611:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 612:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 613:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 614:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 615:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 616:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 617:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 618:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 619:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 620:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 621:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 622:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 623:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 624:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_ReleaseReset(uint32_t Periphs)
  87              		.loc 1 625 22 view .LVU14
  88              	.LBB39:
 626:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 627:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB2RSTR, Periphs);
  89              		.loc 1 627 3 view .LVU15
  90 000e 254A     		ldr	r2, .L14
  91 0010 D36A     		ldr	r3, [r2, #44]
  92 0012 23F00103 		bic	r3, r3, #1
  93              	.LVL5:
  94              	.L13:
  95              		.loc 1 627 3 is_stmt 0 view .LVU16
  96              	.LBE39:
  97              	.LBE38:
  98              	.LBB40:
  99              	.LBB41:
 100 0016 D362     		str	r3, [r2, #44]
 101              	.LBE41:
 102              	.LBE40:
 111:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 103              		.loc 2 111 15 view .LVU17
 104 0018 0020     		movs	r0, #0
 105              	.L6:
 106              	.LVL6:
 121:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 122:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   else if (GPIOx == GPIOB)
 123:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 124:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_GPIOB);
 125:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOB);
 126:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 127:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   else if (GPIOx == GPIOC)
 128:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 129:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_GPIOC);
 130:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOC);
 131:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 132:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   else if (GPIOx == GPIOD)
 133:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 134:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_GPIOD);
 135:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOD);
 136:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 137:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   else if (GPIOx == GPIOE)
 138:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 139:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_GPIOE);
 140:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOE);
 141:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 142:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   else if (GPIOx == GPIOF)
 143:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 144:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_GPIOF);
 145:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOF);
 146:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 147:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   else if (GPIOx == GPIOG)
 148:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 149:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_GPIOG);
 150:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOG);
 151:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 152:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   else
 153:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 154:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     status = ERROR;
 155:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 156:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 157:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   return (status);
 107              		.loc 2 157 3 is_stmt 1 view .LVU18
 158:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** }
 108              		.loc 2 158 1 is_stmt 0 view .LVU19
 109 001a 08BD     		pop	{r3, pc}
 110              	.LVL7:
 111              	.L5:
 122:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 112              		.loc 2 122 8 is_stmt 1 view .LVU20
 122:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 113              		.loc 2 122 11 is_stmt 0 view .LVU21
 114 001c 224B     		ldr	r3, .L14+4
 115 001e 9842     		cmp	r0, r3
 116 0020 07D1     		bne	.L7
 124:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOB);
 117              		.loc 2 124 5 is_stmt 1 view .LVU22
 118 0022 0220     		movs	r0, #2
 119              	.LVL8:
 124:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOB);
 120              		.loc 2 124 5 is_stmt 0 view .LVU23
 121 0024 FFF7FEFF 		bl	LL_AHB2_GRP1_ForceReset
 122              	.LVL9:
 125:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 123              		.loc 2 125 5 is_stmt 1 view .LVU24
 124              	.LBB43:
 125              	.LBI43:
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 126              		.loc 1 625 22 view .LVU25
 127              	.LBB44:
 128              		.loc 1 627 3 view .LVU26
 129 0028 1E4A     		ldr	r2, .L14
 130 002a D36A     		ldr	r3, [r2, #44]
 131 002c 23F00203 		bic	r3, r3, #2
 132 0030 F1E7     		b	.L13
 133              	.LVL10:
 134              	.L7:
 135              		.loc 1 627 3 is_stmt 0 view .LVU27
 136              	.LBE44:
 137              	.LBE43:
 127:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 138              		.loc 2 127 8 is_stmt 1 view .LVU28
 127:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 139              		.loc 2 127 11 is_stmt 0 view .LVU29
 140 0032 1E4B     		ldr	r3, .L14+8
 141 0034 9842     		cmp	r0, r3
 142 0036 07D1     		bne	.L8
 129:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOC);
 143              		.loc 2 129 5 is_stmt 1 view .LVU30
 144 0038 0420     		movs	r0, #4
 145              	.LVL11:
 129:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOC);
 146              		.loc 2 129 5 is_stmt 0 view .LVU31
 147 003a FFF7FEFF 		bl	LL_AHB2_GRP1_ForceReset
 148              	.LVL12:
 130:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 149              		.loc 2 130 5 is_stmt 1 view .LVU32
 150              	.LBB45:
 151              	.LBI45:
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 152              		.loc 1 625 22 view .LVU33
 153              	.LBB46:
 154              		.loc 1 627 3 view .LVU34
 155 003e 194A     		ldr	r2, .L14
 156 0040 D36A     		ldr	r3, [r2, #44]
 157 0042 23F00403 		bic	r3, r3, #4
 158 0046 E6E7     		b	.L13
 159              	.LVL13:
 160              	.L8:
 161              		.loc 1 627 3 is_stmt 0 view .LVU35
 162              	.LBE46:
 163              	.LBE45:
 132:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 164              		.loc 2 132 8 is_stmt 1 view .LVU36
 132:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 165              		.loc 2 132 11 is_stmt 0 view .LVU37
 166 0048 194B     		ldr	r3, .L14+12
 167 004a 9842     		cmp	r0, r3
 168 004c 07D1     		bne	.L9
 134:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOD);
 169              		.loc 2 134 5 is_stmt 1 view .LVU38
 170 004e 0820     		movs	r0, #8
 171              	.LVL14:
 134:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOD);
 172              		.loc 2 134 5 is_stmt 0 view .LVU39
 173 0050 FFF7FEFF 		bl	LL_AHB2_GRP1_ForceReset
 174              	.LVL15:
 135:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 175              		.loc 2 135 5 is_stmt 1 view .LVU40
 176              	.LBB47:
 177              	.LBI47:
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 178              		.loc 1 625 22 view .LVU41
 179              	.LBB48:
 180              		.loc 1 627 3 view .LVU42
 181 0054 134A     		ldr	r2, .L14
 182 0056 D36A     		ldr	r3, [r2, #44]
 183 0058 23F00803 		bic	r3, r3, #8
 184 005c DBE7     		b	.L13
 185              	.LVL16:
 186              	.L9:
 187              		.loc 1 627 3 is_stmt 0 view .LVU43
 188              	.LBE48:
 189              	.LBE47:
 137:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 190              		.loc 2 137 8 is_stmt 1 view .LVU44
 137:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 191              		.loc 2 137 11 is_stmt 0 view .LVU45
 192 005e 154B     		ldr	r3, .L14+16
 193 0060 9842     		cmp	r0, r3
 194 0062 07D1     		bne	.L10
 139:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOE);
 195              		.loc 2 139 5 is_stmt 1 view .LVU46
 196 0064 1020     		movs	r0, #16
 197              	.LVL17:
 139:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOE);
 198              		.loc 2 139 5 is_stmt 0 view .LVU47
 199 0066 FFF7FEFF 		bl	LL_AHB2_GRP1_ForceReset
 200              	.LVL18:
 140:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 201              		.loc 2 140 5 is_stmt 1 view .LVU48
 202              	.LBB49:
 203              	.LBI49:
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 204              		.loc 1 625 22 view .LVU49
 205              	.LBB50:
 206              		.loc 1 627 3 view .LVU50
 207 006a 0E4A     		ldr	r2, .L14
 208 006c D36A     		ldr	r3, [r2, #44]
 209 006e 23F01003 		bic	r3, r3, #16
 210 0072 D0E7     		b	.L13
 211              	.LVL19:
 212              	.L10:
 213              		.loc 1 627 3 is_stmt 0 view .LVU51
 214              	.LBE50:
 215              	.LBE49:
 142:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 216              		.loc 2 142 8 is_stmt 1 view .LVU52
 142:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 217              		.loc 2 142 11 is_stmt 0 view .LVU53
 218 0074 104B     		ldr	r3, .L14+20
 219 0076 9842     		cmp	r0, r3
 220 0078 07D1     		bne	.L11
 144:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOF);
 221              		.loc 2 144 5 is_stmt 1 view .LVU54
 222 007a 2020     		movs	r0, #32
 223              	.LVL20:
 144:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOF);
 224              		.loc 2 144 5 is_stmt 0 view .LVU55
 225 007c FFF7FEFF 		bl	LL_AHB2_GRP1_ForceReset
 226              	.LVL21:
 145:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 227              		.loc 2 145 5 is_stmt 1 view .LVU56
 228              	.LBB51:
 229              	.LBI51:
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 230              		.loc 1 625 22 view .LVU57
 231              	.LBB52:
 232              		.loc 1 627 3 view .LVU58
 233 0080 084A     		ldr	r2, .L14
 234 0082 D36A     		ldr	r3, [r2, #44]
 235 0084 23F02003 		bic	r3, r3, #32
 236 0088 C5E7     		b	.L13
 237              	.LVL22:
 238              	.L11:
 239              		.loc 1 627 3 is_stmt 0 view .LVU59
 240              	.LBE52:
 241              	.LBE51:
 147:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 242              		.loc 2 147 8 is_stmt 1 view .LVU60
 147:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 243              		.loc 2 147 11 is_stmt 0 view .LVU61
 244 008a 0C4B     		ldr	r3, .L14+24
 245 008c 9842     		cmp	r0, r3
 246 008e 07D1     		bne	.L12
 149:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOG);
 247              		.loc 2 149 5 is_stmt 1 view .LVU62
 248 0090 4020     		movs	r0, #64
 249              	.LVL23:
 149:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_GPIOG);
 250              		.loc 2 149 5 is_stmt 0 view .LVU63
 251 0092 FFF7FEFF 		bl	LL_AHB2_GRP1_ForceReset
 252              	.LVL24:
 150:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 253              		.loc 2 150 5 is_stmt 1 view .LVU64
 254              	.LBB53:
 255              	.LBI40:
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 256              		.loc 1 625 22 view .LVU65
 257              	.LBB42:
 258              		.loc 1 627 3 view .LVU66
 259 0096 034A     		ldr	r2, .L14
 260 0098 D36A     		ldr	r3, [r2, #44]
 261 009a 23F04003 		bic	r3, r3, #64
 262 009e BAE7     		b	.L13
 263              	.LVL25:
 264              	.L12:
 265              		.loc 1 627 3 is_stmt 0 view .LVU67
 266              	.LBE42:
 267              	.LBE53:
 154:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 268              		.loc 2 154 12 view .LVU68
 269 00a0 0120     		movs	r0, #1
 270              	.LVL26:
 154:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 271              		.loc 2 154 12 view .LVU69
 272 00a2 BAE7     		b	.L6
 273              	.L15:
 274              		.align	2
 275              	.L14:
 276 00a4 00100240 		.word	1073876992
 277 00a8 00040048 		.word	1207960576
 278 00ac 00080048 		.word	1207961600
 279 00b0 000C0048 		.word	1207962624
 280 00b4 00100048 		.word	1207963648
 281 00b8 00140048 		.word	1207964672
 282 00bc 00180048 		.word	1207965696
 283              		.cfi_endproc
 284              	.LFE195:
 286              		.section	.text.LL_GPIO_Init,"ax",%progbits
 287              		.align	1
 288              		.global	LL_GPIO_Init
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 294              	LL_GPIO_Init:
 295              	.LVL27:
 296              	.LFB196:
 159:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 160:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /**
 161:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @brief  Initialize GPIO registers according to the specified parameters in GPIO_InitStruct.
 162:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @param  GPIOx GPIO Port
 163:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @param  GPIO_InitStruct pointer to a @ref LL_GPIO_InitTypeDef structure
 164:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *         that contains the configuration information for the specified GPIO peripheral.
 165:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @retval An ErrorStatus enumeration value:
 166:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *          - SUCCESS: GPIO registers are initialized according to GPIO_InitStruct content
 167:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *          - ERROR:   Not applicable
 168:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
 169:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** ErrorStatus LL_GPIO_Init(GPIO_TypeDef *GPIOx, LL_GPIO_InitTypeDef *GPIO_InitStruct)
 170:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** {
 297              		.loc 2 170 1 is_stmt 1 view -0
 298              		.cfi_startproc
 299              		@ args = 0, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 171:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   uint32_t pinpos;
 301              		.loc 2 171 3 view .LVU71
 172:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   uint32_t currentpin;
 302              		.loc 2 172 3 view .LVU72
 173:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 174:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   /* Check the parameters */
 175:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
 303              		.loc 2 175 3 view .LVU73
 176:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   assert_param(IS_LL_GPIO_PIN(GPIO_InitStruct->Pin));
 304              		.loc 2 176 3 view .LVU74
 177:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   assert_param(IS_LL_GPIO_MODE(GPIO_InitStruct->Mode));
 305              		.loc 2 177 3 view .LVU75
 178:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   assert_param(IS_LL_GPIO_PULL(GPIO_InitStruct->Pull));
 306              		.loc 2 178 3 view .LVU76
 179:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 180:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   /* ------------------------- Configure the port pins ---------------- */
 181:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   /* Initialize  pinpos on first pin set */
 182:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   pinpos = POSITION_VAL(GPIO_InitStruct->Pin);
 307              		.loc 2 182 3 view .LVU77
 170:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   uint32_t pinpos;
 308              		.loc 2 170 1 is_stmt 0 view .LVU78
 309 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 310              		.cfi_def_cfa_offset 36
 311              		.cfi_offset 4, -36
 312              		.cfi_offset 5, -32
 313              		.cfi_offset 6, -28
 314              		.cfi_offset 7, -24
 315              		.cfi_offset 8, -20
 316              		.cfi_offset 9, -16
 317              		.cfi_offset 10, -12
 318              		.cfi_offset 11, -8
 319              		.cfi_offset 14, -4
 320              		.loc 2 182 12 view .LVU79
 321 0004 0A68     		ldr	r2, [r1]
 322              	.LVL28:
 323              	.LBB88:
 324              	.LBI88:
 325              		.file 3 "../../..\\CubeG4\\include/cmsis_gcc.h"
   1:../../..\CubeG4\include/cmsis_gcc.h **** /**************************************************************************//**
   2:../../..\CubeG4\include/cmsis_gcc.h ****  * @file     cmsis_gcc.h
   3:../../..\CubeG4\include/cmsis_gcc.h ****  * @brief    CMSIS compiler GCC header file
   4:../../..\CubeG4\include/cmsis_gcc.h ****  * @version  V5.0.4
   5:../../..\CubeG4\include/cmsis_gcc.h ****  * @date     09. April 2018
   6:../../..\CubeG4\include/cmsis_gcc.h ****  ******************************************************************************/
   7:../../..\CubeG4\include/cmsis_gcc.h **** /*
   8:../../..\CubeG4\include/cmsis_gcc.h ****  * Copyright (c) 2009-2018 Arm Limited. All rights reserved.
   9:../../..\CubeG4\include/cmsis_gcc.h ****  *
  10:../../..\CubeG4\include/cmsis_gcc.h ****  * SPDX-License-Identifier: Apache-2.0
  11:../../..\CubeG4\include/cmsis_gcc.h ****  *
  12:../../..\CubeG4\include/cmsis_gcc.h ****  * Licensed under the Apache License, Version 2.0 (the License); you may
  13:../../..\CubeG4\include/cmsis_gcc.h ****  * not use this file except in compliance with the License.
  14:../../..\CubeG4\include/cmsis_gcc.h ****  * You may obtain a copy of the License at
  15:../../..\CubeG4\include/cmsis_gcc.h ****  *
  16:../../..\CubeG4\include/cmsis_gcc.h ****  * www.apache.org/licenses/LICENSE-2.0
  17:../../..\CubeG4\include/cmsis_gcc.h ****  *
  18:../../..\CubeG4\include/cmsis_gcc.h ****  * Unless required by applicable law or agreed to in writing, software
  19:../../..\CubeG4\include/cmsis_gcc.h ****  * distributed under the License is distributed on an AS IS BASIS, WITHOUT
  20:../../..\CubeG4\include/cmsis_gcc.h ****  * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  21:../../..\CubeG4\include/cmsis_gcc.h ****  * See the License for the specific language governing permissions and
  22:../../..\CubeG4\include/cmsis_gcc.h ****  * limitations under the License.
  23:../../..\CubeG4\include/cmsis_gcc.h ****  */
  24:../../..\CubeG4\include/cmsis_gcc.h **** 
  25:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef __CMSIS_GCC_H
  26:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_H
  27:../../..\CubeG4\include/cmsis_gcc.h **** 
  28:../../..\CubeG4\include/cmsis_gcc.h **** /* ignore some GCC warnings */
  29:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic push
  30:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wsign-conversion"
  31:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wconversion"
  32:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wunused-parameter"
  33:../../..\CubeG4\include/cmsis_gcc.h **** 
  34:../../..\CubeG4\include/cmsis_gcc.h **** /* Fallback for __has_builtin */
  35:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef __has_builtin
  36:../../..\CubeG4\include/cmsis_gcc.h ****   #define __has_builtin(x) (0)
  37:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  38:../../..\CubeG4\include/cmsis_gcc.h **** 
  39:../../..\CubeG4\include/cmsis_gcc.h **** /* CMSIS compiler specific defines */
  40:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __ASM
  41:../../..\CubeG4\include/cmsis_gcc.h ****   #define __ASM                                  __asm
  42:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  43:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __INLINE
  44:../../..\CubeG4\include/cmsis_gcc.h ****   #define __INLINE                               inline
  45:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  46:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __STATIC_INLINE
  47:../../..\CubeG4\include/cmsis_gcc.h ****   #define __STATIC_INLINE                        static inline
  48:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  49:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __STATIC_FORCEINLINE                 
  50:../../..\CubeG4\include/cmsis_gcc.h ****   #define __STATIC_FORCEINLINE                   __attribute__((always_inline)) static inline
  51:../../..\CubeG4\include/cmsis_gcc.h **** #endif                                           
  52:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __NO_RETURN
  53:../../..\CubeG4\include/cmsis_gcc.h ****   #define __NO_RETURN                            __attribute__((__noreturn__))
  54:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  55:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __USED
  56:../../..\CubeG4\include/cmsis_gcc.h ****   #define __USED                                 __attribute__((used))
  57:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  58:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __WEAK
  59:../../..\CubeG4\include/cmsis_gcc.h ****   #define __WEAK                                 __attribute__((weak))
  60:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  61:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED
  62:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED                               __attribute__((packed, aligned(1)))
  63:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  64:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED_STRUCT
  65:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED_STRUCT                        struct __attribute__((packed, aligned(1)))
  66:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  67:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED_UNION
  68:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED_UNION                         union __attribute__((packed, aligned(1)))
  69:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  70:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32        /* deprecated */
  71:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  72:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  73:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  74:../../..\CubeG4\include/cmsis_gcc.h ****   struct __attribute__((packed)) T_UINT32 { uint32_t v; };
  75:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  76:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32(x)                  (((struct T_UINT32 *)(x))->v)
  77:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  78:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT16_WRITE
  79:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  80:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  81:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  82:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT16_WRITE { uint16_t v; };
  83:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  84:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT16_WRITE(addr, val)    (void)((((struct T_UINT16_WRITE *)(void *)(addr))-
  85:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  86:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT16_READ
  87:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  88:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  89:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  90:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT16_READ { uint16_t v; };
  91:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  92:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT16_READ(addr)          (((const struct T_UINT16_READ *)(const void *)(add
  93:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  94:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32_WRITE
  95:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  96:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  97:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  98:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT32_WRITE { uint32_t v; };
  99:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
 100:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32_WRITE(addr, val)    (void)((((struct T_UINT32_WRITE *)(void *)(addr))-
 101:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 102:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32_READ
 103:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
 104:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
 105:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
 106:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT32_READ { uint32_t v; };
 107:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
 108:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32_READ(addr)          (((const struct T_UINT32_READ *)(const void *)(add
 109:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 110:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __ALIGNED
 111:../../..\CubeG4\include/cmsis_gcc.h ****   #define __ALIGNED(x)                           __attribute__((aligned(x)))
 112:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 113:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __RESTRICT
 114:../../..\CubeG4\include/cmsis_gcc.h ****   #define __RESTRICT                             __restrict
 115:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 116:../../..\CubeG4\include/cmsis_gcc.h **** 
 117:../../..\CubeG4\include/cmsis_gcc.h **** 
 118:../../..\CubeG4\include/cmsis_gcc.h **** /* ###########################  Core Function Access  ########################### */
 119:../../..\CubeG4\include/cmsis_gcc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
 120:../../..\CubeG4\include/cmsis_gcc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
 121:../../..\CubeG4\include/cmsis_gcc.h ****   @{
 122:../../..\CubeG4\include/cmsis_gcc.h ****  */
 123:../../..\CubeG4\include/cmsis_gcc.h **** 
 124:../../..\CubeG4\include/cmsis_gcc.h **** /**
 125:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Enable IRQ Interrupts
 126:../../..\CubeG4\include/cmsis_gcc.h ****   \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
 127:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 128:../../..\CubeG4\include/cmsis_gcc.h ****  */
 129:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __enable_irq(void)
 130:../../..\CubeG4\include/cmsis_gcc.h **** {
 131:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsie i" : : : "memory");
 132:../../..\CubeG4\include/cmsis_gcc.h **** }
 133:../../..\CubeG4\include/cmsis_gcc.h **** 
 134:../../..\CubeG4\include/cmsis_gcc.h **** 
 135:../../..\CubeG4\include/cmsis_gcc.h **** /**
 136:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Disable IRQ Interrupts
 137:../../..\CubeG4\include/cmsis_gcc.h ****   \details Disables IRQ interrupts by setting the I-bit in the CPSR.
 138:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 139:../../..\CubeG4\include/cmsis_gcc.h ****  */
 140:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __disable_irq(void)
 141:../../..\CubeG4\include/cmsis_gcc.h **** {
 142:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsid i" : : : "memory");
 143:../../..\CubeG4\include/cmsis_gcc.h **** }
 144:../../..\CubeG4\include/cmsis_gcc.h **** 
 145:../../..\CubeG4\include/cmsis_gcc.h **** 
 146:../../..\CubeG4\include/cmsis_gcc.h **** /**
 147:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Control Register
 148:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the Control Register.
 149:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Control Register value
 150:../../..\CubeG4\include/cmsis_gcc.h ****  */
 151:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_CONTROL(void)
 152:../../..\CubeG4\include/cmsis_gcc.h **** {
 153:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 154:../../..\CubeG4\include/cmsis_gcc.h **** 
 155:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
 156:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 157:../../..\CubeG4\include/cmsis_gcc.h **** }
 158:../../..\CubeG4\include/cmsis_gcc.h **** 
 159:../../..\CubeG4\include/cmsis_gcc.h **** 
 160:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 161:../../..\CubeG4\include/cmsis_gcc.h **** /**
 162:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Control Register (non-secure)
 163:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the non-secure Control Register when in secure mode.
 164:../../..\CubeG4\include/cmsis_gcc.h ****   \return               non-secure Control Register value
 165:../../..\CubeG4\include/cmsis_gcc.h ****  */
 166:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_CONTROL_NS(void)
 167:../../..\CubeG4\include/cmsis_gcc.h **** {
 168:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 169:../../..\CubeG4\include/cmsis_gcc.h **** 
 170:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control_ns" : "=r" (result) );
 171:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 172:../../..\CubeG4\include/cmsis_gcc.h **** }
 173:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 174:../../..\CubeG4\include/cmsis_gcc.h **** 
 175:../../..\CubeG4\include/cmsis_gcc.h **** 
 176:../../..\CubeG4\include/cmsis_gcc.h **** /**
 177:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Control Register
 178:../../..\CubeG4\include/cmsis_gcc.h ****   \details Writes the given value to the Control Register.
 179:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
 180:../../..\CubeG4\include/cmsis_gcc.h ****  */
 181:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_CONTROL(uint32_t control)
 182:../../..\CubeG4\include/cmsis_gcc.h **** {
 183:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
 184:../../..\CubeG4\include/cmsis_gcc.h **** }
 185:../../..\CubeG4\include/cmsis_gcc.h **** 
 186:../../..\CubeG4\include/cmsis_gcc.h **** 
 187:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 188:../../..\CubeG4\include/cmsis_gcc.h **** /**
 189:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Control Register (non-secure)
 190:../../..\CubeG4\include/cmsis_gcc.h ****   \details Writes the given value to the non-secure Control Register when in secure state.
 191:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
 192:../../..\CubeG4\include/cmsis_gcc.h ****  */
 193:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_CONTROL_NS(uint32_t control)
 194:../../..\CubeG4\include/cmsis_gcc.h **** {
 195:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR control_ns, %0" : : "r" (control) : "memory");
 196:../../..\CubeG4\include/cmsis_gcc.h **** }
 197:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 198:../../..\CubeG4\include/cmsis_gcc.h **** 
 199:../../..\CubeG4\include/cmsis_gcc.h **** 
 200:../../..\CubeG4\include/cmsis_gcc.h **** /**
 201:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get IPSR Register
 202:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the IPSR Register.
 203:../../..\CubeG4\include/cmsis_gcc.h ****   \return               IPSR Register value
 204:../../..\CubeG4\include/cmsis_gcc.h ****  */
 205:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_IPSR(void)
 206:../../..\CubeG4\include/cmsis_gcc.h **** {
 207:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 208:../../..\CubeG4\include/cmsis_gcc.h **** 
 209:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 210:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 211:../../..\CubeG4\include/cmsis_gcc.h **** }
 212:../../..\CubeG4\include/cmsis_gcc.h **** 
 213:../../..\CubeG4\include/cmsis_gcc.h **** 
 214:../../..\CubeG4\include/cmsis_gcc.h **** /**
 215:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get APSR Register
 216:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the APSR Register.
 217:../../..\CubeG4\include/cmsis_gcc.h ****   \return               APSR Register value
 218:../../..\CubeG4\include/cmsis_gcc.h ****  */
 219:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_APSR(void)
 220:../../..\CubeG4\include/cmsis_gcc.h **** {
 221:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 222:../../..\CubeG4\include/cmsis_gcc.h **** 
 223:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 224:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 225:../../..\CubeG4\include/cmsis_gcc.h **** }
 226:../../..\CubeG4\include/cmsis_gcc.h **** 
 227:../../..\CubeG4\include/cmsis_gcc.h **** 
 228:../../..\CubeG4\include/cmsis_gcc.h **** /**
 229:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get xPSR Register
 230:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the xPSR Register.
 231:../../..\CubeG4\include/cmsis_gcc.h ****   \return               xPSR Register value
 232:../../..\CubeG4\include/cmsis_gcc.h ****  */
 233:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_xPSR(void)
 234:../../..\CubeG4\include/cmsis_gcc.h **** {
 235:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 236:../../..\CubeG4\include/cmsis_gcc.h **** 
 237:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 238:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 239:../../..\CubeG4\include/cmsis_gcc.h **** }
 240:../../..\CubeG4\include/cmsis_gcc.h **** 
 241:../../..\CubeG4\include/cmsis_gcc.h **** 
 242:../../..\CubeG4\include/cmsis_gcc.h **** /**
 243:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer
 244:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer (PSP).
 245:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSP Register value
 246:../../..\CubeG4\include/cmsis_gcc.h ****  */
 247:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PSP(void)
 248:../../..\CubeG4\include/cmsis_gcc.h **** {
 249:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 250:../../..\CubeG4\include/cmsis_gcc.h **** 
 251:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp"  : "=r" (result) );
 252:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 253:../../..\CubeG4\include/cmsis_gcc.h **** }
 254:../../..\CubeG4\include/cmsis_gcc.h **** 
 255:../../..\CubeG4\include/cmsis_gcc.h **** 
 256:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 257:../../..\CubeG4\include/cmsis_gcc.h **** /**
 258:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer (non-secure)
 259:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Process Stack Pointer (PSP) when in secure s
 260:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSP Register value
 261:../../..\CubeG4\include/cmsis_gcc.h ****  */
 262:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PSP_NS(void)
 263:../../..\CubeG4\include/cmsis_gcc.h **** {
 264:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 265:../../..\CubeG4\include/cmsis_gcc.h **** 
 266:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp_ns"  : "=r" (result) );
 267:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 268:../../..\CubeG4\include/cmsis_gcc.h **** }
 269:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 270:../../..\CubeG4\include/cmsis_gcc.h **** 
 271:../../..\CubeG4\include/cmsis_gcc.h **** 
 272:../../..\CubeG4\include/cmsis_gcc.h **** /**
 273:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer
 274:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer (PSP).
 275:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 276:../../..\CubeG4\include/cmsis_gcc.h ****  */
 277:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PSP(uint32_t topOfProcStack)
 278:../../..\CubeG4\include/cmsis_gcc.h **** {
 279:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
 280:../../..\CubeG4\include/cmsis_gcc.h **** }
 281:../../..\CubeG4\include/cmsis_gcc.h **** 
 282:../../..\CubeG4\include/cmsis_gcc.h **** 
 283:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 284:../../..\CubeG4\include/cmsis_gcc.h **** /**
 285:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer (non-secure)
 286:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Process Stack Pointer (PSP) when in secure sta
 287:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 288:../../..\CubeG4\include/cmsis_gcc.h ****  */
 289:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PSP_NS(uint32_t topOfProcStack)
 290:../../..\CubeG4\include/cmsis_gcc.h **** {
 291:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psp_ns, %0" : : "r" (topOfProcStack) : );
 292:../../..\CubeG4\include/cmsis_gcc.h **** }
 293:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 294:../../..\CubeG4\include/cmsis_gcc.h **** 
 295:../../..\CubeG4\include/cmsis_gcc.h **** 
 296:../../..\CubeG4\include/cmsis_gcc.h **** /**
 297:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer
 298:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer (MSP).
 299:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSP Register value
 300:../../..\CubeG4\include/cmsis_gcc.h ****  */
 301:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_MSP(void)
 302:../../..\CubeG4\include/cmsis_gcc.h **** {
 303:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 304:../../..\CubeG4\include/cmsis_gcc.h **** 
 305:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp" : "=r" (result) );
 306:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 307:../../..\CubeG4\include/cmsis_gcc.h **** }
 308:../../..\CubeG4\include/cmsis_gcc.h **** 
 309:../../..\CubeG4\include/cmsis_gcc.h **** 
 310:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 311:../../..\CubeG4\include/cmsis_gcc.h **** /**
 312:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer (non-secure)
 313:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Main Stack Pointer (MSP) when in secure stat
 314:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSP Register value
 315:../../..\CubeG4\include/cmsis_gcc.h ****  */
 316:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_MSP_NS(void)
 317:../../..\CubeG4\include/cmsis_gcc.h **** {
 318:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 319:../../..\CubeG4\include/cmsis_gcc.h **** 
 320:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp_ns" : "=r" (result) );
 321:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 322:../../..\CubeG4\include/cmsis_gcc.h **** }
 323:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 324:../../..\CubeG4\include/cmsis_gcc.h **** 
 325:../../..\CubeG4\include/cmsis_gcc.h **** 
 326:../../..\CubeG4\include/cmsis_gcc.h **** /**
 327:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer
 328:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer (MSP).
 329:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfMainStack  Main Stack Pointer value to set
 330:../../..\CubeG4\include/cmsis_gcc.h ****  */
 331:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_MSP(uint32_t topOfMainStack)
 332:../../..\CubeG4\include/cmsis_gcc.h **** {
 333:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
 334:../../..\CubeG4\include/cmsis_gcc.h **** }
 335:../../..\CubeG4\include/cmsis_gcc.h **** 
 336:../../..\CubeG4\include/cmsis_gcc.h **** 
 337:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 338:../../..\CubeG4\include/cmsis_gcc.h **** /**
 339:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer (non-secure)
 340:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Main Stack Pointer (MSP) when in secure state.
 341:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfMainStack  Main Stack Pointer value to set
 342:../../..\CubeG4\include/cmsis_gcc.h ****  */
 343:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_MSP_NS(uint32_t topOfMainStack)
 344:../../..\CubeG4\include/cmsis_gcc.h **** {
 345:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msp_ns, %0" : : "r" (topOfMainStack) : );
 346:../../..\CubeG4\include/cmsis_gcc.h **** }
 347:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 348:../../..\CubeG4\include/cmsis_gcc.h **** 
 349:../../..\CubeG4\include/cmsis_gcc.h **** 
 350:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 351:../../..\CubeG4\include/cmsis_gcc.h **** /**
 352:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Stack Pointer (non-secure)
 353:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Stack Pointer (SP) when in secure state.
 354:../../..\CubeG4\include/cmsis_gcc.h ****   \return               SP Register value
 355:../../..\CubeG4\include/cmsis_gcc.h ****  */
 356:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_SP_NS(void)
 357:../../..\CubeG4\include/cmsis_gcc.h **** {
 358:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 359:../../..\CubeG4\include/cmsis_gcc.h **** 
 360:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, sp_ns" : "=r" (result) );
 361:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 362:../../..\CubeG4\include/cmsis_gcc.h **** }
 363:../../..\CubeG4\include/cmsis_gcc.h **** 
 364:../../..\CubeG4\include/cmsis_gcc.h **** 
 365:../../..\CubeG4\include/cmsis_gcc.h **** /**
 366:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Stack Pointer (non-secure)
 367:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Stack Pointer (SP) when in secure state.
 368:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfStack  Stack Pointer value to set
 369:../../..\CubeG4\include/cmsis_gcc.h ****  */
 370:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_SP_NS(uint32_t topOfStack)
 371:../../..\CubeG4\include/cmsis_gcc.h **** {
 372:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR sp_ns, %0" : : "r" (topOfStack) : );
 373:../../..\CubeG4\include/cmsis_gcc.h **** }
 374:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 375:../../..\CubeG4\include/cmsis_gcc.h **** 
 376:../../..\CubeG4\include/cmsis_gcc.h **** 
 377:../../..\CubeG4\include/cmsis_gcc.h **** /**
 378:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Priority Mask
 379:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current state of the priority mask bit from the Priority Mask Register.
 380:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Priority Mask value
 381:../../..\CubeG4\include/cmsis_gcc.h ****  */
 382:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PRIMASK(void)
 383:../../..\CubeG4\include/cmsis_gcc.h **** {
 384:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 385:../../..\CubeG4\include/cmsis_gcc.h **** 
 386:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) :: "memory");
 387:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 388:../../..\CubeG4\include/cmsis_gcc.h **** }
 389:../../..\CubeG4\include/cmsis_gcc.h **** 
 390:../../..\CubeG4\include/cmsis_gcc.h **** 
 391:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 392:../../..\CubeG4\include/cmsis_gcc.h **** /**
 393:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Priority Mask (non-secure)
 394:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current state of the non-secure priority mask bit from the Priority Mask Reg
 395:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Priority Mask value
 396:../../..\CubeG4\include/cmsis_gcc.h ****  */
 397:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PRIMASK_NS(void)
 398:../../..\CubeG4\include/cmsis_gcc.h **** {
 399:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 400:../../..\CubeG4\include/cmsis_gcc.h **** 
 401:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask_ns" : "=r" (result) :: "memory");
 402:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 403:../../..\CubeG4\include/cmsis_gcc.h **** }
 404:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 405:../../..\CubeG4\include/cmsis_gcc.h **** 
 406:../../..\CubeG4\include/cmsis_gcc.h **** 
 407:../../..\CubeG4\include/cmsis_gcc.h **** /**
 408:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Priority Mask
 409:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Priority Mask Register.
 410:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 411:../../..\CubeG4\include/cmsis_gcc.h ****  */
 412:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PRIMASK(uint32_t priMask)
 413:../../..\CubeG4\include/cmsis_gcc.h **** {
 414:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
 415:../../..\CubeG4\include/cmsis_gcc.h **** }
 416:../../..\CubeG4\include/cmsis_gcc.h **** 
 417:../../..\CubeG4\include/cmsis_gcc.h **** 
 418:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 419:../../..\CubeG4\include/cmsis_gcc.h **** /**
 420:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Priority Mask (non-secure)
 421:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Priority Mask Register when in secure state.
 422:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 423:../../..\CubeG4\include/cmsis_gcc.h ****  */
 424:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PRIMASK_NS(uint32_t priMask)
 425:../../..\CubeG4\include/cmsis_gcc.h **** {
 426:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR primask_ns, %0" : : "r" (priMask) : "memory");
 427:../../..\CubeG4\include/cmsis_gcc.h **** }
 428:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 429:../../..\CubeG4\include/cmsis_gcc.h **** 
 430:../../..\CubeG4\include/cmsis_gcc.h **** 
 431:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 432:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 433:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    )
 434:../../..\CubeG4\include/cmsis_gcc.h **** /**
 435:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Enable FIQ
 436:../../..\CubeG4\include/cmsis_gcc.h ****   \details Enables FIQ interrupts by clearing the F-bit in the CPSR.
 437:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 438:../../..\CubeG4\include/cmsis_gcc.h ****  */
 439:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __enable_fault_irq(void)
 440:../../..\CubeG4\include/cmsis_gcc.h **** {
 441:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsie f" : : : "memory");
 442:../../..\CubeG4\include/cmsis_gcc.h **** }
 443:../../..\CubeG4\include/cmsis_gcc.h **** 
 444:../../..\CubeG4\include/cmsis_gcc.h **** 
 445:../../..\CubeG4\include/cmsis_gcc.h **** /**
 446:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Disable FIQ
 447:../../..\CubeG4\include/cmsis_gcc.h ****   \details Disables FIQ interrupts by setting the F-bit in the CPSR.
 448:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 449:../../..\CubeG4\include/cmsis_gcc.h ****  */
 450:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __disable_fault_irq(void)
 451:../../..\CubeG4\include/cmsis_gcc.h **** {
 452:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsid f" : : : "memory");
 453:../../..\CubeG4\include/cmsis_gcc.h **** }
 454:../../..\CubeG4\include/cmsis_gcc.h **** 
 455:../../..\CubeG4\include/cmsis_gcc.h **** 
 456:../../..\CubeG4\include/cmsis_gcc.h **** /**
 457:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Base Priority
 458:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Base Priority register.
 459:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Base Priority register value
 460:../../..\CubeG4\include/cmsis_gcc.h ****  */
 461:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_BASEPRI(void)
 462:../../..\CubeG4\include/cmsis_gcc.h **** {
 463:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 464:../../..\CubeG4\include/cmsis_gcc.h **** 
 465:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri" : "=r" (result) );
 466:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 467:../../..\CubeG4\include/cmsis_gcc.h **** }
 468:../../..\CubeG4\include/cmsis_gcc.h **** 
 469:../../..\CubeG4\include/cmsis_gcc.h **** 
 470:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 471:../../..\CubeG4\include/cmsis_gcc.h **** /**
 472:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Base Priority (non-secure)
 473:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Base Priority register when in secure state.
 474:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Base Priority register value
 475:../../..\CubeG4\include/cmsis_gcc.h ****  */
 476:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_BASEPRI_NS(void)
 477:../../..\CubeG4\include/cmsis_gcc.h **** {
 478:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 479:../../..\CubeG4\include/cmsis_gcc.h **** 
 480:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri_ns" : "=r" (result) );
 481:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 482:../../..\CubeG4\include/cmsis_gcc.h **** }
 483:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 484:../../..\CubeG4\include/cmsis_gcc.h **** 
 485:../../..\CubeG4\include/cmsis_gcc.h **** 
 486:../../..\CubeG4\include/cmsis_gcc.h **** /**
 487:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority
 488:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register.
 489:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 490:../../..\CubeG4\include/cmsis_gcc.h ****  */
 491:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_BASEPRI(uint32_t basePri)
 492:../../..\CubeG4\include/cmsis_gcc.h **** {
 493:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
 494:../../..\CubeG4\include/cmsis_gcc.h **** }
 495:../../..\CubeG4\include/cmsis_gcc.h **** 
 496:../../..\CubeG4\include/cmsis_gcc.h **** 
 497:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 498:../../..\CubeG4\include/cmsis_gcc.h **** /**
 499:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority (non-secure)
 500:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Base Priority register when in secure state.
 501:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 502:../../..\CubeG4\include/cmsis_gcc.h ****  */
 503:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_BASEPRI_NS(uint32_t basePri)
 504:../../..\CubeG4\include/cmsis_gcc.h **** {
 505:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_ns, %0" : : "r" (basePri) : "memory");
 506:../../..\CubeG4\include/cmsis_gcc.h **** }
 507:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 508:../../..\CubeG4\include/cmsis_gcc.h **** 
 509:../../..\CubeG4\include/cmsis_gcc.h **** 
 510:../../..\CubeG4\include/cmsis_gcc.h **** /**
 511:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority with condition
 512:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register only if BASEPRI masking is disable
 513:../../..\CubeG4\include/cmsis_gcc.h ****            or the new value increases the BASEPRI priority level.
 514:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 515:../../..\CubeG4\include/cmsis_gcc.h ****  */
 516:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_BASEPRI_MAX(uint32_t basePri)
 517:../../..\CubeG4\include/cmsis_gcc.h **** {
 518:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
 519:../../..\CubeG4\include/cmsis_gcc.h **** }
 520:../../..\CubeG4\include/cmsis_gcc.h **** 
 521:../../..\CubeG4\include/cmsis_gcc.h **** 
 522:../../..\CubeG4\include/cmsis_gcc.h **** /**
 523:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Fault Mask
 524:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Fault Mask register.
 525:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Fault Mask register value
 526:../../..\CubeG4\include/cmsis_gcc.h ****  */
 527:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_FAULTMASK(void)
 528:../../..\CubeG4\include/cmsis_gcc.h **** {
 529:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 530:../../..\CubeG4\include/cmsis_gcc.h **** 
 531:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask" : "=r" (result) );
 532:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 533:../../..\CubeG4\include/cmsis_gcc.h **** }
 534:../../..\CubeG4\include/cmsis_gcc.h **** 
 535:../../..\CubeG4\include/cmsis_gcc.h **** 
 536:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 537:../../..\CubeG4\include/cmsis_gcc.h **** /**
 538:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Fault Mask (non-secure)
 539:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Fault Mask register when in secure state.
 540:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Fault Mask register value
 541:../../..\CubeG4\include/cmsis_gcc.h ****  */
 542:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_FAULTMASK_NS(void)
 543:../../..\CubeG4\include/cmsis_gcc.h **** {
 544:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 545:../../..\CubeG4\include/cmsis_gcc.h **** 
 546:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask_ns" : "=r" (result) );
 547:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 548:../../..\CubeG4\include/cmsis_gcc.h **** }
 549:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 550:../../..\CubeG4\include/cmsis_gcc.h **** 
 551:../../..\CubeG4\include/cmsis_gcc.h **** 
 552:../../..\CubeG4\include/cmsis_gcc.h **** /**
 553:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Fault Mask
 554:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Fault Mask register.
 555:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 556:../../..\CubeG4\include/cmsis_gcc.h ****  */
 557:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_FAULTMASK(uint32_t faultMask)
 558:../../..\CubeG4\include/cmsis_gcc.h **** {
 559:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
 560:../../..\CubeG4\include/cmsis_gcc.h **** }
 561:../../..\CubeG4\include/cmsis_gcc.h **** 
 562:../../..\CubeG4\include/cmsis_gcc.h **** 
 563:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 564:../../..\CubeG4\include/cmsis_gcc.h **** /**
 565:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Fault Mask (non-secure)
 566:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Fault Mask register when in secure state.
 567:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 568:../../..\CubeG4\include/cmsis_gcc.h ****  */
 569:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_FAULTMASK_NS(uint32_t faultMask)
 570:../../..\CubeG4\include/cmsis_gcc.h **** {
 571:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask_ns, %0" : : "r" (faultMask) : "memory");
 572:../../..\CubeG4\include/cmsis_gcc.h **** }
 573:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 574:../../..\CubeG4\include/cmsis_gcc.h **** 
 575:../../..\CubeG4\include/cmsis_gcc.h **** #endif /* ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 576:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 577:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    ) */
 578:../../..\CubeG4\include/cmsis_gcc.h **** 
 579:../../..\CubeG4\include/cmsis_gcc.h **** 
 580:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) || \
 581:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_BASE__ ) && (__ARM_ARCH_8M_BASE__ == 1))    )
 582:../../..\CubeG4\include/cmsis_gcc.h **** 
 583:../../..\CubeG4\include/cmsis_gcc.h **** /**
 584:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer Limit
 585:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 586:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always in non-secure
 587:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 588:../../..\CubeG4\include/cmsis_gcc.h ****   
 589:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer Limit (PSPLIM).
 590:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSPLIM Register value
 591:../../..\CubeG4\include/cmsis_gcc.h ****  */
 592:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PSPLIM(void)
 593:../../..\CubeG4\include/cmsis_gcc.h **** {
 594:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 595:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 596:../../..\CubeG4\include/cmsis_gcc.h ****     // without main extensions, the non-secure PSPLIM is RAZ/WI
 597:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 598:../../..\CubeG4\include/cmsis_gcc.h **** #else
 599:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 600:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psplim"  : "=r" (result) );
 601:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 602:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 603:../../..\CubeG4\include/cmsis_gcc.h **** }
 604:../../..\CubeG4\include/cmsis_gcc.h **** 
 605:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE) && (__ARM_FEATURE_CMSE == 3))
 606:../../..\CubeG4\include/cmsis_gcc.h **** /**
 607:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer Limit (non-secure)
 608:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 609:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always.
 610:../../..\CubeG4\include/cmsis_gcc.h **** 
 611:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Process Stack Pointer Limit (PSPLIM) when in
 612:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSPLIM Register value
 613:../../..\CubeG4\include/cmsis_gcc.h ****  */
 614:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PSPLIM_NS(void)
 615:../../..\CubeG4\include/cmsis_gcc.h **** {
 616:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 617:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 618:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 619:../../..\CubeG4\include/cmsis_gcc.h **** #else
 620:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 621:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psplim_ns"  : "=r" (result) );
 622:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 623:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 624:../../..\CubeG4\include/cmsis_gcc.h **** }
 625:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 626:../../..\CubeG4\include/cmsis_gcc.h **** 
 627:../../..\CubeG4\include/cmsis_gcc.h **** 
 628:../../..\CubeG4\include/cmsis_gcc.h **** /**
 629:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer Limit
 630:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 631:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored in non-secure
 632:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 633:../../..\CubeG4\include/cmsis_gcc.h ****   
 634:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer Limit (PSPLIM).
 635:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
 636:../../..\CubeG4\include/cmsis_gcc.h ****  */
 637:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PSPLIM(uint32_t ProcStackPtrLimit)
 638:../../..\CubeG4\include/cmsis_gcc.h **** {
 639:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 640:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 641:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 642:../../..\CubeG4\include/cmsis_gcc.h ****   (void)ProcStackPtrLimit;
 643:../../..\CubeG4\include/cmsis_gcc.h **** #else
 644:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psplim, %0" : : "r" (ProcStackPtrLimit));
 645:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 646:../../..\CubeG4\include/cmsis_gcc.h **** }
 647:../../..\CubeG4\include/cmsis_gcc.h **** 
 648:../../..\CubeG4\include/cmsis_gcc.h **** 
 649:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 650:../../..\CubeG4\include/cmsis_gcc.h **** /**
 651:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer (non-secure)
 652:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 653:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored.
 654:../../..\CubeG4\include/cmsis_gcc.h **** 
 655:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Process Stack Pointer Limit (PSPLIM) when in s
 656:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
 657:../../..\CubeG4\include/cmsis_gcc.h ****  */
 658:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PSPLIM_NS(uint32_t ProcStackPtrLimit)
 659:../../..\CubeG4\include/cmsis_gcc.h **** {
 660:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 661:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 662:../../..\CubeG4\include/cmsis_gcc.h ****   (void)ProcStackPtrLimit;
 663:../../..\CubeG4\include/cmsis_gcc.h **** #else
 664:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psplim_ns, %0\n" : : "r" (ProcStackPtrLimit));
 665:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 666:../../..\CubeG4\include/cmsis_gcc.h **** }
 667:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 668:../../..\CubeG4\include/cmsis_gcc.h **** 
 669:../../..\CubeG4\include/cmsis_gcc.h **** 
 670:../../..\CubeG4\include/cmsis_gcc.h **** /**
 671:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer Limit
 672:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 673:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always in non-secure
 674:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 675:../../..\CubeG4\include/cmsis_gcc.h **** 
 676:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer Limit (MSPLIM).
 677:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSPLIM Register value
 678:../../..\CubeG4\include/cmsis_gcc.h ****  */
 679:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_MSPLIM(void)
 680:../../..\CubeG4\include/cmsis_gcc.h **** {
 681:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 682:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 683:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 684:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 685:../../..\CubeG4\include/cmsis_gcc.h **** #else
 686:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 687:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msplim" : "=r" (result) );
 688:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 689:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 690:../../..\CubeG4\include/cmsis_gcc.h **** }
 691:../../..\CubeG4\include/cmsis_gcc.h **** 
 692:../../..\CubeG4\include/cmsis_gcc.h **** 
 693:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 694:../../..\CubeG4\include/cmsis_gcc.h **** /**
 695:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer Limit (non-secure)
 696:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 697:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always.
 698:../../..\CubeG4\include/cmsis_gcc.h **** 
 699:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Main Stack Pointer Limit(MSPLIM) when in sec
 700:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSPLIM Register value
 701:../../..\CubeG4\include/cmsis_gcc.h ****  */
 702:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_MSPLIM_NS(void)
 703:../../..\CubeG4\include/cmsis_gcc.h **** {
 704:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 705:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 706:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 707:../../..\CubeG4\include/cmsis_gcc.h **** #else
 708:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 709:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msplim_ns" : "=r" (result) );
 710:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 711:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 712:../../..\CubeG4\include/cmsis_gcc.h **** }
 713:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 714:../../..\CubeG4\include/cmsis_gcc.h **** 
 715:../../..\CubeG4\include/cmsis_gcc.h **** 
 716:../../..\CubeG4\include/cmsis_gcc.h **** /**
 717:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer Limit
 718:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 719:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored in non-secure
 720:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 721:../../..\CubeG4\include/cmsis_gcc.h **** 
 722:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer Limit (MSPLIM).
 723:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    MainStackPtrLimit  Main Stack Pointer Limit value to set
 724:../../..\CubeG4\include/cmsis_gcc.h ****  */
 725:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_MSPLIM(uint32_t MainStackPtrLimit)
 726:../../..\CubeG4\include/cmsis_gcc.h **** {
 727:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 728:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 729:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 730:../../..\CubeG4\include/cmsis_gcc.h ****   (void)MainStackPtrLimit;
 731:../../..\CubeG4\include/cmsis_gcc.h **** #else
 732:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msplim, %0" : : "r" (MainStackPtrLimit));
 733:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 734:../../..\CubeG4\include/cmsis_gcc.h **** }
 735:../../..\CubeG4\include/cmsis_gcc.h **** 
 736:../../..\CubeG4\include/cmsis_gcc.h **** 
 737:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 738:../../..\CubeG4\include/cmsis_gcc.h **** /**
 739:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer Limit (non-secure)
 740:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 741:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored.
 742:../../..\CubeG4\include/cmsis_gcc.h **** 
 743:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Main Stack Pointer Limit (MSPLIM) when in secu
 744:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    MainStackPtrLimit  Main Stack Pointer value to set
 745:../../..\CubeG4\include/cmsis_gcc.h ****  */
 746:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_MSPLIM_NS(uint32_t MainStackPtrLimit)
 747:../../..\CubeG4\include/cmsis_gcc.h **** {
 748:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 749:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 750:../../..\CubeG4\include/cmsis_gcc.h ****   (void)MainStackPtrLimit;
 751:../../..\CubeG4\include/cmsis_gcc.h **** #else
 752:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msplim_ns, %0" : : "r" (MainStackPtrLimit));
 753:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 754:../../..\CubeG4\include/cmsis_gcc.h **** }
 755:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 756:../../..\CubeG4\include/cmsis_gcc.h **** 
 757:../../..\CubeG4\include/cmsis_gcc.h **** #endif /* ((defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) || \
 758:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_8M_BASE__ ) && (__ARM_ARCH_8M_BASE__ == 1))    ) */
 759:../../..\CubeG4\include/cmsis_gcc.h **** 
 760:../../..\CubeG4\include/cmsis_gcc.h **** 
 761:../../..\CubeG4\include/cmsis_gcc.h **** /**
 762:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get FPSCR
 763:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Floating Point Status/Control register.
 764:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Floating Point Status/Control register value
 765:../../..\CubeG4\include/cmsis_gcc.h ****  */
 766:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_FPSCR(void)
 767:../../..\CubeG4\include/cmsis_gcc.h **** {
 768:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)) && \
 769:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__FPU_USED   ) && (__FPU_USED    == 1U))     )
 770:../../..\CubeG4\include/cmsis_gcc.h **** #if __has_builtin(__builtin_arm_get_fpscr) 
 771:../../..\CubeG4\include/cmsis_gcc.h **** // Re-enable using built-in when GCC has been fixed
 772:../../..\CubeG4\include/cmsis_gcc.h **** // || (__GNUC__ > 7) || (__GNUC__ == 7 && __GNUC_MINOR__ >= 2)
 773:../../..\CubeG4\include/cmsis_gcc.h ****   /* see https://gcc.gnu.org/ml/gcc-patches/2017-04/msg00443.html */
 774:../../..\CubeG4\include/cmsis_gcc.h ****   return __builtin_arm_get_fpscr();
 775:../../..\CubeG4\include/cmsis_gcc.h **** #else
 776:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 777:../../..\CubeG4\include/cmsis_gcc.h **** 
 778:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("VMRS %0, fpscr" : "=r" (result) );
 779:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 780:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 781:../../..\CubeG4\include/cmsis_gcc.h **** #else
 782:../../..\CubeG4\include/cmsis_gcc.h ****   return(0U);
 783:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 784:../../..\CubeG4\include/cmsis_gcc.h **** }
 785:../../..\CubeG4\include/cmsis_gcc.h **** 
 786:../../..\CubeG4\include/cmsis_gcc.h **** 
 787:../../..\CubeG4\include/cmsis_gcc.h **** /**
 788:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set FPSCR
 789:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Floating Point Status/Control register.
 790:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    fpscr  Floating Point Status/Control value to set
 791:../../..\CubeG4\include/cmsis_gcc.h ****  */
 792:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_FPSCR(uint32_t fpscr)
 793:../../..\CubeG4\include/cmsis_gcc.h **** {
 794:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)) && \
 795:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__FPU_USED   ) && (__FPU_USED    == 1U))     )
 796:../../..\CubeG4\include/cmsis_gcc.h **** #if __has_builtin(__builtin_arm_set_fpscr)
 797:../../..\CubeG4\include/cmsis_gcc.h **** // Re-enable using built-in when GCC has been fixed
 798:../../..\CubeG4\include/cmsis_gcc.h **** // || (__GNUC__ > 7) || (__GNUC__ == 7 && __GNUC_MINOR__ >= 2)
 799:../../..\CubeG4\include/cmsis_gcc.h ****   /* see https://gcc.gnu.org/ml/gcc-patches/2017-04/msg00443.html */
 800:../../..\CubeG4\include/cmsis_gcc.h ****   __builtin_arm_set_fpscr(fpscr);
 801:../../..\CubeG4\include/cmsis_gcc.h **** #else
 802:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("VMSR fpscr, %0" : : "r" (fpscr) : "vfpcc", "memory");
 803:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 804:../../..\CubeG4\include/cmsis_gcc.h **** #else
 805:../../..\CubeG4\include/cmsis_gcc.h ****   (void)fpscr;
 806:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 807:../../..\CubeG4\include/cmsis_gcc.h **** }
 808:../../..\CubeG4\include/cmsis_gcc.h **** 
 809:../../..\CubeG4\include/cmsis_gcc.h **** 
 810:../../..\CubeG4\include/cmsis_gcc.h **** /*@} end of CMSIS_Core_RegAccFunctions */
 811:../../..\CubeG4\include/cmsis_gcc.h **** 
 812:../../..\CubeG4\include/cmsis_gcc.h **** 
 813:../../..\CubeG4\include/cmsis_gcc.h **** /* ##########################  Core Instruction Access  ######################### */
 814:../../..\CubeG4\include/cmsis_gcc.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
 815:../../..\CubeG4\include/cmsis_gcc.h ****   Access to dedicated instructions
 816:../../..\CubeG4\include/cmsis_gcc.h ****   @{
 817:../../..\CubeG4\include/cmsis_gcc.h **** */
 818:../../..\CubeG4\include/cmsis_gcc.h **** 
 819:../../..\CubeG4\include/cmsis_gcc.h **** /* Define macros for porting to both thumb1 and thumb2.
 820:../../..\CubeG4\include/cmsis_gcc.h ****  * For thumb1, use low register (r0-r7), specified by constraint "l"
 821:../../..\CubeG4\include/cmsis_gcc.h ****  * Otherwise, use general registers, specified by constraint "r" */
 822:../../..\CubeG4\include/cmsis_gcc.h **** #if defined (__thumb__) && !defined (__thumb2__)
 823:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 824:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_RW_REG(r) "+l" (r)
 825:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 826:../../..\CubeG4\include/cmsis_gcc.h **** #else
 827:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 828:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_RW_REG(r) "+r" (r)
 829:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 830:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 831:../../..\CubeG4\include/cmsis_gcc.h **** 
 832:../../..\CubeG4\include/cmsis_gcc.h **** /**
 833:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   No Operation
 834:../../..\CubeG4\include/cmsis_gcc.h ****   \details No Operation does nothing. This instruction can be used for code alignment purposes.
 835:../../..\CubeG4\include/cmsis_gcc.h ****  */
 836:../../..\CubeG4\include/cmsis_gcc.h **** #define __NOP()                             __ASM volatile ("nop")
 837:../../..\CubeG4\include/cmsis_gcc.h **** 
 838:../../..\CubeG4\include/cmsis_gcc.h **** /**
 839:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Wait For Interrupt
 840:../../..\CubeG4\include/cmsis_gcc.h ****   \details Wait For Interrupt is a hint instruction that suspends execution until one of a number o
 841:../../..\CubeG4\include/cmsis_gcc.h ****  */
 842:../../..\CubeG4\include/cmsis_gcc.h **** #define __WFI()                             __ASM volatile ("wfi")
 843:../../..\CubeG4\include/cmsis_gcc.h **** 
 844:../../..\CubeG4\include/cmsis_gcc.h **** 
 845:../../..\CubeG4\include/cmsis_gcc.h **** /**
 846:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Wait For Event
 847:../../..\CubeG4\include/cmsis_gcc.h ****   \details Wait For Event is a hint instruction that permits the processor to enter
 848:../../..\CubeG4\include/cmsis_gcc.h ****            a low-power state until one of a number of events occurs.
 849:../../..\CubeG4\include/cmsis_gcc.h ****  */
 850:../../..\CubeG4\include/cmsis_gcc.h **** #define __WFE()                             __ASM volatile ("wfe")
 851:../../..\CubeG4\include/cmsis_gcc.h **** 
 852:../../..\CubeG4\include/cmsis_gcc.h **** 
 853:../../..\CubeG4\include/cmsis_gcc.h **** /**
 854:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Send Event
 855:../../..\CubeG4\include/cmsis_gcc.h ****   \details Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 856:../../..\CubeG4\include/cmsis_gcc.h ****  */
 857:../../..\CubeG4\include/cmsis_gcc.h **** #define __SEV()                             __ASM volatile ("sev")
 858:../../..\CubeG4\include/cmsis_gcc.h **** 
 859:../../..\CubeG4\include/cmsis_gcc.h **** 
 860:../../..\CubeG4\include/cmsis_gcc.h **** /**
 861:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Instruction Synchronization Barrier
 862:../../..\CubeG4\include/cmsis_gcc.h ****   \details Instruction Synchronization Barrier flushes the pipeline in the processor,
 863:../../..\CubeG4\include/cmsis_gcc.h ****            so that all instructions following the ISB are fetched from cache or memory,
 864:../../..\CubeG4\include/cmsis_gcc.h ****            after the instruction has been completed.
 865:../../..\CubeG4\include/cmsis_gcc.h ****  */
 866:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __ISB(void)
 867:../../..\CubeG4\include/cmsis_gcc.h **** {
 868:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("isb 0xF":::"memory");
 869:../../..\CubeG4\include/cmsis_gcc.h **** }
 870:../../..\CubeG4\include/cmsis_gcc.h **** 
 871:../../..\CubeG4\include/cmsis_gcc.h **** 
 872:../../..\CubeG4\include/cmsis_gcc.h **** /**
 873:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Data Synchronization Barrier
 874:../../..\CubeG4\include/cmsis_gcc.h ****   \details Acts as a special kind of Data Memory Barrier.
 875:../../..\CubeG4\include/cmsis_gcc.h ****            It completes when all explicit memory accesses before this instruction complete.
 876:../../..\CubeG4\include/cmsis_gcc.h ****  */
 877:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __DSB(void)
 878:../../..\CubeG4\include/cmsis_gcc.h **** {
 879:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("dsb 0xF":::"memory");
 880:../../..\CubeG4\include/cmsis_gcc.h **** }
 881:../../..\CubeG4\include/cmsis_gcc.h **** 
 882:../../..\CubeG4\include/cmsis_gcc.h **** 
 883:../../..\CubeG4\include/cmsis_gcc.h **** /**
 884:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Data Memory Barrier
 885:../../..\CubeG4\include/cmsis_gcc.h ****   \details Ensures the apparent order of the explicit memory operations before
 886:../../..\CubeG4\include/cmsis_gcc.h ****            and after the instruction, without ensuring their completion.
 887:../../..\CubeG4\include/cmsis_gcc.h ****  */
 888:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __DMB(void)
 889:../../..\CubeG4\include/cmsis_gcc.h **** {
 890:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("dmb 0xF":::"memory");
 891:../../..\CubeG4\include/cmsis_gcc.h **** }
 892:../../..\CubeG4\include/cmsis_gcc.h **** 
 893:../../..\CubeG4\include/cmsis_gcc.h **** 
 894:../../..\CubeG4\include/cmsis_gcc.h **** /**
 895:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse byte order (32 bit)
 896:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the byte order in unsigned integer value. For example, 0x12345678 becomes 0x785
 897:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 898:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 899:../../..\CubeG4\include/cmsis_gcc.h ****  */
 900:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __REV(uint32_t value)
 901:../../..\CubeG4\include/cmsis_gcc.h **** {
 902:../../..\CubeG4\include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 5)
 903:../../..\CubeG4\include/cmsis_gcc.h ****   return __builtin_bswap32(value);
 904:../../..\CubeG4\include/cmsis_gcc.h **** #else
 905:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 906:../../..\CubeG4\include/cmsis_gcc.h **** 
 907:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("rev %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 908:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 909:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 910:../../..\CubeG4\include/cmsis_gcc.h **** }
 911:../../..\CubeG4\include/cmsis_gcc.h **** 
 912:../../..\CubeG4\include/cmsis_gcc.h **** 
 913:../../..\CubeG4\include/cmsis_gcc.h **** /**
 914:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse byte order (16 bit)
 915:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the byte order within each halfword of a word. For example, 0x12345678 becomes 
 916:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 917:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 918:../../..\CubeG4\include/cmsis_gcc.h ****  */
 919:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __REV16(uint32_t value)
 920:../../..\CubeG4\include/cmsis_gcc.h **** {
 921:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 922:../../..\CubeG4\include/cmsis_gcc.h **** 
 923:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("rev16 %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 924:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 925:../../..\CubeG4\include/cmsis_gcc.h **** }
 926:../../..\CubeG4\include/cmsis_gcc.h **** 
 927:../../..\CubeG4\include/cmsis_gcc.h **** 
 928:../../..\CubeG4\include/cmsis_gcc.h **** /**
 929:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse byte order (16 bit)
 930:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the byte order in a 16-bit value and returns the signed 16-bit result. For exam
 931:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 932:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 933:../../..\CubeG4\include/cmsis_gcc.h ****  */
 934:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE int16_t __REVSH(int16_t value)
 935:../../..\CubeG4\include/cmsis_gcc.h **** {
 936:../../..\CubeG4\include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 8)
 937:../../..\CubeG4\include/cmsis_gcc.h ****   return (int16_t)__builtin_bswap16(value);
 938:../../..\CubeG4\include/cmsis_gcc.h **** #else
 939:../../..\CubeG4\include/cmsis_gcc.h ****   int16_t result;
 940:../../..\CubeG4\include/cmsis_gcc.h **** 
 941:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("revsh %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 942:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 943:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 944:../../..\CubeG4\include/cmsis_gcc.h **** }
 945:../../..\CubeG4\include/cmsis_gcc.h **** 
 946:../../..\CubeG4\include/cmsis_gcc.h **** 
 947:../../..\CubeG4\include/cmsis_gcc.h **** /**
 948:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Rotate Right in unsigned value (32 bit)
 949:../../..\CubeG4\include/cmsis_gcc.h ****   \details Rotate Right (immediate) provides the value of the contents of a register rotated by a v
 950:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    op1  Value to rotate
 951:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    op2  Number of Bits to rotate
 952:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Rotated value
 953:../../..\CubeG4\include/cmsis_gcc.h ****  */
 954:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __ROR(uint32_t op1, uint32_t op2)
 955:../../..\CubeG4\include/cmsis_gcc.h **** {
 956:../../..\CubeG4\include/cmsis_gcc.h ****   op2 %= 32U;
 957:../../..\CubeG4\include/cmsis_gcc.h ****   if (op2 == 0U)
 958:../../..\CubeG4\include/cmsis_gcc.h ****   {
 959:../../..\CubeG4\include/cmsis_gcc.h ****     return op1;
 960:../../..\CubeG4\include/cmsis_gcc.h ****   }
 961:../../..\CubeG4\include/cmsis_gcc.h ****   return (op1 >> op2) | (op1 << (32U - op2));
 962:../../..\CubeG4\include/cmsis_gcc.h **** }
 963:../../..\CubeG4\include/cmsis_gcc.h **** 
 964:../../..\CubeG4\include/cmsis_gcc.h **** 
 965:../../..\CubeG4\include/cmsis_gcc.h **** /**
 966:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Breakpoint
 967:../../..\CubeG4\include/cmsis_gcc.h ****   \details Causes the processor to enter Debug state.
 968:../../..\CubeG4\include/cmsis_gcc.h ****            Debug tools can use this to investigate system state when the instruction at a particula
 969:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  is ignored by the processor.
 970:../../..\CubeG4\include/cmsis_gcc.h ****                  If required, a debugger can use it to store additional information about the break
 971:../../..\CubeG4\include/cmsis_gcc.h ****  */
 972:../../..\CubeG4\include/cmsis_gcc.h **** #define __BKPT(value)                       __ASM volatile ("bkpt "#value)
 973:../../..\CubeG4\include/cmsis_gcc.h **** 
 974:../../..\CubeG4\include/cmsis_gcc.h **** 
 975:../../..\CubeG4\include/cmsis_gcc.h **** /**
 976:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse bit order of value
 977:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the bit order of the given value.
 978:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 979:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 980:../../..\CubeG4\include/cmsis_gcc.h ****  */
 981:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __RBIT(uint32_t value)
 326              		.loc 3 981 31 is_stmt 1 view .LVU80
 327              	.LBB89:
 982:../../..\CubeG4\include/cmsis_gcc.h **** {
 983:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 328              		.loc 3 983 3 view .LVU81
 984:../../..\CubeG4\include/cmsis_gcc.h **** 
 985:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 986:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 987:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    )
 988:../../..\CubeG4\include/cmsis_gcc.h ****    __ASM volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
 329              		.loc 3 988 4 view .LVU82
 330              		.syntax unified
 331              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 332 0006 92FAA2F4 		rbit r4, r2
 333              	@ 0 "" 2
 334              	.LVL29:
 989:../../..\CubeG4\include/cmsis_gcc.h **** #else
 990:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t s = (4U /*sizeof(v)*/ * 8U) - 1U; /* extra shift needed at end */
 991:../../..\CubeG4\include/cmsis_gcc.h **** 
 992:../../..\CubeG4\include/cmsis_gcc.h ****   result = value;                      /* r will be reversed bits of v; first get LSB of v */
 993:../../..\CubeG4\include/cmsis_gcc.h ****   for (value >>= 1U; value != 0U; value >>= 1U)
 994:../../..\CubeG4\include/cmsis_gcc.h ****   {
 995:../../..\CubeG4\include/cmsis_gcc.h ****     result <<= 1U;
 996:../../..\CubeG4\include/cmsis_gcc.h ****     result |= value & 1U;
 997:../../..\CubeG4\include/cmsis_gcc.h ****     s--;
 998:../../..\CubeG4\include/cmsis_gcc.h ****   }
 999:../../..\CubeG4\include/cmsis_gcc.h ****   result <<= s;                        /* shift when v's highest bits are zero */
1000:../../..\CubeG4\include/cmsis_gcc.h **** #endif
1001:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 335              		.loc 3 1001 3 view .LVU83
 336              		.loc 3 1001 3 is_stmt 0 view .LVU84
 337              		.thumb
 338              		.syntax unified
 339 000a 4D68     		ldr	r5, [r1, #4]
 340              	.LBE89:
 341              	.LBE88:
 342              		.loc 2 182 12 view .LVU85
 343 000c B4FA84F4 		clz	r4, r4
 344              	.LVL30:
 183:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 184:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   /* Configure the port pins */
 185:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   while (((GPIO_InitStruct->Pin) >> pinpos) != 0x00000000U)
 345              		.loc 2 185 3 is_stmt 1 view .LVU86
 346 0010 05F1FF3C 		add	ip, r5, #-1
 186:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 187:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     /* Get current io position */
 188:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     currentpin = (GPIO_InitStruct->Pin) & (0x00000001UL << pinpos);
 347              		.loc 2 188 57 is_stmt 0 view .LVU87
 348 0014 4FF00108 		mov	r8, #1
 349              	.LBB90:
 350              	.LBB91:
 351              		.file 4 "../../..\\CubeG4\\include/stm32g4xx_ll_gpio.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @file    stm32g4xx_ll_gpio.h
   4:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief   Header file of GPIO LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #ifndef STM32G4xx_LL_GPIO_H
  22:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define STM32G4xx_LL_GPIO_H
  23:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #if defined (GPIOA) || defined (GPIOB) || defined (GPIOC) || defined (GPIOD) || defined (GPIOE) || 
  36:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL GPIO
  38:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** MISRA C:2012 deviation rule has been granted for following rules:
  41:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * Rule-18.1_d - Medium: Array pointer `GPIOx' is accessed with index [..,..]
  42:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * which may be out of array bounds [..,UNKNOWN] in following APIs:
  43:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * LL_GPIO_GetAFPin_0_7
  44:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * LL_GPIO_SetAFPin_0_7
  45:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * LL_GPIO_SetAFPin_8_15
  46:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * LL_GPIO_GetAFPin_8_15
  47:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  48:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  49:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Private types -------------------------------------------------------------*/
  50:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Private variables ---------------------------------------------------------*/
  51:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Private constants ---------------------------------------------------------*/
  52:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Private macros ------------------------------------------------------------*/
  53:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #if defined(USE_FULL_LL_DRIVER)
  54:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_Private_Macros GPIO Private Macros
  55:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
  56:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  57:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  58:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
  59:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
  60:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  61:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #endif /*USE_FULL_LL_DRIVER*/
  62:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  63:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Exported types ------------------------------------------------------------*/
  64:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #if defined(USE_FULL_LL_DRIVER)
  65:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_ES_INIT GPIO Exported Init structures
  66:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
  67:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  68:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  69:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
  70:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief LL GPIO Init Structure definition
  71:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
  72:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** typedef struct
  73:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
  74:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   uint32_t Pin;          /*!< Specifies the GPIO pins to be configured.
  75:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               This parameter can be any value of @ref GPIO_LL_EC_PIN */
  76:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  77:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   uint32_t Mode;         /*!< Specifies the operating mode for the selected pins.
  78:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               This parameter can be a value of @ref GPIO_LL_EC_MODE.
  79:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  80:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               GPIO HW configuration can be modified afterwards using unitary functi
  81:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   uint32_t Speed;        /*!< Specifies the speed for the selected pins.
  83:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               This parameter can be a value of @ref GPIO_LL_EC_SPEED.
  84:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  85:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               GPIO HW configuration can be modified afterwards using unitary functi
  86:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  87:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   uint32_t OutputType;   /*!< Specifies the operating output type for the selected pins.
  88:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               This parameter can be a value of @ref GPIO_LL_EC_OUTPUT.
  89:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  90:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               GPIO HW configuration can be modified afterwards using unitary functi
  91:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  92:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   uint32_t Pull;         /*!< Specifies the operating Pull-up/Pull down for the selected pins.
  93:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               This parameter can be a value of @ref GPIO_LL_EC_PULL.
  94:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  95:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               GPIO HW configuration can be modified afterwards using unitary functi
  96:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
  97:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   uint32_t Alternate;    /*!< Specifies the Peripheral to be connected to the selected pins.
  98:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               This parameter can be a value of @ref GPIO_LL_EC_AF.
  99:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                               GPIO HW configuration can be modified afterwards using unitary functi
 101:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** } LL_GPIO_InitTypeDef;
 102:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 103:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 104:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 105:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 106:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #endif /* USE_FULL_LL_DRIVER */
 107:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 108:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Exported constants --------------------------------------------------------*/
 109:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_Exported_Constants GPIO Exported Constants
 110:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 111:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 112:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 113:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EC_PIN PIN
 114:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 115:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 116:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_0                      GPIO_BSRR_BS0 /*!< Select pin 0 */
 117:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_1                      GPIO_BSRR_BS1 /*!< Select pin 1 */
 118:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_2                      GPIO_BSRR_BS2 /*!< Select pin 2 */
 119:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_3                      GPIO_BSRR_BS3 /*!< Select pin 3 */
 120:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_4                      GPIO_BSRR_BS4 /*!< Select pin 4 */
 121:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_5                      GPIO_BSRR_BS5 /*!< Select pin 5 */
 122:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_6                      GPIO_BSRR_BS6 /*!< Select pin 6 */
 123:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_7                      GPIO_BSRR_BS7 /*!< Select pin 7 */
 124:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_8                      GPIO_BSRR_BS8 /*!< Select pin 8 */
 125:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_9                      GPIO_BSRR_BS9 /*!< Select pin 9 */
 126:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_10                     GPIO_BSRR_BS10 /*!< Select pin 10 */
 127:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_11                     GPIO_BSRR_BS11 /*!< Select pin 11 */
 128:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_12                     GPIO_BSRR_BS12 /*!< Select pin 12 */
 129:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_13                     GPIO_BSRR_BS13 /*!< Select pin 13 */
 130:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_14                     GPIO_BSRR_BS14 /*!< Select pin 14 */
 131:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_15                     GPIO_BSRR_BS15 /*!< Select pin 15 */
 132:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PIN_ALL                    (GPIO_BSRR_BS0 | GPIO_BSRR_BS1  | GPIO_BSRR_BS2  | \
 133:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                                            GPIO_BSRR_BS3  | GPIO_BSRR_BS4  | GPIO_BSRR_BS5  | \
 134:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                                            GPIO_BSRR_BS6  | GPIO_BSRR_BS7  | GPIO_BSRR_BS8  | \
 135:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                                            GPIO_BSRR_BS9  | GPIO_BSRR_BS10 | GPIO_BSRR_BS11 | \
 136:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                                            GPIO_BSRR_BS12 | GPIO_BSRR_BS13 | GPIO_BSRR_BS14 | \
 137:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                                            GPIO_BSRR_BS15) /*!< Select all pins */
 138:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 139:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 140:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 141:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 142:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EC_MODE Mode
 143:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 144:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 145:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_MODE_INPUT                 (0x00000000U) /*!< Select input mode */
 146:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_MODE_OUTPUT                GPIO_MODER_MODE0_0  /*!< Select output mode */
 147:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_MODE_ALTERNATE             GPIO_MODER_MODE0_1  /*!< Select alternate function mode 
 148:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_MODE_ANALOG                GPIO_MODER_MODE0    /*!< Select analog mode */
 149:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 150:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 151:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 152:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 153:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EC_OUTPUT Output Type
 154:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 155:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 156:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_OUTPUT_PUSHPULL            (0x00000000U) /*!< Select push-pull as output type */
 157:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_OUTPUT_OPENDRAIN           GPIO_OTYPER_OT0 /*!< Select open-drain as output type */
 158:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 159:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 160:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 161:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 162:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EC_SPEED Output Speed
 163:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 164:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 165:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_FREQ_LOW             (0x00000000U) /*!< Select I/O low output speed    */
 166:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_FREQ_MEDIUM          GPIO_OSPEEDR_OSPEED0_0 /*!< Select I/O medium output spe
 167:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_FREQ_HIGH            GPIO_OSPEEDR_OSPEED0_1 /*!< Select I/O fast output speed
 168:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_FREQ_VERY_HIGH       GPIO_OSPEEDR_OSPEED0   /*!< Select I/O high output speed
 169:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 170:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 171:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 172:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_LOW                  LL_GPIO_SPEED_FREQ_LOW
 173:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_MEDIUM               LL_GPIO_SPEED_FREQ_MEDIUM
 174:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_FAST                 LL_GPIO_SPEED_FREQ_HIGH
 175:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_SPEED_HIGH                 LL_GPIO_SPEED_FREQ_VERY_HIGH
 176:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 177:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EC_PULL Pull Up Pull Down
 178:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 179:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 180:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PULL_NO                    (0x00000000U) /*!< Select I/O no pull */
 181:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PULL_UP                    GPIO_PUPDR_PUPD0_0 /*!< Select I/O pull up */
 182:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_PULL_DOWN                  GPIO_PUPDR_PUPD0_1 /*!< Select I/O pull down */
 183:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 184:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 185:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 186:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 187:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EC_AF Alternate Function
 188:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 189:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 190:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_0                       (0x0000000U) /*!< Select alternate function 0 */
 191:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_1                       (0x0000001U) /*!< Select alternate function 1 */
 192:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_2                       (0x0000002U) /*!< Select alternate function 2 */
 193:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_3                       (0x0000003U) /*!< Select alternate function 3 */
 194:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_4                       (0x0000004U) /*!< Select alternate function 4 */
 195:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_5                       (0x0000005U) /*!< Select alternate function 5 */
 196:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_6                       (0x0000006U) /*!< Select alternate function 6 */
 197:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_7                       (0x0000007U) /*!< Select alternate function 7 */
 198:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_8                       (0x0000008U) /*!< Select alternate function 8 */
 199:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_9                       (0x0000009U) /*!< Select alternate function 9 */
 200:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_10                      (0x000000AU) /*!< Select alternate function 10 */
 201:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_11                      (0x000000BU) /*!< Select alternate function 11 */
 202:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_12                      (0x000000CU) /*!< Select alternate function 12 */
 203:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_13                      (0x000000DU) /*!< Select alternate function 13 */
 204:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_14                      (0x000000EU) /*!< Select alternate function 14 */
 205:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_AF_15                      (0x000000FU) /*!< Select alternate function 15 */
 206:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 207:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 208:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 209:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 210:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 211:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 212:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 213:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 214:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Exported macro ------------------------------------------------------------*/
 215:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_Exported_Macros GPIO Exported Macros
 216:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 217:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 218:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 219:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EM_WRITE_READ Common Write and read registers Macros
 220:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 221:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 222:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 223:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 224:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Write a value in GPIO register
 225:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  __INSTANCE__ GPIO Instance
 226:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  __REG__ Register to be written
 227:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  __VALUE__ Value to be written in the register
 228:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval None
 229:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 230:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALU
 231:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 232:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 233:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Read a value in GPIO register
 234:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  __INSTANCE__ GPIO Instance
 235:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  __REG__ Register to be read
 236:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval Register value
 237:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 238:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** #define LL_GPIO_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 239:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 240:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 241:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 242:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 243:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 244:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @}
 245:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 246:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 247:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /* Exported functions --------------------------------------------------------*/
 248:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_Exported_Functions GPIO Exported Functions
 249:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 250:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 251:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 252:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /** @defgroup GPIO_LL_EF_Port_Configuration Port Configuration
 253:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @{
 254:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 255:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 256:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 257:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Configure gpio mode for a dedicated pin on dedicated port.
 258:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   I/O mode can be Input mode, General purpose output, Alternate function mode or Analog.
 259:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 260:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll MODER        MODEy         LL_GPIO_SetPinMode
 261:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 262:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 263:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 264:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 265:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 266:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 267:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 268:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 269:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 270:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 271:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 272:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 273:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 274:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 275:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 276:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 277:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 278:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 279:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Mode This parameter can be one of the following values:
 280:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_INPUT
 281:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_OUTPUT
 282:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_ALTERNATE
 283:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_ANALOG
 284:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval None
 285:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 286:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE void LL_GPIO_SetPinMode(GPIO_TypeDef *GPIOx, uint32_t Pin, uint32_t Mode)
 287:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 288:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   MODIFY_REG(GPIOx->MODER, (GPIO_MODER_MODE0 << (POSITION_VAL(Pin) * 2U)), (Mode << (POSITION_VAL(P
 352              		.loc 4 288 3 view .LVU88
 353 0018 0326     		movs	r6, #3
 354              	.LBE91:
 355              	.LBE90:
 356              	.LBB98:
 357              	.LBB99:
 289:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 290:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 291:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 292:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Return gpio mode for a dedicated pin on dedicated port.
 293:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   I/O mode can be Input mode, General purpose output, Alternate function mode or Analog.
 294:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 295:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll MODER        MODEy         LL_GPIO_GetPinMode
 296:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 297:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 298:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 299:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 300:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 301:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 302:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 303:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 304:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 305:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 306:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 307:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 308:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 309:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 310:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 311:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 312:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 313:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 314:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval Returned value can be one of the following values:
 315:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_INPUT
 316:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_OUTPUT
 317:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_ALTERNATE
 318:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_MODE_ANALOG
 319:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 320:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE uint32_t LL_GPIO_GetPinMode(GPIO_TypeDef *GPIOx, uint32_t Pin)
 321:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 322:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   return (uint32_t)(READ_BIT(GPIOx->MODER,
 323:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                              (GPIO_MODER_MODE0 << (POSITION_VAL(Pin) * 2U))) >> (POSITION_VAL(Pin) 
 324:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 325:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 326:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 327:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Configure gpio output type for several pins on dedicated port.
 328:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Output type as to be set when gpio pin is in output or
 329:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         alternate modes. Possible type are Push-pull or Open-drain.
 330:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll OTYPER       OTy           LL_GPIO_SetPinOutputType
 331:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 332:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  PinMask This parameter can be a combination of the following values:
 333:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 334:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 335:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 336:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 337:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 338:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 339:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 340:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 341:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 342:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 343:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 344:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 345:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 346:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 347:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 348:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 349:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_ALL
 350:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  OutputType This parameter can be one of the following values:
 351:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_OUTPUT_PUSHPULL
 352:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_OUTPUT_OPENDRAIN
 353:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval None
 354:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 355:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE void LL_GPIO_SetPinOutputType(GPIO_TypeDef *GPIOx, uint32_t PinMask, uint32_t Outpu
 356:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 357:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   MODIFY_REG(GPIOx->OTYPER, PinMask, (PinMask * OutputType));
 358:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 359:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 360:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 361:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Return gpio output type for several pins on dedicated port.
 362:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Output type as to be set when gpio pin is in output or
 363:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         alternate modes. Possible type are Push-pull or Open-drain.
 364:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 365:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll OTYPER       OTy           LL_GPIO_GetPinOutputType
 366:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 367:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 368:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 369:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 370:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 371:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 372:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 373:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 374:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 375:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 376:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 377:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 378:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 379:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 380:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 381:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 382:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 383:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 384:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_ALL
 385:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval Returned value can be one of the following values:
 386:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_OUTPUT_PUSHPULL
 387:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_OUTPUT_OPENDRAIN
 388:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 389:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE uint32_t LL_GPIO_GetPinOutputType(GPIO_TypeDef *GPIOx, uint32_t Pin)
 390:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 391:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   return (uint32_t)(READ_BIT(GPIOx->OTYPER, Pin) >> POSITION_VAL(Pin));
 392:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 393:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 394:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 395:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Configure gpio speed for a dedicated pin on dedicated port.
 396:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   I/O speed can be Low, Medium, Fast or High speed.
 397:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 398:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Refer to datasheet for frequency specifications and the power
 399:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         supply and load conditions for each speed.
 400:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll OSPEEDR      OSPEEDy       LL_GPIO_SetPinSpeed
 401:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 402:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 403:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 404:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 405:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 406:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 407:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 408:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 409:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 410:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 411:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 412:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 413:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 414:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 415:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 416:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 417:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 418:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 419:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Speed This parameter can be one of the following values:
 420:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_LOW
 421:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_MEDIUM
 422:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_HIGH
 423:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_VERY_HIGH
 424:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval None
 425:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 426:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE void LL_GPIO_SetPinSpeed(GPIO_TypeDef *GPIOx, uint32_t Pin, uint32_t  Speed)
 427:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 428:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   MODIFY_REG(GPIOx->OSPEEDR, (GPIO_OSPEEDR_OSPEED0 << (POSITION_VAL(Pin) * 2U)),
 429:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Speed << (POSITION_VAL(Pin) * 2U)));
 430:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 431:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 432:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 433:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Return gpio speed for a dedicated pin on dedicated port.
 434:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   I/O speed can be Low, Medium, Fast or High speed.
 435:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 436:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Refer to datasheet for frequency specifications and the power
 437:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         supply and load conditions for each speed.
 438:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll OSPEEDR      OSPEEDy       LL_GPIO_GetPinSpeed
 439:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 440:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 441:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 442:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 443:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 444:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 445:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 446:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 447:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 448:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 449:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 450:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 451:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 452:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 453:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 454:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 455:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 456:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 457:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval Returned value can be one of the following values:
 458:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_LOW
 459:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_MEDIUM
 460:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_HIGH
 461:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_SPEED_FREQ_VERY_HIGH
 462:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 463:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE uint32_t LL_GPIO_GetPinSpeed(GPIO_TypeDef *GPIOx, uint32_t Pin)
 464:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 465:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   return (uint32_t)(READ_BIT(GPIOx->OSPEEDR,
 466:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                              (GPIO_OSPEEDR_OSPEED0 << (POSITION_VAL(Pin) * 2U))) >> (POSITION_VAL(P
 467:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 468:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 469:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 470:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Configure gpio pull-up or pull-down for a dedicated pin on a dedicated port.
 471:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 472:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll PUPDR        PUPDy         LL_GPIO_SetPinPull
 473:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 474:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 475:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 476:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 477:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 478:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 479:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 480:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 481:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 482:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 483:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 484:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 485:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 486:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 487:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 488:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 489:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 490:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 491:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pull This parameter can be one of the following values:
 492:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PULL_NO
 493:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PULL_UP
 494:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PULL_DOWN
 495:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval None
 496:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 497:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE void LL_GPIO_SetPinPull(GPIO_TypeDef *GPIOx, uint32_t Pin, uint32_t Pull)
 498:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 499:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   MODIFY_REG(GPIOx->PUPDR, (GPIO_PUPDR_PUPD0 << (POSITION_VAL(Pin) * 2U)), (Pull << (POSITION_VAL(P
 500:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 501:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 502:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 503:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Return gpio pull-up or pull-down for a dedicated pin on a dedicated port
 504:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 505:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll PUPDR        PUPDy         LL_GPIO_GetPinPull
 506:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 507:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 508:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 509:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 510:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 511:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 512:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 513:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 514:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 515:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 516:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 517:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 518:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 519:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 520:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 521:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 522:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 523:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 524:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval Returned value can be one of the following values:
 525:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PULL_NO
 526:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PULL_UP
 527:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PULL_DOWN
 528:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 529:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE uint32_t LL_GPIO_GetPinPull(GPIO_TypeDef *GPIOx, uint32_t Pin)
 530:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 531:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   return (uint32_t)(READ_BIT(GPIOx->PUPDR,
 532:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                              (GPIO_PUPDR_PUPD0 << (POSITION_VAL(Pin) * 2U))) >> (POSITION_VAL(Pin) 
 533:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 534:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 535:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 536:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Configure gpio alternate function of a dedicated pin from 0 to 7 for a dedicated port.
 537:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Possible values are from AF0 to AF15 depending on target.
 538:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 539:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll AFRL         AFSELy        LL_GPIO_SetAFPin_0_7
 540:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 541:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 542:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 543:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 544:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 545:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 546:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 547:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 548:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 549:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 550:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Alternate This parameter can be one of the following values:
 551:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_0
 552:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_1
 553:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_2
 554:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_3
 555:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_4
 556:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_5
 557:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_6
 558:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_7
 559:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_8
 560:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_9
 561:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_10
 562:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_11
 563:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_12
 564:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_13
 565:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_14
 566:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_15
 567:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval None
 568:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 569:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE void LL_GPIO_SetAFPin_0_7(GPIO_TypeDef *GPIOx, uint32_t Pin, uint32_t Alternate)
 570:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 571:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   MODIFY_REG(GPIOx->AFR[0], (GPIO_AFRL_AFSEL0 << (POSITION_VAL(Pin) * 4U)),
 572:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Alternate << (POSITION_VAL(Pin) * 4U)));
 573:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 574:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 575:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 576:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Return gpio alternate function of a dedicated pin from 0 to 7 for a dedicated port.
 577:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll AFRL         AFSELy        LL_GPIO_GetAFPin_0_7
 578:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 579:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 580:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_0
 581:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_1
 582:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_2
 583:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_3
 584:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_4
 585:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_5
 586:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_6
 587:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_7
 588:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval Returned value can be one of the following values:
 589:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_0
 590:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_1
 591:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_2
 592:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_3
 593:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_4
 594:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_5
 595:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_6
 596:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_7
 597:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_8
 598:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_9
 599:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_10
 600:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_11
 601:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_12
 602:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_13
 603:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_14
 604:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_15
 605:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 606:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE uint32_t LL_GPIO_GetAFPin_0_7(GPIO_TypeDef *GPIOx, uint32_t Pin)
 607:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 608:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   return (uint32_t)(READ_BIT(GPIOx->AFR[0],
 609:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****                              (GPIO_AFRL_AFSEL0 << (POSITION_VAL(Pin) * 4U))) >> (POSITION_VAL(Pin) 
 610:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 611:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** 
 612:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** /**
 613:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @brief  Configure gpio alternate function of a dedicated pin from 8 to 15 for a dedicated port.
 614:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Possible values are from AF0 to AF15 depending on target.
 615:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @note   Warning: only one pin can be passed as parameter.
 616:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @rmtoll AFRH         AFSELy        LL_GPIO_SetAFPin_8_15
 617:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  GPIOx GPIO Port
 618:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Pin This parameter can be one of the following values:
 619:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_8
 620:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_9
 621:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_10
 622:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_11
 623:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_12
 624:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_13
 625:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_14
 626:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_PIN_15
 627:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @param  Alternate This parameter can be one of the following values:
 628:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_0
 629:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_1
 630:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_2
 631:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_3
 632:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_4
 633:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_5
 634:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_6
 635:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_7
 636:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_8
 637:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_9
 638:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_10
 639:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_11
 640:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_12
 641:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_13
 642:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_14
 643:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   *         @arg @ref LL_GPIO_AF_15
 644:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   * @retval None
 645:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   */
 646:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** __STATIC_INLINE void LL_GPIO_SetAFPin_8_15(GPIO_TypeDef *GPIOx, uint32_t Pin, uint32_t Alternate)
 647:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 648:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****   MODIFY_REG(GPIOx->AFR[1], (GPIO_AFRH_AFSEL8 << (POSITION_VAL(Pin >> 8U) * 4U)),
 358              		.loc 4 648 3 view .LVU89
 359 001a 4FF00F0E 		mov	lr, #15
 360              	.L17:
 361              		.loc 4 648 3 view .LVU90
 362              	.LBE99:
 363              	.LBE98:
 185:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 364              		.loc 2 185 9 view .LVU91
 365 001e 32FA04F3 		lsrs	r3, r2, r4
 366 0022 0CD1     		bne	.L23
 189:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 190:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     if (currentpin != 0x00u)
 191:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     {
 192:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       /* Pin Mode configuration */
 193:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       LL_GPIO_SetPinMode(GPIOx, currentpin, GPIO_InitStruct->Mode);
 194:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 195:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       if ((GPIO_InitStruct->Mode == LL_GPIO_MODE_OUTPUT) || (GPIO_InitStruct->Mode == LL_GPIO_MODE_
 196:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 197:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         /* Check Speed mode parameters */
 198:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         assert_param(IS_LL_GPIO_SPEED(GPIO_InitStruct->Speed));
 199:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 200:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         /* Speed mode configuration */
 201:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         LL_GPIO_SetPinSpeed(GPIOx, currentpin, GPIO_InitStruct->Speed);
 202:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       }
 203:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 204:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       /* Pull-up Pull down resistor configuration*/
 205:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       LL_GPIO_SetPinPull(GPIOx, currentpin, GPIO_InitStruct->Pull);
 206:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 207:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       if (GPIO_InitStruct->Mode == LL_GPIO_MODE_ALTERNATE)
 208:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 209:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         /* Check Alternate parameter */
 210:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         assert_param(IS_LL_GPIO_ALTERNATE(GPIO_InitStruct->Alternate));
 211:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 212:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         /* Speed mode configuration */
 213:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         if (currentpin < LL_GPIO_PIN_8)
 214:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         {
 215:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****           LL_GPIO_SetAFPin_0_7(GPIOx, currentpin, GPIO_InitStruct->Alternate);
 216:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         }
 217:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         else
 218:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         {
 219:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****           LL_GPIO_SetAFPin_8_15(GPIOx, currentpin, GPIO_InitStruct->Alternate);
 220:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         }
 221:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       }
 222:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     }
 223:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     pinpos++;
 224:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 225:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 226:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   if ((GPIO_InitStruct->Mode == LL_GPIO_MODE_OUTPUT) || (GPIO_InitStruct->Mode == LL_GPIO_MODE_ALTE
 367              		.loc 2 226 3 is_stmt 1 view .LVU92
 368              		.loc 2 226 6 is_stmt 0 view .LVU93
 369 0024 BCF1010F 		cmp	ip, #1
 370 0028 06D8     		bhi	.L24
 227:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   {
 228:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     /* Check Output mode parameters */
 229:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     assert_param(IS_LL_GPIO_OUTPUT_TYPE(GPIO_InitStruct->OutputType));
 371              		.loc 2 229 5 is_stmt 1 view .LVU94
 230:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 231:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     /* Output mode configuration*/
 232:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     LL_GPIO_SetPinOutputType(GPIOx, GPIO_InitStruct->Pin, GPIO_InitStruct->OutputType);
 372              		.loc 2 232 5 view .LVU95
 373              	.LVL31:
 374              	.LBB105:
 375              	.LBI105:
 355:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 376              		.loc 4 355 22 view .LVU96
 377              	.LBB106:
 357:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 378              		.loc 4 357 3 view .LVU97
 379 002a 4368     		ldr	r3, [r0, #4]
 380 002c C968     		ldr	r1, [r1, #12]
 381              	.LVL32:
 357:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 382              		.loc 4 357 3 is_stmt 0 view .LVU98
 383 002e 23EA0203 		bic	r3, r3, r2
 384 0032 4A43     		muls	r2, r1, r2
 385              	.LVL33:
 357:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 386              		.loc 4 357 3 view .LVU99
 387 0034 1343     		orrs	r3, r3, r2
 388 0036 4360     		str	r3, [r0, #4]
 389              	.LVL34:
 390              	.L24:
 357:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 391              		.loc 4 357 3 view .LVU100
 392              	.LBE106:
 393              	.LBE105:
 233:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 234:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 235:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   return (SUCCESS);
 394              		.loc 2 235 3 is_stmt 1 view .LVU101
 236:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** }
 395              		.loc 2 236 1 is_stmt 0 view .LVU102
 396 0038 0020     		movs	r0, #0
 397              	.LVL35:
 398              		.loc 2 236 1 view .LVU103
 399 003a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 400              	.LVL36:
 401              	.L23:
 188:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 402              		.loc 2 188 5 is_stmt 1 view .LVU104
 188:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 403              		.loc 2 188 57 is_stmt 0 view .LVU105
 404 003e 08FA04F3 		lsl	r3, r8, r4
 405              	.LVL37:
 190:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     {
 406              		.loc 2 190 5 is_stmt 1 view .LVU106
 190:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     {
 407              		.loc 2 190 8 is_stmt 0 view .LVU107
 408 0042 1340     		ands	r3, r3, r2
 409              	.LVL38:
 190:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****     {
 410              		.loc 2 190 8 view .LVU108
 411 0044 62D0     		beq	.L19
 193:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 412              		.loc 2 193 7 is_stmt 1 view .LVU109
 413              	.LVL39:
 414              	.LBB107:
 415              	.LBI90:
 286:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 416              		.loc 4 286 22 view .LVU110
 417              	.LBB96:
 288:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 418              		.loc 4 288 3 view .LVU111
 419 0046 D0F800A0 		ldr	r10, [r0]
 420              	.LVL40:
 421              	.LBB92:
 422              	.LBI92:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 423              		.loc 3 981 31 view .LVU112
 424              	.LBB93:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 425              		.loc 3 983 3 view .LVU113
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 426              		.loc 3 988 4 view .LVU114
 427              		.syntax unified
 428              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 429 004a 93FAA3F9 		rbit r9, r3
 430              	@ 0 "" 2
 431              	.LVL41:
 432              		.loc 3 1001 3 view .LVU115
 433              		.loc 3 1001 3 is_stmt 0 view .LVU116
 434              		.thumb
 435              		.syntax unified
 436              	.LBE93:
 437              	.LBE92:
 288:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 438              		.loc 4 288 3 view .LVU117
 439 004e B9FA89F9 		clz	r9, r9
 440              	.LVL42:
 441              	.LBB94:
 442              	.LBI94:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 443              		.loc 3 981 31 is_stmt 1 view .LVU118
 444              	.LBB95:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 445              		.loc 3 983 3 view .LVU119
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 446              		.loc 3 988 4 view .LVU120
 447              		.syntax unified
 448              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 449 0052 93FAA3F7 		rbit r7, r3
 450              	@ 0 "" 2
 451              	.LVL43:
 452              		.loc 3 1001 3 view .LVU121
 453              		.loc 3 1001 3 is_stmt 0 view .LVU122
 454              		.thumb
 455              		.syntax unified
 456              	.LBE95:
 457              	.LBE94:
 288:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 458              		.loc 4 288 3 view .LVU123
 459 0056 B7FA87F7 		clz	r7, r7
 460 005a 4FEA4909 		lsl	r9, r9, #1
 461 005e 06FA09F9 		lsl	r9, r6, r9
 462 0062 7F00     		lsls	r7, r7, #1
 463 0064 2AEA0909 		bic	r9, r10, r9
 464 0068 05FA07F7 		lsl	r7, r5, r7
 465 006c 49EA0707 		orr	r7, r9, r7
 466              	.LBE96:
 467              	.LBE107:
 195:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 468              		.loc 2 195 10 view .LVU124
 469 0070 BCF1010F 		cmp	ip, #1
 470              	.LBB108:
 471              	.LBB97:
 288:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 472              		.loc 4 288 3 view .LVU125
 473 0074 0760     		str	r7, [r0]
 474              	.LVL44:
 288:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 475              		.loc 4 288 3 view .LVU126
 476              	.LBE97:
 477              	.LBE108:
 195:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 478              		.loc 2 195 7 is_stmt 1 view .LVU127
 195:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 479              		.loc 2 195 10 is_stmt 0 view .LVU128
 480 0076 16D8     		bhi	.L20
 198:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 481              		.loc 2 198 9 is_stmt 1 view .LVU129
 201:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       }
 482              		.loc 2 201 9 view .LVU130
 483              	.LVL45:
 484              	.LBB109:
 485              	.LBI109:
 426:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 486              		.loc 4 426 22 view .LVU131
 487              	.LBB110:
 428:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Speed << (POSITION_VAL(Pin) * 2U)));
 488              		.loc 4 428 3 view .LVU132
 489 0078 8768     		ldr	r7, [r0, #8]
 490              	.LVL46:
 491              	.LBB111:
 492              	.LBI111:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 493              		.loc 3 981 31 view .LVU133
 494              	.LBB112:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 495              		.loc 3 983 3 view .LVU134
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 496              		.loc 3 988 4 view .LVU135
 497              		.syntax unified
 498              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 499 007a 93FAA3F9 		rbit r9, r3
 500              	@ 0 "" 2
 501              	.LVL47:
 502              		.loc 3 1001 3 view .LVU136
 503              		.loc 3 1001 3 is_stmt 0 view .LVU137
 504              		.thumb
 505              		.syntax unified
 506              	.LBE112:
 507              	.LBE111:
 428:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Speed << (POSITION_VAL(Pin) * 2U)));
 508              		.loc 4 428 3 view .LVU138
 509 007e B9FA89F9 		clz	r9, r9
 510              	.LVL48:
 511              	.LBB113:
 512              	.LBI113:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 513              		.loc 3 981 31 is_stmt 1 view .LVU139
 514              	.LBB114:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 515              		.loc 3 983 3 view .LVU140
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 516              		.loc 3 988 4 view .LVU141
 517              		.syntax unified
 518              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 519 0082 93FAA3FA 		rbit r10, r3
 520              	@ 0 "" 2
 521              	.LVL49:
 522              		.loc 3 1001 3 view .LVU142
 523              		.loc 3 1001 3 is_stmt 0 view .LVU143
 524              		.thumb
 525              		.syntax unified
 526              	.LBE114:
 527              	.LBE113:
 428:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Speed << (POSITION_VAL(Pin) * 2U)));
 528              		.loc 4 428 3 view .LVU144
 529 0086 4FEA4909 		lsl	r9, r9, #1
 530 008a 06FA09F9 		lsl	r9, r6, r9
 531 008e 27EA0909 		bic	r9, r7, r9
 532 0092 BAFA8AFA 		clz	r10, r10
 533 0096 8F68     		ldr	r7, [r1, #8]
 534 0098 4FEA4A0A 		lsl	r10, r10, #1
 535 009c 07FA0AF7 		lsl	r7, r7, r10
 536 00a0 49EA0707 		orr	r7, r9, r7
 537 00a4 8760     		str	r7, [r0, #8]
 538              	.LVL50:
 539              	.L20:
 428:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Speed << (POSITION_VAL(Pin) * 2U)));
 540              		.loc 4 428 3 view .LVU145
 541              	.LBE110:
 542              	.LBE109:
 205:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 543              		.loc 2 205 7 is_stmt 1 view .LVU146
 544              	.LBB115:
 545              	.LBI115:
 497:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 546              		.loc 4 497 22 view .LVU147
 547              	.LBB116:
 499:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 548              		.loc 4 499 3 view .LVU148
 549 00a6 C768     		ldr	r7, [r0, #12]
 550              	.LVL51:
 551              	.LBB117:
 552              	.LBI117:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 553              		.loc 3 981 31 view .LVU149
 554              	.LBB118:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 555              		.loc 3 983 3 view .LVU150
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 556              		.loc 3 988 4 view .LVU151
 557              		.syntax unified
 558              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 559 00a8 93FAA3F9 		rbit r9, r3
 560              	@ 0 "" 2
 561              	.LVL52:
 562              		.loc 3 1001 3 view .LVU152
 563              		.loc 3 1001 3 is_stmt 0 view .LVU153
 564              		.thumb
 565              		.syntax unified
 566              	.LBE118:
 567              	.LBE117:
 499:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 568              		.loc 4 499 3 view .LVU154
 569 00ac B9FA89F9 		clz	r9, r9
 570              	.LVL53:
 571              	.LBB119:
 572              	.LBI119:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 573              		.loc 3 981 31 is_stmt 1 view .LVU155
 574              	.LBB120:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 575              		.loc 3 983 3 view .LVU156
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 576              		.loc 3 988 4 view .LVU157
 577              		.syntax unified
 578              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 579 00b0 93FAA3FA 		rbit r10, r3
 580              	@ 0 "" 2
 581              	.LVL54:
 582              		.loc 3 1001 3 view .LVU158
 583              		.loc 3 1001 3 is_stmt 0 view .LVU159
 584              		.thumb
 585              		.syntax unified
 586              	.LBE120:
 587              	.LBE119:
 499:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 588              		.loc 4 499 3 view .LVU160
 589 00b4 4FEA4909 		lsl	r9, r9, #1
 590 00b8 06FA09F9 		lsl	r9, r6, r9
 591 00bc 27EA0909 		bic	r9, r7, r9
 592 00c0 BAFA8AFA 		clz	r10, r10
 593 00c4 0F69     		ldr	r7, [r1, #16]
 594 00c6 4FEA4A0A 		lsl	r10, r10, #1
 595 00ca 07FA0AF7 		lsl	r7, r7, r10
 596 00ce 49EA0707 		orr	r7, r9, r7
 597              	.LBE116:
 598              	.LBE115:
 207:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 599              		.loc 2 207 10 view .LVU161
 600 00d2 022D     		cmp	r5, #2
 601              	.LBB122:
 602              	.LBB121:
 499:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 603              		.loc 4 499 3 view .LVU162
 604 00d4 C760     		str	r7, [r0, #12]
 605              	.LVL55:
 499:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** }
 606              		.loc 4 499 3 view .LVU163
 607              	.LBE121:
 608              	.LBE122:
 207:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 609              		.loc 2 207 7 is_stmt 1 view .LVU164
 207:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****       {
 610              		.loc 2 207 10 is_stmt 0 view .LVU165
 611 00d6 19D1     		bne	.L19
 210:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 612              		.loc 2 210 9 is_stmt 1 view .LVU166
 213:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         {
 613              		.loc 2 213 9 view .LVU167
 213:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         {
 614              		.loc 2 213 12 is_stmt 0 view .LVU168
 615 00d8 FF2B     		cmp	r3, #255
 616 00da D1F81490 		ldr	r9, [r1, #20]
 617 00de 17D8     		bhi	.L22
 215:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         }
 618              		.loc 2 215 11 is_stmt 1 view .LVU169
 619              	.LVL56:
 620              	.LBB123:
 621              	.LBI123:
 569:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 622              		.loc 4 569 22 view .LVU170
 623              	.LBB124:
 571:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Alternate << (POSITION_VAL(Pin) * 4U)));
 624              		.loc 4 571 3 view .LVU171
 625 00e0 D0F820A0 		ldr	r10, [r0, #32]
 626              	.LVL57:
 627              	.LBB125:
 628              	.LBI125:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 629              		.loc 3 981 31 view .LVU172
 630              	.LBB126:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 631              		.loc 3 983 3 view .LVU173
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 632              		.loc 3 988 4 view .LVU174
 633              		.syntax unified
 634              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 635 00e4 93FAA3FB 		rbit fp, r3
 636              	@ 0 "" 2
 637              	.LVL58:
 638              		.loc 3 1001 3 view .LVU175
 639              		.loc 3 1001 3 is_stmt 0 view .LVU176
 640              		.thumb
 641              		.syntax unified
 642              	.LBE126:
 643              	.LBE125:
 571:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Alternate << (POSITION_VAL(Pin) * 4U)));
 644              		.loc 4 571 3 view .LVU177
 645 00e8 BBFA8BFB 		clz	fp, fp
 646              	.LVL59:
 647              	.LBB127:
 648              	.LBI127:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 649              		.loc 3 981 31 is_stmt 1 view .LVU178
 650              	.LBB128:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 651              		.loc 3 983 3 view .LVU179
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 652              		.loc 3 988 4 view .LVU180
 653              		.syntax unified
 654              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 655 00ec 93FAA3F7 		rbit r7, r3
 656              	@ 0 "" 2
 657              	.LVL60:
 658              		.loc 3 1001 3 view .LVU181
 659              		.loc 3 1001 3 is_stmt 0 view .LVU182
 660              		.thumb
 661              		.syntax unified
 662              	.LBE128:
 663              	.LBE127:
 571:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Alternate << (POSITION_VAL(Pin) * 4U)));
 664              		.loc 4 571 3 view .LVU183
 665 00f0 B7FA87F7 		clz	r7, r7
 666 00f4 4FEA8B03 		lsl	r3, fp, #2
 667              	.LVL61:
 571:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Alternate << (POSITION_VAL(Pin) * 4U)));
 668              		.loc 4 571 3 view .LVU184
 669 00f8 0EFA03F3 		lsl	r3, lr, r3
 670 00fc BF00     		lsls	r7, r7, #2
 671 00fe 2AEA0303 		bic	r3, r10, r3
 672 0102 09FA07F9 		lsl	r9, r9, r7
 673 0106 43EA0903 		orr	r3, r3, r9
 674 010a 0362     		str	r3, [r0, #32]
 675              	.LVL62:
 676              	.L19:
 571:../../..\CubeG4\include/stm32g4xx_ll_gpio.h ****              (Alternate << (POSITION_VAL(Pin) * 4U)));
 677              		.loc 4 571 3 view .LVU185
 678              	.LBE124:
 679              	.LBE123:
 223:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 680              		.loc 2 223 5 is_stmt 1 view .LVU186
 223:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 681              		.loc 2 223 11 is_stmt 0 view .LVU187
 682 010c 0134     		adds	r4, r4, #1
 683              	.LVL63:
 223:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   }
 684              		.loc 2 223 11 view .LVU188
 685 010e 86E7     		b	.L17
 686              	.LVL64:
 687              	.L22:
 219:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****         }
 688              		.loc 2 219 11 is_stmt 1 view .LVU189
 689              	.LBB129:
 690              	.LBI98:
 646:../../..\CubeG4\include/stm32g4xx_ll_gpio.h **** {
 691              		.loc 4 646 22 view .LVU190
 692              	.LBB104:
 693              		.loc 4 648 3 view .LVU191
 694 0110 476A     		ldr	r7, [r0, #36]
 695 0112 1B0A     		lsrs	r3, r3, #8
 696              	.LVL65:
 697              	.LBB100:
 698              	.LBI100:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 699              		.loc 3 981 31 view .LVU192
 700              	.LBB101:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 701              		.loc 3 983 3 view .LVU193
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 702              		.loc 3 988 4 view .LVU194
 703              		.syntax unified
 704              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 705 0114 93FAA3FA 		rbit r10, r3
 706              	@ 0 "" 2
 707              	.LVL66:
 708              		.loc 3 1001 3 view .LVU195
 709              		.loc 3 1001 3 is_stmt 0 view .LVU196
 710              		.thumb
 711              		.syntax unified
 712              	.LBE101:
 713              	.LBE100:
 714              		.loc 4 648 3 view .LVU197
 715 0118 BAFA8AFA 		clz	r10, r10
 716              	.LVL67:
 717              	.LBB102:
 718              	.LBI102:
 981:../../..\CubeG4\include/cmsis_gcc.h **** {
 719              		.loc 3 981 31 is_stmt 1 view .LVU198
 720              	.LBB103:
 983:../../..\CubeG4\include/cmsis_gcc.h **** 
 721              		.loc 3 983 3 view .LVU199
 988:../../..\CubeG4\include/cmsis_gcc.h **** #else
 722              		.loc 3 988 4 view .LVU200
 723              		.syntax unified
 724              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 725 011c 93FAA3F3 		rbit r3, r3
 726              	@ 0 "" 2
 727              	.LVL68:
 728              		.loc 3 1001 3 view .LVU201
 729              		.loc 3 1001 3 is_stmt 0 view .LVU202
 730              		.thumb
 731              		.syntax unified
 732              	.LBE103:
 733              	.LBE102:
 734              		.loc 4 648 3 view .LVU203
 735 0120 B3FA83F3 		clz	r3, r3
 736 0124 4FEA8A0A 		lsl	r10, r10, #2
 737 0128 0EFA0AFA 		lsl	r10, lr, r10
 738 012c 9B00     		lsls	r3, r3, #2
 739 012e 27EA0A07 		bic	r7, r7, r10
 740 0132 09FA03F9 		lsl	r9, r9, r3
 741 0136 47EA0907 		orr	r7, r7, r9
 742 013a 4762     		str	r7, [r0, #36]
 743 013c E6E7     		b	.L19
 744              	.LBE104:
 745              	.LBE129:
 746              		.cfi_endproc
 747              	.LFE196:
 749              		.section	.text.LL_GPIO_StructInit,"ax",%progbits
 750              		.align	1
 751              		.global	LL_GPIO_StructInit
 752              		.syntax unified
 753              		.thumb
 754              		.thumb_func
 755              		.fpu fpv4-sp-d16
 757              	LL_GPIO_StructInit:
 758              	.LVL69:
 759              	.LFB197:
 237:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 238:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** /**
 239:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @brief Set each @ref LL_GPIO_InitTypeDef field to default value.
 240:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @param GPIO_InitStruct pointer to a @ref LL_GPIO_InitTypeDef structure
 241:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   *                          whose fields will be set to default values.
 242:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   * @retval None
 243:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   */
 244:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** 
 245:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** void LL_GPIO_StructInit(LL_GPIO_InitTypeDef *GPIO_InitStruct)
 246:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** {
 760              		.loc 2 246 1 is_stmt 1 view -0
 761              		.cfi_startproc
 762              		@ args = 0, pretend = 0, frame = 0
 763              		@ frame_needed = 0, uses_anonymous_args = 0
 764              		@ link register save eliminated.
 247:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   /* Reset GPIO init structure parameters values */
 248:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   GPIO_InitStruct->Pin        = LL_GPIO_PIN_ALL;
 765              		.loc 2 248 3 view .LVU205
 249:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   GPIO_InitStruct->Mode       = LL_GPIO_MODE_ANALOG;
 766              		.loc 2 249 31 is_stmt 0 view .LVU206
 767 0000 0323     		movs	r3, #3
 768 0002 4FF6FF72 		movw	r2, #65535
 769 0006 C0E90023 		strd	r2, r3, [r0]
 250:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   GPIO_InitStruct->Speed      = LL_GPIO_SPEED_FREQ_LOW;
 770              		.loc 2 250 3 is_stmt 1 view .LVU207
 771              		.loc 2 250 31 is_stmt 0 view .LVU208
 772 000a 0023     		movs	r3, #0
 251:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   GPIO_InitStruct->OutputType = LL_GPIO_OUTPUT_PUSHPULL;
 773              		.loc 2 251 31 view .LVU209
 774 000c C0E90233 		strd	r3, r3, [r0, #8]
 252:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   GPIO_InitStruct->Pull       = LL_GPIO_PULL_NO;
 775              		.loc 2 252 3 is_stmt 1 view .LVU210
 253:../../..\CubeG4\src/stm32g4xx_ll_gpio.c ****   GPIO_InitStruct->Alternate  = LL_GPIO_AF_0;
 776              		.loc 2 253 31 is_stmt 0 view .LVU211
 777 0010 C0E90433 		strd	r3, r3, [r0, #16]
 254:../../..\CubeG4\src/stm32g4xx_ll_gpio.c **** }
 778              		.loc 2 254 1 view .LVU212
 779 0014 7047     		bx	lr
 780              		.cfi_endproc
 781              	.LFE197:
 783              		.text
 784              	.Letext0:
 785              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 786              		.file 6 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 787              		.file 7 "../../..\\CubeG4\\include/core_cm4.h"
 788              		.file 8 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 789              		.file 9 "../../..\\CubeG4\\include/stm32g431xx.h"
 790              		.file 10 "../../..\\CubeG4\\include/stm32g4xx.h"
