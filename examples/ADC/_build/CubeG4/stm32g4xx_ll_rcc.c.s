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
  13              		.file	"stm32g4xx_ll_rcc.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_RCC_HSI_IsReady,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	LL_RCC_HSI_IsReady:
  26              	.LFB140:
  27              		.file 1 "../../..\\CubeG4\\include/stm32g4xx_ll_rcc.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @file    stm32g4xx_ll_rcc.h
   4:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief   Header file of RCC LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #ifndef STM32G4xx_LL_RCC_H
  22:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define STM32G4xx_LL_RCC_H
  23:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL RCC
  36:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  37:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  38:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  39:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private types -------------------------------------------------------------*/
  40:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private variables ---------------------------------------------------------*/
  41:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Private_Variables RCC Private Variables
  42:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  43:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  44:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  46:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  47:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  48:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  49:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private constants ---------------------------------------------------------*/
  50:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Private_Constants RCC Private Constants
  51:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  52:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  53:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Defines used to perform offsets*/
  54:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Offset used to access to RCC_CCIPR and RCC_CCIPR2 registers */
  55:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define RCC_OFFSET_CCIPR        0U
  56:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define RCC_OFFSET_CCIPR2       0x14U
  57:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  58:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  59:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  60:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  61:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private macros ------------------------------------------------------------*/
  63:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(USE_FULL_LL_DRIVER)
  64:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Private_Macros RCC Private Macros
  65:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  66:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  67:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  68:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  69:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  70:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /*USE_FULL_LL_DRIVER*/
  71:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  72:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported types ------------------------------------------------------------*/
  73:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(USE_FULL_LL_DRIVER)
  74:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Types RCC Exported Types
  75:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  76:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  77:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  78:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup LL_ES_CLOCK_FREQ Clocks Frequency Structure
  79:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  80:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  81:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  83:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  RCC Clocks Frequency Structure
  84:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  85:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** typedef struct
  86:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
  87:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t SYSCLK_Frequency;        /*!< SYSCLK clock frequency */
  88:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t HCLK_Frequency;          /*!< HCLK clock frequency */
  89:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t PCLK1_Frequency;         /*!< PCLK1 clock frequency */
  90:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t PCLK2_Frequency;         /*!< PCLK2 clock frequency */
  91:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** } LL_RCC_ClocksTypeDef;
  92:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  93:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  94:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  95:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  96:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  97:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  98:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  99:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 100:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* USE_FULL_LL_DRIVER */
 101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 102:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported constants --------------------------------------------------------*/
 103:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Constants RCC Exported Constants
 104:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 105:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 106:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 107:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_OSC_VALUES Oscillator Values adaptation
 108:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    Defines used to adapt values of different oscillators
 109:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note     These values could be modified in the user environment according to
 110:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *           HW set-up.
 111:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 112:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 113:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (HSE_VALUE)
 114:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define HSE_VALUE    8000000U   /*!< Value of the HSE oscillator in Hz */
 115:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* HSE_VALUE */
 116:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 117:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (HSI_VALUE)
 118:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define HSI_VALUE    16000000U  /*!< Value of the HSI oscillator in Hz */
 119:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* HSI_VALUE */
 120:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (LSE_VALUE)
 122:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LSE_VALUE    32768U     /*!< Value of the LSE oscillator in Hz */
 123:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* LSE_VALUE */
 124:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 125:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (LSI_VALUE)
 126:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LSI_VALUE    32000U     /*!< Value of the LSI oscillator in Hz */
 127:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* LSI_VALUE */
 128:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 129:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (HSI48_VALUE)
 130:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define HSI48_VALUE  48000000U  /*!< Value of the HSI48 oscillator in Hz */
 131:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* HSI48_VALUE */
 132:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 133:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (EXTERNAL_CLOCK_VALUE)
 134:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define EXTERNAL_CLOCK_VALUE    48000U     /*!< Value of the I2S_CKIN, I2S and SAI1 external clock 
 135:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* EXTERNAL_CLOCK_VALUE */
 136:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 137:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 138:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 139:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 140:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 141:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_CLEAR_FLAG Clear Flags Defines
 142:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    Flags defines which can be used with LL_RCC_WriteReg function
 143:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 144:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 145:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_LSIRDYC                RCC_CICR_LSIRDYC     /*!< LSI Ready Interrupt Clear */
 146:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_LSERDYC                RCC_CICR_LSERDYC     /*!< LSE Ready Interrupt Clear */
 147:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_HSIRDYC                RCC_CICR_HSIRDYC     /*!< HSI Ready Interrupt Clear */
 148:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_HSERDYC                RCC_CICR_HSERDYC     /*!< HSE Ready Interrupt Clear */
 149:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_PLLRDYC                RCC_CICR_PLLRDYC     /*!< PLL Ready Interrupt Clear */
 150:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_HSI48RDYC              RCC_CICR_HSI48RDYC   /*!< HSI48 Ready Interrupt Clear */
 151:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_LSECSSC                RCC_CICR_LSECSSC     /*!< LSE Clock Security System Inte
 152:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_CSSC                   RCC_CICR_CSSC        /*!< Clock Security System Interrup
 153:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 154:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 155:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 156:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 157:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_GET_FLAG Get Flags Defines
 158:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    Flags defines which can be used with LL_RCC_ReadReg function
 159:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 160:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 161:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_LSIRDYF                RCC_CIFR_LSIRDYF     /*!< LSI Ready Interrupt flag */
 162:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_LSERDYF                RCC_CIFR_LSERDYF     /*!< LSE Ready Interrupt flag */
 163:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_HSIRDYF                RCC_CIFR_HSIRDYF     /*!< HSI Ready Interrupt flag */
 164:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_HSERDYF                RCC_CIFR_HSERDYF     /*!< HSE Ready Interrupt flag */
 165:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_PLLRDYF                RCC_CIFR_PLLRDYF     /*!< PLL Ready Interrupt flag */
 166:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_HSI48RDYF              RCC_CIFR_HSI48RDYF   /*!< HSI48 Ready Interrupt flag */
 167:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_LSECSSF                RCC_CIFR_LSECSSF     /*!< LSE Clock Security System Inte
 168:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_CSSF                   RCC_CIFR_CSSF        /*!< Clock Security System Interrup
 169:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_LPWRRSTF                RCC_CSR_LPWRRSTF   /*!< Low-Power reset flag */
 170:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_OBLRSTF                 RCC_CSR_OBLRSTF    /*!< OBL reset flag */
 171:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_PINRSTF                 RCC_CSR_PINRSTF    /*!< PIN reset flag */
 172:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_SFTRSTF                 RCC_CSR_SFTRSTF    /*!< Software Reset flag */
 173:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_IWDGRSTF                RCC_CSR_IWDGRSTF   /*!< Independent Watchdog reset flag 
 174:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_WWDGRSTF                RCC_CSR_WWDGRSTF   /*!< Window watchdog reset flag */
 175:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_BORRSTF                 RCC_CSR_BORRSTF    /*!< BOR reset flag */
 176:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 177:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 178:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 179:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 180:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_IT IT Defines
 181:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    IT defines which can be used with LL_RCC_ReadReg and  LL_RCC_WriteReg functions
 182:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 183:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 184:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_LSIRDYIE               RCC_CIER_LSIRDYIE      /*!< LSI Ready Interrupt Enable *
 185:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_LSERDYIE               RCC_CIER_LSERDYIE      /*!< LSE Ready Interrupt Enable *
 186:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_HSIRDYIE               RCC_CIER_HSIRDYIE      /*!< HSI Ready Interrupt Enable *
 187:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_HSERDYIE               RCC_CIER_HSERDYIE      /*!< HSE Ready Interrupt Enable *
 188:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_PLLRDYIE               RCC_CIER_PLLRDYIE      /*!< PLL Ready Interrupt Enable *
 189:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_HSI48RDYIE             RCC_CIER_HSI48RDYIE    /*!< HSI48 Ready Interrupt Enable
 190:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_LSECSSIE               RCC_CIER_LSECSSIE      /*!< LSE CSS Interrupt Enable */
 191:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 192:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 193:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 194:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 195:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LSEDRIVE  LSE oscillator drive capability
 196:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 197:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 198:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_LOW                0x00000000U             /*!< Xtal mode lower driving cap
 199:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_MEDIUMLOW          RCC_BDCR_LSEDRV_0       /*!< Xtal mode medium low drivin
 200:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_MEDIUMHIGH         RCC_BDCR_LSEDRV_1       /*!< Xtal mode medium high drivi
 201:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_HIGH               RCC_BDCR_LSEDRV         /*!< Xtal mode higher driving ca
 202:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 203:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 204:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 205:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 206:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LSCO_CLKSOURCE  LSCO Selection
 207:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 208:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 209:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSCO_CLKSOURCE_LSI          0x00000000U                 /*!< LSI selection for low s
 210:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSCO_CLKSOURCE_LSE          RCC_BDCR_LSCOSEL            /*!< LSE selection for low s
 211:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 212:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 213:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 214:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 215:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SYS_CLKSOURCE  System clock switch
 216:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 217:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 218:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_HSI           RCC_CFGR_SW_HSI    /*!< HSI selection as system clock */
 219:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_HSE           RCC_CFGR_SW_HSE    /*!< HSE selection as system clock */
 220:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_PLL           RCC_CFGR_SW_PLL    /*!< PLL selection as system clock */
 221:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 222:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 223:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 224:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 225:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SYS_CLKSOURCE_STATUS  System clock switch status
 226:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 227:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 228:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_STATUS_HSI    RCC_CFGR_SWS_HSI   /*!< HSI used as system clock */
 229:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_STATUS_HSE    RCC_CFGR_SWS_HSE   /*!< HSE used as system clock */
 230:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_STATUS_PLL    RCC_CFGR_SWS_PLL   /*!< PLL used as system clock */
 231:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 232:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 233:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 234:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 235:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SYSCLK_DIV  AHB prescaler
 236:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 237:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 238:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_1                RCC_CFGR_HPRE_DIV1   /*!< SYSCLK not divided */
 239:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_2                RCC_CFGR_HPRE_DIV2   /*!< SYSCLK divided by 2 */
 240:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_4                RCC_CFGR_HPRE_DIV4   /*!< SYSCLK divided by 4 */
 241:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_8                RCC_CFGR_HPRE_DIV8   /*!< SYSCLK divided by 8 */
 242:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_16               RCC_CFGR_HPRE_DIV16  /*!< SYSCLK divided by 16 */
 243:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_64               RCC_CFGR_HPRE_DIV64  /*!< SYSCLK divided by 64 */
 244:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_128              RCC_CFGR_HPRE_DIV128 /*!< SYSCLK divided by 128 */
 245:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_256              RCC_CFGR_HPRE_DIV256 /*!< SYSCLK divided by 256 */
 246:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_512              RCC_CFGR_HPRE_DIV512 /*!< SYSCLK divided by 512 */
 247:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 248:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 249:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 250:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 251:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_APB1_DIV  APB low-speed prescaler (APB1)
 252:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 253:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 254:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_1                  RCC_CFGR_PPRE1_DIV1  /*!< HCLK not divided */
 255:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_2                  RCC_CFGR_PPRE1_DIV2  /*!< HCLK divided by 2 */
 256:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_4                  RCC_CFGR_PPRE1_DIV4  /*!< HCLK divided by 4 */
 257:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_8                  RCC_CFGR_PPRE1_DIV8  /*!< HCLK divided by 8 */
 258:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_16                 RCC_CFGR_PPRE1_DIV16 /*!< HCLK divided by 16 */
 259:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 260:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 261:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 263:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_APB2_DIV  APB high-speed prescaler (APB2)
 264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 265:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 266:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_1                  RCC_CFGR_PPRE2_DIV1  /*!< HCLK not divided */
 267:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_2                  RCC_CFGR_PPRE2_DIV2  /*!< HCLK divided by 2 */
 268:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_4                  RCC_CFGR_PPRE2_DIV4  /*!< HCLK divided by 4 */
 269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_8                  RCC_CFGR_PPRE2_DIV8  /*!< HCLK divided by 8 */
 270:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_16                 RCC_CFGR_PPRE2_DIV16 /*!< HCLK divided by 16 */
 271:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 273:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 275:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_MCO1SOURCE  MCO1 SOURCE selection
 276:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 277:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 278:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_NOCLOCK          0x00000000U                            /*!< MCO output d
 279:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_SYSCLK           RCC_CFGR_MCOSEL_0                      /*!< SYSCLK selec
 280:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_HSI              (RCC_CFGR_MCOSEL_0| RCC_CFGR_MCOSEL_1) /*!< HSI16 select
 281:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_HSE              RCC_CFGR_MCOSEL_2                      /*!< HSE selectio
 282:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_PLLCLK           (RCC_CFGR_MCOSEL_0|RCC_CFGR_MCOSEL_2)  /*!< Main PLL sel
 283:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_LSI              (RCC_CFGR_MCOSEL_1|RCC_CFGR_MCOSEL_2)  /*!< LSI selectio
 284:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_LSE              (RCC_CFGR_MCOSEL_0|RCC_CFGR_MCOSEL_1|RCC_CFGR_MCOSEL_2) 
 285:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_HSI48            RCC_CFGR_MCOSEL_3                      /*!< HSI48 select
 286:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 287:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 288:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 289:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 290:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_MCO1_DIV  MCO1 prescaler
 291:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 292:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 293:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_1                  RCC_CFGR_MCOPRE_DIV1       /*!< MCO not divided */
 294:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_2                  RCC_CFGR_MCOPRE_DIV2       /*!< MCO divided by 2 */
 295:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_4                  RCC_CFGR_MCOPRE_DIV4       /*!< MCO divided by 4 */
 296:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_8                  RCC_CFGR_MCOPRE_DIV8       /*!< MCO divided by 8 */
 297:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_16                 RCC_CFGR_MCOPRE_DIV16      /*!< MCO divided by 16 */
 298:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 299:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 300:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 301:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 302:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(USE_FULL_LL_DRIVER)
 303:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PERIPH_FREQUENCY Peripheral clock frequency
 304:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 305:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PERIPH_FREQUENCY_NO         0x00000000U                 /*!< No clock enabled for th
 307:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PERIPH_FREQUENCY_NA         0xFFFFFFFFU                 /*!< Frequency cannot be pro
 308:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 309:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 310:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 311:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* USE_FULL_LL_DRIVER */
 312:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 313:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USARTx_CLKSOURCE  Peripheral USART clock source selection
 314:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 315:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_PCLK2      (RCC_CCIPR_USART1SEL << 16U)                           /
 317:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_SYSCLK     ((RCC_CCIPR_USART1SEL << 16U) | RCC_CCIPR_USART1SEL_0) /
 318:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_HSI        ((RCC_CCIPR_USART1SEL << 16U) | RCC_CCIPR_USART1SEL_1) /
 319:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_LSE        ((RCC_CCIPR_USART1SEL << 16U) | RCC_CCIPR_USART1SEL)   /
 320:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_PCLK1      (RCC_CCIPR_USART2SEL << 16U)                           /
 321:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_SYSCLK     ((RCC_CCIPR_USART2SEL << 16U) | RCC_CCIPR_USART2SEL_0) /
 322:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_HSI        ((RCC_CCIPR_USART2SEL << 16U) | RCC_CCIPR_USART2SEL_1) /
 323:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_LSE        ((RCC_CCIPR_USART2SEL << 16U) | RCC_CCIPR_USART2SEL)   /
 324:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_PCLK1      (RCC_CCIPR_USART3SEL << 16U)                           /
 325:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_SYSCLK     ((RCC_CCIPR_USART3SEL << 16U) | RCC_CCIPR_USART3SEL_0) /
 326:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_HSI        ((RCC_CCIPR_USART3SEL << 16U) | RCC_CCIPR_USART3SEL_1) /
 327:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_LSE        ((RCC_CCIPR_USART3SEL << 16U) | RCC_CCIPR_USART3SEL)   /
 328:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 329:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 330:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 331:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 332:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_UARTx_CLKSOURCE  Peripheral UART clock source selection
 333:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 334:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 335:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART4SEL)
 336:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_PCLK1       (RCC_CCIPR_UART4SEL << 16U)                           /*
 337:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_SYSCLK      ((RCC_CCIPR_UART4SEL << 16U) | RCC_CCIPR_UART4SEL_0)  /*
 338:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_HSI         ((RCC_CCIPR_UART4SEL << 16U) | RCC_CCIPR_UART4SEL_1)  /*
 339:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_LSE         ((RCC_CCIPR_UART4SEL << 16U) | RCC_CCIPR_UART4SEL)    /*
 340:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART4SEL */
 341:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART5SEL)
 342:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_PCLK1       (RCC_CCIPR_UART5SEL << 16U)                           /*
 343:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_SYSCLK      ((RCC_CCIPR_UART5SEL << 16U) | RCC_CCIPR_UART5SEL_0)  /*
 344:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_HSI         ((RCC_CCIPR_UART5SEL << 16U) | RCC_CCIPR_UART5SEL_1)  /*
 345:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_LSE         ((RCC_CCIPR_UART5SEL << 16U) | RCC_CCIPR_UART5SEL)    /*
 346:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART5SEL */
 347:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 348:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 349:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 350:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 351:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPUART1_CLKSOURCE  Peripheral LPUART clock source selection
 352:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 353:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 354:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_PCLK1     0x00000000U                     /*!< PCLK1 clock used as
 355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_SYSCLK    RCC_CCIPR_LPUART1SEL_0          /*!< SYSCLK clock used a
 356:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_HSI       RCC_CCIPR_LPUART1SEL_1          /*!< HSI clock used as L
 357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_LSE       RCC_CCIPR_LPUART1SEL            /*!< LSE clock used as L
 358:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 359:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 360:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 361:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 362:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2Cx_CLKSOURCE  Peripheral I2C clock source selection
 363:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 364:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 365:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 366:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 367:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 368:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 369:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 371:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 373:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 374:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR2_I2C4SEL)
 375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 376:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 378:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR2_I2C4SEL */
 379:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 380:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 381:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 382:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 383:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPTIM1_CLKSOURCE  Peripheral LPTIM clock source selection
 384:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 385:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 386:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_PCLK1      0x00000000U                                            /
 387:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_LSI        RCC_CCIPR_LPTIM1SEL_0                                  /
 388:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_HSI        RCC_CCIPR_LPTIM1SEL_1                                  /
 389:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_LSE        RCC_CCIPR_LPTIM1SEL                                    /
 390:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 391:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 392:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 393:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 394:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SAI1_CLKSOURCE  Peripheral SAI clock source selection
 395:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 396:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 397:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_SYSCLK       0x00000000U                                           /*
 398:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_PLL          RCC_CCIPR_SAI1SEL_0                                   /*
 399:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_PIN          RCC_CCIPR_SAI1SEL_1                                   /*
 400:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_HSI          (RCC_CCIPR_SAI1SEL_0 | RCC_CCIPR_SAI1SEL_1)           /*
 401:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 402:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 403:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 404:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 405:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2S_CLKSOURCE  Peripheral I2S clock source selection
 406:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 407:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 408:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_SYSCLK       0x00000000U                                          /*!<
 409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_PLL          RCC_CCIPR_I2S23SEL_0                                 /*!<
 410:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_PIN          RCC_CCIPR_I2S23SEL_1                                 /*!<
 411:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_HSI          (RCC_CCIPR_I2S23SEL_0 | RCC_CCIPR_I2S23SEL_1)        /*!<
 412:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 413:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 414:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 415:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 416:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(FDCAN1)
 417:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_FDCAN_CLKSOURCE  Peripheral FDCAN clock source selection
 418:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 419:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 420:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE_HSE        0x00000000U             /*!< HSE clock used as FDCAN cloc
 421:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE_PLL        RCC_CCIPR_FDCANSEL_0    /*!< PLL clock used as FDCAN cloc
 422:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE_PCLK1      RCC_CCIPR_FDCANSEL_1    /*!< PCLK1 clock used as FDCAN cl
 423:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 424:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 425:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 426:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* FDCAN1 */
 427:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_RNG_CLKSOURCE  Peripheral RNG clock source selection
 429:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 430:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 431:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RNG_CLKSOURCE_HSI48        0x00000000U             /*!< HSI48 clock used as RNG cloc
 432:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RNG_CLKSOURCE_PLL          RCC_CCIPR_CLK48SEL_1    /*!< PLL clock used as RNG clock 
 433:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 434:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 435:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 436:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 437:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USB_CLKSOURCE  Peripheral USB clock source selection
 438:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 439:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 440:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USB_CLKSOURCE_HSI48        0x00000000U             /*!< HSI48 clock used as USB cloc
 441:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USB_CLKSOURCE_PLL          RCC_CCIPR_CLK48SEL_1    /*!< PLL clock used as USB clock 
 442:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 444:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 445:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 446:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_ADC_CLKSOURCE  Peripheral ADC clock source selection
 447:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 448:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 449:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE_NONE        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 450:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE_PLL         ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 451:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE_SYSCLK      ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 452:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_ADC345SEL)
 453:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE_NONE       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 454:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE_PLL        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 455:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE_SYSCLK     ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 456:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_ADC345SEL */
 457:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 459:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 460:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 461:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_QUADSPI  Peripheral QUADSPI get clock source
 462:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 463:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 464:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE_SYSCLK    0x00000000U              /*!< SYSCLK used as QuadSPI clo
 465:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE_HSI       RCC_CCIPR2_QSPISEL_0     /*!< HSI used as QuadSPI clock 
 466:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE_PLL       RCC_CCIPR2_QSPISEL_1     /*!< PLL used as QuadSPI clock 
 467:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 468:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 469:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 470:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 471:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 472:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USARTx Peripheral USART get clock source
 473:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 474:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 475:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE            RCC_CCIPR_USART1SEL /*!< USART1 Clock source selection *
 476:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE            RCC_CCIPR_USART2SEL /*!< USART2 Clock source selection *
 477:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE            RCC_CCIPR_USART3SEL /*!< USART3 Clock source selection *
 478:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 479:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 480:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 481:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 482:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_UARTx Peripheral UART get clock source
 483:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 484:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 485:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART4SEL)
 486:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE             RCC_CCIPR_UART4SEL /*!< UART4 Clock source selection */
 487:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART4SEL */
 488:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART5SEL)
 489:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE             RCC_CCIPR_UART5SEL /*!< UART5 Clock source selection */
 490:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART5SEL */
 491:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 492:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 493:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 494:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 495:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPUART1 Peripheral LPUART get clock source
 496:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 497:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 498:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE           RCC_CCIPR_LPUART1SEL /*!< LPUART1 Clock source selection
 499:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 500:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 501:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 502:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 503:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2C1 Peripheral I2C get clock source
 504:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 505:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 506:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE              ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 507:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE              ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 508:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE              ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 509:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR2_I2C4SEL)
 510:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE              ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 511:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR2_I2C4SEL */
 512:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 513:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 514:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 515:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 516:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPTIM1 Peripheral LPTIM get clock source
 517:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 518:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 519:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE            RCC_CCIPR_LPTIM1SEL /*!< LPTIM1 Clock source selection *
 520:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 521:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 522:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 523:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 524:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SAI1  Peripheral SAI get clock source
 525:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 526:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 527:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE              RCC_CCIPR_SAI1SEL /*!< SAI1 Clock source selection */
 528:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 529:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 530:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 531:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 532:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2S  Peripheral I2S get clock source
 533:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 534:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 535:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE              RCC_CCIPR_I2S23SEL /*!< I2S Clock source selection */
 536:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 537:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 538:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 539:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 540:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(FDCAN1)
 541:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_FDCAN  Peripheral FDCAN get clock source
 542:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 543:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 544:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE             RCC_CCIPR_FDCANSEL /*!< FDCAN Clock source selection */
 545:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* FDCAN1 */
 546:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 547:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 548:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 549:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 550:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 551:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_RNG  Peripheral RNG get clock source
 552:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 553:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 554:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RNG_CLKSOURCE               RCC_CCIPR_CLK48SEL /*!< RNG Clock source selection */
 555:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 556:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 557:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 558:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 559:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USB  Peripheral USB get clock source
 560:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 561:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 562:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USB_CLKSOURCE               RCC_CCIPR_CLK48SEL /*!< USB Clock source selection */
 563:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 564:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 565:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 566:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 567:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_ADC  Peripheral ADC get clock source
 568:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 569:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 570:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE             ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 571:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_ADC345SEL_Pos)
 572:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE            ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 573:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_ADC345SEL_Pos */
 574:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 575:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 576:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 577:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 578:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_QUADSPI  Peripheral QUADSPI get clock source
 579:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 580:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 581:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE           RCC_CCIPR2_QSPISEL    /*!< QuadSPI Clock source selectio
 582:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 583:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 584:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 585:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 586:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_RTC_CLKSOURCE  RTC clock source selection
 587:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 588:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 589:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_NONE          0x00000000U                   /*!< No clock used as RTC 
 590:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_LSE           RCC_BDCR_RTCSEL_0       /*!< LSE oscillator clock used a
 591:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_LSI           RCC_BDCR_RTCSEL_1       /*!< LSI oscillator clock used a
 592:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_HSE_DIV32     RCC_BDCR_RTCSEL         /*!< HSE oscillator clock divide
 593:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 594:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 595:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 596:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 597:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 598:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLSOURCE  PLL entry clock source
 599:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 600:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 601:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLSOURCE_NONE              0x00000000U             /*!< No clock */
 602:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLSOURCE_HSI               RCC_PLLCFGR_PLLSRC_HSI  /*!< HSI16 clock selected as PLL
 603:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLSOURCE_HSE               RCC_PLLCFGR_PLLSRC_HSE  /*!< HSE clock selected as PLL e
 604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 605:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 606:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 607:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 608:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLM_DIV  PLL division factor
 609:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 610:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 611:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_1                  0x00000000U                                             
 612:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_2                  RCC_PLLCFGR_PLLM_0                                      
 613:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_3                  RCC_PLLCFGR_PLLM_1                                      
 614:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_4                  (RCC_PLLCFGR_PLLM_1 | RCC_PLLCFGR_PLLM_0)               
 615:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_5                  RCC_PLLCFGR_PLLM_2                                      
 616:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_6                  (RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_PLLM_0)               
 617:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_7                  (RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_PLLM_1)               
 618:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_8                  (RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_PLLM_1 | RCC_PLLCFGR_P
 619:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_9                  RCC_PLLCFGR_PLLM_3                                      
 620:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_10                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_0)               
 621:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_11                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_1)               
 622:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_12                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_1 | RCC_PLLCFGR_P
 623:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_13                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2)               
 624:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_14                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_P
 625:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_15                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_P
 626:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_16                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_P
 627:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 628:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 629:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 630:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 631:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLR_DIV  PLL division factor (PLLR)
 632:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 633:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 634:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_2                  0x00000000U            /*!< Main PLL division factor for
 635:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_4                  (RCC_PLLCFGR_PLLR_0)   /*!< Main PLL division factor for
 636:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_6                  (RCC_PLLCFGR_PLLR_1)   /*!< Main PLL division factor for
 637:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_8                  (RCC_PLLCFGR_PLLR)     /*!< Main PLL division factor for
 638:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 639:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 640:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 641:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 642:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLP_DIV  PLL division factor (PLLP)
 643:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 644:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 645:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_2                  (RCC_PLLCFGR_PLLPDIV_1)                                 
 646:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_3                  (RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR_PLLPDIV_0)           
 647:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_4                  (RCC_PLLCFGR_PLLPDIV_2)                                 
 648:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_5                  (RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR_PLLPDIV_0)           
 649:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_6                  (RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR_PLLPDIV_1)           
 650:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_7                  (RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR
 651:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_8                  (RCC_PLLCFGR_PLLPDIV_3)                                 
 652:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_9                  (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_0)           
 653:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_10                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_1)           
 654:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_11                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR
 655:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_12                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2)           
 656:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_13                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 657:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_14                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 658:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_15                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 659:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_16                 (RCC_PLLCFGR_PLLPDIV_4)                                 
 660:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_17                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_0)           
 661:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_18                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_1)           
 662:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_19                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR
 663:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_20                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2)           
 664:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_21                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 665:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_22                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 666:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_23                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 667:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_24                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3)           
 668:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_25                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 669:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_26                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 670:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_27                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 671:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_28                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 672:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_29                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 673:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_30                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 674:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_31                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 675:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 676:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 677:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 678:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 679:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLQ_DIV  PLL division factor (PLLQ)
 680:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 681:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 682:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_2                  0x00000000U             /*!< Main PLL division factor fo
 683:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_4                  (RCC_PLLCFGR_PLLQ_0)    /*!< Main PLL division factor fo
 684:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_6                  (RCC_PLLCFGR_PLLQ_1)    /*!< Main PLL division factor fo
 685:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_8                  (RCC_PLLCFGR_PLLQ)      /*!< Main PLL division factor fo
 686:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 687:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 688:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 689:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 690:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 691:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 692:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 693:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 694:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported macro ------------------------------------------------------------*/
 695:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Macros RCC Exported Macros
 696:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 697:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 698:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 699:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EM_WRITE_READ Common Write and read registers Macros
 700:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 701:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 702:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 703:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 704:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Write a value in RCC register
 705:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __REG__ Register to be written
 706:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __VALUE__ Value to be written in the register
 707:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 708:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 709:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_WriteReg(__REG__, __VALUE__) WRITE_REG(RCC->__REG__, __VALUE__)
 710:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 711:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 712:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Read a value in RCC register
 713:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __REG__ Register to be read
 714:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Register value
 715:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 716:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ReadReg(__REG__) READ_REG(RCC->__REG__)
 717:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 718:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 719:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 720:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 721:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EM_CALC_FREQ Calculate frequencies
 722:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 723:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 724:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 725:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 726:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PLLCLK frequency on system domain
 727:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note ex: @ref __LL_RCC_CALC_PLLCLK_FREQ (HSE_VALUE,@ref LL_RCC_PLL_GetDivider (),
 728:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *             @ref LL_RCC_PLL_GetN (), @ref LL_RCC_PLL_GetR ());
 729:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __INPUTFREQ__ PLL Input frequency (based on HSE/HSI)
 730:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLM__ This parameter can be one of the following values:
 731:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
 732:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
 733:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
 734:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
 735:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
 736:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
 737:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
 738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
 739:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
 740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
 741:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
 742:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
 743:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
 744:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
 745:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
 746:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
 747:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLN__ Between Min_Data = 8 and Max_Data = 127
 748:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLR__ This parameter can be one of the following values:
 749:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_2
 750:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_4
 751:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_6
 752:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_8
 753:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PLL clock frequency (in Hz)
 754:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 755:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PLLCLK_FREQ(__INPUTFREQ__, __PLLM__, __PLLN__, __PLLR__) ((__INPUTFREQ__) * (
 756:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****                    ((((__PLLR__) >> RCC_PLLCFGR_PLLR_Pos) + 1U) * 2U))
 757:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 758:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 759:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PLLCLK frequency used on ADC domain
 760:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note ex: @ref __LL_RCC_CALC_PLLCLK_ADC_FREQ (HSE_VALUE,@ref LL_RCC_PLL_GetDivider (),
 761:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *             @ref LL_RCC_PLL_GetN (), @ref LL_RCC_PLL_GetP ());
 762:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __INPUTFREQ__ PLL Input frequency (based on HSE/HSI)
 763:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLM__ This parameter can be one of the following values:
 764:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
 765:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
 766:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
 767:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
 768:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
 769:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
 770:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
 771:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
 772:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
 773:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
 774:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
 775:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
 776:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
 777:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
 778:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
 779:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
 780:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLN__ Between Min_Data = 8 and Max_Data = 127
 782:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLP__ This parameter can be one of the following values:
 783:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_2
 784:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_3
 785:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_4
 786:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_5
 787:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_6
 788:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_7
 789:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_8
 790:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_9
 791:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_10
 792:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_11
 793:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_12
 794:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_13
 795:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_14
 796:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_15
 797:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_16
 798:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_17
 799:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_18
 800:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_19
 801:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_20
 802:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_21
 803:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_22
 804:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_23
 805:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_24
 806:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_25
 807:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_26
 808:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_27
 809:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_28
 810:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_29
 811:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_30
 812:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_31
 813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PLL clock frequency (in Hz)
 814:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 815:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PLLCLK_ADC_FREQ(__INPUTFREQ__, __PLLM__, __PLLN__, __PLLP__) ((__INPUTFREQ__)
 816:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****                    ((__PLLP__) >> RCC_PLLCFGR_PLLPDIV_Pos))
 817:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 818:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 819:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PLLCLK frequency used on 48M domain
 820:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note ex: @ref __LL_RCC_CALC_PLLCLK_48M_FREQ (HSE_VALUE,@ref LL_RCC_PLL_GetDivider (),
 821:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *             @ref LL_RCC_PLL_GetN (), @ref LL_RCC_PLL_GetQ ());
 822:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __INPUTFREQ__ PLL Input frequency (based on HSE/HSI)
 823:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLM__ This parameter can be one of the following values:
 824:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
 825:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
 826:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
 827:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
 828:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
 829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
 830:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
 831:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
 832:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
 833:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
 834:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
 835:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
 836:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
 837:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
 838:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
 839:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
 840:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLN__ Between Min_Data = 8 and Max_Data = 127
 841:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLQ__ This parameter can be one of the following values:
 842:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_2
 843:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_4
 844:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_6
 845:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_8
 846:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PLL clock frequency (in Hz)
 847:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 848:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PLLCLK_48M_FREQ(__INPUTFREQ__, __PLLM__, __PLLN__, __PLLQ__) ((__INPUTFREQ__)
 849:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****                    ((((__PLLQ__) >> RCC_PLLCFGR_PLLQ_Pos) + 1U) << 1U))
 850:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 851:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 852:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the HCLK frequency
 853:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __SYSCLKFREQ__ SYSCLK frequency (based on HSE/HSI/PLLCLK)
 854:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __AHBPRESCALER__ This parameter can be one of the following values:
 855:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_1
 856:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_2
 857:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_4
 858:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_8
 859:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_16
 860:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_64
 861:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_128
 862:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_256
 863:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_512
 864:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval HCLK clock frequency (in Hz)
 865:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 866:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_HCLK_FREQ(__SYSCLKFREQ__,__AHBPRESCALER__) ((__SYSCLKFREQ__) >> (AHBPrescTabl
 867:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 868:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 869:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PCLK1 frequency (ABP1)
 870:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __HCLKFREQ__ HCLK frequency
 871:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __APB1PRESCALER__ This parameter can be one of the following values:
 872:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_1
 873:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_2
 874:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_4
 875:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_8
 876:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_16
 877:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PCLK1 clock frequency (in Hz)
 878:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 879:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PCLK1_FREQ(__HCLKFREQ__, __APB1PRESCALER__) ((__HCLKFREQ__) >> (APBPrescTable
 880:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 881:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PCLK2 frequency (ABP2)
 883:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __HCLKFREQ__ HCLK frequency
 884:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __APB2PRESCALER__ This parameter can be one of the following values:
 885:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_1
 886:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_2
 887:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_4
 888:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_8
 889:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_16
 890:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PCLK2 clock frequency (in Hz)
 891:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 892:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PCLK2_FREQ(__HCLKFREQ__, __APB2PRESCALER__) ((__HCLKFREQ__) >> (APBPrescTable
 893:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 894:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 895:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 896:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 897:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 898:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 899:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 900:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 901:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 902:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported functions --------------------------------------------------------*/
 903:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Functions RCC Exported Functions
 904:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 905:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 906:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 907:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_HSE HSE
 908:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 909:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 910:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 911:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 912:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable the Clock Security System.
 913:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           CSSON         LL_RCC_HSE_EnableCSS
 914:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 915:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 916:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_EnableCSS(void)
 917:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 918:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_CSSON);
 919:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 920:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 921:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 922:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSE external oscillator (HSE Bypass)
 923:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEBYP        LL_RCC_HSE_EnableBypass
 924:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 925:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 926:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_EnableBypass(void)
 927:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 928:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSEBYP);
 929:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 930:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 931:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSE external oscillator (HSE Bypass)
 933:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEBYP        LL_RCC_HSE_DisableBypass
 934:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 935:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 936:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_DisableBypass(void)
 937:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 938:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEBYP);
 939:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 940:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 941:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 942:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSE crystal oscillator (HSE ON)
 943:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEON         LL_RCC_HSE_Enable
 944:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 945:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 946:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_Enable(void)
 947:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 948:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSEON);
 949:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 950:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 951:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 952:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSE crystal oscillator (HSE ON)
 953:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEON         LL_RCC_HSE_Disable
 954:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 955:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 956:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_Disable(void)
 957:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 958:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEON);
 959:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 960:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 961:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 962:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSE oscillator Ready
 963:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSERDY        LL_RCC_HSE_IsReady
 964:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
 965:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 966:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSE_IsReady(void)
 967:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CR, RCC_CR_HSERDY) == (RCC_CR_HSERDY)) ? 1UL : 0UL);
 969:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 970:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 971:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 972:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 973:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 974:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 975:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_HSI HSI
 976:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 977:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 978:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 979:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 980:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSI even in stop mode
 981:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note HSI oscillator is forced ON even in Stop mode
 982:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSIKERON      LL_RCC_HSI_EnableInStopMode
 983:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 984:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 985:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_EnableInStopMode(void)
 986:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 987:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSIKERON);
 988:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 989:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 990:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 991:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSI in stop mode
 992:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSIKERON      LL_RCC_HSI_DisableInStopMode
 993:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 994:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 995:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_DisableInStopMode(void)
 996:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 997:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSIKERON);
 998:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 999:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1000:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1001:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSI oscillator
