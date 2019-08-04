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
  13              		.file	"stm32g4xx_ll_utils.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.UTILS_SetFlashLatency.part.0,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	UTILS_SetFlashLatency.part.0:
  26              	.LVL0:
  27              	.LFB442:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_utils.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @file    stm32g4xx_ll_utils.c
   4:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief   UTILS LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   
  20:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Includes ------------------------------------------------------------------*/
  21:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #include "stm32g4xx_ll_utils.h"
  22:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #include "stm32g4xx_ll_rcc.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #include "stm32g4xx_ll_system.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #include "stm32g4xx_ll_pwr.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #ifdef  USE_FULL_ASSERT
  26:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #include "stm32_assert.h"
  27:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #else
  28:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define assert_param(expr) ((void)0U)
  29:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #endif /* USE_FULL_ASSERT */
  30:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  31:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
  33:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
  34:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup UTILS_LL
  36:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
  37:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
  38:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  39:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Private types -------------------------------------------------------------*/
  40:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Private variables ---------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Private constants ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup UTILS_LL_Private_Constants
  43:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
  44:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
  45:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_MAX_FREQUENCY_SCALE1  170000000U       /*!< Maximum frequency for system clock at pow
  46:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_MAX_FREQUENCY_SCALE2   26000000U       /*!< Maximum frequency for system clock at pow
  47:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  48:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Defines used for PLL range */
  49:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_PLLVCO_INPUT_MIN        2660000U       /*!< Frequency min for PLLVCO input, in Hz   *
  50:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_PLLVCO_INPUT_MAX        8000000U       /*!< Frequency max for PLLVCO input, in Hz   *
  51:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_PLLVCO_OUTPUT_MIN      64000000U       /*!< Frequency min for PLLVCO output, in Hz  *
  52:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_PLLVCO_OUTPUT_MAX     344000000U       /*!< Frequency max for PLLVCO output, in Hz  *
  53:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  54:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Defines used for HSE range */
  55:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_HSE_FREQUENCY_MIN      4000000U        /*!< Frequency min for HSE frequency, in Hz   
  56:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_HSE_FREQUENCY_MAX     48000000U        /*!< Frequency max for HSE frequency, in Hz   
  57:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  58:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Defines used for FLASH latency according to HCLK Frequency */
  59:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY1_FREQ   20000000U       /*!< HCLK frequency to set FLASH latency 1 in 
  60:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY2_FREQ   40000000U       /*!< HCLK frequency to set FLASH latency 2 in 
  61:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY3_FREQ   60000000U       /*!< HCLK frequency to set FLASH latency 3 in 
  62:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY4_FREQ   80000000U       /*!< HCLK frequency to set FLASH latency 4 in 
  63:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY5_FREQ  100000000U       /*!< HCLK frequency to set FLASH latency 5 in 
  64:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY6_FREQ  120000000U       /*!< HCLK frequency to set FLASH latency 6 in 
  65:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY7_FREQ  140000000U       /*!< HCLK frequency to set FLASH latency 7 in 
  66:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY8_FREQ  160000000U       /*!< HCLK frequency to set FLASH latency 8 in 
  67:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE1_LATENCY9_FREQ  170000000U       /*!< HCLK frequency to set FLASH latency 9 in 
  68:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE2_LATENCY1_FREQ    8000000U       /*!< HCLK frequency to set FLASH latency 1 in 
  69:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE2_LATENCY2_FREQ   16000000U       /*!< HCLK frequency to set FLASH latency 2 in 
  70:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define UTILS_SCALE2_LATENCY3_FREQ   26000000U       /*!< HCLK frequency to set FLASH latency 2 in 
  71:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
  72:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @}
  73:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
  74:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  75:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Private macros ------------------------------------------------------------*/
  76:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup UTILS_LL_Private_Macros
  77:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
  78:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
  79:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_SYSCLK_DIV(__VALUE__) (((__VALUE__) == LL_RCC_SYSCLK_DIV_1)   \
  80:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_2)   \
  81:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_4)   \
  82:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_8)   \
  83:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_16)  \
  84:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_64)  \
  85:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_128) \
  86:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_256) \
  87:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_512))
  88:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  89:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_APB1_DIV(__VALUE__) (((__VALUE__) == LL_RCC_APB1_DIV_1) \
  90:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB1_DIV_2) \
  91:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB1_DIV_4) \
  92:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB1_DIV_8) \
  93:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB1_DIV_16))
  94:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
  95:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_APB2_DIV(__VALUE__) (((__VALUE__) == LL_RCC_APB2_DIV_1) \
  96:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB2_DIV_2) \
  97:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB2_DIV_4) \
  98:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB2_DIV_8) \
  99:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                       || ((__VALUE__) == LL_RCC_APB2_DIV_16))
 100:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 101:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_PLLM_VALUE(__VALUE__) (((__VALUE__) == LL_RCC_PLLM_DIV_1) \
 102:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_2) \
 103:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_3) \
 104:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_4) \
 105:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_5) \
 106:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_6) \
 107:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_7) \
 108:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_8) \
 109:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_9) \
 110:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_10) \
 111:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_11) \
 112:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_12) \
 113:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_13) \
 114:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_14) \
 115:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_15) \
 116:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLM_DIV_16))
 117:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 118:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_PLLN_VALUE(__VALUE__) ((8U <= (__VALUE__)) && ((__VALUE__) <= 127U))
 119:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 120:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_PLLR_VALUE(__VALUE__) (((__VALUE__) == LL_RCC_PLLR_DIV_2) \
 121:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLR_DIV_4) \
 122:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLR_DIV_6) \
 123:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__VALUE__) == LL_RCC_PLLR_DIV_8))
 124:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 125:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_PLLVCO_INPUT(__VALUE__)  ((UTILS_PLLVCO_INPUT_MIN <= (__VALUE__)) && ((__VALUE_
 126:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 127:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_PLLVCO_OUTPUT(__VALUE__) ((UTILS_PLLVCO_OUTPUT_MIN <= (__VALUE__)) && ((__VALUE
 128:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 129:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_PLL_FREQUENCY(__VALUE__) ((LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTA
 130:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                              ((__VALUE__) <= UTILS_MAX_FREQUENCY_SCALE2))
 131:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 132:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_HSE_BYPASS(__STATE__) (((__STATE__) == LL_UTILS_HSEBYPASS_ON) \
 133:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                         || ((__STATE__) == LL_UTILS_HSEBYPASS_OFF))
 134:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 135:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** #define IS_LL_UTILS_HSE_FREQUENCY(__FREQUENCY__) (((__FREQUENCY__) >= UTILS_HSE_FREQUENCY_MIN) && (
 136:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 137:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @}
 138:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 139:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Private function prototypes -----------------------------------------------*/
 140:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @defgroup UTILS_LL_Private_Functions UTILS Private functions
 141:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
 142:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 143:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static uint32_t    UTILS_GetPLLOutputFrequency(uint32_t PLL_InputFrequency,
 144:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                                LL_UTILS_PLLInitTypeDef *UTILS_PLLInitStruct);
 145:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static ErrorStatus UTILS_SetFlashLatency(uint32_t HCLK_Frequency);
 146:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static ErrorStatus UTILS_EnablePLLAndSwitchSystem(uint32_t SYSCLK_Frequency, LL_UTILS_ClkInitTypeDe
 147:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static ErrorStatus UTILS_PLL_IsBusy(void);
 148:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 149:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @}
 150:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 151:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 152:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /* Exported functions --------------------------------------------------------*/
 153:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup UTILS_LL_Exported_Functions
 154:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
 155:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 156:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 157:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup UTILS_LL_EF_DELAY
 158:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
 159:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 160:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 161:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 162:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  This function configures the Cortex-M SysTick source to have 1ms time base.
 163:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   When a RTOS is used, it is recommended to avoid changing the Systick
 164:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         configuration by calling this function, for a delay use rather osDelay RTOS service.
 165:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  HCLKFrequency HCLK frequency in Hz
 166:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   HCLK frequency can be calculated thanks to RCC helper macro or function @ref LL_RCC_Get
 167:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval None
 168:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 169:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** void LL_Init1msTick(uint32_t HCLKFrequency)
 170:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 171:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Use frequency provided in argument */
 172:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   LL_InitTick(HCLKFrequency, 1000U);
 173:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 174:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 175:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 176:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  This function provides accurate delay (in milliseconds) based
 177:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         on SysTick counter flag
 178:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   When a RTOS is used, it is recommended to avoid using blocking delay
 179:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         and use rather osDelay service.
 180:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   To respect 1ms timebase, user should call @ref LL_Init1msTick function which
 181:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         will configure Systick to 1ms
 182:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  Delay specifies the delay time length, in milliseconds.
 183:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval None
 184:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 185:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** void LL_mDelay(uint32_t Delay)
 186:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 187:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   __IO uint32_t  tmp = SysTick->CTRL;  /* Clear the COUNTFLAG first */
 188:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t tmpDelay; /* MISRAC2012-Rule-17.8 */
 189:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Add this code to indicate that local variable is not used */
 190:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ((void)tmp);
 191:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   tmpDelay = Delay;
 192:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Add a period to guaranty minimum wait */
 193:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(tmpDelay < LL_MAX_DELAY)
 194:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 195:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     tmpDelay++;
 196:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 197:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 198:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   while (tmpDelay != 0U)
 199:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 200:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if((SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) != 0U)
 201:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 202:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       tmpDelay--;
 203:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 204:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 205:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 206:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 207:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 208:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @}
 209:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 210:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 211:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup UTILS_EF_SYSTEM
 212:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *  @brief    System Configuration functions
 213:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *
 214:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   @verbatim
 215:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****  ===============================================================================
 216:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****            ##### System Configuration functions #####
 217:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****  ===============================================================================
 218:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     [..]
 219:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****          System, AHB and APB buses clocks configuration
 220:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 221:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****          (+) The maximum frequency of the SYSCLK, HCLK, PCLK1 and PCLK2 is 
 222:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              170000000 Hz for STM32G4xx.
 223:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   @endverbatim
 224:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   @internal
 225:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              Depending on the device voltage range, the maximum frequency should be
 226:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              adapted accordingly:
 227:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 228:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) Table 1. HCLK clock frequency for STM32G4xx devices
 229:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) +--------------------------------------------------------+
 230:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) | Latency         |     HCLK clock frequency (MHz)       |
 231:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |                 |--------------------------------------|
 232:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |                 |  voltage range 1  | voltage range 2  |
 233:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |                 |       1.2 V       |     1.0 V        |
 234:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 235:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |0WS(1 CPU cycles)|   0 < HCLK <= 20  |  0 < HCLK <= 8   |
 236:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 237:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |1WS(2 CPU cycles)|  20 < HCLK <= 40  |  8 < HCLK <= 16  |
 238:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 239:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |2WS(3 CPU cycles)|  40 < HCLK <= 60  | 16 < HCLK <= 26  |
 240:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 241:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |3WS(4 CPU cycles)|  60 < HCLK <= 80  | 16 < HCLK <= 26  |
 242:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 243:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |4WS(5 CPU cycles)|  80 < HCLK <= 100 | 16 < HCLK <= 26  |
 244:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 245:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |5WS(6 CPU cycles)| 100 < HCLK <= 120 | 16 < HCLK <= 26  |
 246:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 247:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |6WS(7 CPU cycles)| 120 < HCLK <= 140 | 16 < HCLK <= 26  |
 248:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 249:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |7WS(8 CPU cycles)| 140 < HCLK <= 160 | 16 < HCLK <= 26  |
 250:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |-----------------|-------------------|------------------|
 251:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) |8WS(9 CPU cycles)| 160 < HCLK <= 170 | 16 < HCLK <= 26  |
 252:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****              (++) +--------------------------------------------------------+
 253:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 254:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 255:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   @endinternal
 256:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
 257:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 258:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 259:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 260:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  This function sets directly SystemCoreClock CMSIS variable.
 261:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   Variable can be calculated also through SystemCoreClockUpdate function.
 262:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  HCLKFrequency HCLK frequency in Hz (can be calculated thanks to RCC helper macro)
 263:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval None
 264:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 265:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** void LL_SetSystemCoreClock(uint32_t HCLKFrequency)
 266:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 267:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* HCLK clock frequency */
 268:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   SystemCoreClock = HCLKFrequency;
 269:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 270:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 271:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 272:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  This function configures system clock at maximum frequency with HSI as clock source of 
 273:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   The application need to ensure that PLL is disabled.
 274:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   Function is based on the following formula:
 275:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLL output frequency = (((HSI frequency / PLLM) * PLLN) / PLLR)
 276:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLLM: ensure that the VCO input frequency ranges from 2.66 to 8 MHz (PLLVCO_input = H
 277:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLLN: ensure that the VCO output frequency is between 64 and 344 MHz (PLLVCO_output =
 278:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLLR: ensure that max frequency at 170000000 Hz is reach (PLLVCO_output / PLLR)
 279:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  UTILS_PLLInitStruct pointer to a @ref LL_UTILS_PLLInitTypeDef structure that contains
 280:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *                             the configuration information for the PLL.
 281:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  UTILS_ClkInitStruct pointer to a @ref LL_UTILS_ClkInitTypeDef structure that contains
 282:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *                             the configuration information for the BUS prescalers.
 283:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval An ErrorStatus enumeration value:
 284:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - SUCCESS: Max frequency configuration done
 285:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - ERROR: Max frequency configuration not done
 286:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 287:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** ErrorStatus LL_PLL_ConfigSystemClock_HSI(LL_UTILS_PLLInitTypeDef *UTILS_PLLInitStruct,
 288:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                          LL_UTILS_ClkInitTypeDef *UTILS_ClkInitStruct)
 289:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 290:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 291:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t pllfreq;
 292:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t hpre = 0U;
 293:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 294:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Check if one of the PLL is enabled */
 295:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(UTILS_PLL_IsBusy() == SUCCESS)
 296:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 297:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Calculate the new PLL output frequency */
 298:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     pllfreq = UTILS_GetPLLOutputFrequency(HSI_VALUE, UTILS_PLLInitStruct);
 299:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 300:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Enable HSI if not enabled */
 301:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if(LL_RCC_HSI_IsReady() != 1U)
 302:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 303:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_HSI_Enable();
 304:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       while (LL_RCC_HSI_IsReady() != 1U)
 305:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 306:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* Wait for HSI ready */
 307:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 308:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 309:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 310:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Configure PLL */
 311:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI, UTILS_PLLInitStruct->PLLM, UTILS_PLLInitStruc
 312:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                 UTILS_PLLInitStruct->PLLR);
 313:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 314:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Prevent undershoot at highest frequency by applying intermediate AHB prescaler 2 */
 315:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if(pllfreq > 80000000U)
 316:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 317:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       hpre = UTILS_ClkInitStruct->AHBCLKDivider;
 318:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(hpre == LL_RCC_SYSCLK_DIV_1)
 319:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 320:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         UTILS_ClkInitStruct->AHBCLKDivider = LL_RCC_SYSCLK_DIV_2;
 321:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 322:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 323:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 324:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Enable PLL and switch system clock to PLL */
 325:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = UTILS_EnablePLLAndSwitchSystem(pllfreq, UTILS_ClkInitStruct);
 326:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 327:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Apply definitive AHB prescaler value if necessary */
 328:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if((status == SUCCESS) && (hpre != 0U))
 329:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 330:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       UTILS_ClkInitStruct->AHBCLKDivider = LL_RCC_SYSCLK_DIV_1;
 331:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
 332:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 333:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 334:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   else
 335:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 336:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Current PLL configuration cannot be modified */
 337:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = ERROR;
 338:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 339:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 340:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   return status;
 341:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 342:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 343:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 344:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  This function configures system clock with HSE as clock source of the PLL
 345:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   The application need to ensure that PLL is disabled.
 346:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @note   Function is based on the following formula:
 347:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLL output frequency = (((HSE frequency / PLLM) * PLLN) / PLLR)
 348:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLLM: ensure that the VCO input frequency ranges from 2.66 to 8 MHz (PLLVCO_input = H
 349:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLLN: ensure that the VCO output frequency is between 64 and 344 MHz (PLLVCO_output =
 350:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         - PLLR: ensure that max frequency at 170000000 Hz is reached (PLLVCO_output / PLLR)
 351:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  HSEFrequency Value between Min_Data = 4000000 and Max_Data = 48000000
 352:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  HSEBypass This parameter can be one of the following values:
 353:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         @arg @ref LL_UTILS_HSEBYPASS_ON
 354:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *         @arg @ref LL_UTILS_HSEBYPASS_OFF
 355:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  UTILS_PLLInitStruct pointer to a @ref LL_UTILS_PLLInitTypeDef structure that contains
 356:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *                             the configuration information for the PLL.
 357:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  UTILS_ClkInitStruct pointer to a @ref LL_UTILS_ClkInitTypeDef structure that contains
 358:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *                             the configuration information for the BUS prescalers.
 359:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval An ErrorStatus enumeration value:
 360:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - SUCCESS: Max frequency configuration done
 361:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - ERROR: Max frequency configuration not done
 362:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 363:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** ErrorStatus LL_PLL_ConfigSystemClock_HSE(uint32_t HSEFrequency, uint32_t HSEBypass,
 364:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                          LL_UTILS_PLLInitTypeDef *UTILS_PLLInitStruct, LL_UTILS_Clk
 365:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 366:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 367:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t pllfreq;
 368:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t hpre = 0U;
 369:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 370:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Check the parameters */
 371:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_HSE_FREQUENCY(HSEFrequency));
 372:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_HSE_BYPASS(HSEBypass));
 373:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 374:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Check if one of the PLL is enabled */
 375:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(UTILS_PLL_IsBusy() == SUCCESS)
 376:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 377:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Calculate the new PLL output frequency */
 378:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     pllfreq = UTILS_GetPLLOutputFrequency(HSEFrequency, UTILS_PLLInitStruct);
 379:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 380:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Enable HSE if not enabled */
 381:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if(LL_RCC_HSE_IsReady() != 1U)
 382:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 383:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       /* Check if need to enable HSE bypass feature or not */
 384:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(HSEBypass == LL_UTILS_HSEBYPASS_ON)
 385:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 386:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         LL_RCC_HSE_EnableBypass();
 387:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 388:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else
 389:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 390:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         LL_RCC_HSE_DisableBypass();
 391:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 392:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 393:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       /* Enable HSE */
 394:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_HSE_Enable();
 395:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       while (LL_RCC_HSE_IsReady() != 1U)
 396:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 397:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* Wait for HSE ready */
 398:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 399:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 400:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 401:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Configure PLL */
 402:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE, UTILS_PLLInitStruct->PLLM, UTILS_PLLInitStruc
 403:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                 UTILS_PLLInitStruct->PLLR);
 404:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 405:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Prevent undershoot at highest frequency by applying intermediate AHB prescaler 2 */
 406:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if(pllfreq > 80000000U)
 407:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 408:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       hpre = UTILS_ClkInitStruct->AHBCLKDivider;
 409:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(hpre == LL_RCC_SYSCLK_DIV_1)
 410:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 411:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         UTILS_ClkInitStruct->AHBCLKDivider = LL_RCC_SYSCLK_DIV_2;
 412:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 413:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 414:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 415:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Enable PLL and switch system clock to PLL */
 416:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = UTILS_EnablePLLAndSwitchSystem(pllfreq, UTILS_ClkInitStruct);
 417:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 418:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Apply definitive AHB prescaler value if necessary */
 419:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if((status == SUCCESS) && (hpre != 0U))
 420:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 421:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       UTILS_ClkInitStruct->AHBCLKDivider = LL_RCC_SYSCLK_DIV_1;
 422:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
 423:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 424:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 425:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   else
 426:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 427:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Current PLL configuration cannot be modified */
 428:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = ERROR;
 429:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 430:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 431:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   return status;
 432:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 433:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 434:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 435:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @}
 436:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 437:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 438:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 439:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @}
 440:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 441:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 442:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /** @addtogroup UTILS_LL_Private_Functions
 443:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @{
 444:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 445:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 446:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  Update number of Flash wait states in line with new frequency and current
 447:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****             voltage range.
 448:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  HCLK_Frequency  HCLK frequency
 449:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval An ErrorStatus enumeration value:
 450:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - SUCCESS: Latency has been modified
 451:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - ERROR: Latency cannot be modified
 452:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 453:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static ErrorStatus UTILS_SetFlashLatency(uint32_t HCLK_Frequency)
  29              		.loc 1 453 20 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
 454:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 455:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status = SUCCESS;
 456:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 457:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t latency = LL_FLASH_LATENCY_0;  /* default value 0WS */
 458:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 459:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Frequency cannot be equal to 0 */
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(HCLK_Frequency == 0U)
 461:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 462:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = ERROR;
 463:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 464:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   else
 465:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 466:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if(LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE1)
  34              		.loc 1 466 5 view .LVU1
  35              	.LBB20:
  36              	.LBI20:
  37              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_pwr.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @file    stm32g4xx_ll_pwr.h
   4:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief   Header file of PWR LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #ifndef STM32G4xx_LL_PWR_H
  22:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define STM32G4xx_LL_PWR_H
  23:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR)
  36:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL PWR
  38:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  44:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Private constants ---------------------------------------------------------*/
  45:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  46:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Private macros ------------------------------------------------------------*/
  47:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  48:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Exported types ------------------------------------------------------------*/
  49:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Exported constants --------------------------------------------------------*/
  50:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_Exported_Constants PWR Exported Constants
  51:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
  52:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  53:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  54:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_CLEAR_FLAG Clear Flags Defines
  55:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief    Flags defines which can be used with LL_PWR_WriteReg function
  56:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
  57:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  58:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SCR_CSBF                    PWR_SCR_CSBF
  59:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SCR_CWUF                    PWR_SCR_CWUF
  60:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SCR_CWUF5                   PWR_SCR_CWUF5
  61:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SCR_CWUF4                   PWR_SCR_CWUF4
  62:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SCR_CWUF3                   PWR_SCR_CWUF3
  63:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SCR_CWUF2                   PWR_SCR_CWUF2
  64:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SCR_CWUF1                   PWR_SCR_CWUF1
  65:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
  66:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
  67:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  68:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
  69:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_GET_FLAG Get Flags Defines
  70:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief    Flags defines which can be used with LL_PWR_ReadReg function
  71:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
  72:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  73:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR1_WUFI                    PWR_SR1_WUFI
  74:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR1_SBF                     PWR_SR1_SBF
  75:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR1_WUF5                    PWR_SR1_WUF5
  76:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR1_WUF4                    PWR_SR1_WUF4
  77:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR1_WUF3                    PWR_SR1_WUF3
  78:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR1_WUF2                    PWR_SR1_WUF2
  79:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR1_WUF1                    PWR_SR1_WUF1
  80:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_SR2_PVMO4)
  81:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_PVMO4                   PWR_SR2_PVMO4
  82:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif /* PWR_SR2_PVMO4 */
  83:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_SR2_PVMO3)
  84:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_PVMO3                   PWR_SR2_PVMO3
  85:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif /* PWR_SR2_PVMO3 */
  86:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_SR2_PVMO2)
  87:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_PVMO2                   PWR_SR2_PVMO2
  88:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif /* PWR_SR2_PVMO2 */
  89:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_SR2_PVMO1)
  90:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_PVMO1                   PWR_SR2_PVMO1
  91:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif /* PWR_SR2_PVMO1 */
  92:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_PVDO                    PWR_SR2_PVDO
  93:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_VOSF                    PWR_SR2_VOSF
  94:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_REGLPF                  PWR_SR2_REGLPF
  95:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_SR2_REGLPS                  PWR_SR2_REGLPS
  96:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
  97:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
  98:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
  99:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_REGU_VOLTAGE REGU VOLTAGE
 101:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 102:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 103:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_REGU_VOLTAGE_SCALE1         (PWR_CR1_VOS_0)
 104:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_REGU_VOLTAGE_SCALE2         (PWR_CR1_VOS_1)
 105:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 106:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 107:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 108:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_MODE_PWR MODE PWR
 110:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 111:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 112:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_MODE_STOP0                  (PWR_CR1_LPMS_STOP0)
 113:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_MODE_STOP1                  (PWR_CR1_LPMS_STOP1)
 114:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_MODE_STANDBY                (PWR_CR1_LPMS_STANDBY)
 115:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_MODE_SHUTDOWN               (PWR_CR1_LPMS_SHUTDOWN)
 116:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 117:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 118:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 119:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_PVM_VDDUSB_1 Peripheral voltage monitoring
 121:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 122:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 123:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_CR2_PVME1)
 124:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVM_VDDA_COMP               (PWR_CR2_PVME1)     /* Monitoring VDDA vs. x.xV */
 125:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif
 126:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_CR2_PVME2)
 127:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVM_VDDA_FASTDAC            (PWR_CR2_PVME2)     /* Monitoring VDDA vs. x.xV */
 128:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif
 129:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_CR2_PVME3)
 130:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVM_VDDA_ADC                (PWR_CR2_PVME3)     /* Monitoring VDDA vs. 1.62V  */
 131:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif
 132:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #if defined(PWR_CR2_PVME4)
 133:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVM_VDDA_OPAMP_DAC          (PWR_CR2_PVME4)     /* Monitoring VDDA vs. 1x.xV   */
 134:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #endif
 135:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 136:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 137:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 138:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 139:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_PVDLEVEL PVDLEVEL
 140:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 141:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 142:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_0                  (PWR_CR2_PLS_LEV0)  /* VPVD0 around 2.0 V */
 143:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_1                  (PWR_CR2_PLS_LEV1)  /* VPVD1 around 2.2 V */
 144:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_2                  (PWR_CR2_PLS_LEV2)  /* VPVD2 around 2.4 V */
 145:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_3                  (PWR_CR2_PLS_LEV3)  /* VPVD3 around 2.5 V */
 146:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_4                  (PWR_CR2_PLS_LEV4)  /* VPVD4 around 2.6 V */
 147:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_5                  (PWR_CR2_PLS_LEV5)  /* VPVD5 around 2.8 V */
 148:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_6                  (PWR_CR2_PLS_LEV6)  /* VPVD6 around 2.9 V */
 149:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_PVDLEVEL_7                  (PWR_CR2_PLS_LEV7)  /* External input analog voltage   (
 150:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 151:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 152:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 153:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 154:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_WAKEUP WAKEUP
 155:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 156:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 157:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_WAKEUP_PIN1                 (PWR_CR3_EWUP1)
 158:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_WAKEUP_PIN2                 (PWR_CR3_EWUP2)
 159:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_WAKEUP_PIN3                 (PWR_CR3_EWUP3)
 160:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_WAKEUP_PIN4                 (PWR_CR3_EWUP4)
 161:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_WAKEUP_PIN5                 (PWR_CR3_EWUP5)
 162:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 163:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 164:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 165:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 166:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_BATT_CHARG_RESISTOR BATT CHARG RESISTOR
 167:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 168:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 169:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_BATT_CHARG_RESISTOR_5K      ((uint32_t)0x00000000)
 170:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_BATT_CHARGRESISTOR_1_5K     (PWR_CR4_VBRS)
 171:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 172:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 173:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 174:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 175:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_GPIO GPIO
 176:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 177:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 178:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_A                      ((uint32_t)(&(PWR->PUCRA)))
 179:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_B                      ((uint32_t)(&(PWR->PUCRB)))
 180:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_C                      ((uint32_t)(&(PWR->PUCRC)))
 181:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_D                      ((uint32_t)(&(PWR->PUCRD)))
 182:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_E                      ((uint32_t)(&(PWR->PUCRE)))
 183:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_F                      ((uint32_t)(&(PWR->PUCRF)))
 184:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_G                      ((uint32_t)(&(PWR->PUCRG)))
 185:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 186:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 187:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 188:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 189:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EC_GPIO_BIT GPIO BIT
 190:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 191:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 192:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_0                  ((uint32_t)0x00000001)
 193:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_1                  ((uint32_t)0x00000002)
 194:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_2                  ((uint32_t)0x00000004)
 195:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_3                  ((uint32_t)0x00000008)
 196:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_4                  ((uint32_t)0x00000010)
 197:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_5                  ((uint32_t)0x00000020)
 198:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_6                  ((uint32_t)0x00000040)
 199:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_7                  ((uint32_t)0x00000080)
 200:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_8                  ((uint32_t)0x00000100)
 201:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_9                  ((uint32_t)0x00000200)
 202:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_10                 ((uint32_t)0x00000400)
 203:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_11                 ((uint32_t)0x00000800)
 204:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_12                 ((uint32_t)0x00001000)
 205:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_13                 ((uint32_t)0x00002000)
 206:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_14                 ((uint32_t)0x00004000)
 207:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_GPIO_BIT_15                 ((uint32_t)0x00008000)
 208:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 209:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 210:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 211:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 212:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 213:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 214:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 215:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 216:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Exported macro ------------------------------------------------------------*/
 217:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_Exported_Macros PWR Exported Macros
 218:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 219:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 220:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 221:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EM_WRITE_READ Common Write and read registers Macros
 222:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 223:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 224:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 225:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 226:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Write a value in PWR register
 227:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @param  __REG__ Register to be written
 228:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @param  __VALUE__ Value to be written in the register
 229:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval None
 230:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 231:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_WriteReg(__REG__, __VALUE__) WRITE_REG(PWR->__REG__, (__VALUE__))
 232:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 233:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 234:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Read a value in PWR register
 235:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @param  __REG__ Register to be read
 236:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval Register value
 237:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 238:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** #define LL_PWR_ReadReg(__REG__) READ_REG(PWR->__REG__)
 239:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 240:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 241:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 242:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 243:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 244:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @}
 245:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 246:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 247:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 248:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /* Exported functions --------------------------------------------------------*/
 249:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_Exported_Functions PWR Exported Functions
 250:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 251:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 252:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 253:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /** @defgroup PWR_LL_EF_Configuration Configuration
 254:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @{
 255:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 256:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 257:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 258:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Switch the regulator from main mode to low-power mode
 259:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @rmtoll CR1          LPR           LL_PWR_EnableLowPowerRunMode
 260:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval None
 261:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 262:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** __STATIC_INLINE void LL_PWR_EnableLowPowerRunMode(void)
 263:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** {
 264:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   SET_BIT(PWR->CR1, PWR_CR1_LPR);
 265:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** }
 266:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 267:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 268:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Switch the regulator from low-power mode to main mode
 269:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @rmtoll CR1          LPR           LL_PWR_DisableLowPowerRunMode
 270:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval None
 271:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 272:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** __STATIC_INLINE void LL_PWR_DisableLowPowerRunMode(void)
 273:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** {
 274:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   CLEAR_BIT(PWR->CR1, PWR_CR1_LPR);
 275:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** }
 276:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 277:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 278:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Check if the regulator is in low-power mode
 279:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @rmtoll CR1          LPR           LL_PWR_IsEnabledLowPowerRunMode
 280:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval State of bit (1 or 0).
 281:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 282:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** __STATIC_INLINE uint32_t LL_PWR_IsEnabledLowPowerRunMode(void)
 283:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** {
 284:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   uint32_t temp;
 285:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   temp = READ_BIT(PWR->CR1, PWR_CR1_LPR);
 286:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 287:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   return ((temp == (PWR_CR1_LPR))?1U:0U);
 288:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 289:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** }
 290:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 291:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 292:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Switch from run main mode to run low-power mode.
 293:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @rmtoll CR1          LPR           LL_PWR_EnterLowPowerRunMode
 294:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval None
 295:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 296:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** __STATIC_INLINE void LL_PWR_EnterLowPowerRunMode(void)
 297:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** {
 298:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   LL_PWR_EnableLowPowerRunMode();
 299:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** }
 300:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 301:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 302:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Switch from run main mode to low-power mode.
 303:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @rmtoll CR1          LPR           LL_PWR_ExitLowPowerRunMode
 304:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval None
 305:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** __STATIC_INLINE void LL_PWR_ExitLowPowerRunMode(void)
 307:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** {
 308:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   LL_PWR_DisableLowPowerRunMode();
 309:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** }
 310:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 311:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 312:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Set the main internal regulator output voltage
 313:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @rmtoll CR1          VOS           LL_PWR_SetRegulVoltageScaling
 314:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @param  VoltageScaling This parameter can be one of the following values:
 315:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *         @arg @ref LL_PWR_REGU_VOLTAGE_SCALE1
 316:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *         @arg @ref LL_PWR_REGU_VOLTAGE_SCALE2
 317:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval None
 318:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 319:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** __STATIC_INLINE void LL_PWR_SetRegulVoltageScaling(uint32_t VoltageScaling)
 320:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** {
 321:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   MODIFY_REG(PWR->CR1, PWR_CR1_VOS, VoltageScaling);
 322:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** }
 323:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** 
 324:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** /**
 325:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @brief  Get the main internal regulator output voltage
 326:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @rmtoll CR1          VOS           LL_PWR_GetRegulVoltageScaling
 327:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   * @retval Returned value can be one of the following values:
 328:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *         @arg @ref LL_PWR_REGU_VOLTAGE_SCALE1
 329:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   *         @arg @ref LL_PWR_REGU_VOLTAGE_SCALE2
 330:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   */
 331:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** __STATIC_INLINE uint32_t LL_PWR_GetRegulVoltageScaling(void)
  38              		.loc 2 331 26 view .LVU2
  39              	.LBB21:
 332:../../..\CubeG4\include/stm32g4xx_ll_pwr.h **** {
 333:../../..\CubeG4\include/stm32g4xx_ll_pwr.h ****   return (uint32_t)(READ_BIT(PWR->CR1, PWR_CR1_VOS));
  40              		.loc 2 333 3 view .LVU3
  41              		.loc 2 333 21 is_stmt 0 view .LVU4
  42 0000 204B     		ldr	r3, .L13
  43 0002 1B68     		ldr	r3, [r3]
  44              		.loc 2 333 10 view .LVU5
  45 0004 03F4C063 		and	r3, r3, #1536
  46              	.LBE21:
  47              	.LBE20:
  48              		.loc 1 466 7 view .LVU6
  49 0008 B3F5007F 		cmp	r3, #512
  50 000c 26D1     		bne	.L2
 467:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 468:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(HCLK_Frequency > UTILS_SCALE1_LATENCY8_FREQ)
  51              		.loc 1 468 7 is_stmt 1 view .LVU7
  52              		.loc 1 468 9 is_stmt 0 view .LVU8
  53 000e 1E4B     		ldr	r3, .L13+4
  54 0010 9842     		cmp	r0, r3
  55 0012 28D8     		bhi	.L4
 469:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 470:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 160 < HCLK <= 170 => 8WS (9 CPU cycles) */
 471:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_8;
 472:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 473:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else if(HCLK_Frequency > UTILS_SCALE1_LATENCY7_FREQ)
  56              		.loc 1 473 12 is_stmt 1 view .LVU9
  57              		.loc 1 473 14 is_stmt 0 view .LVU10
  58 0014 1D4B     		ldr	r3, .L13+8
  59 0016 9842     		cmp	r0, r3
  60 0018 27D8     		bhi	.L5
 474:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 475:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 140 < HCLK <= 160 => 7WS (8 CPU cycles) */
 476:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_7;
 477:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 478:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else if(HCLK_Frequency > UTILS_SCALE1_LATENCY6_FREQ)
  61              		.loc 1 478 12 is_stmt 1 view .LVU11
  62              		.loc 1 478 14 is_stmt 0 view .LVU12
  63 001a 1D4B     		ldr	r3, .L13+12
  64 001c 9842     		cmp	r0, r3
  65 001e 26D8     		bhi	.L6
 479:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 480:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 120 < HCLK <= 140 => 6WS (7 CPU cycles) */
 481:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_6;
 482:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 483:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else if(HCLK_Frequency > UTILS_SCALE1_LATENCY5_FREQ)
  66              		.loc 1 483 12 is_stmt 1 view .LVU13
  67              		.loc 1 483 14 is_stmt 0 view .LVU14
  68 0020 1C4B     		ldr	r3, .L13+16
  69 0022 9842     		cmp	r0, r3
  70 0024 25D8     		bhi	.L7
 484:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 485:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 100 < HCLK <= 120 => 5WS (6 CPU cycles) */
 486:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_5;
 487:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 488:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else if(HCLK_Frequency > UTILS_SCALE1_LATENCY4_FREQ)
  71              		.loc 1 488 12 is_stmt 1 view .LVU15
  72              		.loc 1 488 14 is_stmt 0 view .LVU16
  73 0026 1C4B     		ldr	r3, .L13+20
  74 0028 9842     		cmp	r0, r3
  75 002a 24D8     		bhi	.L8
 489:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 490:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 80 < HCLK <= 100 => 4WS (5 CPU cycles) */
 491:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_4;
 492:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 493:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else if(HCLK_Frequency > UTILS_SCALE1_LATENCY3_FREQ)
  76              		.loc 1 493 12 is_stmt 1 view .LVU17
  77              		.loc 1 493 14 is_stmt 0 view .LVU18
  78 002c 1B4B     		ldr	r3, .L13+24
  79 002e 9842     		cmp	r0, r3
  80 0030 23D8     		bhi	.L9
 494:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 495:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 60 < HCLK <= 80 => 3WS (4 CPU cycles) */
 496:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_3;
 497:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 498:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else if(HCLK_Frequency > UTILS_SCALE1_LATENCY2_FREQ)
  81              		.loc 1 498 12 is_stmt 1 view .LVU19
  82              		.loc 1 498 14 is_stmt 0 view .LVU20
  83 0032 1B4B     		ldr	r3, .L13+28
  84 0034 9842     		cmp	r0, r3
  85 0036 22D8     		bhi	.L11
 499:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 500:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 40 < HCLK <= 60 => 2WS (3 CPU cycles) */
 501:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_2;
 502:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 503:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else
 504:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 505:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         if(HCLK_Frequency > UTILS_SCALE1_LATENCY1_FREQ)
  86              		.loc 1 505 9 is_stmt 1 view .LVU21
  87              		.loc 1 505 11 is_stmt 0 view .LVU22
  88 0038 1A4B     		ldr	r3, .L13+32
  89              	.L12:
 506:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         {
 507:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****           /* 20 < HCLK <= 40 => 1WS (2 CPU cycles) */
 508:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****           latency = LL_FLASH_LATENCY_1;
 509:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         }
 510:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* else HCLK_Frequency <= 10MHz default LL_FLASH_LATENCY_0 0WS */
 511:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 512:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 513:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     else /* SCALE2 */
 514:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 515:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(HCLK_Frequency > UTILS_SCALE2_LATENCY2_FREQ)
 516:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 517:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* 16 < HCLK <= 26 => 2WS (3 CPU cycles) */
 518:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         latency = LL_FLASH_LATENCY_2;
 519:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 520:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       else
 521:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 522:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         if(HCLK_Frequency > UTILS_SCALE2_LATENCY1_FREQ)
  90              		.loc 1 522 11 view .LVU23
  91 003a 9842     		cmp	r0, r3
  92 003c 94BF     		ite	ls
  93 003e 0020     		movls	r0, #0
  94              	.LVL1:
  95              		.loc 1 522 11 view .LVU24
  96 0040 0120     		movhi	r0, #1
  97              	.L3:
  98              	.LVL2:
 523:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         {
 524:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****           /* 8 < HCLK <= 16 => 1WS (2 CPU cycles) */
 525:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****           latency = LL_FLASH_LATENCY_1;
 526:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         }
 527:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         /* else HCLK_Frequency <= 8MHz default LL_FLASH_LATENCY_0 0WS */
 528:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 529:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 530:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 531:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_FLASH_SetLatency(latency);
  99              		.loc 1 531 5 is_stmt 1 view .LVU25
 100              	.LBB22:
 101              	.LBI22:
 102              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_system.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @file    stm32g4xx_ll_system.h
   4:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief   Header file of SYSTEM LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   @verbatim
   7:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   ==============================================================================
   8:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                      ##### How to use this driver #####
   9:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   ==============================================================================
  10:../../..\CubeG4\include/stm32g4xx_ll_system.h ****     [..]
  11:../../..\CubeG4\include/stm32g4xx_ll_system.h ****     The LL SYSTEM driver contains a set of generic APIs that can be
  12:../../..\CubeG4\include/stm32g4xx_ll_system.h ****     used by user:
  13:../../..\CubeG4\include/stm32g4xx_ll_system.h ****       (+) Some of the FLASH features need to be handled in the SYSTEM file.
  14:../../..\CubeG4\include/stm32g4xx_ll_system.h ****       (+) Access to DBGCMU registers
  15:../../..\CubeG4\include/stm32g4xx_ll_system.h ****       (+) Access to SYSCFG registers
  16:../../..\CubeG4\include/stm32g4xx_ll_system.h ****       (+) Access to VREFBUF registers
  17:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  18:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   @endverbatim
  19:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   ******************************************************************************
  20:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @attention
  21:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
  22:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  23:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * All rights reserved.</center></h2>
  24:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
  25:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  26:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * the "License"; You may not use this file except in compliance with the
  27:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * License. You may obtain a copy of the License at:
  28:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *                        opensource.org/licenses/BSD-3-Clause
  29:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
  30:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   ******************************************************************************
  31:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  32:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  33:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  34:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #ifndef __STM32G4xx_LL_SYSTEM_H
  35:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define __STM32G4xx_LL_SYSTEM_H
  36:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #ifdef __cplusplus
  38:../../..\CubeG4\include/stm32g4xx_ll_system.h **** extern "C" {
  39:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif
  40:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Includes ------------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #include "stm32g4xx.h"
  43:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  44:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @addtogroup STM32G4xx_LL_Driver
  45:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
  46:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  47:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  48:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined (FLASH) || defined (SYSCFG) || defined (DBGMCU) || defined (VREFBUF)
  49:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  50:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL SYSTEM
  51:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
  52:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  53:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  54:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Private types -------------------------------------------------------------*/
  55:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Private variables ---------------------------------------------------------*/
  56:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  57:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Private constants ---------------------------------------------------------*/
  58:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_Private_Constants SYSTEM Private Constants
  59:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
  60:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  61:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Defines used for position in the register */
  63:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define DBGMCU_REVID_POSITION         (uint32_t)POSITION_VAL(DBGMCU_IDCODE_REV_ID)
  64:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  65:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
  66:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief Power-down in Run mode Flash key
  67:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  68:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define FLASH_PDKEY1                  0x04152637U /*!< Flash power down key1 */
  69:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define FLASH_PDKEY2                  0xFAFBFCFDU /*!< Flash power down key2: used with FLASH_PDKEY
  70:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                        to unlock the RUN_PD bit in FLASH_ACR */
  71:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  72:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
  73:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
  74:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  75:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  76:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Private macros ------------------------------------------------------------*/
  77:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  78:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Exported types ------------------------------------------------------------*/
  79:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Exported constants --------------------------------------------------------*/
  80:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_Exported_Constants SYSTEM Exported Constants
  81:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
  82:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  83:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  84:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_REMAP SYSCFG REMAP
  85:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
  86:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  87:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_REMAP_FLASH              0x00000000U                                           /*
  88:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_REMAP_SYSTEMFLASH        SYSCFG_MEMRMP_MEM_MODE_0                              /*
  89:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_REMAP_SRAM               (SYSCFG_MEMRMP_MEM_MODE_1 | SYSCFG_MEMRMP_MEM_MODE_0) /*
  90:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(FMC_Bank1_R)
  91:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_REMAP_FMC                SYSCFG_MEMRMP_MEM_MODE_1                              /*
  92:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* FMC_Bank1_R */
  93:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_REMAP_QUADSPI            (SYSCFG_MEMRMP_MEM_MODE_2 | SYSCFG_MEMRMP_MEM_MODE_1) /*
  94:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
  95:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
  96:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
  97:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
  98:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(SYSCFG_MEMRMP_FB_MODE)
  99:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_BANKMODE SYSCFG BANK MODE
 100:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 101:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 102:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_BANKMODE_BANK1           0x00000000U               /*!< Flash Bank1 mapped at 0x0
 103:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                                       and Flash Bank2 mapped at 0x0
 104:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_BANKMODE_BANK2           SYSCFG_MEMRMP_FB_MODE     /*!< Flash Bank2 mapped at 0x0
 105:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                                       and Flash Bank1 mapped at 0x0
 106:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 107:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 108:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 109:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 110:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* SYSCFG_MEMRMP_FB_MODE */
 111:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_I2C_FASTMODEPLUS SYSCFG I2C FASTMODEPLUS
 112:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 113:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 114:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_PB6     SYSCFG_CFGR1_I2C_PB6_FMP  /*!< Enable Fast Mode Plus on 
 115:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_PB7     SYSCFG_CFGR1_I2C_PB7_FMP  /*!< Enable Fast Mode Plus on 
 116:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(SYSCFG_CFGR1_I2C_PB8_FMP)
 117:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_PB8     SYSCFG_CFGR1_I2C_PB8_FMP  /*!< Enable Fast Mode Plus on 
 118:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* SYSCFG_CFGR1_I2C_PB8_FMP */
 119:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(SYSCFG_CFGR1_I2C_PB9_FMP)
 120:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_PB9     SYSCFG_CFGR1_I2C_PB9_FMP  /*!< Enable Fast Mode Plus on 
 121:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* SYSCFG_CFGR1_I2C_PB9_FMP */
 122:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_I2C1    SYSCFG_CFGR1_I2C1_FMP     /*!< Enable Fast Mode Plus on 
 123:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(I2C2)
 124:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_I2C2    SYSCFG_CFGR1_I2C2_FMP     /*!< Enable Fast Mode Plus on 
 125:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* I2C2 */
 126:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_I2C3    SYSCFG_CFGR1_I2C3_FMP     /*!< Enable Fast Mode Plus on 
 127:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(I2C4)
 128:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_I2C_FASTMODEPLUS_I2C4    SYSCFG_CFGR1_I2C4_FMP     /*!< Enable Fast Mode Plus on 
 129:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* I2C4 */
 130:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 131:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 132:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 133:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_EXTI_PORT SYSCFG EXTI PORT
 135:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 136:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 137:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_PORTA               0U                        /*!< EXTI PORT A              
 138:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_PORTB               1U                        /*!< EXTI PORT B              
 139:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_PORTC               2U                        /*!< EXTI PORT C              
 140:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_PORTD               3U                        /*!< EXTI PORT D              
 141:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_PORTE               4U                        /*!< EXTI PORT E              
 142:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_PORTF               5U                        /*!< EXTI PORT F              
 143:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_PORTG               6U                        /*!< EXTI PORT G              
 144:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 145:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 146:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 147:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 148:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_EXTI_LINE SYSCFG EXTI LINE
 149:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 150:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 151:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE0               (uint32_t)((0x000FU << 16U) | 0U)  /* !< EXTI_POSITION_0
 152:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE1               (uint32_t)((0x00F0U << 16U) | 0U)  /* !< EXTI_POSITION_4
 153:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE2               (uint32_t)((0x0F00U << 16U) | 0U)  /* !< EXTI_POSITION_8
 154:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE3               (uint32_t)((0xF000U << 16U) | 0U)  /* !< EXTI_POSITION_1
 155:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE4               (uint32_t)((0x000FU << 16U) | 1U)  /* !< EXTI_POSITION_0
 156:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE5               (uint32_t)((0x00F0U << 16U) | 1U)  /* !< EXTI_POSITION_4
 157:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE6               (uint32_t)((0x0F00U << 16U) | 1U)  /* !< EXTI_POSITION_8
 158:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE7               (uint32_t)((0xF000U << 16U) | 1U)  /* !< EXTI_POSITION_1
 159:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE8               (uint32_t)((0x000FU << 16U) | 2U)  /* !< EXTI_POSITION_0
 160:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE9               (uint32_t)((0x00F0U << 16U) | 2U)  /* !< EXTI_POSITION_4
 161:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE10              (uint32_t)((0x0F00U << 16U) | 2U)  /* !< EXTI_POSITION_8
 162:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE11              (uint32_t)((0xF000U << 16U) | 2U)  /* !< EXTI_POSITION_1
 163:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE12              (uint32_t)((0x000FU << 16U) | 3U)  /* !< EXTI_POSITION_0
 164:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE13              (uint32_t)((0x00F0U << 16U) | 3U)  /* !< EXTI_POSITION_4
 165:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE14              (uint32_t)((0x0F00U << 16U) | 3U)  /* !< EXTI_POSITION_8
 166:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_EXTI_LINE15              (uint32_t)((0xF000U << 16U) | 3U)  /* !< EXTI_POSITION_1
 167:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 168:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 169:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 170:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 171:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_TIMBREAK SYSCFG TIMER BREAK
 172:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 173:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 174:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_TIMBREAK_ECC             SYSCFG_CFGR2_ECCL  /*!< Enables and locks the ECC error 
 175:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                                    with Break Input of TIM1/8/15/16
 176:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_TIMBREAK_PVD             SYSCFG_CFGR2_PVDL  /*!< Enables and locks the PVD connec
 177:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                                    with TIM1/8/15/16/17 Break Input
 178:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                                    and also the PVDE and PLS bits o
 179:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_TIMBREAK_SRAM_PARITY     SYSCFG_CFGR2_SPL   /*!< Enables and locks the SRAM_PARIT
 180:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                                    with Break Input of TIM1/8/15/16
 181:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_TIMBREAK_LOCKUP          SYSCFG_CFGR2_CLL   /*!< Enables and locks the LOCKUP out
 182:../../..\CubeG4\include/stm32g4xx_ll_system.h ****                                                                    with Break Input of TIM1/15/16/1
 183:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 184:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 185:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 186:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 187:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_CCMSRAMWRP SYSCFG CCMSRAM WRP
 188:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 189:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 190:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE0         SYSCFG_SWPR_PAGE0  /*!< CCMSRAM Write protection page 0 
 191:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE1         SYSCFG_SWPR_PAGE1  /*!< CCMSRAM Write protection page 1 
 192:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE2         SYSCFG_SWPR_PAGE2  /*!< CCMSRAM Write protection page 2 
 193:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE3         SYSCFG_SWPR_PAGE3  /*!< CCMSRAM Write protection page 3 
 194:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE4         SYSCFG_SWPR_PAGE4  /*!< CCMSRAM Write protection page 4 
 195:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE5         SYSCFG_SWPR_PAGE5  /*!< CCMSRAM Write protection page 5 
 196:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE6         SYSCFG_SWPR_PAGE6  /*!< CCMSRAM Write protection page 6 
 197:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE7         SYSCFG_SWPR_PAGE7  /*!< CCMSRAM Write protection page 7 
 198:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE8         SYSCFG_SWPR_PAGE8  /*!< CCMSRAM Write protection page 8 
 199:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE9         SYSCFG_SWPR_PAGE9  /*!< CCMSRAM Write protection page 9 
 200:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(SYSCFG_SWPR_PAGE10)
 201:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE10        SYSCFG_SWPR_PAGE10 /*!< CCMSRAM Write protection page 10
 202:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE11        SYSCFG_SWPR_PAGE11 /*!< CCMSRAM Write protection page 11
 203:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE12        SYSCFG_SWPR_PAGE12 /*!< CCMSRAM Write protection page 12
 204:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE13        SYSCFG_SWPR_PAGE13 /*!< CCMSRAM Write protection page 13
 205:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE14        SYSCFG_SWPR_PAGE14 /*!< CCMSRAM Write protection page 14
 206:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE15        SYSCFG_SWPR_PAGE15 /*!< CCMSRAM Write protection page 15
 207:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE16        SYSCFG_SWPR_PAGE16 /*!< CCMSRAM Write protection page 16
 208:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE17        SYSCFG_SWPR_PAGE17 /*!< CCMSRAM Write protection page 17
 209:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE18        SYSCFG_SWPR_PAGE18 /*!< CCMSRAM Write protection page 18
 210:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE19        SYSCFG_SWPR_PAGE19 /*!< CCMSRAM Write protection page 19
 211:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE20        SYSCFG_SWPR_PAGE20 /*!< CCMSRAM Write protection page 20
 212:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE21        SYSCFG_SWPR_PAGE21 /*!< CCMSRAM Write protection page 21
 213:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE22        SYSCFG_SWPR_PAGE22 /*!< CCMSRAM Write protection page 22
 214:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE23        SYSCFG_SWPR_PAGE23 /*!< CCMSRAM Write protection page 23
 215:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE24        SYSCFG_SWPR_PAGE24 /*!< CCMSRAM Write protection page 24
 216:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE25        SYSCFG_SWPR_PAGE25 /*!< CCMSRAM Write protection page 25
 217:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE26        SYSCFG_SWPR_PAGE26 /*!< CCMSRAM Write protection page 26
 218:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE27        SYSCFG_SWPR_PAGE27 /*!< CCMSRAM Write protection page 27
 219:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE28        SYSCFG_SWPR_PAGE28 /*!< CCMSRAM Write protection page 28
 220:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE29        SYSCFG_SWPR_PAGE29 /*!< CCMSRAM Write protection page 29
 221:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE30        SYSCFG_SWPR_PAGE30 /*!< CCMSRAM Write protection page 30
 222:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_SYSCFG_CCMSRAMWRP_PAGE31        SYSCFG_SWPR_PAGE31 /*!< CCMSRAM Write protection page 31
 223:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* SYSCFG_SWPR_PAGE10 */
 224:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 225:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 226:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 227:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 228:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_TRACE DBGMCU TRACE Pin Assignment
 229:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 230:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 231:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_TRACE_NONE               0x00000000U                                     /*!< TRA
 232:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_TRACE_ASYNCH             DBGMCU_CR_TRACE_IOEN                            /*!< TRA
 233:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_TRACE_SYNCH_SIZE1        (DBGMCU_CR_TRACE_IOEN | DBGMCU_CR_TRACE_MODE_0) /*!< TRA
 234:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_TRACE_SYNCH_SIZE2        (DBGMCU_CR_TRACE_IOEN | DBGMCU_CR_TRACE_MODE_1) /*!< TRA
 235:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_TRACE_SYNCH_SIZE4        (DBGMCU_CR_TRACE_IOEN | DBGMCU_CR_TRACE_MODE)   /*!< TRA
 236:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 237:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 238:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 239:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 240:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_APB1_GRP1_STOP_IP DBGMCU APB1 GRP1 STOP IP
 241:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 242:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 243:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_TIM2_STOP      DBGMCU_APB1FZR1_DBG_TIM2_STOP   /*!< The counter clock o
 244:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(TIM3)
 245:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_TIM3_STOP      DBGMCU_APB1FZR1_DBG_TIM3_STOP   /*!< The counter clock o
 246:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* TIM3 */
 247:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(TIM4)
 248:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_TIM4_STOP      DBGMCU_APB1FZR1_DBG_TIM4_STOP   /*!< The counter clock o
 249:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* TIM4 */
 250:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(TIM5)
 251:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_TIM5_STOP      DBGMCU_APB1FZR1_DBG_TIM5_STOP   /*!< The counter clock o
 252:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* TIM5 */
 253:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_TIM6_STOP      DBGMCU_APB1FZR1_DBG_TIM6_STOP   /*!< The counter clock o
 254:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(TIM7)
 255:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_TIM7_STOP      DBGMCU_APB1FZR1_DBG_TIM7_STOP   /*!< The counter clock o
 256:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* TIM7 */
 257:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_RTC_STOP       DBGMCU_APB1FZR1_DBG_RTC_STOP    /*!< The clock of the RT
 258:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_WWDG_STOP      DBGMCU_APB1FZR1_DBG_WWDG_STOP   /*!< The window watchdog
 259:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_IWDG_STOP      DBGMCU_APB1FZR1_DBG_IWDG_STOP   /*!< The independent wat
 260:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_I2C1_STOP      DBGMCU_APB1FZR1_DBG_I2C1_STOP   /*!< The I2C1 SMBus time
 261:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(I2C2)
 262:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_I2C2_STOP      DBGMCU_APB1FZR1_DBG_I2C2_STOP   /*!< The I2C2 SMBus time
 263:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* I2C2 */
 264:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_I2C3_STOP      DBGMCU_APB1FZR1_DBG_I2C3_STOP   /*!< The I2C3 SMBus time
 265:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP1_LPTIM1_STOP    DBGMCU_APB1FZR1_DBG_LPTIM1_STOP /*!< The counter clock o
 266:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 267:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 268:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 269:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 270:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_APB1_GRP2_STOP_IP DBGMCU APB1 GRP2 STOP IP
 271:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 272:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 273:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(I2C4)
 274:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB1_GRP2_I2C4_STOP      DBGMCU_APB1FZR2_DBG_I2C4_STOP   /*!< The I2C4 SMBus time
 275:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* I2C4 */
 276:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 277:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 278:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 279:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 280:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_APB2_GRP1_STOP_IP DBGMCU APB2 GRP1 STOP IP
 281:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 282:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 283:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB2_GRP1_TIM1_STOP      DBGMCU_APB2FZ_DBG_TIM1_STOP     /*!< The counter clock o
 284:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(TIM8)
 285:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB2_GRP1_TIM8_STOP      DBGMCU_APB2FZ_DBG_TIM8_STOP     /*!< The counter clock o
 286:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* TIM8 */
 287:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB2_GRP1_TIM15_STOP     DBGMCU_APB2FZ_DBG_TIM15_STOP    /*!< The counter clock o
 288:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB2_GRP1_TIM16_STOP     DBGMCU_APB2FZ_DBG_TIM16_STOP    /*!< The counter clock o
 289:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(TIM17)
 290:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB2_GRP1_TIM17_STOP     DBGMCU_APB2FZ_DBG_TIM17_STOP    /*!< The counter clock o
 291:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* TIM17 */
 292:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(TIM20)
 293:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB2_GRP1_TIM20_STOP     DBGMCU_APB2FZ_DBG_TIM20_STOP    /*!< The counter clock o
 294:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* TIM20 */
 295:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(HRTIM1)
 296:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_DBGMCU_APB2_GRP1_HRTIM1_STOP     DBGMCU_APB2FZ_DBG_HRTIM1_STOP    /*!< The counter clock
 297:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* HRTIM1 */
 298:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 299:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 300:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 301:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 302:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(VREFBUF)
 303:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_VOLTAGE VREFBUF VOLTAGE
 304:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 305:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_VREFBUF_VOLTAGE_SCALE0          ((uint32_t)0x00000000) /*!< Voltage reference scale 0 (V
 307:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_VREFBUF_VOLTAGE_SCALE1          VREFBUF_CSR_VRS_0      /*!< Voltage reference scale 1 (V
 308:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_VREFBUF_VOLTAGE_SCALE2          VREFBUF_CSR_VRS_1      /*!< Voltage reference scale 2 (V
 309:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 310:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 311:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 312:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* VREFBUF */
 313:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 314:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EC_LATENCY FLASH LATENCY
 315:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 316:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 317:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_0                 FLASH_ACR_LATENCY_0WS   /*!< FLASH Zero wait state */
 318:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_1                 FLASH_ACR_LATENCY_1WS   /*!< FLASH One wait state */
 319:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_2                 FLASH_ACR_LATENCY_2WS   /*!< FLASH Two wait states */
 320:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_3                 FLASH_ACR_LATENCY_3WS   /*!< FLASH Three wait states */
 321:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_4                 FLASH_ACR_LATENCY_4WS   /*!< FLASH Four wait states */
 322:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(FLASH_ACR_LATENCY_5WS)
 323:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_5                 FLASH_ACR_LATENCY_5WS   /*!< FLASH five wait state */
 324:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_6                 FLASH_ACR_LATENCY_6WS   /*!< FLASH six wait state */
 325:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_7                 FLASH_ACR_LATENCY_7WS   /*!< FLASH seven wait states */
 326:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_8                 FLASH_ACR_LATENCY_8WS   /*!< FLASH eight wait states */
 327:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_9                 FLASH_ACR_LATENCY_9WS   /*!< FLASH nine wait states */
 328:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_10                FLASH_ACR_LATENCY_10WS  /*!< FLASH ten wait states */
 329:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_11                FLASH_ACR_LATENCY_11WS  /*!< FLASH eleven wait states */
 330:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_12                FLASH_ACR_LATENCY_12WS  /*!< FLASH twelve wait states */
 331:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_13                FLASH_ACR_LATENCY_13WS  /*!< FLASH thirteen wait states 
 332:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_14                FLASH_ACR_LATENCY_14WS  /*!< FLASH fourteen wait states 
 333:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #define LL_FLASH_LATENCY_15                FLASH_ACR_LATENCY_15WS  /*!< FLASH fifteen wait states *
 334:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* FLASH_ACR_LATENCY_5WS */
 335:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 336:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 337:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 338:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 339:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 340:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 341:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 342:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 343:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Exported macro ------------------------------------------------------------*/
 344:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 345:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /* Exported functions --------------------------------------------------------*/
 346:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_Exported_Functions SYSTEM Exported Functions
 347:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 348:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 349:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 350:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EF_SYSCFG SYSCFG
 351:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 352:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 353:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 354:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 355:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Set memory mapping at address 0x00000000
 356:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_MEMRMP MEM_MODE      LL_SYSCFG_SetRemapMemory
 357:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Memory This parameter can be one of the following values:
 358:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_FLASH
 359:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_SYSTEMFLASH
 360:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_SRAM
 361:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_FMC (*)
 362:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_QUADSPI (*)
 363:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
 364:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices
 365:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 366:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 367:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_SetRemapMemory(uint32_t Memory)
 368:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 369:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   MODIFY_REG(SYSCFG->MEMRMP, SYSCFG_MEMRMP_MEM_MODE, Memory);
 370:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 371:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 372:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 373:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get memory mapping at address 0x00000000
 374:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_MEMRMP MEM_MODE      LL_SYSCFG_GetRemapMemory
 375:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Returned value can be one of the following values:
 376:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_FLASH
 377:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_SYSTEMFLASH
 378:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_SRAM
 379:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_FMC (*)
 380:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_REMAP_QUADSPI (*)
 381:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
 382:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices
 383:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 384:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_GetRemapMemory(void)
 385:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 386:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_MEM_MODE));
 387:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 388:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 389:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(SYSCFG_MEMRMP_FB_MODE)
 390:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 391:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Select Flash bank mode (Bank flashed at 0x08000000)
 392:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_MEMRMP FB_MODE       LL_SYSCFG_SetFlashBankMode
 393:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Bank This parameter can be one of the following values:
 394:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_BANKMODE_BANK1
 395:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_BANKMODE_BANK2
 396:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 397:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 398:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_SetFlashBankMode(uint32_t Bank)
 399:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 400:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   MODIFY_REG(SYSCFG->MEMRMP, SYSCFG_MEMRMP_FB_MODE, Bank);
 401:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 402:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 403:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 404:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get Flash bank mode (Bank flashed at 0x08000000)
 405:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_MEMRMP FB_MODE       LL_SYSCFG_GetFlashBankMode
 406:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Returned value can be one of the following values:
 407:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_BANKMODE_BANK1
 408:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_BANKMODE_BANK2
 409:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 410:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_GetFlashBankMode(void)
 411:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 412:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_FB_MODE));
 413:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 414:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* SYSCFG_MEMRMP_FB_MODE */
 415:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 416:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 417:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable I/O analog switch voltage booster.
 418:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @note   When voltage booster is enabled, I/O analog switches are supplied
 419:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         by a dedicated voltage booster, from VDD power domain. This is
 420:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         the recommended configuration with low VDDA voltage operation.
 421:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @note   The I/O analog switch voltage booster is relevant for peripherals
 422:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         using I/O in analog input: ADC, COMP, OPAMP.
 423:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         However, COMP and OPAMP inputs have a high impedance and
 424:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         voltage booster do not impact performance significantly.
 425:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         Therefore, the voltage booster is mainly intended for
 426:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         usage with ADC.
 427:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 BOOSTEN       LL_SYSCFG_EnableAnalogBooster
 428:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 429:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 430:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableAnalogBooster(void)
 431:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 432:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_BOOSTEN);
 433:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 434:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 435:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 436:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable I/O analog switch voltage booster.
 437:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @note   When voltage booster is enabled, I/O analog switches are supplied
 438:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         by a dedicated voltage booster, from VDD power domain. This is
 439:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         the recommended configuration with low VDDA voltage operation.
 440:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @note   The I/O analog switch voltage booster is relevant for peripherals
 441:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         using I/O in analog input: ADC, COMP, OPAMP.
 442:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         However, COMP and OPAMP inputs have a high impedance and
 443:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         voltage booster do not impact performance significantly.
 444:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         Therefore, the voltage booster is mainly intended for
 445:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         usage with ADC.
 446:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 BOOSTEN       LL_SYSCFG_DisableAnalogBooster
 447:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 448:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 449:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableAnalogBooster(void)
 450:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 451:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_BOOSTEN);
 452:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 453:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 454:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 455:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable the I2C fast mode plus driving capability.
 456:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 I2C_PBx_FMP   LL_SYSCFG_EnableFastModePlus\n
 457:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR1 I2Cx_FMP      LL_SYSCFG_EnableFastModePlus
 458:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  ConfigFastModePlus This parameter can be a combination of the following values:
 459:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB6
 460:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB7
 461:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB8 (*)
 462:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB9 (*)
 463:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C1
 464:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C2 (*)
 465:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C3
 466:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C4 (*)
 467:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
 468:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices
 469:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 470:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 471:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableFastModePlus(uint32_t ConfigFastModePlus)
 472:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 473:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, ConfigFastModePlus);
 474:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 475:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 476:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 477:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable the I2C fast mode plus driving capability.
 478:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 I2C_PBx_FMP   LL_SYSCFG_DisableFastModePlus\n
 479:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR1 I2Cx_FMP      LL_SYSCFG_DisableFastModePlus
 480:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  ConfigFastModePlus This parameter can be a combination of the following values:
 481:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB6
 482:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB7
 483:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB8 (*)
 484:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_PB9 (*)
 485:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C1
 486:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C2 (*)
 487:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C3
 488:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_I2C_FASTMODEPLUS_I2C4 (*)
 489:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
 490:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices
 491:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 492:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 493:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableFastModePlus(uint32_t ConfigFastModePlus)
 494:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 495:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, ConfigFastModePlus);
 496:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 497:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 498:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 499:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable Floating Point Unit Invalid operation Interrupt
 500:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_0      LL_SYSCFG_EnableIT_FPU_IOC
 501:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 502:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 503:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableIT_FPU_IOC(void)
 504:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 505:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_0);
 506:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 507:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 508:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 509:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable Floating Point Unit Divide-by-zero Interrupt
 510:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_1      LL_SYSCFG_EnableIT_FPU_DZC
 511:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 512:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 513:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableIT_FPU_DZC(void)
 514:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 515:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_1);
 516:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 517:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 518:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 519:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable Floating Point Unit Underflow Interrupt
 520:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_2      LL_SYSCFG_EnableIT_FPU_UFC
 521:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 522:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 523:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableIT_FPU_UFC(void)
 524:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 525:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_2);
 526:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 527:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 528:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 529:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable Floating Point Unit Overflow Interrupt
 530:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_3      LL_SYSCFG_EnableIT_FPU_OFC
 531:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 532:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 533:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableIT_FPU_OFC(void)
 534:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 535:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_3);
 536:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 537:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 538:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 539:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable Floating Point Unit Input denormal Interrupt
 540:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_4      LL_SYSCFG_EnableIT_FPU_IDC
 541:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 542:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 543:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableIT_FPU_IDC(void)
 544:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 545:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_4);
 546:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 547:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 548:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 549:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable Floating Point Unit Inexact Interrupt
 550:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_5      LL_SYSCFG_EnableIT_FPU_IXC
 551:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 552:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 553:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableIT_FPU_IXC(void)
 554:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 555:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_5);
 556:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 557:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 558:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 559:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable Floating Point Unit Invalid operation Interrupt
 560:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_0      LL_SYSCFG_DisableIT_FPU_IOC
 561:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 562:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 563:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableIT_FPU_IOC(void)
 564:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 565:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_0);
 566:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 567:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 568:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 569:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable Floating Point Unit Divide-by-zero Interrupt
 570:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_1      LL_SYSCFG_DisableIT_FPU_DZC
 571:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 572:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 573:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableIT_FPU_DZC(void)
 574:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 575:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_1);
 576:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 577:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 578:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 579:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable Floating Point Unit Underflow Interrupt
 580:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_2      LL_SYSCFG_DisableIT_FPU_UFC
 581:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 582:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 583:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableIT_FPU_UFC(void)
 584:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 585:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_2);
 586:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 587:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 588:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 589:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable Floating Point Unit Overflow Interrupt
 590:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_3      LL_SYSCFG_DisableIT_FPU_OFC
 591:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 592:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 593:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableIT_FPU_OFC(void)
 594:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 595:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_3);
 596:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 597:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 598:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 599:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable Floating Point Unit Input denormal Interrupt
 600:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_4      LL_SYSCFG_DisableIT_FPU_IDC
 601:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 602:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 603:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableIT_FPU_IDC(void)
 604:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 605:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_4);
 606:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 607:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 608:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 609:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable Floating Point Unit Inexact Interrupt
 610:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_5      LL_SYSCFG_DisableIT_FPU_IXC
 611:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 612:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 613:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_DisableIT_FPU_IXC(void)
 614:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 615:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_5);
 616:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 617:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 618:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 619:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if Floating Point Unit Invalid operation Interrupt source is enabled or disabled.
 620:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_0      LL_SYSCFG_IsEnabledIT_FPU_IOC
 621:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 622:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 623:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsEnabledIT_FPU_IOC(void)
 624:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 625:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_0) == (SYSCFG_CFGR1_FPU_IE_0)) ? 1UL : 0UL);
 626:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 627:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 628:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 629:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if Floating Point Unit Divide-by-zero Interrupt source is enabled or disabled.
 630:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_1      LL_SYSCFG_IsEnabledIT_FPU_DZC
 631:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 632:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 633:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsEnabledIT_FPU_DZC(void)
 634:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 635:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_1) == (SYSCFG_CFGR1_FPU_IE_1)) ? 1UL : 0UL);
 636:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 637:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 638:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 639:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if Floating Point Unit Underflow Interrupt source is enabled or disabled.
 640:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_2      LL_SYSCFG_IsEnabledIT_FPU_UFC
 641:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 642:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 643:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsEnabledIT_FPU_UFC(void)
 644:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 645:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_2) == (SYSCFG_CFGR1_FPU_IE_2)) ? 1UL : 0UL);
 646:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 647:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 648:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 649:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if Floating Point Unit Overflow Interrupt source is enabled or disabled.
 650:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_3      LL_SYSCFG_IsEnabledIT_FPU_OFC
 651:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 652:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 653:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsEnabledIT_FPU_OFC(void)
 654:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 655:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_3) == (SYSCFG_CFGR1_FPU_IE_3)) ? 1UL : 0UL);
 656:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 657:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 658:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 659:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if Floating Point Unit Input denormal Interrupt source is enabled or disabled.
 660:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_4      LL_SYSCFG_IsEnabledIT_FPU_IDC
 661:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 662:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 663:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsEnabledIT_FPU_IDC(void)
 664:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 665:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_4) == (SYSCFG_CFGR1_FPU_IE_4)) ? 1UL : 0UL);
 666:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 667:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 668:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 669:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if Floating Point Unit Inexact Interrupt source is enabled or disabled.
 670:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR1 FPU_IE_5      LL_SYSCFG_IsEnabledIT_FPU_IXC
 671:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 672:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 673:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsEnabledIT_FPU_IXC(void)
 674:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 675:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_FPU_IE_5) == (SYSCFG_CFGR1_FPU_IE_5)) ? 1UL : 0UL);
 676:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 677:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 678:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 679:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Configure source input for the EXTI external interrupt.
 680:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_EXTICR1 EXTIx         LL_SYSCFG_SetEXTISource\n
 681:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_EXTICR2 EXTIx         LL_SYSCFG_SetEXTISource\n
 682:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_EXTICR3 EXTIx         LL_SYSCFG_SetEXTISource\n
 683:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_EXTICR4 EXTIx         LL_SYSCFG_SetEXTISource
 684:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Port This parameter can be one of the following values:
 685:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTA
 686:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTB
 687:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTC
 688:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTD
 689:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTE
 690:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTF
 691:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTG
 692:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
 693:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices
 694:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Line This parameter can be one of the following values:
 695:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE0
 696:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE1
 697:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE2
 698:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE3
 699:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE4
 700:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE5
 701:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE6
 702:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE7
 703:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE8
 704:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE9
 705:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE10
 706:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE11
 707:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE12
 708:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE13
 709:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE14
 710:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE15
 711:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 712:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 713:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_SetEXTISource(uint32_t Port, uint32_t Line)
 714:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 715:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   MODIFY_REG(SYSCFG->EXTICR[Line & 0x3U], (Line >> 16U), Port << (POSITION_VAL((Line >> 16U)) & 0x1
 716:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 717:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 718:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 719:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get the configured defined for specific EXTI Line
 720:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_EXTICR1 EXTIx         LL_SYSCFG_GetEXTISource\n
 721:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_EXTICR2 EXTIx         LL_SYSCFG_GetEXTISource\n
 722:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_EXTICR3 EXTIx         LL_SYSCFG_GetEXTISource\n
 723:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_EXTICR4 EXTIx         LL_SYSCFG_GetEXTISource
 724:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Line This parameter can be one of the following values:
 725:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE0
 726:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE1
 727:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE2
 728:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE3
 729:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE4
 730:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE5
 731:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE6
 732:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE7
 733:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE8
 734:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE9
 735:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE10
 736:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE11
 737:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE12
 738:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE13
 739:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE14
 740:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_LINE15
 741:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Returned value can be one of the following values:
 742:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTA
 743:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTB
 744:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTC
 745:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTD
 746:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTE
 747:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTF
 748:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_EXTI_PORTG
 749:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
 750:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices
 751:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 752:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_GetEXTISource(uint32_t Line)
 753:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 754:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(SYSCFG->EXTICR[Line & 0x3U], (Line >> 16U)) >> (POSITION_VAL(Line >> 1
 755:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 756:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 757:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 758:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable CCMSRAM Erase (starts a hardware CCMSRAM erase operation. This bit is
 759:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * automatically cleared at the end of the CCMSRAM erase operation.)
 760:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @note This bit is write-protected: setting this bit is possible only after the
 761:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *       correct key sequence is written in the SYSCFG_SKR register as described in
 762:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *       the Reference Manual.
 763:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_SCSR  CCMER       LL_SYSCFG_EnableCCMSRAMErase
 764:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 765:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 766:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableCCMSRAMErase(void)
 767:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 768:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   /* Starts a hardware CCMSRAM erase operation*/
 769:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->SCSR, SYSCFG_SCSR_CCMER);
 770:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 771:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 772:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 773:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if CCMSRAM erase operation is on going
 774:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_SCSR  CCMBSY      LL_SYSCFG_IsCCMSRAMEraseOngoing
 775:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 776:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 777:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsCCMSRAMEraseOngoing(void)
 778:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 779:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->SCSR, SYSCFG_SCSR_CCMBSY) == (SYSCFG_SCSR_CCMBSY)) ? 1UL : 0UL);
 780:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 781:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 782:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 783:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Set connections to TIM1/8/15/16/17 Break inputs
 784:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR2 CLL           LL_SYSCFG_SetTIMBreakInputs\n
 785:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR2 SPL           LL_SYSCFG_SetTIMBreakInputs\n
 786:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR2 PVDL          LL_SYSCFG_SetTIMBreakInputs\n
 787:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR2 ECCL          LL_SYSCFG_SetTIMBreakInputs
 788:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Break This parameter can be a combination of the following values:
 789:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_ECC
 790:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_PVD
 791:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_SRAM_PARITY
 792:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_LOCKUP
 793:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 794:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 795:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_SetTIMBreakInputs(uint32_t Break)
 796:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 797:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   MODIFY_REG(SYSCFG->CFGR2, SYSCFG_CFGR2_CLL | SYSCFG_CFGR2_SPL | SYSCFG_CFGR2_PVDL | SYSCFG_CFGR2_
 798:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 799:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 800:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 801:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get connections to TIM1/8/15/16/17 Break inputs
 802:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR2 CLL           LL_SYSCFG_GetTIMBreakInputs\n
 803:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR2 SPL           LL_SYSCFG_GetTIMBreakInputs\n
 804:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR2 PVDL          LL_SYSCFG_GetTIMBreakInputs\n
 805:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         SYSCFG_CFGR2 ECCL          LL_SYSCFG_GetTIMBreakInputs
 806:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Returned value can be can be a combination of the following values:
 807:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_ECC
 808:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_PVD
 809:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_SRAM_PARITY
 810:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_TIMBREAK_LOCKUP
 811:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 812:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_GetTIMBreakInputs(void)
 813:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 814:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(SYSCFG->CFGR2, SYSCFG_CFGR2_CLL | SYSCFG_CFGR2_SPL | SYSCFG_CFGR2_PVDL
 815:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 816:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 817:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 818:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if SRAM parity error detected
 819:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR2 SPF           LL_SYSCFG_IsActiveFlag_SP
 820:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
 821:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 822:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_SYSCFG_IsActiveFlag_SP(void)
 823:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 824:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(SYSCFG->CFGR2, SYSCFG_CFGR2_SPF) == (SYSCFG_CFGR2_SPF)) ? 1UL : 0UL);
 825:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 826:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 827:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 828:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Clear SRAM parity error flag
 829:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_CFGR2 SPF           LL_SYSCFG_ClearFlag_SP
 830:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 831:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 832:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_ClearFlag_SP(void)
 833:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 834:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->CFGR2, SYSCFG_CFGR2_SPF);
 835:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 836:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 837:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 838:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable CCMSRAM page write protection
 839:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @note Write protection is cleared only by a system reset
 840:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_SWPR  PAGEx         LL_SYSCFG_EnableCCMSRAMPageWRP
 841:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  CCMSRAMWRP This parameter can be a combination of the following values:
 842:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE0
 843:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE1
 844:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE2
 845:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE3
 846:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE4
 847:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE5
 848:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE6
 849:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE7
 850:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE8
 851:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE9
 852:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE10 (*)
 853:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE11 (*)
 854:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE12 (*)
 855:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE13 (*)
 856:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE14 (*)
 857:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE15 (*)
 858:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE16 (*)
 859:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE17 (*)
 860:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE18 (*)
 861:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE19 (*)
 862:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE20 (*)
 863:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE21 (*)
 864:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE22 (*)
 865:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE23 (*)
 866:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE24 (*)
 867:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE25 (*)
 868:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE26 (*)
 869:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE27 (*)
 870:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE28 (*)
 871:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE29 (*)
 872:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE30 (*)
 873:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_SYSCFG_CCMSRAMWRP_PAGE31 (*)
 874:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
 875:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices
 876:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 877:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 878:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_EnableCCMSRAMPageWRP(uint32_t CCMSRAMWRP)
 879:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 880:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(SYSCFG->SWPR, CCMSRAMWRP);
 881:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 882:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 883:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 884:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  CCMSRAM page write protection lock prior to erase
 885:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_SKR   KEY           LL_SYSCFG_LockCCMSRAMWRP
 886:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 887:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 888:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_LockCCMSRAMWRP(void)
 889:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 890:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   /* Writing a wrong key reactivates the write protection */
 891:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   WRITE_REG(SYSCFG->SKR, 0x00);
 892:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 893:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 894:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 895:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  CCMSRAM page write protection unlock prior to erase
 896:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll SYSCFG_SKR   KEY           LL_SYSCFG_UnlockCCMSRAMWRP
 897:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 898:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 899:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_SYSCFG_UnlockCCMSRAMWRP(void)
 900:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 901:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   /* unlock the write protection of the CCMER bit */
 902:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   WRITE_REG(SYSCFG->SKR, 0xCA);
 903:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   WRITE_REG(SYSCFG->SKR, 0x53);
 904:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 905:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 906:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 907:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
 908:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 909:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 910:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 911:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EF_DBGMCU DBGMCU
 912:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
 913:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 914:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 915:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 916:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Return the device identifier
 917:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_IDCODE DEV_ID        LL_DBGMCU_GetDeviceID
 918:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Values between Min_Data=0x00 and Max_Data=0x0FFF (ex: device ID is 0x6415)
 919:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 920:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_DBGMCU_GetDeviceID(void)
 921:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 922:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(DBGMCU->IDCODE, DBGMCU_IDCODE_DEV_ID));
 923:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 924:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 925:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 926:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Return the device revision identifier
 927:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @note This field indicates the revision of the device.
 928:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_IDCODE REV_ID        LL_DBGMCU_GetRevisionID
 929:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Values between Min_Data=0x00 and Max_Data=0xFFFF
 930:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 931:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_DBGMCU_GetRevisionID(void)
 932:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 933:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(DBGMCU->IDCODE, DBGMCU_IDCODE_REV_ID) >> (DBGMCU_REVID_POSITION & 0x1F
 934:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 935:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 936:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 937:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable the Debug Module during SLEEP mode
 938:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    DBG_SLEEP     LL_DBGMCU_EnableDBGSleepMode
 939:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 940:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 941:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_EnableDBGSleepMode(void)
 942:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 943:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 944:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 945:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 946:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 947:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable the Debug Module during SLEEP mode
 948:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    DBG_SLEEP     LL_DBGMCU_DisableDBGSleepMode
 949:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 950:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 951:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_DisableDBGSleepMode(void)
 952:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 953:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 954:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 955:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 956:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 957:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable the Debug Module during STOP mode
 958:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    DBG_STOP      LL_DBGMCU_EnableDBGStopMode
 959:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 960:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 961:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_EnableDBGStopMode(void)
 962:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 963:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 964:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 965:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 966:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 967:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable the Debug Module during STOP mode
 968:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    DBG_STOP      LL_DBGMCU_DisableDBGStopMode
 969:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 970:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 971:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_DisableDBGStopMode(void)
 972:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 973:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 974:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 975:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 976:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 977:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable the Debug Module during STANDBY mode
 978:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    DBG_STANDBY   LL_DBGMCU_EnableDBGStandbyMode
 979:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 980:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 981:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_EnableDBGStandbyMode(void)
 982:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 983:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 984:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 985:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 986:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 987:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable the Debug Module during STANDBY mode
 988:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    DBG_STANDBY   LL_DBGMCU_DisableDBGStandbyMode
 989:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
 990:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
 991:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_DisableDBGStandbyMode(void)
 992:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
 993:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 994:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
 995:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
 996:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
 997:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Set Trace pin assignment control
 998:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    TRACE_IOEN    LL_DBGMCU_SetTracePinAssignment\n
 999:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         DBGMCU_CR    TRACE_MODE    LL_DBGMCU_SetTracePinAssignment
1000:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  PinAssignment This parameter can be one of the following values:
1001:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_NONE
1002:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_ASYNCH
1003:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_SYNCH_SIZE1
1004:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_SYNCH_SIZE2
1005:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_SYNCH_SIZE4
1006:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1007:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1008:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_SetTracePinAssignment(uint32_t PinAssignment)
1009:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1010:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   MODIFY_REG(DBGMCU->CR, DBGMCU_CR_TRACE_IOEN | DBGMCU_CR_TRACE_MODE, PinAssignment);
1011:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1012:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1013:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1014:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get Trace pin assignment control
1015:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_CR    TRACE_IOEN    LL_DBGMCU_GetTracePinAssignment\n
1016:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         DBGMCU_CR    TRACE_MODE    LL_DBGMCU_GetTracePinAssignment
1017:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Returned value can be one of the following values:
1018:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_NONE
1019:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_ASYNCH
1020:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_SYNCH_SIZE1
1021:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_SYNCH_SIZE2
1022:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_TRACE_SYNCH_SIZE4
1023:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1024:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_DBGMCU_GetTracePinAssignment(void)
1025:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1026:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(DBGMCU->CR, DBGMCU_CR_TRACE_IOEN | DBGMCU_CR_TRACE_MODE));
1027:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1028:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1029:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1030:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Freeze APB1 peripherals (group1 peripherals)
1031:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_APB1FZR1 DBG_xxxx_STOP  LL_DBGMCU_APB1_GRP1_FreezePeriph
1032:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Periphs This parameter can be a combination of the following values:
1033:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM2_STOP
1034:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM3_STOP
1035:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM4_STOP
1036:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM5_STOP (*)
1037:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM6_STOP
1038:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM7_STOP
1039:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_RTC_STOP
1040:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_WWDG_STOP
1041:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_IWDG_STOP
1042:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_I2C1_STOP
1043:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_I2C2_STOP
1044:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_I2C3_STOP
1045:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_LPTIM1_STOP
1046:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1047:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1048:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1049:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1050:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_APB1_GRP1_FreezePeriph(uint32_t Periphs)
1051:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1052:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(DBGMCU->APB1FZR1, Periphs);
1053:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1054:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1055:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1056:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Freeze APB1 peripherals (group2 peripherals)
1057:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_APB1FZR2 DBG_xxxx_STOP  LL_DBGMCU_APB1_GRP2_FreezePeriph
1058:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Periphs This parameter can be a combination of the following values:
1059:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP2_I2C4_STOP (*)
1060:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1061:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1062:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1063:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1064:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_APB1_GRP2_FreezePeriph(uint32_t Periphs)
1065:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1066:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(DBGMCU->APB1FZR2, Periphs);
1067:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1068:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1069:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1070:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Unfreeze APB1 peripherals (group1 peripherals)
1071:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_APB1FZR1 DBG_xxxx_STOP  LL_DBGMCU_APB1_GRP1_UnFreezePeriph
1072:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Periphs This parameter can be a combination of the following values:
1073:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM2_STOP
1074:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM3_STOP
1075:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM4_STOP
1076:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM5_STOP (*)
1077:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM6_STOP
1078:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_TIM7_STOP
1079:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_RTC_STOP
1080:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_WWDG_STOP
1081:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_IWDG_STOP
1082:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_I2C1_STOP
1083:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_I2C2_STOP
1084:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_I2C3_STOP
1085:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP1_LPTIM1_STOP
1086:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1087:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1088:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1089:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1090:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_APB1_GRP1_UnFreezePeriph(uint32_t Periphs)
1091:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1092:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(DBGMCU->APB1FZR1, Periphs);
1093:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1094:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1095:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1096:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Unfreeze APB1 peripherals (group2 peripherals)
1097:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_APB1FZR2 DBG_xxxx_STOP  LL_DBGMCU_APB1_GRP2_UnFreezePeriph
1098:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Periphs This parameter can be a combination of the following values:
1099:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB1_GRP2_I2C4_STOP (*)
1100:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1101:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1102:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1103:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1104:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_APB1_GRP2_UnFreezePeriph(uint32_t Periphs)
1105:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1106:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(DBGMCU->APB1FZR2, Periphs);
1107:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1108:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1109:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1110:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Freeze APB2 peripherals
1111:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_APB2FZ DBG_TIMx_STOP  LL_DBGMCU_APB2_GRP1_FreezePeriph
1112:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Periphs This parameter can be a combination of the following values:
1113:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM1_STOP
1114:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM8_STOP
1115:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM15_STOP
1116:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM16_STOP
1117:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM17_STOP
1118:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM20_STOP (*)
1119:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_HRTIM1_STOP (*)
1120:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1121:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1122:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1123:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1124:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_APB2_GRP1_FreezePeriph(uint32_t Periphs)
1125:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1126:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(DBGMCU->APB2FZ, Periphs);
1127:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1128:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1129:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1130:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Unfreeze APB2 peripherals
1131:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll DBGMCU_APB2FZ DBG_TIMx_STOP  LL_DBGMCU_APB2_GRP1_UnFreezePeriph
1132:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Periphs This parameter can be a combination of the following values:
1133:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM1_STOP
1134:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM8_STOP
1135:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM15_STOP
1136:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM16_STOP
1137:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM17_STOP
1138:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_TIM20_STOP (*)
1139:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_DBGMCU_APB2_GRP1_HRTIM1_STOP (*)
1140:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1141:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1142:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1143:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1144:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_DBGMCU_APB2_GRP1_UnFreezePeriph(uint32_t Periphs)
1145:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1146:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(DBGMCU->APB2FZ, Periphs);
1147:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1148:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1149:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1150:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
1151:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1152:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1153:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #if defined(VREFBUF)
1154:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EF_VREFBUF VREFBUF
1155:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
1156:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1157:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1158:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1159:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable Internal voltage reference
1160:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CSR  ENVR          LL_VREFBUF_Enable
1161:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1162:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1163:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_VREFBUF_Enable(void)
1164:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1165:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(VREFBUF->CSR, VREFBUF_CSR_ENVR);
1166:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1167:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1168:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1169:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable Internal voltage reference
1170:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CSR  ENVR          LL_VREFBUF_Disable
1171:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1172:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1173:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_VREFBUF_Disable(void)
1174:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1175:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(VREFBUF->CSR, VREFBUF_CSR_ENVR);
1176:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1177:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1178:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1179:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Enable high impedance (VREF+pin is high impedance)
1180:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CSR  HIZ           LL_VREFBUF_EnableHIZ
1181:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1182:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1183:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_VREFBUF_EnableHIZ(void)
1184:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1185:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   SET_BIT(VREFBUF->CSR, VREFBUF_CSR_HIZ);
1186:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1187:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1188:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1189:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Disable high impedance (VREF+pin is internally connected to the voltage reference buffe
1190:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CSR  HIZ           LL_VREFBUF_DisableHIZ
1191:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1192:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1193:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_VREFBUF_DisableHIZ(void)
1194:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1195:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   CLEAR_BIT(VREFBUF->CSR, VREFBUF_CSR_HIZ);
1196:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1197:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1198:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1199:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Set the Voltage reference scale
1200:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CSR  VRS           LL_VREFBUF_SetVoltageScaling
1201:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Scale This parameter can be one of the following values:
1202:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_VREFBUF_VOLTAGE_SCALE0
1203:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_VREFBUF_VOLTAGE_SCALE1
1204:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_VREFBUF_VOLTAGE_SCALE2
1205:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1206:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1207:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_VREFBUF_SetVoltageScaling(uint32_t Scale)
1208:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1209:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   MODIFY_REG(VREFBUF->CSR, VREFBUF_CSR_VRS, Scale);
1210:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1211:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1212:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1213:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get the Voltage reference scale
1214:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CSR  VRS           LL_VREFBUF_GetVoltageScaling
1215:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Returned value can be one of the following values:
1216:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_VREFBUF_VOLTAGE_SCALE0
1217:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_VREFBUF_VOLTAGE_SCALE1
1218:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_VREFBUF_VOLTAGE_SCALE2
1219:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1220:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_VREFBUF_GetVoltageScaling(void)
1221:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1222:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(VREFBUF->CSR, VREFBUF_CSR_VRS));
1223:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1224:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1225:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1226:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Check if Voltage reference buffer is ready
1227:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CSR  VRR           LL_VREFBUF_IsVREFReady
1228:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval State of bit (1 or 0).
1229:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1230:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_VREFBUF_IsVREFReady(void)
1231:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1232:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return ((READ_BIT(VREFBUF->CSR, VREFBUF_CSR_VRR) == (VREFBUF_CSR_VRR)) ? 1UL : 0UL);
1233:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1234:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1235:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1236:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get the trimming code for VREFBUF calibration
1237:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CCR  TRIM          LL_VREFBUF_GetTrimming
1238:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Between 0 and 0x3F
1239:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1240:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_VREFBUF_GetTrimming(void)
1241:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1242:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(VREFBUF->CCR, VREFBUF_CCR_TRIM));
1243:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1244:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1245:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1246:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Set the trimming code for VREFBUF calibration (Tune the internal reference buffer volta
1247:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll VREFBUF_CCR  TRIM          LL_VREFBUF_SetTrimming
1248:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Value Between 0 and 0x3F
1249:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1250:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1251:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_VREFBUF_SetTrimming(uint32_t Value)
1252:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1253:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   WRITE_REG(VREFBUF->CCR, Value);
1254:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1255:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1256:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1257:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @}
1258:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1259:../../..\CubeG4\include/stm32g4xx_ll_system.h **** #endif /* VREFBUF */
1260:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1261:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /** @defgroup SYSTEM_LL_EF_FLASH FLASH
1262:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @{
1263:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1264:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1265:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1266:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Set FLASH Latency
1267:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll FLASH_ACR    LATENCY       LL_FLASH_SetLatency
1268:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @param  Latency This parameter can be one of the following values:
1269:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_0
1270:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_1
1271:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_2
1272:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_3
1273:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_4
1274:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_5 (*)
1275:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_6 (*)
1276:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_7 (*)
1277:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_8 (*)
1278:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_9 (*)
1279:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_10 (*)
1280:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_11 (*)
1281:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_12 (*)
1282:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_13 (*)
1283:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_14 (*)
1284:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_15 (*)
1285:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1286:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1287:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval None
1288:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1289:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE void LL_FLASH_SetLatency(uint32_t Latency)
 103              		.loc 3 1289 22 view .LVU26
 104              	.LBB23:
1290:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1291:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   MODIFY_REG(FLASH->ACR, FLASH_ACR_LATENCY, Latency);
 105              		.loc 3 1291 3 view .LVU27
 106 0042 194A     		ldr	r2, .L13+36
 107 0044 1368     		ldr	r3, [r2]
 108 0046 23F00F03 		bic	r3, r3, #15
 109 004a 0343     		orrs	r3, r3, r0
 110 004c 1360     		str	r3, [r2]
 111              	.LVL3:
 112              		.loc 3 1291 3 is_stmt 0 view .LVU28
 113              	.LBE23:
 114              	.LBE22:
 532:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 533:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Check that the new number of wait states is taken into account to access the Flash
 534:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****        memory by reading the FLASH_ACR register */
 535:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     if(LL_FLASH_GetLatency() != latency)
 115              		.loc 1 535 5 is_stmt 1 view .LVU29
 116              	.LBB24:
 117              	.LBI24:
1292:../../..\CubeG4\include/stm32g4xx_ll_system.h **** }
1293:../../..\CubeG4\include/stm32g4xx_ll_system.h **** 
1294:../../..\CubeG4\include/stm32g4xx_ll_system.h **** /**
1295:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @brief  Get FLASH Latency
1296:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @rmtoll FLASH_ACR    LATENCY       LL_FLASH_GetLatency
1297:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   * @retval Returned value can be one of the following values:
1298:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_0
1299:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_1
1300:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_2
1301:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_3
1302:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_4
1303:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_5 (*)
1304:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_6 (*)
1305:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_7 (*)
1306:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_8 (*)
1307:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_9 (*)
1308:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_10 (*)
1309:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_11 (*)
1310:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_12 (*)
1311:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_13 (*)
1312:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_14 (*)
1313:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         @arg @ref LL_FLASH_LATENCY_15 (*)
1314:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *
1315:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   *         (*) value not defined in all devices.
1316:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   */
1317:../../..\CubeG4\include/stm32g4xx_ll_system.h **** __STATIC_INLINE uint32_t LL_FLASH_GetLatency(void)
 118              		.loc 3 1317 26 view .LVU30
 119              	.LBB25:
1318:../../..\CubeG4\include/stm32g4xx_ll_system.h **** {
1319:../../..\CubeG4\include/stm32g4xx_ll_system.h ****   return (uint32_t)(READ_BIT(FLASH->ACR, FLASH_ACR_LATENCY));
 120              		.loc 3 1319 3 view .LVU31
 121              		.loc 3 1319 21 is_stmt 0 view .LVU32
 122 004e 1368     		ldr	r3, [r2]
 123              	.LVL4:
 124              		.loc 3 1319 21 view .LVU33
 125              	.LBE25:
 126              	.LBE24:
 536:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 537:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       status = ERROR;
 538:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 539:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 540:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   return status;
 127              		.loc 1 540 3 is_stmt 1 view .LVU34
 128              	.LBB27:
 129              	.LBB26:
 130              		.loc 3 1319 10 is_stmt 0 view .LVU35
 131 0050 03F00F03 		and	r3, r3, #15
 132              	.LVL5:
 133              		.loc 3 1319 10 view .LVU36
 134              	.LBE26:
 135              	.LBE27:
 541:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 136              		.loc 1 541 1 view .LVU37
 137 0054 181A     		subs	r0, r3, r0
 138              	.LVL6:
 139              		.loc 1 541 1 view .LVU38
 140 0056 18BF     		it	ne
 141 0058 0120     		movne	r0, #1
 142 005a 7047     		bx	lr
 143              	.LVL7:
 144              	.L2:
 515:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 145              		.loc 1 515 7 is_stmt 1 view .LVU39
 515:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 146              		.loc 1 515 9 is_stmt 0 view .LVU40
 147 005c 134B     		ldr	r3, .L13+40
 148 005e 9842     		cmp	r0, r3
 149 0060 0DD8     		bhi	.L11
 522:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         {
 150              		.loc 1 522 9 is_stmt 1 view .LVU41
 522:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****         {
 151              		.loc 1 522 11 is_stmt 0 view .LVU42
 152 0062 134B     		ldr	r3, .L13+44
 153 0064 E9E7     		b	.L12
 154              	.L4:
 471:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 155              		.loc 1 471 17 view .LVU43
 156 0066 0820     		movs	r0, #8
 157              	.LVL8:
 471:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 158              		.loc 1 471 17 view .LVU44
 159 0068 EBE7     		b	.L3
 160              	.LVL9:
 161              	.L5:
 476:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 162              		.loc 1 476 17 view .LVU45
 163 006a 0720     		movs	r0, #7
 164              	.LVL10:
 476:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 165              		.loc 1 476 17 view .LVU46
 166 006c E9E7     		b	.L3
 167              	.LVL11:
 168              	.L6:
 481:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 169              		.loc 1 481 17 view .LVU47
 170 006e 0620     		movs	r0, #6
 171              	.LVL12:
 481:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 172              		.loc 1 481 17 view .LVU48
 173 0070 E7E7     		b	.L3
 174              	.LVL13:
 175              	.L7:
 486:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 176              		.loc 1 486 17 view .LVU49
 177 0072 0520     		movs	r0, #5
 178              	.LVL14:
 486:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 179              		.loc 1 486 17 view .LVU50
 180 0074 E5E7     		b	.L3
 181              	.LVL15:
 182              	.L8:
 491:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 183              		.loc 1 491 17 view .LVU51
 184 0076 0420     		movs	r0, #4
 185              	.LVL16:
 491:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 186              		.loc 1 491 17 view .LVU52
 187 0078 E3E7     		b	.L3
 188              	.LVL17:
 189              	.L9:
 496:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 190              		.loc 1 496 17 view .LVU53
 191 007a 0320     		movs	r0, #3
 192              	.LVL18:
 496:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 193              		.loc 1 496 17 view .LVU54
 194 007c E1E7     		b	.L3
 195              	.LVL19:
 196              	.L11:
 501:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 197              		.loc 1 501 17 view .LVU55
 198 007e 0220     		movs	r0, #2
 199              	.LVL20:
 501:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 200              		.loc 1 501 17 view .LVU56
 201 0080 DFE7     		b	.L3
 202              	.L14:
 203 0082 00BF     		.align	2
 204              	.L13:
 205 0084 00700040 		.word	1073770496
 206 0088 00688909 		.word	160000000
 207 008c 003B5808 		.word	140000000
 208 0090 000E2707 		.word	120000000
 209 0094 00E1F505 		.word	100000000
 210 0098 00B4C404 		.word	80000000
 211 009c 00879303 		.word	60000000
 212 00a0 005A6202 		.word	40000000
 213 00a4 002D3101 		.word	20000000
 214 00a8 00200240 		.word	1073881088
 215 00ac 0024F400 		.word	16000000
 216 00b0 00127A00 		.word	8000000
 217              		.cfi_endproc
 218              	.LFE442:
 220              		.section	.text.UTILS_EnablePLLAndSwitchSystem,"ax",%progbits
 221              		.align	1
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 227              	UTILS_EnablePLLAndSwitchSystem:
 228              	.LVL21:
 229              	.LFB441:
 542:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 543:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 544:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  Function to check that PLL can be modified
 545:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  PLL_InputFrequency  PLL input frequency (in Hz)
 546:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  UTILS_PLLInitStruct pointer to a @ref LL_UTILS_PLLInitTypeDef structure that contains
 547:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *                             the configuration information for the PLL.
 548:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval PLL output frequency (in Hz)
 549:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 550:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static uint32_t UTILS_GetPLLOutputFrequency(uint32_t PLL_InputFrequency, LL_UTILS_PLLInitTypeDef *U
 551:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 552:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t pllfreq;
 553:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 554:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Check the parameters */
 555:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLM_VALUE(UTILS_PLLInitStruct->PLLM));
 556:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLN_VALUE(UTILS_PLLInitStruct->PLLN));
 557:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLR_VALUE(UTILS_PLLInitStruct->PLLR));
 558:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 559:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Check different PLL parameters according to RM                          */
 560:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /*  - PLLM: ensure that the VCO input frequency ranges from 2.66 to 8 MHz.   */
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   pllfreq = PLL_InputFrequency / (((UTILS_PLLInitStruct->PLLM >> RCC_PLLCFGR_PLLM_Pos) + 1U));
 562:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 563:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 564:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /*  - PLLN: ensure that the VCO output frequency is between 64 and 344 MHz.*/
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   pllfreq = pllfreq * (UTILS_PLLInitStruct->PLLN & (RCC_PLLCFGR_PLLN >> RCC_PLLCFGR_PLLN_Pos));
 566:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 567:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 568:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /*  - PLLR: ensure that max frequency at 170000000 Hz is reached                   */
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   pllfreq = pllfreq / (((UTILS_PLLInitStruct->PLLR >> RCC_PLLCFGR_PLLR_Pos) + 1U) * 2U);
 570:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 571:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 572:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   return pllfreq;
 573:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 574:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 575:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 576:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  Function to check that PLL can be modified
 577:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval An ErrorStatus enumeration value:
 578:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - SUCCESS: PLL modification can be done
 579:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - ERROR: PLL is busy
 580:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 581:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static ErrorStatus UTILS_PLL_IsBusy(void)
 582:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 583:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status = SUCCESS;
 584:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 585:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Check if PLL is busy*/
 586:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(LL_RCC_PLL_IsReady() != 0U)
 587:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 588:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* PLL configuration cannot be modified */
 589:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = ERROR;
 590:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 591:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 592:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   return status;
 593:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 594:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 595:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** /**
 596:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @brief  Function to enable PLL and switch system clock to PLL
 597:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  SYSCLK_Frequency SYSCLK frequency
 598:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @param  UTILS_ClkInitStruct pointer to a @ref LL_UTILS_ClkInitTypeDef structure that contains
 599:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *                             the configuration information for the BUS prescalers.
 600:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   * @retval An ErrorStatus enumeration value:
 601:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - SUCCESS: No problem to switch system to PLL
 602:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   *          - ERROR: Problem to switch system to PLL
 603:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   */
 604:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** static ErrorStatus UTILS_EnablePLLAndSwitchSystem(uint32_t SYSCLK_Frequency, LL_UTILS_ClkInitTypeDe
 605:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 230              		.loc 1 605 1 is_stmt 1 view -0
 231              		.cfi_startproc
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 606:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status = SUCCESS;
 234              		.loc 1 606 3 view .LVU58
 607:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t hclk_frequency;
 235              		.loc 1 607 3 view .LVU59
 608:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 609:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_SYSCLK_DIV(UTILS_ClkInitStruct->AHBCLKDivider));
 236              		.loc 1 609 3 view .LVU60
 610:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_APB1_DIV(UTILS_ClkInitStruct->APB1CLKDivider));
 237              		.loc 1 610 3 view .LVU61
 611:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_APB2_DIV(UTILS_ClkInitStruct->APB2CLKDivider));
 238              		.loc 1 611 3 view .LVU62
 612:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 613:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Calculate HCLK frequency */
 614:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   hclk_frequency = __LL_RCC_CALC_HCLK_FREQ(SYSCLK_Frequency, UTILS_ClkInitStruct->AHBCLKDivider);
 239              		.loc 1 614 3 view .LVU63
 605:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status = SUCCESS;
 240              		.loc 1 605 1 is_stmt 0 view .LVU64
 241 0000 38B5     		push	{r3, r4, r5, lr}
 242              		.cfi_def_cfa_offset 16
 243              		.cfi_offset 3, -16
 244              		.cfi_offset 4, -12
 245              		.cfi_offset 5, -8
 246              		.cfi_offset 14, -4
 247              		.loc 1 614 20 view .LVU65
 248 0002 0B68     		ldr	r3, [r1]
 249 0004 244A     		ldr	r2, .L31
 615:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 616:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Increasing the number of wait states because of higher CPU frequency */
 617:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(SystemCoreClock < hclk_frequency)
 250              		.loc 1 617 22 view .LVU66
 251 0006 254D     		ldr	r5, .L31+4
 614:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 252              		.loc 1 614 20 view .LVU67
 253 0008 C3F30313 		ubfx	r3, r3, #4, #4
 254 000c D45C     		ldrb	r4, [r2, r3]	@ zero_extendqisi2
 255              		.loc 1 617 5 view .LVU68
 256 000e 2B68     		ldr	r3, [r5]
 614:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 257              		.loc 1 614 20 view .LVU69
 258 0010 04F01F04 		and	r4, r4, #31
 614:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 259              		.loc 1 614 18 view .LVU70
 260 0014 20FA04F4 		lsr	r4, r0, r4
 261              	.LVL22:
 262              		.loc 1 617 3 is_stmt 1 view .LVU71
 263              		.loc 1 617 5 is_stmt 0 view .LVU72
 264 0018 A342     		cmp	r3, r4
 265 001a 28D3     		bcc	.L16
 266              	.LVL23:
 267              	.L19:
 618:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 619:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Set FLASH latency to highest latency */
 620:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = UTILS_SetFlashLatency(hclk_frequency);
 621:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 622:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 623:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Update system clock configuration */
 624:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(status == SUCCESS)
 625:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 626:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Enable PLL */
 627:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_PLL_Enable();
 268              		.loc 1 627 5 is_stmt 1 view .LVU73
 269              	.LBB50:
 270              	.LBI50:
 271              		.file 4 "../../..\\CubeG4\\include/stm32g4xx_ll_rcc.h"
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
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CR, RCC_CR_HSIRDY) == (RCC_CR_HSIRDY)) ? 1UL : 0UL);
1028:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
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
1221:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == (RCC_BDCR_LSERDY)) ? 1UL : 0UL);
1222:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
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
 272              		.loc 4 2055 22 view .LVU74
 273              	.LBB51:
2056:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2057:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_PLLON);
 274              		.loc 4 2057 3 view .LVU75
 275 001c 204B     		ldr	r3, .L31+8
 276 001e 1A68     		ldr	r2, [r3]
 277 0020 42F08072 		orr	r2, r2, #16777216
 278 0024 1A60     		str	r2, [r3]
 279              	.LBE51:
 280              	.LBE50:
 628:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_PLL_EnableDomain_SYS();
 281              		.loc 1 628 5 view .LVU76
 282              	.LBB52:
 283              	.LBI52:
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
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CR, RCC_CR_PLLRDY) == (RCC_CR_PLLRDY)) ? 1UL : 0UL);
2079:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
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
 284              		.loc 4 2428 22 view .LVU77
 285              	.LBB53:
2429:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
2430:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLREN);
 286              		.loc 4 2430 3 view .LVU78
 287 0026 DA68     		ldr	r2, [r3, #12]
 288 0028 42F08072 		orr	r2, r2, #16777216
 289 002c DA60     		str	r2, [r3, #12]
 290              	.L17:
 291              	.LBE53:
 292              	.LBE52:
 629:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     while (LL_RCC_PLL_IsReady() != 1U)
 630:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 631:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       /* Wait for PLL ready */
 632:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 293              		.loc 1 632 5 discriminator 1 view .LVU79
 294              	.LBB54:
 295              	.LBI54:
2076:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 296              		.loc 4 2076 26 discriminator 1 view .LVU80
 297              	.LBB55:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 298              		.loc 4 2078 3 discriminator 1 view .LVU81
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 299              		.loc 4 2078 12 is_stmt 0 discriminator 1 view .LVU82
 300 002e 1A68     		ldr	r2, [r3]
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 301              		.loc 4 2078 71 discriminator 1 view .LVU83
 302 0030 9201     		lsls	r2, r2, #6
 303 0032 FCD5     		bpl	.L17
 304              	.LBE55:
 305              	.LBE54:
 633:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 634:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Sysclk activation on the main PLL */
 635:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
 306              		.loc 1 635 5 is_stmt 1 view .LVU84
 307              	.LVL24:
 308              	.LBB56:
 309              	.LBI56:
1375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 310              		.loc 4 1375 22 view .LVU85
 311              	.LBB57:
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 312              		.loc 4 1377 3 view .LVU86
 313 0034 9A68     		ldr	r2, [r3, #8]
 314 0036 0868     		ldr	r0, [r1]
 315 0038 22F0F002 		bic	r2, r2, #240
 316 003c 0243     		orrs	r2, r2, r0
 317 003e 9A60     		str	r2, [r3, #8]
 318              	.LVL25:
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 319              		.loc 4 1377 3 is_stmt 0 view .LVU87
 320              	.LBE57:
 321              	.LBE56:
 636:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
 322              		.loc 1 636 5 is_stmt 1 view .LVU88
 323              	.LBB58:
 324              	.LBI58:
1342:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 325              		.loc 4 1342 22 view .LVU89
 326              	.LBB59:
1344:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 327              		.loc 4 1344 3 view .LVU90
 328 0040 9A68     		ldr	r2, [r3, #8]
 329 0042 42F00302 		orr	r2, r2, #3
 330 0046 9A60     		str	r2, [r3, #8]
 331              	.L20:
 332              	.LBE59:
 333              	.LBE58:
 637:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
 638:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 639:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       /* Wait for system clock switch to PLL */
 640:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 334              		.loc 1 640 5 discriminator 1 view .LVU91
 335              	.LBB60:
 336              	.LBI60:
1355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 337              		.loc 4 1355 26 discriminator 1 view .LVU92
 338              	.LBB61:
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 339              		.loc 4 1357 3 discriminator 1 view .LVU93
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 340              		.loc 4 1357 21 is_stmt 0 discriminator 1 view .LVU94
 341 0048 9A68     		ldr	r2, [r3, #8]
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 342              		.loc 4 1357 10 discriminator 1 view .LVU95
 343 004a 02F00C02 		and	r2, r2, #12
 344              	.LBE61:
 345              	.LBE60:
 637:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
 346              		.loc 1 637 11 discriminator 1 view .LVU96
 347 004e 0C2A     		cmp	r2, #12
 348 0050 FAD1     		bne	.L20
 641:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 642:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Set APB1 & APB2 prescaler*/
 643:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_SetAPB1Prescaler(UTILS_ClkInitStruct->APB1CLKDivider);
 349              		.loc 1 643 5 is_stmt 1 view .LVU97
 350              	.LVL26:
 351              	.LBB62:
 352              	.LBI62:
1391:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 353              		.loc 4 1391 22 view .LVU98
 354              	.LBB63:
1393:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 355              		.loc 4 1393 3 view .LVU99
 356 0052 9A68     		ldr	r2, [r3, #8]
 357 0054 4868     		ldr	r0, [r1, #4]
 358 0056 22F4E062 		bic	r2, r2, #1792
 359 005a 0243     		orrs	r2, r2, r0
 360 005c 9A60     		str	r2, [r3, #8]
 361              	.LVL27:
1393:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 362              		.loc 4 1393 3 is_stmt 0 view .LVU100
 363              	.LBE63:
 364              	.LBE62:
 644:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_RCC_SetAPB2Prescaler(UTILS_ClkInitStruct->APB2CLKDivider);
 365              		.loc 1 644 5 is_stmt 1 view .LVU101
 366              	.LBB64:
 367              	.LBI64:
1407:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 368              		.loc 4 1407 22 view .LVU102
 369              	.LBB65:
1409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 370              		.loc 4 1409 3 view .LVU103
 371 005e 9A68     		ldr	r2, [r3, #8]
 372 0060 8968     		ldr	r1, [r1, #8]
 373              	.LVL28:
1409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 374              		.loc 4 1409 3 is_stmt 0 view .LVU104
 375 0062 22F46052 		bic	r2, r2, #14336
 376 0066 0A43     		orrs	r2, r2, r1
 377 0068 9A60     		str	r2, [r3, #8]
 378 006a 0020     		movs	r0, #0
 379 006c 05E0     		b	.L18
 380              	.LVL29:
 381              	.L16:
1409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 382              		.loc 4 1409 3 view .LVU105
 383              	.LBE65:
 384              	.LBE64:
 620:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 385              		.loc 1 620 5 is_stmt 1 view .LVU106
 386              	.LBB66:
 387              	.LBI66:
 453:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 388              		.loc 1 453 20 view .LVU107
 389              	.LBB67:
 455:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 390              		.loc 1 455 3 view .LVU108
 457:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 391              		.loc 1 457 3 view .LVU109
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 392              		.loc 1 460 3 view .LVU110
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 393              		.loc 1 460 5 is_stmt 0 view .LVU111
 394 006e 74B1     		cbz	r4, .L23
 395 0070 2046     		mov	r0, r4
 396              	.LVL30:
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 397              		.loc 1 460 5 view .LVU112
 398 0072 FFF7FEFF 		bl	UTILS_SetFlashLatency.part.0
 399              	.LVL31:
 540:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 400              		.loc 1 540 3 is_stmt 1 view .LVU113
 540:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 401              		.loc 1 540 3 is_stmt 0 view .LVU114
 402              	.LBE67:
 403              	.LBE66:
 624:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 404              		.loc 1 624 3 is_stmt 1 view .LVU115
 624:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 405              		.loc 1 624 5 is_stmt 0 view .LVU116
 406 0076 0028     		cmp	r0, #0
 407 0078 D0D0     		beq	.L19
 408              	.LVL32:
 409              	.L18:
 645:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 646:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     
 647:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Decreasing the number of wait states because of lower CPU frequency */
 648:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(SystemCoreClock > hclk_frequency)
 410              		.loc 1 648 3 is_stmt 1 view .LVU117
 411              		.loc 1 648 5 is_stmt 0 view .LVU118
 412 007a 2B68     		ldr	r3, [r5]
 413 007c A342     		cmp	r3, r4
 414 007e 03D9     		bls	.L21
 649:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 650:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     /* Set FLASH latency to lowest latency */
 651:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     status = UTILS_SetFlashLatency(hclk_frequency);
 415              		.loc 1 651 5 is_stmt 1 view .LVU119
 416              	.LVL33:
 417              	.LBB69:
 418              	.LBI69:
 453:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 419              		.loc 1 453 20 view .LVU120
 420              	.LBB70:
 455:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 421              		.loc 1 455 3 view .LVU121
 457:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 422              		.loc 1 457 3 view .LVU122
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 423              		.loc 1 460 3 view .LVU123
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 424              		.loc 1 460 5 is_stmt 0 view .LVU124
 425 0080 3CB1     		cbz	r4, .L24
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 426              		.loc 1 460 5 view .LVU125
 427 0082 2046     		mov	r0, r4
 428 0084 FFF7FEFF 		bl	UTILS_SetFlashLatency.part.0
 429              	.LVL34:
 430              	.L21:
 460:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 431              		.loc 1 460 5 view .LVU126
 432              	.LBE70:
 433              	.LBE69:
 652:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 653:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 654:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Update SystemCoreClock variable */
 655:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   if(status == SUCCESS)
 434              		.loc 1 655 3 is_stmt 1 view .LVU127
 435              		.loc 1 655 5 is_stmt 0 view .LVU128
 436 0088 00B9     		cbnz	r0, .L22
 437              	.LVL35:
 656:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 657:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     LL_SetSystemCoreClock(hclk_frequency);
 438              		.loc 1 657 5 is_stmt 1 view .LVU129
 439              	.LBB72:
 440              	.LBI72:
 265:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 441              		.loc 1 265 6 view .LVU130
 442              	.LBB73:
 268:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 443              		.loc 1 268 3 view .LVU131
 268:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 444              		.loc 1 268 19 is_stmt 0 view .LVU132
 445 008a 2C60     		str	r4, [r5]
 446              	.LVL36:
 447              	.L22:
 268:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 448              		.loc 1 268 19 view .LVU133
 449              	.LBE73:
 450              	.LBE72:
 658:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 659:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 660:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   return status;
 451              		.loc 1 660 3 is_stmt 1 view .LVU134
 661:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 452              		.loc 1 661 1 is_stmt 0 view .LVU135
 453 008c 38BD     		pop	{r3, r4, r5, pc}
 454              	.LVL37:
 455              	.L23:
 456              	.LBB74:
 457              	.LBB68:
 462:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 458              		.loc 1 462 12 view .LVU136
 459 008e 0120     		movs	r0, #1
 460              	.LVL38:
 462:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 461              		.loc 1 462 12 view .LVU137
 462 0090 F3E7     		b	.L18
 463              	.LVL39:
 464              	.L24:
 462:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 465              		.loc 1 462 12 view .LVU138
 466              	.LBE68:
 467              	.LBE74:
 468              	.LBB75:
 469              	.LBB71:
 470 0092 0120     		movs	r0, #1
 471 0094 FAE7     		b	.L22
 472              	.L32:
 473 0096 00BF     		.align	2
 474              	.L31:
 475 0098 00000000 		.word	AHBPrescTable
 476 009c 00000000 		.word	SystemCoreClock
 477 00a0 00100240 		.word	1073876992
 478              	.LBE71:
 479              	.LBE75:
 480              		.cfi_endproc
 481              	.LFE441:
 483              		.section	.text.LL_Init1msTick,"ax",%progbits
 484              		.align	1
 485              		.global	LL_Init1msTick
 486              		.syntax unified
 487              		.thumb
 488              		.thumb_func
 489              		.fpu fpv4-sp-d16
 491              	LL_Init1msTick:
 492              	.LVL40:
 493              	.LFB433:
 170:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Use frequency provided in argument */
 494              		.loc 1 170 1 is_stmt 1 view -0
 495              		.cfi_startproc
 496              		@ args = 0, pretend = 0, frame = 0
 497              		@ frame_needed = 0, uses_anonymous_args = 0
 498              		@ link register save eliminated.
 172:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 499              		.loc 1 172 3 view .LVU140
 500              	.LBB78:
 501              	.LBI78:
 502              		.file 5 "../../..\\CubeG4\\include/stm32g4xx_ll_utils.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @file    stm32g4xx_ll_utils.h
   4:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief   Header file of UTILS LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   @verbatim
   7:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   ==============================================================================
   8:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                      ##### How to use this driver #####
   9:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   ==============================================================================
  10:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****     [..]
  11:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****     The LL UTILS driver contains a set of generic APIs that can be
  12:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****     used by user:
  13:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****       (+) Device electronic signature
  14:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****       (+) Timing functions
  15:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****       (+) PLL configuration functions
  16:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  17:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   @endverbatim
  18:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   ******************************************************************************
  19:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @attention
  20:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *
  21:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  22:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * All rights reserved.</center></h2>
  23:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *
  24:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  25:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * the "License"; You may not use this file except in compliance with the
  26:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * License. You may obtain a copy of the License at:
  27:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *                        opensource.org/licenses/BSD-3-Clause
  28:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *
  29:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   ******************************************************************************
  30:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  31:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  32:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  33:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #ifndef STM32G4xx_LL_UTILS_H
  34:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define STM32G4xx_LL_UTILS_H
  35:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  36:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #ifdef __cplusplus
  37:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** extern "C" {
  38:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #endif
  39:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  40:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Includes ------------------------------------------------------------------*/
  41:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #include "stm32g4xx.h"
  42:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  43:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @addtogroup STM32G4xx_LL_Driver
  44:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
  45:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  46:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  47:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_LL UTILS
  48:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
  49:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  50:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  51:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Private types -------------------------------------------------------------*/
  52:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Private variables ---------------------------------------------------------*/
  53:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  54:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Private constants ---------------------------------------------------------*/
  55:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_LL_Private_Constants UTILS Private Constants
  56:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
  57:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  58:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  59:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Max delay can be used in LL_mDelay */
  60:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_MAX_DELAY                  0xFFFFFFFFU
  61:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
  63:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****  * @brief Unique device ID register base address
  64:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****  */
  65:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define UID_BASE_ADDRESS              UID_BASE
  66:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  67:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
  68:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****  * @brief Flash size data register base address
  69:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****  */
  70:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define FLASHSIZE_BASE_ADDRESS        FLASHSIZE_BASE
  71:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  72:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
  73:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****  * @brief Package data register base address
  74:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****  */
  75:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define PACKAGE_BASE_ADDRESS          PACKAGE_BASE
  76:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  77:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
  78:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @}
  79:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  80:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
  81:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Private macros ------------------------------------------------------------*/
  82:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_LL_Private_Macros UTILS Private Macros
  83:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
  84:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  85:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
  86:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @}
  87:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  88:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Exported types ------------------------------------------------------------*/
  89:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_LL_ES_INIT UTILS Exported structures
  90:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
  91:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  92:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
  93:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  UTILS PLL structure definition
  94:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
  95:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** typedef struct
  96:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
  97:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   uint32_t PLLM;   /*!< Division factor for PLL VCO input clock.
  98:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         This parameter can be a value of @ref RCC_LL_EC_PLLM_DIV
  99:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         This feature can be modified afterwards using unitary function
 101:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         @ref LL_RCC_PLL_ConfigDomain_SYS(). */
 102:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 103:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   uint32_t PLLN;   /*!< Multiplication factor for PLL VCO output clock.
 104:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         This parameter must be a number between Min_Data = 8 and Max_Data = 86
 105:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 106:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         This feature can be modified afterwards using unitary function
 107:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         @ref LL_RCC_PLL_ConfigDomain_SYS(). */
 108:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   uint32_t PLLR;   /*!< Division for the main system clock.
 110:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         This parameter can be a value of @ref RCC_LL_EC_PLLR_DIV
 111:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 112:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         This feature can be modified afterwards using unitary function
 113:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                         @ref LL_RCC_PLL_ConfigDomain_SYS(). */
 114:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** } LL_UTILS_PLLInitTypeDef;
 115:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 116:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 117:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  UTILS System, AHB and APB buses clock configuration structure definition
 118:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 119:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** typedef struct
 120:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
 121:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   uint32_t AHBCLKDivider;         /*!< The AHB clock (HCLK) divider. This clock is derived from the
 122:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        This parameter can be a value of @ref RCC_LL_EC_SYSCLK_DIV
 123:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 124:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        This feature can be modified afterwards using unitary functi
 125:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        @ref LL_RCC_SetAHBPrescaler(). */
 126:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 127:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   uint32_t APB1CLKDivider;        /*!< The APB1 clock (PCLK1) divider. This clock is derived from t
 128:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        This parameter can be a value of @ref RCC_LL_EC_APB1_DIV
 129:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 130:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        This feature can be modified afterwards using unitary functi
 131:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        @ref LL_RCC_SetAPB1Prescaler(). */
 132:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 133:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   uint32_t APB2CLKDivider;        /*!< The APB2 clock (PCLK2) divider. This clock is derived from t
 134:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        This parameter can be a value of @ref RCC_LL_EC_APB2_DIV
 135:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 136:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        This feature can be modified afterwards using unitary functi
 137:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****                                        @ref LL_RCC_SetAPB2Prescaler(). */
 138:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 139:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** } LL_UTILS_ClkInitTypeDef;
 140:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 141:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 142:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @}
 143:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 144:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 145:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Exported constants --------------------------------------------------------*/
 146:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_LL_Exported_Constants UTILS Exported Constants
 147:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
 148:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 149:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 150:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_EC_HSE_BYPASS HSE Bypass activation
 151:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
 152:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 153:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_HSEBYPASS_OFF        0x00000000U       /*!< HSE Bypass is not enabled             
 154:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_HSEBYPASS_ON         0x00000001U       /*!< HSE Bypass is enabled                 
 155:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 156:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @}
 157:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 158:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 159:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_EC_PACKAGETYPE PACKAGE TYPE
 160:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
 161:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 162:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_LQFP64         0x00000000U /*!< LQFP64 package type                   
 163:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_LQFP100        0x00000002U /*!< LQFP100 package type                  
 164:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_WLCSP81        0x00000005U /*!< WLCSP81 package type                  
 165:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_LQFP128        0x00000007U /*!< LQFP128 package type                  
 166:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_UFQFPN32       0x00000008U /*!< UFQFPN32 package type                 
 167:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_LQFP32         0x00000009U /*!< LQFP32 package type                   
 168:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_UFQFPN48       0x0000000AU /*!< UFQFPN48 package type                 
 169:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_LQFP48         0x0000000BU /*!< LQFP48 package type                   
 170:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_WLCSP49        0x0000000CU /*!< WLCSP49 package type                  
 171:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_UFBGA64        0x0000000DU /*!< UFBGA64 package type                  
 172:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_UFBGA100       0x0000000EU /*!< UFBGA100 package type                 
 173:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** #define LL_UTILS_PACKAGETYPE_LQFP48_EBIKE   0x00000010U /*!< LQFP48 EBIKE package type             
 174:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 175:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 176:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @}
 177:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 178:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 179:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 180:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @}
 181:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 182:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 183:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Exported macro ------------------------------------------------------------*/
 184:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 185:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /* Exported functions --------------------------------------------------------*/
 186:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_LL_Exported_Functions UTILS Exported Functions
 187:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
 188:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 189:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 190:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_EF_DEVICE_ELECTRONIC_SIGNATURE DEVICE ELECTRONIC SIGNATURE
 191:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
 192:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 193:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 194:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 195:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  Get Word0 of the unique device identifier (UID based on 96 bits)
 196:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @retval UID[31:0]: X and Y coordinates on the wafer expressed in BCD format
 197:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 198:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** __STATIC_INLINE uint32_t LL_GetUID_Word0(void)
 199:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
 200:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   return (uint32_t)(READ_REG(*((uint32_t *)UID_BASE_ADDRESS)));
 201:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** }
 202:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 203:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 204:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  Get Word1 of the unique device identifier (UID based on 96 bits)
 205:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @retval UID[63:32]: Wafer number (UID[39:32]) & LOT_NUM[23:0] (UID[63:40])
 206:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 207:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** __STATIC_INLINE uint32_t LL_GetUID_Word1(void)
 208:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
 209:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   return (uint32_t)(READ_REG(*((uint32_t *)(UID_BASE_ADDRESS + 4U))));
 210:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** }
 211:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 212:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 213:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  Get Word2 of the unique device identifier (UID based on 96 bits)
 214:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @retval UID[95:64]: Lot number (ASCII encoded) - LOT_NUM[55:24]
 215:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 216:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** __STATIC_INLINE uint32_t LL_GetUID_Word2(void)
 217:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
 218:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   return (uint32_t)(READ_REG(*((uint32_t *)(UID_BASE_ADDRESS + 8U))));
 219:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** }
 220:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 221:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 222:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  Get Flash memory size
 223:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @note   This bitfield indicates the size of the device Flash memory expressed in
 224:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         Kbytes. As an example, 0x040 corresponds to 64 Kbytes.
 225:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @retval FLASH_SIZE[15:0]: Flash memory size
 226:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 227:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** __STATIC_INLINE uint32_t LL_GetFlashSize(void)
 228:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
 229:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   return (uint32_t)(READ_REG(*((uint32_t *)FLASHSIZE_BASE_ADDRESS)) & 0x0000FFFFUL);
 230:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** }
 231:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 232:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 233:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  Get Package type
 234:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @retval Returned value can be one of the following values:
 235:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_LQFP64
 236:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_LQFP100
 237:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_WLCSP81
 238:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_LQFP128
 239:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_UFQFPN32
 240:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_LQFP32
 241:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_UFQFPN48
 242:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_LQFP48
 243:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_WLCSP49
 244:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_UFBGA64
 245:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_UFBGA100
 246:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         @arg @ref LL_UTILS_PACKAGETYPE_LQFP48_EBIKE
 247:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *
 248:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** */
 249:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** __STATIC_INLINE uint32_t LL_GetPackageType(void)
 250:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
 251:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   return (uint32_t)(READ_REG(*((uint32_t *)PACKAGE_BASE_ADDRESS)) & 0x1FU);
 252:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** }
 253:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 254:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 255:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @}
 256:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 257:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 258:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /** @defgroup UTILS_LL_EF_DELAY DELAY
 259:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @{
 260:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 261:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** 
 262:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** /**
 263:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @brief  This function configures the Cortex-M SysTick source of the time base.
 264:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @param  HCLKFrequency HCLK frequency in Hz (can be calculated thanks to RCC helper macro)
 265:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @note   When a RTOS is used, it is recommended to avoid changing the SysTick
 266:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   *         configuration by calling this function, for a delay use rather osDelay RTOS service.
 267:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @param  Ticks Number of ticks
 268:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   * @retval None
 269:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   */
 270:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** __STATIC_INLINE void LL_InitTick(uint32_t HCLKFrequency, uint32_t Ticks)
 503              		.loc 5 270 22 view .LVU141
 504              	.LBB79:
 271:../../..\CubeG4\include/stm32g4xx_ll_utils.h **** {
 272:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   /* Configure the SysTick to have interrupt in 1ms time base */
 273:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   SysTick->LOAD  = (uint32_t)((HCLKFrequency / Ticks) - 1UL);  /* set reload register */
 505              		.loc 5 273 3 view .LVU142
 506              		.loc 5 273 46 is_stmt 0 view .LVU143
 507 0000 4FF47A73 		mov	r3, #1000
 508 0004 B0FBF3F0 		udiv	r0, r0, r3
 509              	.LVL41:
 510              		.loc 5 273 18 view .LVU144
 511 0008 034B     		ldr	r3, .L34
 274:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   SysTick->VAL   = 0UL;                                       /* Load the SysTick Counter Value */
 512              		.loc 5 274 18 view .LVU145
 513 000a 0022     		movs	r2, #0
 273:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   SysTick->VAL   = 0UL;                                       /* Load the SysTick Counter Value */
 514              		.loc 5 273 20 view .LVU146
 515 000c 0138     		subs	r0, r0, #1
 273:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   SysTick->VAL   = 0UL;                                       /* Load the SysTick Counter Value */
 516              		.loc 5 273 18 view .LVU147
 517 000e 5860     		str	r0, [r3, #4]
 518              		.loc 5 274 3 is_stmt 1 view .LVU148
 519              		.loc 5 274 18 is_stmt 0 view .LVU149
 520 0010 9A60     		str	r2, [r3, #8]
 275:../../..\CubeG4\include/stm32g4xx_ll_utils.h ****   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 521              		.loc 5 275 3 is_stmt 1 view .LVU150
 522              		.loc 5 275 18 is_stmt 0 view .LVU151
 523 0012 0522     		movs	r2, #5
 524 0014 1A60     		str	r2, [r3]
 525              	.LVL42:
 526              		.loc 5 275 18 view .LVU152
 527              	.LBE79:
 528              	.LBE78:
 173:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 529              		.loc 1 173 1 view .LVU153
 530 0016 7047     		bx	lr
 531              	.L35:
 532              		.align	2
 533              	.L34:
 534 0018 10E000E0 		.word	-536813552
 535              		.cfi_endproc
 536              	.LFE433:
 538              		.section	.text.LL_mDelay,"ax",%progbits
 539              		.align	1
 540              		.global	LL_mDelay
 541              		.syntax unified
 542              		.thumb
 543              		.thumb_func
 544              		.fpu fpv4-sp-d16
 546              	LL_mDelay:
 547              	.LVL43:
 548              	.LFB434:
 186:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   __IO uint32_t  tmp = SysTick->CTRL;  /* Clear the COUNTFLAG first */
 549              		.loc 1 186 1 is_stmt 1 view -0
 550              		.cfi_startproc
 551              		@ args = 0, pretend = 0, frame = 8
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553              		@ link register save eliminated.
 187:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t tmpDelay; /* MISRAC2012-Rule-17.8 */
 554              		.loc 1 187 3 view .LVU155
 187:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t tmpDelay; /* MISRAC2012-Rule-17.8 */
 555              		.loc 1 187 31 is_stmt 0 view .LVU156
 556 0000 084B     		ldr	r3, .L46
 186:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   __IO uint32_t  tmp = SysTick->CTRL;  /* Clear the COUNTFLAG first */
 557              		.loc 1 186 1 view .LVU157
 558 0002 82B0     		sub	sp, sp, #8
 559              		.cfi_def_cfa_offset 8
 187:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t tmpDelay; /* MISRAC2012-Rule-17.8 */
 560              		.loc 1 187 31 view .LVU158
 561 0004 1B68     		ldr	r3, [r3]
 187:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t tmpDelay; /* MISRAC2012-Rule-17.8 */
 562              		.loc 1 187 18 view .LVU159
 563 0006 0193     		str	r3, [sp, #4]
 188:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Add this code to indicate that local variable is not used */
 564              		.loc 1 188 3 is_stmt 1 view .LVU160
 190:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   tmpDelay = Delay;
 565              		.loc 1 190 3 view .LVU161
 190:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   tmpDelay = Delay;
 566              		.loc 1 190 4 is_stmt 0 view .LVU162
 567 0008 019B     		ldr	r3, [sp, #4]
 191:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* Add a period to guaranty minimum wait */
 568              		.loc 1 191 3 is_stmt 1 view .LVU163
 569              	.LVL44:
 193:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 570              		.loc 1 193 3 view .LVU164
 200:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 571              		.loc 1 200 16 is_stmt 0 view .LVU165
 572 000a 064B     		ldr	r3, .L46
 193:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 573              		.loc 1 193 5 view .LVU166
 574 000c 411C     		adds	r1, r0, #1
 195:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 575              		.loc 1 195 5 is_stmt 1 view .LVU167
 195:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 576              		.loc 1 195 13 is_stmt 0 view .LVU168
 577 000e 18BF     		it	ne
 578 0010 0130     		addne	r0, r0, #1
 579              	.LVL45:
 580              	.L39:
 198:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 581              		.loc 1 198 9 view .LVU169
 582 0012 08B9     		cbnz	r0, .L40
 205:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 583              		.loc 1 205 1 view .LVU170
 584 0014 02B0     		add	sp, sp, #8
 585              		.cfi_remember_state
 586              		.cfi_def_cfa_offset 0
 587              		@ sp needed
 588 0016 7047     		bx	lr
 589              	.L40:
 590              		.cfi_restore_state
 591              	.LVL46:
 200:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 592              		.loc 1 200 5 is_stmt 1 view .LVU171
 200:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 593              		.loc 1 200 16 is_stmt 0 view .LVU172
 594 0018 1A68     		ldr	r2, [r3]
 200:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 595              		.loc 1 200 7 view .LVU173
 596 001a D203     		lsls	r2, r2, #15
 202:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 597              		.loc 1 202 7 is_stmt 1 view .LVU174
 202:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 598              		.loc 1 202 15 is_stmt 0 view .LVU175
 599 001c 48BF     		it	mi
 600 001e 00F1FF30 		addmi	r0, r0, #-1
 601              	.LVL47:
 202:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 602              		.loc 1 202 15 view .LVU176
 603 0022 F6E7     		b	.L39
 604              	.L47:
 605              		.align	2
 606              	.L46:
 607 0024 10E000E0 		.word	-536813552
 608              		.cfi_endproc
 609              	.LFE434:
 611              		.section	.text.LL_SetSystemCoreClock,"ax",%progbits
 612              		.align	1
 613              		.global	LL_SetSystemCoreClock
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu fpv4-sp-d16
 619              	LL_SetSystemCoreClock:
 620              	.LVL48:
 621              	.LFB435:
 266:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   /* HCLK clock frequency */
 622              		.loc 1 266 1 is_stmt 1 view -0
 623              		.cfi_startproc
 624              		@ args = 0, pretend = 0, frame = 0
 625              		@ frame_needed = 0, uses_anonymous_args = 0
 626              		@ link register save eliminated.
 268:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 627              		.loc 1 268 3 view .LVU178
 268:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 628              		.loc 1 268 19 is_stmt 0 view .LVU179
 629 0000 014B     		ldr	r3, .L49
 630 0002 1860     		str	r0, [r3]
 269:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 631              		.loc 1 269 1 view .LVU180
 632 0004 7047     		bx	lr
 633              	.L50:
 634 0006 00BF     		.align	2
 635              	.L49:
 636 0008 00000000 		.word	SystemCoreClock
 637              		.cfi_endproc
 638              	.LFE435:
 640              		.section	.text.LL_PLL_ConfigSystemClock_HSI,"ax",%progbits
 641              		.align	1
 642              		.global	LL_PLL_ConfigSystemClock_HSI
 643              		.syntax unified
 644              		.thumb
 645              		.thumb_func
 646              		.fpu fpv4-sp-d16
 648              	LL_PLL_ConfigSystemClock_HSI:
 649              	.LVL49:
 650              	.LFB436:
 289:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 651              		.loc 1 289 1 is_stmt 1 view -0
 652              		.cfi_startproc
 653              		@ args = 0, pretend = 0, frame = 0
 654              		@ frame_needed = 0, uses_anonymous_args = 0
 290:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t pllfreq;
 655              		.loc 1 290 3 view .LVU182
 291:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t hpre = 0U;
 656              		.loc 1 291 3 view .LVU183
 292:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 657              		.loc 1 292 3 view .LVU184
 295:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 658              		.loc 1 295 3 view .LVU185
 659              	.LBB96:
 660              	.LBI96:
 581:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 661              		.loc 1 581 20 view .LVU186
 662              	.LBB97:
 583:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 663              		.loc 1 583 3 view .LVU187
 586:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 664              		.loc 1 586 3 view .LVU188
 665              	.LBB98:
 666              	.LBI98:
2076:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 667              		.loc 4 2076 26 view .LVU189
 668              	.LBB99:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 669              		.loc 4 2078 3 view .LVU190
 670              	.LBE99:
 671              	.LBE98:
 672              	.LBE97:
 673              	.LBE96:
 289:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 674              		.loc 1 289 1 is_stmt 0 view .LVU191
 675 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 676              		.cfi_def_cfa_offset 24
 677              		.cfi_offset 3, -24
 678              		.cfi_offset 4, -20
 679              		.cfi_offset 5, -16
 680              		.cfi_offset 6, -12
 681              		.cfi_offset 7, -8
 682              		.cfi_offset 14, -4
 683              	.LBB106:
 684              	.LBB104:
 685              	.LBB102:
 686              	.LBB100:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 687              		.loc 4 2078 12 view .LVU192
 688 0002 1F4C     		ldr	r4, .L63
 689 0004 2368     		ldr	r3, [r4]
 690              	.LBE100:
 691              	.LBE102:
 692              	.LBE104:
 693              	.LBE106:
 289:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 694              		.loc 1 289 1 view .LVU193
 695 0006 0D46     		mov	r5, r1
 696              	.LBB107:
 697              	.LBB105:
 698              	.LBB103:
 699              	.LBB101:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 700              		.loc 4 2078 71 view .LVU194
 701 0008 9901     		lsls	r1, r3, #6
 702              	.LVL50:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 703              		.loc 4 2078 71 view .LVU195
 704 000a 37D4     		bmi	.L56
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 705              		.loc 4 2078 71 view .LVU196
 706              	.LBE101:
 707              	.LBE103:
 592:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 708              		.loc 1 592 3 is_stmt 1 view .LVU197
 709              	.LVL51:
 592:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 710              		.loc 1 592 3 is_stmt 0 view .LVU198
 711              	.LBE105:
 712              	.LBE107:
 298:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 713              		.loc 1 298 5 is_stmt 1 view .LVU199
 714              	.LBB108:
 715              	.LBI108:
 550:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 716              		.loc 1 550 17 view .LVU200
 717              	.LBB109:
 552:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 718              		.loc 1 552 3 view .LVU201
 555:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLN_VALUE(UTILS_PLLInitStruct->PLLN));
 719              		.loc 1 555 3 view .LVU202
 556:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLR_VALUE(UTILS_PLLInitStruct->PLLR));
 720              		.loc 1 556 3 view .LVU203
 557:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 721              		.loc 1 557 3 view .LVU204
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 722              		.loc 1 561 3 view .LVU205
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 723              		.loc 1 561 56 is_stmt 0 view .LVU206
 724 000c 0168     		ldr	r1, [r0]
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 725              		.loc 1 565 43 view .LVU207
 726 000e 4768     		ldr	r7, [r0, #4]
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 727              		.loc 1 569 45 view .LVU208
 728 0010 8668     		ldr	r6, [r0, #8]
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 729              		.loc 1 561 63 view .LVU209
 730 0012 0A09     		lsrs	r2, r1, #4
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 731              		.loc 1 561 88 view .LVU210
 732 0014 531C     		adds	r3, r2, #1
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 733              		.loc 1 561 11 view .LVU211
 734 0016 1B4A     		ldr	r2, .L63+4
 735 0018 B2FBF3F2 		udiv	r2, r2, r3
 736              	.LVL52:
 562:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 737              		.loc 1 562 3 is_stmt 1 view .LVU212
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 738              		.loc 1 565 3 view .LVU213
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 739              		.loc 1 565 50 is_stmt 0 view .LVU214
 740 001c 07F07F03 		and	r3, r7, #127
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 741              		.loc 1 565 11 view .LVU215
 742 0020 5A43     		muls	r2, r3, r2
 743              	.LVL53:
 566:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 744              		.loc 1 566 3 is_stmt 1 view .LVU216
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 745              		.loc 1 569 3 view .LVU217
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 746              		.loc 1 569 52 is_stmt 0 view .LVU218
 747 0022 700E     		lsrs	r0, r6, #25
 748              	.LVL54:
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 749              		.loc 1 569 52 view .LVU219
 750              	.LBE109:
 751              	.LBE108:
 752              	.LBB111:
 753              	.LBB112:
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 754              		.loc 4 1027 12 view .LVU220
 755 0024 2368     		ldr	r3, [r4]
 756              	.LBE112:
 757              	.LBE111:
 758              	.LBB114:
 759              	.LBB110:
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 760              		.loc 1 569 83 view .LVU221
 761 0026 0130     		adds	r0, r0, #1
 762 0028 4000     		lsls	r0, r0, #1
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 763              		.loc 1 569 11 view .LVU222
 764 002a B2FBF0F0 		udiv	r0, r2, r0
 765              	.LVL55:
 570:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 766              		.loc 1 570 3 is_stmt 1 view .LVU223
 572:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 767              		.loc 1 572 3 view .LVU224
 572:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 768              		.loc 1 572 3 is_stmt 0 view .LVU225
 769              	.LBE110:
 770              	.LBE114:
 301:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 771              		.loc 1 301 5 is_stmt 1 view .LVU226
 772              	.LBB115:
 773              	.LBI111:
1025:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 774              		.loc 4 1025 26 view .LVU227
 775              	.LBB113:
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 776              		.loc 4 1027 3 view .LVU228
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 777              		.loc 4 1027 71 is_stmt 0 view .LVU229
 778 002e 5A05     		lsls	r2, r3, #21
 779 0030 06D4     		bmi	.L53
 780              	.LBE113:
 781              	.LBE115:
 303:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       while (LL_RCC_HSI_IsReady() != 1U)
 782              		.loc 1 303 7 is_stmt 1 view .LVU230
 783              	.LBB116:
 784              	.LBI116:
1005:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 785              		.loc 4 1005 22 view .LVU231
 786              	.LBB117:
1007:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 787              		.loc 4 1007 3 view .LVU232
 788 0032 2268     		ldr	r2, [r4]
 789 0034 42F48072 		orr	r2, r2, #256
 790 0038 2260     		str	r2, [r4]
 791              	.L54:
 792              	.LBE117:
 793              	.LBE116:
 307:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 794              		.loc 1 307 7 discriminator 1 view .LVU233
 795              	.LBB118:
 796              	.LBI118:
1025:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 797              		.loc 4 1025 26 discriminator 1 view .LVU234
 798              	.LBB119:
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 799              		.loc 4 1027 3 discriminator 1 view .LVU235
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 800              		.loc 4 1027 12 is_stmt 0 discriminator 1 view .LVU236
 801 003a 2368     		ldr	r3, [r4]
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 802              		.loc 4 1027 71 discriminator 1 view .LVU237
 803 003c 5B05     		lsls	r3, r3, #21
 804 003e FCD5     		bpl	.L54
 805              	.L53:
 806              	.LBE119:
 807              	.LBE118:
 311:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                 UTILS_PLLInitStruct->PLLR);
 808              		.loc 1 311 5 is_stmt 1 view .LVU238
 809              	.LVL56:
 810              	.LBB120:
 811              	.LBI120:
2119:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 812              		.loc 4 2119 22 view .LVU239
 813              	.LBB121:
2121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLR);
 814              		.loc 4 2121 3 view .LVU240
 815 0040 E268     		ldr	r2, [r4, #12]
 816 0042 114B     		ldr	r3, .L63+8
 817 0044 1340     		ands	r3, r3, r2
 818 0046 43EA0723 		orr	r3, r3, r7, lsl #8
 819 004a 0B43     		orrs	r3, r3, r1
 820 004c 3343     		orrs	r3, r3, r6
 821 004e 43F00203 		orr	r3, r3, #2
 822 0052 E360     		str	r3, [r4, #12]
 823              	.LVL57:
2121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLR);
 824              		.loc 4 2121 3 is_stmt 0 view .LVU241
 825              	.LBE121:
 826              	.LBE120:
 315:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 827              		.loc 1 315 5 is_stmt 1 view .LVU242
 315:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 828              		.loc 1 315 7 is_stmt 0 view .LVU243
 829 0054 0D4B     		ldr	r3, .L63+12
 830 0056 9842     		cmp	r0, r3
 831 0058 0ED9     		bls	.L57
 317:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(hpre == LL_RCC_SYSCLK_DIV_1)
 832              		.loc 1 317 7 is_stmt 1 view .LVU244
 317:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(hpre == LL_RCC_SYSCLK_DIV_1)
 833              		.loc 1 317 12 is_stmt 0 view .LVU245
 834 005a 2E68     		ldr	r6, [r5]
 835              	.LVL58:
 318:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 836              		.loc 1 318 7 is_stmt 1 view .LVU246
 318:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 837              		.loc 1 318 9 is_stmt 0 view .LVU247
 838 005c 0EB9     		cbnz	r6, .L55
 320:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 839              		.loc 1 320 9 is_stmt 1 view .LVU248
 320:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 840              		.loc 1 320 44 is_stmt 0 view .LVU249
 841 005e 8023     		movs	r3, #128
 842 0060 2B60     		str	r3, [r5]
 843              	.LVL59:
 844              	.L55:
 325:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 845              		.loc 1 325 5 is_stmt 1 view .LVU250
 325:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 846              		.loc 1 325 14 is_stmt 0 view .LVU251
 847 0062 2946     		mov	r1, r5
 848 0064 FFF7FEFF 		bl	UTILS_EnablePLLAndSwitchSystem
 849              	.LVL60:
 328:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 850              		.loc 1 328 5 is_stmt 1 view .LVU252
 328:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 851              		.loc 1 328 7 is_stmt 0 view .LVU253
 852 0068 28B9     		cbnz	r0, .L52
 328:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 853              		.loc 1 328 28 discriminator 1 view .LVU254
 854 006a 26B1     		cbz	r6, .L52
 330:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
 855              		.loc 1 330 7 is_stmt 1 view .LVU255
 330:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
 856              		.loc 1 330 42 is_stmt 0 view .LVU256
 857 006c 2860     		str	r0, [r5]
 331:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 858              		.loc 1 331 7 is_stmt 1 view .LVU257
 859              	.LVL61:
 860              	.LBB122:
 861              	.LBI122:
1375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 862              		.loc 4 1375 22 view .LVU258
 863              	.LBB123:
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 864              		.loc 4 1377 3 view .LVU259
 865 006e A368     		ldr	r3, [r4, #8]
 866 0070 23F0F003 		bic	r3, r3, #240
 867 0074 A360     		str	r3, [r4, #8]
 868              	.LVL62:
 869              	.L52:
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 870              		.loc 4 1377 3 is_stmt 0 view .LVU260
 871              	.LBE123:
 872              	.LBE122:
 340:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 873              		.loc 1 340 3 is_stmt 1 view .LVU261
 341:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 874              		.loc 1 341 1 is_stmt 0 view .LVU262
 875 0076 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 876              	.LVL63:
 877              	.L57:
 292:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 878              		.loc 1 292 12 view .LVU263
 879 0078 0026     		movs	r6, #0
 880 007a F2E7     		b	.L55
 881              	.LVL64:
 882              	.L56:
 337:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 883              		.loc 1 337 12 view .LVU264
 884 007c 0120     		movs	r0, #1
 885              	.LVL65:
 337:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 886              		.loc 1 337 12 view .LVU265
 887 007e FAE7     		b	.L52
 888              	.L64:
 889              		.align	2
 890              	.L63:
 891 0080 00100240 		.word	1073876992
 892 0084 0024F400 		.word	16000000
 893 0088 0C80FFF9 		.word	-100696052
 894 008c 00B4C404 		.word	80000000
 895              		.cfi_endproc
 896              	.LFE436:
 898              		.section	.text.LL_PLL_ConfigSystemClock_HSE,"ax",%progbits
 899              		.align	1
 900              		.global	LL_PLL_ConfigSystemClock_HSE
 901              		.syntax unified
 902              		.thumb
 903              		.thumb_func
 904              		.fpu fpv4-sp-d16
 906              	LL_PLL_ConfigSystemClock_HSE:
 907              	.LVL66:
 908              	.LFB437:
 365:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 909              		.loc 1 365 1 is_stmt 1 view -0
 910              		.cfi_startproc
 911              		@ args = 0, pretend = 0, frame = 0
 912              		@ frame_needed = 0, uses_anonymous_args = 0
 366:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t pllfreq;
 913              		.loc 1 366 3 view .LVU267
 367:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   uint32_t hpre = 0U;
 914              		.loc 1 367 3 view .LVU268
 368:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 915              		.loc 1 368 3 view .LVU269
 371:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_HSE_BYPASS(HSEBypass));
 916              		.loc 1 371 3 view .LVU270
 372:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 917              		.loc 1 372 3 view .LVU271
 375:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 918              		.loc 1 375 3 view .LVU272
 919              	.LBB144:
 920              	.LBI144:
 581:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 921              		.loc 1 581 20 view .LVU273
 922              	.LBB145:
 583:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 923              		.loc 1 583 3 view .LVU274
 586:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   {
 924              		.loc 1 586 3 view .LVU275
 925              	.LBB146:
 926              	.LBI146:
2076:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 927              		.loc 4 2076 26 view .LVU276
 928              	.LBB147:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 929              		.loc 4 2078 3 view .LVU277
 930              	.LBE147:
 931              	.LBE146:
 932              	.LBE145:
 933              	.LBE144:
 365:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 934              		.loc 1 365 1 is_stmt 0 view .LVU278
 935 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 936              		.cfi_def_cfa_offset 24
 937              		.cfi_offset 3, -24
 938              		.cfi_offset 4, -20
 939              		.cfi_offset 5, -16
 940              		.cfi_offset 6, -12
 941              		.cfi_offset 7, -8
 942              		.cfi_offset 14, -4
 943              	.LBB154:
 944              	.LBB152:
 945              	.LBB150:
 946              	.LBB148:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 947              		.loc 4 2078 12 view .LVU279
 948 0002 234C     		ldr	r4, .L80
 949              	.LBE148:
 950              	.LBE150:
 951              	.LBE152:
 952              	.LBE154:
 365:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   ErrorStatus status;
 953              		.loc 1 365 1 view .LVU280
 954 0004 1D46     		mov	r5, r3
 955              	.LBB155:
 956              	.LBB153:
 957              	.LBB151:
 958              	.LBB149:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 959              		.loc 4 2078 12 view .LVU281
 960 0006 2368     		ldr	r3, [r4]
 961              	.LVL67:
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 962              		.loc 4 2078 71 view .LVU282
 963 0008 9E01     		lsls	r6, r3, #6
 964 000a 3FD4     		bmi	.L72
2078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 965              		.loc 4 2078 71 view .LVU283
 966              	.LBE149:
 967              	.LBE151:
 592:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 968              		.loc 1 592 3 is_stmt 1 view .LVU284
 969              	.LVL68:
 592:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 970              		.loc 1 592 3 is_stmt 0 view .LVU285
 971              	.LBE153:
 972              	.LBE155:
 378:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 973              		.loc 1 378 5 is_stmt 1 view .LVU286
 974              	.LBB156:
 975              	.LBI156:
 550:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** {
 976              		.loc 1 550 17 view .LVU287
 977              	.LBB157:
 552:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 978              		.loc 1 552 3 view .LVU288
 555:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLN_VALUE(UTILS_PLLInitStruct->PLLN));
 979              		.loc 1 555 3 view .LVU289
 556:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLR_VALUE(UTILS_PLLInitStruct->PLLR));
 980              		.loc 1 556 3 view .LVU290
 557:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 981              		.loc 1 557 3 view .LVU291
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 982              		.loc 1 561 3 view .LVU292
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 983              		.loc 1 561 56 is_stmt 0 view .LVU293
 984 000c 1768     		ldr	r7, [r2]
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 985              		.loc 1 565 43 view .LVU294
 986 000e D2F804C0 		ldr	ip, [r2, #4]
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 987              		.loc 1 569 45 view .LVU295
 988 0012 9668     		ldr	r6, [r2, #8]
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 989              		.loc 1 561 63 view .LVU296
 990 0014 3B09     		lsrs	r3, r7, #4
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 991              		.loc 1 561 88 view .LVU297
 992 0016 0133     		adds	r3, r3, #1
 561:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_INPUT(pllfreq));
 993              		.loc 1 561 11 view .LVU298
 994 0018 B0FBF3F0 		udiv	r0, r0, r3
 995              	.LVL69:
 562:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 996              		.loc 1 562 3 is_stmt 1 view .LVU299
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 997              		.loc 1 565 3 view .LVU300
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 998              		.loc 1 565 50 is_stmt 0 view .LVU301
 999 001c 0CF07F03 		and	r3, ip, #127
 565:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
 1000              		.loc 1 565 11 view .LVU302
 1001 0020 4343     		muls	r3, r0, r3
 1002              	.LVL70:
 566:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 1003              		.loc 1 566 3 is_stmt 1 view .LVU303
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 1004              		.loc 1 569 3 view .LVU304
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 1005              		.loc 1 569 52 is_stmt 0 view .LVU305
 1006 0022 700E     		lsrs	r0, r6, #25
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 1007              		.loc 1 569 83 view .LVU306
 1008 0024 0130     		adds	r0, r0, #1
 1009 0026 4000     		lsls	r0, r0, #1
 569:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
 1010              		.loc 1 569 11 view .LVU307
 1011 0028 B3FBF0F0 		udiv	r0, r3, r0
 1012              	.LVL71:
 570:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 1013              		.loc 1 570 3 is_stmt 1 view .LVU308
 572:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 1014              		.loc 1 572 3 view .LVU309
 572:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 1015              		.loc 1 572 3 is_stmt 0 view .LVU310
 1016              	.LBE157:
 1017              	.LBE156:
 381:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1018              		.loc 1 381 5 is_stmt 1 view .LVU311
 1019              	.LBB158:
 1020              	.LBI158:
 966:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1021              		.loc 4 966 26 view .LVU312
 1022              	.LBB159:
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1023              		.loc 4 968 3 view .LVU313
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1024              		.loc 4 968 12 is_stmt 0 view .LVU314
 1025 002c 2368     		ldr	r3, [r4]
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1026              		.loc 4 968 71 view .LVU315
 1027 002e 9A03     		lsls	r2, r3, #14
 1028              	.LVL72:
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1029              		.loc 4 968 71 view .LVU316
 1030 0030 0ED4     		bmi	.L67
 1031              	.LBE159:
 1032              	.LBE158:
 384:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 1033              		.loc 1 384 7 is_stmt 1 view .LVU317
 1034              	.LBB160:
 1035              	.LBB161:
 928:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1036              		.loc 4 928 3 is_stmt 0 view .LVU318
 1037 0032 2368     		ldr	r3, [r4]
 1038              	.LBE161:
 1039              	.LBE160:
 384:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 1040              		.loc 1 384 9 view .LVU319
 1041 0034 0129     		cmp	r1, #1
 386:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 1042              		.loc 1 386 9 is_stmt 1 view .LVU320
 1043              	.LBB163:
 1044              	.LBI160:
 926:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1045              		.loc 4 926 22 view .LVU321
 1046              	.LBB162:
 928:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1047              		.loc 4 928 3 view .LVU322
 1048 0036 0CBF     		ite	eq
 1049 0038 43F48023 		orreq	r3, r3, #262144
 1050              	.LBE162:
 1051              	.LBE163:
 390:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 1052              		.loc 1 390 9 view .LVU323
 1053              	.LBB164:
 1054              	.LBI164:
 936:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1055              		.loc 4 936 22 view .LVU324
 1056              	.LBB165:
 938:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1057              		.loc 4 938 3 view .LVU325
 1058 003c 23F48023 		bicne	r3, r3, #262144
 1059 0040 2360     		str	r3, [r4]
 1060              	.LBE165:
 1061              	.LBE164:
 394:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       while (LL_RCC_HSE_IsReady() != 1U)
 1062              		.loc 1 394 7 view .LVU326
 1063              	.LBB166:
 1064              	.LBI166:
 946:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1065              		.loc 4 946 22 view .LVU327
 1066              	.LBB167:
 948:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1067              		.loc 4 948 3 view .LVU328
 1068 0042 2368     		ldr	r3, [r4]
 1069 0044 43F48033 		orr	r3, r3, #65536
 1070 0048 2360     		str	r3, [r4]
 1071              	.L70:
 1072              	.LBE167:
 1073              	.LBE166:
 398:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 1074              		.loc 1 398 7 discriminator 1 view .LVU329
 1075              	.LBB168:
 1076              	.LBI168:
 966:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1077              		.loc 4 966 26 discriminator 1 view .LVU330
 1078              	.LBB169:
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1079              		.loc 4 968 3 discriminator 1 view .LVU331
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1080              		.loc 4 968 12 is_stmt 0 discriminator 1 view .LVU332
 1081 004a 2368     		ldr	r3, [r4]
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1082              		.loc 4 968 71 discriminator 1 view .LVU333
 1083 004c 9B03     		lsls	r3, r3, #14
 1084 004e FCD5     		bpl	.L70
 1085              	.L67:
 1086              	.LBE169:
 1087              	.LBE168:
 402:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****                                 UTILS_PLLInitStruct->PLLR);
 1088              		.loc 1 402 5 is_stmt 1 view .LVU334
 1089              	.LVL73:
 1090              	.LBB170:
 1091              	.LBI170:
2119:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1092              		.loc 4 2119 22 view .LVU335
 1093              	.LBB171:
2121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLR);
 1094              		.loc 4 2121 3 view .LVU336
 1095 0050 E368     		ldr	r3, [r4, #12]
 1096 0052 104A     		ldr	r2, .L80+4
 1097 0054 1A40     		ands	r2, r2, r3
 1098 0056 42EA0C22 		orr	r2, r2, ip, lsl #8
 1099 005a 3A43     		orrs	r2, r2, r7
 1100              	.LBE171:
 1101              	.LBE170:
 406:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1102              		.loc 1 406 7 is_stmt 0 view .LVU337
 1103 005c 0E4B     		ldr	r3, .L80+8
 1104              	.LBB174:
 1105              	.LBB172:
2121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLR);
 1106              		.loc 4 2121 3 view .LVU338
 1107 005e 3243     		orrs	r2, r2, r6
 1108 0060 42F00302 		orr	r2, r2, #3
 1109              	.LBE172:
 1110              	.LBE174:
 406:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1111              		.loc 1 406 7 view .LVU339
 1112 0064 9842     		cmp	r0, r3
 1113              	.LBB175:
 1114              	.LBB173:
2121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLR);
 1115              		.loc 4 2121 3 view .LVU340
 1116 0066 E260     		str	r2, [r4, #12]
 1117              	.LVL74:
2121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****              Source | PLLM | (PLLN << RCC_PLLCFGR_PLLN_Pos) | PLLR);
 1118              		.loc 4 2121 3 view .LVU341
 1119              	.LBE173:
 1120              	.LBE175:
 406:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1121              		.loc 1 406 5 is_stmt 1 view .LVU342
 406:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1122              		.loc 1 406 7 is_stmt 0 view .LVU343
 1123 0068 0ED9     		bls	.L73
 408:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(hpre == LL_RCC_SYSCLK_DIV_1)
 1124              		.loc 1 408 7 is_stmt 1 view .LVU344
 408:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       if(hpre == LL_RCC_SYSCLK_DIV_1)
 1125              		.loc 1 408 12 is_stmt 0 view .LVU345
 1126 006a 2E68     		ldr	r6, [r5]
 1127              	.LVL75:
 409:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 1128              		.loc 1 409 7 is_stmt 1 view .LVU346
 409:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       {
 1129              		.loc 1 409 9 is_stmt 0 view .LVU347
 1130 006c 0EB9     		cbnz	r6, .L71
 411:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 1131              		.loc 1 411 9 is_stmt 1 view .LVU348
 411:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       }
 1132              		.loc 1 411 44 is_stmt 0 view .LVU349
 1133 006e 8023     		movs	r3, #128
 1134 0070 2B60     		str	r3, [r5]
 1135              	.LVL76:
 1136              	.L71:
 416:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 1137              		.loc 1 416 5 is_stmt 1 view .LVU350
 416:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 1138              		.loc 1 416 14 is_stmt 0 view .LVU351
 1139 0072 2946     		mov	r1, r5
 1140              	.LVL77:
 416:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 1141              		.loc 1 416 14 view .LVU352
 1142 0074 FFF7FEFF 		bl	UTILS_EnablePLLAndSwitchSystem
 1143              	.LVL78:
 419:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1144              		.loc 1 419 5 is_stmt 1 view .LVU353
 419:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1145              		.loc 1 419 7 is_stmt 0 view .LVU354
 1146 0078 28B9     		cbnz	r0, .L66
 419:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     {
 1147              		.loc 1 419 28 discriminator 1 view .LVU355
 1148 007a 26B1     		cbz	r6, .L66
 421:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
 1149              		.loc 1 421 7 is_stmt 1 view .LVU356
 421:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****       LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
 1150              		.loc 1 421 42 is_stmt 0 view .LVU357
 1151 007c 2860     		str	r0, [r5]
 422:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****     }
 1152              		.loc 1 422 7 is_stmt 1 view .LVU358
 1153              	.LVL79:
 1154              	.LBB176:
 1155              	.LBI176:
1375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 1156              		.loc 4 1375 22 view .LVU359
 1157              	.LBB177:
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1158              		.loc 4 1377 3 view .LVU360
 1159 007e A368     		ldr	r3, [r4, #8]
 1160 0080 23F0F003 		bic	r3, r3, #240
 1161 0084 A360     		str	r3, [r4, #8]
 1162              	.LVL80:
 1163              	.L66:
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 1164              		.loc 4 1377 3 is_stmt 0 view .LVU361
 1165              	.LBE177:
 1166              	.LBE176:
 431:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** }
 1167              		.loc 1 431 3 is_stmt 1 view .LVU362
 432:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 1168              		.loc 1 432 1 is_stmt 0 view .LVU363
 1169 0086 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1170              	.LVL81:
 1171              	.L73:
 368:../../..\CubeG4\src/stm32g4xx_ll_utils.c **** 
 1172              		.loc 1 368 12 view .LVU364
 1173 0088 0026     		movs	r6, #0
 1174 008a F2E7     		b	.L71
 1175              	.LVL82:
 1176              	.L72:
 428:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 1177              		.loc 1 428 12 view .LVU365
 1178 008c 0120     		movs	r0, #1
 1179              	.LVL83:
 428:../../..\CubeG4\src/stm32g4xx_ll_utils.c ****   }
 1180              		.loc 1 428 12 view .LVU366
 1181 008e FAE7     		b	.L66
 1182              	.L81:
 1183              		.align	2
 1184              	.L80:
 1185 0090 00100240 		.word	1073876992
 1186 0094 0C80FFF9 		.word	-100696052
 1187 0098 00B4C404 		.word	80000000
 1188              		.cfi_endproc
 1189              	.LFE437:
 1191              		.text
 1192              	.Letext0:
 1193              		.file 6 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1194              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1195              		.file 8 "../../..\\CubeG4\\include/core_cm4.h"
 1196              		.file 9 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 1197              		.file 10 "../../..\\CubeG4\\include/stm32g431xx.h"
 1198              		.file 11 "../../..\\CubeG4\\include/stm32g4xx.h"