1002:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSION         LL_RCC_HSI_Enable
1003:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1004:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1005:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_Enable(void)
1006:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1007:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSION);
1008:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1009:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1010:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1011:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSI oscillator
1012:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSION         LL_RCC_HSI_Disable
1013:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1014:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1015:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_Disable(void)
1016:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1017:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSION);
1018:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1019:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1020:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1021:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSI clock is ready
1022:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSIRDY        LL_RCC_HSI_IsReady
1023:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1024:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1025:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI_IsReady(void)
1026:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
  28              		.loc 1 1026 1 view -0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CR, RCC_CR_HSIRDY) == (RCC_CR_HSIRDY)) ? 1UL : 0UL);
  33              		.loc 1 1027 3 view .LVU1
  34              		.loc 1 1027 12 is_stmt 0 view .LVU2
  35 0000 024B     		ldr	r3, .L2
  36 0002 1868     		ldr	r0, [r3]
1028:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
  37              		.loc 1 1028 1 view .LVU3
  38 0004 C0F38020 		ubfx	r0, r0, #10, #1
  39 0008 7047     		bx	lr
  40              	.L3:
  41 000a 00BF     		.align	2
  42              	.L2:
  43 000c 00100240 		.word	1073876992
  44              		.cfi_endproc
  45              	.LFE140:
  47              		.section	.text.LL_RCC_LSE_IsReady,"ax",%progbits
  48              		.align	1
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  54              	LL_RCC_LSE_IsReady:
  55              	.LFB156:
1029:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1030:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1031:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get HSI Calibration value
1032:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note When HSITRIM is written, HSICAL is updated with the sum of
1033:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       HSITRIM and the factory trim value
1034:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll ICSCR        HSICAL        LL_RCC_HSI_GetCalibration
1035:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Between Min_Data = 0x00 and Max_Data = 0xFF
1036:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1037:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI_GetCalibration(void)
1038:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1039:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->ICSCR, RCC_ICSCR_HSICAL) >> RCC_ICSCR_HSICAL_Pos);
1040:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1041:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1042:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1043:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set HSI Calibration trimming
1044:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note user-programmable trimming value that is added to the HSICAL
1045:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Default value is 16, which, when added to the HSICAL value,
1046:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       should trim the HSI to 16 MHz +/- 1 %
1047:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll ICSCR        HSITRIM       LL_RCC_HSI_SetCalibTrimming
1048:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Value Between Min_Data = 0 and Max_Data = 127
1049:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1050:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1051:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_SetCalibTrimming(uint32_t Value)
1052:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1053:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->ICSCR, RCC_ICSCR_HSITRIM, Value << RCC_ICSCR_HSITRIM_Pos);
1054:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1055:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1056:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1057:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get HSI Calibration trimming
1058:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll ICSCR        HSITRIM       LL_RCC_HSI_GetCalibTrimming
1059:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Between Min_Data = 0 and Max_Data = 127
1060:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1061:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI_GetCalibTrimming(void)
1062:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1063:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->ICSCR, RCC_ICSCR_HSITRIM) >> RCC_ICSCR_HSITRIM_Pos);
1064:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1065:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1066:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1067:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1068:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1069:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1070:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_HSI48 HSI48
1071:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1072:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1073:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1074:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1075:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSI48
1076:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48ON       LL_RCC_HSI48_Enable
1077:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1079:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI48_Enable(void)
1080:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1081:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CRRCR, RCC_CRRCR_HSI48ON);
1082:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1083:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1084:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1085:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSI48
1086:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48ON       LL_RCC_HSI48_Disable
1087:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1088:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1089:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI48_Disable(void)
1090:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1091:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CRRCR, RCC_CRRCR_HSI48ON);
1092:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1093:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1094:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1095:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSI48 oscillator Ready
1096:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48RDY      LL_RCC_HSI48_IsReady
1097:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1098:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1099:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI48_IsReady(void)
1100:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) == (RCC_CRRCR_HSI48RDY)) ? 1UL : 0UL);
1102:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1103:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1104:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1105:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get HSI48 Calibration value
1106:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48CAL      LL_RCC_HSI48_GetCalibration
1107:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Between Min_Data = 0x00 and Max_Data = 0x1FF
1108:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1109:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI48_GetCalibration(void)
1110:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1111:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48CAL) >> RCC_CRRCR_HSI48CAL_Pos);
1112:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1113:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1114:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1115:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1116:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1117:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1118:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_LSE LSE
1119:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1120:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1122:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1123:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable  Low Speed External (LSE) crystal.
1124:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEON         LL_RCC_LSE_Enable
1125:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1126:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1127:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_Enable(void)
1128:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1129:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSEON);
1130:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1131:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1132:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1133:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable  Low Speed External (LSE) crystal.
1134:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEON         LL_RCC_LSE_Disable
1135:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1136:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1137:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_Disable(void)
1138:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1139:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSEON);
1140:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1141:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1142:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1143:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable external clock source (LSE bypass).
1144:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEBYP        LL_RCC_LSE_EnableBypass
1145:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1146:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1147:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_EnableBypass(void)
1148:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1149:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSEBYP);
1150:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1151:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1152:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1153:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable external clock source (LSE bypass).
1154:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEBYP        LL_RCC_LSE_DisableBypass
1155:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1156:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1157:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_DisableBypass(void)
1158:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1159:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSEBYP);
1160:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1161:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1162:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1163:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set LSE oscillator drive capability
1164:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note The oscillator is in Xtal mode when it is not in bypass mode.
1165:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEDRV        LL_RCC_LSE_SetDriveCapability
1166:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LSEDrive This parameter can be one of the following values:
1167:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_LOW
1168:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMLOW
1169:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMHIGH
1170:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_HIGH
1171:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1172:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1173:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_SetDriveCapability(uint32_t LSEDrive)
1174:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1175:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->BDCR, RCC_BDCR_LSEDRV, LSEDrive);
1176:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1177:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1178:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1179:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get LSE oscillator drive capability
1180:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEDRV        LL_RCC_LSE_GetDriveCapability
1181:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1182:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_LOW
1183:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMLOW
1184:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMHIGH
1185:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_HIGH
1186:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1187:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSE_GetDriveCapability(void)
1188:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1189:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->BDCR, RCC_BDCR_LSEDRV));
1190:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1191:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1192:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1193:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable Clock security system on LSE.
1194:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSECSSON      LL_RCC_LSE_EnableCSS
1195:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1196:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1197:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_EnableCSS(void)
1198:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1199:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSECSSON);
1200:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1201:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1202:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1203:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable Clock security system on LSE.
1204:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Clock security system can be disabled only after a LSE
1205:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       failure detection. In that case it MUST be disabled by software.
1206:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSECSSON      LL_RCC_LSE_DisableCSS
1207:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1208:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1209:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_DisableCSS(void)
1210:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1211:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSECSSON);
1212:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1213:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1214:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1215:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if LSE oscillator Ready
1216:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSERDY        LL_RCC_LSE_IsReady
1217:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1218:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1219:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSE_IsReady(void)
1220:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
  56              		.loc 1 1220 1 is_stmt 1 view -0
  57              		.cfi_startproc
  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
1221:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == (RCC_BDCR_LSERDY)) ? 1UL : 0UL);
  61              		.loc 1 1221 3 view .LVU5
  62              		.loc 1 1221 12 is_stmt 0 view .LVU6
  63 0000 024B     		ldr	r3, .L5
  64 0002 D3F89000 		ldr	r0, [r3, #144]
1222:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
  65              		.loc 1 1222 1 view .LVU7
  66 0006 C0F34000 		ubfx	r0, r0, #1, #1
  67 000a 7047     		bx	lr
  68              	.L6:
  69              		.align	2
  70              	.L5:
  71 000c 00100240 		.word	1073876992
  72              		.cfi_endproc
  73              	.LFE156:
  75              		.section	.text.LL_RCC_PLL_IsReady,"ax",%progbits
  76              		.align	1
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  82              	LL_RCC_PLL_IsReady:
  83              	.LFB205:
1223:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1224:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1225:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if CSS on LSE failure Detection
1226:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSECSSD       LL_RCC_LSE_IsCSSDetected
1227:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1228:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1229:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSE_IsCSSDetected(void)
1230:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1231:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->BDCR, RCC_BDCR_LSECSSD) == (RCC_BDCR_LSECSSD)) ? 1UL : 0UL);
1232:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1233:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1234:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1235:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1236:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1237:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1238:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_LSI LSI
1239:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1240:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1241:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1242:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1243:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable LSI Oscillator
1244:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          LSION         LL_RCC_LSI_Enable
1245:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1246:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1247:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSI_Enable(void)
1248:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1249:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CSR, RCC_CSR_LSION);
1250:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1251:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1252:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1253:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable LSI Oscillator
1254:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          LSION         LL_RCC_LSI_Disable
1255:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1256:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1257:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSI_Disable(void)
1258:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1259:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CSR, RCC_CSR_LSION);
1260:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1261:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1263:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if LSI is Ready
1264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          LSIRDY        LL_RCC_LSI_IsReady
1265:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1266:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1267:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSI_IsReady(void)
1268:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) == (RCC_CSR_LSIRDY)) ? 1UL : 0UL);
1270:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1271:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1273:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1275:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1276:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_LSCO LSCO
1277:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1278:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1279:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1280:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1281:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable Low speed clock
1282:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOEN        LL_RCC_LSCO_Enable
1283:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1284:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1285:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSCO_Enable(void)
1286:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1287:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSCOEN);
1288:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1289:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1290:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1291:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable Low speed clock
1292:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOEN        LL_RCC_LSCO_Disable
1293:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1294:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1295:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSCO_Disable(void)
1296:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1297:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSCOEN);
1298:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1299:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1300:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1301:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure Low speed clock selection
1302:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOSEL       LL_RCC_LSCO_SetSource
1303:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
1304:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSI
1305:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSE
1306:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1307:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1308:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSCO_SetSource(uint32_t Source)
1309:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1310:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->BDCR, RCC_BDCR_LSCOSEL, Source);
1311:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1312:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1313:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1314:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get Low speed clock selection
1315:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOSEL       LL_RCC_LSCO_GetSource
1316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1317:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSI
1318:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSE
1319:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1320:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSCO_GetSource(void)
1321:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1322:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->BDCR, RCC_BDCR_LSCOSEL));
1323:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1324:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1325:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1326:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1327:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1328:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1329:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_System System
1330:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1331:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1332:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1333:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1334:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure the system clock source
1335:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         SW            LL_RCC_SetSysClkSource
1336:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
1337:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_HSI
1338:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_HSE
1339:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_PLL
1340:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1341:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1342:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetSysClkSource(uint32_t Source)
1343:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1344:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_SW, Source);
1345:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1346:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1347:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1348:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get the system clock source
1349:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         SWS           LL_RCC_GetSysClkSource
1350:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1351:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_STATUS_HSI
1352:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_STATUS_HSE
1353:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_STATUS_PLL
1354:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetSysClkSource(void)
1356:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_SWS));
1358:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1359:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1360:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1361:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set AHB prescaler
1362:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         HPRE          LL_RCC_SetAHBPrescaler
1363:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Prescaler This parameter can be one of the following values:
1364:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_1
1365:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_2
1366:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_4
1367:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_8
1368:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_16
1369:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_64
1370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_128
1371:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_256
1372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_512
1373:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1374:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetAHBPrescaler(uint32_t Prescaler)
1376:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, Prescaler);
1378:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1379:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1380:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1381:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set APB1 prescaler
1382:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE1         LL_RCC_SetAPB1Prescaler
1383:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Prescaler This parameter can be one of the following values:
1384:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_1
1385:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_2
1386:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_4
1387:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_8
1388:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_16
1389:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1390:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1391:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetAPB1Prescaler(uint32_t Prescaler)
1392:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1393:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, Prescaler);
1394:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1395:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1396:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1397:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set APB2 prescaler
1398:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE2         LL_RCC_SetAPB2Prescaler
1399:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Prescaler This parameter can be one of the following values:
1400:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_1
1401:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_2
1402:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_4
1403:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_8
1404:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_16
1405:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1406:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1407:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetAPB2Prescaler(uint32_t Prescaler)
1408:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, Prescaler);
1410:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1411:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1412:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1413:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get AHB prescaler
1414:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         HPRE          LL_RCC_GetAHBPrescaler
1415:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1416:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_1
1417:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_2
1418:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_4
1419:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_8
1420:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_16
1421:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_64
1422:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_128
1423:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_256
1424:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_512
1425:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1426:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetAHBPrescaler(void)
1427:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_HPRE));
1429:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1430:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1431:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1432:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get APB1 prescaler
1433:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE1         LL_RCC_GetAPB1Prescaler
1434:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1435:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_1
1436:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_2
1437:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_4
1438:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_8
1439:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_16
1440:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1441:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetAPB1Prescaler(void)
1442:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_PPRE1));
1444:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1445:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1446:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1447:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get APB2 prescaler
1448:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE2         LL_RCC_GetAPB2Prescaler
1449:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1450:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_1
1451:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_2
1452:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_4
1453:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_8
1454:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_16
1455:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1456:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetAPB2Prescaler(void)
1457:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_PPRE2));
1459:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1460:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1461:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1462:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1463:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1464:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1465:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_MCO MCO
1466:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1467:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1468:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1469:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1470:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure MCOx
1471:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         MCOSEL        LL_RCC_ConfigMCO\n
1472:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         CFGR         MCOPRE        LL_RCC_ConfigMCO
1473:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  MCOxSource This parameter can be one of the following values:
1474:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_NOCLOCK
1475:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_SYSCLK
1476:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_HSI
1477:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_HSE
1478:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_HSI48
1479:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_PLLCLK
1480:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_LSI
1481:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_LSE
1482:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1483:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1484:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  MCOxPrescaler This parameter can be one of the following values:
1485:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_1
1486:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_2
1487:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_4
1488:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_8
1489:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_16
1490:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1491:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1492:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ConfigMCO(uint32_t MCOxSource, uint32_t MCOxPrescaler)
1493:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1494:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_MCOSEL | RCC_CFGR_MCOPRE, MCOxSource | MCOxPrescaler);
1495:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1496:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1497:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1498:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1499:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1500:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1501:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_Peripheral_Clock_Source Peripheral Clock Source
1502:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1503:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1504:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1505:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1506:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure USARTx clock source
1507:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        USARTxSEL     LL_RCC_SetUSARTClockSource
1508:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  USARTxSource This parameter can be one of the following values:
1509:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_PCLK2
1510:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_SYSCLK
1511:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_HSI
1512:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_LSE
1513:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_PCLK1
1514:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_SYSCLK
1515:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_HSI
1516:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_LSE
1517:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_PCLK1
1518:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_SYSCLK
1519:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_HSI
1520:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_LSE
1521:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1522:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1523:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetUSARTClockSource(uint32_t USARTxSource)
1524:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1525:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, (USARTxSource >> 16U), (USARTxSource & 0x0000FFFFU));
1526:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1527:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1528:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(UART4)
1529:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1530:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure UARTx clock source
1531:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        UARTxSEL      LL_RCC_SetUARTClockSource
1532:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  UARTxSource This parameter can be one of the following values:
1533:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_PCLK1 (*)
1534:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_SYSCLK (*)
1535:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_HSI (*)
1536:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_LSE (*)
1537:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_PCLK1 (*)
1538:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_SYSCLK (*)
1539:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_HSI (*)
1540:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_LSE (*)
1541:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1542:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1543:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1544:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1545:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetUARTClockSource(uint32_t UARTxSource)
1546:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1547:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, (UARTxSource >> 16U), (UARTxSource & 0x0000FFFFU));
1548:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1549:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* UART4 */
1550:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1551:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1552:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure LPUART1x clock source
1553:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPUART1SEL    LL_RCC_SetLPUARTClockSource
1554:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPUARTxSource This parameter can be one of the following values:
1555:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_PCLK1
1556:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_SYSCLK
1557:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_HSI
1558:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_LSE
1559:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1560:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1561:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetLPUARTClockSource(uint32_t LPUARTxSource)
1562:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1563:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_LPUART1SEL, LPUARTxSource);
1564:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1565:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1566:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1567:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure I2Cx clock source
1568:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        I2CxSEL       LL_RCC_SetI2CClockSource
1569:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  I2CxSource This parameter can be one of the following values:
1570:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_PCLK1
1571:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_SYSCLK
1572:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_HSI
1573:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_PCLK1
1574:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_SYSCLK
1575:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_HSI
1576:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_PCLK1
1577:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_SYSCLK
1578:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_HSI
1579:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_PCLK1 (*)
1580:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_SYSCLK (*)
1581:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_HSI (*)
1582:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1583:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1584:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1585:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1586:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetI2CClockSource(uint32_t I2CxSource)
1587:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1588:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   __IO uint32_t *reg = (__IO uint32_t *)(uint32_t)(RCC_BASE + 0x88U + (I2CxSource >> 24U));
1589:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(*reg, 3UL << ((I2CxSource & 0x001F0000U) >> 16U), ((I2CxSource & 0x000000FFU) << ((I2C
1590:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1591:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1592:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1593:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure LPTIMx clock source
1594:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPTIM1SEL     LL_RCC_SetLPTIMClockSource
1595:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPTIMxSource This parameter can be one of the following values:
1596:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_PCLK1
1597:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSI
1598:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_HSI
1599:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSE
1600:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1601:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1602:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetLPTIMClockSource(uint32_t LPTIMxSource)
1603:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_LPTIM1SEL, LPTIMxSource);
1605:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1606:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1607:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1608:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure SAIx clock source
1609:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        SAI1SEL       LL_RCC_SetSAIClockSource
1610:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  SAIxSource This parameter can be one of the following values:
1611:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_SYSCLK
1612:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_PLL
1613:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_PIN
1614:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_HSI
1615:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1616:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1617:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1618:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1619:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetSAIClockSource(uint32_t SAIxSource)
1620:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1621:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_SAI1SEL, SAIxSource);
1622:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1623:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1624:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1625:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure I2S clock source
1626:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        I2S23SEL      LL_RCC_SetI2SClockSource
1627:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  I2SxSource This parameter can be one of the following values:
1628:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_SYSCLK
1629:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_PLL
1630:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_PIN
1631:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_HSI
1632:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1633:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1634:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetI2SClockSource(uint32_t I2SxSource)
1635:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1636:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_I2S23SEL, I2SxSource);
1637:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1638:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1639:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(FDCAN1)
1640:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1641:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure FDCAN clock source
1642:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        FDCANSEL      LL_RCC_SetFDCANClockSource
1643:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  FDCANxSource This parameter can be one of the following values:
1644:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_HSE
1645:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_PLL
1646:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_PCLK1
1647:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1648:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1649:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetFDCANClockSource(uint32_t FDCANxSource)
1650:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1651:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_FDCANSEL, FDCANxSource);
1652:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1653:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* FDCAN1 */
1654:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1655:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1656:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure RNG clock source
1657:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        CLK48SEL      LL_RCC_SetRNGClockSource
1658:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  RNGxSource This parameter can be one of the following values:
1659:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE_HSI48
1660:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE_PLL
1661:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1662:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1663:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetRNGClockSource(uint32_t RNGxSource)
1664:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1665:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_CLK48SEL, RNGxSource);
1666:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1667:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1668:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1669:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure USB clock source
1670:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        CLK48SEL      LL_RCC_SetUSBClockSource
1671:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  USBxSource This parameter can be one of the following values:
1672:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USB_CLKSOURCE_HSI48
1673:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USB_CLKSOURCE_PLL
1674:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1675:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1676:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetUSBClockSource(uint32_t USBxSource)
1677:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1678:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_CLK48SEL, USBxSource);
1679:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1680:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1681:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1682:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure ADC clock source
1683:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        ADC12SEL         LL_RCC_SetADCClockSource\n
1684:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         CCIPR        ADC345SEL        LL_RCC_SetADCClockSource
1685:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  ADCxSource This parameter can be one of the following values:
1686:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_NONE
1687:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_PLL
1688:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_SYSCLK
1689:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_NONE   (*)
1690:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_PLL    (*)
1691:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_SYSCLK (*)
1692:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1693:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1694:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1695:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1696:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetADCClockSource(uint32_t ADCxSource)
1697:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1698:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, 3U << ((ADCxSource & 0x001F0000U) >> 16U), ((ADCxSource & 0x000000FFU) << 
1699:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1700:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1701:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(QUADSPI)
1702:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1703:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure QUADSPI clock source
1704:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR2         QSPISEL     LL_RCC_SetQUADSPIClockSource
1705:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
1706:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_SYSCLK
1707:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_HSI
1708:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_PLL
1709:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1710:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1711:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetQUADSPIClockSource(uint32_t Source)
1712:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1713:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR2, RCC_CCIPR2_QSPISEL, Source);
1714:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1715:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* QUADSPI */
1716:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1717:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1718:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get USARTx clock source
1719:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        USARTxSEL     LL_RCC_GetUSARTClockSource
1720:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  USARTx This parameter can be one of the following values:
1721:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE
1722:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE
1723:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE
1724:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1725:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_PCLK2
1726:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_SYSCLK
1727:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_HSI
1728:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_LSE
1729:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_PCLK1
1730:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_SYSCLK
1731:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_HSI
1732:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_LSE
1733:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_PCLK1
1734:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_SYSCLK
1735:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_HSI
1736:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_LSE
1737:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetUSARTClockSource(uint32_t USARTx)
1739:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, USARTx) | (USARTx << 16U));
1741:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1742:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1743:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(UART4)
1744:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1745:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get UARTx clock source
1746:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        UARTxSEL      LL_RCC_GetUARTClockSource
1747:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  UARTx This parameter can be one of the following values:
1748:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE (*)
1749:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE (*)
1750:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1751:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_PCLK1 (*)
1752:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_SYSCLK (*)
1753:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_HSI (*)
1754:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_LSE (*)
1755:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_PCLK1 (*)
1756:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_SYSCLK (*)
1757:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_HSI (*)
1758:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_LSE (*)
1759:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1760:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1761:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1762:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetUARTClockSource(uint32_t UARTx)
1763:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1764:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, UARTx) | (UARTx << 16U));
1765:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1766:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* UART4 */
1767:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1768:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1769:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get LPUARTx clock source
1770:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPUART1SEL    LL_RCC_GetLPUARTClockSource
1771:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPUARTx This parameter can be one of the following values:
1772:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE
1773:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1774:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_PCLK1
1775:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_SYSCLK
1776:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_HSI
1777:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_LSE
1778:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1779:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetLPUARTClockSource(uint32_t LPUARTx)
1780:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, LPUARTx));
1782:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1783:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1784:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1785:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get I2Cx clock source
1786:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        I2CxSEL       LL_RCC_GetI2CClockSource
1787:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  I2Cx This parameter can be one of the following values:
1788:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE
1789:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE
1790:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE
1791:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE (*)
1792:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1793:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1794:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1795:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_PCLK1
1796:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_SYSCLK
1797:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_HSI
1798:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_PCLK1
1799:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_SYSCLK
1800:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_HSI
1801:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_PCLK1
1802:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_SYSCLK
1803:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_HSI
1804:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_PCLK1 (*)
1805:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_SYSCLK (*)
1806:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_HSI (*)
1807:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1808:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1809:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****  */
1810:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetI2CClockSource(uint32_t I2Cx)
1811:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1812:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   __IO const uint32_t *reg = (__IO uint32_t *)(uint32_t)(RCC_BASE + 0x88U + (I2Cx >> 24U));
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)((READ_BIT(*reg, 3UL << ((I2Cx & 0x001F0000U) >> 16U)) >> ((I2Cx & 0x001F0000U) 
1814:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1815:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1816:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1817:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get LPTIMx clock source
1818:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPTIMxSEL     LL_RCC_GetLPTIMClockSource
1819:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPTIMx This parameter can be one of the following values:
1820:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE
1821:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1822:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_PCLK1
1823:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSI
1824:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_HSI
1825:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSE
1826:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1827:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetLPTIMClockSource(uint32_t LPTIMx)
1828:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, LPTIMx));
1830:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1831:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1832:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1833:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get SAIx clock source
1834:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        SAI1SEL       LL_RCC_GetSAIClockSource
1835:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  SAIx This parameter can be one of the following values:
1836:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE
1837:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1838:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1839:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1840:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_SYSCLK
1841:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_PLL
1842:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_PIN
1843:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_HSI
1844:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1845:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1846:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1847:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetSAIClockSource(uint32_t SAIx)
1848:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1849:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, SAIx));
1850:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1851:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1852:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1853:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get I2Sx clock source
1854:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        I2S23SEL      LL_RCC_GetI2SClockSource
1855:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  I2Sx This parameter can be one of the following values:
1856:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE
1857:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1858:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_SYSCLK
1859:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_PLL
1860:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_PIN
1861:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_HSI
1862:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1863:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetI2SClockSource(uint32_t I2Sx)
1864:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1865:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, I2Sx));
1866:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1867:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1868:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(FDCAN1)
1869:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1870:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get FDCANx clock source
1871:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        FDCANSEL      LL_RCC_GetFDCANClockSource
1872:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  FDCANx This parameter can be one of the following values:
1873:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE
1874:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1875:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_HSE
1876:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_PLL
1877:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_PCLK1
1878:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1879:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1880:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetFDCANClockSource(uint32_t FDCANx)
1881:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, FDCANx));
1883:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1884:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* FDCAN1 */
1885:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1886:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1887:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get RNGx clock source
1888:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        CLK48SEL      LL_RCC_GetRNGClockSource
1889:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  RNGx This parameter can be one of the following values:
1890:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE
1891:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1892:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE_HSI48
1893:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE_PLL
1894:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1895:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetRNGClockSource(uint32_t RNGx)
1896:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1897:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, RNGx));
1898:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1899:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1900:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1901:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get USBx clock source
1902:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        CLK48SEL      LL_RCC_GetUSBClockSource
1903:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  USBx This parameter can be one of the following values:
1904:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USB_CLKSOURCE
1905:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1906:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USB_CLKSOURCE_HSI48
1907:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USB_CLKSOURCE_PLL
1908:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1909:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetUSBClockSource(uint32_t USBx)
1910:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1911:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, USBx));
1912:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1913:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1914:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1915:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get ADCx clock source
1916:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        ADCSEL        LL_RCC_GetADCClockSource
1917:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  ADCx This parameter can be one of the following values:
1918:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE
1919:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE        (*)
1920:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1921:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_NONE
1922:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_PLL
1923:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_SYSCLK
1924:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_NONE   (*)
1925:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_PLL    (*)
1926:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_SYSCLK (*)
1927:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1928:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1929:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1930:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetADCClockSource(uint32_t ADCx)
1931:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)((READ_BIT(RCC->CCIPR, 3UL << ((ADCx & 0x001F0000U) >> 16U)) >> ((ADCx & 0x001F0
1933:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1934:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1935:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(QUADSPI)
1936:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1937:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get QUADSPI clock source
1938:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR2         QSPISEL     LL_RCC_GetQUADSPIClockSource
1939:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  QUADSPIx This parameter can be one of the following values:
1940:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE
1941:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1942:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_SYSCLK
1943:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_HSI
1944:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_PLL
1945:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1946:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetQUADSPIClockSource(uint32_t QUADSPIx)
1947:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1948:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR2, QUADSPIx));
1949:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1950:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* QUADSPI */
1951:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1952:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1953:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1954:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1955:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_RTC RTC
1956:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1957:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1958:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1959:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1960:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set RTC Clock Source
1961:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Once the RTC clock source has been selected, it cannot be changed anymore unless
1962:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       the Backup domain is reset, or unless a failure is detected on LSE (LSECSSD is
1963:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       set). The BDRST bit can be used to reset them.
1964:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         RTCSEL        LL_RCC_SetRTCClockSource
1965:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
1966:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_NONE
1967:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_LSE
1968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_LSI
1969:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_HSE_DIV32
1970:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1971:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1972:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetRTCClockSource(uint32_t Source)
1973:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1974:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->BDCR, RCC_BDCR_RTCSEL, Source);
1975:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1976:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1977:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1978:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get RTC Clock Source
1979:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         RTCSEL        LL_RCC_GetRTCClockSource
1980:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1981:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_NONE
1982:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_LSE
1983:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_LSI
1984:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RTC_CLKSOURCE_HSE_DIV32
1985:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1986:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetRTCClockSource(void)
1987:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1988:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->BDCR, RCC_BDCR_RTCSEL));
1989:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1990:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1991:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1992:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable RTC
1993:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         RTCEN         LL_RCC_EnableRTC
1994:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1995:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1996:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_EnableRTC(void)
1997:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1998:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_RTCEN);
1999:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2000:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2001:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2002:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable RTC
2003:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         RTCEN         LL_RCC_DisableRTC
2004:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2005:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2006:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_DisableRTC(void)
2007:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2008:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_RTCEN);
2009:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2010:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2011:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2012:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RTC has been enabled or not
2013:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         RTCEN         LL_RCC_IsEnabledRTC
2014:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2015:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2016:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsEnabledRTC(void)
2017:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2018:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->BDCR, RCC_BDCR_RTCEN) == (RCC_BDCR_RTCEN)) ? 1UL : 0UL);
2019:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2020:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2021:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2022:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Force the Backup domain reset
2023:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         BDRST         LL_RCC_ForceBackupDomainReset
2024:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2025:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2026:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ForceBackupDomainReset(void)
2027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2028:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_BDRST);
2029:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2030:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2031:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2032:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Release the Backup domain reset
2033:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         BDRST         LL_RCC_ReleaseBackupDomainReset
2034:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2035:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2036:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ReleaseBackupDomainReset(void)
2037:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2038:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_BDRST);
2039:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2040:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2041:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2042:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
2043:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2044:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2045:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2046:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_PLL PLL
2047:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
2048:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2049:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2050:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2051:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable PLL
2052:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           PLLON         LL_RCC_PLL_Enable
2053:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2054:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2055:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_Enable(void)
2056:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2057:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_PLLON);
2058:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2059:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2060:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2061:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable PLL
2062:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Cannot be disabled if the PLL clock is used as the system clock
2063:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           PLLON         LL_RCC_PLL_Disable
2064:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2065:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2066:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_Disable(void)
2067:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2068:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_PLLON);
2069:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2070:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2071:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2072:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if PLL Ready
2073:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           PLLRDY        LL_RCC_PLL_IsReady
2074:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2075:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2076:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_PLL_IsReady(void)
2077:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
  84              		.loc 1 2077 1 is_stmt 1 view -0
  85              		.cfi_startproc
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88              		@ link register save eliminated.
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CR, RCC_CR_PLLRDY) == (RCC_CR_PLLRDY)) ? 1UL : 0UL);
  89              		.loc 1 2078 3 view .LVU9
  90              		.loc 1 2078 12 is_stmt 0 view .LVU10
  91 0000 024B     		ldr	r3, .L8
  92 0002 1868     		ldr	r0, [r3]
2079:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
  93              		.loc 1 2079 1 view .LVU11
  94 0004 C0F34060 		ubfx	r0, r0, #25, #1
  95 0008 7047     		bx	lr
  96              	.L9:
  97 000a 00BF     		.align	2
  98              	.L8:
  99 000c 00100240 		.word	1073876992
 100              		.cfi_endproc
 101              	.LFE205:
 103              		.section	.text.LL_RCC_DeInit,"ax",%progbits
 104              		.align	1
 105              		.global	LL_RCC_DeInit
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 111              	LL_RCC_DeInit:
 112              	.LFB267:
 113              		.file 2 "../../..\\CubeG4\\src\\stm32g4xx_ll_rcc.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @file    stm32g4xx_ll_rcc.c
   4:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief   RCC LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #include "stm32g4xx_ll_rcc.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #ifdef  USE_FULL_ASSERT
  24:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   #include "stm32_assert.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #else
  26:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   #define assert_param(expr) ((void)0U)
  27:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif
  28:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @addtogroup STM32G4xx_LL_Driver
  29:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
  30:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
  31:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  32:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @addtogroup RCC_LL
  33:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
  34:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
  35:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /* Private types -------------------------------------------------------------*/
  37:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /* Private variables ---------------------------------------------------------*/
  38:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /* Private constants ---------------------------------------------------------*/
  39:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /* Private macros ------------------------------------------------------------*/
  40:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @addtogroup RCC_LL_Private_Macros
  41:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
  42:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
  43:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_USART_CLKSOURCE(__VALUE__)  (((__VALUE__) == LL_RCC_USART1_CLKSOURCE) \
  44:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_USART2_CLKSOURCE) \
  45:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_USART3_CLKSOURCE))
  46:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(RCC_CCIPR_UART5SEL)
  47:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_UART_CLKSOURCE(__VALUE__)    (((__VALUE__) == LL_RCC_UART4_CLKSOURCE) \
  48:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                              || ((__VALUE__) == LL_RCC_UART5_CLKSOURCE))
  49:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #elif defined(RCC_CCIPR_UART4SEL)
  50:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_UART_CLKSOURCE(__VALUE__)    ((__VALUE__) == LL_RCC_UART4_CLKSOURCE)
  51:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* RCC_CCIPR_UART5SEL*/
  52:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  53:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_LPUART_CLKSOURCE(__VALUE__) (((__VALUE__) == LL_RCC_LPUART1_CLKSOURCE))
  54:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  55:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(RCC_CCIPR2_I2C4SEL)
  56:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_I2C_CLKSOURCE(__VALUE__)    (((__VALUE__) == LL_RCC_I2C1_CLKSOURCE) \
  57:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_I2C2_CLKSOURCE) \
  58:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_I2C3_CLKSOURCE) \
  59:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_I2C4_CLKSOURCE))
  60:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  61:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #else
  62:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_I2C_CLKSOURCE(__VALUE__)    (((__VALUE__) == LL_RCC_I2C1_CLKSOURCE) \
  63:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_I2C2_CLKSOURCE) \
  64:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_I2C3_CLKSOURCE))
  65:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* RCC_CCIPR2_I2C4SEL */
  66:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_LPTIM_CLKSOURCE(__VALUE__)  (((__VALUE__) == LL_RCC_LPTIM1_CLKSOURCE))
  67:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  68:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_SAI_CLKSOURCE(__VALUE__)    ((__VALUE__) == LL_RCC_SAI1_CLKSOURCE)
  69:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  70:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_I2S_CLKSOURCE(__VALUE__)    ((__VALUE__) == LL_RCC_I2S_CLKSOURCE)
  71:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  72:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_RNG_CLKSOURCE(__VALUE__)    (((__VALUE__) == LL_RCC_RNG_CLKSOURCE))
  73:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  74:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_USB_CLKSOURCE(__VALUE__)    (((__VALUE__) == LL_RCC_USB_CLKSOURCE))
  75:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  76:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(ADC345_COMMON)
  77:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_ADC_CLKSOURCE(__VALUE__)    (((__VALUE__) == LL_RCC_ADC12_CLKSOURCE) \
  78:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                             || ((__VALUE__) == LL_RCC_ADC345_CLKSOURCE))
  79:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #else
  80:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_ADC_CLKSOURCE(__VALUE__)    (((__VALUE__) == LL_RCC_ADC12_CLKSOURCE))
  81:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* ADC345_COMMON */
  82:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  83:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(QUADSPI)
  84:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_QUADSPI_CLKSOURCE(__VALUE__)  (((__VALUE__) == LL_RCC_QUADSPI_CLKSOURCE))
  85:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* QUADSPI */
  86:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  87:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(FDCAN1)
  88:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #define IS_LL_RCC_FDCAN_CLKSOURCE(__VALUE__)  (((__VALUE__) == LL_RCC_FDCAN_CLKSOURCE))
  89:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* FDCAN1 */
  90:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  91:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
  92:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @}
  93:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
  94:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
  95:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /* Private function prototypes -----------------------------------------------*/
  96:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @defgroup RCC_LL_Private_Functions RCC Private functions
  97:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
  98:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
  99:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetSystemClockFreq(void);
 100:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetHCLKClockFreq(uint32_t SYSCLK_Frequency);
 101:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetPCLK1ClockFreq(uint32_t HCLK_Frequency);
 102:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetPCLK2ClockFreq(uint32_t HCLK_Frequency);
 103:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_PLL_GetFreqDomain_SYS(void);
 104:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_PLL_GetFreqDomain_ADC(void);
 105:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_PLL_GetFreqDomain_48M(void);
 106:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 107:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @}
 108:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 109:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 110:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 111:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /* Exported functions --------------------------------------------------------*/
 112:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @addtogroup RCC_LL_Exported_Functions
 113:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
 114:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 116:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @addtogroup RCC_LL_EF_Init
 117:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
 118:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 119:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 120:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 121:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Reset the RCC clock configuration to the default reset state.
 122:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   The default reset state of the clock configuration is given below:
 123:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - HSI  ON and used as system clock source
 124:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - HSE and PLL OFF
 125:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - AHB, APB1 and APB2 prescaler set to 1.
 126:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - CSS, MCO OFF
 127:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - All interrupts disabled
 128:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   This function doesn't modify the configuration of the
 129:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - Peripheral clocks
 130:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - LSI, LSE and RTC clocks
 131:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval An ErrorStatus enumeration value:
 132:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *          - SUCCESS: RCC registers are de-initialized
 133:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *          - ERROR: not applicable
 134:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 135:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** ErrorStatus LL_RCC_DeInit(void)
 136:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 114              		.loc 2 136 1 is_stmt 1 view -0
 115              		.cfi_startproc
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 137:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t vl_mask;
 118              		.loc 2 137 3 view .LVU13
 138:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 139:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Set HSION bit and wait for HSI READY bit */
 140:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_HSI_Enable();
 119              		.loc 2 140 3 view .LVU14
 120              	.LBB50:
 121              	.LBI50:
1005:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 122              		.loc 1 1005 22 view .LVU15
 123              	.LBB51:
1007:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 124              		.loc 1 1007 3 view .LVU16
 125 0000 164A     		ldr	r2, .L18
 126              	.LBE51:
 127              	.LBE50:
 136:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t vl_mask;
 128              		.loc 2 136 1 is_stmt 0 view .LVU17
 129 0002 08B5     		push	{r3, lr}
 130              		.cfi_def_cfa_offset 8
 131              		.cfi_offset 3, -8
 132              		.cfi_offset 14, -4
 133              	.LBB53:
 134              	.LBB52:
1007:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 135              		.loc 1 1007 3 view .LVU18
 136 0004 1368     		ldr	r3, [r2]
 137 0006 43F48073 		orr	r3, r3, #256
 138 000a 1360     		str	r3, [r2]
 139              	.L11:
 140              	.LBE52:
 141              	.LBE53:
 141:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   while (LL_RCC_HSI_IsReady() == 0U)
 142:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {}
 142              		.loc 2 142 4 is_stmt 1 discriminator 1 view .LVU19
 141:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   while (LL_RCC_HSI_IsReady() == 0U)
 143              		.loc 2 141 10 is_stmt 0 discriminator 1 view .LVU20
 144 000c FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 145              	.LVL0:
 141:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   while (LL_RCC_HSI_IsReady() == 0U)
 146              		.loc 2 141 9 discriminator 1 view .LVU21
 147 0010 0028     		cmp	r0, #0
 148 0012 FBD0     		beq	.L11
 143:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 144:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Set HSITRIM bits to reset value*/
 145:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_HSI_SetCalibTrimming(0x40U);
 149              		.loc 2 145 3 is_stmt 1 view .LVU22
 150              	.LBB54:
 151              	.LBI54:
1051:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 152              		.loc 1 1051 22 view .LVU23
 153              	.LVL1:
 154              	.LBB55:
1053:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 155              		.loc 1 1053 3 view .LVU24
 156 0014 5368     		ldr	r3, [r2, #4]
 157 0016 23F0FE43 		bic	r3, r3, #2130706432
 158 001a 43F08043 		orr	r3, r3, #1073741824
 159 001e 5360     		str	r3, [r2, #4]
 160              	.LVL2:
1053:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 161              		.loc 1 1053 3 is_stmt 0 view .LVU25
 162              	.LBE55:
 163              	.LBE54:
 146:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 147:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Reset whole CFGR register but keep HSI as system clock source */
 148:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_WriteReg(CFGR, LL_RCC_SYS_CLKSOURCE_HSI);
 164              		.loc 2 148 3 is_stmt 1 view .LVU26
 165 0020 0123     		movs	r3, #1
 166 0022 9360     		str	r3, [r2, #8]
 149:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_HSI) {};
 167              		.loc 2 149 3 view .LVU27
 168              	.L12:
 169              		.loc 2 149 71 discriminator 1 view .LVU28
 170              	.LBB56:
 171              	.LBI56:
1355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 172              		.loc 1 1355 26 discriminator 1 view .LVU29
 173              	.LBB57:
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 174              		.loc 1 1357 3 discriminator 1 view .LVU30
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 175              		.loc 1 1357 21 is_stmt 0 discriminator 1 view .LVU31
 176 0024 9368     		ldr	r3, [r2, #8]
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 177              		.loc 1 1357 10 discriminator 1 view .LVU32
 178 0026 03F00C03 		and	r3, r3, #12
 179              	.LBE57:
 180              	.LBE56:
 181              		.loc 2 149 8 discriminator 1 view .LVU33
 182 002a 042B     		cmp	r3, #4
 183 002c FAD1     		bne	.L12
 184              		.loc 2 149 72 is_stmt 1 discriminator 2 view .LVU34
 150:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 151:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Reset whole CR register but HSI in 2 steps in case HSEBYP is set */
 152:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_WriteReg(CR, RCC_CR_HSION);
 185              		.loc 2 152 3 discriminator 2 view .LVU35
 186 002e 4FF48073 		mov	r3, #256
 187 0032 1360     		str	r3, [r2]
 153:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_WriteReg(CR, RCC_CR_HSION);
 188              		.loc 2 153 3 discriminator 2 view .LVU36
 189 0034 1360     		str	r3, [r2]
 154:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 155:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Wait for PLL READY bit to be reset */
 156:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   while (LL_RCC_PLL_IsReady() != 0U)
 190              		.loc 2 156 3 discriminator 2 view .LVU37
 191              	.L13:
 157:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {}
 192              		.loc 2 157 4 discriminator 1 view .LVU38
 156:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {}
 193              		.loc 2 156 10 is_stmt 0 discriminator 1 view .LVU39
 194 0036 FFF7FEFF 		bl	LL_RCC_PLL_IsReady
 195              	.LVL3:
 156:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {}
 196              		.loc 2 156 9 discriminator 1 view .LVU40
 197 003a 0028     		cmp	r0, #0
 198 003c FBD1     		bne	.L13
 158:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 159:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Reset PLLCFGR register */
 160:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_WriteReg(PLLCFGR, 16U << RCC_PLLCFGR_PLLN_Pos);
 199              		.loc 2 160 3 is_stmt 1 view .LVU41
 200 003e 4FF48051 		mov	r1, #4096
 161:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 162:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Disable all interrupts */
 163:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_WriteReg(CIER, 0x00000000U);
 164:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 165:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Clear all interrupt flags */
 166:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   vl_mask = RCC_CICR_LSIRDYC | RCC_CICR_LSERDYC | RCC_CICR_HSIRDYC | RCC_CICR_HSERDYC | RCC_CICR_PL
 167:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             RCC_CICR_HSI48RDYC | RCC_CICR_CSSC | RCC_CICR_LSECSSC;
 168:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 169:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_WriteReg(CICR, vl_mask);
 201              		.loc 2 169 3 is_stmt 0 view .LVU42
 202 0042 40F23B73 		movw	r3, #1851
 160:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 203              		.loc 2 160 3 view .LVU43
 204 0046 D160     		str	r1, [r2, #12]
 163:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 205              		.loc 2 163 3 is_stmt 1 view .LVU44
 206 0048 9061     		str	r0, [r2, #24]
 166:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             RCC_CICR_HSI48RDYC | RCC_CICR_CSSC | RCC_CICR_LSECSSC;
 207              		.loc 2 166 3 view .LVU45
 208              	.LVL4:
 209              		.loc 2 169 3 view .LVU46
 210 004a 1362     		str	r3, [r2, #32]
 170:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 171:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Clear reset flags */
 172:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   LL_RCC_ClearResetFlags();
 211              		.loc 2 172 3 view .LVU47
 212              	.LBB58:
 213              	.LBI58:
2080:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2081:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2082:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure PLL used for SYSCLK Domain
2083:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note PLL Source and PLLM Divider can be written only when PLL
2084:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       is disabled.
2085:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note PLLN/PLLR can be written only when PLL is disabled.
2086:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLSRC        LL_RCC_PLL_ConfigDomain_SYS\n
2087:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLM          LL_RCC_PLL_ConfigDomain_SYS\n
2088:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLN          LL_RCC_PLL_ConfigDomain_SYS\n
2089:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLR          LL_RCC_PLL_ConfigDomain_SYS
2090:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
2091:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_NONE
2092:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSI
2093:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSE
2094:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLM This parameter can be one of the following values:
2095:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
2096:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
2097:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
2098:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
2099:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
2100:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
2101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
2102:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
2103:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
2104:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
2105:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
2106:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
2107:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
2108:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
2109:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
2110:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
2111:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLN Between Min_Data = 8 and Max_Data = 127
2112:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLR This parameter can be one of the following values:
2113:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_2
2114:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_4
2115:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_6
2116:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_8
2117:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2118:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2119:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_ConfigDomain_SYS(uint32_t Source, uint32_t PLLM, uint32_t PLLN, uin
2120:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC | RCC_PLLCFGR_PLLM | RCC_PLLCFGR_PLLN | RCC_PLLCFGR_P
2122:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLR);
2123:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2124:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2125:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2126:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure PLL used for ADC domain clock
2127:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note PLL Source and PLLM Divider can be written only when PLL
2128:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       is disabled.
2129:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note PLLN/PLLP can be written only when PLL is disabled.
2130:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLSRC        LL_RCC_PLL_ConfigDomain_ADC\n
2131:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLM          LL_RCC_PLL_ConfigDomain_ADC\n
2132:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLN          LL_RCC_PLL_ConfigDomain_ADC\n
2133:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLPDIV       LL_RCC_PLL_ConfigDomain_ADC
2134:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
2135:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_NONE
2136:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSI
2137:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSE
2138:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLM This parameter can be one of the following values:
2139:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
2140:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
2141:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
2142:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
2143:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
2144:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
2145:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
2146:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
2147:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
2148:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
2149:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
2150:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
2151:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
2152:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
2153:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
2154:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
2155:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLN Between Min_Data = 8 and Max_Data = 127
2156:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLP This parameter can be one of the following values:
2157:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_2
2158:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_3
2159:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_4
2160:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_5
2161:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_6
2162:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_7
2163:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_8
2164:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_9
2165:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_10
2166:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_11
2167:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_12
2168:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_13
2169:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_14
2170:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_15
2171:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_16
2172:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_17
2173:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_18
2174:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_19
2175:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_20
2176:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_21
2177:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_22
2178:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_23
2179:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_24
2180:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_25
2181:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_26
2182:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_27
2183:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_28
2184:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_29
2185:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_30
2186:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_31
2187:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2188:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2189:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_ConfigDomain_ADC(uint32_t Source, uint32_t PLLM, uint32_t PLLN, uin
2190:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2191:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC | RCC_PLLCFGR_PLLM | RCC_PLLCFGR_PLLN | RCC_PLLCFGR_P
2192:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLP);
2193:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2194:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2195:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2196:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure PLL used for 48Mhz domain clock
2197:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note PLL Source and PLLM Divider can be written only when PLL,
2198:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       is disabled.
2199:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note PLLN/PLLQ can be written only when PLL is disabled.
2200:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note This  can be selected for USB, RNG
2201:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLSRC        LL_RCC_PLL_ConfigDomain_48M\n
2202:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLM          LL_RCC_PLL_ConfigDomain_48M\n
2203:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLN          LL_RCC_PLL_ConfigDomain_48M\n
2204:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         PLLCFGR      PLLQ          LL_RCC_PLL_ConfigDomain_48M
2205:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
2206:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_NONE
2207:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSI
2208:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSE
2209:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLM This parameter can be one of the following values:
2210:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
2211:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
2212:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
2213:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
2214:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
2215:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
2216:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
2217:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
2218:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
2219:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
2220:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
2221:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
2222:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
2223:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
2224:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
2225:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
2226:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLN Between Min_Data = 8 and Max_Data = 127
2227:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  PLLQ This parameter can be one of the following values:
2228:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_2
2229:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_4
2230:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_6
2231:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_8
2232:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2233:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2234:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_ConfigDomain_48M(uint32_t Source, uint32_t PLLM, uint32_t PLLN, uin
2235:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2236:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC | RCC_PLLCFGR_PLLM | RCC_PLLCFGR_PLLN | RCC_PLLCFGR_P
2237:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLQ);
2238:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2239:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2240:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2241:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure PLL clock source
2242:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLSRC        LL_RCC_PLL_SetMainSource
2243:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param PLLSource This parameter can be one of the following values:
2244:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_NONE
2245:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSI
2246:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSE
2247:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2248:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2249:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_SetMainSource(uint32_t PLLSource)
2250:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2251:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC, PLLSource);
2252:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2253:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2254:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2255:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get the oscillator used as PLL clock source.
2256:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLSRC        LL_RCC_PLL_GetMainSource
2257:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
2258:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_NONE
2259:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSI
2260:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLSOURCE_HSE
2261:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_PLL_GetMainSource(void)
2263:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC));
2265:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2266:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2267:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2268:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get Main PLL multiplication factor for VCO
2269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLN          LL_RCC_PLL_GetN
2270:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Between Min_Data = 8 and Max_Data = 127
2271:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_PLL_GetN(void)
2273:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >>  RCC_PLLCFGR_PLLN_Pos);
2275:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2276:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2277:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2278:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get Main PLL division factor for PLLP
2279:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Used for PLLADCCLK (ADC clock)
2280:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLPDIV       LL_RCC_PLL_GetP\n
2281:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLP          LL_RCC_PLL_GetP
2282:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
2283:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_2
2284:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_3
2285:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_4
2286:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_5
2287:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_6
2288:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_7
2289:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_8
2290:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_9
2291:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_10
2292:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_11
2293:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_12
2294:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_13
2295:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_14
2296:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_15
2297:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_16
2298:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_17
2299:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_18
2300:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_19
2301:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_20
2302:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_21
2303:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_22
2304:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_23
2305:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_24
2306:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_25
2307:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_26
2308:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_27
2309:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_28
2310:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_29
2311:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_30
2312:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_31
2313:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2314:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_PLL_GetP(void)
2315:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t) ((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) != 0U) ? READ_BIT(RCC->PLLCFGR, R
2317:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2318:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2319:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2320:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get Main PLL division factor for PLLQ
2321:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Used for PLL48M1CLK selected for USB, RNG (48 MHz clock)
2322:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLQ          LL_RCC_PLL_GetQ
2323:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
2324:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_2
2325:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_4
2326:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_6
2327:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_8
2328:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2329:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_PLL_GetQ(void)
2330:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2331:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ));
2332:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2333:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2334:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2335:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get Main PLL division factor for PLLR
2336:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Used for PLLCLK (system clock)
2337:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLR          LL_RCC_PLL_GetR
2338:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
2339:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_2
2340:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_4
2341:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_6
2342:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_8
2343:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2344:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_PLL_GetR(void)
2345:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2346:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR));
2347:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2348:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2349:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2350:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get Division factor for the main PLL and other PLL
2351:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLM          LL_RCC_PLL_GetDivider
2352:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
2353:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
2354:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
2355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
2356:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
2357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
2358:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
2359:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
2360:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
2361:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
2362:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
2363:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
2364:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
2365:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
2366:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
2367:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
2368:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
2369:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_PLL_GetDivider(void)
2371:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM));
2373:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2374:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2376:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable PLL output mapped on ADC domain clock
2377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLPEN        LL_RCC_PLL_EnableDomain_ADC
2378:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2379:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2380:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_EnableDomain_ADC(void)
2381:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2382:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPEN);
2383:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2384:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2385:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2386:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable PLL output mapped on ADC domain clock
2387:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Cannot be disabled if the PLL clock is used as the system
2388:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       clock
2389:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note In order to save power, when the PLLCLK  of the PLL is
2390:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       not used,  should be 0
2391:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLPEN        LL_RCC_PLL_DisableDomain_ADC
2392:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2393:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2394:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_DisableDomain_ADC(void)
2395:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2396:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPEN);
2397:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2398:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2399:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2400:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable PLL output mapped on 48MHz domain clock
2401:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLQEN        LL_RCC_PLL_EnableDomain_48M
2402:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2403:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2404:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_EnableDomain_48M(void)
2405:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2406:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQEN);
2407:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2408:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2410:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable PLL output mapped on 48MHz domain clock
2411:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Cannot be disabled if the PLL clock is used as the system
2412:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       clock
2413:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note In order to save power, when the PLLCLK  of the PLL is
2414:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       not used,  should be 0
2415:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLQEN        LL_RCC_PLL_DisableDomain_48M
2416:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2417:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2418:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_DisableDomain_48M(void)
2419:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2420:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQEN);
2421:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2422:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2423:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2424:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable PLL output mapped on SYSCLK domain
2425:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLREN        LL_RCC_PLL_EnableDomain_SYS
2426:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2427:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_EnableDomain_SYS(void)
2429:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2430:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLREN);
2431:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2432:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2433:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2434:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable PLL output mapped on SYSCLK domain
2435:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Cannot be disabled if the PLL clock is used as the system
2436:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       clock
2437:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note In order to save power, when the PLLCLK  of the PLL is
2438:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       not used, Main PLL  should be 0
2439:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll PLLCFGR      PLLREN        LL_RCC_PLL_DisableDomain_SYS
2440:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2441:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2442:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_PLL_DisableDomain_SYS(void)
2443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2444:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLREN);
2445:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2446:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2447:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2448:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
2449:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2450:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2451:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_FLAG_Management FLAG Management
2452:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
2453:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2454:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2455:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2456:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear LSI ready interrupt flag
2457:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR         LSIRDYC       LL_RCC_ClearFlag_LSIRDY
2458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2459:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2460:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_LSIRDY(void)
2461:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2462:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_LSIRDYC);
2463:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2464:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2465:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2466:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear LSE ready interrupt flag
2467:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR         LSERDYC       LL_RCC_ClearFlag_LSERDY
2468:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2469:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2470:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_LSERDY(void)
2471:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2472:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_LSERDYC);
2473:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2474:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2475:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2476:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear HSI ready interrupt flag
2477:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR         HSIRDYC       LL_RCC_ClearFlag_HSIRDY
2478:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2479:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2480:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_HSIRDY(void)
2481:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2482:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_HSIRDYC);
2483:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2484:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2485:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2486:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear HSE ready interrupt flag
2487:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR         HSERDYC       LL_RCC_ClearFlag_HSERDY
2488:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2489:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2490:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_HSERDY(void)
2491:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2492:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_HSERDYC);
2493:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2494:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2495:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2496:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear PLL ready interrupt flag
2497:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR         PLLRDYC       LL_RCC_ClearFlag_PLLRDY
2498:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2499:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2500:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_PLLRDY(void)
2501:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2502:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_PLLRDYC);
2503:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2504:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2505:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2506:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear HSI48 ready interrupt flag
2507:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR          HSI48RDYC     LL_RCC_ClearFlag_HSI48RDY
2508:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2509:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2510:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_HSI48RDY(void)
2511:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2512:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_HSI48RDYC);
2513:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2514:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2515:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2516:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear Clock security system interrupt flag
2517:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR         CSSC          LL_RCC_ClearFlag_HSECSS
2518:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2519:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2520:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_HSECSS(void)
2521:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2522:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_CSSC);
2523:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2524:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2525:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2526:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Clear LSE Clock security system interrupt flag
2527:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CICR         LSECSSC       LL_RCC_ClearFlag_LSECSS
2528:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2529:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2530:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearFlag_LSECSS(void)
2531:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2532:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CICR, RCC_CICR_LSECSSC);
2533:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2534:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2535:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2536:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if LSI ready interrupt occurred or not
2537:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIFR         LSIRDYF       LL_RCC_IsActiveFlag_LSIRDY
2538:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2539:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2540:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_LSIRDY(void)
2541:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2542:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_LSIRDYF) == (RCC_CIFR_LSIRDYF)) ? 1UL : 0UL);
2543:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2544:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2545:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2546:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if LSE ready interrupt occurred or not
2547:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIFR         LSERDYF       LL_RCC_IsActiveFlag_LSERDY
2548:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2549:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2550:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_LSERDY(void)
2551:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2552:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_LSERDYF) == (RCC_CIFR_LSERDYF)) ? 1UL : 0UL);
2553:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2554:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2555:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2556:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSI ready interrupt occurred or not
2557:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIFR         HSIRDYF       LL_RCC_IsActiveFlag_HSIRDY
2558:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2559:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2560:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_HSIRDY(void)
2561:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2562:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_HSIRDYF) == (RCC_CIFR_HSIRDYF)) ? 1UL : 0UL);
2563:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2564:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2565:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2566:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSE ready interrupt occurred or not
2567:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIFR         HSERDYF       LL_RCC_IsActiveFlag_HSERDY
2568:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2569:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2570:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_HSERDY(void)
2571:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2572:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_HSERDYF) == (RCC_CIFR_HSERDYF)) ? 1UL : 0UL);
2573:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2574:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2575:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2576:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if PLL ready interrupt occurred or not
2577:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIFR         PLLRDYF       LL_RCC_IsActiveFlag_PLLRDY
2578:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2579:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2580:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_PLLRDY(void)
2581:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2582:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_PLLRDYF) == (RCC_CIFR_PLLRDYF)) ? 1UL : 0UL);
2583:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2584:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2585:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2586:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSI48 ready interrupt occurred or not
2587:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIR          HSI48RDYF     LL_RCC_IsActiveFlag_HSI48RDY
2588:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2589:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2590:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_HSI48RDY(void)
2591:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2592:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_HSI48RDYF) == (RCC_CIFR_HSI48RDYF)) ? 1UL : 0UL);
2593:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2594:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2595:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2596:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if Clock security system interrupt occurred or not
2597:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIFR         CSSF          LL_RCC_IsActiveFlag_HSECSS
2598:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2599:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2600:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_HSECSS(void)
2601:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2602:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_CSSF) == (RCC_CIFR_CSSF)) ? 1UL : 0UL);
2603:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2605:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2606:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if LSE Clock security system interrupt occurred or not
2607:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CIFR         LSECSSF       LL_RCC_IsActiveFlag_LSECSS
2608:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2609:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2610:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_LSECSS(void)
2611:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2612:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CIFR, RCC_CIFR_LSECSSF) == (RCC_CIFR_LSECSSF)) ? 1UL : 0UL);
2613:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2614:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2615:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2616:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RCC flag Independent Watchdog reset is set or not.
2617:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          IWDGRSTF      LL_RCC_IsActiveFlag_IWDGRST
2618:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2619:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2620:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_IWDGRST(void)
2621:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2622:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_IWDGRSTF) == (RCC_CSR_IWDGRSTF)) ? 1UL : 0UL);
2623:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2624:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2625:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2626:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RCC flag Low Power reset is set or not.
2627:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          LPWRRSTF      LL_RCC_IsActiveFlag_LPWRRST
2628:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2629:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2630:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_LPWRRST(void)
2631:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2632:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_LPWRRSTF) == (RCC_CSR_LPWRRSTF)) ? 1UL : 0UL);
2633:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2634:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2635:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2636:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RCC flag Option byte reset is set or not.
2637:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          OBLRSTF       LL_RCC_IsActiveFlag_OBLRST
2638:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2639:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2640:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_OBLRST(void)
2641:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2642:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_OBLRSTF) == (RCC_CSR_OBLRSTF)) ? 1UL : 0UL);
2643:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2644:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2645:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2646:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RCC flag Pin reset is set or not.
2647:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          PINRSTF       LL_RCC_IsActiveFlag_PINRST
2648:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2649:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2650:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_PINRST(void)
2651:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2652:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_PINRSTF) == (RCC_CSR_PINRSTF)) ? 1UL : 0UL);
2653:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2654:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2655:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2656:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RCC flag Software reset is set or not.
2657:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          SFTRSTF       LL_RCC_IsActiveFlag_SFTRST
2658:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2659:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2660:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_SFTRST(void)
2661:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2662:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_SFTRSTF) == (RCC_CSR_SFTRSTF)) ? 1UL : 0UL);
2663:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2664:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2665:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2666:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RCC flag Window Watchdog reset is set or not.
2667:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          WWDGRSTF      LL_RCC_IsActiveFlag_WWDGRST
2668:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2669:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2670:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_WWDGRST(void)
2671:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2672:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_WWDGRSTF) == (RCC_CSR_WWDGRSTF)) ? 1UL : 0UL);
2673:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2674:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2675:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2676:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if RCC flag BOR reset is set or not.
2677:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          BORRSTF       LL_RCC_IsActiveFlag_BORRST
2678:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
2679:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2680:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_IsActiveFlag_BORRST(void)
2681:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2682:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_BORRSTF) == (RCC_CSR_BORRSTF)) ? 1UL : 0UL);
2683:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
2684:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
2685:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
2686:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set RMVF bit to clear the reset flags.
2687:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          RMVF          LL_RCC_ClearResetFlags
2688:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
2689:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
2690:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ClearResetFlags(void)
 214              		.loc 1 2690 22 view .LVU48
 215              	.LBB59:
2691:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2692:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CSR, RCC_CSR_RMVF);
 216              		.loc 1 2692 3 view .LVU49
 217 004c D2F89430 		ldr	r3, [r2, #148]
 218 0050 43F40003 		orr	r3, r3, #8388608
 219 0054 C2F89430 		str	r3, [r2, #148]
 220              	.LBE59:
 221              	.LBE58:
 173:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 174:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return SUCCESS;
 222              		.loc 2 174 3 view .LVU50
 175:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 223              		.loc 2 175 1 is_stmt 0 view .LVU51
 224 0058 08BD     		pop	{r3, pc}
 225              	.L19:
 226 005a 00BF     		.align	2
 227              	.L18:
 228 005c 00100240 		.word	1073876992
 229              		.cfi_endproc
 230              	.LFE267:
 232              		.section	.text.RCC_GetHCLKClockFreq,"ax",%progbits
 233              		.align	1
 234              		.global	RCC_GetHCLKClockFreq
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu fpv4-sp-d16
 240              	RCC_GetHCLKClockFreq:
 241              	.LVL5:
 242              	.LFB281:
 176:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 177:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 178:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @}
 179:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 180:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 181:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @addtogroup RCC_LL_EF_Get_Freq
 182:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return the frequencies of different on chip clocks;  System, AHB, APB1 and APB2 buses c
 183:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         and different peripheral clocks available on the device.
 184:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   If SYSCLK source is HSI, function returns values based on HSI_VALUE(**)
 185:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   If SYSCLK source is HSE, function returns values based on HSE_VALUE(***)
 186:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   If SYSCLK source is PLL, function returns values based on HSE_VALUE(***)
 187:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         or HSI_VALUE(**) multiplied/divided by the PLL factors.
 188:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   (**) HSI_VALUE is a constant defined in this file (default value
 189:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *              16 MHz) but the real value may vary depending on the variations
 190:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *              in voltage and temperature.
 191:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   (***) HSE_VALUE is a constant defined in this file (default value
 192:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *               8 MHz), user has to ensure that HSE_VALUE is same as the real
 193:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *               frequency of the crystal used. Otherwise, this function may
 194:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *               have wrong result.
 195:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   The result of this function could be incorrect when using fractional
 196:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         value for HSE crystal.
 197:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   This function can be used by the user application to compute the
 198:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         baud-rate for the communication peripherals or configure other parameters.
 199:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
 200:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 201:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 202:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 203:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return the frequencies of different on chip clocks;  System, AHB, APB1 and APB2 buses c
 204:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @note   Each time SYSCLK, HCLK, PCLK1 and/or PCLK2 clock changes, this function
 205:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         must be called to update structure fields. Otherwise, any
 206:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         configuration based on this function will be incorrect.
 207:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  RCC_Clocks pointer to a @ref LL_RCC_ClocksTypeDef structure which will hold the clocks 
 208:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval None
 209:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 210:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** void LL_RCC_GetSystemClocksFreq(LL_RCC_ClocksTypeDef *RCC_Clocks)
 211:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 212:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Get SYSCLK frequency */
 213:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   RCC_Clocks->SYSCLK_Frequency = RCC_GetSystemClockFreq();
 214:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 215:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* HCLK clock frequency */
 216:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   RCC_Clocks->HCLK_Frequency   = RCC_GetHCLKClockFreq(RCC_Clocks->SYSCLK_Frequency);
 217:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 218:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* PCLK1 clock frequency */
 219:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   RCC_Clocks->PCLK1_Frequency  = RCC_GetPCLK1ClockFreq(RCC_Clocks->HCLK_Frequency);
 220:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 221:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* PCLK2 clock frequency */
 222:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   RCC_Clocks->PCLK2_Frequency  = RCC_GetPCLK2ClockFreq(RCC_Clocks->HCLK_Frequency);
 223:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 224:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 225:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 226:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return USARTx clock frequency
 227:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  USARTxSource This parameter can be one of the following values:
 228:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE
 229:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE
 230:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE
 231:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
 232:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval USART clock frequency (in Hz)
 233:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator (HSI or LSE) is not ready
 234:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 235:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetUSARTClockFreq(uint32_t USARTxSource)
 236:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 237:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t usart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 238:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 239:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 240:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_USART_CLKSOURCE(USARTxSource));
 241:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 242:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (USARTxSource == LL_RCC_USART1_CLKSOURCE)
 243:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 244:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* USART1CLK clock frequency */
 245:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetUSARTClockSource(USARTxSource))
 246:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 247:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART1_CLKSOURCE_SYSCLK: /* USART1 Clock is System Clock */
 248:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         usart_frequency = RCC_GetSystemClockFreq();
 249:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 250:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 251:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART1_CLKSOURCE_HSI:    /* USART1 Clock is HSI Osc. */
 252:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 253:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 254:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           usart_frequency = HSI_VALUE;
 255:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 256:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 257:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 258:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART1_CLKSOURCE_LSE:    /* USART1 Clock is LSE Osc. */
 259:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_LSE_IsReady() != 0U)
 260:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 261:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           usart_frequency = LSE_VALUE;
 262:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 263:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 264:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 265:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART1_CLKSOURCE_PCLK2:  /* USART1 Clock is PCLK2 */
 266:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 267:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         usart_frequency = RCC_GetPCLK2ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 268:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 269:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 270:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 271:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   else if (USARTxSource == LL_RCC_USART2_CLKSOURCE)
 272:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 273:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* USART2CLK clock frequency */
 274:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetUSARTClockSource(USARTxSource))
 275:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 276:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART2_CLKSOURCE_SYSCLK: /* USART2 Clock is System Clock */
 277:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         usart_frequency = RCC_GetSystemClockFreq();
 278:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 279:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 280:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART2_CLKSOURCE_HSI:    /* USART2 Clock is HSI Osc. */
 281:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 282:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 283:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           usart_frequency = HSI_VALUE;
 284:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 285:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 286:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 287:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART2_CLKSOURCE_LSE:    /* USART2 Clock is LSE Osc. */
 288:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_LSE_IsReady() != 0U)
 289:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 290:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           usart_frequency = LSE_VALUE;
 291:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 292:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 293:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 294:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_USART2_CLKSOURCE_PCLK1:  /* USART2 Clock is PCLK1 */
 295:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 296:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         usart_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 297:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 298:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 299:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 300:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   else
 301:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 302:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     if (USARTxSource == LL_RCC_USART3_CLKSOURCE)
 303:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 304:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       /* USART3CLK clock frequency */
 305:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       switch (LL_RCC_GetUSARTClockSource(USARTxSource))
 306:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 307:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         case LL_RCC_USART3_CLKSOURCE_SYSCLK: /* USART3 Clock is System Clock */
 308:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           usart_frequency = RCC_GetSystemClockFreq();
 309:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           break;
 310:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 311:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         case LL_RCC_USART3_CLKSOURCE_HSI:    /* USART3 Clock is HSI Osc. */
 312:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           if (LL_RCC_HSI_IsReady() != 0U)
 313:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           {
 314:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             usart_frequency = HSI_VALUE;
 315:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           }
 316:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           break;
 317:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 318:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         case LL_RCC_USART3_CLKSOURCE_LSE:    /* USART3 Clock is LSE Osc. */
 319:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           if (LL_RCC_LSE_IsReady() != 0U)
 320:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           {
 321:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             usart_frequency = LSE_VALUE;
 322:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           }
 323:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           break;
 324:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 325:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         case LL_RCC_USART3_CLKSOURCE_PCLK1:  /* USART3 Clock is PCLK1 */
 326:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         default:
 327:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           usart_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 328:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           break;
 329:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 330:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 331:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 332:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return usart_frequency;
 333:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 334:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 335:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(RCC_CCIPR_UART4SEL)
 336:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 337:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return UARTx clock frequency
 338:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  UARTxSource This parameter can be one of the following values:
 339:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE (*)
 340:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE (*)
 341:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
 342:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         (*) value not defined in all devices.
 343:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval UART clock frequency (in Hz)
 344:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator (HSI or LSE) is not ready
 345:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 346:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetUARTClockFreq(uint32_t UARTxSource)
 347:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 348:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t uart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 349:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 350:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 351:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_UART_CLKSOURCE(UARTxSource));
 352:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 353:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (UARTxSource == LL_RCC_UART4_CLKSOURCE)
 354:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 355:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* UART4CLK clock frequency */
 356:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetUARTClockSource(UARTxSource))
 357:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 358:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART4_CLKSOURCE_SYSCLK: /* UART4 Clock is System Clock */
 359:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         uart_frequency = RCC_GetSystemClockFreq();
 360:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 361:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 362:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART4_CLKSOURCE_HSI:    /* UART4 Clock is HSI Osc. */
 363:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 364:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 365:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           uart_frequency = HSI_VALUE;
 366:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 367:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 368:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 369:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART4_CLKSOURCE_LSE:    /* UART4 Clock is LSE Osc. */
 370:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_LSE_IsReady() != 0U)
 371:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 372:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           uart_frequency = LSE_VALUE;
 373:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 374:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 375:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 376:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART4_CLKSOURCE_PCLK1:  /* UART4 Clock is PCLK1 */
 377:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 378:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         uart_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 379:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 380:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 381:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 382:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 383:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(RCC_CCIPR_UART5SEL)
 384:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (UARTxSource == LL_RCC_UART5_CLKSOURCE)
 385:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 386:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* UART5CLK clock frequency */
 387:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetUARTClockSource(UARTxSource))
 388:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 389:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART5_CLKSOURCE_SYSCLK: /* UART5 Clock is System Clock */
 390:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         uart_frequency = RCC_GetSystemClockFreq();
 391:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 392:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 393:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART5_CLKSOURCE_HSI:    /* UART5 Clock is HSI Osc. */
 394:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 395:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 396:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           uart_frequency = HSI_VALUE;
 397:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 398:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 399:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 400:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART5_CLKSOURCE_LSE:    /* UART5 Clock is LSE Osc. */
 401:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_LSE_IsReady() != 0U)
 402:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 403:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           uart_frequency = LSE_VALUE;
 404:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 405:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 406:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 407:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_UART5_CLKSOURCE_PCLK1:  /* UART5 Clock is PCLK1 */
 408:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 409:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         uart_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 410:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 411:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 412:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 413:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* RCC_CCIPR_UART5SEL */
 414:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 415:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return uart_frequency;
 416:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 417:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* RCC_CCIPR_UART4SEL */
 418:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 419:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 420:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return I2Cx clock frequency
 421:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  I2CxSource This parameter can be one of the following values:
 422:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE
 423:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE
 424:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE
 425:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE (*)
 426:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
 427:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         (*) value not defined in all devices.
 428:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval I2C clock frequency (in Hz)
 429:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that HSI oscillator is not ready
 430:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 431:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetI2CClockFreq(uint32_t I2CxSource)
 432:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 433:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t i2c_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 434:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 435:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 436:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_I2C_CLKSOURCE(I2CxSource));
 437:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 438:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (I2CxSource == LL_RCC_I2C1_CLKSOURCE)
 439:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 440:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* I2C1 CLK clock frequency */
 441:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetI2CClockSource(I2CxSource))
 442:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 443:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2C1_CLKSOURCE_SYSCLK: /* I2C1 Clock is System Clock */
 444:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         i2c_frequency = RCC_GetSystemClockFreq();
 445:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 446:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 447:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2C1_CLKSOURCE_HSI:    /* I2C1 Clock is HSI Osc. */
 448:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 449:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 450:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           i2c_frequency = HSI_VALUE;
 451:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 452:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 453:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 454:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2C1_CLKSOURCE_PCLK1:  /* I2C1 Clock is PCLK1 */
 455:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 456:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         i2c_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 457:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 458:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 459:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 460:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   else if (I2CxSource == LL_RCC_I2C2_CLKSOURCE)
 461:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 462:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* I2C2 CLK clock frequency */
 463:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetI2CClockSource(I2CxSource))
 464:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 465:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2C2_CLKSOURCE_SYSCLK: /* I2C2 Clock is System Clock */
 466:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         i2c_frequency = RCC_GetSystemClockFreq();
 467:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 468:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 469:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2C2_CLKSOURCE_HSI:    /* I2C2 Clock is HSI Osc. */
 470:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 471:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 472:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           i2c_frequency = HSI_VALUE;
 473:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 474:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 475:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 476:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2C2_CLKSOURCE_PCLK1:  /* I2C2 Clock is PCLK1 */
 477:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 478:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         i2c_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 479:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 480:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 481:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 482:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   else
 483:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 484:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     if (I2CxSource == LL_RCC_I2C3_CLKSOURCE)
 485:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 486:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       /* I2C3 CLK clock frequency */
 487:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       switch (LL_RCC_GetI2CClockSource(I2CxSource))
 488:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 489:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         case LL_RCC_I2C3_CLKSOURCE_SYSCLK: /* I2C3 Clock is System Clock */
 490:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           i2c_frequency = RCC_GetSystemClockFreq();
 491:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           break;
 492:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 493:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         case LL_RCC_I2C3_CLKSOURCE_HSI:    /* I2C3 Clock is HSI Osc. */
 494:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           if (LL_RCC_HSI_IsReady() != 0U)
 495:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           {
 496:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             i2c_frequency = HSI_VALUE;
 497:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           }
 498:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           break;
 499:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 500:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         case LL_RCC_I2C3_CLKSOURCE_PCLK1:  /* I2C3 Clock is PCLK1 */
 501:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         default:
 502:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           i2c_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 503:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           break;
 504:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 505:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 506:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(RCC_CCIPR2_I2C4SEL)
 507:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     else
 508:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 509:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (I2CxSource == LL_RCC_I2C4_CLKSOURCE)
 510:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 511:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         /* I2C4 CLK clock frequency */
 512:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         switch (LL_RCC_GetI2CClockSource(I2CxSource))
 513:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 514:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           case LL_RCC_I2C4_CLKSOURCE_SYSCLK: /* I2C4 Clock is System Clock */
 515:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             i2c_frequency = RCC_GetSystemClockFreq();
 516:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             break;
 517:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 518:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           case LL_RCC_I2C4_CLKSOURCE_HSI:    /* I2C4 Clock is HSI Osc. */
 519:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             if (LL_RCC_HSI_IsReady() != 0U)
 520:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             {
 521:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****               i2c_frequency = HSI_VALUE;
 522:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             }
 523:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             break;
 524:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 525:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           case LL_RCC_I2C4_CLKSOURCE_PCLK1:  /* I2C4 Clock is PCLK1 */
 526:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           default:
 527:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             i2c_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 528:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****             break;
 529:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 530:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 531:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 532:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /*RCC_CCIPR2_I2C4SEL*/
 533:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 534:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 535:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return i2c_frequency;
 536:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 537:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 538:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 539:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 540:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return LPUARTx clock frequency
 541:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  LPUARTxSource This parameter can be one of the following values:
 542:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE
 543:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval LPUART clock frequency (in Hz)
 544:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator (HSI or LSE) is not ready
 545:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 546:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetLPUARTClockFreq(uint32_t LPUARTxSource)
 547:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 548:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t lpuart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 549:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 550:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 551:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_LPUART_CLKSOURCE(LPUARTxSource));
 552:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 553:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* LPUART1CLK clock frequency */
 554:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (LL_RCC_GetLPUARTClockSource(LPUARTxSource))
 555:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 556:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_LPUART1_CLKSOURCE_SYSCLK: /* LPUART1 Clock is System Clock */
 557:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       lpuart_frequency = RCC_GetSystemClockFreq();
 558:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 559:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 560:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_LPUART1_CLKSOURCE_HSI:    /* LPUART1 Clock is HSI Osc. */
 561:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_HSI_IsReady() != 0U)
 562:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 563:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         lpuart_frequency = HSI_VALUE;
 564:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 565:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 566:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 567:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_LPUART1_CLKSOURCE_LSE:    /* LPUART1 Clock is LSE Osc. */
 568:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_LSE_IsReady() != 0U)
 569:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 570:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         lpuart_frequency = LSE_VALUE;
 571:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 572:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 573:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 574:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_LPUART1_CLKSOURCE_PCLK1:  /* LPUART1 Clock is PCLK1 */
 575:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
 576:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       lpuart_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 577:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 578:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 579:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 580:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return lpuart_frequency;
 581:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 582:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 583:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 584:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return LPTIMx clock frequency
 585:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  LPTIMxSource This parameter can be one of the following values:
 586:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE
 587:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval LPTIM clock frequency (in Hz)
 588:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator (HSI, LSI or LSE) is not r
 589:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 590:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetLPTIMClockFreq(uint32_t LPTIMxSource)
 591:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 592:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t lptim_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 593:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 594:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 595:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_LPTIM_CLKSOURCE(LPTIMxSource));
 596:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 597:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (LPTIMxSource == LL_RCC_LPTIM1_CLKSOURCE)
 598:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 599:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* LPTIM1CLK clock frequency */
 600:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetLPTIMClockSource(LPTIMxSource))
 601:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 602:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_LPTIM1_CLKSOURCE_LSI:    /* LPTIM1 Clock is LSI Osc. */
 603:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_LSI_IsReady() != 0U)
 604:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 605:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           lptim_frequency = LSI_VALUE;
 606:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 607:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 608:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 609:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_LPTIM1_CLKSOURCE_HSI:    /* LPTIM1 Clock is HSI Osc. */
 610:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 611:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 612:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           lptim_frequency = HSI_VALUE;
 613:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 614:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 615:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 616:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_LPTIM1_CLKSOURCE_LSE:    /* LPTIM1 Clock is LSE Osc. */
 617:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_LSE_IsReady() != 0U)
 618:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 619:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           lptim_frequency = LSE_VALUE;
 620:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 621:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 622:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 623:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_LPTIM1_CLKSOURCE_PCLK1:  /* LPTIM1 Clock is PCLK1 */
 624:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 625:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         lptim_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 626:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 627:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 628:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 629:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 630:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return lptim_frequency;
 631:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 632:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 633:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 634:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return SAIx clock frequency
 635:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  SAIxSource This parameter can be one of the following values:
 636:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE
 637:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
 638:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval SAI clock frequency (in Hz)
 639:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that PLL is not ready
 640:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 641:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetSAIClockFreq(uint32_t SAIxSource)
 642:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 643:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t sai_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 644:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 645:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 646:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_SAI_CLKSOURCE(SAIxSource));
 647:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 648:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (SAIxSource == LL_RCC_SAI1_CLKSOURCE)
 649:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 650:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* SAI1CLK clock frequency */
 651:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetSAIClockSource(SAIxSource))
 652:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 653:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_SAI1_CLKSOURCE_SYSCLK:      /* System clock used as SAI1 clock source */
 654:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         sai_frequency = RCC_GetSystemClockFreq();
 655:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 656:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 657:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_SAI1_CLKSOURCE_PLL:        /* PLL clock used as SAI1 clock source */
 658:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_PLL_IsReady() != 0U)
 659:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 660:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           sai_frequency = RCC_PLL_GetFreqDomain_48M();
 661:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 662:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 663:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 664:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_SAI1_CLKSOURCE_PIN:          /* SAI1 Clock is External clock */
 665:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         sai_frequency = EXTERNAL_CLOCK_VALUE;
 666:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 667:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 668:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_SAI1_CLKSOURCE_HSI:        /* HSI clock used as SAI1 clock source */
 669:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 670:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 671:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 672:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           sai_frequency = HSI_VALUE;
 673:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 674:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 675:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 676:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 677:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 678:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 679:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return sai_frequency;
 680:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 681:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 682:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 683:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return I2Sx clock frequency
 684:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  I2SxSource This parameter can be one of the following values:
 685:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE
 686:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval I2S clock frequency (in Hz)
 687:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator is not ready
 688:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 689:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetI2SClockFreq(uint32_t I2SxSource)
 690:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 691:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t i2s_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 692:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 693:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 694:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_I2S_CLKSOURCE(I2SxSource));
 695:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 696:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (I2SxSource == LL_RCC_I2S_CLKSOURCE)
 697:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 698:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* I2S CLK clock frequency */
 699:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetI2SClockSource(I2SxSource))
 700:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 701:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2S_CLKSOURCE_SYSCLK:  /* I2S Clock is System Clock */
 702:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         i2s_frequency = RCC_GetSystemClockFreq();
 703:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 704:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 705:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2S_CLKSOURCE_PLL:    /* I2S Clock is PLL"Q" */
 706:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_PLL_IsReady() != 0U)
 707:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 708:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         i2s_frequency = RCC_PLL_GetFreqDomain_48M();
 709:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 710:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 711:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 712:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2S_CLKSOURCE_PIN:    /* I2S Clock is External clock */
 713:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         i2s_frequency = EXTERNAL_CLOCK_VALUE;
 714:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 715:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 716:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_I2S_CLKSOURCE_HSI:    /* I2S Clock is HSI */
 717:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 718:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_HSI_IsReady() != 0U)
 719:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 720:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           i2s_frequency = HSI_VALUE;
 721:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 722:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 723:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 724:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 725:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 726:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return i2s_frequency;
 727:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 728:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 729:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(FDCAN1)
 730:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 731:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return FDCAN kernel clock frequency
 732:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  FDCANxSource This parameter can be one of the following values:
 733:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE
 734:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval FDCAN kernel clock frequency (in Hz)
 735:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator is not ready
 736:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NA indicates that no clock source selected
 737:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 738:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetFDCANClockFreq(uint32_t FDCANxSource)
 739:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 740:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t fdcan_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 741:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 742:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 743:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_FDCAN_CLKSOURCE(FDCANxSource));
 744:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 745:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* FDCAN kernel clock frequency */
 746:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (LL_RCC_GetFDCANClockSource(FDCANxSource))
 747:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 748:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_FDCAN_CLKSOURCE_HSE:   /* HSE clock used as FDCAN kernel clock */
 749:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_HSE_IsReady() != 0U)
 750:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 751:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         fdcan_frequency = HSE_VALUE;
 752:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 753:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 754:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 755:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_FDCAN_CLKSOURCE_PLL:   /* PLL clock used as FDCAN kernel clock */
 756:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_PLL_IsReady() != 0U)
 757:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 758:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         fdcan_frequency = RCC_PLL_GetFreqDomain_48M();
 759:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 760:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 761:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 762:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_FDCAN_CLKSOURCE_PCLK1: /* PCLK1 clock used as FDCAN kernel clock */
 763:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       fdcan_frequency = RCC_GetPCLK1ClockFreq(RCC_GetHCLKClockFreq(RCC_GetSystemClockFreq()));
 764:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 765:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 766:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
 767:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       fdcan_frequency = LL_RCC_PERIPH_FREQUENCY_NA;
 768:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 769:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 770:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return fdcan_frequency;
 771:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 772:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* FDCAN1 */
 773:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 774:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 775:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return RNGx clock frequency
 776:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  RNGxSource This parameter can be one of the following values:
 777:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE
 778:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval RNG clock frequency (in Hz)
 779:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator (HSI48) or PLL is not read
 780:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NA indicates that no clock source selected
 781:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 782:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetRNGClockFreq(uint32_t RNGxSource)
 783:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 784:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t rng_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 785:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 786:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 787:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_RNG_CLKSOURCE(RNGxSource));
 788:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 789:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* RNGCLK clock frequency */
 790:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (LL_RCC_GetRNGClockSource(RNGxSource))
 791:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 792:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_RNG_CLKSOURCE_PLL:           /* PLL clock used as RNG clock source */
 793:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_PLL_IsReady() != 0U)
 794:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 795:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         rng_frequency = RCC_PLL_GetFreqDomain_48M();
 796:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 797:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 798:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 799:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_RNG_CLKSOURCE_HSI48:         /* HSI48 used as RNG clock source */
 800:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_HSI48_IsReady() != 0U)
 801:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 802:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         rng_frequency = HSI48_VALUE;
 803:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 804:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 805:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 806:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
 807:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       rng_frequency = LL_RCC_PERIPH_FREQUENCY_NA;
 808:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 809:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 810:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 811:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 812:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return rng_frequency;
 813:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 814:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 815:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 816:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return USBx clock frequency
 817:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  USBxSource This parameter can be one of the following values:
 818:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_USB_CLKSOURCE
 819:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval USB clock frequency (in Hz)
 820:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that oscillator (HSI48) or PLL is not read
 821:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NA indicates that no clock source selected
 822:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 823:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetUSBClockFreq(uint32_t USBxSource)
 824:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 825:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t usb_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 826:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 827:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 828:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_USB_CLKSOURCE(USBxSource));
 829:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 830:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* USBCLK clock frequency */
 831:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (LL_RCC_GetUSBClockSource(USBxSource))
 832:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 833:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_USB_CLKSOURCE_PLL:           /* PLL clock used as USB clock source */
 834:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_PLL_IsReady() != 0U)
 835:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 836:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         usb_frequency = RCC_PLL_GetFreqDomain_48M();
 837:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 838:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 839:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 840:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_USB_CLKSOURCE_HSI48:         /* HSI48 used as USB clock source */
 841:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_HSI48_IsReady() != 0U)
 842:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 843:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         usb_frequency = HSI48_VALUE;
 844:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 845:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 846:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 847:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
 848:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       usb_frequency = LL_RCC_PERIPH_FREQUENCY_NA;
 849:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 850:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 851:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 852:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return usb_frequency;
 853:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 854:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 855:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 856:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return ADCx clock frequency
 857:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  ADCxSource This parameter can be one of the following values:
 858:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE
 859:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE (*)
 860:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *
 861:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         (*) value not defined in all devices.
 862:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval ADC clock frequency (in Hz)
 863:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that PLL is not ready
 864:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NA indicates that no clock source selected
 865:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 866:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetADCClockFreq(uint32_t ADCxSource)
 867:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 868:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t adc_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 869:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 870:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 871:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_ADC_CLKSOURCE(ADCxSource));
 872:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 873:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   if (ADCxSource == LL_RCC_ADC12_CLKSOURCE)
 874:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 875:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* ADC12CLK clock frequency */
 876:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetADCClockSource(ADCxSource))
 877:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 878:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_ADC12_CLKSOURCE_PLL:       /* PLL clock used as ADC12 clock source */
 879:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_PLL_IsReady() != 0U)
 880:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 881:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           adc_frequency = RCC_PLL_GetFreqDomain_ADC();
 882:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 883:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 884:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 885:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_ADC12_CLKSOURCE_SYSCLK:    /* System clock used as ADC12 clock source */
 886:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         adc_frequency = RCC_GetSystemClockFreq();
 887:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 888:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 889:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_ADC12_CLKSOURCE_NONE:        /* No clock used as ADC12 clock source */
 890:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 891:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         adc_frequency = LL_RCC_PERIPH_FREQUENCY_NA;
 892:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 893:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 894:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 895:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(ADC345_COMMON)
 896:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   else
 897:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 898:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     /* ADC345CLK clock frequency */
 899:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     switch (LL_RCC_GetADCClockSource(ADCxSource))
 900:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 901:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_ADC345_CLKSOURCE_PLL:       /* PLL clock used as ADC345 clock source */
 902:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         if (LL_RCC_PLL_IsReady() != 0U)
 903:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 904:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****           adc_frequency = RCC_PLL_GetFreqDomain_ADC();
 905:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 906:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 907:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 908:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_ADC345_CLKSOURCE_SYSCLK:    /* System clock used as ADC345 clock source */
 909:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         adc_frequency = RCC_GetSystemClockFreq();
 910:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 911:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 912:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       case LL_RCC_ADC345_CLKSOURCE_NONE:        /* No clock used as ADC345 clock source */
 913:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       default:
 914:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         adc_frequency = LL_RCC_PERIPH_FREQUENCY_NA;
 915:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 916:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     }
 917:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 918:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* ADC345_COMMON */
 919:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 920:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return adc_frequency;
 921:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 922:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 923:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #if defined(QUADSPI)
 924:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 925:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return QUADSPI clock frequency
 926:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  QUADSPIxSource This parameter can be one of the following values:
 927:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE
 928:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval QUADSPI clock frequency (in Hz)
 929:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   *         - @ref  LL_RCC_PERIPH_FREQUENCY_NO indicates that no clock is configured
 930:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 931:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t LL_RCC_GetQUADSPIClockFreq(uint32_t QUADSPIxSource)
 932:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 933:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t quadspi_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 934:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 935:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Check parameter */
 936:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   assert_param(IS_LL_RCC_QUADSPI_CLKSOURCE(QUADSPIxSource));
 937:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 938:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* QUADSPI clock frequency */
 939:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (LL_RCC_GetQUADSPIClockSource(QUADSPIxSource))
 940:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 941:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_QUADSPI_CLKSOURCE_SYSCLK:   /* SYSCLK used as QUADSPI source */
 942:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       quadspi_frequency = RCC_GetSystemClockFreq();
 943:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 944:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 945:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_QUADSPI_CLKSOURCE_HSI:      /* HSI clock used as QUADSPI source */
 946:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_HSI_IsReady() != 0U)
 947:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 948:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         quadspi_frequency = HSI_VALUE;
 949:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 950:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 951:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 952:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_QUADSPI_CLKSOURCE_PLL:      /* PLL clock used as QUADSPI source */
 953:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       if (LL_RCC_PLL_IsReady() != 0U)
 954:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 955:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         quadspi_frequency = RCC_PLL_GetFreqDomain_48M();
 956:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 957:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 958:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 959:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
 960:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       /* Nothing to do: quadspi frequency already initilalized to LL_RCC_PERIPH_FREQUENCY_NO */
 961:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 962:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
 963:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 964:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return quadspi_frequency;
 965:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 966:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* QUADSPI */
 967:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 968:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 969:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @}
 970:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 971:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 972:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 973:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @}
 974:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 975:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 976:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /** @addtogroup RCC_LL_Private_Functions
 977:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @{
 978:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 979:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 980:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
 981:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return SYSTEM clock frequency
 982:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval SYSTEM clock frequency (in Hz)
 983:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
 984:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetSystemClockFreq(void)
 985:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 986:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t frequency;
 987:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 988:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Get SYSCLK source -------------------------------------------------------*/
 989:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (LL_RCC_GetSysClkSource())
 990:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 991:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_SYS_CLKSOURCE_STATUS_HSI:  /* HSI used as system clock  source */
 992:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       frequency = HSI_VALUE;
 993:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 994:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 995:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_SYS_CLKSOURCE_STATUS_HSE:  /* HSE used as system clock  source */
 996:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       frequency = HSE_VALUE;
 997:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 998:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 999:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_SYS_CLKSOURCE_STATUS_PLL:  /* PLL used as system clock  source */
1000:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       frequency = RCC_PLL_GetFreqDomain_SYS();
1001:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1002:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1003:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
1004:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       frequency = HSI_VALUE;
1005:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1006:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
1007:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1008:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return frequency;
1009:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
1010:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1011:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
1012:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return HCLK clock frequency
1013:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  SYSCLK_Frequency SYSCLK clock frequency
1014:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval HCLK clock frequency (in Hz)
1015:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1016:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetHCLKClockFreq(uint32_t SYSCLK_Frequency)
1017:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 243              		.loc 2 1017 1 is_stmt 1 view -0
 244              		.cfi_startproc
 245              		@ args = 0, pretend = 0, frame = 0
 246              		@ frame_needed = 0, uses_anonymous_args = 0
 247              		@ link register save eliminated.
1018:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* HCLK clock frequency */
1019:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return __LL_RCC_CALC_HCLK_FREQ(SYSCLK_Frequency, LL_RCC_GetAHBPrescaler());
 248              		.loc 2 1019 3 view .LVU53
 249              	.LBB60:
 250              	.LBI60:
1426:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 251              		.loc 1 1426 26 view .LVU54
 252              	.LBB61:
1428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 253              		.loc 1 1428 3 view .LVU55
1428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 254              		.loc 1 1428 21 is_stmt 0 view .LVU56
 255 0000 044B     		ldr	r3, .L21
 256              	.LBE61:
 257              	.LBE60:
 258              		.loc 2 1019 10 view .LVU57
 259 0002 054A     		ldr	r2, .L21+4
 260              	.LBB63:
 261              	.LBB62:
1428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 262              		.loc 1 1428 21 view .LVU58
 263 0004 9B68     		ldr	r3, [r3, #8]
 264              	.LBE62:
 265              	.LBE63:
 266              		.loc 2 1019 10 view .LVU59
 267 0006 C3F30313 		ubfx	r3, r3, #4, #4
 268 000a D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 269 000c 03F01F03 		and	r3, r3, #31
1020:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 270              		.loc 2 1020 1 view .LVU60
 271 0010 D840     		lsrs	r0, r0, r3
 272              	.LVL6:
 273              		.loc 2 1020 1 view .LVU61
 274 0012 7047     		bx	lr
 275              	.L22:
 276              		.align	2
 277              	.L21:
 278 0014 00100240 		.word	1073876992
 279 0018 00000000 		.word	AHBPrescTable
 280              		.cfi_endproc
 281              	.LFE281:
 283              		.section	.text.RCC_GetPCLK1ClockFreq,"ax",%progbits
 284              		.align	1
 285              		.global	RCC_GetPCLK1ClockFreq
 286              		.syntax unified
 287              		.thumb
 288              		.thumb_func
 289              		.fpu fpv4-sp-d16
 291              	RCC_GetPCLK1ClockFreq:
 292              	.LVL7:
 293              	.LFB282:
1021:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1022:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
1023:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return PCLK1 clock frequency
1024:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  HCLK_Frequency HCLK clock frequency
1025:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval PCLK1 clock frequency (in Hz)
1026:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1027:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetPCLK1ClockFreq(uint32_t HCLK_Frequency)
1028:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 294              		.loc 2 1028 1 is_stmt 1 view -0
 295              		.cfi_startproc
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
1029:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* PCLK1 clock frequency */
1030:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return __LL_RCC_CALC_PCLK1_FREQ(HCLK_Frequency, LL_RCC_GetAPB1Prescaler());
 299              		.loc 2 1030 3 view .LVU63
 300              	.LBB64:
 301              	.LBI64:
1441:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 302              		.loc 1 1441 26 view .LVU64
 303              	.LBB65:
1443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 304              		.loc 1 1443 3 view .LVU65
1443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 305              		.loc 1 1443 21 is_stmt 0 view .LVU66
 306 0000 044B     		ldr	r3, .L24
 307              	.LBE65:
 308              	.LBE64:
 309              		.loc 2 1030 10 view .LVU67
 310 0002 054A     		ldr	r2, .L24+4
 311              	.LBB67:
 312              	.LBB66:
1443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 313              		.loc 1 1443 21 view .LVU68
 314 0004 9B68     		ldr	r3, [r3, #8]
 315              	.LBE66:
 316              	.LBE67:
 317              		.loc 2 1030 10 view .LVU69
 318 0006 C3F30223 		ubfx	r3, r3, #8, #3
 319 000a D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 320 000c 03F01F03 		and	r3, r3, #31
1031:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 321              		.loc 2 1031 1 view .LVU70
 322 0010 D840     		lsrs	r0, r0, r3
 323              	.LVL8:
 324              		.loc 2 1031 1 view .LVU71
 325 0012 7047     		bx	lr
 326              	.L25:
 327              		.align	2
 328              	.L24:
 329 0014 00100240 		.word	1073876992
 330 0018 00000000 		.word	APBPrescTable
 331              		.cfi_endproc
 332              	.LFE282:
 334              		.section	.text.RCC_GetPCLK2ClockFreq,"ax",%progbits
 335              		.align	1
 336              		.global	RCC_GetPCLK2ClockFreq
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu fpv4-sp-d16
 342              	RCC_GetPCLK2ClockFreq:
 343              	.LVL9:
 344              	.LFB283:
1032:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1033:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
1034:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return PCLK2 clock frequency
1035:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @param  HCLK_Frequency HCLK clock frequency
1036:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval PCLK2 clock frequency (in Hz)
1037:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1038:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_GetPCLK2ClockFreq(uint32_t HCLK_Frequency)
1039:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 345              		.loc 2 1039 1 is_stmt 1 view -0
 346              		.cfi_startproc
 347              		@ args = 0, pretend = 0, frame = 0
 348              		@ frame_needed = 0, uses_anonymous_args = 0
 349              		@ link register save eliminated.
1040:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* PCLK2 clock frequency */
1041:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return __LL_RCC_CALC_PCLK2_FREQ(HCLK_Frequency, LL_RCC_GetAPB2Prescaler());
 350              		.loc 2 1041 3 view .LVU73
 351              	.LBB68:
 352              	.LBI68:
1456:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 353              		.loc 1 1456 26 view .LVU74
 354              	.LBB69:
1458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 355              		.loc 1 1458 3 view .LVU75
1458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 356              		.loc 1 1458 21 is_stmt 0 view .LVU76
 357 0000 044B     		ldr	r3, .L27
 358              	.LBE69:
 359              	.LBE68:
 360              		.loc 2 1041 10 view .LVU77
 361 0002 054A     		ldr	r2, .L27+4
 362              	.LBB71:
 363              	.LBB70:
1458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 364              		.loc 1 1458 21 view .LVU78
 365 0004 9B68     		ldr	r3, [r3, #8]
 366              	.LBE70:
 367              	.LBE71:
 368              		.loc 2 1041 10 view .LVU79
 369 0006 C3F3C223 		ubfx	r3, r3, #11, #3
 370 000a D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 371 000c 03F01F03 		and	r3, r3, #31
1042:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 372              		.loc 2 1042 1 view .LVU80
 373 0010 D840     		lsrs	r0, r0, r3
 374              	.LVL10:
 375              		.loc 2 1042 1 view .LVU81
 376 0012 7047     		bx	lr
 377              	.L28:
 378              		.align	2
 379              	.L27:
 380 0014 00100240 		.word	1073876992
 381 0018 00000000 		.word	APBPrescTable
 382              		.cfi_endproc
 383              	.LFE283:
 385              		.section	.text.RCC_PLL_GetFreqDomain_SYS,"ax",%progbits
 386              		.align	1
 387              		.global	RCC_PLL_GetFreqDomain_SYS
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu fpv4-sp-d16
 393              	RCC_PLL_GetFreqDomain_SYS:
 394              	.LFB284:
1043:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1044:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
1045:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return PLL clock frequency used for system domain
1046:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval PLL clock frequency (in Hz)
1047:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1048:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_PLL_GetFreqDomain_SYS(void)
1049:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 395              		.loc 2 1049 1 is_stmt 1 view -0
 396              		.cfi_startproc
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
1050:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t pllinputfreq, pllsource;
 400              		.loc 2 1050 3 view .LVU83
1051:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1052:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
1053:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****      SYSCLK = PLL_VCO / PLLR
1054:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1055:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   pllsource = LL_RCC_PLL_GetMainSource();
 401              		.loc 2 1055 3 view .LVU84
 402              	.LBB80:
 403              	.LBI80:
2262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 404              		.loc 1 2262 26 view .LVU85
 405              	.LBB81:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 406              		.loc 1 2264 3 view .LVU86
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 407              		.loc 1 2264 21 is_stmt 0 view .LVU87
 408 0000 0D4B     		ldr	r3, .L32
 409              	.LBE81:
 410              	.LBE80:
1056:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1057:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (pllsource)
1058:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
1059:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_PLLSOURCE_HSI:  /* HSI used as PLL clock source */
1060:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSI_VALUE;
1061:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1062:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1063:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_PLLSOURCE_HSE:  /* HSE used as PLL clock source */
1064:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSE_VALUE;
 411              		.loc 2 1064 20 view .LVU88
 412 0002 0E49     		ldr	r1, .L32+4
 413              	.LBB84:
 414              	.LBB82:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 415              		.loc 1 2264 21 view .LVU89
 416 0004 DA68     		ldr	r2, [r3, #12]
 417              	.LVL11:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 418              		.loc 1 2264 21 view .LVU90
 419              	.LBE82:
 420              	.LBE84:
1057:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 421              		.loc 2 1057 3 is_stmt 1 view .LVU91
 422              		.loc 2 1064 20 is_stmt 0 view .LVU92
 423 0006 0E48     		ldr	r0, .L32+8
 424              	.LBB85:
 425              	.LBB83:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 426              		.loc 1 2264 10 view .LVU93
 427 0008 02F00302 		and	r2, r2, #3
 428              	.LVL12:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 429              		.loc 1 2264 10 view .LVU94
 430              	.LBE83:
 431              	.LBE85:
 432              		.loc 2 1064 20 view .LVU95
 433 000c 032A     		cmp	r2, #3
 434 000e 08BF     		it	eq
 435 0010 0846     		moveq	r0, r1
 436              	.LVL13:
1065:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1066:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1067:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
1068:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSI_VALUE;
1069:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1070:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
1071:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return __LL_RCC_CALC_PLLCLK_FREQ(pllinputfreq, LL_RCC_PLL_GetDivider(),
 437              		.loc 2 1071 3 is_stmt 1 view .LVU96
 438              	.LBB86:
 439              	.LBI86:
2272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 440              		.loc 1 2272 26 view .LVU97
 441              	.LBB87:
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 442              		.loc 1 2274 3 view .LVU98
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 443              		.loc 1 2274 21 is_stmt 0 view .LVU99
 444 0012 D968     		ldr	r1, [r3, #12]
 445              	.LBE87:
 446              	.LBE86:
 447              	.LBB89:
 448              	.LBI89:
2370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 449              		.loc 1 2370 26 is_stmt 1 view .LVU100
 450              	.LBB90:
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 451              		.loc 1 2372 3 view .LVU101
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 452              		.loc 1 2372 21 is_stmt 0 view .LVU102
 453 0014 DA68     		ldr	r2, [r3, #12]
 454              	.LVL14:
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 455              		.loc 1 2372 21 view .LVU103
 456              	.LBE90:
 457              	.LBE89:
 458              	.LBB91:
 459              	.LBI91:
2344:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 460              		.loc 1 2344 26 is_stmt 1 view .LVU104
 461              	.LBB92:
2346:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 462              		.loc 1 2346 3 view .LVU105
2346:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 463              		.loc 1 2346 21 is_stmt 0 view .LVU106
 464 0016 DB68     		ldr	r3, [r3, #12]
 465              	.LBE92:
 466              	.LBE91:
 467              		.loc 2 1071 10 view .LVU107
 468 0018 C3F34163 		ubfx	r3, r3, #25, #2
 469              	.LBB93:
 470              	.LBB88:
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 471              		.loc 1 2274 10 view .LVU108
 472 001c C1F30621 		ubfx	r1, r1, #8, #7
 473              	.LBE88:
 474              	.LBE93:
 475              		.loc 2 1071 10 view .LVU109
 476 0020 C2F30312 		ubfx	r2, r2, #4, #4
 477 0024 0133     		adds	r3, r3, #1
 478 0026 4843     		muls	r0, r1, r0
 479              	.LVL15:
 480              		.loc 2 1071 10 view .LVU110
 481 0028 0132     		adds	r2, r2, #1
 482 002a 5B00     		lsls	r3, r3, #1
 483 002c B0FBF2F0 		udiv	r0, r0, r2
1072:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                    LL_RCC_PLL_GetN(), LL_RCC_PLL_GetR());
1073:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 484              		.loc 2 1073 1 view .LVU111
 485 0030 B0FBF3F0 		udiv	r0, r0, r3
 486 0034 7047     		bx	lr
 487              	.L33:
 488 0036 00BF     		.align	2
 489              	.L32:
 490 0038 00100240 		.word	1073876992
 491 003c 00127A00 		.word	8000000
 492 0040 0024F400 		.word	16000000
 493              		.cfi_endproc
 494              	.LFE284:
 496              		.section	.text.RCC_GetSystemClockFreq,"ax",%progbits
 497              		.align	1
 498              		.global	RCC_GetSystemClockFreq
 499              		.syntax unified
 500              		.thumb
 501              		.thumb_func
 502              		.fpu fpv4-sp-d16
 504              	RCC_GetSystemClockFreq:
 505              	.LFB280:
 985:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t frequency;
 506              		.loc 2 985 1 is_stmt 1 view -0
 507              		.cfi_startproc
 508              		@ args = 0, pretend = 0, frame = 0
 509              		@ frame_needed = 0, uses_anonymous_args = 0
 510              		@ link register save eliminated.
 986:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 511              		.loc 2 986 3 view .LVU113
 989:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 512              		.loc 2 989 3 view .LVU114
 513              	.LBB94:
 514              	.LBI94:
1355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 515              		.loc 1 1355 26 view .LVU115
 516              	.LBB95:
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 517              		.loc 1 1357 3 view .LVU116
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 518              		.loc 1 1357 21 is_stmt 0 view .LVU117
 519 0000 064B     		ldr	r3, .L38
 520 0002 9B68     		ldr	r3, [r3, #8]
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 521              		.loc 1 1357 10 view .LVU118
 522 0004 03F00C03 		and	r3, r3, #12
 523              	.LBE95:
 524              	.LBE94:
 989:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 525              		.loc 2 989 3 view .LVU119
 526 0008 082B     		cmp	r3, #8
 527 000a 03D0     		beq	.L36
 528 000c 0C2B     		cmp	r3, #12
 529 000e 03D1     		bne	.L37
1000:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 530              		.loc 2 1000 7 is_stmt 1 view .LVU120
1000:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 531              		.loc 2 1000 19 is_stmt 0 view .LVU121
 532 0010 FFF7FEBF 		b	RCC_PLL_GetFreqDomain_SYS
 533              	.LVL16:
 534              	.L36:
 996:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 535              		.loc 2 996 17 view .LVU122
 536 0014 0248     		ldr	r0, .L38+4
 537 0016 7047     		bx	lr
 538              	.L37:
 992:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 539              		.loc 2 992 17 view .LVU123
 540 0018 0248     		ldr	r0, .L38+8
 541              	.LVL17:
1008:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 542              		.loc 2 1008 3 is_stmt 1 view .LVU124
1009:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 543              		.loc 2 1009 1 is_stmt 0 view .LVU125
 544 001a 7047     		bx	lr
 545              	.L39:
 546              		.align	2
 547              	.L38:
 548 001c 00100240 		.word	1073876992
 549 0020 00127A00 		.word	8000000
 550 0024 0024F400 		.word	16000000
 551              		.cfi_endproc
 552              	.LFE280:
 554              		.section	.text.LL_RCC_GetSystemClocksFreq,"ax",%progbits
 555              		.align	1
 556              		.global	LL_RCC_GetSystemClocksFreq
 557              		.syntax unified
 558              		.thumb
 559              		.thumb_func
 560              		.fpu fpv4-sp-d16
 562              	LL_RCC_GetSystemClocksFreq:
 563              	.LVL18:
 564              	.LFB268:
 211:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Get SYSCLK frequency */
 565              		.loc 2 211 1 is_stmt 1 view -0
 566              		.cfi_startproc
 567              		@ args = 0, pretend = 0, frame = 0
 568              		@ frame_needed = 0, uses_anonymous_args = 0
 213:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 569              		.loc 2 213 3 view .LVU127
 211:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Get SYSCLK frequency */
 570              		.loc 2 211 1 is_stmt 0 view .LVU128
 571 0000 10B5     		push	{r4, lr}
 572              		.cfi_def_cfa_offset 8
 573              		.cfi_offset 4, -8
 574              		.cfi_offset 14, -4
 211:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* Get SYSCLK frequency */
 575              		.loc 2 211 1 view .LVU129
 576 0002 0446     		mov	r4, r0
 213:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 577              		.loc 2 213 34 view .LVU130
 578 0004 FFF7FEFF 		bl	RCC_GetSystemClockFreq
 579              	.LVL19:
 213:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 580              		.loc 2 213 32 view .LVU131
 581 0008 2060     		str	r0, [r4]
 216:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 582              		.loc 2 216 3 is_stmt 1 view .LVU132
 216:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 583              		.loc 2 216 34 is_stmt 0 view .LVU133
 584 000a FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 585              	.LVL20:
 216:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 586              		.loc 2 216 32 view .LVU134
 587 000e 6060     		str	r0, [r4, #4]
 219:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 588              		.loc 2 219 3 is_stmt 1 view .LVU135
 219:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 589              		.loc 2 219 34 is_stmt 0 view .LVU136
 590 0010 FFF7FEFF 		bl	RCC_GetPCLK1ClockFreq
 591              	.LVL21:
 219:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 592              		.loc 2 219 32 view .LVU137
 593 0014 A060     		str	r0, [r4, #8]
 222:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 594              		.loc 2 222 3 is_stmt 1 view .LVU138
 222:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 595              		.loc 2 222 34 is_stmt 0 view .LVU139
 596 0016 6068     		ldr	r0, [r4, #4]
 597 0018 FFF7FEFF 		bl	RCC_GetPCLK2ClockFreq
 598              	.LVL22:
 222:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 599              		.loc 2 222 32 view .LVU140
 600 001c E060     		str	r0, [r4, #12]
 223:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 601              		.loc 2 223 1 view .LVU141
 602 001e 10BD     		pop	{r4, pc}
 223:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 603              		.loc 2 223 1 view .LVU142
 604              		.cfi_endproc
 605              	.LFE268:
 607              		.section	.text.LL_RCC_GetUSARTClockFreq,"ax",%progbits
 608              		.align	1
 609              		.global	LL_RCC_GetUSARTClockFreq
 610              		.syntax unified
 611              		.thumb
 612              		.thumb_func
 613              		.fpu fpv4-sp-d16
 615              	LL_RCC_GetUSARTClockFreq:
 616              	.LVL23:
 617              	.LFB269:
 236:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t usart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 618              		.loc 2 236 1 is_stmt 1 view -0
 619              		.cfi_startproc
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 237:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 622              		.loc 2 237 3 view .LVU144
 240:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 623              		.loc 2 240 3 view .LVU145
 242:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 624              		.loc 2 242 3 view .LVU146
 242:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 625              		.loc 2 242 6 is_stmt 0 view .LVU147
 626 0000 0328     		cmp	r0, #3
 236:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t usart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 627              		.loc 2 236 1 view .LVU148
 628 0002 08B5     		push	{r3, lr}
 629              		.cfi_def_cfa_offset 8
 630              		.cfi_offset 3, -8
 631              		.cfi_offset 14, -4
 242:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 632              		.loc 2 242 6 view .LVU149
 633 0004 28D1     		bne	.L42
 245:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 634              		.loc 2 245 5 is_stmt 1 view .LVU150
 635              	.LVL24:
 636              	.LBB102:
 637              	.LBI102:
1738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 638              		.loc 1 1738 26 view .LVU151
 639              	.LBB103:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 640              		.loc 1 1740 3 view .LVU152
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 641              		.loc 1 1740 21 is_stmt 0 view .LVU153
 642 0006 2B4B     		ldr	r3, .L63
 643              	.LBE103:
 644              	.LBE102:
 245:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 645              		.loc 2 245 5 view .LVU154
 646 0008 2B4A     		ldr	r2, .L63+4
 647              	.LBB105:
 648              	.LBB104:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 649              		.loc 1 1740 21 view .LVU155
 650 000a D3F88830 		ldr	r3, [r3, #136]
 651 000e 03F00303 		and	r3, r3, #3
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 652              		.loc 1 1740 10 view .LVU156
 653 0012 43F44033 		orr	r3, r3, #196608
 654              	.LVL25:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 655              		.loc 1 1740 10 view .LVU157
 656              	.LBE104:
 657              	.LBE105:
 245:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 658              		.loc 2 245 5 view .LVU158
 659 0016 9342     		cmp	r3, r2
 660 0018 09D0     		beq	.L43
 661 001a B3F1031F 		cmp	r3, #196611
 662 001e 0CD0     		beq	.L44
 663 0020 013A     		subs	r2, r2, #1
 664 0022 9342     		cmp	r3, r2
 665 0024 10D1     		bne	.L45
 666              	.L49:
 248:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 667              		.loc 2 248 9 is_stmt 1 view .LVU159
 333:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 668              		.loc 2 333 1 is_stmt 0 view .LVU160
 669 0026 BDE80840 		pop	{r3, lr}
 670              		.cfi_remember_state
 671              		.cfi_restore 14
 672              		.cfi_restore 3
 673              		.cfi_def_cfa_offset 0
 248:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 674              		.loc 2 248 27 view .LVU161
 675 002a FFF7FEBF 		b	RCC_GetSystemClockFreq
 676              	.LVL26:
 677              	.L43:
 678              		.cfi_restore_state
 252:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 679              		.loc 2 252 9 is_stmt 1 view .LVU162
 252:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 680              		.loc 2 252 13 is_stmt 0 view .LVU163
 681 002e FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 682              	.LVL27:
 252:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 683              		.loc 2 252 12 view .LVU164
 684 0032 0028     		cmp	r0, #0
 685 0034 3BD1     		bne	.L51
 686              	.L47:
 237:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 687              		.loc 2 237 12 view .LVU165
 688 0036 0020     		movs	r0, #0
 689              	.LVL28:
 690              	.L41:
 333:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 691              		.loc 2 333 1 view .LVU166
 692 0038 08BD     		pop	{r3, pc}
 693              	.LVL29:
 694              	.L44:
 259:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 695              		.loc 2 259 9 is_stmt 1 view .LVU167
 259:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 696              		.loc 2 259 13 is_stmt 0 view .LVU168
 697 003a FFF7FEFF 		bl	LL_RCC_LSE_IsReady
 698              	.LVL30:
 259:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 699              		.loc 2 259 12 view .LVU169
 700 003e 0028     		cmp	r0, #0
 701 0040 F9D0     		beq	.L47
 261:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 702              		.loc 2 261 27 view .LVU170
 703 0042 4FF40040 		mov	r0, #32768
 704              	.LVL31:
 332:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 705              		.loc 2 332 3 is_stmt 1 view .LVU171
 332:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 706              		.loc 2 332 10 is_stmt 0 view .LVU172
 707 0046 F7E7     		b	.L41
 708              	.LVL32:
 709              	.L45:
 267:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 710              		.loc 2 267 9 is_stmt 1 view .LVU173
 267:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 711              		.loc 2 267 27 is_stmt 0 view .LVU174
 712 0048 FFF7FEFF 		bl	RCC_GetSystemClockFreq
 713              	.LVL33:
 267:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 714              		.loc 2 267 27 view .LVU175
 715 004c FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 716              	.LVL34:
 333:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 717              		.loc 2 333 1 view .LVU176
 718 0050 BDE80840 		pop	{r3, lr}
 719              		.cfi_remember_state
 720              		.cfi_restore 14
 721              		.cfi_restore 3
 722              		.cfi_def_cfa_offset 0
 267:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 723              		.loc 2 267 27 view .LVU177
 724 0054 FFF7FEBF 		b	RCC_GetPCLK2ClockFreq
 725              	.LVL35:
 726              	.L42:
 727              		.cfi_restore_state
 271:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 728              		.loc 2 271 8 is_stmt 1 view .LVU178
 271:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 729              		.loc 2 271 11 is_stmt 0 view .LVU179
 730 0058 0C28     		cmp	r0, #12
 731 005a 17D1     		bne	.L48
 274:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 732              		.loc 2 274 5 is_stmt 1 view .LVU180
 733              	.LVL36:
 734              	.LBB106:
 735              	.LBI106:
1738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 736              		.loc 1 1738 26 view .LVU181
 737              	.LBB107:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 738              		.loc 1 1740 3 view .LVU182
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 739              		.loc 1 1740 21 is_stmt 0 view .LVU183
 740 005c 154B     		ldr	r3, .L63
 741              	.LBE107:
 742              	.LBE106:
 274:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 743              		.loc 2 274 5 view .LVU184
 744 005e 174A     		ldr	r2, .L63+8
 745              	.LBB109:
 746              	.LBB108:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 747              		.loc 1 1740 21 view .LVU185
 748 0060 D3F88830 		ldr	r3, [r3, #136]
 749 0064 03F00C03 		and	r3, r3, #12
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 750              		.loc 1 1740 10 view .LVU186
 751 0068 43F44023 		orr	r3, r3, #786432
 752              	.LVL37:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 753              		.loc 1 1740 10 view .LVU187
 754              	.LBE108:
 755              	.LBE109:
 274:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 756              		.loc 2 274 5 view .LVU188
 757 006c 9342     		cmp	r3, r2
 758 006e DED0     		beq	.L43
 759 0070 B3F10C1F 		cmp	r3, #786444
 760 0074 E1D0     		beq	.L44
 761 0076 043A     		subs	r2, r2, #4
 762              	.L62:
 763 0078 9342     		cmp	r3, r2
 764 007a D4D0     		beq	.L49
 296:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 765              		.loc 2 296 9 is_stmt 1 view .LVU189
 296:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 766              		.loc 2 296 27 is_stmt 0 view .LVU190
 767 007c FFF7FEFF 		bl	RCC_GetSystemClockFreq
 768              	.LVL38:
 296:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 769              		.loc 2 296 27 view .LVU191
 770 0080 FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 771              	.LVL39:
 333:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 772              		.loc 2 333 1 view .LVU192
 773 0084 BDE80840 		pop	{r3, lr}
 774              		.cfi_remember_state
 775              		.cfi_restore 14
 776              		.cfi_restore 3
 777              		.cfi_def_cfa_offset 0
 296:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 778              		.loc 2 296 27 view .LVU193
 779 0088 FFF7FEBF 		b	RCC_GetPCLK1ClockFreq
 780              	.LVL40:
 781              	.L48:
 782              		.cfi_restore_state
 302:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 783              		.loc 2 302 5 is_stmt 1 view .LVU194
 302:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 784              		.loc 2 302 8 is_stmt 0 view .LVU195
 785 008c 3028     		cmp	r0, #48
 786 008e D2D1     		bne	.L47
 305:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 787              		.loc 2 305 7 is_stmt 1 view .LVU196
 788              	.LVL41:
 789              	.LBB110:
 790              	.LBI110:
1738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 791              		.loc 1 1738 26 view .LVU197
 792              	.LBB111:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 793              		.loc 1 1740 3 view .LVU198
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 794              		.loc 1 1740 21 is_stmt 0 view .LVU199
 795 0090 084B     		ldr	r3, .L63
 796              	.LBE111:
 797              	.LBE110:
 305:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 798              		.loc 2 305 7 view .LVU200
 799 0092 0B4A     		ldr	r2, .L63+12
 800              	.LBB113:
 801              	.LBB112:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 802              		.loc 1 1740 21 view .LVU201
 803 0094 D3F88830 		ldr	r3, [r3, #136]
 804 0098 03F03003 		and	r3, r3, #48
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 805              		.loc 1 1740 10 view .LVU202
 806 009c 43F44013 		orr	r3, r3, #3145728
 807              	.LVL42:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 808              		.loc 1 1740 10 view .LVU203
 809              	.LBE112:
 810              	.LBE113:
 305:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 811              		.loc 2 305 7 view .LVU204
 812 00a0 9342     		cmp	r3, r2
 813 00a2 C4D0     		beq	.L43
 814 00a4 B3F1301F 		cmp	r3, #3145776
 815 00a8 C7D0     		beq	.L44
 816 00aa 103A     		subs	r2, r2, #16
 817 00ac E4E7     		b	.L62
 818              	.LVL43:
 819              	.L51:
 254:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 820              		.loc 2 254 27 view .LVU205
 821 00ae 0548     		ldr	r0, .L63+16
 822 00b0 C2E7     		b	.L41
 823              	.L64:
 824 00b2 00BF     		.align	2
 825              	.L63:
 826 00b4 00100240 		.word	1073876992
 827 00b8 02000300 		.word	196610
 828 00bc 08000C00 		.word	786440
 829 00c0 20003000 		.word	3145760
 830 00c4 0024F400 		.word	16000000
 831              		.cfi_endproc
 832              	.LFE269:
 834              		.section	.text.LL_RCC_GetUARTClockFreq,"ax",%progbits
 835              		.align	1
 836              		.global	LL_RCC_GetUARTClockFreq
 837              		.syntax unified
 838              		.thumb
 839              		.thumb_func
 840              		.fpu fpv4-sp-d16
 842              	LL_RCC_GetUARTClockFreq:
 843              	.LVL44:
 844              	.LFB270:
 347:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t uart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 845              		.loc 2 347 1 is_stmt 1 view -0
 846              		.cfi_startproc
 847              		@ args = 0, pretend = 0, frame = 0
 848              		@ frame_needed = 0, uses_anonymous_args = 0
 348:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 849              		.loc 2 348 3 view .LVU207
 351:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 850              		.loc 2 351 3 view .LVU208
 353:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 851              		.loc 2 353 3 view .LVU209
 353:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 852              		.loc 2 353 6 is_stmt 0 view .LVU210
 853 0000 C028     		cmp	r0, #192
 347:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t uart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 854              		.loc 2 347 1 view .LVU211
 855 0002 08B5     		push	{r3, lr}
 856              		.cfi_def_cfa_offset 8
 857              		.cfi_offset 3, -8
 858              		.cfi_offset 14, -4
 353:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 859              		.loc 2 353 6 view .LVU212
 860 0004 01D0     		beq	.L66
 861              	.LVL45:
 862              	.L71:
 348:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 863              		.loc 2 348 12 view .LVU213
 864 0006 0020     		movs	r0, #0
 865              	.LVL46:
 866              	.L65:
 416:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* RCC_CCIPR_UART4SEL */
 867              		.loc 2 416 1 view .LVU214
 868 0008 08BD     		pop	{r3, pc}
 869              	.LVL47:
 870              	.L66:
 356:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 871              		.loc 2 356 5 is_stmt 1 view .LVU215
 872              	.LBB116:
 873              	.LBI116:
1738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 874              		.loc 1 1738 26 view .LVU216
 875              	.LBB117:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 876              		.loc 1 1740 3 view .LVU217
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 877              		.loc 1 1740 21 is_stmt 0 view .LVU218
 878 000a 144B     		ldr	r3, .L74
 879              	.LBE117:
 880              	.LBE116:
 356:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 881              		.loc 2 356 5 view .LVU219
 882 000c 144A     		ldr	r2, .L74+4
 883              	.LBB119:
 884              	.LBB118:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 885              		.loc 1 1740 21 view .LVU220
 886 000e D3F88830 		ldr	r3, [r3, #136]
 887 0012 03F0C003 		and	r3, r3, #192
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 888              		.loc 1 1740 10 view .LVU221
 889 0016 43F44003 		orr	r3, r3, #12582912
 890              	.LVL48:
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 891              		.loc 1 1740 10 view .LVU222
 892              	.LBE118:
 893              	.LBE119:
 356:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 894              		.loc 2 356 5 view .LVU223
 895 001a 9342     		cmp	r3, r2
 896 001c 09D0     		beq	.L68
 897 001e B3F1C01F 		cmp	r3, #12583104
 898 0022 0CD0     		beq	.L69
 899 0024 403A     		subs	r2, r2, #64
 900 0026 9342     		cmp	r3, r2
 901 0028 10D1     		bne	.L70
 359:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 902              		.loc 2 359 9 is_stmt 1 view .LVU224
 416:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* RCC_CCIPR_UART4SEL */
 903              		.loc 2 416 1 is_stmt 0 view .LVU225
 904 002a BDE80840 		pop	{r3, lr}
 905              		.cfi_remember_state
 906              		.cfi_restore 14
 907              		.cfi_restore 3
 908              		.cfi_def_cfa_offset 0
 359:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 909              		.loc 2 359 26 view .LVU226
 910 002e FFF7FEBF 		b	RCC_GetSystemClockFreq
 911              	.LVL49:
 912              	.L68:
 913              		.cfi_restore_state
 363:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 914              		.loc 2 363 9 is_stmt 1 view .LVU227
 363:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 915              		.loc 2 363 13 is_stmt 0 view .LVU228
 916 0032 FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 917              	.LVL50:
 363:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 918              		.loc 2 363 12 view .LVU229
 919 0036 0028     		cmp	r0, #0
 920 0038 E5D0     		beq	.L71
 365:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 921              		.loc 2 365 26 view .LVU230
 922 003a 0A48     		ldr	r0, .L74+8
 923 003c E4E7     		b	.L65
 924              	.LVL51:
 925              	.L69:
 370:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 926              		.loc 2 370 9 is_stmt 1 view .LVU231
 370:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 927              		.loc 2 370 13 is_stmt 0 view .LVU232
 928 003e FFF7FEFF 		bl	LL_RCC_LSE_IsReady
 929              	.LVL52:
 370:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 930              		.loc 2 370 12 view .LVU233
 931 0042 0028     		cmp	r0, #0
 932 0044 DFD0     		beq	.L71
 372:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 933              		.loc 2 372 26 view .LVU234
 934 0046 4FF40040 		mov	r0, #32768
 935              	.LVL53:
 415:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 936              		.loc 2 415 3 is_stmt 1 view .LVU235
 415:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 937              		.loc 2 415 10 is_stmt 0 view .LVU236
 938 004a DDE7     		b	.L65
 939              	.LVL54:
 940              	.L70:
 378:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 941              		.loc 2 378 9 is_stmt 1 view .LVU237
 378:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 942              		.loc 2 378 26 is_stmt 0 view .LVU238
 943 004c FFF7FEFF 		bl	RCC_GetSystemClockFreq
 944              	.LVL55:
 378:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 945              		.loc 2 378 26 view .LVU239
 946 0050 FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 947              	.LVL56:
 416:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* RCC_CCIPR_UART4SEL */
 948              		.loc 2 416 1 view .LVU240
 949 0054 BDE80840 		pop	{r3, lr}
 950              		.cfi_restore 14
 951              		.cfi_restore 3
 952              		.cfi_def_cfa_offset 0
 378:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 953              		.loc 2 378 26 view .LVU241
 954 0058 FFF7FEBF 		b	RCC_GetPCLK1ClockFreq
 955              	.LVL57:
 956              	.L75:
 957              		.align	2
 958              	.L74:
 959 005c 00100240 		.word	1073876992
 960 0060 8000C000 		.word	12583040
 961 0064 0024F400 		.word	16000000
 962              		.cfi_endproc
 963              	.LFE270:
 965              		.section	.text.LL_RCC_GetI2CClockFreq,"ax",%progbits
 966              		.align	1
 967              		.global	LL_RCC_GetI2CClockFreq
 968              		.syntax unified
 969              		.thumb
 970              		.thumb_func
 971              		.fpu fpv4-sp-d16
 973              	LL_RCC_GetI2CClockFreq:
 974              	.LVL58:
 975              	.LFB271:
 432:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t i2c_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 976              		.loc 2 432 1 is_stmt 1 view -0
 977              		.cfi_startproc
 978              		@ args = 0, pretend = 0, frame = 0
 979              		@ frame_needed = 0, uses_anonymous_args = 0
 433:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 980              		.loc 2 433 3 view .LVU243
 436:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 981              		.loc 2 436 3 view .LVU244
 438:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 982              		.loc 2 438 3 view .LVU245
 432:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t i2c_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 983              		.loc 2 432 1 is_stmt 0 view .LVU246
 984 0000 08B5     		push	{r3, lr}
 985              		.cfi_def_cfa_offset 8
 986              		.cfi_offset 3, -8
 987              		.cfi_offset 14, -4
 438:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 988              		.loc 2 438 6 view .LVU247
 989 0002 1C4B     		ldr	r3, .L92
 990 0004 9842     		cmp	r0, r3
 991 0006 1CD1     		bne	.L77
 441:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 992              		.loc 2 441 5 is_stmt 1 view .LVU248
 993              	.LVL59:
 994              	.LBB126:
 995              	.LBI126:
1810:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 996              		.loc 1 1810 26 view .LVU249
 997              	.LBB127:
1812:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)((READ_BIT(*reg, 3UL << ((I2Cx & 0x001F0000U) >> 16U)) >> ((I2Cx & 0x001F0000U) 
 998              		.loc 1 1812 3 view .LVU250
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 999              		.loc 1 1813 3 view .LVU251
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1000              		.loc 1 1813 22 is_stmt 0 view .LVU252
 1001 0008 1B4B     		ldr	r3, .L92+4
 1002              	.LBE127:
 1003              	.LBE126:
 441:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1004              		.loc 2 441 5 view .LVU253
 1005 000a 1C4A     		ldr	r2, .L92+8
 1006              	.LBB129:
 1007              	.LBB128:
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1008              		.loc 1 1813 22 view .LVU254
 1009 000c 1B68     		ldr	r3, [r3]
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1010              		.loc 1 1813 75 view .LVU255
 1011 000e C3F30133 		ubfx	r3, r3, #12, #2
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1012              		.loc 1 1813 10 view .LVU256
 1013 0012 43F44023 		orr	r3, r3, #786432
 1014              	.LVL60:
 1015              	.L90:
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1016              		.loc 1 1813 10 view .LVU257
 1017              	.LBE128:
 1018              	.LBE129:
 487:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1019              		.loc 2 487 7 view .LVU258
 1020 0016 9342     		cmp	r3, r2
 1021 0018 0AD0     		beq	.L78
 1022 001a 0132     		adds	r2, r2, #1
 1023 001c 9342     		cmp	r3, r2
 1024 001e 0BD0     		beq	.L79
 456:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1025              		.loc 2 456 9 is_stmt 1 view .LVU259
 456:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1026              		.loc 2 456 25 is_stmt 0 view .LVU260
 1027 0020 FFF7FEFF 		bl	RCC_GetSystemClockFreq
 1028              	.LVL61:
 456:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1029              		.loc 2 456 25 view .LVU261
 1030 0024 FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 1031              	.LVL62:
 536:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1032              		.loc 2 536 1 view .LVU262
 1033 0028 BDE80840 		pop	{r3, lr}
 1034              		.cfi_remember_state
 1035              		.cfi_restore 14
 1036              		.cfi_restore 3
 1037              		.cfi_def_cfa_offset 0
 456:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1038              		.loc 2 456 25 view .LVU263
 1039 002c FFF7FEBF 		b	RCC_GetPCLK1ClockFreq
 1040              	.LVL63:
 1041              	.L78:
 1042              		.cfi_restore_state
 444:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1043              		.loc 2 444 9 is_stmt 1 view .LVU264
 536:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1044              		.loc 2 536 1 is_stmt 0 view .LVU265
 1045 0030 BDE80840 		pop	{r3, lr}
 1046              		.cfi_remember_state
 1047              		.cfi_restore 14
 1048              		.cfi_restore 3
 1049              		.cfi_def_cfa_offset 0
 444:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1050              		.loc 2 444 25 view .LVU266
 1051 0034 FFF7FEBF 		b	RCC_GetSystemClockFreq
 1052              	.LVL64:
 1053              	.L79:
 1054              		.cfi_restore_state
 448:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1055              		.loc 2 448 9 is_stmt 1 view .LVU267
 448:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1056              		.loc 2 448 13 is_stmt 0 view .LVU268
 1057 0038 FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 1058              	.LVL65:
 448:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1059              		.loc 2 448 12 view .LVU269
 1060 003c B8B9     		cbnz	r0, .L84
 1061              	.L83:
 433:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1062              		.loc 2 433 12 view .LVU270
 1063 003e 0020     		movs	r0, #0
 1064              	.LVL66:
 1065              	.L76:
 536:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1066              		.loc 2 536 1 view .LVU271
 1067 0040 08BD     		pop	{r3, pc}
 1068              	.LVL67:
 1069              	.L77:
 460:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1070              		.loc 2 460 8 is_stmt 1 view .LVU272
 460:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1071              		.loc 2 460 11 is_stmt 0 view .LVU273
 1072 0042 0F4B     		ldr	r3, .L92+12
 1073 0044 9842     		cmp	r0, r3
 1074 0046 07D1     		bne	.L82
 463:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1075              		.loc 2 463 5 is_stmt 1 view .LVU274
 1076              	.LVL68:
 1077              	.LBB130:
 1078              	.LBI130:
1810:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1079              		.loc 1 1810 26 view .LVU275
 1080              	.LBB131:
1812:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)((READ_BIT(*reg, 3UL << ((I2Cx & 0x001F0000U) >> 16U)) >> ((I2Cx & 0x001F0000U) 
 1081              		.loc 1 1812 3 view .LVU276
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1082              		.loc 1 1813 3 view .LVU277
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1083              		.loc 1 1813 22 is_stmt 0 view .LVU278
 1084 0048 0B4B     		ldr	r3, .L92+4
 1085              	.LBE131:
 1086              	.LBE130:
 463:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1087              		.loc 2 463 5 view .LVU279
 1088 004a 0E4A     		ldr	r2, .L92+16
 1089              	.LBB133:
 1090              	.LBB132:
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1091              		.loc 1 1813 22 view .LVU280
 1092 004c 1B68     		ldr	r3, [r3]
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1093              		.loc 1 1813 75 view .LVU281
 1094 004e C3F38133 		ubfx	r3, r3, #14, #2
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1095              		.loc 1 1813 10 view .LVU282
 1096 0052 43F46023 		orr	r3, r3, #917504
 1097              	.LVL69:
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1098              		.loc 1 1813 10 view .LVU283
 1099 0056 DEE7     		b	.L90
 1100              	.L82:
 1101              	.LBE132:
 1102              	.LBE133:
 484:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1103              		.loc 2 484 5 is_stmt 1 view .LVU284
 484:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1104              		.loc 2 484 8 is_stmt 0 view .LVU285
 1105 0058 0B4B     		ldr	r3, .L92+20
 1106 005a 9842     		cmp	r0, r3
 1107 005c EFD1     		bne	.L83
 487:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1108              		.loc 2 487 7 is_stmt 1 view .LVU286
 1109              	.LVL70:
 1110              	.LBB134:
 1111              	.LBI134:
1810:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1112              		.loc 1 1810 26 view .LVU287
 1113              	.LBB135:
1812:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)((READ_BIT(*reg, 3UL << ((I2Cx & 0x001F0000U) >> 16U)) >> ((I2Cx & 0x001F0000U) 
 1114              		.loc 1 1812 3 view .LVU288
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1115              		.loc 1 1813 3 view .LVU289
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1116              		.loc 1 1813 22 is_stmt 0 view .LVU290
 1117 005e 064B     		ldr	r3, .L92+4
 1118              	.LBE135:
 1119              	.LBE134:
 487:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1120              		.loc 2 487 7 view .LVU291
 1121 0060 0A4A     		ldr	r2, .L92+24
 1122              	.LBB137:
 1123              	.LBB136:
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1124              		.loc 1 1813 22 view .LVU292
 1125 0062 1B68     		ldr	r3, [r3]
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1126              		.loc 1 1813 75 view .LVU293
 1127 0064 C3F30143 		ubfx	r3, r3, #16, #2
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1128              		.loc 1 1813 10 view .LVU294
 1129 0068 43F48013 		orr	r3, r3, #1048576
 1130              	.LVL71:
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1131              		.loc 1 1813 10 view .LVU295
 1132 006c D3E7     		b	.L90
 1133              	.LVL72:
 1134              	.L84:
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1135              		.loc 1 1813 10 view .LVU296
 1136              	.LBE136:
 1137              	.LBE137:
 450:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1138              		.loc 2 450 25 view .LVU297
 1139 006e 0848     		ldr	r0, .L92+28
 1140              	.LVL73:
 535:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1141              		.loc 2 535 3 is_stmt 1 view .LVU298
 535:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1142              		.loc 2 535 10 is_stmt 0 view .LVU299
 1143 0070 E6E7     		b	.L76
 1144              	.L93:
 1145 0072 00BF     		.align	2
 1146              	.L92:
 1147 0074 03000C00 		.word	786435
 1148 0078 88100240 		.word	1073877128
 1149 007c 01000C00 		.word	786433
 1150 0080 03000E00 		.word	917507
 1151 0084 01000E00 		.word	917505
 1152 0088 03001000 		.word	1048579
 1153 008c 01001000 		.word	1048577
 1154 0090 0024F400 		.word	16000000
 1155              		.cfi_endproc
 1156              	.LFE271:
 1158              		.section	.text.LL_RCC_GetLPUARTClockFreq,"ax",%progbits
 1159              		.align	1
 1160              		.global	LL_RCC_GetLPUARTClockFreq
 1161              		.syntax unified
 1162              		.thumb
 1163              		.thumb_func
 1164              		.fpu fpv4-sp-d16
 1166              	LL_RCC_GetLPUARTClockFreq:
 1167              	.LVL74:
 1168              	.LFB272:
 547:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t lpuart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1169              		.loc 2 547 1 is_stmt 1 view -0
 1170              		.cfi_startproc
 1171              		@ args = 0, pretend = 0, frame = 0
 1172              		@ frame_needed = 0, uses_anonymous_args = 0
 548:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1173              		.loc 2 548 3 view .LVU301
 551:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1174              		.loc 2 551 3 view .LVU302
 554:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1175              		.loc 2 554 3 view .LVU303
 1176              	.LBB138:
 1177              	.LBI138:
1779:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1178              		.loc 1 1779 26 view .LVU304
 1179              	.LBB139:
1781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1180              		.loc 1 1781 3 view .LVU305
 1181              	.LBE139:
 1182              	.LBE138:
 547:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t lpuart_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1183              		.loc 2 547 1 is_stmt 0 view .LVU306
 1184 0000 08B5     		push	{r3, lr}
 1185              		.cfi_def_cfa_offset 8
 1186              		.cfi_offset 3, -8
 1187              		.cfi_offset 14, -4
 1188              	.LBB141:
 1189              	.LBB140:
1781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1190              		.loc 1 1781 21 view .LVU307
 1191 0002 134B     		ldr	r3, .L102
 1192 0004 D3F88830 		ldr	r3, [r3, #136]
1781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1193              		.loc 1 1781 10 view .LVU308
 1194 0008 1840     		ands	r0, r0, r3
 1195              	.LVL75:
1781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1196              		.loc 1 1781 10 view .LVU309
 1197              	.LBE140:
 1198              	.LBE141:
 554:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1199              		.loc 2 554 3 view .LVU310
 1200 000a B0F5006F 		cmp	r0, #2048
 1201 000e 09D0     		beq	.L95
 1202 0010 B0F5406F 		cmp	r0, #3072
 1203 0014 0BD0     		beq	.L96
 1204 0016 B0F5806F 		cmp	r0, #1024
 1205 001a 0FD1     		bne	.L97
 557:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 1206              		.loc 2 557 7 is_stmt 1 view .LVU311
 581:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1207              		.loc 2 581 1 is_stmt 0 view .LVU312
 1208 001c BDE80840 		pop	{r3, lr}
 1209              		.cfi_remember_state
 1210              		.cfi_restore 14
 1211              		.cfi_restore 3
 1212              		.cfi_def_cfa_offset 0
 557:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 1213              		.loc 2 557 26 view .LVU313
 1214 0020 FFF7FEBF 		b	RCC_GetSystemClockFreq
 1215              	.LVL76:
 1216              	.L95:
 1217              		.cfi_restore_state
 561:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1218              		.loc 2 561 7 is_stmt 1 view .LVU314
 561:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1219              		.loc 2 561 11 is_stmt 0 view .LVU315
 1220 0024 FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 1221              	.LVL77:
 561:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1222              		.loc 2 561 10 view .LVU316
 1223 0028 80B9     		cbnz	r0, .L100
 1224              	.L99:
 548:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1225              		.loc 2 548 12 view .LVU317
 1226 002a 0020     		movs	r0, #0
 1227              	.LVL78:
 1228              	.L94:
 581:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1229              		.loc 2 581 1 view .LVU318
 1230 002c 08BD     		pop	{r3, pc}
 1231              	.LVL79:
 1232              	.L96:
 568:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1233              		.loc 2 568 7 is_stmt 1 view .LVU319
 568:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1234              		.loc 2 568 11 is_stmt 0 view .LVU320
 1235 002e FFF7FEFF 		bl	LL_RCC_LSE_IsReady
 1236              	.LVL80:
 568:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1237              		.loc 2 568 10 view .LVU321
 1238 0032 0028     		cmp	r0, #0
 1239 0034 F9D0     		beq	.L99
 570:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 1240              		.loc 2 570 26 view .LVU322
 1241 0036 4FF40040 		mov	r0, #32768
 1242              	.LVL81:
 580:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1243              		.loc 2 580 3 is_stmt 1 view .LVU323
 580:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1244              		.loc 2 580 10 is_stmt 0 view .LVU324
 1245 003a F7E7     		b	.L94
 1246              	.LVL82:
 1247              	.L97:
 576:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 1248              		.loc 2 576 7 is_stmt 1 view .LVU325
 576:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 1249              		.loc 2 576 26 is_stmt 0 view .LVU326
 1250 003c FFF7FEFF 		bl	RCC_GetSystemClockFreq
 1251              	.LVL83:
 1252 0040 FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 1253              	.LVL84:
 581:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1254              		.loc 2 581 1 view .LVU327
 1255 0044 BDE80840 		pop	{r3, lr}
 1256              		.cfi_remember_state
 1257              		.cfi_restore 14
 1258              		.cfi_restore 3
 1259              		.cfi_def_cfa_offset 0
 576:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 1260              		.loc 2 576 26 view .LVU328
 1261 0048 FFF7FEBF 		b	RCC_GetPCLK1ClockFreq
 1262              	.LVL85:
 1263              	.L100:
 1264              		.cfi_restore_state
 563:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 1265              		.loc 2 563 26 view .LVU329
 1266 004c 0148     		ldr	r0, .L102+4
 1267 004e EDE7     		b	.L94
 1268              	.L103:
 1269              		.align	2
 1270              	.L102:
 1271 0050 00100240 		.word	1073876992
 1272 0054 0024F400 		.word	16000000
 1273              		.cfi_endproc
 1274              	.LFE272:
 1276              		.section	.text.LL_RCC_GetLPTIMClockFreq,"ax",%progbits
 1277              		.align	1
 1278              		.global	LL_RCC_GetLPTIMClockFreq
 1279              		.syntax unified
 1280              		.thumb
 1281              		.thumb_func
 1282              		.fpu fpv4-sp-d16
 1284              	LL_RCC_GetLPTIMClockFreq:
 1285              	.LVL86:
 1286              	.LFB273:
 591:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t lptim_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1287              		.loc 2 591 1 is_stmt 1 view -0
 1288              		.cfi_startproc
 1289              		@ args = 0, pretend = 0, frame = 0
 1290              		@ frame_needed = 0, uses_anonymous_args = 0
 592:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1291              		.loc 2 592 3 view .LVU331
 595:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1292              		.loc 2 595 3 view .LVU332
 597:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1293              		.loc 2 597 3 view .LVU333
 597:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1294              		.loc 2 597 6 is_stmt 0 view .LVU334
 1295 0000 B0F5402F 		cmp	r0, #786432
 591:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t lptim_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1296              		.loc 2 591 1 view .LVU335
 1297 0004 08B5     		push	{r3, lr}
 1298              		.cfi_def_cfa_offset 8
 1299              		.cfi_offset 3, -8
 1300              		.cfi_offset 14, -4
 597:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1301              		.loc 2 597 6 view .LVU336
 1302 0006 11D1     		bne	.L105
 600:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1303              		.loc 2 600 5 is_stmt 1 view .LVU337
 1304              	.LVL87:
 1305              	.LBB146:
 1306              	.LBI146:
1827:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1307              		.loc 1 1827 26 view .LVU338
 1308              	.LBB147:
1829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1309              		.loc 1 1829 3 view .LVU339
1829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1310              		.loc 1 1829 21 is_stmt 0 view .LVU340
 1311 0008 154A     		ldr	r2, .L113
 1312 000a D2F88830 		ldr	r3, [r2, #136]
1829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1313              		.loc 1 1829 10 view .LVU341
 1314 000e 03F44023 		and	r3, r3, #786432
 1315              	.LVL88:
1829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1316              		.loc 1 1829 10 view .LVU342
 1317              	.LBE147:
 1318              	.LBE146:
 600:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1319              		.loc 2 600 5 view .LVU343
 1320 0012 B3F5002F 		cmp	r3, #524288
 1321 0016 0BD0     		beq	.L106
 1322 0018 B3F5402F 		cmp	r3, #786432
 1323 001c 0ED0     		beq	.L107
 1324 001e B3F5802F 		cmp	r3, #262144
 1325 0022 12D1     		bne	.L108
 603:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1326              		.loc 2 603 9 is_stmt 1 view .LVU344
 1327              	.LBB148:
 1328              	.LBI148:
1267:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1329              		.loc 1 1267 26 view .LVU345
 1330              	.LBB149:
1269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1331              		.loc 1 1269 3 view .LVU346
1269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1332              		.loc 1 1269 12 is_stmt 0 view .LVU347
 1333 0024 D2F89430 		ldr	r3, [r2, #148]
1269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1334              		.loc 1 1269 74 view .LVU348
 1335 0028 9B07     		lsls	r3, r3, #30
 1336 002a 16D4     		bmi	.L110
 1337              	.LVL89:
 1338              	.L105:
1269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1339              		.loc 1 1269 74 view .LVU349
 1340              	.LBE149:
 1341              	.LBE148:
 592:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1342              		.loc 2 592 12 view .LVU350
 1343 002c 0020     		movs	r0, #0
 1344              	.LVL90:
 1345              	.L104:
 631:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1346              		.loc 2 631 1 view .LVU351
 1347 002e 08BD     		pop	{r3, pc}
 1348              	.LVL91:
 1349              	.L106:
 610:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1350              		.loc 2 610 9 is_stmt 1 view .LVU352
 610:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1351              		.loc 2 610 13 is_stmt 0 view .LVU353
 1352 0030 FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 1353              	.LVL92:
 610:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1354              		.loc 2 610 12 view .LVU354
 1355 0034 0028     		cmp	r0, #0
 1356 0036 F9D0     		beq	.L105
 612:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1357              		.loc 2 612 27 view .LVU355
 1358 0038 0A48     		ldr	r0, .L113+4
 1359 003a F8E7     		b	.L104
 1360              	.LVL93:
 1361              	.L107:
 617:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1362              		.loc 2 617 9 is_stmt 1 view .LVU356
 617:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1363              		.loc 2 617 13 is_stmt 0 view .LVU357
 1364 003c FFF7FEFF 		bl	LL_RCC_LSE_IsReady
 1365              	.LVL94:
 617:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1366              		.loc 2 617 12 view .LVU358
 1367 0040 0028     		cmp	r0, #0
 1368 0042 F3D0     		beq	.L105
 619:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1369              		.loc 2 619 27 view .LVU359
 1370 0044 4FF40040 		mov	r0, #32768
 1371              	.LVL95:
 630:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1372              		.loc 2 630 3 is_stmt 1 view .LVU360
 630:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1373              		.loc 2 630 10 is_stmt 0 view .LVU361
 1374 0048 F1E7     		b	.L104
 1375              	.LVL96:
 1376              	.L108:
 625:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1377              		.loc 2 625 9 is_stmt 1 view .LVU362
 625:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1378              		.loc 2 625 27 is_stmt 0 view .LVU363
 1379 004a FFF7FEFF 		bl	RCC_GetSystemClockFreq
 1380              	.LVL97:
 625:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1381              		.loc 2 625 27 view .LVU364
 1382 004e FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 1383              	.LVL98:
 631:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1384              		.loc 2 631 1 view .LVU365
 1385 0052 BDE80840 		pop	{r3, lr}
 1386              		.cfi_remember_state
 1387              		.cfi_restore 14
 1388              		.cfi_restore 3
 1389              		.cfi_def_cfa_offset 0
 625:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1390              		.loc 2 625 27 view .LVU366
 1391 0056 FFF7FEBF 		b	RCC_GetPCLK1ClockFreq
 1392              	.LVL99:
 1393              	.L110:
 1394              		.cfi_restore_state
 605:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1395              		.loc 2 605 27 view .LVU367
 1396 005a 4FF4FA40 		mov	r0, #32000
 1397              	.LVL100:
 605:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1398              		.loc 2 605 27 view .LVU368
 1399 005e E6E7     		b	.L104
 1400              	.L114:
 1401              		.align	2
 1402              	.L113:
 1403 0060 00100240 		.word	1073876992
 1404 0064 0024F400 		.word	16000000
 1405              		.cfi_endproc
 1406              	.LFE273:
 1408              		.section	.text.RCC_PLL_GetFreqDomain_ADC,"ax",%progbits
 1409              		.align	1
 1410              		.global	RCC_PLL_GetFreqDomain_ADC
 1411              		.syntax unified
 1412              		.thumb
 1413              		.thumb_func
 1414              		.fpu fpv4-sp-d16
 1416              	RCC_PLL_GetFreqDomain_ADC:
 1417              	.LFB285:
1074:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1075:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
1076:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return PLL clock frequency used for ADC domain
1077:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval PLL clock frequency (in Hz)
1078:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1079:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_PLL_GetFreqDomain_ADC(void)
1080:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 1418              		.loc 2 1080 1 is_stmt 1 view -0
 1419              		.cfi_startproc
 1420              		@ args = 0, pretend = 0, frame = 0
 1421              		@ frame_needed = 0, uses_anonymous_args = 0
 1422              		@ link register save eliminated.
1081:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t pllinputfreq, pllsource;
 1423              		.loc 2 1081 3 view .LVU370
1082:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1083:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
1084:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****      ADC Domain clock = PLL_VCO / PLLP
1085:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1086:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   pllsource = LL_RCC_PLL_GetMainSource();
 1424              		.loc 2 1086 3 view .LVU371
 1425              	.LBB158:
 1426              	.LBI158:
2262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1427              		.loc 1 2262 26 view .LVU372
 1428              	.LBB159:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1429              		.loc 1 2264 3 view .LVU373
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1430              		.loc 1 2264 21 is_stmt 0 view .LVU374
 1431 0000 134A     		ldr	r2, .L121
 1432              	.LBE159:
 1433              	.LBE158:
1087:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1088:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (pllsource)
1089:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
1090:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_PLLSOURCE_HSI:  /* HSI used as PLL clock source */
1091:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSI_VALUE;
1092:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1093:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1094:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_PLLSOURCE_HSE:  /* HSE used as PLL clock source */
1095:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSE_VALUE;
 1434              		.loc 2 1095 20 view .LVU375
 1435 0002 1449     		ldr	r1, .L121+4
 1436              	.LBB162:
 1437              	.LBB160:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1438              		.loc 1 2264 21 view .LVU376
 1439 0004 D068     		ldr	r0, [r2, #12]
 1440              	.LVL101:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1441              		.loc 1 2264 21 view .LVU377
 1442              	.LBE160:
 1443              	.LBE162:
1088:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1444              		.loc 2 1088 3 is_stmt 1 view .LVU378
 1445              		.loc 2 1095 20 is_stmt 0 view .LVU379
 1446 0006 144B     		ldr	r3, .L121+8
 1447              	.LBB163:
 1448              	.LBB161:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1449              		.loc 1 2264 10 view .LVU380
 1450 0008 00F00300 		and	r0, r0, #3
 1451              	.LVL102:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1452              		.loc 1 2264 10 view .LVU381
 1453              	.LBE161:
 1454              	.LBE163:
 1455              		.loc 2 1095 20 view .LVU382
 1456 000c 0328     		cmp	r0, #3
 1457 000e 08BF     		it	eq
 1458 0010 0B46     		moveq	r3, r1
 1459              	.LVL103:
1096:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1097:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1098:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
1099:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSI_VALUE;
1100:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1101:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
1102:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return __LL_RCC_CALC_PLLCLK_ADC_FREQ(pllinputfreq, LL_RCC_PLL_GetDivider(),
 1460              		.loc 2 1102 3 is_stmt 1 view .LVU383
 1461              	.LBB164:
 1462              	.LBI164:
2272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1463              		.loc 1 2272 26 view .LVU384
 1464              	.LBB165:
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1465              		.loc 1 2274 3 view .LVU385
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1466              		.loc 1 2274 21 is_stmt 0 view .LVU386
 1467 0012 D168     		ldr	r1, [r2, #12]
 1468              	.LBE165:
 1469              	.LBE164:
 1470              	.LBB167:
 1471              	.LBI167:
2370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1472              		.loc 1 2370 26 is_stmt 1 view .LVU387
 1473              	.LBB168:
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1474              		.loc 1 2372 3 view .LVU388
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1475              		.loc 1 2372 21 is_stmt 0 view .LVU389
 1476 0014 D068     		ldr	r0, [r2, #12]
 1477              	.LVL104:
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1478              		.loc 1 2372 21 view .LVU390
 1479              	.LBE168:
 1480              	.LBE167:
 1481              	.LBB169:
 1482              	.LBB166:
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1483              		.loc 1 2274 10 view .LVU391
 1484 0016 C1F30621 		ubfx	r1, r1, #8, #7
 1485              	.LBE166:
 1486              	.LBE169:
 1487              		.loc 2 1102 10 view .LVU392
 1488 001a 4B43     		muls	r3, r1, r3
 1489              	.LVL105:
 1490              	.LBB170:
 1491              	.LBB171:
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1492              		.loc 1 2316 23 view .LVU393
 1493 001c D168     		ldr	r1, [r2, #12]
 1494              	.LBE171:
 1495              	.LBE170:
 1496              		.loc 2 1102 10 view .LVU394
 1497 001e C0F30310 		ubfx	r0, r0, #4, #4
 1498              	.LBB175:
 1499              	.LBB172:
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1500              		.loc 1 2316 10 view .LVU395
 1501 0022 11F0784F 		tst	r1, #-134217728
 1502              	.LBE172:
 1503              	.LBE175:
 1504              		.loc 2 1102 10 view .LVU396
 1505 0026 00F10100 		add	r0, r0, #1
 1506 002a B3FBF0F3 		udiv	r3, r3, r0
 1507              	.LBB176:
 1508              	.LBI170:
2314:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1509              		.loc 1 2314 26 is_stmt 1 view .LVU397
 1510              	.LBB173:
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1511              		.loc 1 2316 3 view .LVU398
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1512              		.loc 1 2316 10 is_stmt 0 view .LVU399
 1513 002e 06D0     		beq	.L117
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1514              		.loc 1 2316 76 view .LVU400
 1515 0030 D068     		ldr	r0, [r2, #12]
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1516              		.loc 1 2316 10 view .LVU401
 1517 0032 00F07840 		and	r0, r0, #-134217728
 1518              	.L118:
 1519              	.LBE173:
 1520              	.LBE176:
 1521              		.loc 2 1102 10 view .LVU402
 1522 0036 C00E     		lsrs	r0, r0, #27
1103:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                         LL_RCC_PLL_GetN(), LL_RCC_PLL_GetP());
1104:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1523              		.loc 2 1104 1 view .LVU403
 1524 0038 B3FBF0F0 		udiv	r0, r3, r0
 1525 003c 7047     		bx	lr
 1526              	.L117:
 1527              	.LBB177:
 1528              	.LBB174:
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1529              		.loc 1 2316 124 view .LVU404
 1530 003e D268     		ldr	r2, [r2, #12]
2316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1531              		.loc 1 2316 10 view .LVU405
 1532 0040 12F4003F 		tst	r2, #131072
 1533 0044 14BF     		ite	ne
 1534 0046 4FF00840 		movne	r0, #-2013265920
 1535 004a 4FF06050 		moveq	r0, #939524096
 1536 004e F2E7     		b	.L118
 1537              	.L122:
 1538              		.align	2
 1539              	.L121:
 1540 0050 00100240 		.word	1073876992
 1541 0054 00127A00 		.word	8000000
 1542 0058 0024F400 		.word	16000000
 1543              	.LBE174:
 1544              	.LBE177:
 1545              		.cfi_endproc
 1546              	.LFE285:
 1548              		.section	.text.LL_RCC_GetADCClockFreq,"ax",%progbits
 1549              		.align	1
 1550              		.global	LL_RCC_GetADCClockFreq
 1551              		.syntax unified
 1552              		.thumb
 1553              		.thumb_func
 1554              		.fpu fpv4-sp-d16
 1556              	LL_RCC_GetADCClockFreq:
 1557              	.LVL106:
 1558              	.LFB279:
 867:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t adc_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1559              		.loc 2 867 1 is_stmt 1 view -0
 1560              		.cfi_startproc
 1561              		@ args = 0, pretend = 0, frame = 0
 1562              		@ frame_needed = 0, uses_anonymous_args = 0
 868:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1563              		.loc 2 868 3 view .LVU407
 871:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1564              		.loc 2 871 3 view .LVU408
 873:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1565              		.loc 2 873 3 view .LVU409
 867:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t adc_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1566              		.loc 2 867 1 is_stmt 0 view .LVU410
 1567 0000 08B5     		push	{r3, lr}
 1568              		.cfi_def_cfa_offset 8
 1569              		.cfi_offset 3, -8
 1570              		.cfi_offset 14, -4
 873:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1571              		.loc 2 873 6 view .LVU411
 1572 0002 104B     		ldr	r3, .L132
 1573 0004 9842     		cmp	r0, r3
 1574 0006 01D0     		beq	.L124
 1575              	.LVL107:
 1576              	.L128:
 868:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1577              		.loc 2 868 12 view .LVU412
 1578 0008 0020     		movs	r0, #0
 1579              	.L123:
 921:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1580              		.loc 2 921 1 view .LVU413
 1581 000a 08BD     		pop	{r3, pc}
 1582              	.LVL108:
 1583              	.L124:
 876:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1584              		.loc 2 876 5 is_stmt 1 view .LVU414
 1585              	.LBB180:
 1586              	.LBI180:
1930:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1587              		.loc 1 1930 26 view .LVU415
 1588              	.LBB181:
1932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1589              		.loc 1 1932 3 view .LVU416
1932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1590              		.loc 1 1932 22 is_stmt 0 view .LVU417
 1591 000c 0E4B     		ldr	r3, .L132+4
 1592              	.LBE181:
 1593              	.LBE180:
 876:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1594              		.loc 2 876 5 view .LVU418
 1595 000e 0F4A     		ldr	r2, .L132+8
 1596              	.LBB183:
 1597              	.LBB182:
1932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1598              		.loc 1 1932 22 view .LVU419
 1599 0010 D3F88830 		ldr	r3, [r3, #136]
1932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1600              		.loc 1 1932 81 view .LVU420
 1601 0014 C3F30173 		ubfx	r3, r3, #28, #2
1932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1602              		.loc 1 1932 10 view .LVU421
 1603 0018 43F4E013 		orr	r3, r3, #1835008
 1604              	.LVL109:
1932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1605              		.loc 1 1932 10 view .LVU422
 1606              	.LBE182:
 1607              	.LBE183:
 876:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1608              		.loc 2 876 5 view .LVU423
 1609 001c 9342     		cmp	r3, r2
 1610 001e 05D0     		beq	.L126
 1611 0020 0132     		adds	r2, r2, #1
 1612 0022 9342     		cmp	r3, r2
 1613 0024 0AD0     		beq	.L127
 891:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1614              		.loc 2 891 23 view .LVU424
 1615 0026 4FF0FF30 		mov	r0, #-1
 1616              	.LVL110:
 891:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1617              		.loc 2 891 23 view .LVU425
 1618 002a EEE7     		b	.L123
 1619              	.LVL111:
 1620              	.L126:
 879:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1621              		.loc 2 879 9 is_stmt 1 view .LVU426
 879:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1622              		.loc 2 879 13 is_stmt 0 view .LVU427
 1623 002c FFF7FEFF 		bl	LL_RCC_PLL_IsReady
 1624              	.LVL112:
 879:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1625              		.loc 2 879 12 view .LVU428
 1626 0030 0028     		cmp	r0, #0
 1627 0032 E9D0     		beq	.L128
 881:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1628              		.loc 2 881 11 is_stmt 1 view .LVU429
 921:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1629              		.loc 2 921 1 is_stmt 0 view .LVU430
 1630 0034 BDE80840 		pop	{r3, lr}
 1631              		.cfi_remember_state
 1632              		.cfi_restore 14
 1633              		.cfi_restore 3
 1634              		.cfi_def_cfa_offset 0
 881:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1635              		.loc 2 881 27 view .LVU431
 1636 0038 FFF7FEBF 		b	RCC_PLL_GetFreqDomain_ADC
 1637              	.LVL113:
 1638              	.L127:
 1639              		.cfi_restore_state
 886:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1640              		.loc 2 886 9 is_stmt 1 view .LVU432
 921:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1641              		.loc 2 921 1 is_stmt 0 view .LVU433
 1642 003c BDE80840 		pop	{r3, lr}
 1643              		.cfi_restore 14
 1644              		.cfi_restore 3
 1645              		.cfi_def_cfa_offset 0
 886:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1646              		.loc 2 886 25 view .LVU434
 1647 0040 FFF7FEBF 		b	RCC_GetSystemClockFreq
 1648              	.LVL114:
 1649              	.L133:
 886:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1650              		.loc 2 886 25 view .LVU435
 1651              		.align	2
 1652              	.L132:
 1653 0044 03001C00 		.word	1835011
 1654 0048 00100240 		.word	1073876992
 1655 004c 01001C00 		.word	1835009
 1656              		.cfi_endproc
 1657              	.LFE279:
 1659              		.section	.text.RCC_PLL_GetFreqDomain_48M,"ax",%progbits
 1660              		.align	1
 1661              		.global	RCC_PLL_GetFreqDomain_48M
 1662              		.syntax unified
 1663              		.thumb
 1664              		.thumb_func
 1665              		.fpu fpv4-sp-d16
 1667              	RCC_PLL_GetFreqDomain_48M:
 1668              	.LFB286:
1105:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1106:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** /**
1107:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @brief  Return PLL clock frequency used for 48 MHz domain
1108:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   * @retval PLL clock frequency (in Hz)
1109:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1110:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** uint32_t RCC_PLL_GetFreqDomain_48M(void)
1111:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** {
 1669              		.loc 2 1111 1 is_stmt 1 view -0
 1670              		.cfi_startproc
 1671              		@ args = 0, pretend = 0, frame = 0
 1672              		@ frame_needed = 0, uses_anonymous_args = 0
 1673              		@ link register save eliminated.
1112:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t pllinputfreq, pllsource;
 1674              		.loc 2 1112 3 view .LVU437
1113:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1114:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
1115:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****      48M Domain clock = PLL_VCO / PLLQ
1116:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   */
1117:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   pllsource = LL_RCC_PLL_GetMainSource();
 1675              		.loc 2 1117 3 view .LVU438
 1676              	.LBB192:
 1677              	.LBI192:
2262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1678              		.loc 1 2262 26 view .LVU439
 1679              	.LBB193:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1680              		.loc 1 2264 3 view .LVU440
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1681              		.loc 1 2264 21 is_stmt 0 view .LVU441
 1682 0000 0D4B     		ldr	r3, .L137
 1683              	.LBE193:
 1684              	.LBE192:
1118:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1119:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   switch (pllsource)
1120:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
1121:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_PLLSOURCE_HSI:  /* HSI used as PLL clock source */
1122:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSI_VALUE;
1123:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1124:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1125:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     case LL_RCC_PLLSOURCE_HSE:  /* HSE used as PLL clock source */
1126:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSE_VALUE;
 1685              		.loc 2 1126 20 view .LVU442
 1686 0002 0E49     		ldr	r1, .L137+4
 1687              	.LBB196:
 1688              	.LBB194:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1689              		.loc 1 2264 21 view .LVU443
 1690 0004 DA68     		ldr	r2, [r3, #12]
 1691              	.LVL115:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1692              		.loc 1 2264 21 view .LVU444
 1693              	.LBE194:
 1694              	.LBE196:
1119:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1695              		.loc 2 1119 3 is_stmt 1 view .LVU445
 1696              		.loc 2 1126 20 is_stmt 0 view .LVU446
 1697 0006 0E48     		ldr	r0, .L137+8
 1698              	.LBB197:
 1699              	.LBB195:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1700              		.loc 1 2264 10 view .LVU447
 1701 0008 02F00302 		and	r2, r2, #3
 1702              	.LVL116:
2264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1703              		.loc 1 2264 10 view .LVU448
 1704              	.LBE195:
 1705              	.LBE197:
 1706              		.loc 2 1126 20 view .LVU449
 1707 000c 032A     		cmp	r2, #3
 1708 000e 08BF     		it	eq
 1709 0010 0846     		moveq	r0, r1
 1710              	.LVL117:
1127:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1128:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
1129:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     default:
1130:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       pllinputfreq = HSI_VALUE;
1131:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
1132:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   }
1133:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   return __LL_RCC_CALC_PLLCLK_48M_FREQ(pllinputfreq, LL_RCC_PLL_GetDivider(),
 1711              		.loc 2 1133 3 is_stmt 1 view .LVU450
 1712              	.LBB198:
 1713              	.LBI198:
2272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1714              		.loc 1 2272 26 view .LVU451
 1715              	.LBB199:
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1716              		.loc 1 2274 3 view .LVU452
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1717              		.loc 1 2274 21 is_stmt 0 view .LVU453
 1718 0012 D968     		ldr	r1, [r3, #12]
 1719              	.LBE199:
 1720              	.LBE198:
 1721              	.LBB201:
 1722              	.LBI201:
2370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1723              		.loc 1 2370 26 is_stmt 1 view .LVU454
 1724              	.LBB202:
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1725              		.loc 1 2372 3 view .LVU455
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1726              		.loc 1 2372 21 is_stmt 0 view .LVU456
 1727 0014 DA68     		ldr	r2, [r3, #12]
 1728              	.LVL118:
2372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1729              		.loc 1 2372 21 view .LVU457
 1730              	.LBE202:
 1731              	.LBE201:
 1732              	.LBB203:
 1733              	.LBI203:
2329:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1734              		.loc 1 2329 26 is_stmt 1 view .LVU458
 1735              	.LBB204:
2331:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1736              		.loc 1 2331 3 view .LVU459
2331:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1737              		.loc 1 2331 21 is_stmt 0 view .LVU460
 1738 0016 DB68     		ldr	r3, [r3, #12]
 1739              	.LBE204:
 1740              	.LBE203:
 1741              		.loc 2 1133 10 view .LVU461
 1742 0018 C3F34153 		ubfx	r3, r3, #21, #2
 1743              	.LBB205:
 1744              	.LBB200:
2274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1745              		.loc 1 2274 10 view .LVU462
 1746 001c C1F30621 		ubfx	r1, r1, #8, #7
 1747              	.LBE200:
 1748              	.LBE205:
 1749              		.loc 2 1133 10 view .LVU463
 1750 0020 C2F30312 		ubfx	r2, r2, #4, #4
 1751 0024 0133     		adds	r3, r3, #1
 1752 0026 4843     		muls	r0, r1, r0
 1753              	.LVL119:
 1754              		.loc 2 1133 10 view .LVU464
 1755 0028 0132     		adds	r2, r2, #1
 1756 002a 5B00     		lsls	r3, r3, #1
 1757 002c B0FBF2F0 		udiv	r0, r0, r2
1134:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****                                         LL_RCC_PLL_GetN(), LL_RCC_PLL_GetQ());
1135:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1758              		.loc 2 1135 1 view .LVU465
 1759 0030 B0FBF3F0 		udiv	r0, r0, r3
 1760 0034 7047     		bx	lr
 1761              	.L138:
 1762 0036 00BF     		.align	2
 1763              	.L137:
 1764 0038 00100240 		.word	1073876992
 1765 003c 00127A00 		.word	8000000
 1766 0040 0024F400 		.word	16000000
 1767              		.cfi_endproc
 1768              	.LFE286:
 1770              		.section	.text.LL_RCC_GetSAIClockFreq,"ax",%progbits
 1771              		.align	1
 1772              		.global	LL_RCC_GetSAIClockFreq
 1773              		.syntax unified
 1774              		.thumb
 1775              		.thumb_func
 1776              		.fpu fpv4-sp-d16
 1778              	LL_RCC_GetSAIClockFreq:
 1779              	.LVL120:
 1780              	.LFB274:
 642:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t sai_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1781              		.loc 2 642 1 is_stmt 1 view -0
 1782              		.cfi_startproc
 1783              		@ args = 0, pretend = 0, frame = 0
 1784              		@ frame_needed = 0, uses_anonymous_args = 0
 643:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1785              		.loc 2 643 3 view .LVU467
 646:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1786              		.loc 2 646 3 view .LVU468
 648:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1787              		.loc 2 648 3 view .LVU469
 648:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1788              		.loc 2 648 6 is_stmt 0 view .LVU470
 1789 0000 B0F5401F 		cmp	r0, #3145728
 642:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t sai_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1790              		.loc 2 642 1 view .LVU471
 1791 0004 08B5     		push	{r3, lr}
 1792              		.cfi_def_cfa_offset 8
 1793              		.cfi_offset 3, -8
 1794              		.cfi_offset 14, -4
 648:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1795              		.loc 2 648 6 view .LVU472
 1796 0006 01D0     		beq	.L140
 1797              	.LVL121:
 1798              	.L144:
 643:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1799              		.loc 2 643 12 view .LVU473
 1800 0008 0020     		movs	r0, #0
 1801              	.LVL122:
 1802              	.L139:
 680:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1803              		.loc 2 680 1 view .LVU474
 1804 000a 08BD     		pop	{r3, pc}
 1805              	.LVL123:
 1806              	.L140:
 651:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1807              		.loc 2 651 5 is_stmt 1 view .LVU475
 1808              	.LBB206:
 1809              	.LBI206:
1847:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1810              		.loc 1 1847 26 view .LVU476
 1811              	.LBB207:
1849:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1812              		.loc 1 1849 3 view .LVU477
1849:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1813              		.loc 1 1849 21 is_stmt 0 view .LVU478
 1814 000c 104B     		ldr	r3, .L152
 1815 000e D3F88830 		ldr	r3, [r3, #136]
1849:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1816              		.loc 1 1849 10 view .LVU479
 1817 0012 03F44013 		and	r3, r3, #3145728
 1818              	.LVL124:
1849:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1819              		.loc 1 1849 10 view .LVU480
 1820              	.LBE207:
 1821              	.LBE206:
 651:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1822              		.loc 2 651 5 view .LVU481
 1823 0016 B3F5801F 		cmp	r3, #1048576
 1824 001a 07D0     		beq	.L142
 1825 001c B3F5001F 		cmp	r3, #2097152
 1826 0020 12D0     		beq	.L145
 1827 0022 5BB9     		cbnz	r3, .L143
 654:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1828              		.loc 2 654 9 is_stmt 1 view .LVU482
 680:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1829              		.loc 2 680 1 is_stmt 0 view .LVU483
 1830 0024 BDE80840 		pop	{r3, lr}
 1831              		.cfi_remember_state
 1832              		.cfi_restore 14
 1833              		.cfi_restore 3
 1834              		.cfi_def_cfa_offset 0
 654:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1835              		.loc 2 654 25 view .LVU484
 1836 0028 FFF7FEBF 		b	RCC_GetSystemClockFreq
 1837              	.LVL125:
 1838              	.L142:
 1839              		.cfi_restore_state
 658:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1840              		.loc 2 658 9 is_stmt 1 view .LVU485
 658:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1841              		.loc 2 658 13 is_stmt 0 view .LVU486
 1842 002c FFF7FEFF 		bl	LL_RCC_PLL_IsReady
 1843              	.LVL126:
 658:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1844              		.loc 2 658 12 view .LVU487
 1845 0030 0028     		cmp	r0, #0
 1846 0032 E9D0     		beq	.L144
 660:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1847              		.loc 2 660 11 is_stmt 1 view .LVU488
 680:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1848              		.loc 2 680 1 is_stmt 0 view .LVU489
 1849 0034 BDE80840 		pop	{r3, lr}
 1850              		.cfi_remember_state
 1851              		.cfi_restore 14
 1852              		.cfi_restore 3
 1853              		.cfi_def_cfa_offset 0
 660:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1854              		.loc 2 660 27 view .LVU490
 1855 0038 FFF7FEBF 		b	RCC_PLL_GetFreqDomain_48M
 1856              	.LVL127:
 1857              	.L143:
 1858              		.cfi_restore_state
 670:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1859              		.loc 2 670 9 is_stmt 1 view .LVU491
 670:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1860              		.loc 2 670 13 is_stmt 0 view .LVU492
 1861 003c FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 1862              	.LVL128:
 670:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1863              		.loc 2 670 12 view .LVU493
 1864 0040 0028     		cmp	r0, #0
 1865 0042 E1D0     		beq	.L144
 672:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1866              		.loc 2 672 25 view .LVU494
 1867 0044 0348     		ldr	r0, .L152+4
 1868 0046 E0E7     		b	.L139
 1869              	.LVL129:
 1870              	.L145:
 665:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1871              		.loc 2 665 23 view .LVU495
 1872 0048 4BF68030 		movw	r0, #48000
 1873              	.LVL130:
 679:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1874              		.loc 2 679 3 is_stmt 1 view .LVU496
 679:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1875              		.loc 2 679 10 is_stmt 0 view .LVU497
 1876 004c DDE7     		b	.L139
 1877              	.L153:
 1878 004e 00BF     		.align	2
 1879              	.L152:
 1880 0050 00100240 		.word	1073876992
 1881 0054 0024F400 		.word	16000000
 1882              		.cfi_endproc
 1883              	.LFE274:
 1885              		.section	.text.LL_RCC_GetI2SClockFreq,"ax",%progbits
 1886              		.align	1
 1887              		.global	LL_RCC_GetI2SClockFreq
 1888              		.syntax unified
 1889              		.thumb
 1890              		.thumb_func
 1891              		.fpu fpv4-sp-d16
 1893              	LL_RCC_GetI2SClockFreq:
 1894              	.LVL131:
 1895              	.LFB275:
 690:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t i2s_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1896              		.loc 2 690 1 is_stmt 1 view -0
 1897              		.cfi_startproc
 1898              		@ args = 0, pretend = 0, frame = 0
 1899              		@ frame_needed = 0, uses_anonymous_args = 0
 691:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1900              		.loc 2 691 3 view .LVU499
 694:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1901              		.loc 2 694 3 view .LVU500
 696:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1902              		.loc 2 696 3 view .LVU501
 696:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1903              		.loc 2 696 6 is_stmt 0 view .LVU502
 1904 0000 B0F5400F 		cmp	r0, #12582912
 690:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t i2s_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 1905              		.loc 2 690 1 view .LVU503
 1906 0004 08B5     		push	{r3, lr}
 1907              		.cfi_def_cfa_offset 8
 1908              		.cfi_offset 3, -8
 1909              		.cfi_offset 14, -4
 696:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 1910              		.loc 2 696 6 view .LVU504
 1911 0006 01D0     		beq	.L155
 1912              	.LVL132:
 1913              	.L159:
 691:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1914              		.loc 2 691 12 view .LVU505
 1915 0008 0020     		movs	r0, #0
 1916              	.LVL133:
 1917              	.L154:
 727:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1918              		.loc 2 727 1 view .LVU506
 1919 000a 08BD     		pop	{r3, pc}
 1920              	.LVL134:
 1921              	.L155:
 699:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1922              		.loc 2 699 5 is_stmt 1 view .LVU507
 1923              	.LBB208:
 1924              	.LBI208:
1863:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1925              		.loc 1 1863 26 view .LVU508
 1926              	.LBB209:
1865:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1927              		.loc 1 1865 3 view .LVU509
1865:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1928              		.loc 1 1865 21 is_stmt 0 view .LVU510
 1929 000c 104B     		ldr	r3, .L167
 1930 000e D3F88830 		ldr	r3, [r3, #136]
1865:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1931              		.loc 1 1865 10 view .LVU511
 1932 0012 03F44003 		and	r3, r3, #12582912
 1933              	.LVL135:
1865:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1934              		.loc 1 1865 10 view .LVU512
 1935              	.LBE209:
 1936              	.LBE208:
 699:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****     {
 1937              		.loc 2 699 5 view .LVU513
 1938 0016 B3F5800F 		cmp	r3, #4194304
 1939 001a 07D0     		beq	.L157
 1940 001c B3F5000F 		cmp	r3, #8388608
 1941 0020 12D0     		beq	.L160
 1942 0022 5BB9     		cbnz	r3, .L158
 702:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 1943              		.loc 2 702 9 is_stmt 1 view .LVU514
 727:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1944              		.loc 2 727 1 is_stmt 0 view .LVU515
 1945 0024 BDE80840 		pop	{r3, lr}
 1946              		.cfi_remember_state
 1947              		.cfi_restore 14
 1948              		.cfi_restore 3
 1949              		.cfi_def_cfa_offset 0
 702:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 1950              		.loc 2 702 25 view .LVU516
 1951 0028 FFF7FEBF 		b	RCC_GetSystemClockFreq
 1952              	.LVL136:
 1953              	.L157:
 1954              		.cfi_restore_state
 706:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1955              		.loc 2 706 7 is_stmt 1 view .LVU517
 706:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1956              		.loc 2 706 11 is_stmt 0 view .LVU518
 1957 002c FFF7FEFF 		bl	LL_RCC_PLL_IsReady
 1958              	.LVL137:
 706:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 1959              		.loc 2 706 10 view .LVU519
 1960 0030 0028     		cmp	r0, #0
 1961 0032 E9D0     		beq	.L159
 708:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 1962              		.loc 2 708 9 is_stmt 1 view .LVU520
 727:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 1963              		.loc 2 727 1 is_stmt 0 view .LVU521
 1964 0034 BDE80840 		pop	{r3, lr}
 1965              		.cfi_remember_state
 1966              		.cfi_restore 14
 1967              		.cfi_restore 3
 1968              		.cfi_def_cfa_offset 0
 708:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 1969              		.loc 2 708 25 view .LVU522
 1970 0038 FFF7FEBF 		b	RCC_PLL_GetFreqDomain_48M
 1971              	.LVL138:
 1972              	.L158:
 1973              		.cfi_restore_state
 718:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1974              		.loc 2 718 9 is_stmt 1 view .LVU523
 718:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1975              		.loc 2 718 13 is_stmt 0 view .LVU524
 1976 003c FFF7FEFF 		bl	LL_RCC_HSI_IsReady
 1977              	.LVL139:
 718:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         {
 1978              		.loc 2 718 12 view .LVU525
 1979 0040 0028     		cmp	r0, #0
 1980 0042 E1D0     		beq	.L159
 720:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         }
 1981              		.loc 2 720 25 view .LVU526
 1982 0044 0348     		ldr	r0, .L167+4
 1983 0046 E0E7     		b	.L154
 1984              	.LVL140:
 1985              	.L160:
 713:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****         break;
 1986              		.loc 2 713 23 view .LVU527
 1987 0048 4BF68030 		movw	r0, #48000
 1988              	.LVL141:
 726:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1989              		.loc 2 726 3 is_stmt 1 view .LVU528
 726:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 1990              		.loc 2 726 10 is_stmt 0 view .LVU529
 1991 004c DDE7     		b	.L154
 1992              	.L168:
 1993 004e 00BF     		.align	2
 1994              	.L167:
 1995 0050 00100240 		.word	1073876992
 1996 0054 0024F400 		.word	16000000
 1997              		.cfi_endproc
 1998              	.LFE275:
 2000              		.section	.text.LL_RCC_GetFDCANClockFreq,"ax",%progbits
 2001              		.align	1
 2002              		.global	LL_RCC_GetFDCANClockFreq
 2003              		.syntax unified
 2004              		.thumb
 2005              		.thumb_func
 2006              		.fpu fpv4-sp-d16
 2008              	LL_RCC_GetFDCANClockFreq:
 2009              	.LVL142:
 2010              	.LFB276:
 739:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t fdcan_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 2011              		.loc 2 739 1 is_stmt 1 view -0
 2012              		.cfi_startproc
 2013              		@ args = 0, pretend = 0, frame = 0
 2014              		@ frame_needed = 0, uses_anonymous_args = 0
 740:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2015              		.loc 2 740 3 view .LVU531
 743:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2016              		.loc 2 743 3 view .LVU532
 746:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 2017              		.loc 2 746 3 view .LVU533
 2018              	.LBB214:
 2019              	.LBI214:
1880:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 2020              		.loc 1 1880 26 view .LVU534
 2021              	.LBB215:
1882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2022              		.loc 1 1882 3 view .LVU535
1882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2023              		.loc 1 1882 21 is_stmt 0 view .LVU536
 2024 0000 124A     		ldr	r2, .L179
 2025              	.LBE215:
 2026              	.LBE214:
 739:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t fdcan_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 2027              		.loc 2 739 1 view .LVU537
 2028 0002 08B5     		push	{r3, lr}
 2029              		.cfi_def_cfa_offset 8
 2030              		.cfi_offset 3, -8
 2031              		.cfi_offset 14, -4
 2032              	.LBB217:
 2033              	.LBB216:
1882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2034              		.loc 1 1882 21 view .LVU538
 2035 0004 D2F88830 		ldr	r3, [r2, #136]
1882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2036              		.loc 1 1882 10 view .LVU539
 2037 0008 1840     		ands	r0, r0, r3
 2038              	.LVL143:
1882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2039              		.loc 1 1882 10 view .LVU540
 2040              	.LBE216:
 2041              	.LBE217:
 746:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 2042              		.loc 2 746 3 view .LVU541
 2043 000a B0F1807F 		cmp	r0, #16777216
 2044 000e 08D0     		beq	.L170
 2045 0010 B0F1007F 		cmp	r0, #33554432
 2046 0014 0DD0     		beq	.L171
 2047 0016 A0B9     		cbnz	r0, .L174
 749:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2048              		.loc 2 749 7 is_stmt 1 view .LVU542
 2049              	.LBB218:
 2050              	.LBI218:
 966:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 2051              		.loc 1 966 26 view .LVU543
 2052              	.LBB219:
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2053              		.loc 1 968 3 view .LVU544
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2054              		.loc 1 968 12 is_stmt 0 view .LVU545
 2055 0018 1368     		ldr	r3, [r2]
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2056              		.loc 1 968 71 view .LVU546
 2057 001a 9B03     		lsls	r3, r3, #14
 2058 001c 14D4     		bmi	.L175
 2059              	.L173:
 2060              	.LBE219:
 2061              	.LBE218:
 740:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2062              		.loc 2 740 12 view .LVU547
 2063 001e 0020     		movs	r0, #0
 2064              	.LVL144:
 2065              	.L169:
 771:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* FDCAN1 */
 2066              		.loc 2 771 1 view .LVU548
 2067 0020 08BD     		pop	{r3, pc}
 2068              	.LVL145:
 2069              	.L170:
 756:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2070              		.loc 2 756 7 is_stmt 1 view .LVU549
 756:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2071              		.loc 2 756 11 is_stmt 0 view .LVU550
 2072 0022 FFF7FEFF 		bl	LL_RCC_PLL_IsReady
 2073              	.LVL146:
 756:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2074              		.loc 2 756 10 view .LVU551
 2075 0026 0028     		cmp	r0, #0
 2076 0028 F9D0     		beq	.L173
 758:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 2077              		.loc 2 758 9 is_stmt 1 view .LVU552
 771:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* FDCAN1 */
 2078              		.loc 2 771 1 is_stmt 0 view .LVU553
 2079 002a BDE80840 		pop	{r3, lr}
 2080              		.cfi_remember_state
 2081              		.cfi_restore 14
 2082              		.cfi_restore 3
 2083              		.cfi_def_cfa_offset 0
 758:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 2084              		.loc 2 758 27 view .LVU554
 2085 002e FFF7FEBF 		b	RCC_PLL_GetFreqDomain_48M
 2086              	.LVL147:
 2087              	.L171:
 2088              		.cfi_restore_state
 763:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 2089              		.loc 2 763 7 is_stmt 1 view .LVU555
 763:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 2090              		.loc 2 763 25 is_stmt 0 view .LVU556
 2091 0032 FFF7FEFF 		bl	RCC_GetSystemClockFreq
 2092              	.LVL148:
 2093 0036 FFF7FEFF 		bl	RCC_GetHCLKClockFreq
 2094              	.LVL149:
 771:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** #endif /* FDCAN1 */
 2095              		.loc 2 771 1 view .LVU557
 2096 003a BDE80840 		pop	{r3, lr}
 2097              		.cfi_remember_state
 2098              		.cfi_restore 14
 2099              		.cfi_restore 3
 2100              		.cfi_def_cfa_offset 0
 763:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 2101              		.loc 2 763 25 view .LVU558
 2102 003e FFF7FEBF 		b	RCC_GetPCLK1ClockFreq
 2103              	.LVL150:
 2104              	.L174:
 2105              		.cfi_restore_state
 767:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 2106              		.loc 2 767 23 view .LVU559
 2107 0042 4FF0FF30 		mov	r0, #-1
 2108 0046 EBE7     		b	.L169
 2109              	.L175:
 751:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 2110              		.loc 2 751 25 view .LVU560
 2111 0048 0148     		ldr	r0, .L179+4
 2112              	.LVL151:
 770:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 2113              		.loc 2 770 3 is_stmt 1 view .LVU561
 770:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 2114              		.loc 2 770 10 is_stmt 0 view .LVU562
 2115 004a E9E7     		b	.L169
 2116              	.L180:
 2117              		.align	2
 2118              	.L179:
 2119 004c 00100240 		.word	1073876992
 2120 0050 00127A00 		.word	8000000
 2121              		.cfi_endproc
 2122              	.LFE276:
 2124              		.section	.text.LL_RCC_GetRNGClockFreq,"ax",%progbits
 2125              		.align	1
 2126              		.global	LL_RCC_GetRNGClockFreq
 2127              		.syntax unified
 2128              		.thumb
 2129              		.thumb_func
 2130              		.fpu fpv4-sp-d16
 2132              	LL_RCC_GetRNGClockFreq:
 2133              	.LVL152:
 2134              	.LFB277:
 783:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t rng_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 2135              		.loc 2 783 1 is_stmt 1 view -0
 2136              		.cfi_startproc
 2137              		@ args = 0, pretend = 0, frame = 0
 2138              		@ frame_needed = 0, uses_anonymous_args = 0
 784:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2139              		.loc 2 784 3 view .LVU564
 787:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2140              		.loc 2 787 3 view .LVU565
 790:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 2141              		.loc 2 790 3 view .LVU566
 2142              	.LBB224:
 2143              	.LBI224:
1895:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 2144              		.loc 1 1895 26 view .LVU567
 2145              	.LBB225:
1897:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2146              		.loc 1 1897 3 view .LVU568
1897:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2147              		.loc 1 1897 21 is_stmt 0 view .LVU569
 2148 0000 0D4A     		ldr	r2, .L190
 2149              	.LBE225:
 2150              	.LBE224:
 783:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   uint32_t rng_frequency = LL_RCC_PERIPH_FREQUENCY_NO;
 2151              		.loc 2 783 1 view .LVU570
 2152 0002 08B5     		push	{r3, lr}
 2153              		.cfi_def_cfa_offset 8
 2154              		.cfi_offset 3, -8
 2155              		.cfi_offset 14, -4
 2156              	.LBB227:
 2157              	.LBB226:
1897:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2158              		.loc 1 1897 21 view .LVU571
 2159 0004 D2F88830 		ldr	r3, [r2, #136]
 2160              	.LBE226:
 2161              	.LBE227:
 790:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 2162              		.loc 2 790 3 view .LVU572
 2163 0008 1840     		ands	r0, r0, r3
 2164              	.LVL153:
 790:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****   {
 2165              		.loc 2 790 3 view .LVU573
 2166 000a 09D0     		beq	.L182
 2167 000c B0F1006F 		cmp	r0, #134217728
 2168 0010 0CD1     		bne	.L185
 793:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2169              		.loc 2 793 7 is_stmt 1 view .LVU574
 793:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2170              		.loc 2 793 11 is_stmt 0 view .LVU575
 2171 0012 FFF7FEFF 		bl	LL_RCC_PLL_IsReady
 2172              	.LVL154:
 793:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2173              		.loc 2 793 10 view .LVU576
 2174 0016 38B1     		cbz	r0, .L184
 795:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 2175              		.loc 2 795 9 is_stmt 1 view .LVU577
 813:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2176              		.loc 2 813 1 is_stmt 0 view .LVU578
 2177 0018 BDE80840 		pop	{r3, lr}
 2178              		.cfi_remember_state
 2179              		.cfi_restore 14
 2180              		.cfi_restore 3
 2181              		.cfi_def_cfa_offset 0
 795:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 2182              		.loc 2 795 25 view .LVU579
 2183 001c FFF7FEBF 		b	RCC_PLL_GetFreqDomain_48M
 2184              	.LVL155:
 2185              	.L182:
 2186              		.cfi_restore_state
 800:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       {
 2187              		.loc 2 800 7 is_stmt 1 view .LVU580
 2188              	.LBB228:
 2189              	.LBI228:
1099:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 2190              		.loc 1 1099 26 view .LVU581
 2191              	.LBB229:
1101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2192              		.loc 1 1101 3 view .LVU582
1101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2193              		.loc 1 1101 12 is_stmt 0 view .LVU583
 2194 0020 D2F89830 		ldr	r3, [r2, #152]
1101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 2195              		.loc 1 1101 84 view .LVU584
 2196 0024 9B07     		lsls	r3, r3, #30
 2197 0026 04D4     		bmi	.L186
 2198              	.L184:
 2199              	.LBE229:
 2200              	.LBE228:
 784:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2201              		.loc 2 784 12 view .LVU585
 2202 0028 0020     		movs	r0, #0
 2203              	.LVL156:
 2204              	.L181:
 813:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** 
 2205              		.loc 2 813 1 view .LVU586
 2206 002a 08BD     		pop	{r3, pc}
 2207              	.LVL157:
 2208              	.L185:
 807:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       break;
 2209              		.loc 2 807 21 view .LVU587
 2210 002c 4FF0FF30 		mov	r0, #-1
 2211 0030 FBE7     		b	.L181
 2212              	.L186:
 802:../../..\CubeG4\src/stm32g4xx_ll_rcc.c ****       }
 2213              		.loc 2 802 23 view .LVU588
 2214 0032 0248     		ldr	r0, .L190+4
 2215              	.LVL158:
 812:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 2216              		.loc 2 812 3 is_stmt 1 view .LVU589
 812:../../..\CubeG4\src/stm32g4xx_ll_rcc.c **** }
 2217              		.loc 2 812 10 is_stmt 0 view .LVU590
 2218 0034 F9E7     		b	.L181
 2219              	.L191:
 2220 0036 00BF     		.align	2
 2221              	.L190:
 2222 0038 00100240 		.word	1073876992
 2223 003c 006CDC02 		.word	48000000
 2224              		.cfi_endproc
 2225              	.LFE277:
 2227              		.section	.text.LL_RCC_GetUSBClockFreq,"ax",%progbits
 2228              		.align	1
 2229              		.global	LL_RCC_GetUSBClockFreq
 2230              		.syntax unified
 2231              		.thumb
 2232              		.thumb_func
 2233              		.fpu fpv4-sp-d16
 2235              	LL_RCC_GetUSBClockFreq:
 2236              	.LFB288:
 2237              		.cfi_startproc
 2238              		@ args = 0, pretend = 0, frame = 0
 2239              		@ frame_needed = 0, uses_anonymous_args = 0
 2240              		@ link register save eliminated.
 2241 0000 FFF7FEBF 		b	LL_RCC_GetRNGClockFreq
 2242              		.cfi_endproc
 2243              	.LFE288:
 2245              		.text
 2246              	.Letext0:
 2247              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2248              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2249              		.file 5 "../../..\\CubeG4\\include/core_cm4.h"
 2250              		.file 6 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 2251              		.file 7 "../../..\\CubeG4\\include/stm32g431xx.h"
 2252              		.file 8 "../../..\\CubeG4\\include/stm32g4xx.h"
