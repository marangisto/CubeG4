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
  13              		.file	"stm32g4xx_ll_adc.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_ADC_CommonDeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_ADC_CommonDeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_ADC_CommonDeInit:
  27              	.LVL0:
  28              	.LFB367:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_adc.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @file    stm32g4xx_ll_adc.c
   4:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief   ADC LL module driver
   6:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #include "stm32g4xx_ll_adc.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #include "stm32g4xx_ll_bus.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  25:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #ifdef  USE_FULL_ASSERT
  26:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #include "stm32_assert.h"
  27:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #else
  28:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define assert_param(expr) ((void)0U)
  29:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif
  30:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  31:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @{
  33:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
  34:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined (ADC1) || defined (ADC2) || defined (ADC3) || defined (ADC4) || defined (ADC5)
  36:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  37:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /** @addtogroup ADC_LL ADC
  38:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @{
  39:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
  40:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  41:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /** @addtogroup ADC_LL_Private_Constants
  45:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @{
  46:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
  47:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  48:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Definitions of ADC hardware constraints delays */
  49:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Note: Only ADC peripheral HW delays are defined in ADC LL driver driver,   */
  50:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       not timeout values:                                                  */
  51:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       Timeout values for ADC operations are dependent to device clock      */
  52:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       configuration (system clock versus ADC clock),                       */
  53:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       and therefore must be defined in user application.                   */
  54:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       Refer to @ref ADC_LL_EC_HW_DELAYS for description of ADC timeout     */
  55:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       values definition.                                                   */
  56:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Note: ADC timeout values are defined here in CPU cycles to be independent  */
  57:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       of device clock setting.                                             */
  58:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       In user application, ADC timeout values should be defined with       */
  59:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       temporal values, in function of device clock settings.               */
  60:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*       Highest ratio CPU clock frequency vs ADC clock frequency:            */
  61:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*        - ADC clock from synchronous clock with AHB prescaler 512,          */
  62:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*          ADC prescaler 4.                                                  */
  63:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*           Ratio max = 512 *4 = 2048                                        */
  64:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*        - ADC clock from asynchronous clock (PLLP) with prescaler 256.      */
  65:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*          Highest CPU clock PLL (PLLR).                                     */
  66:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*           Ratio max = PLLRmax /PPLPmin * 256 = (VCO/2) / (VCO/31) * 256    */
  67:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /*                     = 3968                                                 */
  68:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Unit: CPU cycles.                                                          */
  69:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define ADC_CLOCK_RATIO_VS_CPU_HIGHEST          (3968UL)
  70:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define ADC_TIMEOUT_DISABLE_CPU_CYCLES          (ADC_CLOCK_RATIO_VS_CPU_HIGHEST * 1UL)
  71:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define ADC_TIMEOUT_STOP_CONVERSION_CPU_CYCLES  (ADC_CLOCK_RATIO_VS_CPU_HIGHEST * 1UL)
  72:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  73:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
  74:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @}
  75:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
  76:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  77:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Private macros ------------------------------------------------------------*/
  78:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  79:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /** @addtogroup ADC_LL_Private_Macros
  80:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @{
  81:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
  82:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
  83:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Check of parameters for configuration of ADC hierarchical scope:           */
  84:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* common to several ADC instances.                                           */
  85:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_COMMON_CLOCK(__CLOCK__)                                      \
  86:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__CLOCK__) == LL_ADC_CLOCK_SYNC_PCLK_DIV1)                             \
  87:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_SYNC_PCLK_DIV2)                             \
  88:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_SYNC_PCLK_DIV4)                             \
  89:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV1)                                 \
  90:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV2)                                 \
  91:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV4)                                 \
  92:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV6)                                 \
  93:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV8)                                 \
  94:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV10)                                \
  95:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV12)                                \
  96:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV16)                                \
  97:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV32)                                \
  98:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV64)                                \
  99:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV128)                               \
 100:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV256)                               \
 101:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 102:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 103:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Check of parameters for configuration of ADC hierarchical scope:           */
 104:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* ADC instance.                                                              */
 105:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_RESOLUTION(__RESOLUTION__)                                   \
 106:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__RESOLUTION__) == LL_ADC_RESOLUTION_12B)                              \
 107:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__RESOLUTION__) == LL_ADC_RESOLUTION_10B)                              \
 108:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__RESOLUTION__) == LL_ADC_RESOLUTION_8B)                               \
 109:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__RESOLUTION__) == LL_ADC_RESOLUTION_6B)                               \
 110:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 111:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 112:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_DATA_ALIGN(__DATA_ALIGN__)                                   \
 113:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__DATA_ALIGN__) == LL_ADC_DATA_ALIGN_RIGHT)                            \
 114:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__DATA_ALIGN__) == LL_ADC_DATA_ALIGN_LEFT)                             \
 115:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 116:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 117:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_LOW_POWER(__LOW_POWER__)                                     \
 118:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__LOW_POWER__) == LL_ADC_LP_MODE_NONE)                                 \
 119:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT)                                  \
 120:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 121:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 122:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Check of parameters for configuration of ADC hierarchical scope:           */
 123:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* ADC group regular                                                          */
 124:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(STM32G474xx) || defined(STM32G484xx)
 125:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_TRIG_SOURCE(__ADC_INSTANCE__, __REG_TRIG_SOURCE__)       \
 126:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_SOFTWARE)                      \
 127:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO)                 \
 128:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO2)                \
 129:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH3)                  \
 130:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_TRGO)                 \
 131:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_TRGO)                 \
 132:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_TRGO)                 \
 133:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM6_TRGO)                 \
 134:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM7_TRGO)                 \
 135:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO)                 \
 136:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO2)                \
 137:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM15_TRGO)                \
 138:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_TRGO)                \
 139:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_TRGO2)               \
 140:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_CH1)                 \
 141:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG1)                \
 142:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG3)                \
 143:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG5)                \
 144:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG6)                \
 145:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG7)                \
 146:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG8)                \
 147:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG9)                \
 148:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG10)               \
 149:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_LPTIM_OUT)                 \
 150:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC1) || ((__ADC_INSTANCE__) == ADC2))          \
 151:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 152:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH1)            \
 153:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH2)            \
 154:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH2)            \
 155:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH4)            \
 156:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH4)            \
 157:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_CH2)           \
 158:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_CH3)           \
 159:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE11)         \
 160:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 161:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 162:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC3) || ((__ADC_INSTANCE__) == ADC4) || ((__ADC_INSTANCE__) == ADC5
 163:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 164:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH1)            \
 165:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH3)            \
 166:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH1)            \
 167:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH1)            \
 168:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_CH1)            \
 169:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE2)          \
 170:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG2)          \
 171:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_HRTIM_TRG4)          \
 172:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 173:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 174:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 175:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #elif defined(STM32G473xx) || defined(STM32G483xx)
 176:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_TRIG_SOURCE(__ADC_INSTANCE__, __REG_TRIG_SOURCE__)       \
 177:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_SOFTWARE)                      \
 178:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO)                 \
 179:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO2)                \
 180:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH3)                  \
 181:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_TRGO)                 \
 182:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH2)                  \
 183:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_TRGO)                 \
 184:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_TRGO)                 \
 185:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM6_TRGO)                 \
 186:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM7_TRGO)                 \
 187:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO)                 \
 188:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO2)                \
 189:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM15_TRGO)                \
 190:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_TRGO)                \
 191:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_TRGO2)               \
 192:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_CH1)                 \
 193:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_LPTIM_OUT)                 \
 194:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC1) || ((__ADC_INSTANCE__) == ADC2))          \
 195:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 196:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH1)            \
 197:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH2)            \
 198:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH2)            \
 199:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH4)            \
 200:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH4)            \
 201:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_CH2)           \
 202:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM20_CH3)           \
 203:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE11)         \
 204:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 205:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 206:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC3) || ((__ADC_INSTANCE__) == ADC4) || ((__ADC_INSTANCE__) == ADC5
 207:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 208:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH1)            \
 209:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH3)            \
 210:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH1)            \
 211:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH1)            \
 212:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_CH1)            \
 213:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE2)          \
 214:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 215:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 216:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 217:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #elif defined(STM32G471xx)
 218:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_TRIG_SOURCE(__ADC_INSTANCE__, __REG_TRIG_SOURCE__)       \
 219:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_SOFTWARE)                      \
 220:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO)                 \
 221:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO2)                \
 222:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH3)                  \
 223:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_TRGO)                 \
 224:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH2)                  \
 225:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_TRGO)                 \
 226:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_TRGO)                 \
 227:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM6_TRGO)                 \
 228:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM7_TRGO)                 \
 229:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO)                 \
 230:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO2)                \
 231:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM15_TRGO)                \
 232:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_LPTIM_OUT)                 \
 233:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC1) || ((__ADC_INSTANCE__) == ADC2))          \
 234:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 235:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH1)            \
 236:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH2)            \
 237:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH2)            \
 238:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH4)            \
 239:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH4)            \
 240:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE11)         \
 241:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 242:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 243:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || (((__ADC_INSTANCE__) == ADC3) \
 244:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 245:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH1)            \
 246:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH3)            \
 247:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH1)            \
 248:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH1)            \
 249:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_CH1)            \
 250:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE2)          \
 251:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 252:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 253:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 254:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #elif defined(STM32GBK1CB) || defined(STM32G431xx) || defined(STM32G441xx)
 255:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_TRIG_SOURCE(__ADC_INSTANCE__, __REG_TRIG_SOURCE__)       \
 256:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_SOFTWARE)                      \
 257:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO)                 \
 258:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_TRGO2)                \
 259:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH1)                  \
 260:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH2)                  \
 261:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM1_CH3)                  \
 262:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_TRGO)                 \
 263:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH2)                  \
 264:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_TRGO)                 \
 265:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH4)                  \
 266:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_TRGO)                 \
 267:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH4)                  \
 268:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM6_TRGO)                 \
 269:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM7_TRGO)                 \
 270:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO)                 \
 271:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM8_TRGO2)                \
 272:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM15_TRGO)                \
 273:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_LPTIM_OUT)                 \
 274:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE11)               \
 275:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 276:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif
 277:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 278:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_CONTINUOUS_MODE(__REG_CONTINUOUS_MODE__)                 \
 279:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_CONTINUOUS_MODE__) == LL_ADC_REG_CONV_SINGLE)                    \
 280:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_CONTINUOUS_MODE__) == LL_ADC_REG_CONV_CONTINUOUS)                \
 281:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 282:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 283:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_DMA_TRANSFER(__REG_DMA_TRANSFER__)                       \
 284:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_DMA_TRANSFER__) == LL_ADC_REG_DMA_TRANSFER_NONE)                 \
 285:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_DMA_TRANSFER__) == LL_ADC_REG_DMA_TRANSFER_LIMITED)              \
 286:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_DMA_TRANSFER__) == LL_ADC_REG_DMA_TRANSFER_UNLIMITED)            \
 287:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 288:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 289:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_OVR_DATA_BEHAVIOR(__REG_OVR_DATA_BEHAVIOR__)             \
 290:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_OVR_DATA_BEHAVIOR__) == LL_ADC_REG_OVR_DATA_PRESERVED)           \
 291:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_OVR_DATA_BEHAVIOR__) == LL_ADC_REG_OVR_DATA_OVERWRITTEN)         \
 292:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 293:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 294:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_SEQ_SCAN_LENGTH(__REG_SEQ_SCAN_LENGTH__)                 \
 295:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_DISABLE)               \
 296:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_2RANKS)         \
 297:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_3RANKS)         \
 298:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_4RANKS)         \
 299:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_5RANKS)         \
 300:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_6RANKS)         \
 301:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_7RANKS)         \
 302:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_8RANKS)         \
 303:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_9RANKS)         \
 304:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_10RANKS)        \
 305:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_11RANKS)        \
 306:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_12RANKS)        \
 307:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_13RANKS)        \
 308:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_14RANKS)        \
 309:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_15RANKS)        \
 310:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_16RANKS)        \
 311:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 312:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 313:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_REG_SEQ_SCAN_DISCONT_MODE(__REG_SEQ_DISCONT_MODE__)          \
 314:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_DISABLE)           \
 315:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_1RANK)             \
 316:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_2RANKS)            \
 317:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_3RANKS)            \
 318:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_4RANKS)            \
 319:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_5RANKS)            \
 320:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_6RANKS)            \
 321:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_7RANKS)            \
 322:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_8RANKS)            \
 323:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 324:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 325:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Check of parameters for configuration of ADC hierarchical scope:           */
 326:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* ADC group injected                                                         */
 327:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(STM32G474xx) || defined(STM32G484xx)
 328:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_TRIG_SOURCE(__ADC_INSTANCE__, __INJ_TRIG_SOURCE__)       \
 329:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_SOFTWARE)                      \
 330:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO)                 \
 331:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2)                \
 332:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_CH4)                  \
 333:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_TRGO)                 \
 334:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_TRGO)                 \
 335:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_TRGO)                 \
 336:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM6_TRGO)                 \
 337:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM7_TRGO)                 \
 338:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO)                 \
 339:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2)                \
 340:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_CH4)                  \
 341:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM15_TRGO)                \
 342:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_TRGO)                \
 343:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_TRGO2)               \
 344:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG2)                \
 345:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG4)                \
 346:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG5)                \
 347:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG6)                \
 348:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG7)                \
 349:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG8)                \
 350:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG9)                \
 351:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG10)               \
 352:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_LPTIM_OUT)                 \
 353:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC1) || ((__ADC_INSTANCE__) == ADC2))          \
 354:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 355:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_CH1)            \
 356:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH1)            \
 357:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH3)            \
 358:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH4)            \
 359:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM16_CH1)           \
 360:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_CH4)           \
 361:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE15)         \
 362:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 363:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 364:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC3) || ((__ADC_INSTANCE__) == ADC4) || ((__ADC_INSTANCE__) == ADC5
 365:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 366:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_CH3)            \
 367:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH3)            \
 368:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH4)            \
 369:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_CH2)            \
 370:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_CH2)           \
 371:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG1)          \
 372:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_HRTIM_TRG3)          \
 373:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE3)          \
 374:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 375:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 376:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 377:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #elif defined(STM32G473xx) || defined(STM32G483xx)
 378:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_TRIG_SOURCE(__ADC_INSTANCE__, __INJ_TRIG_SOURCE__)       \
 379:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_SOFTWARE)                      \
 380:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO)                 \
 381:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2)                \
 382:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_CH4)                  \
 383:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_TRGO)                 \
 384:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_TRGO)                 \
 385:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_TRGO)                 \
 386:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM6_TRGO)                 \
 387:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM7_TRGO)                 \
 388:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO)                 \
 389:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2)                \
 390:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_CH4)                  \
 391:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM15_TRGO)                \
 392:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_TRGO)                \
 393:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_TRGO2)               \
 394:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_LPTIM_OUT)                 \
 395:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC1) || ((__ADC_INSTANCE__) == ADC2))          \
 396:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 397:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_CH1)            \
 398:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH1)            \
 399:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH3)            \
 400:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH4)            \
 401:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM16_CH1)           \
 402:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_CH4)           \
 403:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE15)         \
 404:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 405:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 406:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC3) || ((__ADC_INSTANCE__) == ADC4) || ((__ADC_INSTANCE__) == ADC5
 407:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 408:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_CH3)            \
 409:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH3)            \
 410:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH4)            \
 411:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_CH2)            \
 412:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM20_CH2)           \
 413:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE3)          \
 414:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 415:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 416:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 417:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #elif defined(STM32G471xx)
 418:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_TRIG_SOURCE(__ADC_INSTANCE__, __INJ_TRIG_SOURCE__)       \
 419:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_SOFTWARE)                      \
 420:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO)                 \
 421:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2)                \
 422:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_CH4)                  \
 423:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_TRGO)                 \
 424:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_TRGO)                 \
 425:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_TRGO)                 \
 426:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM6_TRGO)                 \
 427:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM7_TRGO)                 \
 428:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO)                 \
 429:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2)                \
 430:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_CH4)                  \
 431:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM15_TRGO)                \
 432:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_LPTIM_OUT)                 \
 433:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC1) || ((__ADC_INSTANCE__) == ADC2))          \
 434:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 435:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_CH1)            \
 436:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH1)            \
 437:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH3)            \
 438:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH4)            \
 439:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM16_CH1)           \
 440:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE15)         \
 441:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 442:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 443:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((((__ADC_INSTANCE__) == ADC3)) \
 444:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****        && (                                                                    \
 445:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_CH3)            \
 446:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH3)            \
 447:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH4)            \
 448:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_CH2)            \
 449:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****          || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE3)          \
 450:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****           )                                                                    \
 451:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       )                                                                        \
 452:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 453:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #elif defined(STM32GBK1CB) || defined(STM32G431xx) || defined(STM32G441xx)
 454:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_TRIG_SOURCE(__ADC_INSTANCE__, __INJ_TRIG_SOURCE__)       \
 455:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_SOFTWARE)                      \
 456:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO)                 \
 457:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2)                \
 458:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM1_CH4)                  \
 459:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_TRGO)                 \
 460:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_CH1)                  \
 461:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_TRGO)                 \
 462:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH1)                  \
 463:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH3)                  \
 464:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH4)                  \
 465:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_TRGO)                 \
 466:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM6_TRGO)                 \
 467:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM7_TRGO)                 \
 468:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO)                 \
 469:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2)                \
 470:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM8_CH4)                  \
 471:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM15_TRGO)                \
 472:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM16_CH1)                 \
 473:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_LPTIM_OUT)                 \
 474:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE15)               \
 475:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 476:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif
 477:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 478:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_TRIG_EXT_EDGE(__INJ_TRIG_EXT_EDGE__)                     \
 479:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_TRIG_EXT_EDGE__) == LL_ADC_INJ_TRIG_EXT_RISING)                  \
 480:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_EXT_EDGE__) == LL_ADC_INJ_TRIG_EXT_FALLING)                 \
 481:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_EXT_EDGE__) == LL_ADC_INJ_TRIG_EXT_RISINGFALLING)           \
 482:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 483:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 484:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_TRIG_AUTO(__INJ_TRIG_AUTO__)                             \
 485:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_TRIG_AUTO__) == LL_ADC_INJ_TRIG_INDEPENDENT)                     \
 486:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_TRIG_AUTO__) == LL_ADC_INJ_TRIG_FROM_GRP_REGULAR)                \
 487:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 488:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 489:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_SEQ_SCAN_LENGTH(__INJ_SEQ_SCAN_LENGTH__)                 \
 490:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_DISABLE)               \
 491:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_ENABLE_2RANKS)         \
 492:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_ENABLE_3RANKS)         \
 493:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_ENABLE_4RANKS)         \
 494:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 495:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 496:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_INJ_SEQ_SCAN_DISCONT_MODE(__INJ_SEQ_DISCONT_MODE__)          \
 497:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__INJ_SEQ_DISCONT_MODE__) == LL_ADC_INJ_SEQ_DISCONT_DISABLE)           \
 498:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__INJ_SEQ_DISCONT_MODE__) == LL_ADC_INJ_SEQ_DISCONT_1RANK)             \
 499:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 500:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 501:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(ADC_MULTIMODE_SUPPORT)
 502:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Check of parameters for configuration of ADC hierarchical scope:           */
 503:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* multimode.                                                                 */
 504:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_MULTI_MODE(__MULTI_MODE__)                                   \
 505:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__MULTI_MODE__) == LL_ADC_MULTI_INDEPENDENT)                           \
 506:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MODE__) == LL_ADC_MULTI_DUAL_REG_SIMULT)                       \
 507:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MODE__) == LL_ADC_MULTI_DUAL_REG_INTERL)                       \
 508:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MODE__) == LL_ADC_MULTI_DUAL_INJ_SIMULT)                       \
 509:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MODE__) == LL_ADC_MULTI_DUAL_INJ_ALTERN)                       \
 510:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MODE__) == LL_ADC_MULTI_DUAL_REG_SIM_INJ_SIM)                  \
 511:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MODE__) == LL_ADC_MULTI_DUAL_REG_SIM_INJ_ALT)                  \
 512:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MODE__) == LL_ADC_MULTI_DUAL_REG_INT_INJ_SIM)                  \
 513:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 514:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 515:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_MULTI_DMA_TRANSFER(__MULTI_DMA_TRANSFER__)                   \
 516:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__MULTI_DMA_TRANSFER__) == LL_ADC_MULTI_REG_DMA_EACH_ADC)              \
 517:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_DMA_TRANSFER__) == LL_ADC_MULTI_REG_DMA_LIMIT_RES12_10B)       \
 518:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_DMA_TRANSFER__) == LL_ADC_MULTI_REG_DMA_LIMIT_RES8_6B)         \
 519:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_DMA_TRANSFER__) == LL_ADC_MULTI_REG_DMA_UNLMT_RES12_10B)       \
 520:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_DMA_TRANSFER__) == LL_ADC_MULTI_REG_DMA_UNLMT_RES8_6B)         \
 521:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 522:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 523:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_MULTI_TWOSMP_DELAY(__MULTI_TWOSMP_DELAY__)                   \
 524:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_1CYCLE)           \
 525:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_2CYCLES)          \
 526:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_3CYCLES)          \
 527:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_4CYCLES)          \
 528:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_5CYCLES)          \
 529:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_6CYCLES)          \
 530:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_7CYCLES)          \
 531:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_8CYCLES)          \
 532:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_9CYCLES)          \
 533:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_10CYCLES)         \
 534:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_11CYCLES)         \
 535:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_TWOSMP_DELAY__) == LL_ADC_MULTI_TWOSMP_DELAY_12CYCLES)         \
 536:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 537:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 538:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #define IS_LL_ADC_MULTI_MASTER_SLAVE(__MULTI_MASTER_SLAVE__)                   \
 539:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   (   ((__MULTI_MASTER_SLAVE__) == LL_ADC_MULTI_MASTER)                        \
 540:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MASTER_SLAVE__) == LL_ADC_MULTI_SLAVE)                         \
 541:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****    || ((__MULTI_MASTER_SLAVE__) == LL_ADC_MULTI_MASTER_SLAVE)                  \
 542:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   )
 543:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 544:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif /* ADC_MULTIMODE_SUPPORT */
 545:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
 546:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @}
 547:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
 548:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 549:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 550:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Private function prototypes -----------------------------------------------*/
 551:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 552:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /* Exported functions --------------------------------------------------------*/
 553:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /** @addtogroup ADC_LL_Exported_Functions
 554:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @{
 555:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
 556:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 557:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /** @addtogroup ADC_LL_EF_Init
 558:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @{
 559:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
 560:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 561:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
 562:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  De-initialize registers of all ADC instances belonging to
 563:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         the same ADC common instance to their default reset values.
 564:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   This function is performing a hard reset, using high level
 565:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         clock source RCC ADC reset.
 566:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Caution: On this STM32 serie, if several ADC instances are available
 567:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         on the selected device, RCC ADC reset will reset
 568:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         all ADC instances belonging to the common ADC instance.
 569:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         To de-initialize only 1 ADC instance, use
 570:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         function @ref LL_ADC_DeInit().
 571:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADCxy_COMMON ADC common instance
 572:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
 573:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval An ErrorStatus enumeration value:
 574:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - SUCCESS: ADC common registers are de-initialized
 575:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - ERROR: not applicable
 576:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
 577:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** ErrorStatus LL_ADC_CommonDeInit(ADC_Common_TypeDef *ADCxy_COMMON)
 578:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
  30              		.loc 1 578 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 579:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Check the parameters */
 580:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_ADC_COMMON_INSTANCE(ADCxy_COMMON));
  35              		.loc 1 580 3 view .LVU1
 581:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 582:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (ADCxy_COMMON == ADC12_COMMON)
  36              		.loc 1 582 3 view .LVU2
  37              		.loc 1 582 6 is_stmt 0 view .LVU3
  38 0000 064B     		ldr	r3, .L3
  39 0002 9842     		cmp	r0, r3
  40 0004 08D1     		bne	.L2
 583:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 584:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Force reset of ADC clock (core clock) */
 585:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_ADC12);
  41              		.loc 1 585 5 is_stmt 1 view .LVU4
  42              	.LBB14:
  43              	.LBI14:
  44              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
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
  45              		.loc 2 583 22 view .LVU5
  46              	.LVL1:
  47              	.LBB15:
 584:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 585:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB2RSTR, Periphs);
  48              		.loc 2 585 3 view .LVU6
  49 0006 064B     		ldr	r3, .L3+4
  50 0008 DA6A     		ldr	r2, [r3, #44]
  51 000a 42F40052 		orr	r2, r2, #8192
  52 000e DA62     		str	r2, [r3, #44]
  53              	.LVL2:
  54              		.loc 2 585 3 is_stmt 0 view .LVU7
  55              	.LBE15:
  56              	.LBE14:
 586:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 587:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Release reset of ADC clock (core clock) */
 588:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_ADC12);
  57              		.loc 1 588 5 is_stmt 1 view .LVU8
  58              	.LBB16:
  59              	.LBI16:
 586:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
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
  60              		.loc 2 625 22 view .LVU9
  61              	.LBB17:
 626:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 627:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB2RSTR, Periphs);
  62              		.loc 2 627 3 view .LVU10
  63 0010 DA6A     		ldr	r2, [r3, #44]
  64 0012 22F40052 		bic	r2, r2, #8192
  65 0016 DA62     		str	r2, [r3, #44]
  66              	.LVL3:
  67              	.L2:
  68              		.loc 2 627 3 is_stmt 0 view .LVU11
  69              	.LBE17:
  70              	.LBE16:
 589:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 590:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(ADC345_COMMON)
 591:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   else
 592:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 593:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Force reset of ADC clock (core clock) */
 594:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_ADC345);
 595:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 596:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Release reset of ADC clock (core clock) */
 597:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_ADC345);
 598:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 599:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif
 600:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 601:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   return SUCCESS;
  71              		.loc 1 601 3 is_stmt 1 view .LVU12
 602:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
  72              		.loc 1 602 1 is_stmt 0 view .LVU13
  73 0018 0020     		movs	r0, #0
  74              	.LVL4:
  75              		.loc 1 602 1 view .LVU14
  76 001a 7047     		bx	lr
  77              	.L4:
  78              		.align	2
  79              	.L3:
  80 001c 00030050 		.word	1342178048
  81 0020 00100240 		.word	1073876992
  82              		.cfi_endproc
  83              	.LFE367:
  85              		.section	.text.LL_ADC_CommonInit,"ax",%progbits
  86              		.align	1
  87              		.global	LL_ADC_CommonInit
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  93              	LL_ADC_CommonInit:
  94              	.LVL5:
  95              	.LFB368:
 603:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 604:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
 605:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Initialize some features of ADC common parameters
 606:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (all ADC instances belonging to the same ADC common instance)
 607:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         and multimode (for devices with several ADC instances available).
 608:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   The setting of ADC common parameters is conditioned to
 609:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         ADC instances state:
 610:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         All ADC instances belonging to the same ADC common instance
 611:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         must be disabled.
 612:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADCxy_COMMON ADC common instance
 613:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
 614:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_CommonInitStruct Pointer to a @ref LL_ADC_CommonInitTypeDef structure
 615:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval An ErrorStatus enumeration value:
 616:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - SUCCESS: ADC common registers are initialized
 617:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - ERROR: ADC common registers are not initialized
 618:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
 619:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** ErrorStatus LL_ADC_CommonInit(ADC_Common_TypeDef *ADCxy_COMMON, LL_ADC_CommonInitTypeDef *ADC_Commo
 620:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
  96              		.loc 1 620 1 is_stmt 1 view -0
  97              		.cfi_startproc
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 621:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 100              		.loc 1 621 3 view .LVU16
 622:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 623:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Check the parameters */
 624:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_ADC_COMMON_INSTANCE(ADCxy_COMMON));
 101              		.loc 1 624 3 view .LVU17
 625:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_COMMON_CLOCK(ADC_CommonInitStruct->CommonClock));
 102              		.loc 1 625 3 view .LVU18
 626:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 627:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(ADC_MULTIMODE_SUPPORT)
 628:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_MULTI_MODE(ADC_CommonInitStruct->Multimode));
 103              		.loc 1 628 3 view .LVU19
 629:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (ADC_CommonInitStruct->Multimode != LL_ADC_MULTI_INDEPENDENT)
 104              		.loc 1 629 3 view .LVU20
 630:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 631:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     assert_param(IS_LL_ADC_MULTI_DMA_TRANSFER(ADC_CommonInitStruct->MultiDMATransfer));
 105              		.loc 1 631 5 view .LVU21
 632:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     assert_param(IS_LL_ADC_MULTI_TWOSMP_DELAY(ADC_CommonInitStruct->MultiTwoSamplingDelay));
 106              		.loc 1 632 5 view .LVU22
 633:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 634:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif /* ADC_MULTIMODE_SUPPORT */
 635:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 636:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Note: Hardware constraint (refer to description of functions             */
 637:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       "LL_ADC_SetCommonXXX()" and "LL_ADC_SetMultiXXX()"):               */
 638:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       On this STM32 serie, setting of these features is conditioned to   */
 639:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       ADC state:                                                         */
 640:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       All ADC instances of the ADC common group must be disabled.        */
 641:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (__LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE(ADCxy_COMMON) == 0UL)
 107              		.loc 1 641 3 view .LVU23
 108              	.LBB22:
 109              	.LBI22:
 110              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_adc.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @file    stm32g4xx_ll_adc.h
   4:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief   Header file of ADC LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #ifndef STM32G4xx_LL_ADC_H
  22:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define STM32G4xx_LL_ADC_H
  23:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined (ADC1) || defined (ADC2) || defined (ADC3) || defined (ADC4) || defined (ADC5)
  36:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL ADC
  38:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  44:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Private constants ---------------------------------------------------------*/
  45:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_Private_Constants ADC Private Constants
  46:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
  47:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
  48:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  49:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC group regular sequencer:                             */
  50:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* To select into literal LL_ADC_REG_RANK_x the relevant bits for:            */
  51:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - sequencer register offset                                                */
  52:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - sequencer rank bits position into the selected register                  */
  53:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  54:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal register offset for ADC group regular sequencer configuration */
  55:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* (offset placed into a spare area of literal definition) */
  56:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SQR1_REGOFFSET                 (0x00000000UL)
  57:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SQR2_REGOFFSET                 (0x00000100UL)
  58:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SQR3_REGOFFSET                 (0x00000200UL)
  59:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SQR4_REGOFFSET                 (0x00000300UL)
  60:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  61:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_SQRX_REGOFFSET_MASK        (ADC_SQR1_REGOFFSET | ADC_SQR2_REGOFFSET | ADC_SQR3_REGO
  62:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SQRX_REGOFFSET_POS             (8UL) /* Position of bits ADC_SQRx_REGOFFSET in ADC_REG_
  63:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_ID_SQRX_MASK          (ADC_CHANNEL_ID_NUMBER_MASK_POSBIT0)
  64:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  65:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Definition of ADC group regular sequencer bits information to be inserted  */
  66:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* into ADC group regular sequencer ranks literals definition.                */
  67:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_1_SQRX_BITOFFSET_POS  (ADC_SQR1_SQ1_Pos)
  68:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_2_SQRX_BITOFFSET_POS  (ADC_SQR1_SQ2_Pos)
  69:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_3_SQRX_BITOFFSET_POS  (ADC_SQR1_SQ3_Pos)
  70:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_4_SQRX_BITOFFSET_POS  (ADC_SQR1_SQ4_Pos)
  71:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_5_SQRX_BITOFFSET_POS  (ADC_SQR2_SQ5_Pos)
  72:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_6_SQRX_BITOFFSET_POS  (ADC_SQR2_SQ6_Pos)
  73:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_7_SQRX_BITOFFSET_POS  (ADC_SQR2_SQ7_Pos)
  74:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_8_SQRX_BITOFFSET_POS  (ADC_SQR2_SQ8_Pos)
  75:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_9_SQRX_BITOFFSET_POS  (ADC_SQR2_SQ9_Pos)
  76:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_10_SQRX_BITOFFSET_POS (ADC_SQR3_SQ10_Pos)
  77:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_11_SQRX_BITOFFSET_POS (ADC_SQR3_SQ11_Pos)
  78:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_12_SQRX_BITOFFSET_POS (ADC_SQR3_SQ12_Pos)
  79:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_13_SQRX_BITOFFSET_POS (ADC_SQR3_SQ13_Pos)
  80:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_14_SQRX_BITOFFSET_POS (ADC_SQR3_SQ14_Pos)
  81:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_15_SQRX_BITOFFSET_POS (ADC_SQR4_SQ15_Pos)
  82:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_RANK_16_SQRX_BITOFFSET_POS (ADC_SQR4_SQ16_Pos)
  83:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  84:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  85:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  86:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC group injected sequencer:                            */
  87:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* To select into literal LL_ADC_INJ_RANK_x the relevant bits for:            */
  88:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - data register offset                                                     */
  89:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - sequencer rank bits position into the selected register                  */
  90:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  91:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal register offset for ADC group injected data register */
  92:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* (offset placed into a spare area of literal definition) */
  93:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_JDR1_REGOFFSET                 (0x00000000UL)
  94:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_JDR2_REGOFFSET                 (0x00000100UL)
  95:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_JDR3_REGOFFSET                 (0x00000200UL)
  96:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_JDR4_REGOFFSET                 (0x00000300UL)
  97:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
  98:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_JDRX_REGOFFSET_MASK        (ADC_JDR1_REGOFFSET | ADC_JDR2_REGOFFSET | ADC_JDR3_REGO
  99:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_RANK_ID_JSQR_MASK          (ADC_CHANNEL_ID_NUMBER_MASK_POSBIT0)
 100:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_JDRX_REGOFFSET_POS             (8UL) /* Position of bits ADC_JDRx_REGOFFSET in ADC_INJ_
 101:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 102:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Definition of ADC group injected sequencer bits information to be inserted */
 103:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* into ADC group injected sequencer ranks literals definition.               */
 104:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_RANK_1_JSQR_BITOFFSET_POS  (ADC_JSQR_JSQ1_Pos)
 105:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_RANK_2_JSQR_BITOFFSET_POS  (ADC_JSQR_JSQ2_Pos)
 106:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_RANK_3_JSQR_BITOFFSET_POS  (ADC_JSQR_JSQ3_Pos)
 107:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_RANK_4_JSQR_BITOFFSET_POS  (ADC_JSQR_JSQ4_Pos)
 108:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 110:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 111:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC group regular trigger:                               */
 112:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* To select into literal LL_ADC_REG_TRIG_x the relevant bits for:            */
 113:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - regular trigger source                                                   */
 114:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - regular trigger edge                                                     */
 115:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_TRIG_EXT_EDGE_DEFAULT       (ADC_CFGR_EXTEN_0) /* Trigger edge set to rising edge (
 116:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 117:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Mask containing trigger source masks for each of possible                  */
 118:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* trigger edge selection duplicated with shifts [0; 4; 8; 12]                */
 119:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* corresponding to {SW start; ext trigger; ext trigger; ext trigger}.        */
 120:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_TRIG_SOURCE_MASK            (((LL_ADC_REG_TRIG_SOFTWARE & ADC_CFGR_EXTSEL) << (4U *
 121:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_CFGR_EXTSEL)                            << (4U *
 122:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_CFGR_EXTSEL)                            << (4U *
 123:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_CFGR_EXTSEL)                            << (4U *
 124:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 125:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Mask containing trigger edge masks for each of possible                    */
 126:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* trigger edge selection duplicated with shifts [0; 4; 8; 12]                */
 127:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* corresponding to {SW start; ext trigger; ext trigger; ext trigger}.        */
 128:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_TRIG_EDGE_MASK              (((LL_ADC_REG_TRIG_SOFTWARE & ADC_CFGR_EXTEN) << (4U * 
 129:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_REG_TRIG_EXT_EDGE_DEFAULT)             << (4U * 
 130:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_REG_TRIG_EXT_EDGE_DEFAULT)             << (4U * 
 131:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_REG_TRIG_EXT_EDGE_DEFAULT)             << (4U * 
 132:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 133:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Definition of ADC group regular trigger bits information.                  */
 134:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_TRIG_EXTSEL_BITOFFSET_POS  (ADC_CFGR_EXTSEL_Pos)
 135:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_REG_TRIG_EXTEN_BITOFFSET_POS   (ADC_CFGR_EXTEN_Pos)
 136:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 137:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 138:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 139:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC group injected trigger:                              */
 140:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* To select into literal LL_ADC_INJ_TRIG_x the relevant bits for:            */
 141:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - injected trigger source                                                  */
 142:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - injected trigger edge                                                    */
 143:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_TRIG_EXT_EDGE_DEFAULT      (ADC_JSQR_JEXTEN_0) /* Trigger edge set to rising edge (
 144:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 145:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Mask containing trigger source masks for each of possible                  */
 146:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* trigger edge selection duplicated with shifts [0; 4; 8; 12]                */
 147:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* corresponding to {SW start; ext trigger; ext trigger; ext trigger}.        */
 148:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_TRIG_SOURCE_MASK            (((LL_ADC_INJ_TRIG_SOFTWARE & ADC_JSQR_JEXTSEL)  << (4U
 149:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_JSQR_JEXTSEL)                             << (4U
 150:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_JSQR_JEXTSEL)                             << (4U
 151:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_JSQR_JEXTSEL)                             << (4U
 152:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 153:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Mask containing trigger edge masks for each of possible                    */
 154:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* trigger edge selection duplicated with shifts [0; 4; 8; 12]                */
 155:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* corresponding to {SW start; ext trigger; ext trigger; ext trigger}.        */
 156:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_TRIG_EDGE_MASK              (((LL_ADC_INJ_TRIG_SOFTWARE & ADC_JSQR_JEXTEN) << (4U *
 157:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_INJ_TRIG_EXT_EDGE_DEFAULT)              << (4U *
 158:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_INJ_TRIG_EXT_EDGE_DEFAULT)              << (4U *
 159:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              ((ADC_INJ_TRIG_EXT_EDGE_DEFAULT)              << (4U *
 160:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 161:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Definition of ADC group injected trigger bits information.                 */
 162:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_TRIG_EXTSEL_BITOFFSET_POS  (ADC_JSQR_JEXTSEL_Pos)
 163:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_INJ_TRIG_EXTEN_BITOFFSET_POS   (ADC_JSQR_JEXTEN_Pos)
 164:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 165:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 166:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 167:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 168:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 169:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 170:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC channel:                                             */
 171:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* To select into literal LL_ADC_CHANNEL_x the relevant bits for:             */
 172:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - channel identifier defined by number                                     */
 173:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - channel identifier defined by bitfield                                   */
 174:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - channel differentiation between external channels (connected to          */
 175:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*   GPIO pins) and internal channels (connected to internal paths)           */
 176:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - channel sampling time defined by SMPRx register offset                   */
 177:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*   and SMPx bits positions into SMPRx register                              */
 178:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_NUMBER_MASK         (ADC_CFGR_AWD1CH)
 179:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_BITFIELD_MASK       (ADC_AWD2CR_AWD2CH)
 180:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS (ADC_CFGR_AWD1CH_Pos)
 181:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_MASK                (ADC_CHANNEL_ID_NUMBER_MASK | ADC_CHANNEL_ID_BITFIELD_MA
 182:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Equivalent mask of ADC_CHANNEL_NUMBER_MASK aligned on register LSB (bit 0) */
 183:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_NUMBER_MASK_POSBIT0 (ADC_SQR2_SQ5) /* Equivalent to shift: (ADC_CHANNEL_NUMB
 184:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 185:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Channel differentiation between external and internal channels */
 186:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_INTERNAL_CH         (0x80000000UL) /* Marker of internal channel */
 187:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_INTERNAL_CH_2       (0x00080000UL) /* Marker of internal channel for other A
 188:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_ID_INTERNAL_CH_MASK    (ADC_CHANNEL_ID_INTERNAL_CH | ADC_CHANNEL_ID_INTERNAL_CH
 189:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 190:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal register offset for ADC channel sampling time configuration */
 191:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* (offset placed into a spare area of literal definition) */
 192:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SMPR1_REGOFFSET                (0x00000000UL)
 193:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SMPR2_REGOFFSET                (0x02000000UL)
 194:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_SMPRX_REGOFFSET_MASK   (ADC_SMPR1_REGOFFSET | ADC_SMPR2_REGOFFSET)
 195:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SMPRX_REGOFFSET_POS            (25UL) /* Position of bits ADC_SMPRx_REGOFFSET in ADC_CH
 196:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 197:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_SMPx_BITOFFSET_MASK    (0x01F00000UL)
 198:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_SMPx_BITOFFSET_POS     (20UL)           /* Value equivalent to bitfield "ADC_CH
 199:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 200:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Definition of channels ID number information to be inserted into           */
 201:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* channels literals definition.                                              */
 202:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_0_NUMBER               (0x00000000UL)
 203:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_1_NUMBER               (                                                       
 204:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_2_NUMBER               (                                                       
 205:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_3_NUMBER               (                                                       
 206:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_4_NUMBER               (                                        ADC_CFGR_AWD1CH
 207:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_5_NUMBER               (                                        ADC_CFGR_AWD1CH
 208:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_6_NUMBER               (                                        ADC_CFGR_AWD1CH
 209:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_7_NUMBER               (                                        ADC_CFGR_AWD1CH
 210:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_8_NUMBER               (                    ADC_CFGR_AWD1CH_3                  
 211:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_9_NUMBER               (                    ADC_CFGR_AWD1CH_3                  
 212:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_10_NUMBER              (                    ADC_CFGR_AWD1CH_3                  
 213:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_11_NUMBER              (                    ADC_CFGR_AWD1CH_3                  
 214:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_12_NUMBER              (                    ADC_CFGR_AWD1CH_3 | ADC_CFGR_AWD1CH
 215:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_13_NUMBER              (                    ADC_CFGR_AWD1CH_3 | ADC_CFGR_AWD1CH
 216:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_14_NUMBER              (                    ADC_CFGR_AWD1CH_3 | ADC_CFGR_AWD1CH
 217:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_15_NUMBER              (                    ADC_CFGR_AWD1CH_3 | ADC_CFGR_AWD1CH
 218:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_16_NUMBER              (ADC_CFGR_AWD1CH_4                                      
 219:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_17_NUMBER              (ADC_CFGR_AWD1CH_4                                      
 220:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_18_NUMBER              (ADC_CFGR_AWD1CH_4                                      
 221:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 222:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Definition of channels ID bitfield information to be inserted into         */
 223:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* channels literals definition.                                              */
 224:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_0_BITFIELD             (ADC_AWD2CR_AWD2CH_0)
 225:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_1_BITFIELD             (ADC_AWD2CR_AWD2CH_1)
 226:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_2_BITFIELD             (ADC_AWD2CR_AWD2CH_2)
 227:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_3_BITFIELD             (ADC_AWD2CR_AWD2CH_3)
 228:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_4_BITFIELD             (ADC_AWD2CR_AWD2CH_4)
 229:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_5_BITFIELD             (ADC_AWD2CR_AWD2CH_5)
 230:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_6_BITFIELD             (ADC_AWD2CR_AWD2CH_6)
 231:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_7_BITFIELD             (ADC_AWD2CR_AWD2CH_7)
 232:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_8_BITFIELD             (ADC_AWD2CR_AWD2CH_8)
 233:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_9_BITFIELD             (ADC_AWD2CR_AWD2CH_9)
 234:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_10_BITFIELD            (ADC_AWD2CR_AWD2CH_10)
 235:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_11_BITFIELD            (ADC_AWD2CR_AWD2CH_11)
 236:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_12_BITFIELD            (ADC_AWD2CR_AWD2CH_12)
 237:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_13_BITFIELD            (ADC_AWD2CR_AWD2CH_13)
 238:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_14_BITFIELD            (ADC_AWD2CR_AWD2CH_14)
 239:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_15_BITFIELD            (ADC_AWD2CR_AWD2CH_15)
 240:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_16_BITFIELD            (ADC_AWD2CR_AWD2CH_16)
 241:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_17_BITFIELD            (ADC_AWD2CR_AWD2CH_17)
 242:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_18_BITFIELD            (ADC_AWD2CR_AWD2CH_18)
 243:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 244:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Definition of channels sampling time information to be inserted into       */
 245:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* channels literals definition.                                              */
 246:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_0_SMP                  (ADC_SMPR1_REGOFFSET | (( 0UL) << ADC_CHANNEL_SMPx_BITOF
 247:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_1_SMP                  (ADC_SMPR1_REGOFFSET | (( 3UL) << ADC_CHANNEL_SMPx_BITOF
 248:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_2_SMP                  (ADC_SMPR1_REGOFFSET | (( 6UL) << ADC_CHANNEL_SMPx_BITOF
 249:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_3_SMP                  (ADC_SMPR1_REGOFFSET | (( 9UL) << ADC_CHANNEL_SMPx_BITOF
 250:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_4_SMP                  (ADC_SMPR1_REGOFFSET | ((12UL) << ADC_CHANNEL_SMPx_BITOF
 251:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_5_SMP                  (ADC_SMPR1_REGOFFSET | ((15UL) << ADC_CHANNEL_SMPx_BITOF
 252:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_6_SMP                  (ADC_SMPR1_REGOFFSET | ((18UL) << ADC_CHANNEL_SMPx_BITOF
 253:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_7_SMP                  (ADC_SMPR1_REGOFFSET | ((21UL) << ADC_CHANNEL_SMPx_BITOF
 254:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_8_SMP                  (ADC_SMPR1_REGOFFSET | ((24UL) << ADC_CHANNEL_SMPx_BITOF
 255:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_9_SMP                  (ADC_SMPR1_REGOFFSET | ((27UL) << ADC_CHANNEL_SMPx_BITOF
 256:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_10_SMP                 (ADC_SMPR2_REGOFFSET | (( 0UL) << ADC_CHANNEL_SMPx_BITOF
 257:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_11_SMP                 (ADC_SMPR2_REGOFFSET | (( 3UL) << ADC_CHANNEL_SMPx_BITOF
 258:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_12_SMP                 (ADC_SMPR2_REGOFFSET | (( 6UL) << ADC_CHANNEL_SMPx_BITOF
 259:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_13_SMP                 (ADC_SMPR2_REGOFFSET | (( 9UL) << ADC_CHANNEL_SMPx_BITOF
 260:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_14_SMP                 (ADC_SMPR2_REGOFFSET | ((12UL) << ADC_CHANNEL_SMPx_BITOF
 261:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_15_SMP                 (ADC_SMPR2_REGOFFSET | ((15UL) << ADC_CHANNEL_SMPx_BITOF
 262:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_16_SMP                 (ADC_SMPR2_REGOFFSET | ((18UL) << ADC_CHANNEL_SMPx_BITOF
 263:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_17_SMP                 (ADC_SMPR2_REGOFFSET | ((21UL) << ADC_CHANNEL_SMPx_BITOF
 264:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CHANNEL_18_SMP                 (ADC_SMPR2_REGOFFSET | ((24UL) << ADC_CHANNEL_SMPx_BITOF
 265:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 266:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 267:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC mode single or differential ended:                   */
 268:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* To select into literals LL_ADC_SINGLE_ENDED or LL_ADC_SINGLE_DIFFERENTIAL  */
 269:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* the relevant bits for:                                                     */
 270:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* (concatenation of multiple bits used in different registers)               */
 271:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - ADC calibration: calibration start, calibration factor get or set        */
 272:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - ADC channels: set each ADC channel ending mode                           */
 273:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SINGLEDIFF_CALIB_START_MASK    (ADC_CR_ADCALDIF)
 274:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SINGLEDIFF_CALIB_FACTOR_MASK   (ADC_CALFACT_CALFACT_D | ADC_CALFACT_CALFACT_S)
 275:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SINGLEDIFF_CHANNEL_MASK        (ADC_CHANNEL_ID_BITFIELD_MASK) /* Equivalent to ADC_DIFS
 276:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SINGLEDIFF_CHANNEL_SHIFT_MASK  (ADC_CALFACT_CALFACT_S_4 | ADC_CALFACT_CALFACT_S_3) /* B
 277:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SINGLEDIFF_CALIB_F_BIT_D_MASK   (0x00010000UL)                           /* Selection o
 278:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SINGLEDIFF_CALIB_F_BIT_D_POS    (16UL)                                   /* Selection o
 279:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_SINGLEDIFF_CALIB_F_BIT_D_SHIFT4 (ADC_SINGLEDIFF_CALIB_F_BIT_D_POS - 4UL) /* Shift of bi
 280:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 281:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC analog watchdog:                                     */
 282:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* To select into literals LL_ADC_AWD_CHANNELx_xxx the relevant bits for:     */
 283:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* (concatenation of multiple bits used in different analog watchdogs,        */
 284:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* (feature of several watchdogs not available on all STM32 families)).       */
 285:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - analog watchdog 1: monitored channel defined by number,                  */
 286:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*   selection of ADC group (ADC groups regular and-or injected).             */
 287:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* - analog watchdog 2 and 3: monitored channel defined by bitfield, no       */
 288:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*   selection on groups.                                                     */
 289:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 290:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal register offset for ADC analog watchdog channel configuration */
 291:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR1_REGOFFSET              (0x00000000UL)
 292:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR2_REGOFFSET              (0x00100000UL)
 293:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR3_REGOFFSET              (0x00200000UL)
 294:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 295:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Register offset gap between AWD1 and AWD2-AWD3 configuration registers */
 296:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* (Set separately as ADC_AWD_CRX_REGOFFSET to spare 32 bits space */
 297:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR12_REGOFFSETGAP_MASK     (ADC_AWD2CR_AWD2CH_0)
 298:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR12_REGOFFSETGAP_VAL      (0x00000024UL)
 299:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 300:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CRX_REGOFFSET_MASK         (ADC_AWD_CR1_REGOFFSET | ADC_AWD_CR2_REGOFFSET | ADC_AWD
 301:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 302:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR1_CHANNEL_MASK           (ADC_CFGR_AWD1CH | ADC_CFGR_JAWD1EN | ADC_CFGR_AWD1EN | 
 303:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR23_CHANNEL_MASK          (ADC_AWD2CR_AWD2CH)
 304:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CR_ALL_CHANNEL_MASK        (ADC_AWD_CR1_CHANNEL_MASK | ADC_AWD_CR23_CHANNEL_MASK)
 305:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 306:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_CRX_REGOFFSET_POS          (20UL) /* Position of bits ADC_AWD_CRx_REGOFFSET in ADC_
 307:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 308:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal register offset for ADC analog watchdog threshold configuration */
 309:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TR1_REGOFFSET              (ADC_AWD_CR1_REGOFFSET)
 310:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TR2_REGOFFSET              (ADC_AWD_CR2_REGOFFSET)
 311:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TR3_REGOFFSET              (ADC_AWD_CR3_REGOFFSET)
 312:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TRX_REGOFFSET_MASK         (ADC_AWD_TR1_REGOFFSET | ADC_AWD_TR2_REGOFFSET | ADC_AWD
 313:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TRX_REGOFFSET_POS          (ADC_AWD_CRX_REGOFFSET_POS)     /* Position of bits ADC_
 314:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TRX_BIT_HIGH_MASK          (0x00010000UL)                   /* Selection of 1 bit t
 315:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TRX_BIT_HIGH_POS           (16UL)                           /* Selection of 1 bit t
 316:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_AWD_TRX_BIT_HIGH_SHIFT4        (ADC_AWD_TRX_BIT_HIGH_POS - 4UL) /* Shift of bit ADC_AWD
 317:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 318:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal mask for ADC offset:                                              */
 319:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal register offset for ADC offset number configuration */
 320:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_OFR1_REGOFFSET                 (0x00000000UL)
 321:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_OFR2_REGOFFSET                 (0x00000001UL)
 322:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_OFR3_REGOFFSET                 (0x00000002UL)
 323:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_OFR4_REGOFFSET                 (0x00000003UL)
 324:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_OFRx_REGOFFSET_MASK            (ADC_OFR1_REGOFFSET | ADC_OFR2_REGOFFSET | ADC_OFR3_REGO
 325:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 326:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 327:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* ADC registers bits positions */
 328:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CFGR_RES_BITOFFSET_POS         (ADC_CFGR_RES_Pos)
 329:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CFGR_AWD1SGL_BITOFFSET_POS     (ADC_CFGR_AWD1SGL_Pos)
 330:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CFGR_AWD1EN_BITOFFSET_POS      (ADC_CFGR_AWD1EN_Pos)
 331:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CFGR_JAWD1EN_BITOFFSET_POS     (ADC_CFGR_JAWD1EN_Pos)
 332:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_TR1_HT1_BITOFFSET_POS          (ADC_TR1_HT1_Pos)
 333:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 334:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 335:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* ADC registers bits groups */
 336:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define ADC_CR_BITS_PROPERTY_RS            (ADC_CR_ADCAL | ADC_CR_JADSTP | ADC_CR_ADSTP | ADC_CR_JA
 337:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 338:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 339:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* ADC internal channels related definitions */
 340:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Internal voltage reference VrefInt */
 341:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define VREFINT_CAL_ADDR                   ((uint16_t*) (0x1FFF75AAUL)) /* Internal voltage referen
 342:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define VREFINT_CAL_VREF                   (3000UL)                     /* Analog voltage reference
 343:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Temperature sensor */
 344:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define TEMPSENSOR_CAL1_ADDR               ((uint16_t*) (0x1FFF75A8UL)) /* Internal temperature sen
 345:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define TEMPSENSOR_CAL2_ADDR               ((uint16_t*) (0x1FFF75CAUL)) /* Internal temperature sen
 346:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define TEMPSENSOR_CAL1_TEMP               (30L)                        /* Internal temperature sen
 347:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define TEMPSENSOR_CAL2_TEMP               (110L)                       /* Internal temperature sen
 348:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define TEMPSENSOR_CAL_VREFANALOG          (3000UL)                     /* Analog voltage reference
 349:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 350:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 351:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 352:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 353:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 354:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 355:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 356:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Private macros ------------------------------------------------------------*/
 357:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_Private_Macros ADC Private Macros
 358:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 359:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 360:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 361:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 362:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Driver macro reserved for internal use: set a pointer to
 363:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a register from a register basis from which an offset
 364:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is applied.
 365:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __REG__ Register basis from which the offset is applied.
 366:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __REG_OFFFSET__ Offset to be applied (unit: number of registers).
 367:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Pointer to register address
 368:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 369:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __ADC_PTR_REG_OFFSET(__REG__, __REG_OFFFSET__)                         \
 370:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((__IO uint32_t *)((uint32_t) ((uint32_t)(&(__REG__)) + ((__REG_OFFFSET__) << 2UL))))
 371:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 372:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 373:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 374:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 375:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 376:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 377:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Exported types ------------------------------------------------------------*/
 378:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(USE_FULL_LL_DRIVER)
 379:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_ES_INIT ADC Exported Init structure
 380:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 381:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 382:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 383:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 384:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Structure definition of some features of ADC common parameters
 385:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and multimode
 386:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (all ADC instances belonging to the same ADC common instance).
 387:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The setting of these parameters by function @ref LL_ADC_CommonInit()
 388:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is conditioned to ADC instances state (all ADC instances
 389:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sharing the same ADC common instance):
 390:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         All ADC instances sharing the same ADC common instance must be
 391:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         disabled.
 392:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 393:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** typedef struct
 394:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 395:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t CommonClock;                 /*!< Set parameter common to several ADC: Clock source and 
 396:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_COMMON
 397:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              @note On this STM32 serie, if ADC group injected is us
 398:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    clock ratio constraints between ADC clock and AH
 399:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    must be respected. Refer to reference manual.
 400:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 401:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 402:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 403:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
 404:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t Multimode;                   /*!< Set ADC multimode configuration to operate in independ
 405:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_MULTI_
 406:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 407:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 408:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 409:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t MultiDMATransfer;            /*!< Set ADC multimode conversion data transfer: no transfe
 410:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_MULTI_
 411:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 412:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 413:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 414:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t MultiTwoSamplingDelay;       /*!< Set ADC multimode delay between 2 sampling phases.
 415:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_MULTI_
 416:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 417:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 418:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif /* ADC_MULTIMODE_SUPPORT */
 419:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 420:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** } LL_ADC_CommonInitTypeDef;
 421:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 422:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 423:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Structure definition of some features of ADC instance.
 424:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   These parameters have an impact on ADC scope: ADC instance.
 425:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Affects both group regular and group injected (availability
 426:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of ADC group injected depends on STM32 families).
 427:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to corresponding unitary functions into
 428:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref ADC_LL_EF_Configuration_ADC_Instance .
 429:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The setting of these parameters by function @ref LL_ADC_Init()
 430:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is conditioned to ADC state:
 431:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instance must be disabled.
 432:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This condition is applied to all ADC features, for efficiency
 433:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and compatibility over all STM32 families. However, the different
 434:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         features can be set under different ADC state conditions
 435:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (setting possible with ADC enabled without conversion on going,
 436:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC enabled with conversion on going, ...)
 437:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Each feature can be updated afterwards with a unitary function
 438:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and potentially with ADC in a different state than disabled,
 439:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         refer to description of each function for setting
 440:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         conditioned to ADC state.
 441:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 442:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** typedef struct
 443:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 444:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t Resolution;                  /*!< Set ADC resolution.
 445:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_RESOLU
 446:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 447:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 448:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 449:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t DataAlignment;               /*!< Set ADC conversion data alignment.
 450:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_DATA_A
 451:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 452:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 453:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 454:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t LowPowerMode;                /*!< Set ADC low power mode.
 455:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_LP_MOD
 456:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 457:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 458:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 459:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** } LL_ADC_InitTypeDef;
 460:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 461:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 462:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Structure definition of some features of ADC group regular.
 463:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   These parameters have an impact on ADC scope: ADC group regular.
 464:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to corresponding unitary functions into
 465:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref ADC_LL_EF_Configuration_ADC_Group_Regular
 466:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (functions with prefix "REG").
 467:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The setting of these parameters by function @ref LL_ADC_REG_Init()
 468:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is conditioned to ADC state:
 469:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instance must be disabled.
 470:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This condition is applied to all ADC features, for efficiency
 471:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and compatibility over all STM32 families. However, the different
 472:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         features can be set under different ADC state conditions
 473:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (setting possible with ADC enabled without conversion on going,
 474:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC enabled with conversion on going, ...)
 475:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Each feature can be updated afterwards with a unitary function
 476:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and potentially with ADC in a different state than disabled,
 477:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         refer to description of each function for setting
 478:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         conditioned to ADC state.
 479:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 480:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** typedef struct
 481:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 482:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t TriggerSource;               /*!< Set ADC group regular conversion trigger source: inter
 483:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_REG_TR
 484:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              @note On this STM32 serie, setting trigger source to e
 485:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    (default setting for compatibility with some ADC
 486:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    In case of need to modify trigger edge, use func
 487:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 488:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 489:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 490:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t SequencerLength;             /*!< Set ADC group regular sequencer length.
 491:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_REG_SE
 492:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 493:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 494:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 495:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t SequencerDiscont;            /*!< Set ADC group regular sequencer discontinuous mode: se
 496:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_REG_SE
 497:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              @note This parameter has an effect only if group regul
 498:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    (scan length of 2 ranks or more).
 499:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 500:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 501:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 502:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t ContinuousMode;              /*!< Set ADC continuous conversion mode on ADC group regula
 503:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_REG_CO
 504:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              Note: It is not possible to enable both ADC group regu
 505:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 506:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 507:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 508:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t DMATransfer;                 /*!< Set ADC group regular conversion data transfer: no tra
 509:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_REG_DM
 510:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 511:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 512:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 513:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t Overrun;                     /*!< Set ADC group regular behavior in case of overrun:
 514:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              data preserved or overwritten.
 515:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_REG_OV
 516:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 517:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 518:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 519:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** } LL_ADC_REG_InitTypeDef;
 520:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 521:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 522:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Structure definition of some features of ADC group injected.
 523:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   These parameters have an impact on ADC scope: ADC group injected.
 524:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to corresponding unitary functions into
 525:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref ADC_LL_EF_Configuration_ADC_Group_Regular
 526:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (functions with prefix "INJ").
 527:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The setting of these parameters by function @ref LL_ADC_INJ_Init()
 528:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is conditioned to ADC state:
 529:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instance must be disabled.
 530:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This condition is applied to all ADC features, for efficiency
 531:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and compatibility over all STM32 families. However, the different
 532:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         features can be set under different ADC state conditions
 533:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (setting possible with ADC enabled without conversion on going,
 534:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC enabled with conversion on going, ...)
 535:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Each feature can be updated afterwards with a unitary function
 536:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and potentially with ADC in a different state than disabled,
 537:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         refer to description of each function for setting
 538:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         conditioned to ADC state.
 539:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 540:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** typedef struct
 541:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 542:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t TriggerSource;               /*!< Set ADC group injected conversion trigger source: inte
 543:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_INJ_TR
 544:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              @note On this STM32 serie, setting trigger source to e
 545:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    (default setting for compatibility with some ADC
 546:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    In case of need to modify trigger edge, use func
 547:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 548:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 549:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 550:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t SequencerLength;             /*!< Set ADC group injected sequencer length.
 551:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_INJ_SE
 552:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 553:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 554:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 555:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t SequencerDiscont;            /*!< Set ADC group injected sequencer discontinuous mode: s
 556:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_INJ_SE
 557:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              @note This parameter has an effect only if group injec
 558:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    (scan length of 2 ranks or more).
 559:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 560:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 561:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 562:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   uint32_t TrigAuto;                    /*!< Set ADC group injected conversion trigger: independent
 563:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This parameter can be a value of @ref ADC_LL_EC_INJ_TR
 564:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              Note: This parameter must be set to set to independent
 565:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 566:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              This feature can be modified afterwards using unitary 
 567:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 568:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** } LL_ADC_INJ_InitTypeDef;
 569:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 570:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 571:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 572:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 573:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif /* USE_FULL_LL_DRIVER */
 574:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 575:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Exported constants --------------------------------------------------------*/
 576:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_Exported_Constants ADC Exported Constants
 577:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 578:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 579:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 580:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_FLAG ADC flags
 581:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief    Flags defines which can be used with LL_ADC_ReadReg function
 582:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 583:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 584:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_ADRDY                  ADC_ISR_ADRDY      /*!< ADC flag ADC instance ready */
 585:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOC                    ADC_ISR_EOC        /*!< ADC flag ADC group regular end o
 586:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOS                    ADC_ISR_EOS        /*!< ADC flag ADC group regular end o
 587:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_OVR                    ADC_ISR_OVR        /*!< ADC flag ADC group regular overr
 588:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOSMP                  ADC_ISR_EOSMP      /*!< ADC flag ADC group regular end o
 589:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JEOC                   ADC_ISR_JEOC       /*!< ADC flag ADC group injected end 
 590:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JEOS                   ADC_ISR_JEOS       /*!< ADC flag ADC group injected end 
 591:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JQOVF                  ADC_ISR_JQOVF      /*!< ADC flag ADC group injected cont
 592:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD1                   ADC_ISR_AWD1       /*!< ADC flag ADC analog watchdog 1 *
 593:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD2                   ADC_ISR_AWD2       /*!< ADC flag ADC analog watchdog 2 *
 594:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD3                   ADC_ISR_AWD3       /*!< ADC flag ADC analog watchdog 3 *
 595:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
 596:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_ADRDY_MST              ADC_CSR_ADRDY_MST  /*!< ADC flag ADC multimode master in
 597:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_ADRDY_SLV              ADC_CSR_ADRDY_SLV  /*!< ADC flag ADC multimode slave ins
 598:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOC_MST                ADC_CSR_EOC_MST    /*!< ADC flag ADC multimode master gr
 599:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOC_SLV                ADC_CSR_EOC_SLV    /*!< ADC flag ADC multimode slave gro
 600:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOS_MST                ADC_CSR_EOS_MST    /*!< ADC flag ADC multimode master gr
 601:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOS_SLV                ADC_CSR_EOS_SLV    /*!< ADC flag ADC multimode slave gro
 602:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_OVR_MST                ADC_CSR_OVR_MST    /*!< ADC flag ADC multimode master gr
 603:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_OVR_SLV                ADC_CSR_OVR_SLV    /*!< ADC flag ADC multimode slave gro
 604:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOSMP_MST              ADC_CSR_EOSMP_MST  /*!< ADC flag ADC multimode master gr
 605:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_EOSMP_SLV              ADC_CSR_EOSMP_SLV  /*!< ADC flag ADC multimode slave gro
 606:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JEOC_MST               ADC_CSR_JEOC_MST   /*!< ADC flag ADC multimode master gr
 607:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JEOC_SLV               ADC_CSR_JEOC_SLV   /*!< ADC flag ADC multimode slave gro
 608:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JEOS_MST               ADC_CSR_JEOS_MST   /*!< ADC flag ADC multimode master gr
 609:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JEOS_SLV               ADC_CSR_JEOS_SLV   /*!< ADC flag ADC multimode slave gro
 610:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JQOVF_MST              ADC_CSR_JQOVF_MST  /*!< ADC flag ADC multimode master gr
 611:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_JQOVF_SLV              ADC_CSR_JQOVF_SLV  /*!< ADC flag ADC multimode slave gro
 612:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD1_MST               ADC_CSR_AWD1_MST   /*!< ADC flag ADC multimode master an
 613:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD1_SLV               ADC_CSR_AWD1_SLV   /*!< ADC flag ADC multimode slave ana
 614:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD2_MST               ADC_CSR_AWD2_MST   /*!< ADC flag ADC multimode master an
 615:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD2_SLV               ADC_CSR_AWD2_SLV   /*!< ADC flag ADC multimode slave ana
 616:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD3_MST               ADC_CSR_AWD3_MST   /*!< ADC flag ADC multimode master an
 617:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_FLAG_AWD3_SLV               ADC_CSR_AWD3_SLV   /*!< ADC flag ADC multimode slave ana
 618:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
 619:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 620:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 621:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 622:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_IT ADC interruptions for configuration (interruption enable or disable)
 624:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief    IT defines which can be used with LL_ADC_ReadReg and  LL_ADC_WriteReg functions
 625:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 626:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 627:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_ADRDY                    ADC_IER_ADRDYIE    /*!< ADC interruption ADC instance re
 628:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_EOC                      ADC_IER_EOCIE      /*!< ADC interruption ADC group regul
 629:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_EOS                      ADC_IER_EOSIE      /*!< ADC interruption ADC group regul
 630:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_OVR                      ADC_IER_OVRIE      /*!< ADC interruption ADC group regul
 631:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_EOSMP                    ADC_IER_EOSMPIE    /*!< ADC interruption ADC group regul
 632:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_JEOC                     ADC_IER_JEOCIE     /*!< ADC interruption ADC group injec
 633:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_JEOS                     ADC_IER_JEOSIE     /*!< ADC interruption ADC group injec
 634:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_JQOVF                    ADC_IER_JQOVFIE    /*!< ADC interruption ADC group injec
 635:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_AWD1                     ADC_IER_AWD1IE     /*!< ADC interruption ADC analog watc
 636:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_AWD2                     ADC_IER_AWD2IE     /*!< ADC interruption ADC analog watc
 637:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_IT_AWD3                     ADC_IER_AWD3IE     /*!< ADC interruption ADC analog watc
 638:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 639:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 640:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 641:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 642:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REGISTERS  ADC registers compliant with specific purpose
 643:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 644:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 645:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* List of ADC registers intended to be used (most commonly) with             */
 646:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* DMA transfer.                                                              */
 647:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Refer to function @ref LL_ADC_DMA_GetRegAddr().                            */
 648:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DMA_REG_REGULAR_DATA          (0x00000000UL) /* ADC group regular conversion data re
 649:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
 650:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DMA_REG_REGULAR_DATA_MULTI    (0x00000001UL) /* ADC group regular conversion data re
 651:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
 652:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 653:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 654:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 655:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 656:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_COMMON_CLOCK_SOURCE  ADC common - Clock source
 657:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 658:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 659:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_SYNC_PCLK_DIV1        (ADC_CCR_CKMODE_0)                                    /*
 660:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_SYNC_PCLK_DIV2        (ADC_CCR_CKMODE_1                   )                 /*
 661:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_SYNC_PCLK_DIV4        (ADC_CCR_CKMODE_1 | ADC_CCR_CKMODE_0)                 /*
 662:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV1            (0x00000000UL)                                        /*
 663:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV2            (ADC_CCR_PRESC_0)                                     /*
 664:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV4            (ADC_CCR_PRESC_1                  )                   /*
 665:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV6            (ADC_CCR_PRESC_1 | ADC_CCR_PRESC_0)                   /*
 666:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV8            (ADC_CCR_PRESC_2                                    ) /*
 667:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV10           (ADC_CCR_PRESC_2                   | ADC_CCR_PRESC_0) /*
 668:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV12           (ADC_CCR_PRESC_2 | ADC_CCR_PRESC_1                  ) /*
 669:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV16           (ADC_CCR_PRESC_2 | ADC_CCR_PRESC_1 | ADC_CCR_PRESC_0) /*
 670:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV32           (ADC_CCR_PRESC_3)                                     /*
 671:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV64           (ADC_CCR_PRESC_3 | ADC_CCR_PRESC_0)                   /*
 672:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV128          (ADC_CCR_PRESC_3 | ADC_CCR_PRESC_1)                   /*
 673:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CLOCK_ASYNC_DIV256          (ADC_CCR_PRESC_3 | ADC_CCR_PRESC_1 | ADC_CCR_PRESC_0) /*
 674:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 675:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 676:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 677:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 678:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_COMMON_PATH_INTERNAL  ADC common - Measurement path to internal channels
 679:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 680:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 681:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Note: Other measurement paths to internal channels may be available        */
 682:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       (connections to other peripherals).                                  */
 683:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       If they are not listed below, they do not require any specific       */
 684:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       path enable. In this case, Access to measurement path is done        */
 685:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       only by selecting the corresponding ADC internal channel.            */
 686:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_PATH_INTERNAL_NONE          (0x00000000UL)         /*!< ADC measurement pathes all d
 687:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_PATH_INTERNAL_VREFINT       (ADC_CCR_VREFEN)       /*!< ADC measurement path to inte
 688:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_PATH_INTERNAL_TEMPSENSOR    (ADC_CCR_VSENSESEL)    /*!< ADC measurement path to inte
 689:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_PATH_INTERNAL_VBAT          (ADC_CCR_VBATSEL)      /*!< ADC measurement path to inte
 690:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 691:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 692:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 693:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 694:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_RESOLUTION  ADC instance - Resolution
 695:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 696:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 697:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_RESOLUTION_12B              (0x00000000UL)                      /*!< ADC resolution 
 698:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_RESOLUTION_10B              (                 ADC_CFGR_RES_0)   /*!< ADC resolution 
 699:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_RESOLUTION_8B               (ADC_CFGR_RES_1                 )   /*!< ADC resolution 
 700:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_RESOLUTION_6B               (ADC_CFGR_RES_1 | ADC_CFGR_RES_0)   /*!< ADC resolution 
 701:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 702:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 703:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 704:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 705:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_DATA_ALIGN  ADC instance - Data alignment
 706:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 707:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 708:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DATA_ALIGN_RIGHT            (0x00000000UL)         /*!< ADC conversion data alignmen
 709:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DATA_ALIGN_LEFT             (ADC_CFGR_ALIGN)       /*!< ADC conversion data alignmen
 710:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 711:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 712:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 713:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 714:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_LP_MODE  ADC instance - Low power mode
 715:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 716:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 717:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_LP_MODE_NONE                (0x00000000UL)                      /*!< No ADC low powe
 718:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_LP_AUTOWAIT                 (ADC_CFGR_AUTDLY)                   /*!< ADC low power m
 719:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 720:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 721:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 722:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 723:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OFFSET_NB  ADC instance - Offset number
 724:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 725:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 726:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_1                    ADC_OFR1_REGOFFSET /*!< ADC offset number 1: ADC channel
 727:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_2                    ADC_OFR2_REGOFFSET /*!< ADC offset number 2: ADC channel
 728:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_3                    ADC_OFR3_REGOFFSET /*!< ADC offset number 3: ADC channel
 729:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_4                    ADC_OFR4_REGOFFSET /*!< ADC offset number 4: ADC channel
 730:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 731:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 733:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 734:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OFFSET_STATE ADC instance - Offset state
 735:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 736:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 737:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_DISABLE              (0x00000000UL)         /*!< ADC offset disabled (among A
 738:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_ENABLE               (ADC_OFR1_OFFSET1_EN)  /*!< ADC offset enabled (among AD
 739:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 740:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 741:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 742:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 743:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OFFSET_SIGN ADC instance - Offset sign
 744:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 745:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 746:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_SIGN_NEGATIVE        (0x00000000UL)       /*!< ADC offset is negative (among 
 747:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_SIGN_POSITIVE        (ADC_OFR1_OFFSETPOS) /*!< ADC offset is positive (among 
 748:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 749:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 750:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 751:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 752:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OFFSET_SATURATION ADC instance - Offset saturation mode
 753:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 754:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 755:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_SATURATION_DISABLE   (0x00000000UL)          /*!< ADC offset saturation is di
 756:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OFFSET_SATURATION_ENABLE    (ADC_OFR1_SATEN)        /*!< ADC offset saturation is en
 757:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 758:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 759:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 760:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_GROUPS  ADC instance - Groups
 761:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 762:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 763:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_GROUP_REGULAR               (0x00000001UL) /*!< ADC group regular (available on all 
 764:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_GROUP_INJECTED              (0x00000002UL) /*!< ADC group injected (not available on
 765:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_GROUP_REGULAR_INJECTED      (0x00000003UL) /*!< ADC both groups regular and injected
 766:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 767:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 768:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 769:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 770:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_CHANNEL  ADC instance - Channel number
 771:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 772:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 773:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_0                   (ADC_CHANNEL_0_NUMBER  | ADC_CHANNEL_0_SMP  | ADC_CHANNE
 774:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_1                   (ADC_CHANNEL_1_NUMBER  | ADC_CHANNEL_1_SMP  | ADC_CHANNE
 775:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_2                   (ADC_CHANNEL_2_NUMBER  | ADC_CHANNEL_2_SMP  | ADC_CHANNE
 776:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_3                   (ADC_CHANNEL_3_NUMBER  | ADC_CHANNEL_3_SMP  | ADC_CHANNE
 777:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_4                   (ADC_CHANNEL_4_NUMBER  | ADC_CHANNEL_4_SMP  | ADC_CHANNE
 778:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_5                   (ADC_CHANNEL_5_NUMBER  | ADC_CHANNEL_5_SMP  | ADC_CHANNE
 779:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_6                   (ADC_CHANNEL_6_NUMBER  | ADC_CHANNEL_6_SMP  | ADC_CHANNE
 780:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_7                   (ADC_CHANNEL_7_NUMBER  | ADC_CHANNEL_7_SMP  | ADC_CHANNE
 781:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_8                   (ADC_CHANNEL_8_NUMBER  | ADC_CHANNEL_8_SMP  | ADC_CHANNE
 782:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_9                   (ADC_CHANNEL_9_NUMBER  | ADC_CHANNEL_9_SMP  | ADC_CHANNE
 783:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_10                  (ADC_CHANNEL_10_NUMBER | ADC_CHANNEL_10_SMP | ADC_CHANNE
 784:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_11                  (ADC_CHANNEL_11_NUMBER | ADC_CHANNEL_11_SMP | ADC_CHANNE
 785:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_12                  (ADC_CHANNEL_12_NUMBER | ADC_CHANNEL_12_SMP | ADC_CHANNE
 786:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_13                  (ADC_CHANNEL_13_NUMBER | ADC_CHANNEL_13_SMP | ADC_CHANNE
 787:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_14                  (ADC_CHANNEL_14_NUMBER | ADC_CHANNEL_14_SMP | ADC_CHANNE
 788:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_15                  (ADC_CHANNEL_15_NUMBER | ADC_CHANNEL_15_SMP | ADC_CHANNE
 789:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_16                  (ADC_CHANNEL_16_NUMBER | ADC_CHANNEL_16_SMP | ADC_CHANNE
 790:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_17                  (ADC_CHANNEL_17_NUMBER | ADC_CHANNEL_17_SMP | ADC_CHANNE
 791:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_18                  (ADC_CHANNEL_18_NUMBER | ADC_CHANNEL_18_SMP | ADC_CHANNE
 792:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VREFINT             (LL_ADC_CHANNEL_18 | ADC_CHANNEL_ID_INTERNAL_CH) /*!< AD
 793:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_TEMPSENSOR_ADC1     (LL_ADC_CHANNEL_16 | ADC_CHANNEL_ID_INTERNAL_CH) /*!< AD
 794:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_TEMPSENSOR_ADC5     (LL_ADC_CHANNEL_4  | ADC_CHANNEL_ID_INTERNAL_CH) /*!< AD
 795:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VBAT                (LL_ADC_CHANNEL_17 | ADC_CHANNEL_ID_INTERNAL_CH) /*!< AD
 796:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VOPAMP1             (LL_ADC_CHANNEL_13 | ADC_CHANNEL_ID_INTERNAL_CH) /*!< AD
 797:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VOPAMP2             (LL_ADC_CHANNEL_16 | ADC_CHANNEL_ID_INTERNAL_CH | ADC_CH
 798:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VOPAMP3_ADC2        (LL_ADC_CHANNEL_18 | ADC_CHANNEL_ID_INTERNAL_CH | ADC_CH
 799:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VOPAMP3_ADC3        (LL_ADC_CHANNEL_13 | ADC_CHANNEL_ID_INTERNAL_CH | ADC_CH
 800:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VOPAMP4             (LL_ADC_CHANNEL_5  | ADC_CHANNEL_ID_INTERNAL_CH) /*!< AD
 801:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VOPAMP5             (LL_ADC_CHANNEL_3  | ADC_CHANNEL_ID_INTERNAL_CH) /*!< AD
 802:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_CHANNEL_VOPAMP6             (LL_ADC_CHANNEL_17 | ADC_CHANNEL_ID_INTERNAL_CH | ADC_CH
 803:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 804:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 805:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 806:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 807:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_TRIGGER_SOURCE  ADC group regular - Trigger source
 808:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 809:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 810:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_SOFTWARE           (0x00000000UL)                                          
 811:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger internal: SW start.
 812:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM1_TRGO      (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EX
 813:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 814:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM1_TRGO2     (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_1 | ADC_REG_TRIG_EX
 815:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 816:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM1_CH1       (ADC_REG_TRIG_EXT_EDGE_DEFAULT)                         
 817:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 818:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 819:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM1_CH2       (ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EXT_EDGE_DEFAULT)     
 820:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 821:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 822:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM1_CH3       (ADC_CFGR_EXTSEL_1 | ADC_REG_TRIG_EXT_EDGE_DEFAULT)     
 823:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 824:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM2_TRGO      (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_1 | ADC_CFGR_EXTSEL
 825:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 826:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM2_CH1       (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL
 827:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 828:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 829:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM2_CH2       (ADC_CFGR_EXTSEL_1 | ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EX
 830:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 831:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 832:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM2_CH3       (ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EXT_EDGE_DEFAULT)     
 833:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 834:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 835:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM3_TRGO      (ADC_CFGR_EXTSEL_2 | ADC_REG_TRIG_EXT_EDGE_DEFAULT)     
 836:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 837:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM3_CH1       (ADC_REG_TRIG_EXT_EDGE_DEFAULT)                         
 838:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 839:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 840:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM3_CH4       (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL
 841:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 842:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 843:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM4_TRGO      (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_2 | ADC_REG_TRIG_EX
 844:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 845:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM4_CH1       (ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL_1 | ADC_REG_TRIG_EX
 846:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 847:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 848:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM4_CH4       (ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EX
 849:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 850:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 851:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM6_TRGO      (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL
 852:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 853:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM7_TRGO      (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL
 854:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 855:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM8_TRGO      (ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL_1 | ADC_CFGR_EXTSEL
 856:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 857:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM8_TRGO2     (ADC_CFGR_EXTSEL_3 | ADC_REG_TRIG_EXT_EDGE_DEFAULT)     
 858:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 859:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM8_CH1       (ADC_CFGR_EXTSEL_1 | ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EX
 860:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 861:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 862:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM15_TRGO     (ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL
 863:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 864:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM20_TRGO     (ADC_CFGR_EXTSEL_4 | ADC_REG_TRIG_EXT_EDGE_DEFAULT)     
 865:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 866:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, TIM20 is not available on all
 867:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM20_TRGO2    (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EX
 868:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 869:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, TIM20 is not available on all
 870:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM20_CH1      (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_1 | ADC_REG_TRIG_EX
 871:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 872:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, TIM20 is not available on all
 873:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM20_CH2      (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_1 | ADC_CFGR_EXTSEL
 874:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 875:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 876:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_TIM20_CH3      (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_2 | ADC_REG_TRIG_EX
 877:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 878:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 879:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG1     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL
 880:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 881:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 882:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG2     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_1 | ADC_CFGR_EXTSEL
 883:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 884:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 885:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG3     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL
 886:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 887:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 888:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG4     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_2 | ADC_REG_TRIG_EX
 889:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 890:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 891:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG5     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL
 892:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 893:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 894:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG6     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_3 | ADC_REG_TRIG_EX
 895:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 896:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 897:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG7     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL
 898:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 899:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 900:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG8     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL
 901:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 902:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 903:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG9     (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL
 904:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 905:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 906:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_HRTIM_TRG10    (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL
 907:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 908:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
 909:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_EXTI_LINE11    (ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL_1 | ADC_REG_TRIG_EX
 910:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 911:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 912:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_EXTI_LINE2     (ADC_CFGR_EXTSEL_2 | ADC_CFGR_EXTSEL_0 | ADC_REG_TRIG_EX
 913:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 914:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
 915:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_LPTIM_OUT      (ADC_CFGR_EXTSEL_4 | ADC_CFGR_EXTSEL_3 | ADC_CFGR_EXTSEL
 916:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group regular conversion trigger from external perip
 917:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 918:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 919:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 920:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 921:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_TRIGGER_EDGE  ADC group regular - Trigger edge
 922:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 923:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 924:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_RISING         (                   ADC_CFGR_EXTEN_0)   /*!< ADC group r
 925:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_FALLING        (ADC_CFGR_EXTEN_1                   )   /*!< ADC group r
 926:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_TRIG_EXT_RISINGFALLING  (ADC_CFGR_EXTEN_1 | ADC_CFGR_EXTEN_0)   /*!< ADC group r
 927:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 928:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 929:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 930:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 931:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_SAMPLING_MODE  ADC group regular - Sampling mode
 932:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 933:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 934:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SAMPLING_MODE_NORMAL               (0x00000000UL)       /*!< ADC conversions sam
 935:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SAMPLING_MODE_BULB                 (ADC_CFGR2_BULB)     /*!< ADC conversions sam
 936:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                                                 Note: First convers
 937:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SAMPLING_MODE_TRIGGER_CONTROLED    (ADC_CFGR2_SMPTRIG)  /*!< ADC conversions sam
 938:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                                                  Trigger rising edg
 939:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                                                  Trigger falling ed
 940:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 941:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 942:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 943:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 944:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_CONTINUOUS_MODE  ADC group regular - Continuous mode
 945:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 946:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 947:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_CONV_SINGLE             (0x00000000UL)          /*!< ADC conversions are perform
 948:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_CONV_CONTINUOUS         (ADC_CFGR_CONT)         /*!< ADC conversions are perform
 949:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 950:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 951:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 952:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 953:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_DMA_TRANSFER  ADC group regular - DMA transfer of ADC conversion data
 954:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 955:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 956:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_DMA_TRANSFER_NONE       (0x00000000UL)                        /*!< ADC conversio
 957:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_DMA_TRANSFER_LIMITED    (                  ADC_CFGR_DMAEN)    /*!< ADC conversio
 958:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_DMA_TRANSFER_UNLIMITED  (ADC_CFGR_DMACFG | ADC_CFGR_DMAEN)    /*!< ADC conversio
 959:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 960:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 961:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 962:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 963:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_SMPR1_SMPPLUS)
 964:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_SAMPLINGTIME_COMMON_CONFIG ADC instance - ADC sampling time common configur
 965:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 966:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 967:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_COMMON_DEFAULT      (0x00000000UL)      /*!< ADC sampling time let to d
 968:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_COMMON_3C5_REPL_2C5 (ADC_SMPR1_SMPPLUS) /*!< ADC additional sampling ti
 969:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 970:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 971:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 972:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
 973:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 974:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_OVR_DATA_BEHAVIOR  ADC group regular - Overrun behavior on conversion d
 975:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 976:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 977:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_OVR_DATA_PRESERVED      (0x00000000UL)         /*!< ADC group regular behavior i
 978:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_OVR_DATA_OVERWRITTEN    (ADC_CFGR_OVRMOD)      /*!< ADC group regular behavior i
 979:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
 980:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
 981:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 982:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
 983:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_SEQ_SCAN_LENGTH  ADC group regular - Sequencer scan length
 984:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
 985:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
 986:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_DISABLE        (0x00000000UL)                                          
 987:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_2RANKS  (                                             ADC_SQR1_L
 988:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_3RANKS  (                              ADC_SQR1_L_1             
 989:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_4RANKS  (                              ADC_SQR1_L_1 | ADC_SQR1_L
 990:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_5RANKS  (               ADC_SQR1_L_2                            
 991:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_6RANKS  (               ADC_SQR1_L_2                | ADC_SQR1_L
 992:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_7RANKS  (               ADC_SQR1_L_2 | ADC_SQR1_L_1             
 993:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_8RANKS  (               ADC_SQR1_L_2 | ADC_SQR1_L_1 | ADC_SQR1_L
 994:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_9RANKS  (ADC_SQR1_L_3                                           
 995:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_10RANKS (ADC_SQR1_L_3                               | ADC_SQR1_L
 996:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_11RANKS (ADC_SQR1_L_3                | ADC_SQR1_L_1             
 997:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_12RANKS (ADC_SQR1_L_3                | ADC_SQR1_L_1 | ADC_SQR1_L
 998:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_13RANKS (ADC_SQR1_L_3 | ADC_SQR1_L_2                            
 999:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_14RANKS (ADC_SQR1_L_3 | ADC_SQR1_L_2                | ADC_SQR1_L
1000:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_15RANKS (ADC_SQR1_L_3 | ADC_SQR1_L_2 | ADC_SQR1_L_1             
1001:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_SCAN_ENABLE_16RANKS (ADC_SQR1_L_3 | ADC_SQR1_L_2 | ADC_SQR1_L_1 | ADC_SQR1_L
1002:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1003:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1004:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1005:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1006:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_SEQ_DISCONT_MODE  ADC group regular - Sequencer discontinuous mode
1007:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1008:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1009:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_DISABLE     (0x00000000UL)                                          
1010:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_1RANK       (                                                       
1011:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_2RANKS      (                                          ADC_CFGR_DISC
1012:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_3RANKS      (                     ADC_CFGR_DISCNUM_1                
1013:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_4RANKS      (                     ADC_CFGR_DISCNUM_1 | ADC_CFGR_DISC
1014:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_5RANKS      (ADC_CFGR_DISCNUM_2                                     
1015:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_6RANKS      (ADC_CFGR_DISCNUM_2                      | ADC_CFGR_DISC
1016:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_7RANKS      (ADC_CFGR_DISCNUM_2 | ADC_CFGR_DISCNUM_1                
1017:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_SEQ_DISCONT_8RANKS      (ADC_CFGR_DISCNUM_2 | ADC_CFGR_DISCNUM_1 | ADC_CFGR_DISC
1018:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1019:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1020:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1021:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1022:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_REG_SEQ_RANKS  ADC group regular - Sequencer ranks
1023:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1024:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1025:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_1                  (ADC_SQR1_REGOFFSET | ADC_REG_RANK_1_SQRX_BITOFFSET_POS)
1026:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_2                  (ADC_SQR1_REGOFFSET | ADC_REG_RANK_2_SQRX_BITOFFSET_POS)
1027:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_3                  (ADC_SQR1_REGOFFSET | ADC_REG_RANK_3_SQRX_BITOFFSET_POS)
1028:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_4                  (ADC_SQR1_REGOFFSET | ADC_REG_RANK_4_SQRX_BITOFFSET_POS)
1029:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_5                  (ADC_SQR2_REGOFFSET | ADC_REG_RANK_5_SQRX_BITOFFSET_POS)
1030:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_6                  (ADC_SQR2_REGOFFSET | ADC_REG_RANK_6_SQRX_BITOFFSET_POS)
1031:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_7                  (ADC_SQR2_REGOFFSET | ADC_REG_RANK_7_SQRX_BITOFFSET_POS)
1032:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_8                  (ADC_SQR2_REGOFFSET | ADC_REG_RANK_8_SQRX_BITOFFSET_POS)
1033:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_9                  (ADC_SQR2_REGOFFSET | ADC_REG_RANK_9_SQRX_BITOFFSET_POS)
1034:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_10                 (ADC_SQR3_REGOFFSET | ADC_REG_RANK_10_SQRX_BITOFFSET_POS
1035:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_11                 (ADC_SQR3_REGOFFSET | ADC_REG_RANK_11_SQRX_BITOFFSET_POS
1036:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_12                 (ADC_SQR3_REGOFFSET | ADC_REG_RANK_12_SQRX_BITOFFSET_POS
1037:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_13                 (ADC_SQR3_REGOFFSET | ADC_REG_RANK_13_SQRX_BITOFFSET_POS
1038:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_14                 (ADC_SQR3_REGOFFSET | ADC_REG_RANK_14_SQRX_BITOFFSET_POS
1039:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_15                 (ADC_SQR4_REGOFFSET | ADC_REG_RANK_15_SQRX_BITOFFSET_POS
1040:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_REG_RANK_16                 (ADC_SQR4_REGOFFSET | ADC_REG_RANK_16_SQRX_BITOFFSET_POS
1041:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1042:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1043:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1044:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1045:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_INJ_TRIGGER_SOURCE  ADC group injected - Trigger source
1046:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1047:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1048:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_SOFTWARE           (0x00000000UL)                                          
1049:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger internal: SW start
1050:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM1_TRGO      (ADC_INJ_TRIG_EXT_EDGE_DEFAULT)                         
1051:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1052:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2     (ADC_JSQR_JEXTSEL_3 | ADC_INJ_TRIG_EXT_EDGE_DEFAULT)    
1053:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1054:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM1_CH3       (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_1 | ADC_JSQR_JEXT
1055:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1056:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1057:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM1_CH4       (ADC_JSQR_JEXTSEL_0 | ADC_INJ_TRIG_EXT_EDGE_DEFAULT)    
1058:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1059:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM2_TRGO      (ADC_JSQR_JEXTSEL_1 | ADC_INJ_TRIG_EXT_EDGE_DEFAULT)    
1060:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1061:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM2_CH1       (ADC_JSQR_JEXTSEL_1 | ADC_JSQR_JEXTSEL_0 | ADC_INJ_TRIG_
1062:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1063:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1064:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM3_TRGO      (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_2 | ADC_INJ_TRIG_
1065:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1066:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM3_CH1       (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXT
1067:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1068:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1069:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM3_CH3       (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_1 | ADC_JSQR_JEXT
1070:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1071:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1072:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM3_CH4       (ADC_JSQR_JEXTSEL_2 | ADC_INJ_TRIG_EXT_EDGE_DEFAULT)    
1073:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1074:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1075:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM4_TRGO      (ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXTSEL_0 | ADC_INJ_TRIG_
1076:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1077:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM4_CH3       (ADC_JSQR_JEXTSEL_2 | ADC_INJ_TRIG_EXT_EDGE_DEFAULT)    
1078:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1079:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1080:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM4_CH4       (ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXTSEL_1 | ADC_INJ_TRIG_
1081:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1082:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1083:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM6_TRGO      (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXT
1084:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1085:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM7_TRGO      (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXT
1086:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1087:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM8_TRGO      (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_0 | ADC_INJ_TRIG_
1088:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1089:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2     (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_1 | ADC_INJ_TRIG_
1090:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1091:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM8_CH2       (ADC_JSQR_JEXTSEL_1 | ADC_JSQR_JEXTSEL_0 | ADC_INJ_TRIG_
1092:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1093:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1094:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM8_CH4       (ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXTSEL_1 | ADC_JSQR_JEXT
1095:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1096:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM15_TRGO     (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXT
1097:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1098:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM16_CH1      (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXT
1099:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1100:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1101:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM20_TRGO     (ADC_JSQR_JEXTSEL_4 | ADC_INJ_TRIG_EXT_EDGE_DEFAULT)    
1102:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1103:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, TIM20 is not available on all
1104:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM20_TRGO2    (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_0 | ADC_INJ_TRIG_
1105:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1106:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, TIM20 is not available on all
1107:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM20_CH2      (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_1 | ADC_INJ_TRIG_
1108:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1109:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Trigger available only on ADC3/4/5 instances. On this ST
1110:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_TIM20_CH4      (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_1 | ADC_INJ_TRIG_
1111:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1112:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Trigger available only on ADC1/2 instances. On this STM3
1113:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG1     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXT
1114:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1115:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1116:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG2     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_1 | ADC_JSQR_JEXT
1117:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1118:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1119:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG3     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXT
1120:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1121:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1122:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG4     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_2 | ADC_INJ_TRIG_
1123:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1124:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1125:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG5     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXT
1126:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1127:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1128:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG6     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXT
1129:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1130:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1131:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG7     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXT
1132:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1133:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1134:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG8     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_INJ_TRIG_
1135:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1136:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1137:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG9     (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXT
1138:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1139:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1140:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_HRTIM_TRG10    (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXT
1141:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1142:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, HRTIM is not available on all
1143:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_EXTI_LINE3     (ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXT
1144:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1145:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1146:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_EXTI_LINE15    (ADC_JSQR_JEXTSEL_2 | ADC_JSQR_JEXTSEL_1 | ADC_INJ_TRIG_
1147:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1148:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            Note: On this STM32 serie, this trigger is available onl
1149:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_LPTIM_OUT      (ADC_JSQR_JEXTSEL_4 | ADC_JSQR_JEXTSEL_3 | ADC_JSQR_JEXT
1150:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                            ADC group injected conversion trigger from external peri
1151:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1152:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1153:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1154:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1155:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_INJ_TRIGGER_EDGE  ADC group injected - Trigger edge
1156:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1157:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1158:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_RISING         (                    ADC_JSQR_JEXTEN_0) /*!< ADC group i
1159:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_FALLING        (ADC_JSQR_JEXTEN_1                    ) /*!< ADC group i
1160:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_EXT_RISINGFALLING  (ADC_JSQR_JEXTEN_1 | ADC_JSQR_JEXTEN_0) /*!< ADC group i
1161:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1162:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1163:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1164:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1165:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_INJ_TRIG_AUTO  ADC group injected - Automatic trigger mode
1166:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1167:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1168:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_INDEPENDENT        (0x00000000UL)         /*!< ADC group injected conversio
1169:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_TRIG_FROM_GRP_REGULAR   (ADC_CFGR_JAUTO)       /*!< ADC group injected conversio
1170:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1171:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1172:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1173:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1174:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_INJ_CONTEXT_QUEUE  ADC group injected - Context queue mode
1175:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1176:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1177:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_QUEUE_2CONTEXTS_LAST_ACTIVE (0x00000000UL)         /* Group injected sequence co
1178:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_QUEUE_2CONTEXTS_END_EMPTY   (ADC_CFGR_JQM)         /* Group injected sequence co
1179:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_QUEUE_DISABLE               (ADC_CFGR_JQDIS)       /* Group injected sequence co
1180:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1181:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1182:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1183:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1184:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_INJ_SEQ_SCAN_LENGTH  ADC group injected - Sequencer scan length
1185:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1186:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1187:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_SEQ_SCAN_DISABLE        (0x00000000UL)                  /*!< ADC group injected 
1188:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_SEQ_SCAN_ENABLE_2RANKS  (                ADC_JSQR_JL_0) /*!< ADC group injected 
1189:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_SEQ_SCAN_ENABLE_3RANKS  (ADC_JSQR_JL_1                ) /*!< ADC group injected 
1190:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_SEQ_SCAN_ENABLE_4RANKS  (ADC_JSQR_JL_1 | ADC_JSQR_JL_0) /*!< ADC group injected 
1191:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1192:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1193:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1194:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1195:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_INJ_SEQ_DISCONT_MODE  ADC group injected - Sequencer discontinuous mode
1196:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1197:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1198:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_SEQ_DISCONT_DISABLE     (0x00000000UL)         /*!< ADC group injected sequencer
1199:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_SEQ_DISCONT_1RANK       (ADC_CFGR_JDISCEN)     /*!< ADC group injected sequencer
1200:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1201:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1202:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1203:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1204:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_INJ_SEQ_RANKS  ADC group injected - Sequencer ranks
1205:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1206:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1207:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_RANK_1                  (ADC_JDR1_REGOFFSET | ADC_INJ_RANK_1_JSQR_BITOFFSET_POS)
1208:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_RANK_2                  (ADC_JDR2_REGOFFSET | ADC_INJ_RANK_2_JSQR_BITOFFSET_POS)
1209:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_RANK_3                  (ADC_JDR3_REGOFFSET | ADC_INJ_RANK_3_JSQR_BITOFFSET_POS)
1210:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_INJ_RANK_4                  (ADC_JDR4_REGOFFSET | ADC_INJ_RANK_4_JSQR_BITOFFSET_POS)
1211:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1212:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1213:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1214:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1215:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_CHANNEL_SAMPLINGTIME  Channel - Sampling time
1216:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1217:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1218:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_2CYCLES_5      (0x00000000UL)                                          
1219:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_6CYCLES_5      (                                        ADC_SMPR2_SMP10
1220:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_12CYCLES_5     (                    ADC_SMPR2_SMP10_1                  
1221:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_24CYCLES_5     (                    ADC_SMPR2_SMP10_1 | ADC_SMPR2_SMP10
1222:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_47CYCLES_5     (ADC_SMPR2_SMP10_2                                      
1223:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_92CYCLES_5     (ADC_SMPR2_SMP10_2                     | ADC_SMPR2_SMP10
1224:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_247CYCLES_5    (ADC_SMPR2_SMP10_2 | ADC_SMPR2_SMP10_1                  
1225:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SAMPLINGTIME_640CYCLES_5    (ADC_SMPR2_SMP10_2 | ADC_SMPR2_SMP10_1 | ADC_SMPR2_SMP10
1226:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1227:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1228:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1229:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1230:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_CHANNEL_SINGLE_DIFF_ENDING  Channel - Single or differential ending
1231:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1232:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1233:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_SINGLE_ENDED                (                  ADC_CALFACT_CALFACT_S)         /*!< A
1234:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DIFFERENTIAL_ENDED          (ADC_CR_ADCALDIF | ADC_CALFACT_CALFACT_D)         /*!< A
1235:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_BOTH_SINGLE_DIFF_ENDED      (LL_ADC_SINGLE_ENDED | LL_ADC_DIFFERENTIAL_ENDED) /*!< A
1236:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1237:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1238:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1239:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1240:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_AWD_NUMBER Analog watchdog - Analog watchdog number
1241:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1242:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1243:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD1                        (ADC_AWD_CR1_CHANNEL_MASK  | ADC_AWD_CR1_REGOFFSET) /*!<
1244:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD2                        (ADC_AWD_CR23_CHANNEL_MASK | ADC_AWD_CR2_REGOFFSET) /*!<
1245:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD3                        (ADC_AWD_CR23_CHANNEL_MASK | ADC_AWD_CR3_REGOFFSET) /*!<
1246:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1247:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1248:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1249:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1250:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_AWD_CHANNELS  Analog watchdog - Monitored channels
1251:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1252:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1253:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_DISABLE                 (0x00000000UL)                                          
1254:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_ALL_CHANNELS_REG        (ADC_AWD_CR23_CHANNEL_MASK                              
1255:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_ALL_CHANNELS_INJ        (ADC_AWD_CR23_CHANNEL_MASK                 | ADC_CFGR_JA
1256:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_ALL_CHANNELS_REG_INJ    (ADC_AWD_CR23_CHANNEL_MASK                 | ADC_CFGR_JA
1257:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_0_REG           ((LL_ADC_CHANNEL_0  & ADC_CHANNEL_ID_MASK)              
1258:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_0_INJ           ((LL_ADC_CHANNEL_0  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1259:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_0_REG_INJ       ((LL_ADC_CHANNEL_0  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1260:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_1_REG           ((LL_ADC_CHANNEL_1  & ADC_CHANNEL_ID_MASK)              
1261:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_1_INJ           ((LL_ADC_CHANNEL_1  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1262:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_1_REG_INJ       ((LL_ADC_CHANNEL_1  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1263:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_2_REG           ((LL_ADC_CHANNEL_2  & ADC_CHANNEL_ID_MASK)              
1264:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_2_INJ           ((LL_ADC_CHANNEL_2  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1265:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_2_REG_INJ       ((LL_ADC_CHANNEL_2  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1266:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_3_REG           ((LL_ADC_CHANNEL_3  & ADC_CHANNEL_ID_MASK)              
1267:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_3_INJ           ((LL_ADC_CHANNEL_3  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1268:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_3_REG_INJ       ((LL_ADC_CHANNEL_3  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1269:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_4_REG           ((LL_ADC_CHANNEL_4  & ADC_CHANNEL_ID_MASK)              
1270:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_4_INJ           ((LL_ADC_CHANNEL_4  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1271:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_4_REG_INJ       ((LL_ADC_CHANNEL_4  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1272:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_5_REG           ((LL_ADC_CHANNEL_5  & ADC_CHANNEL_ID_MASK)              
1273:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_5_INJ           ((LL_ADC_CHANNEL_5  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1274:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_5_REG_INJ       ((LL_ADC_CHANNEL_5  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1275:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_6_REG           ((LL_ADC_CHANNEL_6  & ADC_CHANNEL_ID_MASK)              
1276:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_6_INJ           ((LL_ADC_CHANNEL_6  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1277:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_6_REG_INJ       ((LL_ADC_CHANNEL_6  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1278:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_7_REG           ((LL_ADC_CHANNEL_7  & ADC_CHANNEL_ID_MASK)              
1279:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_7_INJ           ((LL_ADC_CHANNEL_7  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1280:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_7_REG_INJ       ((LL_ADC_CHANNEL_7  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1281:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_8_REG           ((LL_ADC_CHANNEL_8  & ADC_CHANNEL_ID_MASK)              
1282:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_8_INJ           ((LL_ADC_CHANNEL_8  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1283:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_8_REG_INJ       ((LL_ADC_CHANNEL_8  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1284:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_9_REG           ((LL_ADC_CHANNEL_9  & ADC_CHANNEL_ID_MASK)              
1285:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_9_INJ           ((LL_ADC_CHANNEL_9  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1286:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_9_REG_INJ       ((LL_ADC_CHANNEL_9  & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1287:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_10_REG          ((LL_ADC_CHANNEL_10 & ADC_CHANNEL_ID_MASK)              
1288:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_10_INJ          ((LL_ADC_CHANNEL_10 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1289:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_10_REG_INJ      ((LL_ADC_CHANNEL_10 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1290:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_11_REG          ((LL_ADC_CHANNEL_11 & ADC_CHANNEL_ID_MASK)              
1291:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_11_INJ          ((LL_ADC_CHANNEL_11 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1292:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_11_REG_INJ      ((LL_ADC_CHANNEL_11 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1293:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_12_REG          ((LL_ADC_CHANNEL_12 & ADC_CHANNEL_ID_MASK)              
1294:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_12_INJ          ((LL_ADC_CHANNEL_12 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1295:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_12_REG_INJ      ((LL_ADC_CHANNEL_12 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1296:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_13_REG          ((LL_ADC_CHANNEL_13 & ADC_CHANNEL_ID_MASK)              
1297:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_13_INJ          ((LL_ADC_CHANNEL_13 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1298:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_13_REG_INJ      ((LL_ADC_CHANNEL_13 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1299:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_14_REG          ((LL_ADC_CHANNEL_14 & ADC_CHANNEL_ID_MASK)              
1300:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_14_INJ          ((LL_ADC_CHANNEL_14 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1301:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_14_REG_INJ      ((LL_ADC_CHANNEL_14 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1302:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_15_REG          ((LL_ADC_CHANNEL_15 & ADC_CHANNEL_ID_MASK)              
1303:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_15_INJ          ((LL_ADC_CHANNEL_15 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1304:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_15_REG_INJ      ((LL_ADC_CHANNEL_15 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1305:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_16_REG          ((LL_ADC_CHANNEL_16 & ADC_CHANNEL_ID_MASK)              
1306:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_16_INJ          ((LL_ADC_CHANNEL_16 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1307:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_16_REG_INJ      ((LL_ADC_CHANNEL_16 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1308:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_17_REG          ((LL_ADC_CHANNEL_17 & ADC_CHANNEL_ID_MASK)              
1309:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_17_INJ          ((LL_ADC_CHANNEL_17 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1310:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_17_REG_INJ      ((LL_ADC_CHANNEL_17 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1311:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_18_REG          ((LL_ADC_CHANNEL_18 & ADC_CHANNEL_ID_MASK)              
1312:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_18_INJ          ((LL_ADC_CHANNEL_18 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1313:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CHANNEL_18_REG_INJ      ((LL_ADC_CHANNEL_18 & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JA
1314:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VREFINT_REG          ((LL_ADC_CHANNEL_VREFINT       & ADC_CHANNEL_ID_MASK)   
1315:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VREFINT_INJ          ((LL_ADC_CHANNEL_VREFINT       & ADC_CHANNEL_ID_MASK) | 
1316:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VREFINT_REG_INJ      ((LL_ADC_CHANNEL_VREFINT       & ADC_CHANNEL_ID_MASK) | 
1317:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_TEMPSENSOR_ADC1_REG       ((LL_ADC_CHANNEL_TEMPSENSOR_ADC1 & ADC_CHANNEL_ID_M
1318:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_TEMPSENSOR_ADC1_INJ       ((LL_ADC_CHANNEL_TEMPSENSOR_ADC1 & ADC_CHANNEL_ID_M
1319:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_TEMPSENSOR_ADC1_REG_INJ   ((LL_ADC_CHANNEL_TEMPSENSOR_ADC1 & ADC_CHANNEL_ID_M
1320:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_TEMPSENSOR_ADC5_REG       ((LL_ADC_CHANNEL_TEMPSENSOR_ADC5 & ADC_CHANNEL_ID_M
1321:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_TEMPSENSOR_ADC5_INJ       ((LL_ADC_CHANNEL_TEMPSENSOR_ADC5 & ADC_CHANNEL_ID_M
1322:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_TEMPSENSOR_ADC5_REG_INJ   ((LL_ADC_CHANNEL_TEMPSENSOR_ADC5 & ADC_CHANNEL_ID_M
1323:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VBAT_REG             ((LL_ADC_CHANNEL_VBAT          & ADC_CHANNEL_ID_MASK)   
1324:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VBAT_INJ             ((LL_ADC_CHANNEL_VBAT          & ADC_CHANNEL_ID_MASK) | 
1325:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VBAT_REG_INJ         ((LL_ADC_CHANNEL_VBAT          & ADC_CHANNEL_ID_MASK) | 
1326:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP1_REG          ((LL_ADC_CHANNEL_VOPAMP1       & ADC_CHANNEL_ID_MASK)   
1327:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP1_INJ          ((LL_ADC_CHANNEL_VOPAMP1       & ADC_CHANNEL_ID_MASK) | 
1328:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP1_REG_INJ      ((LL_ADC_CHANNEL_VOPAMP1       & ADC_CHANNEL_ID_MASK) | 
1329:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP2_REG          ((LL_ADC_CHANNEL_VOPAMP2       & ADC_CHANNEL_ID_MASK)   
1330:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP2_INJ          ((LL_ADC_CHANNEL_VOPAMP2       & ADC_CHANNEL_ID_MASK) | 
1331:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP2_REG_INJ      ((LL_ADC_CHANNEL_VOPAMP2       & ADC_CHANNEL_ID_MASK) | 
1332:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP3_ADC2_REG     ((LL_ADC_CHANNEL_VOPAMP3_ADC2  & ADC_CHANNEL_ID_MASK)   
1333:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP3_ADC2_INJ     ((LL_ADC_CHANNEL_VOPAMP3_ADC2  & ADC_CHANNEL_ID_MASK) | 
1334:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP3_ADC2_REG_INJ ((LL_ADC_CHANNEL_VOPAMP3_ADC2  & ADC_CHANNEL_ID_MASK) | 
1335:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP3_ADC3_REG     ((LL_ADC_CHANNEL_VOPAMP3_ADC3  & ADC_CHANNEL_ID_MASK)   
1336:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP3_ADC3_INJ     ((LL_ADC_CHANNEL_VOPAMP3_ADC3  & ADC_CHANNEL_ID_MASK) | 
1337:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP3_ADC3_REG_INJ ((LL_ADC_CHANNEL_VOPAMP3_ADC3  & ADC_CHANNEL_ID_MASK) | 
1338:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP4_REG          ((LL_ADC_CHANNEL_VOPAMP4       & ADC_CHANNEL_ID_MASK)   
1339:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP4_INJ          ((LL_ADC_CHANNEL_VOPAMP4       & ADC_CHANNEL_ID_MASK) | 
1340:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP4_REG_INJ      ((LL_ADC_CHANNEL_VOPAMP4       & ADC_CHANNEL_ID_MASK) | 
1341:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP5_REG          ((LL_ADC_CHANNEL_VOPAMP5       & ADC_CHANNEL_ID_MASK)   
1342:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP5_INJ          ((LL_ADC_CHANNEL_VOPAMP5       & ADC_CHANNEL_ID_MASK) | 
1343:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP5_REG_INJ      ((LL_ADC_CHANNEL_VOPAMP5       & ADC_CHANNEL_ID_MASK) | 
1344:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP6_REG          ((LL_ADC_CHANNEL_VOPAMP6       & ADC_CHANNEL_ID_MASK)   
1345:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP6_INJ          ((LL_ADC_CHANNEL_VOPAMP6       & ADC_CHANNEL_ID_MASK) | 
1346:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_CH_VOPAMP6_REG_INJ      ((LL_ADC_CHANNEL_VOPAMP6       & ADC_CHANNEL_ID_MASK) | 
1347:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1348:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1349:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1350:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1351:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_AWD_THRESHOLDS  Analog watchdog - Thresholds
1352:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1353:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1354:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_THRESHOLD_HIGH          (ADC_TR1_HT1              ) /*!< ADC analog watchdog thr
1355:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_THRESHOLD_LOW           (              ADC_TR1_LT1) /*!< ADC analog watchdog thr
1356:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_THRESHOLDS_HIGH_LOW     (ADC_TR1_HT1 | ADC_TR1_LT1) /*!< ADC analog watchdog bot
1357:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1358:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1359:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1360:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1361:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_AWD_FILTERING_CONFIG  Analog watchdog - filtering config
1362:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1363:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1364:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_NONE          (0x00000000UL)                                          
1365:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_2SAMPLES      (                                        ADC_TR1_AWDFILT
1366:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_3SAMPLES      (                    ADC_TR1_AWDFILT_1                  
1367:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_4SAMPLES      (                    ADC_TR1_AWDFILT_1 | ADC_TR1_AWDFILT
1368:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_5SAMPLES      (ADC_TR1_AWDFILT_2                                      
1369:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_6SAMPLES      (ADC_TR1_AWDFILT_2 |                     ADC_TR1_AWDFILT
1370:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_7SAMPLES      (ADC_TR1_AWDFILT_2 | ADC_TR1_AWDFILT_1                  
1371:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_AWD_FILTERING_8SAMPLES      (ADC_TR1_AWDFILT_2 | ADC_TR1_AWDFILT_1 | ADC_TR1_AWDFILT
1372:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1373:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1374:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1375:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1376:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OVS_SCOPE  Oversampling - Oversampling scope
1377:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1378:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1379:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_DISABLE                 (0x00000000UL)                                        /*
1380:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_GRP_REGULAR_CONTINUED   (                                    ADC_CFGR2_ROVSE) /*
1381:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_GRP_REGULAR_RESUMED     (ADC_CFGR2_ROVSM |                   ADC_CFGR2_ROVSE) /*
1382:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_GRP_INJECTED            (                  ADC_CFGR2_JOVSE                  ) /*
1383:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_GRP_INJ_REG_RESUMED     (                  ADC_CFGR2_JOVSE | ADC_CFGR2_ROVSE) /*
1384:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1385:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1386:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1387:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1388:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OVS_DISCONT_MODE  Oversampling - Discontinuous mode
1389:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1390:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1391:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_REG_CONT                (0x00000000UL)         /*!< ADC oversampling discontinuo
1392:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_REG_DISCONT             (ADC_CFGR2_TROVS)      /*!< ADC oversampling discontinuo
1393:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1394:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1395:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1396:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1397:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OVS_RATIO  Oversampling - Ratio
1398:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1399:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1400:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_2                 (0x00000000UL)                                          
1401:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_4                 (                                      ADC_CFGR2_OVSR_0)
1402:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_8                 (                   ADC_CFGR2_OVSR_1                   )
1403:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_16                (                   ADC_CFGR2_OVSR_1 | ADC_CFGR2_OVSR_0)
1404:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_32                (ADC_CFGR2_OVSR_2                                      )
1405:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_64                (ADC_CFGR2_OVSR_2                    | ADC_CFGR2_OVSR_0)
1406:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_128               (ADC_CFGR2_OVSR_2 | ADC_CFGR2_OVSR_1                   )
1407:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_RATIO_256               (ADC_CFGR2_OVSR_2 | ADC_CFGR2_OVSR_1 | ADC_CFGR2_OVSR_0)
1408:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1409:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1410:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1411:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1412:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_OVS_SHIFT  Oversampling - Data shift
1413:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1414:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1415:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_NONE              (0x00000000UL)                                          
1416:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_1           (                                                       
1417:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_2           (                                      ADC_CFGR2_OVSS_1 
1418:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_3           (                                      ADC_CFGR2_OVSS_1 
1419:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_4           (                   ADC_CFGR2_OVSS_2                    
1420:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_5           (                   ADC_CFGR2_OVSS_2                    
1421:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_6           (                   ADC_CFGR2_OVSS_2 | ADC_CFGR2_OVSS_1 
1422:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_7           (                   ADC_CFGR2_OVSS_2 | ADC_CFGR2_OVSS_1 
1423:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_OVS_SHIFT_RIGHT_8           (ADC_CFGR2_OVSS_3                                       
1424:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1425:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1426:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1427:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1428:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
1429:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_MULTI_MODE  Multimode - Mode
1430:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1431:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1432:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_INDEPENDENT           (0x00000000UL)                                          
1433:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_DUAL_REG_SIMULT       (                 ADC_CCR_DUAL_2 | ADC_CCR_DUAL_1       
1434:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_DUAL_REG_INTERL       (                 ADC_CCR_DUAL_2 | ADC_CCR_DUAL_1 | ADC_
1435:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_DUAL_INJ_SIMULT       (                 ADC_CCR_DUAL_2                  | ADC_
1436:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_DUAL_INJ_ALTERN       (ADC_CCR_DUAL_3                                   | ADC_
1437:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_DUAL_REG_SIM_INJ_SIM  (                                                   ADC_
1438:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_DUAL_REG_SIM_INJ_ALT  (                                  ADC_CCR_DUAL_1       
1439:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_DUAL_REG_INT_INJ_SIM  (                                  ADC_CCR_DUAL_1 | ADC_
1440:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1441:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1442:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1443:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1444:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_MULTI_DMA_TRANSFER  Multimode - DMA transfer
1445:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1446:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1447:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_REG_DMA_EACH_ADC        (0x00000000UL)                                     /*!
1448:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_REG_DMA_LIMIT_RES12_10B (                 ADC_CCR_MDMA_1                 ) /*!
1449:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_REG_DMA_LIMIT_RES8_6B   (                 ADC_CCR_MDMA_1 | ADC_CCR_MDMA_0) /*!
1450:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_REG_DMA_UNLMT_RES12_10B (ADC_CCR_DMACFG | ADC_CCR_MDMA_1                 ) /*!
1451:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_REG_DMA_UNLMT_RES8_6B   (ADC_CCR_DMACFG | ADC_CCR_MDMA_1 | ADC_CCR_MDMA_0) /*!
1452:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1453:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1454:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1455:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1456:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_MULTI_TWOSMP_DELAY  Multimode - Delay between two sampling phases
1457:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1458:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1459:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_1CYCLE   (0x00000000UL)                                          
1460:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_2CYCLES  (                                                      A
1461:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_3CYCLES  (                                    ADC_CCR_DELAY_1    
1462:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_4CYCLES  (                                    ADC_CCR_DELAY_1 | A
1463:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_5CYCLES  (                  ADC_CCR_DELAY_2                      
1464:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_6CYCLES  (                  ADC_CCR_DELAY_2                   | A
1465:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_7CYCLES  (                  ADC_CCR_DELAY_2 | ADC_CCR_DELAY_1    
1466:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_8CYCLES  (                  ADC_CCR_DELAY_2 | ADC_CCR_DELAY_1 | A
1467:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_9CYCLES  (ADC_CCR_DELAY_3                                        
1468:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_10CYCLES (ADC_CCR_DELAY_3                                     | A
1469:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_11CYCLES (ADC_CCR_DELAY_3                   | ADC_CCR_DELAY_1    
1470:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_TWOSMP_DELAY_12CYCLES (ADC_CCR_DELAY_3                   | ADC_CCR_DELAY_1 | A
1471:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1472:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1473:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1474:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1475:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_MULTI_MASTER_SLAVE  Multimode - ADC master or slave
1476:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1477:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1478:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_MASTER                (                    ADC_CDR_RDATA_MST) /*!< In multimod
1479:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_SLAVE                 (ADC_CDR_RDATA_SLV                    ) /*!< In multimod
1480:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_MULTI_MASTER_SLAVE          (ADC_CDR_RDATA_SLV | ADC_CDR_RDATA_MST) /*!< In multimod
1481:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1482:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1483:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1484:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1485:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif /* ADC_MULTIMODE_SUPPORT */
1486:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1487:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1488:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EC_HW_DELAYS  Definitions of ADC hardware constraints delays
1489:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Only ADC peripheral HW delays are defined in ADC LL driver driver,
1490:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         not timeout values.
1491:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         For details on delays values, refer to descriptions in source code
1492:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         above each literal definition.
1493:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1494:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1495:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1496:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Note: Only ADC peripheral HW delays are defined in ADC LL driver driver,   */
1497:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       not timeout values.                                                  */
1498:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       Timeout values for ADC operations are dependent to device clock      */
1499:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       configuration (system clock versus ADC clock),                       */
1500:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       and therefore must be defined in user application.                   */
1501:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       Indications for estimation of ADC timeout delays, for this           */
1502:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       STM32 serie:                                                         */
1503:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       - ADC calibration time: maximum delay is 112/fADC.                   */
1504:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*         (refer to device datasheet, parameter "tCAL")                      */
1505:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       - ADC enable time: maximum delay is 1 conversion cycle.              */
1506:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*         (refer to device datasheet, parameter "tSTAB")                     */
1507:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       - ADC disable time: maximum delay should be a few ADC clock cycles   */
1508:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       - ADC stop conversion time: maximum delay should be a few ADC clock  */
1509:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*         cycles                                                             */
1510:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       - ADC conversion time: duration depending on ADC clock and ADC       */
1511:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*         configuration.                                                     */
1512:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*         (refer to device reference manual, section "Timing")               */
1513:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1514:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Delay for ADC stabilization time (ADC voltage regulator start-up time)     */
1515:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Delay set to maximum value (refer to device datasheet,                     */
1516:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* parameter "tADCVREG_STUP").                                                */
1517:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Unit: us                                                                   */
1518:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DELAY_INTERNAL_REGUL_STAB_US ( 10UL)  /*!< Delay for ADC stabilization time (ADC vol
1519:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1520:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Delay for internal voltage reference stabilization time.                   */
1521:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Delay set to maximum value (refer to device datasheet,                     */
1522:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* parameter "tstart_vrefint").                                               */
1523:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Unit: us                                                                   */
1524:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DELAY_VREFINT_STAB_US       ( 12UL)  /*!< Delay for internal voltage reference stabi
1525:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1526:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Delay for temperature sensor stabilization time.                           */
1527:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Literal set to maximum value (refer to device datasheet,                   */
1528:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* parameter "tSTART").                                                       */
1529:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Unit: us                                                                   */
1530:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DELAY_TEMPSENSOR_STAB_US    (120UL)  /*!< Delay for temperature sensor stabilization
1531:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1532:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Delay required between ADC end of calibration and ADC enable.              */
1533:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Note: On this STM32 serie, a minimum number of ADC clock cycles            */
1534:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       are required between ADC end of calibration and ADC enable.          */
1535:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       Wait time can be computed in user application by waiting for the     */
1536:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       equivalent number of CPU cycles, by taking into account              */
1537:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       ratio of CPU clock versus ADC clock prescalers.                      */
1538:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Unit: ADC clock cycles.                                                    */
1539:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_DELAY_CALIB_ENABLE_ADC_CYCLES (  4UL)  /*!< Delay required between ADC end of calibr
1540:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1541:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1542:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1543:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1544:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1545:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1546:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1547:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1548:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1549:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1550:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Exported macro ------------------------------------------------------------*/
1551:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_Exported_Macros ADC Exported Macros
1552:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1553:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1554:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1555:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EM_WRITE_READ Common write and read registers Macros
1556:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1557:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1558:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1559:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1560:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Write a value in ADC register
1561:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __INSTANCE__ ADC Instance
1562:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __REG__ Register to be written
1563:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __VALUE__ Value to be written in the register
1564:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
1565:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1566:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALUE
1567:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1568:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1569:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Read a value in ADC register
1570:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __INSTANCE__ ADC Instance
1571:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __REG__ Register to be read
1572:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Register value
1573:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1574:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define LL_ADC_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
1575:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1576:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
1577:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1578:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1579:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EM_HELPER_MACRO ADC helper macro
1580:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
1581:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1582:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1583:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1584:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to get ADC channel number in decimal format
1585:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         from literals LL_ADC_CHANNEL_x.
1586:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Example:
1587:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           __LL_ADC_CHANNEL_TO_DECIMAL_NB(LL_ADC_CHANNEL_4)
1588:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           will return decimal number "4".
1589:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The input can be a value from functions where a channel
1590:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         number is returned, either defined with number
1591:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or with bitfield (only one bit must be set).
1592:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __CHANNEL__ This parameter can be one of the following values:
1593:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
1594:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
1595:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
1596:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
1597:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
1598:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
1599:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
1600:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
1601:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
1602:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
1603:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
1604:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
1605:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
1606:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
1607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
1608:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
1609:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
1610:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
1611:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
1612:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
1613:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
1614:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
1615:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
1616:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
1617:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
1618:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
1619:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
1620:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
1621:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
1622:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
1623:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
1624:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
1625:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
1626:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
1627:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
1628:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
1629:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
1630:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
1631:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
1632:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
1633:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
1634:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0 and Max_Data=18
1635:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1636:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CHANNEL_TO_DECIMAL_NB(__CHANNEL__)                                        \
1637:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((((__CHANNEL__) & ADC_CHANNEL_ID_BITFIELD_MASK) == 0UL)                                 \
1638:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ? (                                                                                     \
1639:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) & ADC_CHANNEL_ID_NUMBER_MASK) >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS \
1640:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****      )                                                                                     \
1641:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    :                                                                                       \
1642:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (                                                                                       \
1643:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (uint32_t)POSITION_VAL((__CHANNEL__))                                               \
1644:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                                       \
1645:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
1646:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1647:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1648:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to get ADC channel in literal format LL_ADC_CHANNEL_x
1649:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         from number in decimal format.
1650:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Example:
1651:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           __LL_ADC_DECIMAL_NB_TO_CHANNEL(4)
1652:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           will return a data equivalent to "LL_ADC_CHANNEL_4".
1653:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __DECIMAL_NB__ Value between Min_Data=0 and Max_Data=18
1654:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
1655:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
1656:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
1657:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
1658:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
1659:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
1660:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
1661:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
1662:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
1663:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
1664:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
1665:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
1666:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
1667:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
1668:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
1669:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
1670:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
1671:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
1672:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
1673:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
1674:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
1675:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
1676:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
1677:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
1678:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
1679:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
1680:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
1681:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
1682:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
1683:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
1684:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
1685:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
1686:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
1687:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
1688:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
1689:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
1690:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
1691:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
1692:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
1693:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
1694:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
1695:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
1696:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1, 2, 3, 4, 5, 7) For ADC channel read back from ADC register,
1697:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      comparison with internal channel parameter to be done
1698:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      using helper macro @ref __LL_ADC_CHANNEL_INTERNAL_TO_EXTERNAL().
1699:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1700:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_DECIMAL_NB_TO_CHANNEL(__DECIMAL_NB__)                                             
1701:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__DECIMAL_NB__) <= 9UL)                                                                       
1702:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ? (                                                                                             
1703:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__DECIMAL_NB__) << ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS)                             |     
1704:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (ADC_AWD2CR_AWD2CH_0 << (__DECIMAL_NB__))                                             |     
1705:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (ADC_SMPR1_REGOFFSET | (((3UL * (__DECIMAL_NB__))) << ADC_CHANNEL_SMPx_BITOFFSET_POS))      
1706:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****      )                                                                                             
1707:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    :                                                                                               
1708:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (                                                                                               
1709:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__DECIMAL_NB__) << ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS)                                   
1710:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (ADC_AWD2CR_AWD2CH_0 << (__DECIMAL_NB__))                                                   
1711:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (ADC_SMPR2_REGOFFSET | (((3UL * ((__DECIMAL_NB__) - 10UL))) << ADC_CHANNEL_SMPx_BITOFFSET_PO
1712:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                                               
1713:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
1714:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1715:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1716:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to determine whether the selected channel
1717:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         corresponds to literal definitions of driver.
1718:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The different literal definitions of ADC channels are:
1719:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC internal channel:
1720:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           LL_ADC_CHANNEL_VREFINT, LL_ADC_CHANNEL_TEMPSENSOR, ...
1721:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC external channel (channel connected to a GPIO pin):
1722:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           LL_ADC_CHANNEL_1, LL_ADC_CHANNEL_2, ...
1723:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The channel parameter must be a value defined from literal
1724:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         definition of a ADC internal channel (LL_ADC_CHANNEL_VREFINT,
1725:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         LL_ADC_CHANNEL_TEMPSENSOR, ...),
1726:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC external channel (LL_ADC_CHANNEL_1, LL_ADC_CHANNEL_2, ...),
1727:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         must not be a value from functions where a channel number is
1728:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         returned from ADC registers,
1729:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         because internal and external channels share the same channel
1730:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         number in ADC registers. The differentiation is made only with
1731:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         parameters definitions of driver.
1732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __CHANNEL__ This parameter can be one of the following values:
1733:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
1734:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
1735:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
1736:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
1737:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
1738:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
1739:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
1740:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
1741:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
1742:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
1743:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
1744:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
1745:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
1746:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
1747:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
1748:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
1749:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
1750:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
1751:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
1752:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
1753:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
1754:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
1755:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
1756:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
1757:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
1758:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
1759:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
1760:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
1761:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
1762:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
1763:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
1764:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
1765:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
1766:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
1767:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
1768:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
1769:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
1770:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
1771:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
1772:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
1773:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
1774:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value "0" if the channel corresponds to a parameter definition of a ADC external channe
1775:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Value "1" if the channel corresponds to a parameter definition of a ADC internal channe
1776:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1777:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_IS_CHANNEL_INTERNAL(__CHANNEL__)                              \
1778:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__CHANNEL__) & ADC_CHANNEL_ID_INTERNAL_CH_MASK) != 0UL)
1779:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1780:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1781:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to convert a channel defined from parameter
1782:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         definition of a ADC internal channel (LL_ADC_CHANNEL_VREFINT,
1783:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         LL_ADC_CHANNEL_TEMPSENSOR, ...),
1784:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         to its equivalent parameter definition of a ADC external channel
1785:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (LL_ADC_CHANNEL_1, LL_ADC_CHANNEL_2, ...).
1786:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The channel parameter can be, additionally to a value
1787:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         defined from parameter definition of a ADC internal channel
1788:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (LL_ADC_CHANNEL_VREFINT, LL_ADC_CHANNEL_TEMPSENSOR, ...),
1789:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a value defined from parameter definition of
1790:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC external channel (LL_ADC_CHANNEL_1, LL_ADC_CHANNEL_2, ...)
1791:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or a value from functions where a channel number is returned
1792:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         from ADC registers.
1793:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __CHANNEL__ This parameter can be one of the following values:
1794:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
1795:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
1796:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
1797:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
1798:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
1799:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
1800:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
1801:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
1802:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
1803:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
1804:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
1805:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
1806:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
1807:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
1808:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
1809:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
1810:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
1811:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
1812:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
1813:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
1814:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
1815:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
1816:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
1817:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
1818:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
1819:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
1820:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
1821:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
1822:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
1823:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
1824:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
1825:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
1826:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
1827:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
1828:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
1829:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
1830:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
1831:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
1832:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
1833:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
1834:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
1835:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
1836:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
1837:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1
1838:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2
1839:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3
1840:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4
1841:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5
1842:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
1843:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
1844:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
1845:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
1846:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
1847:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
1848:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
1849:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
1850:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
1851:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
1852:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
1853:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
1854:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
1855:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1856:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CHANNEL_INTERNAL_TO_EXTERNAL(__CHANNEL__)                     \
1857:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((__CHANNEL__) & ~ADC_CHANNEL_ID_INTERNAL_CH_MASK)
1858:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1859:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1860:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to determine whether the internal channel
1861:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         selected is available on the ADC instance selected.
1862:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The channel parameter must be a value defined from parameter
1863:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         definition of a ADC internal channel (LL_ADC_CHANNEL_VREFINT,
1864:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         LL_ADC_CHANNEL_TEMPSENSOR, ...),
1865:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         must not be a value defined from parameter definition of
1866:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC external channel (LL_ADC_CHANNEL_1, LL_ADC_CHANNEL_2, ...)
1867:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or a value from functions where a channel number is
1868:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         returned from ADC registers,
1869:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         because internal and external channels share the same channel
1870:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         number in ADC registers. The differentiation is made only with
1871:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         parameters definitions of driver.
1872:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_INSTANCE__ ADC instance
1873:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __CHANNEL__ This parameter can be one of the following values:
1874:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
1875:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
1876:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
1877:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
1878:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
1879:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
1880:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
1881:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
1882:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
1883:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
1884:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
1885:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
1886:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
1887:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
1888:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
1889:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
1890:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
1891:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
1892:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
1893:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
1894:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value "0" if the internal channel selected is not available on the ADC instance selecte
1895:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Value "1" if the internal channel selected is available on the ADC instance selected.
1896:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
1897:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(STM32G474xx) || defined(STM32G484xx) || defined(STM32G473xx) || defined(STM32G483xx)
1898:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_IS_CHANNEL_INTERNAL_AVAILABLE(__ADC_INSTANCE__, __CHANNEL__)  \
1899:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((((__ADC_INSTANCE__) == ADC1)                                               \
1900:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1901:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP1)         ||                    \
1902:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_TEMPSENSOR_ADC1) ||                    \
1903:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VBAT)            ||                    \
1904:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VREFINT)                               \
1905:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1906:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1907:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ||                                                                          \
1908:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__ADC_INSTANCE__) == ADC2)                                               \
1909:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1910:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP2)         ||                    \
1911:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP3_ADC2)                          \
1912:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1913:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1914:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ||                                                                          \
1915:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__ADC_INSTANCE__) == ADC3)                                               \
1916:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1917:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP3_ADC3)    ||                    \
1918:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VBAT)            ||                    \
1919:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VREFINT)                               \
1920:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1921:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1922:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ||                                                                          \
1923:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__ADC_INSTANCE__) == ADC4)                                               \
1924:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1925:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP6)         ||                    \
1926:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VREFINT)                               \
1927:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1928:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1929:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ||                                                                          \
1930:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__ADC_INSTANCE__) == ADC5)                                               \
1931:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1932:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP5)         ||                    \
1933:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_TEMPSENSOR_ADC5) ||                    \
1934:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP4)         ||                    \
1935:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VBAT)            ||                    \
1936:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VREFINT)                               \
1937:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1938:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1939:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
1940:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #elif defined(STM32G471xx)
1941:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_IS_CHANNEL_INTERNAL_AVAILABLE(__ADC_INSTANCE__, __CHANNEL__)  \
1942:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((((__ADC_INSTANCE__) == ADC1)                                               \
1943:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1944:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP1)         ||                    \
1945:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_TEMPSENSOR_ADC1) ||                    \
1946:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VBAT)            ||                    \
1947:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VREFINT)                               \
1948:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1949:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1950:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ||                                                                          \
1951:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__ADC_INSTANCE__) == ADC2)                                               \
1952:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1953:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP2)         ||                    \
1954:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP3_ADC2)                          \
1955:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1956:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ||                                                                          \
1958:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__ADC_INSTANCE__) == ADC3)                                               \
1959:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1960:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP3_ADC3)    ||                    \
1961:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VBAT)            ||                    \
1962:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VREFINT)                               \
1963:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1964:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1965:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
1966:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #elif defined(STM32GBK1CB) || defined(STM32G431xx) || defined(STM32G441xx)
1967:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_IS_CHANNEL_INTERNAL_AVAILABLE(__ADC_INSTANCE__, __CHANNEL__)  \
1968:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((((__ADC_INSTANCE__) == ADC1)                                               \
1969:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1970:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP1)         ||                    \
1971:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_TEMPSENSOR_ADC1) ||                    \
1972:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VBAT)            ||                    \
1973:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VREFINT)                               \
1974:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1975:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1976:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ||                                                                          \
1977:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__ADC_INSTANCE__) == ADC2)                                               \
1978:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     &&(                                                                        \
1979:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP2)         ||                    \
1980:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        ((__CHANNEL__) == LL_ADC_CHANNEL_VOPAMP3_ADC2)                          \
1981:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
1982:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    )                                                                           \
1983:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
1984:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
1985:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
1986:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
1987:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to define ADC analog watchdog parameter:
1988:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         define a single channel to monitor with analog watchdog
1989:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         from sequencer channel and groups definition.
1990:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To be used with function @ref LL_ADC_SetAnalogWDMonitChannels().
1991:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example:
1992:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           LL_ADC_SetAnalogWDMonitChannels(
1993:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC1, LL_ADC_AWD1,
1994:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             __LL_ADC_ANALOGWD_CHANNEL_GROUP(LL_ADC_CHANNEL4, LL_ADC_GROUP_REGULAR))
1995:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __CHANNEL__ This parameter can be one of the following values:
1996:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
1997:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
1998:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
1999:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
2000:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
2001:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
2002:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
2003:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
2004:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
2005:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
2006:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
2007:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
2008:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
2009:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
2010:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
2011:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
2012:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
2013:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
2014:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
2015:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
2016:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
2017:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
2018:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
2019:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
2020:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
2021:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
2022:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
2023:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
2024:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
2025:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
2026:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
2027:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
2028:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
2029:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
2030:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
2031:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
2032:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
2033:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
2034:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
2035:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
2036:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
2037:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1, 2, 3, 4, 5, 7) For ADC channel read back from ADC register,
2038:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      comparison with internal channel parameter to be done
2039:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      using helper macro @ref __LL_ADC_CHANNEL_INTERNAL_TO_EXTERNAL().
2040:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __GROUP__ This parameter can be one of the following values:
2041:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_GROUP_REGULAR
2042:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_GROUP_INJECTED
2043:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_GROUP_REGULAR_INJECTED
2044:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
2045:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_DISABLE
2046:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_REG        (0)
2047:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_INJ        (0)
2048:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_REG_INJ
2049:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_REG           (0)
2050:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_INJ           (0)
2051:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_REG_INJ
2052:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_REG           (0)
2053:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_INJ           (0)
2054:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_REG_INJ
2055:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_REG           (0)
2056:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_INJ           (0)
2057:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_REG_INJ
2058:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_REG           (0)
2059:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_INJ           (0)
2060:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_REG_INJ
2061:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_REG           (0)
2062:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_INJ           (0)
2063:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_REG_INJ
2064:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_REG           (0)
2065:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_INJ           (0)
2066:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_REG_INJ
2067:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_REG           (0)
2068:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_INJ           (0)
2069:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_REG_INJ
2070:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_REG           (0)
2071:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_INJ           (0)
2072:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_REG_INJ
2073:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_REG           (0)
2074:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_INJ           (0)
2075:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_REG_INJ
2076:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_REG           (0)
2077:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_INJ           (0)
2078:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_REG_INJ
2079:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_REG          (0)
2080:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_INJ          (0)
2081:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_REG_INJ
2082:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_REG          (0)
2083:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_INJ          (0)
2084:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_REG_INJ
2085:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_REG          (0)
2086:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_INJ          (0)
2087:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_REG_INJ
2088:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_REG          (0)
2089:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_INJ          (0)
2090:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_REG_INJ
2091:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_REG          (0)
2092:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_INJ          (0)
2093:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_REG_INJ
2094:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_REG          (0)
2095:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_INJ          (0)
2096:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_REG_INJ
2097:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_REG          (0)
2098:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_INJ          (0)
2099:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_REG_INJ
2100:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_REG          (0)
2101:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_INJ          (0)
2102:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_REG_INJ
2103:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_REG          (0)
2104:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_INJ          (0)
2105:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_REG_INJ
2106:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VREFINT_REG          (0)
2107:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VREFINT_INJ          (0)
2108:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VREFINT_REG_INJ
2109:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC1_REG  (0)(1)
2110:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC1_INJ  (0)(1)
2111:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC1_REG_INJ (1)
2112:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC5_REG  (0)(5)
2113:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC5_INJ  (0)(5)
2114:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC5_REG_INJ (5)
2115:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VBAT_REG             (0)(6)
2116:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VBAT_INJ             (0)(6)
2117:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VBAT_REG_INJ            (6)
2118:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP1_REG          (0)(1)
2119:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP1_INJ          (0)(1)
2120:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP1_REG_INJ         (1)
2121:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP2_REG          (0)(2)
2122:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP2_INJ          (0)(2)
2123:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP2_REG_INJ         (2)
2124:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC2_REG     (0)(2)
2125:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC2_INJ     (0)(2)
2126:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC2_REG_INJ    (2)
2127:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC3_REG     (0)(3)
2128:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC3_INJ     (0)(3)
2129:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC3_REG_INJ    (3)
2130:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP4_REG          (0)(5)
2131:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP4_INJ          (0)(5)
2132:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP4_REG_INJ         (5)
2133:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP5_REG          (0)(5)
2134:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP5_INJ          (0)(5)
2135:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP5_REG_INJ         (5)
2136:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP6_REG          (0)(4)
2137:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP6_INJ          (0)(4)
2138:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP6_REG_INJ         (4)
2139:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
2140:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (0) On STM32G4, parameter available only on analog watchdog number: AWD1.\n
2141:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
2142:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
2143:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
2144:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
2145:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
2146:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
2147:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
2148:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
2149:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2150:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_ANALOGWD_CHANNEL_GROUP(__CHANNEL__, __GROUP__)                                    
2151:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__GROUP__) == LL_ADC_GROUP_REGULAR)                                                           
2152:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ? (((__CHANNEL__) & ADC_CHANNEL_ID_MASK) | ADC_CFGR_AWD1EN | ADC_CFGR_AWD1SGL)                  
2153:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    :                                                                                               
2154:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ((__GROUP__) == LL_ADC_GROUP_INJECTED)                                                          
2155:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ? (((__CHANNEL__) & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JAWD1EN | ADC_CFGR_AWD1SGL)                 
2156:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    :                                                                                               
2157:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    (((__CHANNEL__) & ADC_CHANNEL_ID_MASK) | ADC_CFGR_JAWD1EN | ADC_CFGR_AWD1EN | ADC_CFGR_AWD1SGL) 
2158:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2159:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2160:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2161:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to set the value of ADC analog watchdog threshold high
2162:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or low in function of ADC resolution, when ADC resolution is
2163:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         different of 12 bits.
2164:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To be used with function @ref LL_ADC_ConfigAnalogWDThresholds()
2165:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or @ref LL_ADC_SetAnalogWDThresholds().
2166:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example, with a ADC resolution of 8 bits, to set the value of
2167:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         analog watchdog threshold high (on 8 bits):
2168:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           LL_ADC_SetAnalogWDThresholds
2169:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *            (< ADCx param >,
2170:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             __LL_ADC_ANALOGWD_SET_THRESHOLD_RESOLUTION(LL_ADC_RESOLUTION_8B, <threshold_value_8
2171:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *            );
2172:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION__ This parameter can be one of the following values:
2173:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2174:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2175:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2176:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2177:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __AWD_THRESHOLD__ Value between Min_Data=0x000 and Max_Data=0xFFF
2178:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0xFFF
2179:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2180:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_ANALOGWD_SET_THRESHOLD_RESOLUTION(__ADC_RESOLUTION__, __AWD_THRESHOLD__) \
2181:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((__AWD_THRESHOLD__) << ((__ADC_RESOLUTION__) >> (ADC_CFGR_RES_BITOFFSET_POS - 1U )))
2182:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2183:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2184:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to get the value of ADC analog watchdog threshold high
2185:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or low in function of ADC resolution, when ADC resolution is
2186:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         different of 12 bits.
2187:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To be used with function @ref LL_ADC_GetAnalogWDThresholds().
2188:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example, with a ADC resolution of 8 bits, to get the value of
2189:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         analog watchdog threshold high (on 8 bits):
2190:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           < threshold_value_6_bits > = __LL_ADC_ANALOGWD_GET_THRESHOLD_RESOLUTION
2191:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *            (LL_ADC_RESOLUTION_8B,
2192:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_GetAnalogWDThresholds(<ADCx param>, LL_ADC_AWD_THRESHOLD_HIGH)
2193:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *            );
2194:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION__ This parameter can be one of the following values:
2195:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2196:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2197:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2198:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2199:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __AWD_THRESHOLD_12_BITS__ Value between Min_Data=0x000 and Max_Data=0xFFF
2200:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0xFFF
2201:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2202:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_ANALOGWD_GET_THRESHOLD_RESOLUTION(__ADC_RESOLUTION__, __AWD_THRESHOLD_12_BITS__) \
2203:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((__AWD_THRESHOLD_12_BITS__) >> ((__ADC_RESOLUTION__) >> (ADC_CFGR_RES_BITOFFSET_POS - 1U )))
2204:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2205:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2206:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to get the ADC analog watchdog threshold high
2207:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or low from raw value containing both thresholds concatenated.
2208:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To be used with function @ref LL_ADC_GetAnalogWDThresholds().
2209:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example, to get analog watchdog threshold high from the register raw value:
2210:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           __LL_ADC_ANALOGWD_THRESHOLDS_HIGH_LOW(LL_ADC_AWD_THRESHOLD_HIGH, <raw_value_with_both
2211:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __AWD_THRESHOLD_TYPE__ This parameter can be one of the following values:
2212:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_THRESHOLD_HIGH
2213:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_THRESHOLD_LOW
2214:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __AWD_THRESHOLDS__ Value between Min_Data=0x00000000 and Max_Data=0xFFFFFFFF
2215:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0xFFF
2216:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2217:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_ANALOGWD_THRESHOLDS_HIGH_LOW(__AWD_THRESHOLD_TYPE__, __AWD_THRESHOLDS__)       \
2218:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__AWD_THRESHOLDS__) >> (((__AWD_THRESHOLD_TYPE__) & ADC_AWD_TRX_BIT_HIGH_MASK) >> ADC_AWD_TRX_
2219:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2220:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2221:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to set the ADC calibration value with both single ended
2222:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and differential modes calibration factors concatenated.
2223:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To be used with function @ref LL_ADC_SetCalibrationFactor().
2224:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example, to set calibration factors single ended to 0x55
2225:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and differential ended to 0x2A:
2226:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           LL_ADC_SetCalibrationFactor(
2227:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC1,
2228:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             __LL_ADC_CALIB_FACTOR_SINGLE_DIFF(0x55, 0x2A))
2229:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __CALIB_FACTOR_SINGLE_ENDED__ Value between Min_Data=0x00 and Max_Data=0x7F
2230:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __CALIB_FACTOR_DIFFERENTIAL__ Value between Min_Data=0x00 and Max_Data=0x7F
2231:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x00000000 and Max_Data=0xFFFFFFFF
2232:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2233:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CALIB_FACTOR_SINGLE_DIFF(__CALIB_FACTOR_SINGLE_ENDED__, __CALIB_FACTOR_DIFFERENTIA
2234:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__CALIB_FACTOR_DIFFERENTIAL__) << ADC_CALFACT_CALFACT_D_Pos) | (__CALIB_FACTOR_SINGLE_ENDED__)
2235:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2236:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
2237:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2238:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to get the ADC multimode conversion data of ADC master
2239:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or ADC slave from raw value with both ADC conversion data concatenated.
2240:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This macro is intended to be used when multimode transfer by DMA
2241:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is enabled: refer to function @ref LL_ADC_SetMultiDMATransfer().
2242:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         In this case the transferred data need to processed with this macro
2243:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         to separate the conversion data of ADC master and ADC slave.
2244:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_MULTI_MASTER_SLAVE__ This parameter can be one of the following values:
2245:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_MASTER
2246:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_SLAVE
2247:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_MULTI_CONV_DATA__ Value between Min_Data=0x000 and Max_Data=0xFFF
2248:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0xFFF
2249:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2250:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_MULTI_CONV_DATA_MASTER_SLAVE(__ADC_MULTI_MASTER_SLAVE__, __ADC_MULTI_CONV_DATA__) 
2251:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__ADC_MULTI_CONV_DATA__) >> ((ADC_CDR_RDATA_SLV_Pos) & ~(__ADC_MULTI_MASTER_SLAVE__))) & ADC_C
2252:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
2253:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2254:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
2255:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2256:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to select, from a ADC instance, to which ADC instance
2257:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         it has a dependence in multimode (ADC master of the corresponding
2258:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC common instance).
2259:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of device with multimode available and a mix of
2260:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instances compliant and not compliant with multimode feature,
2261:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instances not compliant with multimode feature are
2262:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         considered as master instances (do not depend to
2263:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         any other ADC instance).
2264:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADCx__ ADC instance
2265:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval __ADCx__ ADC instance master of the corresponding ADC common instance
2266:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2267:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC5)
2268:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_MULTI_INSTANCE_MASTER(__ADCx__) \
2269:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ( ( ((__ADCx__) == ADC2)                                                     \
2270:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     )?                                                                         \
2271:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     (ADC1)                                                                     \
2272:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     :                                                                          \
2273:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     ( ( ((__ADCx__) == ADC4)                                                   \
2274:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )?                                                                       \
2275:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       (ADC3)                                                                   \
2276:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       :                                                                        \
2277:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       (__ADCx__)                                                               \
2278:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     )                                                                          \
2279:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2280:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #else
2281:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_MULTI_INSTANCE_MASTER(__ADCx__) \
2282:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ( ( ((__ADCx__) == ADC2)                                                     \
2283:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     )?                                                                         \
2284:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     (ADC1)                                                                     \
2285:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     :                                                                          \
2286:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     (__ADCx__)                                                                 \
2287:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2288:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
2289:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
2290:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2291:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2292:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to select the ADC common instance
2293:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         to which is belonging the selected ADC instance.
2294:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   ADC common register instance can be used for:
2295:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Set parameters common to several ADC instances
2296:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Multimode (for devices with several ADC instances)
2297:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to functions having argument "ADCxy_COMMON" as parameter.
2298:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADCx__ ADC instance
2299:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval ADC common register instance
2300:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2301:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC345_COMMON)
2302:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_COMMON_INSTANCE(__ADCx__)                                     \
2303:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((((__ADCx__) == ADC1) || ((__ADCx__) == ADC2))                              \
2304:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     ? (                                                                        \
2305:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (ADC12_COMMON)                                                          \
2306:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
2307:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       :                                                                        \
2308:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       (                                                                        \
2309:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (ADC345_COMMON)                                                         \
2310:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
2311:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2312:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #else
2313:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_COMMON_INSTANCE(__ADCx__)  (ADC12_COMMON)
2314:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
2315:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2316:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to check if all ADC instances sharing the same
2317:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC common instance are disabled.
2318:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This check is required by functions with setting conditioned to
2319:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
2320:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         All ADC instances of the ADC common group must be disabled.
2321:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to functions having argument "ADCxy_COMMON" as parameter.
2322:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On devices with only 1 ADC common instance, parameter of this macro
2323:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is useless and can be ignored (parameter kept for compatibility
2324:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         with devices featuring several ADC common instances).
2325:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADCXY_COMMON__ ADC common instance
2326:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
2327:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value "0" if all ADC instances sharing the same ADC common instance
2328:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         are disabled.
2329:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Value "1" if at least one ADC instance sharing the same ADC common instance
2330:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is enabled.
2331:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2332:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC345_COMMON)
2333:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC4) &&  defined(ADC5)
2334:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE(__ADCXY_COMMON__)              \
2335:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__ADCXY_COMMON__) == ADC12_COMMON)                                        \
2336:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     ? (                                                                        \
2337:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (LL_ADC_IsEnabled(ADC1) |                                               \
2338:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         LL_ADC_IsEnabled(ADC2)  )                                              \
2339:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
2340:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       :                                                                        \
2341:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       (                                                                        \
2342:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (LL_ADC_IsEnabled(ADC3) |                                               \
2343:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         LL_ADC_IsEnabled(ADC4) |                                               \
2344:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         LL_ADC_IsEnabled(ADC5)  )                                              \
2345:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
2346:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2347:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #else
2348:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE(__ADCXY_COMMON__)              \
2349:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__ADCXY_COMMON__) == ADC12_COMMON)                                        \
2350:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     ? (                                                                        \
2351:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (LL_ADC_IsEnabled(ADC1) |                                               \
2352:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         LL_ADC_IsEnabled(ADC2)  )                                              \
2353:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
2354:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       :                                                                        \
2355:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       (LL_ADC_IsEnabled(ADC3))                                                 \
2356:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2357:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif /* ADC4 && ADC5 */
2358:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #else
2359:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE(__ADCXY_COMMON__)              \
2360:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (LL_ADC_IsEnabled(ADC1) | LL_ADC_IsEnabled(ADC2))
2361:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
2362:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2363:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2364:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to define the ADC conversion data full-scale digital
2365:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         value corresponding to the selected ADC resolution.
2366:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   ADC conversion data full-scale corresponds to voltage range
2367:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         determined by analog voltage references Vref+ and Vref-
2368:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (refer to reference manual).
2369:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION__ This parameter can be one of the following values:
2370:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2371:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2372:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2373:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2374:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval ADC conversion data full-scale digital value (unit: digital value of ADC conversion dat
2375:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2376:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_DIGITAL_SCALE(__ADC_RESOLUTION__)                             \
2377:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (0xFFFUL >> ((__ADC_RESOLUTION__) >> (ADC_CFGR_RES_BITOFFSET_POS - 1UL)))
2378:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2379:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2380:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to convert the ADC conversion data from
2381:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a resolution to another resolution.
2382:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __DATA__ ADC conversion data to be converted
2383:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION_CURRENT__ Resolution of the data to be converted
2384:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This parameter can be one of the following values:
2385:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2386:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2387:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2388:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2389:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION_TARGET__ Resolution of the data after conversion
2390:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This parameter can be one of the following values:
2391:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2392:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2393:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2394:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2395:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval ADC conversion data to the requested resolution
2396:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2397:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CONVERT_DATA_RESOLUTION(__DATA__,\
2398:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                          __ADC_RESOLUTION_CURRENT__,\
2399:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                          __ADC_RESOLUTION_TARGET__)            \
2400:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((__DATA__)                                                                 \
2401:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     << ((__ADC_RESOLUTION_CURRENT__) >> (ADC_CFGR_RES_BITOFFSET_POS - 1UL)))   \
2402:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    >> ((__ADC_RESOLUTION_TARGET__) >> (ADC_CFGR_RES_BITOFFSET_POS - 1UL))      \
2403:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2404:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2405:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2406:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to calculate the voltage (unit: mVolt)
2407:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         corresponding to a ADC conversion data (unit: digital value).
2408:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Analog reference voltage (Vref+) must be either known from
2409:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         user board environment or can be calculated using ADC measurement
2410:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and ADC helper macro @ref __LL_ADC_CALC_VREFANALOG_VOLTAGE().
2411:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __VREFANALOG_VOLTAGE__ Analog reference voltage (unit: mV)
2412:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_DATA__ ADC conversion data (resolution 12 bits)
2413:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                       (unit: digital value).
2414:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION__ This parameter can be one of the following values:
2415:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2416:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2417:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2418:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2419:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval ADC conversion data equivalent voltage value (unit: mVolt)
2420:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2421:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CALC_DATA_TO_VOLTAGE(__VREFANALOG_VOLTAGE__,\
2422:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                       __ADC_DATA__,\
2423:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                       __ADC_RESOLUTION__)                      \
2424:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((__ADC_DATA__) * (__VREFANALOG_VOLTAGE__)                                   \
2425:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    / __LL_ADC_DIGITAL_SCALE(__ADC_RESOLUTION__)                                \
2426:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2427:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2428:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2429:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to calculate analog reference voltage (Vref+)
2430:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (unit: mVolt) from ADC conversion data of internal voltage
2431:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         reference VrefInt.
2432:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Computation is using VrefInt calibration value
2433:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         stored in system memory for each device during production.
2434:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This voltage depends on user board environment: voltage level
2435:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         connected to pin Vref+.
2436:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         On devices with small package, the pin Vref+ is not present
2437:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and internally bonded to pin Vdda.
2438:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, calibration data of internal voltage reference
2439:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         VrefInt corresponds to a resolution of 12 bits,
2440:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         this is the recommended ADC resolution to convert voltage of
2441:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal voltage reference VrefInt.
2442:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Otherwise, this macro performs the processing to scale
2443:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversion data to 12 bits.
2444:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __VREFINT_ADC_DATA__ ADC conversion data (resolution 12 bits)
2445:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of internal voltage reference VrefInt (unit: digital value).
2446:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION__ This parameter can be one of the following values:
2447:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2448:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2449:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2450:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2451:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Analog reference voltage (unit: mV)
2452:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2453:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CALC_VREFANALOG_VOLTAGE(__VREFINT_ADC_DATA__,\
2454:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                          __ADC_RESOLUTION__)                   \
2455:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((uint32_t)(*VREFINT_CAL_ADDR) * VREFINT_CAL_VREF)                          \
2456:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    / __LL_ADC_CONVERT_DATA_RESOLUTION((__VREFINT_ADC_DATA__),                  \
2457:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                       (__ADC_RESOLUTION__),                    \
2458:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                       LL_ADC_RESOLUTION_12B))
2459:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2460:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2461:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to calculate the temperature (unit: degree Celsius)
2462:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         from ADC conversion data of internal temperature sensor.
2463:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Computation is using temperature sensor calibration values
2464:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         stored in system memory for each device during production.
2465:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Calculation formula:
2466:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Temperature = ((TS_ADC_DATA - TS_CAL1)
2467:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                           * (TS_CAL2_TEMP - TS_CAL1_TEMP))
2468:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                         / (TS_CAL2 - TS_CAL1) + TS_CAL1_TEMP
2469:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           with TS_ADC_DATA = temperature sensor raw data measured by ADC
2470:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                Avg_Slope = (TS_CAL2 - TS_CAL1)
2471:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                            / (TS_CAL2_TEMP - TS_CAL1_TEMP)
2472:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                TS_CAL1   = equivalent TS_ADC_DATA at temperature
2473:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                            TEMP_DEGC_CAL1 (calibrated in factory)
2474:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                TS_CAL2   = equivalent TS_ADC_DATA at temperature
2475:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                            TEMP_DEGC_CAL2 (calibrated in factory)
2476:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Caution: Calculation relevancy under reserve that calibration
2477:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  parameters are correct (address and data).
2478:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  To calculate temperature using temperature sensor
2479:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  datasheet typical values (generic values less, therefore
2480:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  less accurate than calibrated values),
2481:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  use helper macro @ref __LL_ADC_CALC_TEMPERATURE_TYP_PARAMS().
2482:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   As calculation input, the analog reference voltage (Vref+) must be
2483:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         defined as it impacts the ADC LSB equivalent voltage.
2484:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Analog reference voltage (Vref+) must be either known from
2485:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         user board environment or can be calculated using ADC measurement
2486:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and ADC helper macro @ref __LL_ADC_CALC_VREFANALOG_VOLTAGE().
2487:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, calibration data of temperature sensor
2488:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         corresponds to a resolution of 12 bits,
2489:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         this is the recommended ADC resolution to convert voltage of
2490:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         temperature sensor.
2491:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Otherwise, this macro performs the processing to scale
2492:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversion data to 12 bits.
2493:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __VREFANALOG_VOLTAGE__  Analog reference voltage (unit: mV)
2494:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __TEMPSENSOR_ADC_DATA__ ADC conversion data of internal
2495:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                 temperature sensor (unit: digital value).
2496:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION__      ADC resolution at which internal temperature
2497:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                 sensor voltage has been measured.
2498:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This parameter can be one of the following values:
2499:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2500:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2501:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2502:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2503:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Temperature (unit: degree Celsius)
2504:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2505:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CALC_TEMPERATURE(__VREFANALOG_VOLTAGE__,\
2506:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                   __TEMPSENSOR_ADC_DATA__,\
2507:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                   __ADC_RESOLUTION__)                              \
2508:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (((( ((int32_t)((__LL_ADC_CONVERT_DATA_RESOLUTION((__TEMPSENSOR_ADC_DATA__),     \
2509:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                     (__ADC_RESOLUTION__),          \
2510:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                     LL_ADC_RESOLUTION_12B)         \
2511:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                    * (__VREFANALOG_VOLTAGE__))                                     \
2512:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                   / TEMPSENSOR_CAL_VREFANALOG)                                     \
2513:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         - (int32_t) *TEMPSENSOR_CAL1_ADDR)                                         \
2514:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****      ) * (int32_t)(TEMPSENSOR_CAL2_TEMP - TEMPSENSOR_CAL1_TEMP)                    \
2515:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     ) / (int32_t)((int32_t)*TEMPSENSOR_CAL2_ADDR - (int32_t)*TEMPSENSOR_CAL1_ADDR) \
2516:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ) + TEMPSENSOR_CAL1_TEMP                                                        \
2517:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2518:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2519:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2520:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Helper macro to calculate the temperature (unit: degree Celsius)
2521:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         from ADC conversion data of internal temperature sensor.
2522:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Computation is using temperature sensor typical values
2523:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (refer to device datasheet).
2524:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Calculation formula:
2525:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Temperature = (TS_TYP_CALx_VOLT(uV) - TS_ADC_DATA * Conversion_uV)
2526:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                         / Avg_Slope + CALx_TEMP
2527:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           with TS_ADC_DATA      = temperature sensor raw data measured by ADC
2528:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                   (unit: digital value)
2529:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                Avg_Slope        = temperature sensor slope
2530:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                   (unit: uV/Degree Celsius)
2531:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                TS_TYP_CALx_VOLT = temperature sensor digital value at
2532:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                   temperature CALx_TEMP (unit: mV)
2533:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Caution: Calculation relevancy under reserve the temperature sensor
2534:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  of the current device has characteristics in line with
2535:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  datasheet typical values.
2536:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  If temperature sensor calibration values are available on
2537:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  on this device (presence of macro __LL_ADC_CALC_TEMPERATURE()),
2538:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  temperature calculation will be more accurate using
2539:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                  helper macro @ref __LL_ADC_CALC_TEMPERATURE().
2540:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   As calculation input, the analog reference voltage (Vref+) must be
2541:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         defined as it impacts the ADC LSB equivalent voltage.
2542:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Analog reference voltage (Vref+) must be either known from
2543:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         user board environment or can be calculated using ADC measurement
2544:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and ADC helper macro @ref __LL_ADC_CALC_VREFANALOG_VOLTAGE().
2545:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   ADC measurement data must correspond to a resolution of 12 bits
2546:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (full scale digital value 4095). If not the case, the data must be
2547:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         preliminarily rescaled to an equivalent resolution of 12 bits.
2548:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __TEMPSENSOR_TYP_AVGSLOPE__   Device datasheet data: Temperature sensor slope typical v
2549:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                       On STM32G4, refer to device datasheet parameter "Avg_Slop
2550:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __TEMPSENSOR_TYP_CALX_V__     Device datasheet data: Temperature sensor voltage typical
2551:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                       On STM32G4, refer to device datasheet parameter "V30" (co
2552:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __TEMPSENSOR_CALX_TEMP__      Device datasheet data: Temperature at which temperature s
2553:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __VREFANALOG_VOLTAGE__        Analog voltage reference (Vref+) voltage (unit: mV)
2554:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __TEMPSENSOR_ADC_DATA__       ADC conversion data of internal temperature sensor (unit:
2555:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  __ADC_RESOLUTION__            ADC resolution at which internal temperature sensor volta
2556:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This parameter can be one of the following values:
2557:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2558:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2559:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2560:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2561:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Temperature (unit: degree Celsius)
2562:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2563:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #define __LL_ADC_CALC_TEMPERATURE_TYP_PARAMS(__TEMPSENSOR_TYP_AVGSLOPE__,\
2564:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              __TEMPSENSOR_TYP_CALX_V__,\
2565:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              __TEMPSENSOR_CALX_TEMP__,\
2566:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              __VREFANALOG_VOLTAGE__,\
2567:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              __TEMPSENSOR_ADC_DATA__,\
2568:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                              __ADC_RESOLUTION__)               \
2569:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   ((( (                                                                        \
2570:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (int32_t)((((__TEMPSENSOR_ADC_DATA__) * (__VREFANALOG_VOLTAGE__))       \
2571:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                   / __LL_ADC_DIGITAL_SCALE(__ADC_RESOLUTION__))                \
2572:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                  * 1000UL)                                                     \
2573:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        -                                                                       \
2574:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****        (int32_t)(((__TEMPSENSOR_TYP_CALX_V__))                                 \
2575:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                  * 1000UL)                                                     \
2576:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       )                                                                        \
2577:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     ) / (int32_t)(__TEMPSENSOR_TYP_AVGSLOPE__)                                 \
2578:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****    ) + (int32_t)(__TEMPSENSOR_CALX_TEMP__)                                     \
2579:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   )
2580:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2581:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2582:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
2583:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2584:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2585:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2586:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
2587:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2588:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2589:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2590:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Exported functions --------------------------------------------------------*/
2591:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_Exported_Functions ADC Exported Functions
2592:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
2593:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2594:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2595:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_DMA_Management ADC DMA management
2596:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
2597:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2598:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /* Note: LL ADC functions to set DMA transfer are located into sections of    */
2599:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       configuration of ADC instance, groups and multimode (if available):  */
2600:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /*       @ref LL_ADC_REG_SetDMATransfer(), ...                                */
2601:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2602:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2603:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Function to help to configure DMA transfer from ADC: retrieve the
2604:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC register address from ADC instance and a list of ADC registers
2605:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         intended to be used (most commonly) with DMA transfer.
2606:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   These ADC registers are data registers:
2607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         when ADC conversion data is available in ADC data registers,
2608:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC generates a DMA transfer request.
2609:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This macro is intended to be used with LL DMA driver, refer to
2610:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         function "LL_DMA_ConfigAddresses()".
2611:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example:
2612:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           LL_DMA_ConfigAddresses(DMA1,
2613:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                  LL_DMA_CHANNEL_1,
2614:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                  LL_ADC_DMA_GetRegAddr(ADC1, LL_ADC_DMA_REG_REGULAR_DATA),
2615:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                  (uint32_t)&< array or variable >,
2616:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                                  LL_DMA_DIRECTION_PERIPH_TO_MEMORY);
2617:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with several ADC: in multimode, some devices
2618:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use a different data register outside of ADC instance scope
2619:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (common data register). This macro manages this register difference,
2620:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         only ADC instance has to be set as parameter.
2621:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DR       RDATA          LL_ADC_DMA_GetRegAddr\n
2622:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CDR      RDATA_MST      LL_ADC_DMA_GetRegAddr\n
2623:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CDR      RDATA_SLV      LL_ADC_DMA_GetRegAddr
2624:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2625:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Register This parameter can be one of the following values:
2626:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DMA_REG_REGULAR_DATA
2627:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DMA_REG_REGULAR_DATA_MULTI (1)
2628:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
2629:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) Available on devices with several ADC instances.
2630:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval ADC register address
2631:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2632:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
2633:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_DMA_GetRegAddr(ADC_TypeDef *ADCx, uint32_t Register)
2634:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2635:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register uint32_t data_reg_addr;
2636:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2637:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   if (Register == LL_ADC_DMA_REG_REGULAR_DATA)
2638:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   {
2639:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     /* Retrieve address of register DR */
2640:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     data_reg_addr = (uint32_t) &(ADCx->DR);
2641:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   }
2642:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   else /* (Register == LL_ADC_DMA_REG_REGULAR_DATA_MULTI) */
2643:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   {
2644:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     /* Retrieve address of register CDR */
2645:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     data_reg_addr = (uint32_t) &((__LL_ADC_COMMON_INSTANCE(ADCx))->CDR);
2646:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   }
2647:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2648:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return data_reg_addr;
2649:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2650:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #else
2651:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_DMA_GetRegAddr(ADC_TypeDef *ADCx, uint32_t Register)
2652:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2653:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Prevent unused argument(s) compilation warning */
2654:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (void)(Register);
2655:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2656:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Retrieve address of register DR */
2657:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t) &(ADCx->DR);
2658:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2659:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif
2660:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2661:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2662:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
2663:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2664:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2665:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_ADC_Common Configuration of ADC hierarchical scope: common to
2666:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
2667:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2668:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2669:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2670:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set parameter common to several ADC: Clock source and prescaler.
2671:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, if ADC group injected is used, some
2672:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         clock ratio constraints between ADC clock and AHB clock
2673:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         must be respected.
2674:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to reference manual.
2675:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
2676:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
2677:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         All ADC instances of the ADC common group must be disabled.
2678:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This check can be done with function @ref LL_ADC_IsEnabled() for each
2679:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instance or by using helper macro helper macro
2680:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE().
2681:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      CKMODE         LL_ADC_SetCommonClock\n
2682:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      PRESC          LL_ADC_SetCommonClock
2683:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
2684:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
2685:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  CommonClock This parameter can be one of the following values:
2686:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_SYNC_PCLK_DIV1
2687:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_SYNC_PCLK_DIV2
2688:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_SYNC_PCLK_DIV4
2689:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV1
2690:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV2
2691:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV4
2692:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV6
2693:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV8
2694:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV10
2695:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV12
2696:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV16
2697:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV32
2698:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV64
2699:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV128
2700:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV256
2701:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
2702:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2703:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetCommonClock(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t CommonClock)
2704:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2705:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCxy_COMMON->CCR, ADC_CCR_CKMODE | ADC_CCR_PRESC, CommonClock);
2706:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2707:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2708:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2709:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get parameter common to several ADC: Clock source and prescaler.
2710:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      CKMODE         LL_ADC_GetCommonClock\n
2711:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      PRESC          LL_ADC_GetCommonClock
2712:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
2713:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
2714:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
2715:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_SYNC_PCLK_DIV1
2716:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_SYNC_PCLK_DIV2
2717:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_SYNC_PCLK_DIV4
2718:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV1
2719:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV2
2720:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV4
2721:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV6
2722:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV8
2723:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV10
2724:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV12
2725:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV16
2726:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV32
2727:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV64
2728:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV128
2729:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CLOCK_ASYNC_DIV256
2730:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2731:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetCommonClock(ADC_Common_TypeDef *ADCxy_COMMON)
2732:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2733:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCxy_COMMON->CCR, ADC_CCR_CKMODE | ADC_CCR_PRESC));
2734:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2735:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2736:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2737:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set parameter common to several ADC: measurement path to internal
2738:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         channels (VrefInt, temperature sensor, ...).
2739:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   One or several values can be selected.
2740:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example: (LL_ADC_PATH_INTERNAL_VREFINT |
2741:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                   LL_ADC_PATH_INTERNAL_TEMPSENSOR)
2742:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Stabilization time of measurement path to internal channel:
2743:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         After enabling internal paths, before starting ADC conversion,
2744:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a delay is required for internal voltage reference and
2745:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         temperature sensor stabilization time.
2746:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet.
2747:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to literal @ref LL_ADC_DELAY_VREFINT_STAB_US.
2748:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to literal @ref LL_ADC_DELAY_TEMPSENSOR_STAB_US.
2749:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   ADC internal channel sampling time constraint:
2750:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         For ADC conversion of internal channels,
2751:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a sampling time minimum value is required.
2752:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet.
2753:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      VREFEN         LL_ADC_SetCommonPathInternalCh\n
2754:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      VSENSESEL      LL_ADC_SetCommonPathInternalCh\n
2755:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      VBATSEL        LL_ADC_SetCommonPathInternalCh
2756:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
2757:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
2758:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  PathInternal This parameter can be a combination of the following values:
2759:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_NONE
2760:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_VREFINT
2761:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_TEMPSENSOR
2762:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_VBAT
2763:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
2764:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2765:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetCommonPathInternalCh(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t Path
2766:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2767:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCxy_COMMON->CCR, ADC_CCR_VREFEN | ADC_CCR_VSENSESEL | ADC_CCR_VBATSEL, PathInternal)
2768:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2769:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2770:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2771:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get parameter common to several ADC: measurement path to internal
2772:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         channels (VrefInt, temperature sensor, ...).
2773:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   One or several values can be selected.
2774:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example: (LL_ADC_PATH_INTERNAL_VREFINT |
2775:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                   LL_ADC_PATH_INTERNAL_TEMPSENSOR)
2776:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      VREFEN         LL_ADC_GetCommonPathInternalCh\n
2777:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      VSENSESEL      LL_ADC_GetCommonPathInternalCh\n
2778:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      VBATSEL        LL_ADC_GetCommonPathInternalCh
2779:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
2780:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
2781:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be a combination of the following values:
2782:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_NONE
2783:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_VREFINT
2784:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_TEMPSENSOR
2785:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_PATH_INTERNAL_VBAT
2786:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2787:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetCommonPathInternalCh(ADC_Common_TypeDef *ADCxy_COMMON)
2788:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2789:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCxy_COMMON->CCR, ADC_CCR_VREFEN | ADC_CCR_VSENSESEL | ADC_CCR_VBATSE
2790:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2791:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2792:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2793:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
2794:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2795:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2796:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_ADC_Instance Configuration of ADC hierarchical scope: ADC ins
2797:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
2798:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2799:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2800:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2801:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC calibration factor in the mode single-ended
2802:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or differential (for devices with differential mode available).
2803:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function is intended to set calibration parameters
2804:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without having to perform a new calibration using
2805:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref LL_ADC_StartCalibration().
2806:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with differential mode available:
2807:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Calibration of offset is specific to each of
2808:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         single-ended and differential modes
2809:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (calibration factor must be specified for each of these
2810:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         differential modes, if used afterwards and if the application
2811:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         requires their calibration).
2812:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of setting calibration factors of both modes single ended
2813:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and differential (parameter LL_ADC_BOTH_SINGLE_DIFF_ENDED):
2814:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         both calibration factors must be concatenated.
2815:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         To perform this processing, use helper macro
2816:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_CALIB_FACTOR_SINGLE_DIFF().
2817:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
2818:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
2819:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be enabled, without calibration on going, without conversion
2820:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on going on group regular.
2821:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CALFACT  CALFACT_S      LL_ADC_SetCalibrationFactor\n
2822:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CALFACT  CALFACT_D      LL_ADC_SetCalibrationFactor
2823:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2824:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SingleDiff This parameter can be one of the following values:
2825:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SINGLE_ENDED
2826:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DIFFERENTIAL_ENDED
2827:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_BOTH_SINGLE_DIFF_ENDED
2828:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  CalibrationFactor Value between Min_Data=0x00 and Max_Data=0x7F
2829:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
2830:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2831:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetCalibrationFactor(ADC_TypeDef *ADCx, uint32_t SingleDiff, uint32_t C
2832:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2833:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CALFACT,
2834:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              SingleDiff & ADC_SINGLEDIFF_CALIB_FACTOR_MASK,
2835:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              CalibrationFactor << (((SingleDiff & ADC_SINGLEDIFF_CALIB_F_BIT_D_MASK) >> ADC_SINGLED
2836:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2837:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2838:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2839:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC calibration factor in the mode single-ended
2840:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or differential (for devices with differential mode available).
2841:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Calibration factors are set by hardware after performing
2842:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a calibration run using function @ref LL_ADC_StartCalibration().
2843:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with differential mode available:
2844:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Calibration of offset is specific to each of
2845:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         single-ended and differential modes
2846:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CALFACT  CALFACT_S      LL_ADC_GetCalibrationFactor\n
2847:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CALFACT  CALFACT_D      LL_ADC_GetCalibrationFactor
2848:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2849:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SingleDiff This parameter can be one of the following values:
2850:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SINGLE_ENDED
2851:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DIFFERENTIAL_ENDED
2852:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x7F
2853:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2854:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetCalibrationFactor(ADC_TypeDef *ADCx, uint32_t SingleDiff)
2855:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2856:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Retrieve bits with position in register depending on parameter           */
2857:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* "SingleDiff".                                                            */
2858:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameter used with mask "ADC_SINGLEDIFF_CALIB_FACTOR_MASK" because      */
2859:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* containing other bits reserved for other purpose.                        */
2860:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CALFACT, (SingleDiff & ADC_SINGLEDIFF_CALIB_FACTOR_MASK)) >> ((S
2861:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2862:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2863:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2864:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC resolution.
2865:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to reference manual for alignments formats
2866:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         dependencies to ADC resolutions.
2867:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
2868:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
2869:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
2870:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
2871:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     RES            LL_ADC_SetResolution
2872:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2873:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Resolution This parameter can be one of the following values:
2874:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2875:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2876:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2877:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2878:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
2879:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2880:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetResolution(ADC_TypeDef *ADCx, uint32_t Resolution)
2881:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2882:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_RES, Resolution);
2883:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2884:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2885:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2886:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC resolution.
2887:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to reference manual for alignments formats
2888:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         dependencies to ADC resolutions.
2889:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     RES            LL_ADC_GetResolution
2890:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2891:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
2892:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_12B
2893:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_10B
2894:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_8B
2895:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_RESOLUTION_6B
2896:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2897:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetResolution(ADC_TypeDef *ADCx)
2898:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2899:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_RES));
2900:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2901:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2902:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2903:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC conversion data alignment.
2904:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Refer to reference manual for alignments formats
2905:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         dependencies to ADC resolutions.
2906:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
2907:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
2908:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
2909:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
2910:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     ALIGN          LL_ADC_SetDataAlignment
2911:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2912:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  DataAlignment This parameter can be one of the following values:
2913:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DATA_ALIGN_RIGHT
2914:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DATA_ALIGN_LEFT
2915:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
2916:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2917:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetDataAlignment(ADC_TypeDef *ADCx, uint32_t DataAlignment)
2918:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2919:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_ALIGN, DataAlignment);
2920:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2921:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2922:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2923:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC conversion data alignment.
2924:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Refer to reference manual for alignments formats
2925:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         dependencies to ADC resolutions.
2926:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     ALIGN          LL_ADC_GetDataAlignment
2927:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2928:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
2929:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DATA_ALIGN_RIGHT
2930:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DATA_ALIGN_LEFT
2931:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2932:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetDataAlignment(ADC_TypeDef *ADCx)
2933:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2934:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_ALIGN));
2935:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2936:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2937:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2938:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC low power mode.
2939:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Description of ADC low power modes:
2940:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC low power mode "auto wait": Dynamic low power mode,
2941:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions occurrences are limited to the minimum necessary
2942:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           in order to reduce power consumption.
2943:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           New ADC conversion starts only when the previous
2944:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           unitary conversion data (for ADC group regular)
2945:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           or previous sequence conversions data (for ADC group injected)
2946:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           has been retrieved by user software.
2947:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           In the meantime, ADC remains idle: does not performs any
2948:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           other conversion.
2949:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This mode allows to automatically adapt the ADC conversions
2950:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           triggers to the speed of the software that reads the data.
2951:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Moreover, this avoids risk of overrun for low frequency
2952:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           applications.
2953:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           How to use this low power mode:
2954:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Do not use with interruption or DMA since these modes
2955:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             have to clear immediately the EOC flag to free the
2956:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             IRQ vector sequencer.
2957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Do use with polling: 1. Start conversion,
2958:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             2. Later on, when conversion data is needed: poll for end of
2959:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             conversion  to ensure that conversion is completed and
2960:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             retrieve ADC conversion data. This will trig another
2961:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC conversion start.
2962:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC low power mode "auto power-off" (feature available on
2963:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           this device if parameter LL_ADC_LP_AUTOPOWEROFF is available):
2964:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the ADC automatically powers-off after a conversion and
2965:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           automatically wakes up when a new conversion is triggered
2966:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (with startup time between trigger and start of sampling).
2967:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This feature can be combined with low power mode "auto wait".
2968:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   With ADC low power mode "auto wait", the ADC conversion data read
2969:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is corresponding to previous ADC conversion start, independently
2970:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of delay during which ADC was idle.
2971:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Therefore, the ADC conversion data may be outdated: does not
2972:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         correspond to the current voltage level on the selected
2973:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC channel.
2974:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
2975:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
2976:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
2977:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
2978:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     AUTDLY         LL_ADC_SetLowPowerMode
2979:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
2980:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  LowPowerMode This parameter can be one of the following values:
2981:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_LP_MODE_NONE
2982:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_LP_AUTOWAIT
2983:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
2984:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
2985:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetLowPowerMode(ADC_TypeDef *ADCx, uint32_t LowPowerMode)
2986:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
2987:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_AUTDLY, LowPowerMode);
2988:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
2989:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
2990:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
2991:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC low power mode:
2992:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Description of ADC low power modes:
2993:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC low power mode "auto wait": Dynamic low power mode,
2994:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions occurrences are limited to the minimum necessary
2995:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           in order to reduce power consumption.
2996:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           New ADC conversion starts only when the previous
2997:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           unitary conversion data (for ADC group regular)
2998:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           or previous sequence conversions data (for ADC group injected)
2999:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           has been retrieved by user software.
3000:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           In the meantime, ADC remains idle: does not performs any
3001:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           other conversion.
3002:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This mode allows to automatically adapt the ADC conversions
3003:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           triggers to the speed of the software that reads the data.
3004:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Moreover, this avoids risk of overrun for low frequency
3005:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           applications.
3006:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           How to use this low power mode:
3007:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Do not use with interruption or DMA since these modes
3008:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             have to clear immediately the EOC flag to free the
3009:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             IRQ vector sequencer.
3010:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Do use with polling: 1. Start conversion,
3011:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             2. Later on, when conversion data is needed: poll for end of
3012:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             conversion  to ensure that conversion is completed and
3013:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             retrieve ADC conversion data. This will trig another
3014:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC conversion start.
3015:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC low power mode "auto power-off" (feature available on
3016:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           this device if parameter LL_ADC_LP_AUTOPOWEROFF is available):
3017:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the ADC automatically powers-off after a conversion and
3018:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           automatically wakes up when a new conversion is triggered
3019:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (with startup time between trigger and start of sampling).
3020:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This feature can be combined with low power mode "auto wait".
3021:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   With ADC low power mode "auto wait", the ADC conversion data read
3022:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is corresponding to previous ADC conversion start, independently
3023:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of delay during which ADC was idle.
3024:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Therefore, the ADC conversion data may be outdated: does not
3025:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         correspond to the current voltage level on the selected
3026:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC channel.
3027:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     AUTDLY         LL_ADC_GetLowPowerMode
3028:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3029:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3030:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_LP_MODE_NONE
3031:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_LP_AUTOWAIT
3032:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3033:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetLowPowerMode(ADC_TypeDef *ADCx)
3034:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3035:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_AUTDLY));
3036:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3037:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3038:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3039:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC selected offset number 1, 2, 3 or 4.
3040:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function set the 2 items of offset configuration:
3041:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC channel to which the offset programmed will be applied
3042:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (independently of channel mapped on ADC group regular
3043:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           or group injected)
3044:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Offset level (offset to be subtracted from the raw
3045:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           converted data).
3046:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Caution: Offset format is dependent to ADC resolution:
3047:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         offset has to be left-aligned on bit 11, the LSB (right bits)
3048:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         are set to 0.
3049:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function enables the offset, by default. It can be forced
3050:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         to disable state using function LL_ADC_SetOffsetState().
3051:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If a channel is mapped on several offsets numbers, only the offset
3052:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         with the lowest value is considered for the subtraction.
3053:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3054:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3055:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3056:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
3057:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On STM32G4, some fast channels are available: fast analog inputs
3058:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         coming from GPIO pads (ADC_IN1..5).
3059:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     OFFSET1_CH     LL_ADC_SetOffset\n
3060:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR1     OFFSET1        LL_ADC_SetOffset\n
3061:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR1     OFFSET1_EN     LL_ADC_SetOffset\n
3062:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSET2_CH     LL_ADC_SetOffset\n
3063:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSET2        LL_ADC_SetOffset\n
3064:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSET2_EN     LL_ADC_SetOffset\n
3065:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSET3_CH     LL_ADC_SetOffset\n
3066:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSET3        LL_ADC_SetOffset\n
3067:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSET3_EN     LL_ADC_SetOffset\n
3068:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSET4_CH     LL_ADC_SetOffset\n
3069:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSET4        LL_ADC_SetOffset\n
3070:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSET4_EN     LL_ADC_SetOffset
3071:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3072:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3073:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3074:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3075:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3076:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3077:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Channel This parameter can be one of the following values:
3078:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
3079:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
3080:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
3081:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
3082:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
3083:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
3084:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
3085:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
3086:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
3087:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
3088:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
3089:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
3090:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
3091:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
3092:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
3093:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
3094:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
3095:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
3096:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
3097:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
3098:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
3099:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
3100:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
3101:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
3102:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
3103:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
3104:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
3105:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
3106:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
3107:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
3108:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
3109:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
3110:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
3111:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
3112:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
3113:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
3114:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
3115:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
3116:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
3117:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
3118:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
3119:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  OffsetLevel Value between Min_Data=0x000 and Max_Data=0xFFF
3120:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3121:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3122:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetOffset(ADC_TypeDef *ADCx, uint32_t Offsety, uint32_t Channel, uint32
3123:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3124:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3125:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3126:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
3127:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_OFR1_OFFSET1_EN | ADC_OFR1_OFFSET1_CH | ADC_OFR1_OFFSET1,
3128:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_OFR1_OFFSET1_EN | (Channel & ADC_CHANNEL_ID_NUMBER_MASK) | OffsetLevel);
3129:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3130:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3131:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3132:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get for the ADC selected offset number 1, 2, 3 or 4:
3133:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Channel to which the offset programmed will be applied
3134:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (independently of channel mapped on ADC group regular
3135:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or group injected)
3136:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Usage of the returned channel number:
3137:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To reinject this channel into another function LL_ADC_xxx:
3138:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the returned channel number is only partly formatted on definition
3139:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           of literals LL_ADC_CHANNEL_x. Therefore, it has to be compared
3140:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           with parts of literals LL_ADC_CHANNEL_x or using
3141:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           helper macro @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
3142:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Then the selected literal LL_ADC_CHANNEL_x can be used
3143:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           as parameter for another function.
3144:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To get the channel number in decimal format:
3145:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           process the returned value with the helper macro
3146:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
3147:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On STM32G4, some fast channels are available: fast analog inputs
3148:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         coming from GPIO pads (ADC_IN1..5).
3149:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     OFFSET1_CH     LL_ADC_GetOffsetChannel\n
3150:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSET2_CH     LL_ADC_GetOffsetChannel\n
3151:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSET3_CH     LL_ADC_GetOffsetChannel\n
3152:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSET4_CH     LL_ADC_GetOffsetChannel
3153:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3154:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3155:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3156:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3157:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3158:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3159:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3160:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
3161:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
3162:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
3163:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
3164:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
3165:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
3166:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
3167:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
3168:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
3169:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
3170:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
3171:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
3172:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
3173:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
3174:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
3175:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
3176:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
3177:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
3178:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
3179:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
3180:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
3181:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
3182:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
3183:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
3184:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
3185:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
3186:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
3187:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
3188:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
3189:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
3190:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
3191:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
3192:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
3193:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
3194:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
3195:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
3196:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
3197:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
3198:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
3199:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
3200:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
3201:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1, 2, 3, 4, 5, 7) For ADC channel read back from ADC register,
3202:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      comparison with internal channel parameter to be done
3203:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      using helper macro @ref __LL_ADC_CHANNEL_INTERNAL_TO_EXTERNAL().
3204:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3205:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOffsetChannel(ADC_TypeDef *ADCx, uint32_t Offsety)
3206:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3207:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3208:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3209:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t) READ_BIT(*preg, ADC_OFR1_OFFSET1_CH);
3210:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3211:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3212:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3213:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get for the ADC selected offset number 1, 2, 3 or 4:
3214:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Offset level (offset to be subtracted from the raw
3215:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         converted data).
3216:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Caution: Offset format is dependent to ADC resolution:
3217:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         offset has to be left-aligned on bit 11, the LSB (right bits)
3218:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         are set to 0.
3219:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     OFFSET1        LL_ADC_GetOffsetLevel\n
3220:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSET2        LL_ADC_GetOffsetLevel\n
3221:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSET3        LL_ADC_GetOffsetLevel\n
3222:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSET4        LL_ADC_GetOffsetLevel
3223:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3224:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3225:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3226:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3227:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3228:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3229:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0xFFF
3230:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3231:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOffsetLevel(ADC_TypeDef *ADCx, uint32_t Offsety)
3232:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3233:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3234:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3235:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t) READ_BIT(*preg, ADC_OFR1_OFFSET1);
3236:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3237:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3238:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3239:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set for the ADC selected offset number 1, 2, 3 or 4:
3240:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         force offset state disable or enable
3241:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without modifying offset channel or offset value.
3242:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function should be needed only in case of offset to be
3243:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         enabled-disabled dynamically, and should not be needed in other cases:
3244:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         function LL_ADC_SetOffset() automatically enables the offset.
3245:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3246:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3247:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3248:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
3249:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     OFFSET1_EN     LL_ADC_SetOffsetState\n
3250:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSET2_EN     LL_ADC_SetOffsetState\n
3251:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSET3_EN     LL_ADC_SetOffsetState\n
3252:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSET4_EN     LL_ADC_SetOffsetState
3253:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3254:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3255:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3256:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3257:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3258:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3259:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  OffsetState This parameter can be one of the following values:
3260:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_DISABLE
3261:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_ENABLE
3262:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3263:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3264:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetOffsetState(ADC_TypeDef *ADCx, uint32_t Offsety, uint32_t OffsetStat
3265:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3266:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3267:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3268:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
3269:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_OFR1_OFFSET1_EN,
3270:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              OffsetState);
3271:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3272:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3273:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3274:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get for the ADC selected offset number 1, 2, 3 or 4:
3275:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         offset state disabled or enabled.
3276:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     OFFSET1_EN     LL_ADC_GetOffsetState\n
3277:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSET2_EN     LL_ADC_GetOffsetState\n
3278:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSET3_EN     LL_ADC_GetOffsetState\n
3279:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSET4_EN     LL_ADC_GetOffsetState
3280:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3281:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3282:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3283:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3284:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3285:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3286:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3287:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_DISABLE
3288:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_ENABLE
3289:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3290:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOffsetState(ADC_TypeDef *ADCx, uint32_t Offsety)
3291:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3292:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3293:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3294:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t) READ_BIT(*preg, ADC_OFR1_OFFSET1_EN);
3295:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3296:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3297:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3298:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set for the ADC selected offset number 1, 2, 3 or 4:
3299:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         choose offset sign.
3300:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3301:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3302:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3303:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
3304:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     OFFSETPOS      LL_ADC_SetOffsetSign\n
3305:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSETPOS      LL_ADC_SetOffsetSign\n
3306:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSETPOS      LL_ADC_SetOffsetSign\n
3307:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSETPOS      LL_ADC_SetOffsetSign
3308:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3309:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3310:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3311:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3312:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3313:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3314:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  OffsetSign This parameter can be one of the following values:
3315:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SIGN_NEGATIVE
3316:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SIGN_POSITIVE
3317:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3318:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3319:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetOffsetSign(ADC_TypeDef *ADCx, uint32_t Offsety, uint32_t OffsetSign)
3320:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3321:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3322:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3323:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
3324:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_OFR1_OFFSETPOS,
3325:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              OffsetSign);
3326:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3327:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3328:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3329:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get for the ADC selected offset number 1, 2, 3 or 4:
3330:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         offset sign if positive or negative.
3331:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     OFFSETPOS      LL_ADC_GetOffsetSign\n
3332:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     OFFSETPOS      LL_ADC_GetOffsetSign\n
3333:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     OFFSETPOS      LL_ADC_GetOffsetSign\n
3334:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     OFFSETPOS      LL_ADC_GetOffsetSign
3335:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3336:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3337:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3338:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3339:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3340:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3341:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3342:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SIGN_NEGATIVE
3343:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SIGN_POSITIVE
3344:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3345:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOffsetSign(ADC_TypeDef *ADCx, uint32_t Offsety)
3346:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3347:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3348:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3349:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t) READ_BIT(*preg, ADC_OFR1_OFFSETPOS);
3350:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3351:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3352:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3353:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set for the ADC selected offset number 1, 2, 3 or 4:
3354:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         choose offset saturation mode.
3355:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3356:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3357:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3358:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
3359:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     SATEN          LL_ADC_SetOffsetSaturation\n
3360:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     SATEN          LL_ADC_SetOffsetSaturation\n
3361:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     SATEN          LL_ADC_SetOffsetSaturation\n
3362:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     SATEN          LL_ADC_SetOffsetSaturation
3363:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3364:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3365:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3366:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3367:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3368:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3369:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  OffsetSaturation This parameter can be one of the following values:
3370:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SATURATION_ENABLE
3371:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SATURATION_DISABLE
3372:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3373:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3374:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetOffsetSaturation(ADC_TypeDef *ADCx, uint32_t Offsety, uint32_t Offse
3375:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3376:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3377:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3378:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
3379:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_OFR1_SATEN,
3380:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              OffsetSaturation);
3381:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3382:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3383:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3384:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get for the ADC selected offset number 1, 2, 3 or 4:
3385:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         offset saturation if enabled or disabled.
3386:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll OFR1     SATEN          LL_ADC_GetOffsetSaturation\n
3387:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR2     SATEN          LL_ADC_GetOffsetSaturation\n
3388:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR3     SATEN          LL_ADC_GetOffsetSaturation\n
3389:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         OFR4     SATEN          LL_ADC_GetOffsetSaturation
3390:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3391:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Offsety This parameter can be one of the following values:
3392:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_1
3393:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_2
3394:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_3
3395:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_4
3396:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3397:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SATURATION_ENABLE
3398:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OFFSET_SATURATION_DISABLE
3399:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3400:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOffsetSaturation(ADC_TypeDef *ADCx, uint32_t Offsety)
3401:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3402:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->OFR1, Offsety);
3403:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3404:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t) READ_BIT(*preg, ADC_OFR1_SATEN);
3405:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3406:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3407:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3408:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC gain compensation.
3409:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function set the gain compensation coefficient
3410:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         that is applied to raw converted data using the formula:
3411:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           DATA = DATA(raw) * (gain compensation coef) / 4096
3412:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function enables the gain compensation if given
3413:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         coefficient is above 0, otherwise it disables it.
3414:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Gain compensation when enabled is appied to all channels.
3415:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3416:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3417:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3418:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
3419:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll GCOMP    GCOMPCOEFF     LL_ADC_SetGainCompensation\n
3420:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    GCOMP          LL_ADC_SetGainCompensation
3421:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3422:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  GainCompensation This parameter can be:
3423:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         0           Gain compensation will be disabled and value set to 0
3424:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         1 -> 16393  Gain compensation will be enabled with specified value
3425:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3426:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3427:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetGainCompensation(ADC_TypeDef *ADCx, uint32_t GainCompensation)
3428:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3429:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->GCOMP, ADC_GCOMP_GCOMPCOEFF, GainCompensation);
3430:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR2, ADC_CFGR2_GCOMP, ((GainCompensation == 0UL) ? 0UL : 1UL) << ADC_CFGR2_GCO
3431:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3432:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3433:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3434:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get the ADC gain compensation value
3435:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll GCOMP    GCOMPCOEFF     LL_ADC_GetGainCompensation\n
3436:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    GCOMP          LL_ADC_GetGainCompensation
3437:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3438:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be:
3439:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         0           Gain compensation is disabled
3440:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         1 -> 16393  Gain compensation is enabled with returned value
3441:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3442:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetGainCompensation(ADC_TypeDef *ADCx)
3443:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3444:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CFGR2, ADC_CFGR2_GCOMP) == ADC_CFGR2_GCOMP) ? READ_BIT(ADCx->GCOMP, ADC_G
3445:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3446:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3447:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_SMPR1_SMPPLUS)
3448:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3449:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC sampling time common configuration impacting
3450:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         settings of sampling time channel wise.
3451:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3452:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3453:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3454:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
3455:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SMPR1    SMPPLUS        LL_ADC_SetSamplingTimeCommonConfig
3456:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3457:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SamplingTimeCommonConfig This parameter can be one of the following values:
3458:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_COMMON_DEFAULT
3459:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_COMMON_3C5_REPL_2C5
3460:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3461:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3462:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetSamplingTimeCommonConfig(ADC_TypeDef *ADCx, uint32_t SamplingTimeCom
3463:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3464:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->SMPR1, ADC_SMPR1_SMPPLUS, SamplingTimeCommonConfig);
3465:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3466:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3467:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3468:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC sampling time common configuration impacting
3469:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         settings of sampling time channel wise.
3470:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SMPR1    SMPPLUS        LL_ADC_GetSamplingTimeCommonConfig
3471:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3472:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3473:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_COMMON_DEFAULT
3474:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_COMMON_3C5_REPL_2C5
3475:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3476:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetSamplingTimeCommonConfig(ADC_TypeDef *ADCx)
3477:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3478:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->SMPR1, ADC_SMPR1_SMPPLUS));
3479:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3480:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif /* ADC_SMPR1_SMPPLUS */
3481:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3482:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3483:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
3484:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3485:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3486:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_ADC_Group_Regular Configuration of ADC hierarchical scope: gr
3487:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
3488:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3489:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3490:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3491:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group regular conversion trigger source:
3492:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal (SW start) or from external peripheral (timer event,
3493:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         external interrupt line).
3494:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting trigger source to external trigger
3495:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         also set trigger polarity to rising edge
3496:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (default setting for compatibility with some ADC on other
3497:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         STM32 families having this setting set by HW default value).
3498:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         In case of need to modify trigger edge, use
3499:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         function @ref LL_ADC_REG_SetTriggerEdge().
3500:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Availability of parameters of trigger sources from timer
3501:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         depends on timers availability on the selected device.
3502:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3503:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3504:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3505:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
3506:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     EXTSEL         LL_ADC_REG_SetTriggerSource\n
3507:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     EXTEN          LL_ADC_REG_SetTriggerSource
3508:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3509:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  TriggerSource This parameter can be one of the following values:
3510:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_SOFTWARE
3511:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_TRGO
3512:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_TRGO2
3513:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_CH1        (1)
3514:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_CH2        (1)
3515:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_CH3
3516:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_TRGO
3517:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_CH1        (2)
3518:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_CH2        (1)
3519:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_CH3        (2)
3520:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM3_TRGO
3521:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM3_CH1        (2)
3522:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM3_CH4        (1)
3523:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM4_TRGO
3524:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM4_CH1        (2)
3525:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM4_CH4        (1)
3526:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM6_TRGO
3527:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM7_TRGO
3528:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM8_TRGO
3529:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM8_TRGO2
3530:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM8_CH1        (2)
3531:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM15_TRGO
3532:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_TRGO
3533:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_TRGO2
3534:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_CH1
3535:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_CH2       (1)
3536:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_CH3       (1)
3537:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG1
3538:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG2      (2)
3539:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG3
3540:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG4      (2)
3541:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG5
3542:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG6
3543:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG7
3544:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG8
3545:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG9
3546:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG10
3547:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_EXTI_LINE11     (1)
3548:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_EXTI_LINE2      (2)
3549:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_LPTIM_OUT
3550:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
3551:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4 serie, parameter not available on all ADC instances: ADC1, ADC2.\n
3552:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4 serie, parameter not available on all ADC instances: ADC3, ADC4, ADC5.
3553:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
3554:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3555:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3556:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetTriggerSource(ADC_TypeDef *ADCx, uint32_t TriggerSource)
3557:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3558:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_EXTEN | ADC_CFGR_EXTSEL, TriggerSource);
3559:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3560:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3561:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3562:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion trigger source:
3563:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal (SW start) or from external peripheral (timer event,
3564:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         external interrupt line).
3565:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To determine whether group regular trigger source is
3566:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal (SW start) or external, without detail
3567:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of which peripheral is selected as external trigger,
3568:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (equivalent to
3569:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         "if(LL_ADC_REG_GetTriggerSource(ADC1) == LL_ADC_REG_TRIG_SOFTWARE)")
3570:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_REG_IsTriggerSourceSWStart.
3571:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Availability of parameters of trigger sources from timer
3572:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         depends on timers availability on the selected device.
3573:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     EXTSEL         LL_ADC_REG_GetTriggerSource\n
3574:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     EXTEN          LL_ADC_REG_GetTriggerSource
3575:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3576:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3577:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_SOFTWARE
3578:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_TRGO
3579:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_TRGO2
3580:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_CH1        (1)
3581:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_CH2        (1)
3582:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM1_CH3
3583:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_TRGO
3584:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_CH1        (2)
3585:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_CH2        (1)
3586:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM2_CH3        (2)
3587:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM3_TRGO
3588:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM3_CH1        (2)
3589:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM3_CH4        (1)
3590:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM4_TRGO
3591:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM4_CH1        (2)
3592:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM4_CH4        (1)
3593:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM6_TRGO
3594:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM7_TRGO
3595:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM8_TRGO
3596:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM8_TRGO2
3597:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM8_CH1        (2)
3598:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM15_TRGO
3599:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_TRGO
3600:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_TRGO2
3601:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_CH1
3602:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_CH2       (1)
3603:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_TIM20_CH3       (1)
3604:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG1
3605:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG2      (2)
3606:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG3
3607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG4      (2)
3608:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG5
3609:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG6
3610:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG7
3611:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG8
3612:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG9
3613:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_HRTIM_TRG10
3614:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_EXTI_LINE11     (1)
3615:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_EXTI_LINE2      (2)
3616:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_LPTIM_OUT
3617:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
3618:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4 serie, parameter not available on all ADC instances: ADC1, ADC2.\n
3619:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4 serie, parameter not available on all ADC instances: ADC3, ADC4, ADC5.
3620:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
3621:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3622:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetTriggerSource(ADC_TypeDef *ADCx)
3623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3624:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t TriggerSource = READ_BIT(ADCx->CFGR, ADC_CFGR_EXTSEL | ADC_CFGR_EXTEN);
3625:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3626:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Value for shift of {0; 4; 8; 12} depending on value of bitfield          */
3627:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* corresponding to ADC_CFGR_EXTEN {0; 1; 2; 3}.                            */
3628:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register uint32_t ShiftExten = ((TriggerSource & ADC_CFGR_EXTEN) >> (ADC_REG_TRIG_EXTEN_BITOFFSET
3629:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3630:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bitfield corresponding to ADC_CFGR_EXTEN and ADC_CFGR_EXTSEL         */
3631:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* to match with triggers literals definition.                              */
3632:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((TriggerSource
3633:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****            & (ADC_REG_TRIG_SOURCE_MASK >> ShiftExten) & ADC_CFGR_EXTSEL)
3634:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****           | ((ADC_REG_TRIG_EDGE_MASK >> ShiftExten) & ADC_CFGR_EXTEN)
3635:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****          );
3636:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3637:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3638:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3639:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion trigger source internal (SW start)
3640:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or external.
3641:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of group regular trigger source set to external trigger,
3642:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         to determine which peripheral is selected as external trigger,
3643:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_REG_GetTriggerSource().
3644:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     EXTEN          LL_ADC_REG_IsTriggerSourceSWStart
3645:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3646:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value "0" if trigger source external trigger
3647:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Value "1" if trigger source SW start.
3648:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3649:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_IsTriggerSourceSWStart(ADC_TypeDef *ADCx)
3650:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3651:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CFGR, ADC_CFGR_EXTEN) == (LL_ADC_REG_TRIG_SOFTWARE & ADC_CFGR_EXTEN)) ? 1
3652:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3653:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3654:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3655:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group regular conversion trigger polarity.
3656:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Applicable only for trigger source set to external trigger.
3657:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3658:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3659:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3660:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
3661:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     EXTEN          LL_ADC_REG_SetTriggerEdge
3662:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3663:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ExternalTriggerEdge This parameter can be one of the following values:
3664:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_RISING
3665:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_FALLING
3666:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_RISINGFALLING
3667:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3668:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3669:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetTriggerEdge(ADC_TypeDef *ADCx, uint32_t ExternalTriggerEdge)
3670:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3671:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_EXTEN, ExternalTriggerEdge);
3672:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3673:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3674:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3675:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion trigger polarity.
3676:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Applicable only for trigger source set to external trigger.
3677:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     EXTEN          LL_ADC_REG_GetTriggerEdge
3678:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3679:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3680:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_RISING
3681:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_FALLING
3682:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_TRIG_EXT_RISINGFALLING
3683:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3684:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetTriggerEdge(ADC_TypeDef *ADCx)
3685:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3686:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_EXTEN));
3687:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3688:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3689:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3690:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC sampling mode.
3691:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function set the ADC conversion sampling mode
3692:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This mode applies to regular group only.
3693:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Set sampling mode is appied to all conversion of regular group.
3694:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3695:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3696:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3697:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
3698:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    BULB           LL_ADC_REG_SetSamplingMode\n
3699:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    SMPTRIG        LL_ADC_REG_SetSamplingMode
3700:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3701:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SamplingMode This parameter can be one of the following values:
3702:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SAMPLING_MODE_NORMAL
3703:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SAMPLING_MODE_BULB
3704:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SAMPLING_MODE_TRIGGER_CONTROLED
3705:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3706:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3707:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetSamplingMode(ADC_TypeDef *ADCx, uint32_t SamplingMode)
3708:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3709:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR2, ADC_CFGR2_BULB | ADC_CFGR2_SMPTRIG, SamplingMode);
3710:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3711:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3712:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3713:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get the ADC sampling mode
3714:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    BULB           LL_ADC_REG_GetSamplingMode\n
3715:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    SMPTRIG        LL_ADC_REG_GetSamplingMode
3716:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3717:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3718:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SAMPLING_MODE_NORMAL
3719:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SAMPLING_MODE_BULB
3720:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SAMPLING_MODE_TRIGGER_CONTROLED
3721:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3722:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetSamplingMode(ADC_TypeDef *ADCx)
3723:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3724:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR2, ADC_CFGR2_BULB | ADC_CFGR2_SMPTRIG));
3725:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3726:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3727:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3728:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group regular sequencer length and scan direction.
3729:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Description of ADC group regular sequencer features:
3730:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - For devices with sequencer fully configurable
3731:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (function "LL_ADC_REG_SetSequencerRanks()" available):
3732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           sequencer length and each rank affectation to a channel
3733:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           are configurable.
3734:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This function performs configuration of:
3735:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence length: Number of ranks in the scan sequence.
3736:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence direction: Unless specified in parameters, sequencer
3737:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             scan direction is forward (from rank 1 to rank n).
3738:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Sequencer ranks are selected using
3739:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           function "LL_ADC_REG_SetSequencerRanks()".
3740:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - For devices with sequencer not fully configurable
3741:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (function "LL_ADC_REG_SetSequencerChannels()" available):
3742:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           sequencer length and each rank affectation to a channel
3743:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           are defined by channel number.
3744:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This function performs configuration of:
3745:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence length: Number of ranks in the scan sequence is
3746:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             defined by number of channels set in the sequence,
3747:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             rank of each channel is fixed by channel HW number.
3748:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             (channel 0 fixed on rank 0, channel 1 fixed on rank1, ...).
3749:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence direction: Unless specified in parameters, sequencer
3750:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             scan direction is forward (from lowest channel number to
3751:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             highest channel number).
3752:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Sequencer ranks are selected using
3753:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           function "LL_ADC_REG_SetSequencerChannels()".
3754:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Sequencer disabled is equivalent to sequencer of 1 rank:
3755:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversion on only 1 channel.
3756:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3757:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3758:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3759:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
3760:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SQR1     L              LL_ADC_REG_SetSequencerLength
3761:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3762:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SequencerNbRanks This parameter can be one of the following values:
3763:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_DISABLE
3764:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_2RANKS
3765:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_3RANKS
3766:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_4RANKS
3767:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_5RANKS
3768:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_6RANKS
3769:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_7RANKS
3770:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_8RANKS
3771:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_9RANKS
3772:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_10RANKS
3773:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_11RANKS
3774:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_12RANKS
3775:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_13RANKS
3776:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_14RANKS
3777:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_15RANKS
3778:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_16RANKS
3779:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3780:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3781:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetSequencerLength(ADC_TypeDef *ADCx, uint32_t SequencerNbRanks)
3782:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3783:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->SQR1, ADC_SQR1_L, SequencerNbRanks);
3784:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3785:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3786:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3787:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular sequencer length and scan direction.
3788:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Description of ADC group regular sequencer features:
3789:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - For devices with sequencer fully configurable
3790:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (function "LL_ADC_REG_SetSequencerRanks()" available):
3791:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           sequencer length and each rank affectation to a channel
3792:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           are configurable.
3793:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This function retrieves:
3794:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence length: Number of ranks in the scan sequence.
3795:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence direction: Unless specified in parameters, sequencer
3796:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             scan direction is forward (from rank 1 to rank n).
3797:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Sequencer ranks are selected using
3798:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           function "LL_ADC_REG_SetSequencerRanks()".
3799:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - For devices with sequencer not fully configurable
3800:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (function "LL_ADC_REG_SetSequencerChannels()" available):
3801:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           sequencer length and each rank affectation to a channel
3802:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           are defined by channel number.
3803:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This function retrieves:
3804:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence length: Number of ranks in the scan sequence is
3805:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             defined by number of channels set in the sequence,
3806:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             rank of each channel is fixed by channel HW number.
3807:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             (channel 0 fixed on rank 0, channel 1 fixed on rank1, ...).
3808:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - Sequence direction: Unless specified in parameters, sequencer
3809:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             scan direction is forward (from lowest channel number to
3810:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             highest channel number).
3811:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Sequencer ranks are selected using
3812:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           function "LL_ADC_REG_SetSequencerChannels()".
3813:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Sequencer disabled is equivalent to sequencer of 1 rank:
3814:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversion on only 1 channel.
3815:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SQR1     L              LL_ADC_REG_GetSequencerLength
3816:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3817:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3818:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_DISABLE
3819:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_2RANKS
3820:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_3RANKS
3821:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_4RANKS
3822:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_5RANKS
3823:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_6RANKS
3824:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_7RANKS
3825:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_8RANKS
3826:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_9RANKS
3827:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_10RANKS
3828:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_11RANKS
3829:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_12RANKS
3830:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_13RANKS
3831:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_14RANKS
3832:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_15RANKS
3833:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_SCAN_ENABLE_16RANKS
3834:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3835:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetSequencerLength(ADC_TypeDef *ADCx)
3836:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3837:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->SQR1, ADC_SQR1_L));
3838:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3839:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3840:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3841:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group regular sequencer discontinuous mode:
3842:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sequence subdivided and scan conversions interrupted every selected
3843:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         number of ranks.
3844:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   It is not possible to enable both ADC group regular
3845:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         continuous mode and sequencer discontinuous mode.
3846:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   It is not possible to enable both ADC auto-injected mode
3847:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         and ADC group regular sequencer discontinuous mode.
3848:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3849:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3850:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3851:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
3852:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     DISCEN         LL_ADC_REG_SetSequencerDiscont\n
3853:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     DISCNUM        LL_ADC_REG_SetSequencerDiscont
3854:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3855:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SeqDiscont This parameter can be one of the following values:
3856:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_DISABLE
3857:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_1RANK
3858:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_2RANKS
3859:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_3RANKS
3860:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_4RANKS
3861:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_5RANKS
3862:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_6RANKS
3863:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_7RANKS
3864:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_8RANKS
3865:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3866:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3867:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetSequencerDiscont(ADC_TypeDef *ADCx, uint32_t SeqDiscont)
3868:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3869:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_DISCEN | ADC_CFGR_DISCNUM, SeqDiscont);
3870:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3871:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3872:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3873:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular sequencer discontinuous mode:
3874:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sequence subdivided and scan conversions interrupted every selected
3875:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         number of ranks.
3876:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     DISCEN         LL_ADC_REG_GetSequencerDiscont\n
3877:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     DISCNUM        LL_ADC_REG_GetSequencerDiscont
3878:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3879:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
3880:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_DISABLE
3881:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_1RANK
3882:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_2RANKS
3883:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_3RANKS
3884:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_4RANKS
3885:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_5RANKS
3886:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_6RANKS
3887:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_7RANKS
3888:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_SEQ_DISCONT_8RANKS
3889:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3890:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetSequencerDiscont(ADC_TypeDef *ADCx)
3891:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3892:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_DISCEN | ADC_CFGR_DISCNUM));
3893:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
3894:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
3895:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
3896:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group regular sequence: channel on the selected
3897:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         scan sequence rank.
3898:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function performs configuration of:
3899:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Channels ordering into each rank of scan sequence:
3900:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           whatever channel can be placed into whatever rank.
3901:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, ADC group regular sequencer is
3902:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         fully configurable: sequencer length and each rank
3903:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         affectation to a channel are configurable.
3904:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to description of function @ref LL_ADC_REG_SetSequencerLength().
3905:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Depending on devices and packages, some channels may not be available.
3906:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet for channels availability.
3907:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, to measure internal channels (VrefInt,
3908:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TempSensor, ...), measurement paths to internal channels must be
3909:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         enabled separately.
3910:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This can be done using function @ref LL_ADC_SetCommonPathInternalCh().
3911:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
3912:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
3913:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
3914:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
3915:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SQR1     SQ1            LL_ADC_REG_SetSequencerRanks\n
3916:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR1     SQ2            LL_ADC_REG_SetSequencerRanks\n
3917:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR1     SQ3            LL_ADC_REG_SetSequencerRanks\n
3918:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR1     SQ4            LL_ADC_REG_SetSequencerRanks\n
3919:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ5            LL_ADC_REG_SetSequencerRanks\n
3920:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ6            LL_ADC_REG_SetSequencerRanks\n
3921:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ7            LL_ADC_REG_SetSequencerRanks\n
3922:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ8            LL_ADC_REG_SetSequencerRanks\n
3923:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ9            LL_ADC_REG_SetSequencerRanks\n
3924:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ10           LL_ADC_REG_SetSequencerRanks\n
3925:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ11           LL_ADC_REG_SetSequencerRanks\n
3926:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ12           LL_ADC_REG_SetSequencerRanks\n
3927:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ13           LL_ADC_REG_SetSequencerRanks\n
3928:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ14           LL_ADC_REG_SetSequencerRanks\n
3929:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR4     SQ15           LL_ADC_REG_SetSequencerRanks\n
3930:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR4     SQ16           LL_ADC_REG_SetSequencerRanks
3931:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
3932:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank This parameter can be one of the following values:
3933:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_1
3934:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_2
3935:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_3
3936:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_4
3937:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_5
3938:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_6
3939:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_7
3940:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_8
3941:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_9
3942:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_10
3943:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_11
3944:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_12
3945:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_13
3946:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_14
3947:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_15
3948:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_16
3949:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Channel This parameter can be one of the following values:
3950:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
3951:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
3952:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
3953:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
3954:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
3955:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
3956:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
3957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
3958:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
3959:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
3960:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
3961:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
3962:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
3963:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
3964:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
3965:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
3966:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
3967:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
3968:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
3969:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
3970:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
3971:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
3972:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
3973:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
3974:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
3975:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
3976:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
3977:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
3978:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
3979:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
3980:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
3981:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
3982:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
3983:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
3984:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
3985:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
3986:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
3987:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
3988:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
3989:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
3990:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
3991:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
3992:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
3993:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank, uint32_t Channe
3994:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
3995:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bits with content of parameter "Channel" with bits position          */
3996:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* in register and register position depending on parameter "Rank".         */
3997:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameters "Rank" and "Channel" are used with masks because containing   */
3998:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* other bits reserved for other purpose.                                   */
3999:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->SQR1, ((Rank & ADC_REG_SQRX_REGOFFSET_M
4000:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4001:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
4002:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CHANNEL_ID_NUMBER_MASK_POSBIT0 << (Rank & ADC_REG_RANK_ID_SQRX_MASK),
4003:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ((Channel & ADC_CHANNEL_ID_NUMBER_MASK) >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS) << (Ra
4004:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4005:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4006:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4007:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular sequence: channel on the selected
4008:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         scan sequence rank.
4009:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, ADC group regular sequencer is
4010:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         fully configurable: sequencer length and each rank
4011:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         affectation to a channel are configurable.
4012:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to description of function @ref LL_ADC_REG_SetSequencerLength().
4013:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Depending on devices and packages, some channels may not be available.
4014:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet for channels availability.
4015:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Usage of the returned channel number:
4016:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To reinject this channel into another function LL_ADC_xxx:
4017:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the returned channel number is only partly formatted on definition
4018:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           of literals LL_ADC_CHANNEL_x. Therefore, it has to be compared
4019:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           with parts of literals LL_ADC_CHANNEL_x or using
4020:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           helper macro @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
4021:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Then the selected literal LL_ADC_CHANNEL_x can be used
4022:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           as parameter for another function.
4023:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To get the channel number in decimal format:
4024:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           process the returned value with the helper macro
4025:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
4026:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SQR1     SQ1            LL_ADC_REG_GetSequencerRanks\n
4027:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR1     SQ2            LL_ADC_REG_GetSequencerRanks\n
4028:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR1     SQ3            LL_ADC_REG_GetSequencerRanks\n
4029:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR1     SQ4            LL_ADC_REG_GetSequencerRanks\n
4030:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ5            LL_ADC_REG_GetSequencerRanks\n
4031:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ6            LL_ADC_REG_GetSequencerRanks\n
4032:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ7            LL_ADC_REG_GetSequencerRanks\n
4033:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ8            LL_ADC_REG_GetSequencerRanks\n
4034:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR2     SQ9            LL_ADC_REG_GetSequencerRanks\n
4035:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ10           LL_ADC_REG_GetSequencerRanks\n
4036:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ11           LL_ADC_REG_GetSequencerRanks\n
4037:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ12           LL_ADC_REG_GetSequencerRanks\n
4038:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ13           LL_ADC_REG_GetSequencerRanks\n
4039:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR3     SQ14           LL_ADC_REG_GetSequencerRanks\n
4040:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR4     SQ15           LL_ADC_REG_GetSequencerRanks\n
4041:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SQR4     SQ16           LL_ADC_REG_GetSequencerRanks
4042:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4043:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank This parameter can be one of the following values:
4044:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_1
4045:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_2
4046:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_3
4047:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_4
4048:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_5
4049:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_6
4050:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_7
4051:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_8
4052:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_9
4053:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_10
4054:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_11
4055:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_12
4056:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_13
4057:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_14
4058:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_15
4059:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_RANK_16
4060:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4061:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
4062:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
4063:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
4064:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
4065:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
4066:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
4067:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
4068:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
4069:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
4070:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
4071:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
4072:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
4073:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
4074:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
4075:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
4076:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
4077:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
4078:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
4079:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
4080:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
4081:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
4082:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
4083:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
4084:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
4085:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
4086:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
4087:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
4088:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
4089:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
4090:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
4091:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4092:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
4093:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
4094:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
4095:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
4096:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
4097:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
4098:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
4099:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4100:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
4101:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
4102:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1, 2, 3, 4, 5, 7) For ADC channel read back from ADC register,
4103:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      comparison with internal channel parameter to be done
4104:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      using helper macro @ref __LL_ADC_CHANNEL_INTERNAL_TO_EXTERNAL().
4105:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4106:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank)
4107:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4108:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->SQR1, ((Rank & ADC_REG_SQRX_REGOF
4109:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4110:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)((READ_BIT(*preg,
4111:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                               ADC_CHANNEL_ID_NUMBER_MASK_POSBIT0 << (Rank & ADC_REG_RANK_ID_SQRX_MA
4112:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                      >> (Rank & ADC_REG_RANK_ID_SQRX_MASK)) << ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS
4113:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                    );
4114:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4115:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4116:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4117:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC continuous conversion mode on ADC group regular.
4118:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Description of ADC continuous conversion mode:
4119:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - single mode: one conversion per trigger
4120:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - continuous mode: after the first trigger, following
4121:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           conversions launched successively automatically.
4122:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   It is not possible to enable both ADC group regular
4123:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         continuous mode and sequencer discontinuous mode.
4124:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4125:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4126:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
4127:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
4128:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     CONT           LL_ADC_REG_SetContinuousMode
4129:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4130:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Continuous This parameter can be one of the following values:
4131:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_CONV_SINGLE
4132:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_CONV_CONTINUOUS
4133:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4134:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4135:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetContinuousMode(ADC_TypeDef *ADCx, uint32_t Continuous)
4136:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4137:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_CONT, Continuous);
4138:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4139:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4140:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4141:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC continuous conversion mode on ADC group regular.
4142:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Description of ADC continuous conversion mode:
4143:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - single mode: one conversion per trigger
4144:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - continuous mode: after the first trigger, following
4145:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           conversions launched successively automatically.
4146:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     CONT           LL_ADC_REG_GetContinuousMode
4147:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4148:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4149:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_CONV_SINGLE
4150:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_CONV_CONTINUOUS
4151:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4152:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetContinuousMode(ADC_TypeDef *ADCx)
4153:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4154:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_CONT));
4155:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4156:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4157:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4158:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group regular conversion data transfer: no transfer or
4159:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         transfer by DMA, and DMA requests mode.
4160:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If transfer by DMA selected, specifies the DMA requests
4161:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         mode:
4162:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Limited mode (One shot mode): DMA transfer requests are stopped
4163:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           when number of DMA data transfers (number of
4164:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions) is reached.
4165:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode non-circular.
4166:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Unlimited mode: DMA transfer requests are unlimited,
4167:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           whatever number of DMA data transfers (number of
4168:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions).
4169:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode circular.
4170:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC DMA requests mode is set to unlimited and DMA is set to
4171:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         mode non-circular:
4172:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         when DMA transfers size will be reached, DMA will stop transfers of
4173:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversions data ADC will raise an overrun error
4174:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *        (overrun flag and interruption if enabled).
4175:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with several ADC instances: ADC multimode DMA
4176:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         settings are available using function @ref LL_ADC_SetMultiDMATransfer().
4177:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To configure DMA source address (peripheral address),
4178:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_DMA_GetRegAddr().
4179:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4180:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4181:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
4182:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
4183:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     DMAEN          LL_ADC_REG_SetDMATransfer\n
4184:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     DMACFG         LL_ADC_REG_SetDMATransfer
4185:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4186:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  DMATransfer This parameter can be one of the following values:
4187:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_DMA_TRANSFER_NONE
4188:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_DMA_TRANSFER_LIMITED
4189:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_DMA_TRANSFER_UNLIMITED
4190:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4191:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4192:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetDMATransfer(ADC_TypeDef *ADCx, uint32_t DMATransfer)
4193:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4194:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_DMAEN | ADC_CFGR_DMACFG, DMATransfer);
4195:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4196:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4197:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4198:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion data transfer: no transfer or
4199:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         transfer by DMA, and DMA requests mode.
4200:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If transfer by DMA selected, specifies the DMA requests
4201:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         mode:
4202:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Limited mode (One shot mode): DMA transfer requests are stopped
4203:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           when number of DMA data transfers (number of
4204:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions) is reached.
4205:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode non-circular.
4206:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Unlimited mode: DMA transfer requests are unlimited,
4207:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           whatever number of DMA data transfers (number of
4208:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions).
4209:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode circular.
4210:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC DMA requests mode is set to unlimited and DMA is set to
4211:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         mode non-circular:
4212:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         when DMA transfers size will be reached, DMA will stop transfers of
4213:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversions data ADC will raise an overrun error
4214:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (overrun flag and interruption if enabled).
4215:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with several ADC instances: ADC multimode DMA
4216:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         settings are available using function @ref LL_ADC_GetMultiDMATransfer().
4217:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To configure DMA source address (peripheral address),
4218:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_DMA_GetRegAddr().
4219:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     DMAEN          LL_ADC_REG_GetDMATransfer\n
4220:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     DMACFG         LL_ADC_REG_GetDMATransfer
4221:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4222:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4223:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_DMA_TRANSFER_NONE
4224:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_DMA_TRANSFER_LIMITED
4225:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_DMA_TRANSFER_UNLIMITED
4226:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4227:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetDMATransfer(ADC_TypeDef *ADCx)
4228:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4229:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_DMAEN | ADC_CFGR_DMACFG));
4230:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4231:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4232:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4233:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group regular behavior in case of overrun:
4234:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         data preserved or overwritten.
4235:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Compatibility with devices without feature overrun:
4236:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         other devices without this feature have a behavior
4237:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         equivalent to data overwritten.
4238:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         The default setting of overrun is data preserved.
4239:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Therefore, for compatibility with all devices, parameter
4240:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         overrun should be set to data overwritten.
4241:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4242:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4243:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
4244:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
4245:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     OVRMOD         LL_ADC_REG_SetOverrun
4246:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4247:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Overrun This parameter can be one of the following values:
4248:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_OVR_DATA_PRESERVED
4249:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_OVR_DATA_OVERWRITTEN
4250:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4251:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4252:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_SetOverrun(ADC_TypeDef *ADCx, uint32_t Overrun)
4253:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4254:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_OVRMOD, Overrun);
4255:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4256:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4257:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4258:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular behavior in case of overrun:
4259:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         data preserved or overwritten.
4260:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     OVRMOD         LL_ADC_REG_GetOverrun
4261:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4262:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4263:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_OVR_DATA_PRESERVED
4264:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_REG_OVR_DATA_OVERWRITTEN
4265:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4266:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_GetOverrun(ADC_TypeDef *ADCx)
4267:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4268:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_OVRMOD));
4269:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4270:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4271:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4272:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
4273:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4274:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4275:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_ADC_Group_Injected Configuration of ADC hierarchical scope: g
4276:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
4277:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4278:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4279:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4280:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group injected conversion trigger source:
4281:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal (SW start) or from external peripheral (timer event,
4282:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         external interrupt line).
4283:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting trigger source to external trigger
4284:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         also set trigger polarity to rising edge
4285:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (default setting for compatibility with some ADC on other
4286:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         STM32 families having this setting set by HW default value).
4287:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         In case of need to modify trigger edge, use
4288:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         function @ref LL_ADC_INJ_SetTriggerEdge().
4289:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Availability of parameters of trigger sources from timer
4290:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         depends on timers availability on the selected device.
4291:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4292:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4293:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must not be disabled. Can be enabled with or without conversion
4294:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on going on either groups regular or injected.
4295:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JEXTSEL        LL_ADC_INJ_SetTriggerSource\n
4296:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JEXTEN         LL_ADC_INJ_SetTriggerSource
4297:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4298:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  TriggerSource This parameter can be one of the following values:
4299:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_SOFTWARE
4300:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_TRGO
4301:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2
4302:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_CH3         (2)
4303:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_CH4
4304:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM2_TRGO
4305:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM2_CH1         (1)
4306:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_TRGO
4307:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH1         (1)
4308:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH3         (1)
4309:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH4         (1)
4310:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_TRGO
4311:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_CH3         (2)
4312:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_CH4         (2)
4313:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM6_TRGO
4314:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM7_TRGO
4315:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_TRGO
4316:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2
4317:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_CH2         (2)
4318:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_CH4
4319:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM15_TRGO
4320:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM16_CH1        (1)
4321:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_TRGO
4322:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_TRGO2
4323:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_CH2        (2)
4324:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_CH4        (1)
4325:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG1       (2)
4326:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG2
4327:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG3       (2)
4328:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG4
4329:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG5
4330:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG6
4331:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG7
4332:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG8
4333:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG9
4334:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG10
4335:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_EXTI_LINE3       (2)
4336:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_EXTI_LINE15      (1)
4337:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_LPTIM_OUT
4338:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4339:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4 serie, parameter not available on all ADC instances: ADC1, ADC2.\n
4340:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4 serie, parameter not available on all ADC instances: ADC3, ADC4, ADC5.
4341:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4342:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4343:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4344:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_SetTriggerSource(ADC_TypeDef *ADCx, uint32_t TriggerSource)
4345:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4346:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->JSQR, ADC_JSQR_JEXTSEL | ADC_JSQR_JEXTEN, TriggerSource);
4347:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4348:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4349:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4350:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected conversion trigger source:
4351:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal (SW start) or from external peripheral (timer event,
4352:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         external interrupt line).
4353:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   To determine whether group injected trigger source is
4354:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal (SW start) or external, without detail
4355:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of which peripheral is selected as external trigger,
4356:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (equivalent to
4357:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         "if(LL_ADC_INJ_GetTriggerSource(ADC1) == LL_ADC_INJ_TRIG_SOFTWARE)")
4358:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_INJ_IsTriggerSourceSWStart.
4359:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Availability of parameters of trigger sources from timer
4360:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         depends on timers availability on the selected device.
4361:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JEXTSEL        LL_ADC_INJ_GetTriggerSource\n
4362:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JEXTEN         LL_ADC_INJ_GetTriggerSource
4363:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4364:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4365:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_SOFTWARE
4366:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_TRGO
4367:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2
4368:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_CH3         (2)
4369:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_CH4
4370:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM2_TRGO
4371:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM2_CH1         (1)
4372:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_TRGO
4373:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH1         (1)
4374:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH3         (1)
4375:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH4         (1)
4376:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_TRGO
4377:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_CH3         (2)
4378:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_CH4         (2)
4379:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM6_TRGO
4380:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM7_TRGO
4381:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_TRGO
4382:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2
4383:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_CH2         (2)
4384:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_CH4
4385:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM15_TRGO
4386:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM16_CH1        (1)
4387:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_TRGO
4388:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_TRGO2
4389:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_CH2        (2)
4390:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_CH4        (1)
4391:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG1       (2)
4392:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG2
4393:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG3       (2)
4394:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG4
4395:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG5
4396:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG6
4397:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG7
4398:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG8
4399:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG9
4400:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG10
4401:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_EXTI_LINE3       (2)
4402:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_EXTI_LINE15      (1)
4403:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_LPTIM_OUT
4404:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4405:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4 serie, parameter not available on all ADC instances: ADC1, ADC2.\n
4406:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4 serie, parameter not available on all ADC instances: ADC3, ADC4, ADC5.
4407:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4408:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4409:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_GetTriggerSource(ADC_TypeDef *ADCx)
4410:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4411:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t TriggerSource = READ_BIT(ADCx->JSQR, ADC_JSQR_JEXTSEL | ADC_JSQR_JEXTEN);
4412:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4413:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Value for shift of {0; 4; 8; 12} depending on value of bitfield          */
4414:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* corresponding to ADC_JSQR_JEXTEN {0; 1; 2; 3}.                           */
4415:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register uint32_t ShiftJexten = ((TriggerSource & ADC_JSQR_JEXTEN) >> (ADC_INJ_TRIG_EXTEN_BITOFFS
4416:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4417:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bitfield corresponding to ADC_JSQR_JEXTEN and ADC_JSQR_JEXTSEL       */
4418:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* to match with triggers literals definition.                              */
4419:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((TriggerSource
4420:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****            & (ADC_INJ_TRIG_SOURCE_MASK >> ShiftJexten) & ADC_JSQR_JEXTSEL)
4421:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****           | ((ADC_INJ_TRIG_EDGE_MASK >> ShiftJexten) & ADC_JSQR_JEXTEN)
4422:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****          );
4423:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4424:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4425:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4426:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected conversion trigger source internal (SW start)
4427:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****             or external
4428:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of group injected trigger source set to external trigger,
4429:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         to determine which peripheral is selected as external trigger,
4430:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_INJ_GetTriggerSource.
4431:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JEXTEN         LL_ADC_INJ_IsTriggerSourceSWStart
4432:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4433:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value "0" if trigger source external trigger
4434:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Value "1" if trigger source SW start.
4435:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4436:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_IsTriggerSourceSWStart(ADC_TypeDef *ADCx)
4437:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4438:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->JSQR, ADC_JSQR_JEXTEN) == (LL_ADC_INJ_TRIG_SOFTWARE & ADC_JSQR_JEXTEN)) ?
4439:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4440:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4441:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4442:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group injected conversion trigger polarity.
4443:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Applicable only for trigger source set to external trigger.
4444:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4445:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4446:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must not be disabled. Can be enabled with or without conversion
4447:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on going on either groups regular or injected.
4448:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JEXTEN         LL_ADC_INJ_SetTriggerEdge
4449:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4450:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ExternalTriggerEdge This parameter can be one of the following values:
4451:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_RISING
4452:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_FALLING
4453:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_RISINGFALLING
4454:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4455:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4456:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_SetTriggerEdge(ADC_TypeDef *ADCx, uint32_t ExternalTriggerEdge)
4457:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4458:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->JSQR, ADC_JSQR_JEXTEN, ExternalTriggerEdge);
4459:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4460:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4461:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4462:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected conversion trigger polarity.
4463:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Applicable only for trigger source set to external trigger.
4464:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JEXTEN         LL_ADC_INJ_GetTriggerEdge
4465:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4466:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4467:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_RISING
4468:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_FALLING
4469:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_RISINGFALLING
4470:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4471:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_GetTriggerEdge(ADC_TypeDef *ADCx)
4472:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4473:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->JSQR, ADC_JSQR_JEXTEN));
4474:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4475:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4476:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4477:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group injected sequencer length and scan direction.
4478:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function performs configuration of:
4479:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Sequence length: Number of ranks in the scan sequence.
4480:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Sequence direction: Unless specified in parameters, sequencer
4481:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           scan direction is forward (from rank 1 to rank n).
4482:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Sequencer disabled is equivalent to sequencer of 1 rank:
4483:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversion on only 1 channel.
4484:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4485:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4486:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must not be disabled. Can be enabled with or without conversion
4487:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on going on either groups regular or injected.
4488:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JL             LL_ADC_INJ_SetSequencerLength
4489:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4490:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SequencerNbRanks This parameter can be one of the following values:
4491:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_DISABLE
4492:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_2RANKS
4493:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_3RANKS
4494:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_4RANKS
4495:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4496:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4497:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_SetSequencerLength(ADC_TypeDef *ADCx, uint32_t SequencerNbRanks)
4498:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4499:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->JSQR, ADC_JSQR_JL, SequencerNbRanks);
4500:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4501:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4502:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4503:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected sequencer length and scan direction.
4504:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function retrieves:
4505:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Sequence length: Number of ranks in the scan sequence.
4506:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Sequence direction: Unless specified in parameters, sequencer
4507:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           scan direction is forward (from rank 1 to rank n).
4508:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Sequencer disabled is equivalent to sequencer of 1 rank:
4509:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversion on only 1 channel.
4510:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JL             LL_ADC_INJ_GetSequencerLength
4511:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4512:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4513:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_DISABLE
4514:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_2RANKS
4515:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_3RANKS
4516:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_4RANKS
4517:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4518:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_GetSequencerLength(ADC_TypeDef *ADCx)
4519:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4520:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->JSQR, ADC_JSQR_JL));
4521:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4522:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4523:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4524:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group injected sequencer discontinuous mode:
4525:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sequence subdivided and scan conversions interrupted every selected
4526:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         number of ranks.
4527:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   It is not possible to enable both ADC group injected
4528:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         auto-injected mode and sequencer discontinuous mode.
4529:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     JDISCEN        LL_ADC_INJ_SetSequencerDiscont
4530:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4531:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SeqDiscont This parameter can be one of the following values:
4532:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_DISCONT_DISABLE
4533:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_DISCONT_1RANK
4534:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4535:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4536:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_SetSequencerDiscont(ADC_TypeDef *ADCx, uint32_t SeqDiscont)
4537:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4538:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_JDISCEN, SeqDiscont);
4539:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4540:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4541:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4542:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected sequencer discontinuous mode:
4543:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sequence subdivided and scan conversions interrupted every selected
4544:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         number of ranks.
4545:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     JDISCEN        LL_ADC_INJ_GetSequencerDiscont
4546:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4547:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4548:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_DISCONT_DISABLE
4549:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_DISCONT_1RANK
4550:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4551:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_GetSequencerDiscont(ADC_TypeDef *ADCx)
4552:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4553:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_JDISCEN));
4554:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4555:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4556:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4557:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group injected sequence: channel on the selected
4558:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sequence rank.
4559:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Depending on devices and packages, some channels may not be available.
4560:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet for channels availability.
4561:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, to measure internal channels (VrefInt,
4562:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TempSensor, ...), measurement paths to internal channels must be
4563:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         enabled separately.
4564:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This can be done using function @ref LL_ADC_SetCommonPathInternalCh().
4565:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On STM32G4, some fast channels are available: fast analog inputs
4566:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         coming from GPIO pads (ADC_IN1..5).
4567:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4568:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4569:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must not be disabled. Can be enabled with or without conversion
4570:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on going on either groups regular or injected.
4571:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JSQ1           LL_ADC_INJ_SetSequencerRanks\n
4572:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ2           LL_ADC_INJ_SetSequencerRanks\n
4573:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ3           LL_ADC_INJ_SetSequencerRanks\n
4574:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ4           LL_ADC_INJ_SetSequencerRanks
4575:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4576:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank This parameter can be one of the following values:
4577:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_1
4578:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_2
4579:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_3
4580:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_4
4581:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Channel This parameter can be one of the following values:
4582:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
4583:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
4584:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
4585:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
4586:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
4587:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
4588:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
4589:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
4590:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
4591:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
4592:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
4593:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
4594:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
4595:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
4596:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
4597:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
4598:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
4599:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
4600:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
4601:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
4602:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
4603:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
4604:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
4605:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
4606:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
4607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
4608:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
4609:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
4610:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
4611:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
4612:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4613:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
4614:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
4615:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
4616:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
4617:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
4618:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
4619:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
4620:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4621:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
4622:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
4623:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4624:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4625:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_SetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank, uint32_t Channe
4626:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4627:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bits with content of parameter "Channel" with bits position          */
4628:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* in register depending on parameter "Rank".                               */
4629:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameters "Rank" and "Channel" are used with masks because containing   */
4630:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* other bits reserved for other purpose.                                   */
4631:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->JSQR,
4632:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (ADC_CHANNEL_ID_NUMBER_MASK >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS) << (Rank & ADC_INJ
4633:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ((Channel & ADC_CHANNEL_ID_NUMBER_MASK) >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS) << (Ra
4634:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4635:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4636:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4637:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected sequence: channel on the selected
4638:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sequence rank.
4639:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Depending on devices and packages, some channels may not be available.
4640:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet for channels availability.
4641:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Usage of the returned channel number:
4642:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To reinject this channel into another function LL_ADC_xxx:
4643:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the returned channel number is only partly formatted on definition
4644:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           of literals LL_ADC_CHANNEL_x. Therefore, it has to be compared
4645:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           with parts of literals LL_ADC_CHANNEL_x or using
4646:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           helper macro @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
4647:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Then the selected literal LL_ADC_CHANNEL_x can be used
4648:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           as parameter for another function.
4649:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To get the channel number in decimal format:
4650:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           process the returned value with the helper macro
4651:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
4652:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JSQ1           LL_ADC_INJ_GetSequencerRanks\n
4653:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ2           LL_ADC_INJ_GetSequencerRanks\n
4654:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ3           LL_ADC_INJ_GetSequencerRanks\n
4655:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ4           LL_ADC_INJ_GetSequencerRanks
4656:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4657:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank This parameter can be one of the following values:
4658:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_1
4659:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_2
4660:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_3
4661:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_RANK_4
4662:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4663:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
4664:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
4665:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
4666:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
4667:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
4668:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
4669:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
4670:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
4671:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
4672:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
4673:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
4674:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
4675:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
4676:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
4677:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
4678:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
4679:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
4680:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
4681:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
4682:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
4683:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
4684:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
4685:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
4686:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
4687:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
4688:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
4689:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
4690:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
4691:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
4692:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
4693:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4694:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
4695:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
4696:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
4697:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
4698:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
4699:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
4700:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
4701:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4702:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
4703:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
4704:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1, 2, 3, 4, 5, 7) For ADC channel read back from ADC register,
4705:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      comparison with internal channel parameter to be done
4706:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *                      using helper macro @ref __LL_ADC_CHANNEL_INTERNAL_TO_EXTERNAL().
4707:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4708:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_GetSequencerRanks(ADC_TypeDef *ADCx, uint32_t Rank)
4709:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4710:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)((READ_BIT(ADCx->JSQR,
4711:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                               (ADC_CHANNEL_ID_NUMBER_MASK >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS) <
4712:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                      >> (Rank & ADC_INJ_RANK_ID_JSQR_MASK)) << ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS
4713:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                    );
4714:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4715:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4716:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4717:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group injected conversion trigger:
4718:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         independent or from ADC group regular.
4719:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This mode can be used to extend number of data registers
4720:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         updated after one ADC conversion trigger and with data
4721:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         permanently kept (not erased by successive conversions of scan of
4722:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC sequencer ranks), up to 5 data registers:
4723:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         1 data register on ADC group regular, 4 data registers
4724:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on ADC group injected.
4725:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC group injected injected trigger source is set to an
4726:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         external trigger, this feature must be must be set to
4727:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         independent trigger.
4728:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC group injected automatic trigger is compliant only with
4729:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         group injected trigger source set to SW start, without any
4730:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         further action on  ADC group injected conversion start or stop:
4731:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         in this case, ADC group injected is controlled only
4732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         from ADC group regular.
4733:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   It is not possible to enable both ADC group injected
4734:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         auto-injected mode and sequencer discontinuous mode.
4735:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4736:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4737:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
4738:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
4739:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     JAUTO          LL_ADC_INJ_SetTrigAuto
4740:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4741:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  TrigAuto This parameter can be one of the following values:
4742:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_INDEPENDENT
4743:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_FROM_GRP_REGULAR
4744:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4745:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4746:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_SetTrigAuto(ADC_TypeDef *ADCx, uint32_t TrigAuto)
4747:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4748:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_JAUTO, TrigAuto);
4749:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4750:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4751:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4752:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected conversion trigger:
4753:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         independent or from ADC group regular.
4754:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     JAUTO          LL_ADC_INJ_GetTrigAuto
4755:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4756:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4757:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_INDEPENDENT
4758:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_FROM_GRP_REGULAR
4759:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4760:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_GetTrigAuto(ADC_TypeDef *ADCx)
4761:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4762:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_JAUTO));
4763:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4764:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4765:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4766:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC group injected contexts queue mode.
4767:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   A context is a setting of group injected sequencer:
4768:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - group injected trigger
4769:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - sequencer length
4770:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - sequencer ranks
4771:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         If contexts queue is disabled:
4772:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - only 1 sequence can be configured
4773:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           and is active perpetually.
4774:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         If contexts queue is enabled:
4775:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - up to 2 contexts can be queued
4776:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           and are checked in and out as a FIFO stack (first-in, first-out).
4777:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - If a new context is set when queues is full, error is triggered
4778:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           by interruption "Injected Queue Overflow".
4779:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Two behaviors are possible when all contexts have been processed:
4780:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the contexts queue can maintain the last context active perpetually
4781:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           or can be empty and injected group triggers are disabled.
4782:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Triggers can be only external (not internal SW start)
4783:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Caution: The sequence must be fully configured in one time
4784:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           (one write of register JSQR makes a check-in of a new context
4785:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           into the queue).
4786:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Therefore functions to set separately injected trigger and
4787:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           sequencer channels cannot be used, register JSQR must be set
4788:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           using function @ref LL_ADC_INJ_ConfigQueueContext().
4789:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This parameter can be modified only when no conversion is on going
4790:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
4791:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   A modification of the context mode (bit JQDIS) causes the contexts
4792:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         queue to be flushed and the register JSQR is cleared.
4793:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4794:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4795:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
4796:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
4797:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     JQM            LL_ADC_INJ_SetQueueMode\n
4798:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     JQDIS          LL_ADC_INJ_SetQueueMode
4799:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4800:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  QueueMode This parameter can be one of the following values:
4801:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_QUEUE_DISABLE
4802:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_QUEUE_2CONTEXTS_LAST_ACTIVE
4803:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_QUEUE_2CONTEXTS_END_EMPTY
4804:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
4805:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4806:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_SetQueueMode(ADC_TypeDef *ADCx, uint32_t QueueMode)
4807:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4808:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR, ADC_CFGR_JQM | ADC_CFGR_JQDIS, QueueMode);
4809:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4810:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4811:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4812:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected context queue mode.
4813:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     JQM            LL_ADC_INJ_GetQueueMode\n
4814:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     JQDIS          LL_ADC_INJ_GetQueueMode
4815:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4816:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
4817:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_QUEUE_DISABLE
4818:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_QUEUE_2CONTEXTS_LAST_ACTIVE
4819:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_QUEUE_2CONTEXTS_END_EMPTY
4820:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
4821:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_GetQueueMode(ADC_TypeDef *ADCx)
4822:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
4823:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR, ADC_CFGR_JQM | ADC_CFGR_JQDIS));
4824:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
4825:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
4826:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
4827:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set one context on ADC group injected that will be checked in
4828:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         contexts queue.
4829:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   A context is a setting of group injected sequencer:
4830:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - group injected trigger
4831:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - sequencer length
4832:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - sequencer ranks
4833:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This function is intended to be used when contexts queue is enabled,
4834:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         because the sequence must be fully configured in one time
4835:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (functions to set separately injected trigger and sequencer channels
4836:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         cannot be used):
4837:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to function @ref LL_ADC_INJ_SetQueueMode().
4838:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In the contexts queue, only the active context can be read.
4839:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         The parameters of this function can be read using functions:
4840:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_GetTriggerSource()
4841:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_GetTriggerEdge()
4842:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_GetSequencerRanks()
4843:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, to measure internal channels (VrefInt,
4844:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TempSensor, ...), measurement paths to internal channels must be
4845:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         enabled separately.
4846:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This can be done using function @ref LL_ADC_SetCommonPathInternalCh().
4847:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On STM32G4, some fast channels are available: fast analog inputs
4848:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         coming from GPIO pads (ADC_IN1..5).
4849:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
4850:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
4851:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must not be disabled. Can be enabled with or without conversion
4852:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on going on either groups regular or injected.
4853:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll JSQR     JEXTSEL        LL_ADC_INJ_ConfigQueueContext\n
4854:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JEXTEN         LL_ADC_INJ_ConfigQueueContext\n
4855:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JL             LL_ADC_INJ_ConfigQueueContext\n
4856:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ1           LL_ADC_INJ_ConfigQueueContext\n
4857:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ2           LL_ADC_INJ_ConfigQueueContext\n
4858:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ3           LL_ADC_INJ_ConfigQueueContext\n
4859:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         JSQR     JSQ4           LL_ADC_INJ_ConfigQueueContext
4860:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
4861:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  TriggerSource This parameter can be one of the following values:
4862:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_SOFTWARE
4863:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_TRGO
4864:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_TRGO2
4865:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_CH3         (2)
4866:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM1_CH4
4867:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM2_TRGO
4868:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM2_CH1         (1)
4869:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_TRGO
4870:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH1         (1)
4871:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH3         (1)
4872:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM3_CH4         (1)
4873:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_TRGO
4874:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_CH3         (2)
4875:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM4_CH4         (2)
4876:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM6_TRGO
4877:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM7_TRGO
4878:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_TRGO
4879:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_TRGO2
4880:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_CH2         (2)
4881:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM8_CH4
4882:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM15_TRGO
4883:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM16_CH1        (1)
4884:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_TRGO
4885:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_TRGO2
4886:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_CH2        (2)
4887:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_TIM20_CH4        (1)
4888:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG1       (2)
4889:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG2
4890:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG3       (2)
4891:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG4
4892:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG5
4893:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG6
4894:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG7
4895:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG8
4896:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG9
4897:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_HRTIM_TRG10
4898:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_EXTI_LINE3       (2)
4899:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_EXTI_LINE15      (1)
4900:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_LPTIM_OUT
4901:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4902:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4 serie, parameter not available on all ADC instances: ADC1, ADC2.\n
4903:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4 serie, parameter not available on all ADC instances: ADC3, ADC4, ADC5.
4904:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4905:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ExternalTriggerEdge This parameter can be one of the following values:
4906:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_RISING
4907:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_FALLING
4908:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_TRIG_EXT_RISINGFALLING
4909:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4910:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Note: This parameter is discarded in case of SW start:
4911:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *               parameter "TriggerSource" set to "LL_ADC_INJ_TRIG_SOFTWARE".
4912:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SequencerNbRanks This parameter can be one of the following values:
4913:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_DISABLE
4914:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_2RANKS
4915:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_3RANKS
4916:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_INJ_SEQ_SCAN_ENABLE_4RANKS
4917:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank1_Channel This parameter can be one of the following values:
4918:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
4919:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
4920:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
4921:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
4922:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
4923:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
4924:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
4925:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
4926:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
4927:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
4928:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
4929:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
4930:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
4931:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
4932:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
4933:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
4934:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
4935:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
4936:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
4937:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
4938:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
4939:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
4940:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
4941:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
4942:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
4943:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
4944:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
4945:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
4946:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
4947:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
4948:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4949:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
4950:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
4951:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
4952:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
4953:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
4954:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
4955:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
4956:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
4958:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
4959:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank2_Channel This parameter can be one of the following values:
4960:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
4961:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
4962:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
4963:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
4964:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
4965:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
4966:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
4967:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
4968:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
4969:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
4970:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
4971:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
4972:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
4973:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
4974:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
4975:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
4976:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
4977:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
4978:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
4979:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
4980:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
4981:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
4982:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
4983:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
4984:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
4985:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
4986:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
4987:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
4988:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
4989:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
4990:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
4991:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
4992:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
4993:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
4994:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
4995:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
4996:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
4997:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
4998:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
4999:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
5000:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
5001:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank3_Channel This parameter can be one of the following values:
5002:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
5003:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
5004:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
5005:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
5006:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
5007:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
5008:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
5009:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
5010:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
5011:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
5012:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
5013:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
5014:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
5015:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
5016:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
5017:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
5018:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
5019:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
5020:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
5021:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
5022:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
5023:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
5024:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
5025:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
5026:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
5027:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
5028:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
5029:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
5030:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
5031:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
5032:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5033:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
5034:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
5035:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
5036:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
5037:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
5038:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
5039:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
5040:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
5041:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
5042:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
5043:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Rank4_Channel This parameter can be one of the following values:
5044:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
5045:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
5046:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
5047:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
5048:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
5049:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
5050:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
5051:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
5052:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
5053:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
5054:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
5055:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
5056:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
5057:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
5058:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
5059:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
5060:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
5061:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
5062:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
5063:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
5064:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
5065:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
5066:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
5067:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
5068:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
5069:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
5070:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
5071:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
5072:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
5073:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
5074:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5075:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
5076:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
5077:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
5078:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
5079:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
5080:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
5081:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
5082:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
5083:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
5084:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
5085:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
5086:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5087:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_ConfigQueueContext(ADC_TypeDef *ADCx,
5088:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    uint32_t TriggerSource,
5089:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    uint32_t ExternalTriggerEdge,
5090:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    uint32_t SequencerNbRanks,
5091:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    uint32_t Rank1_Channel,
5092:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    uint32_t Rank2_Channel,
5093:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    uint32_t Rank3_Channel,
5094:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                    uint32_t Rank4_Channel)
5095:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5096:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bits with content of parameter "Rankx_Channel" with bits position    */
5097:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* in register depending on literal "LL_ADC_INJ_RANK_x".                    */
5098:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameters "Rankx_Channel" and "LL_ADC_INJ_RANK_x" are used with masks   */
5099:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* because containing other bits reserved for other purpose.                */
5100:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* If parameter "TriggerSource" is set to SW start, then parameter          */
5101:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* "ExternalTriggerEdge" is discarded.                                      */
5102:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register uint32_t is_trigger_not_sw = (uint32_t)((TriggerSource != LL_ADC_INJ_TRIG_SOFTWARE) ? 1U
5103:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->JSQR,
5104:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_JSQR_JEXTSEL |
5105:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_JSQR_JEXTEN  |
5106:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_JSQR_JSQ4    |
5107:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_JSQR_JSQ3    |
5108:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_JSQR_JSQ2    |
5109:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_JSQR_JSQ1    |
5110:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_JSQR_JL,
5111:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (TriggerSource & ADC_JSQR_JEXTSEL)          |
5112:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (ExternalTriggerEdge * (is_trigger_not_sw)) |
5113:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (((Rank4_Channel & ADC_CHANNEL_ID_NUMBER_MASK) >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS)
5114:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (((Rank3_Channel & ADC_CHANNEL_ID_NUMBER_MASK) >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS)
5115:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (((Rank2_Channel & ADC_CHANNEL_ID_NUMBER_MASK) >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS)
5116:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (((Rank1_Channel & ADC_CHANNEL_ID_NUMBER_MASK) >> ADC_CHANNEL_ID_NUMBER_BITOFFSET_POS)
5117:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              SequencerNbRanks
5118:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****             );
5119:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5120:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5121:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5122:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
5123:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5124:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5125:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_Channels Configuration of ADC hierarchical scope: channels
5126:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
5127:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5128:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5129:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5130:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set sampling time of the selected ADC channel
5131:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Unit: ADC clock cycles.
5132:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this device, sampling time is on channel scope: independently
5133:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of channel mapped on ADC group regular or injected.
5134:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of internal channel (VrefInt, TempSensor, ...) to be
5135:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         converted:
5136:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         sampling time constraints must be respected (sampling time can be
5137:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         adjusted in function of ADC clock frequency and sampling time
5138:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         setting).
5139:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet for timings values (parameters TS_vrefint,
5140:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TS_temp, ...).
5141:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Conversion time is the addition of sampling time and processing time.
5142:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         On this STM32 serie, ADC processing time is:
5143:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 12.5 ADC clock cycles at ADC resolution 12 bits
5144:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 10.5 ADC clock cycles at ADC resolution 10 bits
5145:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 8.5 ADC clock cycles at ADC resolution 8 bits
5146:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 6.5 ADC clock cycles at ADC resolution 6 bits
5147:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of ADC conversion of internal channel (VrefInt,
5148:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         temperature sensor, ...), a sampling time minimum value
5149:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is required.
5150:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet.
5151:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
5152:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
5153:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
5154:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
5155:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SMPR1    SMP0           LL_ADC_SetChannelSamplingTime\n
5156:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP1           LL_ADC_SetChannelSamplingTime\n
5157:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP2           LL_ADC_SetChannelSamplingTime\n
5158:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP3           LL_ADC_SetChannelSamplingTime\n
5159:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP4           LL_ADC_SetChannelSamplingTime\n
5160:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP5           LL_ADC_SetChannelSamplingTime\n
5161:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP6           LL_ADC_SetChannelSamplingTime\n
5162:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP7           LL_ADC_SetChannelSamplingTime\n
5163:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP8           LL_ADC_SetChannelSamplingTime\n
5164:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP9           LL_ADC_SetChannelSamplingTime\n
5165:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP10          LL_ADC_SetChannelSamplingTime\n
5166:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP11          LL_ADC_SetChannelSamplingTime\n
5167:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP12          LL_ADC_SetChannelSamplingTime\n
5168:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP13          LL_ADC_SetChannelSamplingTime\n
5169:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP14          LL_ADC_SetChannelSamplingTime\n
5170:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP15          LL_ADC_SetChannelSamplingTime\n
5171:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP16          LL_ADC_SetChannelSamplingTime\n
5172:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP17          LL_ADC_SetChannelSamplingTime\n
5173:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP18          LL_ADC_SetChannelSamplingTime
5174:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5175:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Channel This parameter can be one of the following values:
5176:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
5177:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
5178:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
5179:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
5180:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
5181:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
5182:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
5183:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
5184:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
5185:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
5186:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
5187:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
5188:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
5189:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
5190:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
5191:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
5192:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
5193:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
5194:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
5195:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
5196:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
5197:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
5198:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
5199:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
5200:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
5201:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
5202:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
5203:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
5204:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
5205:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
5206:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5207:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
5208:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
5209:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
5210:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
5211:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
5212:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
5213:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
5214:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
5215:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
5216:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
5217:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SamplingTime This parameter can be one of the following values:
5218:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_2CYCLES_5   (1)
5219:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_6CYCLES_5
5220:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_12CYCLES_5
5221:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_24CYCLES_5
5222:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_47CYCLES_5
5223:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_92CYCLES_5
5224:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_247CYCLES_5
5225:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_640CYCLES_5
5226:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5227:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On some devices, ADC sampling time 2.5 ADC clock cycles
5228:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             can be replaced by 3.5 ADC clock cycles.
5229:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Refer to function @ref LL_ADC_SetSamplingTimeCommonConfig().
5230:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
5231:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5232:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetChannelSamplingTime(ADC_TypeDef *ADCx, uint32_t Channel, uint32_t Sa
5233:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5234:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bits with content of parameter "SamplingTime" with bits position     */
5235:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* in register and register position depending on parameter "Channel".      */
5236:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameter "Channel" is used with masks because containing                */
5237:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* other bits reserved for other purpose.                                   */
5238:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->SMPR1, ((Channel & ADC_CHANNEL_SMPRX_RE
5239:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5240:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
5241:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_SMPR1_SMP0 << ((Channel & ADC_CHANNEL_SMPx_BITOFFSET_MASK) >> ADC_CHANNEL_SMPx_BIT
5242:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              SamplingTime   << ((Channel & ADC_CHANNEL_SMPx_BITOFFSET_MASK) >> ADC_CHANNEL_SMPx_BIT
5243:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5244:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5245:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5246:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get sampling time of the selected ADC channel
5247:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Unit: ADC clock cycles.
5248:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this device, sampling time is on channel scope: independently
5249:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         of channel mapped on ADC group regular or injected.
5250:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Conversion time is the addition of sampling time and processing time.
5251:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         On this STM32 serie, ADC processing time is:
5252:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 12.5 ADC clock cycles at ADC resolution 12 bits
5253:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 10.5 ADC clock cycles at ADC resolution 10 bits
5254:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 8.5 ADC clock cycles at ADC resolution 8 bits
5255:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - 6.5 ADC clock cycles at ADC resolution 6 bits
5256:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll SMPR1    SMP0           LL_ADC_GetChannelSamplingTime\n
5257:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP1           LL_ADC_GetChannelSamplingTime\n
5258:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP2           LL_ADC_GetChannelSamplingTime\n
5259:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP3           LL_ADC_GetChannelSamplingTime\n
5260:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP4           LL_ADC_GetChannelSamplingTime\n
5261:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP5           LL_ADC_GetChannelSamplingTime\n
5262:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP6           LL_ADC_GetChannelSamplingTime\n
5263:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP7           LL_ADC_GetChannelSamplingTime\n
5264:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP8           LL_ADC_GetChannelSamplingTime\n
5265:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR1    SMP9           LL_ADC_GetChannelSamplingTime\n
5266:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP10          LL_ADC_GetChannelSamplingTime\n
5267:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP11          LL_ADC_GetChannelSamplingTime\n
5268:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP12          LL_ADC_GetChannelSamplingTime\n
5269:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP13          LL_ADC_GetChannelSamplingTime\n
5270:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP14          LL_ADC_GetChannelSamplingTime\n
5271:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP15          LL_ADC_GetChannelSamplingTime\n
5272:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP16          LL_ADC_GetChannelSamplingTime\n
5273:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP17          LL_ADC_GetChannelSamplingTime\n
5274:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         SMPR2    SMP18          LL_ADC_GetChannelSamplingTime
5275:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5276:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Channel This parameter can be one of the following values:
5277:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_0
5278:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1                 (8)
5279:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2                 (8)
5280:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3                 (8)
5281:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4                 (8)
5282:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5                 (8)
5283:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
5284:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
5285:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
5286:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
5287:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
5288:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
5289:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
5290:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
5291:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
5292:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
5293:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_16
5294:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_17
5295:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_18
5296:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VREFINT           (7)
5297:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC1   (1)
5298:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_TEMPSENSOR_ADC5   (5)
5299:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VBAT              (6)
5300:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP1           (1)
5301:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP2           (2)
5302:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC2      (2)
5303:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP3_ADC3      (3)
5304:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP4           (5)
5305:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP5           (5)
5306:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_VOPAMP6           (4)
5307:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5308:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
5309:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
5310:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
5311:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
5312:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
5313:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
5314:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
5315:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
5316:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (8) On STM32G4, fast channel allows: 2.5 (sampling) + 12.5 (conversion) = 15 ADC clock 
5317:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Other channels are slow channels  allows: 6.5 (sampling) + 12.5 (conversion) = 19 A
5318:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
5319:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_2CYCLES_5   (1)
5320:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_6CYCLES_5
5321:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_12CYCLES_5
5322:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_24CYCLES_5
5323:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_47CYCLES_5
5324:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_92CYCLES_5
5325:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_247CYCLES_5
5326:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SAMPLINGTIME_640CYCLES_5
5327:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5328:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On some devices, ADC sampling time 2.5 ADC clock cycles
5329:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             can be replaced by 3.5 ADC clock cycles.
5330:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Refer to function @ref LL_ADC_SetSamplingTimeCommonConfig().
5331:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5332:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetChannelSamplingTime(ADC_TypeDef *ADCx, uint32_t Channel)
5333:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5334:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->SMPR1, ((Channel & ADC_CHANNEL_SM
5335:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5336:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(*preg,
5337:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                              ADC_SMPR1_SMP0 << ((Channel & ADC_CHANNEL_SMPx_BITOFFSET_MASK) >> ADC_
5338:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                     >> ((Channel & ADC_CHANNEL_SMPx_BITOFFSET_MASK) >> ADC_CHANNEL_SMPx_BITOFFSET_P
5339:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                    );
5340:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5341:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5342:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5343:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set mode single-ended or differential input of the selected
5344:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC channel.
5345:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Channel ending is on channel scope: independently of channel mapped
5346:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on ADC group regular or injected.
5347:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         In differential mode: Differential measurement is carried out
5348:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         between the selected channel 'i' (positive input) and
5349:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         channel 'i+1' (negative input). Only channel 'i' has to be
5350:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         configured, channel 'i+1' is configured automatically.
5351:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Refer to Reference Manual to ensure the selected channel is
5352:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         available in differential mode.
5353:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         For example, internal channels (VrefInt, TempSensor, ...) are
5354:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         not available in differential mode.
5355:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   When configuring a channel 'i' in differential mode,
5356:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         the channel 'i+1' is not usable separately.
5357:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On STM32G4, some channels are internally fixed to single-ended inputs
5358:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         configuration:
5359:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC1: Channels 12, 15, 16, 17 and 18
5360:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC2: Channels 15, 17 and 18
5361:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC3: Channels 12, 16, 17 and 18            (1)
5362:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC4: Channels 16, 17 and 18                (1)
5363:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC5: Channels 2, 3, 4, 16, 17 and 18       (1)
5364:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) ADC3/4/5 are not available on all devices, refer to device datasheet
5365:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             for more details.
5366:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For ADC channels configured in differential mode, both inputs
5367:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         should be biased at (Vref+)/2 +/-200mV.
5368:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (Vref+ is the analog voltage reference)
5369:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
5370:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
5371:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be ADC disabled.
5372:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   One or several values can be selected.
5373:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example: (LL_ADC_CHANNEL_4 | LL_ADC_CHANNEL_12 | ...)
5374:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DIFSEL   DIFSEL         LL_ADC_SetChannelSingleDiff
5375:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5376:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Channel This parameter can be one of the following values:
5377:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1
5378:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2
5379:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3
5380:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4
5381:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5
5382:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
5383:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
5384:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
5385:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
5386:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
5387:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
5388:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
5389:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
5390:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
5391:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
5392:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SingleDiff This parameter can be a combination of the following values:
5393:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SINGLE_ENDED
5394:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DIFFERENTIAL_ENDED
5395:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
5396:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5397:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetChannelSingleDiff(ADC_TypeDef *ADCx, uint32_t Channel, uint32_t Sing
5398:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5399:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Bits of channels in single or differential mode are set only for         */
5400:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* differential mode (for single mode, mask of bits allowed to be set is    */
5401:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* shifted out of range of bits of channels in single or differential mode. */
5402:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->DIFSEL,
5403:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              Channel & ADC_SINGLEDIFF_CHANNEL_MASK,
5404:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (Channel & ADC_SINGLEDIFF_CHANNEL_MASK) & (ADC_DIFSEL_DIFSEL >> (SingleDiff & ADC_SING
5405:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5406:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5407:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5408:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get mode single-ended or differential input of the selected
5409:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC channel.
5410:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   When configuring a channel 'i' in differential mode,
5411:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         the channel 'i+1' is not usable separately.
5412:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Therefore, to ensure a channel is configured in single-ended mode,
5413:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         the configuration of channel itself and the channel 'i-1' must be
5414:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         read back (to ensure that the selected channel channel has not been
5415:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         configured in differential mode by the previous channel).
5416:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Refer to Reference Manual to ensure the selected channel is
5417:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         available in differential mode.
5418:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         For example, internal channels (VrefInt, TempSensor, ...) are
5419:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         not available in differential mode.
5420:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   When configuring a channel 'i' in differential mode,
5421:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         the channel 'i+1' is not usable separately.
5422:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On STM32G4, some channels are internally fixed to single-ended inputs
5423:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         configuration:
5424:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC1: Channels 12, 15, 16, 17 and 18
5425:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC2: Channels 15, 17 and 18
5426:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC3: Channels 12, 16, 17 and 18            (1)
5427:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC4: Channels 16, 17 and 18                (1)
5428:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC5: Channels 2, 3, 4, 16, 17 and 18       (1)
5429:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) ADC3/4/5 are not available on all devices, refer to device datasheet
5430:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             for more details.
5431:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   One or several values can be selected. In this case, the value
5432:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         returned is null if all channels are in single ended-mode.
5433:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Example: (LL_ADC_CHANNEL_4 | LL_ADC_CHANNEL_12 | ...)
5434:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DIFSEL   DIFSEL         LL_ADC_GetChannelSingleDiff
5435:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5436:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Channel This parameter can be a combination of the following values:
5437:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_1
5438:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_2
5439:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_3
5440:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_4
5441:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_5
5442:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_6
5443:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_7
5444:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_8
5445:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_9
5446:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_10
5447:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_11
5448:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_12
5449:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_13
5450:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_14
5451:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_CHANNEL_15
5452:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: channel in single-ended mode, else: channel in differential mode
5453:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5454:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetChannelSingleDiff(ADC_TypeDef *ADCx, uint32_t Channel)
5455:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5456:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->DIFSEL, (Channel & ADC_SINGLEDIFF_CHANNEL_MASK)));
5457:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5458:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5459:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5460:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
5461:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5462:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5463:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_ADC_AnalogWatchdog Configuration of ADC transversal scope: an
5464:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
5465:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5466:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5467:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5468:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC analog watchdog monitored channels:
5469:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a single channel, multiple channels or all channels,
5470:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on ADC groups regular and-or injected.
5471:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Once monitored channels are selected, analog watchdog
5472:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is enabled.
5473:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of need to define a single channel to monitor
5474:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         with analog watchdog from sequencer channel definition,
5475:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use helper macro @ref __LL_ADC_ANALOGWD_CHANNEL_GROUP().
5476:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, there are 2 kinds of analog watchdog
5477:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         instance:
5478:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD standard (instance AWD1):
5479:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: can monitor 1 channel or all channels.
5480:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: ADC groups regular and-or injected.
5481:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is not limited (corresponds to
5482:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC resolution configured).
5483:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD flexible (instances AWD2, AWD3):
5484:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: flexible on channels monitored, selection is
5485:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             channel wise, from from 1 to all channels.
5486:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Specificity of this analog watchdog: Multiple channels can
5487:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             be selected. For example:
5488:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             (LL_ADC_AWD_CHANNEL4_REG_INJ | LL_ADC_AWD_CHANNEL5_REG_INJ | ...)
5489:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: not selection possible (monitoring on both
5490:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             groups regular and injected).
5491:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Channels selected are monitored on groups regular and injected:
5492:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG_INJ (do not use parameters
5493:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG and LL_ADC_AWD_CHANNELxx_INJ)
5494:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is limited to 8 bits: if ADC resolution is
5495:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             12 bits the 4 LSB are ignored, if ADC resolution is 10 bits
5496:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             the 2 LSB are ignored.
5497:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
5498:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
5499:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
5500:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
5501:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     AWD1CH         LL_ADC_SetAnalogWDMonitChannels\n
5502:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     AWD1SGL        LL_ADC_SetAnalogWDMonitChannels\n
5503:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     AWD1EN         LL_ADC_SetAnalogWDMonitChannels\n
5504:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     JAWD1EN        LL_ADC_SetAnalogWDMonitChannels\n
5505:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         AWD2CR   AWD2CH         LL_ADC_SetAnalogWDMonitChannels\n
5506:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         AWD3CR   AWD3CH         LL_ADC_SetAnalogWDMonitChannels
5507:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5508:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDy This parameter can be one of the following values:
5509:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD1
5510:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD2
5511:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD3
5512:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDChannelGroup This parameter can be one of the following values:
5513:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_DISABLE
5514:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_REG        (0)
5515:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_INJ        (0)
5516:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_REG_INJ
5517:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_REG           (0)
5518:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_INJ           (0)
5519:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_REG_INJ
5520:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_REG           (0)
5521:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_INJ           (0)
5522:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_REG_INJ
5523:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_REG           (0)
5524:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_INJ           (0)
5525:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_REG_INJ
5526:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_REG           (0)
5527:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_INJ           (0)
5528:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_REG_INJ
5529:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_REG           (0)
5530:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_INJ           (0)
5531:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_REG_INJ
5532:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_REG           (0)
5533:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_INJ           (0)
5534:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_REG_INJ
5535:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_REG           (0)
5536:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_INJ           (0)
5537:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_REG_INJ
5538:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_REG           (0)
5539:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_INJ           (0)
5540:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_REG_INJ
5541:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_REG           (0)
5542:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_INJ           (0)
5543:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_REG_INJ
5544:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_REG           (0)
5545:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_INJ           (0)
5546:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_REG_INJ
5547:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_REG          (0)
5548:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_INJ          (0)
5549:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_REG_INJ
5550:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_REG          (0)
5551:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_INJ          (0)
5552:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_REG_INJ
5553:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_REG          (0)
5554:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_INJ          (0)
5555:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_REG_INJ
5556:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_REG          (0)
5557:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_INJ          (0)
5558:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_REG_INJ
5559:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_REG          (0)
5560:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_INJ          (0)
5561:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_REG_INJ
5562:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_REG          (0)
5563:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_INJ          (0)
5564:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_REG_INJ
5565:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_REG          (0)
5566:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_INJ          (0)
5567:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_REG_INJ
5568:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_REG          (0)
5569:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_INJ          (0)
5570:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_REG_INJ
5571:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_REG          (0)
5572:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_INJ          (0)
5573:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_REG_INJ
5574:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VREFINT_REG          (0)
5575:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VREFINT_INJ          (0)
5576:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VREFINT_REG_INJ
5577:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC1_REG  (0)(1)
5578:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC1_INJ  (0)(1)
5579:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC1_REG_INJ (1)
5580:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC5_REG  (0)(5)
5581:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC5_INJ  (0)(5)
5582:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_TEMPSENSOR_ADC5_REG_INJ (5)
5583:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VBAT_REG             (0)(6)
5584:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VBAT_INJ             (0)(6)
5585:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VBAT_REG_INJ            (6)
5586:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP1_REG          (0)(1)
5587:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP1_INJ          (0)(1)
5588:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP1_REG_INJ         (1)
5589:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP2_REG          (0)(2)
5590:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP2_INJ          (0)(2)
5591:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP2_REG_INJ         (2)
5592:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC2_REG     (0)(2)
5593:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC2_INJ     (0)(2)
5594:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC2_REG_INJ    (2)
5595:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC3_REG     (0)(3)
5596:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC3_INJ     (0)(3)
5597:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP3_ADC3_REG_INJ    (3)
5598:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP4_REG          (0)(5)
5599:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP4_INJ          (0)(5)
5600:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP4_REG_INJ         (5)
5601:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP5_REG          (0)(5)
5602:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP5_INJ          (0)(5)
5603:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP5_REG_INJ         (5)
5604:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP6_REG          (0)(4)
5605:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP6_INJ          (0)(4)
5606:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CH_VOPAMP6_REG_INJ         (4)
5607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5608:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (0) On STM32G4, parameter available only on analog watchdog number: AWD1.\n
5609:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On STM32G4, parameter available only on ADC instance: ADC1.\n
5610:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) On STM32G4, parameter available only on ADC instance: ADC2.\n
5611:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) On STM32G4, parameter available only on ADC instance: ADC3.\n
5612:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (4) On STM32G4, parameter available only on ADC instance: ADC4.\n
5613:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (5) On STM32G4, parameter available only on ADC instance: ADC5.\n
5614:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (6) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC5.\n
5615:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (7) On STM32G4, parameter available only on ADC instances: ADC1, ADC3, ADC4, ADC5.\n
5616:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *          -  On this STM32 serie, all ADCx are not available on all devices. Refer to device dat
5617:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
5618:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5619:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetAnalogWDMonitChannels(ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t AWD
5620:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5621:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bits with content of parameter "AWDChannelGroup" with bits position  */
5622:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* in register and register position depending on parameter "AWDy".         */
5623:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameters "AWDChannelGroup" and "AWDy" are used with masks because      */
5624:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* containing other bits reserved for other purpose.                        */
5625:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->CFGR, ((AWDy & ADC_AWD_CRX_REGOFFSET_MA
5626:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                       + ((AWDy & ADC_AWD_CR12_REGOFFSETGAP_MASK) * 
5627:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5628:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
5629:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (AWDy & ADC_AWD_CR_ALL_CHANNEL_MASK),
5630:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              AWDChannelGroup & AWDy);
5631:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5632:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5633:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5634:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC analog watchdog monitored channel.
5635:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Usage of the returned channel number:
5636:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To reinject this channel into another function LL_ADC_xxx:
5637:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the returned channel number is only partly formatted on definition
5638:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           of literals LL_ADC_CHANNEL_x. Therefore, it has to be compared
5639:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           with parts of literals LL_ADC_CHANNEL_x or using
5640:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           helper macro @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
5641:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Then the selected literal LL_ADC_CHANNEL_x can be used
5642:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           as parameter for another function.
5643:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - To get the channel number in decimal format:
5644:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           process the returned value with the helper macro
5645:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           @ref __LL_ADC_CHANNEL_TO_DECIMAL_NB().
5646:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           Applicable only when the analog watchdog is set to monitor
5647:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           one channel.
5648:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, there are 2 kinds of analog watchdog
5649:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         instance:
5650:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD standard (instance AWD1):
5651:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: can monitor 1 channel or all channels.
5652:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: ADC groups regular and-or injected.
5653:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is not limited (corresponds to
5654:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC resolution configured).
5655:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD flexible (instances AWD2, AWD3):
5656:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: flexible on channels monitored, selection is
5657:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             channel wise, from from 1 to all channels.
5658:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Specificity of this analog watchdog: Multiple channels can
5659:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             be selected. For example:
5660:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             (LL_ADC_AWD_CHANNEL4_REG_INJ | LL_ADC_AWD_CHANNEL5_REG_INJ | ...)
5661:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: not selection possible (monitoring on both
5662:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             groups regular and injected).
5663:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Channels selected are monitored on groups regular and injected:
5664:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG_INJ (do not use parameters
5665:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG and LL_ADC_AWD_CHANNELxx_INJ)
5666:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is limited to 8 bits: if ADC resolution is
5667:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             12 bits the 4 LSB are ignored, if ADC resolution is 10 bits
5668:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             the 2 LSB are ignored.
5669:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
5670:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
5671:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
5672:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
5673:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR     AWD1CH         LL_ADC_GetAnalogWDMonitChannels\n
5674:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     AWD1SGL        LL_ADC_GetAnalogWDMonitChannels\n
5675:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     AWD1EN         LL_ADC_GetAnalogWDMonitChannels\n
5676:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR     JAWD1EN        LL_ADC_GetAnalogWDMonitChannels\n
5677:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         AWD2CR   AWD2CH         LL_ADC_GetAnalogWDMonitChannels\n
5678:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         AWD3CR   AWD3CH         LL_ADC_GetAnalogWDMonitChannels
5679:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5680:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDy This parameter can be one of the following values:
5681:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD1
5682:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD2 (1)
5683:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD3 (1)
5684:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5685:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) On this AWD number, monitored channel can be retrieved
5686:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             if only 1 channel is programmed (or none or all channels).
5687:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             This function cannot retrieve monitored channel if
5688:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             multiple channels are programmed simultaneously
5689:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             by bitfield.
5690:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
5691:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_DISABLE
5692:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_REG        (0)
5693:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_INJ        (0)
5694:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_ALL_CHANNELS_REG_INJ
5695:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_REG           (0)
5696:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_INJ           (0)
5697:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_0_REG_INJ
5698:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_REG           (0)
5699:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_INJ           (0)
5700:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_1_REG_INJ
5701:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_REG           (0)
5702:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_INJ           (0)
5703:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_2_REG_INJ
5704:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_REG           (0)
5705:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_INJ           (0)
5706:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_3_REG_INJ
5707:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_REG           (0)
5708:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_INJ           (0)
5709:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_4_REG_INJ
5710:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_REG           (0)
5711:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_INJ           (0)
5712:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_5_REG_INJ
5713:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_REG           (0)
5714:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_INJ           (0)
5715:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_6_REG_INJ
5716:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_REG           (0)
5717:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_INJ           (0)
5718:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_7_REG_INJ
5719:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_REG           (0)
5720:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_INJ           (0)
5721:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_8_REG_INJ
5722:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_REG           (0)
5723:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_INJ           (0)
5724:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_9_REG_INJ
5725:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_REG          (0)
5726:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_INJ          (0)
5727:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_10_REG_INJ
5728:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_REG          (0)
5729:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_INJ          (0)
5730:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_11_REG_INJ
5731:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_REG          (0)
5732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_INJ          (0)
5733:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_12_REG_INJ
5734:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_REG          (0)
5735:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_INJ          (0)
5736:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_13_REG_INJ
5737:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_REG          (0)
5738:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_INJ          (0)
5739:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_14_REG_INJ
5740:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_REG          (0)
5741:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_INJ          (0)
5742:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_15_REG_INJ
5743:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_REG          (0)
5744:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_INJ          (0)
5745:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_16_REG_INJ
5746:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_REG          (0)
5747:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_INJ          (0)
5748:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_17_REG_INJ
5749:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_REG          (0)
5750:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_INJ          (0)
5751:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_CHANNEL_18_REG_INJ
5752:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
5753:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (0) On STM32G4, parameter available only on analog watchdog number: AWD1.
5754:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5755:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetAnalogWDMonitChannels(ADC_TypeDef *ADCx, uint32_t AWDy)
5756:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5757:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->CFGR, ((AWDy & ADC_AWD_CRX_REGOFF
5758:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                             + ((AWDy & ADC_AWD_CR12_REGOFFSETGAP_MA
5759:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5760:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register uint32_t AnalogWDMonitChannels = (READ_BIT(*preg, AWDy) & AWDy & ADC_AWD_CR_ALL_CHANNEL_
5761:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5762:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* If "AnalogWDMonitChannels" == 0, then the selected AWD is disabled       */
5763:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* (parameter value LL_ADC_AWD_DISABLE).                                    */
5764:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Else, the selected AWD is enabled and is monitoring a group of channels  */
5765:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* or a single channel.                                                     */
5766:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   if (AnalogWDMonitChannels != 0UL)
5767:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   {
5768:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     if (AWDy == LL_ADC_AWD1)
5769:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     {
5770:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       if ((AnalogWDMonitChannels & ADC_CFGR_AWD1SGL) == 0UL)
5771:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       {
5772:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         /* AWD monitoring a group of channels */
5773:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         AnalogWDMonitChannels = ((AnalogWDMonitChannels
5774:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                   | (ADC_AWD_CR23_CHANNEL_MASK)
5775:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                  )
5776:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                  & (~(ADC_CFGR_AWD1CH))
5777:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                 );
5778:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       }
5779:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       else
5780:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       {
5781:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         /* AWD monitoring a single channel */
5782:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         AnalogWDMonitChannels = (AnalogWDMonitChannels
5783:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                  | (ADC_AWD2CR_AWD2CH_0 << (AnalogWDMonitChannels >> ADC_CFGR_AWD1C
5784:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                 );
5785:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       }
5786:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     }
5787:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     else
5788:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     {
5789:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       if ((AnalogWDMonitChannels & ADC_AWD_CR23_CHANNEL_MASK) == ADC_AWD_CR23_CHANNEL_MASK)
5790:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       {
5791:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         /* AWD monitoring a group of channels */
5792:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         AnalogWDMonitChannels = (ADC_AWD_CR23_CHANNEL_MASK
5793:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                  | ((ADC_CFGR_JAWD1EN | ADC_CFGR_AWD1EN))
5794:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                 );
5795:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       }
5796:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       else
5797:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       {
5798:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         /* AWD monitoring a single channel */
5799:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         /* AWD monitoring a group of channels */
5800:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****         AnalogWDMonitChannels = (AnalogWDMonitChannels
5801:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                  | (ADC_CFGR_JAWD1EN | ADC_CFGR_AWD1EN | ADC_CFGR_AWD1SGL)
5802:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                  | (__LL_ADC_CHANNEL_TO_DECIMAL_NB(AnalogWDMonitChannels) << ADC_CF
5803:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                 );
5804:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****       }
5805:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****     }
5806:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   }
5807:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5808:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return AnalogWDMonitChannels;
5809:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5810:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5811:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5812:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC analog watchdog thresholds value of both thresholds
5813:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         high and low.
5814:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If value of only one threshold high or low must be set,
5815:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_SetAnalogWDThresholds().
5816:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of ADC resolution different of 12 bits,
5817:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         analog watchdog thresholds data require a specific shift.
5818:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Use helper macro @ref __LL_ADC_ANALOGWD_SET_THRESHOLD_RESOLUTION().
5819:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, there are 2 kinds of analog watchdog
5820:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         instance:
5821:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD standard (instance AWD1):
5822:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: can monitor 1 channel or all channels.
5823:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: ADC groups regular and-or injected.
5824:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is not limited (corresponds to
5825:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC resolution configured).
5826:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD flexible (instances AWD2, AWD3):
5827:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: flexible on channels monitored, selection is
5828:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             channel wise, from from 1 to all channels.
5829:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Specificity of this analog watchdog: Multiple channels can
5830:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             be selected. For example:
5831:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             (LL_ADC_AWD_CHANNEL4_REG_INJ | LL_ADC_AWD_CHANNEL5_REG_INJ | ...)
5832:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: not selection possible (monitoring on both
5833:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             groups regular and injected).
5834:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Channels selected are monitored on groups regular and injected:
5835:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG_INJ (do not use parameters
5836:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG and LL_ADC_AWD_CHANNELxx_INJ)
5837:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is limited to 8 bits: if ADC resolution is
5838:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             12 bits the 4 LSB are ignored, if ADC resolution is 10 bits
5839:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             the 2 LSB are ignored.
5840:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC oversampling is enabled, ADC analog watchdog thresholds are
5841:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         impacted: the comparison of analog watchdog thresholds is done on
5842:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         oversampling final computation (after ratio and shift application):
5843:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC data register bitfield [15:4] (12 most significant bits).
5844:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll TR1      HT1            LL_ADC_ConfigAnalogWDThresholds\n
5845:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR2      HT2            LL_ADC_ConfigAnalogWDThresholds\n
5846:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR3      HT3            LL_ADC_ConfigAnalogWDThresholds\n
5847:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR1      LT1            LL_ADC_ConfigAnalogWDThresholds\n
5848:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR2      LT2            LL_ADC_ConfigAnalogWDThresholds\n
5849:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR3      LT3            LL_ADC_ConfigAnalogWDThresholds
5850:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5851:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDy This parameter can be one of the following values:
5852:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD1
5853:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD2
5854:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD3
5855:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDThresholdHighValue Value between Min_Data=0x000 and Max_Data=0xFFF
5856:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDThresholdLowValue Value between Min_Data=0x000 and Max_Data=0xFFF
5857:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
5858:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5859:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_ConfigAnalogWDThresholds(ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t AWD
5860:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                      uint32_t AWDThresholdLowValue)
5861:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5862:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bits with content of parameter "AWDThresholdxxxValue" with bits      */
5863:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* position in register and register position depending on parameter        */
5864:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* "AWDy".                                                                  */
5865:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameters "AWDy" and "AWDThresholdxxxValue" are used with masks because */
5866:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* containing other bits reserved for other purpose.                        */
5867:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->TR1, ((AWDy & ADC_AWD_TRX_REGOFFSET_MAS
5868:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5869:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
5870:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_TR1_HT1 | ADC_TR1_LT1,
5871:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              (AWDThresholdHighValue << ADC_TR1_HT1_BITOFFSET_POS) | AWDThresholdLowValue);
5872:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5873:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5874:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5875:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC analog watchdog threshold value of threshold
5876:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         high or low.
5877:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If values of both thresholds high or low must be set,
5878:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         use function @ref LL_ADC_ConfigAnalogWDThresholds().
5879:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of ADC resolution different of 12 bits,
5880:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         analog watchdog thresholds data require a specific shift.
5881:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Use helper macro @ref __LL_ADC_ANALOGWD_SET_THRESHOLD_RESOLUTION().
5882:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, there are 2 kinds of analog watchdog
5883:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         instance:
5884:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD standard (instance AWD1):
5885:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: can monitor 1 channel or all channels.
5886:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: ADC groups regular and-or injected.
5887:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is not limited (corresponds to
5888:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             ADC resolution configured).
5889:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - AWD flexible (instances AWD2, AWD3):
5890:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - channels monitored: flexible on channels monitored, selection is
5891:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             channel wise, from from 1 to all channels.
5892:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Specificity of this analog watchdog: Multiple channels can
5893:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             be selected. For example:
5894:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             (LL_ADC_AWD_CHANNEL4_REG_INJ | LL_ADC_AWD_CHANNEL5_REG_INJ | ...)
5895:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - groups monitored: not selection possible (monitoring on both
5896:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             groups regular and injected).
5897:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             Channels selected are monitored on groups regular and injected:
5898:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG_INJ (do not use parameters
5899:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             LL_ADC_AWD_CHANNELxx_REG and LL_ADC_AWD_CHANNELxx_INJ)
5900:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           - resolution: resolution is limited to 8 bits: if ADC resolution is
5901:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             12 bits the 4 LSB are ignored, if ADC resolution is 10 bits
5902:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *             the 2 LSB are ignored.
5903:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC oversampling is enabled, ADC analog watchdog thresholds are
5904:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         impacted: the comparison of analog watchdog thresholds is done on
5905:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         oversampling final computation (after ratio and shift application):
5906:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC data register bitfield [15:4] (12 most significant bits).
5907:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is not conditioned to
5908:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
5909:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC can be disabled, enabled with or without conversion on going
5910:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either ADC groups regular or injected.
5911:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll TR1      HT1            LL_ADC_SetAnalogWDThresholds\n
5912:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR2      HT2            LL_ADC_SetAnalogWDThresholds\n
5913:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR3      HT3            LL_ADC_SetAnalogWDThresholds\n
5914:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR1      LT1            LL_ADC_SetAnalogWDThresholds\n
5915:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR2      LT2            LL_ADC_SetAnalogWDThresholds\n
5916:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR3      LT3            LL_ADC_SetAnalogWDThresholds
5917:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5918:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDy This parameter can be one of the following values:
5919:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD1
5920:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD2
5921:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD3
5922:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDThresholdsHighLow This parameter can be one of the following values:
5923:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_THRESHOLD_HIGH
5924:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_THRESHOLD_LOW
5925:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDThresholdValue Value between Min_Data=0x000 and Max_Data=0xFFF
5926:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
5927:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5928:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetAnalogWDThresholds(ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t AWDThr
5929:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                                                   uint32_t AWDThresholdValue)
5930:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5931:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Set bits with content of parameter "AWDThresholdValue" with bits         */
5932:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* position in register and register position depending on parameters       */
5933:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* "AWDThresholdsHighLow" and "AWDy".                                       */
5934:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Parameters "AWDy" and "AWDThresholdValue" are used with masks because    */
5935:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* containing other bits reserved for other purpose.                        */
5936:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->TR1, ((AWDy & ADC_AWD_TRX_REGOFFSET_MAS
5937:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5938:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(*preg,
5939:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              AWDThresholdsHighLow,
5940:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              AWDThresholdValue << ((AWDThresholdsHighLow & ADC_AWD_TRX_BIT_HIGH_MASK) >> ADC_AWD_TR
5941:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5942:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5943:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5944:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC analog watchdog threshold value of threshold high,
5945:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         threshold low or raw data with ADC thresholds high and low
5946:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         concatenated.
5947:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If raw data with ADC thresholds high and low is retrieved,
5948:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         the data of each threshold high or low can be isolated
5949:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         using helper macro:
5950:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_ANALOGWD_THRESHOLDS_HIGH_LOW().
5951:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of ADC resolution different of 12 bits,
5952:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         analog watchdog thresholds data require a specific shift.
5953:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Use helper macro @ref __LL_ADC_ANALOGWD_GET_THRESHOLD_RESOLUTION().
5954:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll TR1      HT1            LL_ADC_GetAnalogWDThresholds\n
5955:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR2      HT2            LL_ADC_GetAnalogWDThresholds\n
5956:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR3      HT3            LL_ADC_GetAnalogWDThresholds\n
5957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR1      LT1            LL_ADC_GetAnalogWDThresholds\n
5958:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR2      LT2            LL_ADC_GetAnalogWDThresholds\n
5959:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         TR3      LT3            LL_ADC_GetAnalogWDThresholds
5960:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5961:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDy This parameter can be one of the following values:
5962:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD1
5963:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD2
5964:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD3
5965:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDThresholdsHighLow This parameter can be one of the following values:
5966:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_THRESHOLD_HIGH
5967:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_THRESHOLD_LOW
5968:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_THRESHOLDS_HIGH_LOW
5969:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0xFFF
5970:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
5971:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetAnalogWDThresholds(ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t AW
5972:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
5973:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   register const __IO uint32_t *preg = __ADC_PTR_REG_OFFSET(ADCx->TR1, ((AWDy & ADC_AWD_TRX_REGOFFS
5974:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5975:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(*preg,
5976:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                              (AWDThresholdsHighLow | ADC_TR1_LT1))
5977:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                     >> (((AWDThresholdsHighLow & ADC_AWD_TRX_BIT_HIGH_MASK) >> ADC_AWD_TRX_BIT_HIGH
5978:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                    );
5979:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
5980:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
5981:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
5982:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC analog watchdog filtering configuration
5983:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
5984:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
5985:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
5986:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
5987:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *  @note  On this STM32 serie, this feature is only available on first
5988:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         analog watchdog (AWD1)
5989:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll TR1      AWDFILT        LL_ADC_SetAWDFilteringConfiguration
5990:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
5991:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDy This parameter can be one of the following values:
5992:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD1
5993:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  FilteringConfig This parameter can be one of the following values:
5994:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_NONE
5995:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_2SAMPLES
5996:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_3SAMPLES
5997:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_4SAMPLES
5998:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_5SAMPLES
5999:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_6SAMPLES
6000:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_7SAMPLES
6001:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_8SAMPLES
6002:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6003:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6004:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetAWDFilteringConfiguration(ADC_TypeDef *ADCx, uint32_t AWDy, uint32_t
6005:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6006:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Prevent unused argument(s) compilation warning */
6007:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (void)(AWDy);
6008:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->TR1, ADC_TR1_AWDFILT, FilteringConfig);
6009:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6010:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6011:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6012:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC analog watchdog filtering configuration
6013:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *  @note  On this STM32 serie, this feature is only available on first
6014:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         analog watchdog (AWD1)
6015:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll TR1      AWDFILT        LL_ADC_GetAWDFilteringConfiguration
6016:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6017:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  AWDy This parameter can be one of the following values:
6018:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD1
6019:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be:
6020:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_NONE
6021:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_2SAMPLES
6022:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_3SAMPLES
6023:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_4SAMPLES
6024:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_5SAMPLES
6025:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_6SAMPLES
6026:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_7SAMPLES
6027:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_AWD_FILTERING_8SAMPLES
6028:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6029:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetAWDFilteringConfiguration(ADC_TypeDef *ADCx, uint32_t AWDy)
6030:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6031:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Prevent unused argument(s) compilation warning */
6032:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   (void)(AWDy);
6033:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->TR1, ADC_TR1_AWDFILT));
6034:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6035:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6036:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6037:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
6038:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6039:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6040:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_ADC_oversampling Configuration of ADC transversal scope: over
6041:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
6042:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6043:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6044:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6045:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC oversampling scope: ADC groups regular and-or injected
6046:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (availability of ADC group injected depends on STM32 families).
6047:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If both groups regular and injected are selected,
6048:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         specify behavior of ADC group injected interrupting
6049:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         group regular: when ADC group injected is triggered,
6050:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         the oversampling on ADC group regular is either
6051:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         temporary stopped and continued, or resumed from start
6052:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (oversampler buffer reset).
6053:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6054:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6055:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
6056:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
6057:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    ROVSE          LL_ADC_SetOverSamplingScope\n
6058:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    JOVSE          LL_ADC_SetOverSamplingScope\n
6059:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    ROVSM          LL_ADC_SetOverSamplingScope
6060:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6061:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  OvsScope This parameter can be one of the following values:
6062:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_DISABLE
6063:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_REGULAR_CONTINUED
6064:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_REGULAR_RESUMED
6065:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_INJECTED
6066:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_INJ_REG_RESUMED
6067:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6068:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6069:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetOverSamplingScope(ADC_TypeDef *ADCx, uint32_t OvsScope)
6070:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6071:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR2, ADC_CFGR2_ROVSE | ADC_CFGR2_JOVSE | ADC_CFGR2_ROVSM, OvsScope);
6072:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6073:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6074:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6075:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC oversampling scope: ADC groups regular and-or injected
6076:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (availability of ADC group injected depends on STM32 families).
6077:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If both groups regular and injected are selected,
6078:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         specify behavior of ADC group injected interrupting
6079:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         group regular: when ADC group injected is triggered,
6080:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         the oversampling on ADC group regular is either
6081:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         temporary stopped and continued, or resumed from start
6082:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (oversampler buffer reset).
6083:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    ROVSE          LL_ADC_GetOverSamplingScope\n
6084:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    JOVSE          LL_ADC_GetOverSamplingScope\n
6085:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    ROVSM          LL_ADC_GetOverSamplingScope
6086:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6087:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
6088:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_DISABLE
6089:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_REGULAR_CONTINUED
6090:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_REGULAR_RESUMED
6091:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_INJECTED
6092:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_GRP_INJ_REG_RESUMED
6093:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6094:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOverSamplingScope(ADC_TypeDef *ADCx)
6095:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6096:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR2, ADC_CFGR2_ROVSE | ADC_CFGR2_JOVSE | ADC_CFGR2_ROVSM));
6097:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6098:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6099:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6100:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC oversampling discontinuous mode (triggered mode)
6101:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on the selected ADC group.
6102:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Number of oversampled conversions are done either in:
6103:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - continuous mode (all conversions of oversampling ratio
6104:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           are done from 1 trigger)
6105:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - discontinuous mode (each conversion of oversampling ratio
6106:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           needs a trigger)
6107:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6108:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6109:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
6110:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on group regular.
6111:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, oversampling discontinuous mode
6112:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (triggered mode) can be used only when oversampling is
6113:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         set on group regular only and in resumed mode.
6114:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    TROVS          LL_ADC_SetOverSamplingDiscont
6115:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6116:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  OverSamplingDiscont This parameter can be one of the following values:
6117:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_REG_CONT
6118:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_REG_DISCONT
6119:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6120:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6121:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetOverSamplingDiscont(ADC_TypeDef *ADCx, uint32_t OverSamplingDiscont)
6122:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6123:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR2, ADC_CFGR2_TROVS, OverSamplingDiscont);
6124:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6125:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6126:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6127:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC oversampling discontinuous mode (triggered mode)
6128:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on the selected ADC group.
6129:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   Number of oversampled conversions are done either in:
6130:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - continuous mode (all conversions of oversampling ratio
6131:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           are done from 1 trigger)
6132:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - discontinuous mode (each conversion of oversampling ratio
6133:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           needs a trigger)
6134:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    TROVS          LL_ADC_GetOverSamplingDiscont
6135:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6136:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
6137:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_REG_CONT
6138:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_REG_DISCONT
6139:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6140:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOverSamplingDiscont(ADC_TypeDef *ADCx)
6141:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6142:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR2, ADC_CFGR2_TROVS));
6143:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6144:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6145:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6146:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC oversampling
6147:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (impacting both ADC groups regular and injected)
6148:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function set the 2 items of oversampling configuration:
6149:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ratio
6150:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - shift
6151:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6152:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6153:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be disabled or enabled without conversion on going
6154:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
6155:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    OVSS           LL_ADC_ConfigOverSamplingRatioShift\n
6156:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CFGR2    OVSR           LL_ADC_ConfigOverSamplingRatioShift
6157:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6158:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Ratio This parameter can be one of the following values:
6159:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_2
6160:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_4
6161:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_8
6162:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_16
6163:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_32
6164:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_64
6165:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_128
6166:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_256
6167:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Shift This parameter can be one of the following values:
6168:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_NONE
6169:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_1
6170:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_2
6171:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_3
6172:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_4
6173:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_5
6174:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_6
6175:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_7
6176:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_8
6177:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6178:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6179:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_ConfigOverSamplingRatioShift(ADC_TypeDef *ADCx, uint32_t Ratio, uint32_
6180:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6181:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CFGR2, (ADC_CFGR2_OVSS | ADC_CFGR2_OVSR), (Shift | Ratio));
6182:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6183:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6184:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6185:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC oversampling ratio
6186:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *        (impacting both ADC groups regular and injected)
6187:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    OVSR           LL_ADC_GetOverSamplingRatio
6188:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6189:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Ratio This parameter can be one of the following values:
6190:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_2
6191:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_4
6192:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_8
6193:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_16
6194:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_32
6195:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_64
6196:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_128
6197:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_RATIO_256
6198:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6199:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOverSamplingRatio(ADC_TypeDef *ADCx)
6200:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6201:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR2, ADC_CFGR2_OVSR));
6202:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6203:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6204:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6205:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC oversampling shift
6206:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *        (impacting both ADC groups regular and injected)
6207:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    OVSS           LL_ADC_GetOverSamplingShift
6208:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6209:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Shift This parameter can be one of the following values:
6210:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_NONE
6211:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_1
6212:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_2
6213:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_3
6214:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_4
6215:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_5
6216:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_6
6217:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_7
6218:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_OVS_SHIFT_RIGHT_8
6219:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6220:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetOverSamplingShift(ADC_TypeDef *ADCx)
6221:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6222:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->CFGR2, ADC_CFGR2_OVSS));
6223:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6224:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6225:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6226:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
6227:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6228:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6229:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Configuration_ADC_Multimode Configuration of ADC hierarchical scope: multim
6230:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
6231:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6232:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6233:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
6234:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6235:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC multimode configuration to operate in independent mode
6236:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or multimode (for devices with several ADC instances).
6237:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If multimode configuration: the selected ADC instance is
6238:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         either master or slave depending on hardware.
6239:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to reference manual.
6240:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6241:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6242:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         All ADC instances of the ADC common group must be disabled.
6243:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This check can be done with function @ref LL_ADC_IsEnabled() for each
6244:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instance or by using helper macro
6245:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE().
6246:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      DUAL           LL_ADC_SetMultimode
6247:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
6248:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
6249:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  Multimode This parameter can be one of the following values:
6250:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_INDEPENDENT
6251:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_SIMULT
6252:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_INTERL
6253:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_INJ_SIMULT
6254:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_INJ_ALTERN
6255:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_SIM_INJ_SIM
6256:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_SIM_INJ_ALT
6257:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_INT_INJ_SIM
6258:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6259:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6260:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetMultimode(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t Multimode)
6261:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6262:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCxy_COMMON->CCR, ADC_CCR_DUAL, Multimode);
6263:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6264:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6265:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6266:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC multimode configuration to operate in independent mode
6267:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or multimode (for devices with several ADC instances).
6268:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If multimode configuration: the selected ADC instance is
6269:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         either master or slave depending on hardware.
6270:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to reference manual.
6271:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      DUAL           LL_ADC_GetMultimode
6272:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
6273:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
6274:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
6275:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_INDEPENDENT
6276:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_SIMULT
6277:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_INTERL
6278:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_INJ_SIMULT
6279:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_INJ_ALTERN
6280:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_SIM_INJ_SIM
6281:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_SIM_INJ_ALT
6282:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_DUAL_REG_INT_INJ_SIM
6283:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6284:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetMultimode(ADC_Common_TypeDef *ADCxy_COMMON)
6285:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6286:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCxy_COMMON->CCR, ADC_CCR_DUAL));
6287:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6288:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6289:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6290:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC multimode conversion data transfer: no transfer
6291:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or transfer by DMA.
6292:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC multimode transfer by DMA is not selected:
6293:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         each ADC uses its own DMA channel, with its individual
6294:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         DMA transfer settings.
6295:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         If ADC multimode transfer by DMA is selected:
6296:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         One DMA channel is used for both ADC (DMA of ADC master)
6297:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Specifies the DMA requests mode:
6298:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Limited mode (One shot mode): DMA transfer requests are stopped
6299:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           when number of DMA data transfers (number of
6300:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions) is reached.
6301:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode non-circular.
6302:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Unlimited mode: DMA transfer requests are unlimited,
6303:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           whatever number of DMA data transfers (number of
6304:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions).
6305:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode circular.
6306:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC DMA requests mode is set to unlimited and DMA is set to
6307:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         mode non-circular:
6308:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         when DMA transfers size will be reached, DMA will stop transfers of
6309:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversions data ADC will raise an overrun error
6310:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (overrun flag and interruption if enabled).
6311:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   How to retrieve multimode conversion data:
6312:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Whatever multimode transfer by DMA setting: using function
6313:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref LL_ADC_REG_ReadMultiConversionData32().
6314:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         If ADC multimode transfer by DMA is selected: conversion data
6315:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is a raw data with ADC master and slave concatenated.
6316:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         A macro is available to get the conversion data of
6317:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC master or ADC slave: see helper macro
6318:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_MULTI_CONV_DATA_MASTER_SLAVE().
6319:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6320:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6321:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         All ADC instances of the ADC common group must be disabled
6322:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or enabled without conversion on going on group regular.
6323:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      MDMA           LL_ADC_SetMultiDMATransfer\n
6324:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      DMACFG         LL_ADC_SetMultiDMATransfer
6325:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
6326:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
6327:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  MultiDMATransfer This parameter can be one of the following values:
6328:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_EACH_ADC
6329:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_LIMIT_RES12_10B
6330:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_LIMIT_RES8_6B
6331:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_UNLMT_RES12_10B
6332:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_UNLMT_RES8_6B
6333:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6334:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6335:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetMultiDMATransfer(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t MultiDMA
6336:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6337:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCxy_COMMON->CCR, ADC_CCR_MDMA | ADC_CCR_DMACFG, MultiDMATransfer);
6338:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6339:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6340:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6341:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC multimode conversion data transfer: no transfer
6342:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or transfer by DMA.
6343:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC multimode transfer by DMA is not selected:
6344:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         each ADC uses its own DMA channel, with its individual
6345:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         DMA transfer settings.
6346:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         If ADC multimode transfer by DMA is selected:
6347:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         One DMA channel is used for both ADC (DMA of ADC master)
6348:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Specifies the DMA requests mode:
6349:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Limited mode (One shot mode): DMA transfer requests are stopped
6350:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           when number of DMA data transfers (number of
6351:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions) is reached.
6352:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode non-circular.
6353:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - Unlimited mode: DMA transfer requests are unlimited,
6354:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           whatever number of DMA data transfers (number of
6355:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           ADC conversions).
6356:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           This ADC mode is intended to be used with DMA mode circular.
6357:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If ADC DMA requests mode is set to unlimited and DMA is set to
6358:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         mode non-circular:
6359:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         when DMA transfers size will be reached, DMA will stop transfers of
6360:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversions data ADC will raise an overrun error
6361:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (overrun flag and interruption if enabled).
6362:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   How to retrieve multimode conversion data:
6363:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Whatever multimode transfer by DMA setting: using function
6364:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref LL_ADC_REG_ReadMultiConversionData32().
6365:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         If ADC multimode transfer by DMA is selected: conversion data
6366:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is a raw data with ADC master and slave concatenated.
6367:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         A macro is available to get the conversion data of
6368:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC master or ADC slave: see helper macro
6369:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_MULTI_CONV_DATA_MASTER_SLAVE().
6370:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      MDMA           LL_ADC_GetMultiDMATransfer\n
6371:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CCR      DMACFG         LL_ADC_GetMultiDMATransfer
6372:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
6373:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
6374:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
6375:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_EACH_ADC
6376:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_LIMIT_RES12_10B
6377:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_LIMIT_RES8_6B
6378:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_UNLMT_RES12_10B
6379:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_REG_DMA_UNLMT_RES8_6B
6380:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6381:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetMultiDMATransfer(ADC_Common_TypeDef *ADCxy_COMMON)
6382:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6383:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCxy_COMMON->CCR, ADC_CCR_MDMA | ADC_CCR_DMACFG));
6384:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6385:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6386:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6387:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Set ADC multimode delay between 2 sampling phases.
6388:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   The sampling delay range depends on ADC resolution:
6389:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC resolution 12 bits can have maximum delay of 12 cycles.
6390:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC resolution 10 bits can have maximum delay of 10 cycles.
6391:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC resolution  8 bits can have maximum delay of  8 cycles.
6392:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - ADC resolution  6 bits can have maximum delay of  6 cycles.
6393:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6394:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6395:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         All ADC instances of the ADC common group must be disabled.
6396:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         This check can be done with function @ref LL_ADC_IsEnabled() for each
6397:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC instance or by using helper macro helper macro
6398:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE().
6399:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      DELAY          LL_ADC_SetMultiTwoSamplingDelay
6400:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
6401:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
6402:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  MultiTwoSamplingDelay This parameter can be one of the following values:
6403:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_1CYCLE
6404:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_2CYCLES
6405:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_3CYCLES
6406:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_4CYCLES
6407:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_5CYCLES
6408:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_6CYCLES  (1)
6409:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_7CYCLES  (1)
6410:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_8CYCLES  (2)
6411:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_9CYCLES  (2)
6412:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_10CYCLES (2)
6413:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_11CYCLES (3)
6414:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_12CYCLES (3)
6415:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
6416:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) Parameter available only if ADC resolution is 12, 10 or 8 bits.\n
6417:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) Parameter available only if ADC resolution is 12 or 10 bits.\n
6418:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) Parameter available only if ADC resolution is 12 bits.
6419:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6420:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6421:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_SetMultiTwoSamplingDelay(ADC_Common_TypeDef *ADCxy_COMMON, uint32_t Mul
6422:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6423:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCxy_COMMON->CCR, ADC_CCR_DELAY, MultiTwoSamplingDelay);
6424:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6425:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6426:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6427:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC multimode delay between 2 sampling phases.
6428:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CCR      DELAY          LL_ADC_GetMultiTwoSamplingDelay
6429:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
6430:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
6431:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Returned value can be one of the following values:
6432:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_1CYCLE
6433:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_2CYCLES
6434:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_3CYCLES
6435:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_4CYCLES
6436:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_5CYCLES
6437:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_6CYCLES  (1)
6438:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_7CYCLES  (1)
6439:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_8CYCLES  (2)
6440:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_9CYCLES  (2)
6441:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_10CYCLES (2)
6442:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_11CYCLES (3)
6443:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_TWOSMP_DELAY_12CYCLES (3)
6444:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *
6445:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (1) Parameter available only if ADC resolution is 12, 10 or 8 bits.\n
6446:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (2) Parameter available only if ADC resolution is 12 or 10 bits.\n
6447:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (3) Parameter available only if ADC resolution is 12 bits.
6448:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6449:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_GetMultiTwoSamplingDelay(ADC_Common_TypeDef *ADCxy_COMMON)
6450:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6451:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCxy_COMMON->CCR, ADC_CCR_DELAY));
6452:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6453:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif /* ADC_MULTIMODE_SUPPORT */
6454:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6455:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6456:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
6457:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6458:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Operation_ADC_Instance Operation on ADC hierarchical scope: ADC instance
6459:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
6460:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6461:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6462:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6463:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Put ADC instance in deep power down state.
6464:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of ADC calibration necessary: When ADC is in deep-power-down
6465:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         state, the internal analog calibration is lost. After exiting from
6466:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         deep power down, calibration must be relaunched or calibration factor
6467:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (preliminarily saved) must be set back into calibration register.
6468:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6469:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6470:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be ADC disabled.
6471:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       DEEPPWD        LL_ADC_EnableDeepPowerDown
6472:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6473:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6474:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6475:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_EnableDeepPowerDown(ADC_TypeDef *ADCx)
6476:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6477:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6478:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6479:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6480:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6481:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6482:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_DEEPPWD);
6483:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6484:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6485:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6486:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Disable ADC deep power down mode.
6487:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   In case of ADC calibration necessary: When ADC is in deep-power-down
6488:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         state, the internal analog calibration is lost. After exiting from
6489:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         deep power down, calibration must be relaunched or calibration factor
6490:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (preliminarily saved) must be set back into calibration register.
6491:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6492:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6493:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be ADC disabled.
6494:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       DEEPPWD        LL_ADC_DisableDeepPowerDown
6495:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6496:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6497:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6498:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_DisableDeepPowerDown(ADC_TypeDef *ADCx)
6499:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6500:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6501:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6502:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6503:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   CLEAR_BIT(ADCx->CR, (ADC_CR_DEEPPWD | ADC_CR_BITS_PROPERTY_RS));
6504:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6505:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6506:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6507:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get the selected ADC instance deep power down state.
6508:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       DEEPPWD        LL_ADC_IsDeepPowerDownEnabled
6509:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6510:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: deep power down is disabled, 1: deep power down is enabled.
6511:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6512:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_IsDeepPowerDownEnabled(ADC_TypeDef *ADCx)
6513:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6514:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_DEEPPWD) == (ADC_CR_DEEPPWD)) ? 1UL : 0UL);
6515:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6516:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6517:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6518:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Enable ADC instance internal voltage regulator.
6519:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, after ADC internal voltage regulator enable,
6520:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a delay for ADC internal voltage regulator stabilization
6521:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is required before performing a ADC calibration or ADC enable.
6522:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet, parameter tADCVREG_STUP.
6523:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to literal @ref LL_ADC_DELAY_INTERNAL_REGUL_STAB_US.
6524:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6525:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6526:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be ADC disabled.
6527:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADVREGEN       LL_ADC_EnableInternalRegulator
6528:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6529:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6530:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6531:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_EnableInternalRegulator(ADC_TypeDef *ADCx)
6532:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6533:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6534:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6535:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6536:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6537:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6538:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_ADVREGEN);
6539:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6540:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6541:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6542:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Disable ADC internal voltage regulator.
6543:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6544:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6545:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be ADC disabled.
6546:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADVREGEN       LL_ADC_DisableInternalRegulator
6547:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6548:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6549:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6550:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_DisableInternalRegulator(ADC_TypeDef *ADCx)
6551:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6552:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   CLEAR_BIT(ADCx->CR, (ADC_CR_ADVREGEN | ADC_CR_BITS_PROPERTY_RS));
6553:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6554:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6555:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6556:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get the selected ADC instance internal voltage regulator state.
6557:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADVREGEN       LL_ADC_IsInternalRegulatorEnabled
6558:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6559:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: internal regulator is disabled, 1: internal regulator is enabled.
6560:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6561:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_IsInternalRegulatorEnabled(ADC_TypeDef *ADCx)
6562:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6563:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_ADVREGEN) == (ADC_CR_ADVREGEN)) ? 1UL : 0UL);
6564:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6565:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6566:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6567:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Enable the selected ADC instance.
6568:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, after ADC enable, a delay for
6569:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC internal analog stabilization is required before performing a
6570:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC conversion start.
6571:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to device datasheet, parameter tSTAB.
6572:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, flag LL_ADC_FLAG_ADRDY is raised when the ADC
6573:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is enabled and when conversion clock is active.
6574:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (not only core clock: this ADC has a dual clock domain)
6575:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6576:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6577:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be ADC disabled and ADC internal voltage regulator enabled.
6578:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADEN           LL_ADC_Enable
6579:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6580:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6581:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6582:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_Enable(ADC_TypeDef *ADCx)
6583:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6584:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6585:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6586:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6587:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6588:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6589:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_ADEN);
6590:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6591:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6592:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6593:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Disable the selected ADC instance.
6594:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6595:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6596:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be not disabled. Must be enabled without conversion on going
6597:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         on either groups regular or injected.
6598:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADDIS          LL_ADC_Disable
6599:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6600:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6601:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6602:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_Disable(ADC_TypeDef *ADCx)
6603:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6604:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6605:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6606:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6608:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6609:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_ADDIS);
6610:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6611:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6612:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6613:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get the selected ADC instance enable state.
6614:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, flag LL_ADC_FLAG_ADRDY is raised when the ADC
6615:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         is enabled and when conversion clock is active.
6616:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (not only core clock: this ADC has a dual clock domain)
6617:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADEN           LL_ADC_IsEnabled
6618:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6619:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: ADC is disabled, 1: ADC is enabled.
6620:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6621:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_IsEnabled(ADC_TypeDef *ADCx)
 111              		.loc 3 6621 26 view .LVU24
 112              	.LBB23:
6622:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_ADEN) == (ADC_CR_ADEN)) ? 1UL : 0UL);
 113              		.loc 3 6623 3 view .LVU25
 114              		.loc 3 6623 12 is_stmt 0 view .LVU26
 115 0000 4FF0A043 		mov	r3, #1342177280
 116              	.LBE23:
 117              	.LBE22:
 118              	.LBB25:
 119              	.LBB26:
 120 0004 03F58073 		add	r3, r3, #256
 121              	.LBE26:
 122              	.LBE25:
 123              	.LBB29:
 124              	.LBB24:
 125 0008 53F8F82C 		ldr	r2, [r3, #-248]
 126              	.LVL6:
 127              		.loc 3 6623 12 view .LVU27
 128              	.LBE24:
 129              	.LBE29:
 130              	.LBB30:
 131              	.LBI25:
6621:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 132              		.loc 3 6621 26 is_stmt 1 view .LVU28
 133              	.LBB27:
 134              		.loc 3 6623 3 view .LVU29
 135              		.loc 3 6623 12 is_stmt 0 view .LVU30
 136 000c 9B68     		ldr	r3, [r3, #8]
 137              		.loc 3 6623 68 view .LVU31
 138 000e 1343     		orrs	r3, r3, r2
 139              	.LBE27:
 140              	.LBE30:
 620:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 141              		.loc 1 620 1 view .LVU32
 142 0010 70B5     		push	{r4, r5, r6, lr}
 143              		.cfi_def_cfa_offset 16
 144              		.cfi_offset 4, -16
 145              		.cfi_offset 5, -12
 146              		.cfi_offset 6, -8
 147              		.cfi_offset 14, -4
 148              	.LBB31:
 149              	.LBB28:
 150              		.loc 3 6623 68 view .LVU33
 151 0012 13F00105 		ands	r5, r3, #1
 152 0016 14D1     		bne	.L8
 153              	.LVL7:
 154              		.loc 3 6623 68 view .LVU34
 155              	.LBE28:
 156              	.LBE31:
 642:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 643:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Configuration of ADC hierarchical scope:                               */
 644:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - common to several ADC                                               */
 645:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    (all ADC instances belonging to the same ADC common instance)       */
 646:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC clock (conversion clock)                                  */
 647:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - multimode (if several ADC instances available on the                */
 648:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    selected device)                                                    */
 649:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC multimode configuration                                   */
 650:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC multimode DMA transfer                                    */
 651:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC multimode: delay between 2 sampling phases                */
 652:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(ADC_MULTIMODE_SUPPORT)
 653:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     if (ADC_CommonInitStruct->Multimode != LL_ADC_MULTI_INDEPENDENT)
 157              		.loc 1 653 5 is_stmt 1 view .LVU35
 158 0018 D1E90063 		ldrd	r6, r3, [r1]
 159 001c 0A4C     		ldr	r4, .L9
 654:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 655:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       MODIFY_REG(ADCxy_COMMON->CCR,
 160              		.loc 1 655 7 is_stmt 0 view .LVU36
 161 001e 8268     		ldr	r2, [r0, #8]
 653:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 162              		.loc 1 653 8 view .LVU37
 163 0020 53B1     		cbz	r3, .L7
 164              		.loc 1 655 7 is_stmt 1 view .LVU38
 165 0022 1440     		ands	r4, r4, r2
 166 0024 43EA0602 		orr	r2, r3, r6
 167 0028 8B68     		ldr	r3, [r1, #8]
 168 002a 2243     		orrs	r2, r2, r4
 169 002c 1A43     		orrs	r2, r2, r3
 170 002e CB68     		ldr	r3, [r1, #12]
 171 0030 1A43     		orrs	r2, r2, r3
 172 0032 8260     		str	r2, [r0, #8]
 621:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 173              		.loc 1 621 15 is_stmt 0 view .LVU39
 174 0034 2846     		mov	r0, r5
 175              	.LVL8:
 176              	.L6:
 656:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CCR_CKMODE
 657:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_PRESC
 658:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_DUAL
 659:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_MDMA
 660:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_DELAY
 661:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ,
 662:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CommonInitStruct->CommonClock
 663:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CommonInitStruct->Multimode
 664:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CommonInitStruct->MultiDMATransfer
 665:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CommonInitStruct->MultiTwoSamplingDelay
 666:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 );
 667:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
 668:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     else
 669:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 670:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       MODIFY_REG(ADCxy_COMMON->CCR,
 671:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CCR_CKMODE
 672:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_PRESC
 673:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_DUAL
 674:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_MDMA
 675:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CCR_DELAY
 676:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ,
 677:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CommonInitStruct->CommonClock
 678:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | LL_ADC_MULTI_INDEPENDENT
 679:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 );
 680:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
 681:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #else
 682:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_ADC_SetCommonClock(ADCxy_COMMON, ADC_CommonInitStruct->CommonClock);
 683:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif
 684:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 685:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   else
 686:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 687:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Initialization error: One or several ADC instances belonging to        */
 688:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* the same ADC common instance are not disabled.                         */
 689:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     status = ERROR;
 690:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 691:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 692:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   return status;
 177              		.loc 1 692 3 is_stmt 1 view .LVU40
 693:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 178              		.loc 1 693 1 is_stmt 0 view .LVU41
 179 0036 70BD     		pop	{r4, r5, r6, pc}
 180              	.LVL9:
 181              	.L7:
 670:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CCR_CKMODE
 182              		.loc 1 670 7 is_stmt 1 view .LVU42
 183 0038 2240     		ands	r2, r2, r4
 184 003a 3243     		orrs	r2, r2, r6
 185 003c 8260     		str	r2, [r0, #8]
 621:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 186              		.loc 1 621 15 is_stmt 0 view .LVU43
 187 003e 1846     		mov	r0, r3
 188              	.LVL10:
 621:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 189              		.loc 1 621 15 view .LVU44
 190 0040 F9E7     		b	.L6
 191              	.LVL11:
 192              	.L8:
 689:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 193              		.loc 1 689 12 view .LVU45
 194 0042 0120     		movs	r0, #1
 195              	.LVL12:
 689:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 196              		.loc 1 689 12 view .LVU46
 197 0044 F7E7     		b	.L6
 198              	.L10:
 199 0046 00BF     		.align	2
 200              	.L9:
 201 0048 E030C0FF 		.word	-4181792
 202              		.cfi_endproc
 203              	.LFE368:
 205              		.section	.text.LL_ADC_CommonStructInit,"ax",%progbits
 206              		.align	1
 207              		.global	LL_ADC_CommonStructInit
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 213              	LL_ADC_CommonStructInit:
 214              	.LVL13:
 215              	.LFB369:
 694:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 695:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
 696:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Set each @ref LL_ADC_CommonInitTypeDef field to default value.
 697:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_CommonInitStruct Pointer to a @ref LL_ADC_CommonInitTypeDef structure
 698:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *                              whose fields will be set to default values.
 699:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval None
 700:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
 701:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** void LL_ADC_CommonStructInit(LL_ADC_CommonInitTypeDef *ADC_CommonInitStruct)
 702:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 216              		.loc 1 702 1 is_stmt 1 view -0
 217              		.cfi_startproc
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 703:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set ADC_CommonInitStruct fields to default values */
 704:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set fields of ADC common */
 705:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* (all ADC instances belonging to the same ADC common instance) */
 706:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_CommonInitStruct->CommonClock = LL_ADC_CLOCK_SYNC_PCLK_DIV2;
 221              		.loc 1 706 3 view .LVU48
 707:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 708:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #if defined(ADC_MULTIMODE_SUPPORT)
 709:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set fields of ADC multimode */
 710:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_CommonInitStruct->Multimode             = LL_ADC_MULTI_INDEPENDENT;
 222              		.loc 1 710 47 is_stmt 0 view .LVU49
 223 0000 0023     		movs	r3, #0
 224 0002 4FF40032 		mov	r2, #131072
 225 0006 C0E90023 		strd	r2, r3, [r0]
 711:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_CommonInitStruct->MultiDMATransfer      = LL_ADC_MULTI_REG_DMA_EACH_ADC;
 226              		.loc 1 711 3 is_stmt 1 view .LVU50
 712:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_CommonInitStruct->MultiTwoSamplingDelay = LL_ADC_MULTI_TWOSMP_DELAY_1CYCLE;
 227              		.loc 1 712 47 is_stmt 0 view .LVU51
 228 000a C0E90233 		strd	r3, r3, [r0, #8]
 713:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** #endif /* ADC_MULTIMODE_SUPPORT */
 714:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 229              		.loc 1 714 1 view .LVU52
 230 000e 7047     		bx	lr
 231              		.cfi_endproc
 232              	.LFE369:
 234              		.section	.text.LL_ADC_DeInit,"ax",%progbits
 235              		.align	1
 236              		.global	LL_ADC_DeInit
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 242              	LL_ADC_DeInit:
 243              	.LVL14:
 244              	.LFB370:
 715:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 716:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
 717:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  De-initialize registers of the selected ADC instance
 718:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         to their default reset values.
 719:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   To reset all ADC instances quickly (perform a hard reset),
 720:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         use function @ref LL_ADC_CommonDeInit().
 721:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   If this functions returns error status, it means that ADC instance
 722:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         is in an unknown state.
 723:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         In this case, perform a hard reset using high level
 724:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         clock source RCC ADC reset.
 725:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Caution: On this STM32 serie, if several ADC instances are available
 726:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         on the selected device, RCC ADC reset will reset
 727:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         all ADC instances belonging to the common ADC instance.
 728:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Refer to function @ref LL_ADC_CommonDeInit().
 729:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADCx ADC instance
 730:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval An ErrorStatus enumeration value:
 731:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - SUCCESS: ADC registers are de-initialized
 732:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - ERROR: ADC registers are not de-initialized
 733:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
 734:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** ErrorStatus LL_ADC_DeInit(ADC_TypeDef *ADCx)
 735:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 245              		.loc 1 735 1 is_stmt 1 view -0
 246              		.cfi_startproc
 247              		@ args = 0, pretend = 0, frame = 8
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 736:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 249              		.loc 1 736 3 view .LVU54
 737:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 738:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   __IO uint32_t timeout_cpu_cycles = 0UL;
 250              		.loc 1 738 3 view .LVU55
 735:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 251              		.loc 1 735 1 is_stmt 0 view .LVU56
 252 0000 13B5     		push	{r0, r1, r4, lr}
 253              		.cfi_def_cfa_offset 16
 254              		.cfi_offset 4, -8
 255              		.cfi_offset 14, -4
 256              		.loc 1 738 17 view .LVU57
 257 0002 0022     		movs	r2, #0
 258 0004 0192     		str	r2, [sp, #4]
 739:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 740:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Check the parameters */
 741:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
 259              		.loc 1 741 3 is_stmt 1 view .LVU58
 742:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 743:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Disable ADC instance if not already disabled.                            */
 744:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (LL_ADC_IsEnabled(ADCx) == 1UL)
 260              		.loc 1 744 3 view .LVU59
 261              	.LVL15:
 262              	.LBB60:
 263              	.LBI60:
6621:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 264              		.loc 3 6621 26 view .LVU60
 265              	.LBB61:
 266              		.loc 3 6623 3 view .LVU61
 267              	.LBE61:
 268              	.LBE60:
 735:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 269              		.loc 1 735 1 is_stmt 0 view .LVU62
 270 0006 0346     		mov	r3, r0
 271              	.LBB63:
 272              	.LBB62:
 273              		.loc 3 6623 12 view .LVU63
 274 0008 8068     		ldr	r0, [r0, #8]
 275              	.LVL16:
 276              		.loc 3 6623 68 view .LVU64
 277 000a 10F00100 		ands	r0, r0, #1
 278 000e 4CD0     		beq	.L13
 279              	.LVL17:
 280              		.loc 3 6623 68 view .LVU65
 281              	.LBE62:
 282              	.LBE63:
 745:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 746:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Set ADC group regular trigger source to SW start to ensure to not      */
 747:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* have an external trigger event occurring during the conversion stop    */
 748:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* ADC disable process.                                                   */
 749:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_ADC_REG_SetTriggerSource(ADCx, LL_ADC_REG_TRIG_SOFTWARE);
 283              		.loc 1 749 5 is_stmt 1 view .LVU66
 284              	.LBB64:
 285              	.LBI64:
3556:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 286              		.loc 3 3556 22 view .LVU67
 287              	.LBB65:
3558:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 288              		.loc 3 3558 3 view .LVU68
 289 0010 DA68     		ldr	r2, [r3, #12]
 290 0012 22F47E62 		bic	r2, r2, #4064
 291 0016 DA60     		str	r2, [r3, #12]
 292              	.LVL18:
3558:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 293              		.loc 3 3558 3 is_stmt 0 view .LVU69
 294              	.LBE65:
 295              	.LBE64:
 750:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 751:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Stop potential ADC conversion on going on ADC group regular.           */
 752:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     if (LL_ADC_REG_IsConversionOngoing(ADCx) != 0UL)
 296              		.loc 1 752 5 is_stmt 1 view .LVU70
 297              	.LBB66:
 298              	.LBI66:
6624:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6625:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6626:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6627:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get the selected ADC instance disable state.
6628:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADDIS          LL_ADC_IsDisableOngoing
6629:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6630:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: no ADC disable command on going.
6631:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6632:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_IsDisableOngoing(ADC_TypeDef *ADCx)
6633:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6634:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_ADDIS) == (ADC_CR_ADDIS)) ? 1UL : 0UL);
6635:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6636:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6637:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6638:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Start ADC calibration in the mode single-ended
6639:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or differential (for devices with differential mode available).
6640:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, a minimum number of ADC clock cycles
6641:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         are required between ADC end of calibration and ADC enable.
6642:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Refer to literal @ref LL_ADC_DELAY_CALIB_ENABLE_ADC_CYCLES.
6643:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with differential mode available:
6644:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         Calibration of offset is specific to each of
6645:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         single-ended and differential modes
6646:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (calibration run must be performed for each of these
6647:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         differential modes, if used afterwards and if the application
6648:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         requires their calibration).
6649:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6650:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6651:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be ADC disabled.
6652:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADCAL          LL_ADC_StartCalibration\n
6653:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CR       ADCALDIF       LL_ADC_StartCalibration
6654:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6655:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  SingleDiff This parameter can be one of the following values:
6656:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_SINGLE_ENDED
6657:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_DIFFERENTIAL_ENDED
6658:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6659:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6660:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_StartCalibration(ADC_TypeDef *ADCx, uint32_t SingleDiff)
6661:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6662:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6663:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6664:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6665:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6666:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_ADCALDIF | ADC_CR_BITS_PROPERTY_RS,
6667:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_ADCAL | (SingleDiff & ADC_SINGLEDIFF_CALIB_START_MASK));
6668:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6669:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6670:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6671:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC calibration state.
6672:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADCAL          LL_ADC_IsCalibrationOnGoing
6673:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6674:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: calibration complete, 1: calibration in progress.
6675:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6676:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_IsCalibrationOnGoing(ADC_TypeDef *ADCx)
6677:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6678:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_ADCAL) == (ADC_CR_ADCAL)) ? 1UL : 0UL);
6679:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6680:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6681:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6682:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
6683:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6684:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6685:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Operation_ADC_Group_Regular Operation on ADC hierarchical scope: group regu
6686:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
6687:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6688:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6689:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6690:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Start ADC group regular conversion.
6691:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, this function is relevant for both
6692:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal trigger (SW start) and external trigger:
6693:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - If ADC trigger has been set to software start, ADC conversion
6694:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           starts immediately.
6695:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - If ADC trigger has been set to external trigger, ADC conversion
6696:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           will start at next trigger event (on the selected trigger edge)
6697:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           following the ADC start conversion command.
6698:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6699:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6700:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be enabled without conversion on going on group regular,
6701:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without conversion stop command on going on group regular,
6702:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without ADC disable command on going.
6703:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADSTART        LL_ADC_REG_StartConversion
6704:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6705:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6706:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6707:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_StartConversion(ADC_TypeDef *ADCx)
6708:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6709:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6710:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6711:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6712:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6713:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6714:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_ADSTART);
6715:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6716:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6717:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6718:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Stop ADC group regular conversion.
6719:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6720:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6721:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be enabled with conversion on going on group regular,
6722:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without ADC disable command on going.
6723:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADSTP          LL_ADC_REG_StopConversion
6724:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6725:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6726:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6727:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_StopConversion(ADC_TypeDef *ADCx)
6728:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6729:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6730:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6731:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6733:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6734:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_ADSTP);
6735:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6736:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6737:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6738:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion state.
6739:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADSTART        LL_ADC_REG_IsConversionOngoing
6740:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6741:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: no conversion is on going on ADC group regular.
6742:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6743:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_IsConversionOngoing(ADC_TypeDef *ADCx)
 299              		.loc 3 6743 26 view .LVU71
 300              	.LBB67:
6744:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6745:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_ADSTART) == (ADC_CR_ADSTART)) ? 1UL : 0UL);
 301              		.loc 3 6745 3 view .LVU72
 302              		.loc 3 6745 12 is_stmt 0 view .LVU73
 303 0018 9A68     		ldr	r2, [r3, #8]
 304              		.loc 3 6745 74 view .LVU74
 305 001a 5107     		lsls	r1, r2, #29
 306 001c 0AD5     		bpl	.L14
 307              	.LVL19:
 308              		.loc 3 6745 74 view .LVU75
 309              	.LBE67:
 310              	.LBE66:
 753:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 754:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       if (LL_ADC_REG_IsStopConversionOngoing(ADCx) == 0UL)
 311              		.loc 1 754 7 is_stmt 1 view .LVU76
 312              	.LBB68:
 313              	.LBI68:
6746:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6747:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6748:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6749:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular command of conversion stop state
6750:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       ADSTP          LL_ADC_REG_IsStopConversionOngoing
6751:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6752:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: no command of conversion stop is on going on ADC group regular.
6753:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6754:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_IsStopConversionOngoing(ADC_TypeDef *ADCx)
 314              		.loc 3 6754 26 view .LVU77
 315              	.LBB69:
6755:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6756:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_ADSTP) == (ADC_CR_ADSTP)) ? 1UL : 0UL);
 316              		.loc 3 6756 3 view .LVU78
 317              		.loc 3 6756 12 is_stmt 0 view .LVU79
 318 001e 9A68     		ldr	r2, [r3, #8]
 319              		.loc 3 6756 70 view .LVU80
 320 0020 D206     		lsls	r2, r2, #27
 321 0022 07D4     		bmi	.L14
 322              	.LVL20:
 323              		.loc 3 6756 70 view .LVU81
 324              	.LBE69:
 325              	.LBE68:
 755:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       {
 756:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         LL_ADC_REG_StopConversion(ADCx);
 326              		.loc 1 756 9 is_stmt 1 view .LVU82
 327              	.LBB70:
 328              	.LBI70:
6727:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 329              		.loc 3 6727 22 view .LVU83
 330              	.LBB71:
6732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
 331              		.loc 3 6732 3 view .LVU84
 332 0024 9A68     		ldr	r2, [r3, #8]
 333 0026 22F00042 		bic	r2, r2, #-2147483648
 334 002a 22F03F02 		bic	r2, r2, #63
 335 002e 42F01002 		orr	r2, r2, #16
 336 0032 9A60     		str	r2, [r3, #8]
 337              	.LVL21:
 338              	.L14:
6732:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
 339              		.loc 3 6732 3 is_stmt 0 view .LVU85
 340              	.LBE71:
 341              	.LBE70:
 757:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       }
 758:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
 759:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 760:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Set ADC group injected trigger source to SW start to ensure to not     */
 761:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* have an external trigger event occurring during the conversion stop    */
 762:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* ADC disable process.                                                   */
 763:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_ADC_INJ_SetTriggerSource(ADCx, LL_ADC_INJ_TRIG_SOFTWARE);
 342              		.loc 1 763 5 is_stmt 1 view .LVU86
 343              	.LBB72:
 344              	.LBI72:
4344:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 345              		.loc 3 4344 22 view .LVU87
 346              	.LBB73:
4346:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 347              		.loc 3 4346 3 view .LVU88
 348 0034 DA6C     		ldr	r2, [r3, #76]
 349 0036 22F4FE72 		bic	r2, r2, #508
 350 003a DA64     		str	r2, [r3, #76]
 351              	.LVL22:
4346:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 352              		.loc 3 4346 3 is_stmt 0 view .LVU89
 353              	.LBE73:
 354              	.LBE72:
 764:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 765:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Stop potential ADC conversion on going on ADC group injected.          */
 766:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     if (LL_ADC_INJ_IsConversionOngoing(ADCx) != 0UL)
 355              		.loc 1 766 5 is_stmt 1 view .LVU90
 356              	.LBB74:
 357              	.LBI74:
6757:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6758:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6759:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6760:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Start ADC sampling phase for sampling time trigger mode
6761:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function is relevant only when
6762:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - @ref LL_ADC_REG_SAMPLING_MODE_TRIGGER_CONTROLED has been set
6763:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           using @ref LL_ADC_REG_SetSamplingMode
6764:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - @ref LL_ADC_REG_TRIG_SOFTWARE is used as trigger source
6765:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6766:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6767:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be enabled without conversion on going on group regular,
6768:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without conversion stop command on going on group regular,
6769:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without ADC disable command on going.
6770:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    SWTRIG         LL_ADC_REG_StartSamplingPhase
6771:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6772:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6773:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6774:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_StartSamplingPhase(ADC_TypeDef *ADCx)
6775:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6776:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   SET_BIT(ADCx->CFGR2, ADC_CFGR2_SWTRIG);
6777:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6778:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6779:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6780:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Stop ADC sampling phase for sampling time trigger mode and start conversion
6781:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   This function is relevant only when
6782:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - @ref LL_ADC_REG_SAMPLING_MODE_TRIGGER_CONTROLED has been set
6783:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           using @ref LL_ADC_REG_SetSamplingMode
6784:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - @ref LL_ADC_REG_TRIG_SOFTWARE is used as trigger source
6785:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - @ref LL_ADC_REG_StartSamplingPhase has been called to start
6786:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           the sampling phase
6787:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6788:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6789:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be enabled without conversion on going on group regular,
6790:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without conversion stop command on going on group regular,
6791:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without ADC disable command on going.
6792:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CFGR2    SWTRIG         LL_ADC_REG_StopSamplingPhase
6793:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6794:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6795:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6796:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_REG_StopSamplingPhase(ADC_TypeDef *ADCx)
6797:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6798:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   CLEAR_BIT(ADCx->CFGR2, ADC_CFGR2_SWTRIG);
6799:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6800:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6801:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6802:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion data, range fit for
6803:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         all ADC configurations: all ADC resolutions and
6804:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         all oversampling increased data width (for devices
6805:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         with feature oversampling).
6806:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DR       RDATA          LL_ADC_REG_ReadConversionData32
6807:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6808:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x00000000 and Max_Data=0xFFFFFFFF
6809:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6810:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_ReadConversionData32(ADC_TypeDef *ADCx)
6811:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6812:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCx->DR, ADC_DR_RDATA));
6813:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6814:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6815:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6816:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion data, range fit for
6817:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC resolution 12 bits.
6818:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with feature oversampling: Oversampling
6819:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         can increase data width, function for extended range
6820:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         may be needed: @ref LL_ADC_REG_ReadConversionData32.
6821:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DR       RDATA          LL_ADC_REG_ReadConversionData12
6822:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6823:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0xFFF
6824:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6825:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint16_t LL_ADC_REG_ReadConversionData12(ADC_TypeDef *ADCx)
6826:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6827:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint16_t)(READ_BIT(ADCx->DR, ADC_DR_RDATA));
6828:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6829:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6830:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6831:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion data, range fit for
6832:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC resolution 10 bits.
6833:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with feature oversampling: Oversampling
6834:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         can increase data width, function for extended range
6835:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         may be needed: @ref LL_ADC_REG_ReadConversionData32.
6836:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DR       RDATA          LL_ADC_REG_ReadConversionData10
6837:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6838:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0x3FF
6839:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6840:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint16_t LL_ADC_REG_ReadConversionData10(ADC_TypeDef *ADCx)
6841:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6842:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint16_t)(READ_BIT(ADCx->DR, ADC_DR_RDATA));
6843:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6844:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6845:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6846:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion data, range fit for
6847:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC resolution 8 bits.
6848:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with feature oversampling: Oversampling
6849:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         can increase data width, function for extended range
6850:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         may be needed: @ref LL_ADC_REG_ReadConversionData32.
6851:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DR       RDATA          LL_ADC_REG_ReadConversionData8
6852:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6853:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xFF
6854:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6855:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint8_t LL_ADC_REG_ReadConversionData8(ADC_TypeDef *ADCx)
6856:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6857:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint8_t)(READ_BIT(ADCx->DR, ADC_DR_RDATA));
6858:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6859:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6860:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6861:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group regular conversion data, range fit for
6862:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC resolution 6 bits.
6863:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   For devices with feature oversampling: Oversampling
6864:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         can increase data width, function for extended range
6865:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         may be needed: @ref LL_ADC_REG_ReadConversionData32.
6866:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll DR       RDATA          LL_ADC_REG_ReadConversionData6
6867:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6868:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x3F
6869:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6870:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint8_t LL_ADC_REG_ReadConversionData6(ADC_TypeDef *ADCx)
6871:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6872:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint8_t)(READ_BIT(ADCx->DR, ADC_DR_RDATA));
6873:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6874:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6875:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #if defined(ADC_MULTIMODE_SUPPORT)
6876:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6877:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC multimode conversion data of ADC master, ADC slave
6878:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         or raw data with ADC master and slave concatenated.
6879:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   If raw data with ADC master and slave concatenated is retrieved,
6880:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         a macro is available to get the conversion data of
6881:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC master or ADC slave: see helper macro
6882:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @ref __LL_ADC_MULTI_CONV_DATA_MASTER_SLAVE().
6883:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (however this macro is mainly intended for multimode
6884:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         transfer by DMA, because this function can do the same
6885:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         by getting multimode conversion data of ADC master or ADC slave
6886:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         separately).
6887:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CDR      RDATA_MST      LL_ADC_REG_ReadMultiConversionData32\n
6888:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         CDR      RDATA_SLV      LL_ADC_REG_ReadMultiConversionData32
6889:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCxy_COMMON ADC common instance
6890:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMO
6891:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ConversionData This parameter can be one of the following values:
6892:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_MASTER
6893:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_SLAVE
6894:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         @arg @ref LL_ADC_MULTI_MASTER_SLAVE
6895:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval Value between Min_Data=0x00000000 and Max_Data=0xFFFFFFFF
6896:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6897:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_REG_ReadMultiConversionData32(ADC_Common_TypeDef *ADCxy_COMMON, uin
6898:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6899:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return (uint32_t)(READ_BIT(ADCxy_COMMON->CDR,
6900:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                              ConversionData)
6901:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                     >> (POSITION_VAL(ConversionData) & 0x1FUL)
6902:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****                    );
6903:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6904:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** #endif /* ADC_MULTIMODE_SUPPORT */
6905:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6906:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6907:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @}
6908:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6909:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6910:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /** @defgroup ADC_LL_EF_Operation_ADC_Group_Injected Operation on ADC hierarchical scope: group inj
6911:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @{
6912:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6913:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6914:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6915:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Start ADC group injected conversion.
6916:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, this function is relevant for both
6917:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         internal trigger (SW start) and external trigger:
6918:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - If ADC trigger has been set to software start, ADC conversion
6919:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           starts immediately.
6920:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         - If ADC trigger has been set to external trigger, ADC conversion
6921:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           will start at next trigger event (on the selected trigger edge)
6922:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *           following the ADC start conversion command.
6923:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6924:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6925:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be enabled without conversion on going on group injected,
6926:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without conversion stop command on going on group injected,
6927:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without ADC disable command on going.
6928:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       JADSTART       LL_ADC_INJ_StartConversion
6929:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6930:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6931:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6932:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_StartConversion(ADC_TypeDef *ADCx)
6933:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6934:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6935:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6936:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6937:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6938:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6939:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_JADSTART);
6940:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6941:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6942:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6943:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Stop ADC group injected conversion.
6944:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @note   On this STM32 serie, setting of this feature is conditioned to
6945:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC state:
6946:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         ADC must be enabled with conversion on going on group injected,
6947:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   *         without ADC disable command on going.
6948:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       JADSTP         LL_ADC_INJ_StopConversion
6949:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6950:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval None
6951:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6952:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE void LL_ADC_INJ_StopConversion(ADC_TypeDef *ADCx)
6953:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6954:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /* Note: Write register with some additional bits forced to state reset     */
6955:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       instead of modifying only the selected bit for this function,      */
6956:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   /*       to not interfere with bits with HW property "rs".                  */
6957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   MODIFY_REG(ADCx->CR,
6958:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
6959:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_JADSTP);
6960:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6961:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6962:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6963:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected conversion state.
6964:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       JADSTART       LL_ADC_INJ_IsConversionOngoing
6965:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6966:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: no conversion is on going on ADC group injected.
6967:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6968:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_IsConversionOngoing(ADC_TypeDef *ADCx)
 358              		.loc 3 6968 26 view .LVU91
 359              	.LBB75:
6969:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6970:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_JADSTART) == (ADC_CR_JADSTART)) ? 1UL : 0UL);
 360              		.loc 3 6970 3 view .LVU92
 361              		.loc 3 6970 12 is_stmt 0 view .LVU93
 362 003c 9A68     		ldr	r2, [r3, #8]
 363              		.loc 3 6970 76 view .LVU94
 364 003e 1407     		lsls	r4, r2, #28
 365 0040 0AD5     		bpl	.L15
 366              	.LVL23:
 367              		.loc 3 6970 76 view .LVU95
 368              	.LBE75:
 369              	.LBE74:
 767:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 768:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       if (LL_ADC_INJ_IsStopConversionOngoing(ADCx) == 0UL)
 370              		.loc 1 768 7 is_stmt 1 view .LVU96
 371              	.LBB76:
 372              	.LBI76:
6971:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
6972:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** 
6973:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** /**
6974:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @brief  Get ADC group injected command of conversion stop state
6975:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @rmtoll CR       JADSTP         LL_ADC_INJ_IsStopConversionOngoing
6976:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @param  ADCx ADC instance
6977:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   * @retval 0: no command of conversion stop is on going on ADC group injected.
6978:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   */
6979:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** __STATIC_INLINE uint32_t LL_ADC_INJ_IsStopConversionOngoing(ADC_TypeDef *ADCx)
 373              		.loc 3 6979 26 view .LVU97
 374              	.LBB77:
6980:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
6981:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****   return ((READ_BIT(ADCx->CR, ADC_CR_JADSTP) == (ADC_CR_JADSTP)) ? 1UL : 0UL);
 375              		.loc 3 6981 3 view .LVU98
 376              		.loc 3 6981 12 is_stmt 0 view .LVU99
 377 0042 9A68     		ldr	r2, [r3, #8]
 378              		.loc 3 6981 72 view .LVU100
 379 0044 9006     		lsls	r0, r2, #26
 380 0046 07D4     		bmi	.L15
 381              	.LVL24:
 382              		.loc 3 6981 72 view .LVU101
 383              	.LBE77:
 384              	.LBE76:
 769:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       {
 770:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         LL_ADC_INJ_StopConversion(ADCx);
 385              		.loc 1 770 9 is_stmt 1 view .LVU102
 386              	.LBB78:
 387              	.LBI78:
6952:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 388              		.loc 3 6952 22 view .LVU103
 389              	.LBB79:
6957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
 390              		.loc 3 6957 3 view .LVU104
 391 0048 9A68     		ldr	r2, [r3, #8]
 392 004a 22F00042 		bic	r2, r2, #-2147483648
 393 004e 22F03F02 		bic	r2, r2, #63
 394 0052 42F02002 		orr	r2, r2, #32
 395 0056 9A60     		str	r2, [r3, #8]
 396              	.LVL25:
 397              	.L15:
6957:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
 398              		.loc 3 6957 3 is_stmt 0 view .LVU105
 399              	.LBE79:
 400              	.LBE78:
 771:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       }
 772:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
 773:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 774:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Wait for ADC conversions are effectively stopped                       */
 775:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     timeout_cpu_cycles = ADC_TIMEOUT_STOP_CONVERSION_CPU_CYCLES;
 401              		.loc 1 775 5 is_stmt 1 view .LVU106
 402              		.loc 1 775 24 is_stmt 0 view .LVU107
 403 0058 4FF47862 		mov	r2, #3968
 404 005c 0192     		str	r2, [sp, #4]
 776:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     while ((LL_ADC_REG_IsStopConversionOngoing(ADCx)
 405              		.loc 1 776 5 is_stmt 1 view .LVU108
 406              	.L16:
 407              	.LVL26:
 408              	.LBB80:
 409              	.LBI80:
6754:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 410              		.loc 3 6754 26 view .LVU109
 411              	.LBB81:
6756:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 412              		.loc 3 6756 3 view .LVU110
6756:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 413              		.loc 3 6756 12 is_stmt 0 view .LVU111
 414 005e 9A68     		ldr	r2, [r3, #8]
 415              	.LVL27:
6756:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 416              		.loc 3 6756 12 view .LVU112
 417              	.LBE81:
 418              	.LBE80:
 419              	.LBB83:
 420              	.LBI83:
6979:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 421              		.loc 3 6979 26 is_stmt 1 view .LVU113
 422              	.LBB84:
 423              		.loc 3 6981 3 view .LVU114
 424              		.loc 3 6981 12 is_stmt 0 view .LVU115
 425 0060 9868     		ldr	r0, [r3, #8]
 426              	.LVL28:
 427              		.loc 3 6981 12 view .LVU116
 428              	.LBE84:
 429              	.LBE83:
 430              	.LBB86:
 431              	.LBB82:
6756:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 432              		.loc 3 6756 12 view .LVU117
 433 0062 02F01002 		and	r2, r2, #16
 434              	.LBE82:
 435              	.LBE86:
 436              	.LBB87:
 437              	.LBB85:
 438              		.loc 3 6981 12 view .LVU118
 439 0066 00F02000 		and	r0, r0, #32
 440              	.LBE85:
 441              	.LBE87:
 442              		.loc 1 776 11 view .LVU119
 443 006a 1043     		orrs	r0, r0, r2
 444 006c 40F0B580 		bne	.L18
 445              	.L17:
 446              	.LVL29:
 777:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             | LL_ADC_INJ_IsStopConversionOngoing(ADCx)) == 1UL)
 778:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 779:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       timeout_cpu_cycles--;
 780:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       if (timeout_cpu_cycles == 0UL)
 781:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       {
 782:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         /* Time-out error */
 783:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         status = ERROR;
 784:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         break;
 785:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       }
 786:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
 787:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 788:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Flush group injected contexts queue (register JSQR):                   */
 789:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Note: Bit JQM must be set to empty the contexts queue (otherwise       */
 790:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*       contexts queue is maintained with the last active context).      */
 791:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_ADC_INJ_SetQueueMode(ADCx, LL_ADC_INJ_QUEUE_2CONTEXTS_END_EMPTY);
 447              		.loc 1 791 5 is_stmt 1 view .LVU120
 448              	.LBB88:
 449              	.LBI88:
4806:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 450              		.loc 3 4806 22 view .LVU121
 451              	.LBB89:
4808:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 452              		.loc 3 4808 3 view .LVU122
 453 0070 DA68     		ldr	r2, [r3, #12]
 454 0072 22F00042 		bic	r2, r2, #-2147483648
 455 0076 22F40012 		bic	r2, r2, #2097152
 456 007a 42F40012 		orr	r2, r2, #2097152
 457 007e DA60     		str	r2, [r3, #12]
 458              	.LVL30:
4808:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 459              		.loc 3 4808 3 is_stmt 0 view .LVU123
 460              	.LBE89:
 461              	.LBE88:
 792:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 793:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Disable the ADC instance */
 794:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_ADC_Disable(ADCx);
 462              		.loc 1 794 5 is_stmt 1 view .LVU124
 463              	.LBB90:
 464              	.LBI90:
6602:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 465              		.loc 3 6602 22 view .LVU125
 466              	.LBB91:
6607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
 467              		.loc 3 6607 3 view .LVU126
 468 0080 9A68     		ldr	r2, [r3, #8]
 469 0082 22F00042 		bic	r2, r2, #-2147483648
 470 0086 22F03F02 		bic	r2, r2, #63
 471 008a 42F00202 		orr	r2, r2, #2
 472 008e 9A60     		str	r2, [r3, #8]
 473              	.LVL31:
6607:../../..\CubeG4\include/stm32g4xx_ll_adc.h ****              ADC_CR_BITS_PROPERTY_RS,
 474              		.loc 3 6607 3 is_stmt 0 view .LVU127
 475              	.LBE91:
 476              	.LBE90:
 795:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 796:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Wait for ADC instance is effectively disabled */
 797:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     timeout_cpu_cycles = ADC_TIMEOUT_DISABLE_CPU_CYCLES;
 477              		.loc 1 797 5 is_stmt 1 view .LVU128
 478              		.loc 1 797 24 is_stmt 0 view .LVU129
 479 0090 4FF47862 		mov	r2, #3968
 480 0094 0192     		str	r2, [sp, #4]
 798:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     while (LL_ADC_IsDisableOngoing(ADCx) == 1UL)
 481              		.loc 1 798 5 is_stmt 1 view .LVU130
 482              	.L19:
 483              	.LVL32:
 484              	.LBB92:
 485              	.LBI92:
6632:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 486              		.loc 3 6632 26 view .LVU131
 487              	.LBB93:
6634:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 488              		.loc 3 6634 3 view .LVU132
6634:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 489              		.loc 3 6634 12 is_stmt 0 view .LVU133
 490 0096 9A68     		ldr	r2, [r3, #8]
6634:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 491              		.loc 3 6634 70 view .LVU134
 492 0098 9107     		lsls	r1, r2, #30
 493 009a 06D5     		bpl	.L13
 494              	.LVL33:
6634:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 495              		.loc 3 6634 70 view .LVU135
 496              	.LBE93:
 497              	.LBE92:
 799:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 800:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       timeout_cpu_cycles--;
 498              		.loc 1 800 7 is_stmt 1 view .LVU136
 499              		.loc 1 800 25 is_stmt 0 view .LVU137
 500 009c 019A     		ldr	r2, [sp, #4]
 501 009e 013A     		subs	r2, r2, #1
 502 00a0 0192     		str	r2, [sp, #4]
 801:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       if (timeout_cpu_cycles == 0UL)
 503              		.loc 1 801 7 is_stmt 1 view .LVU138
 504              		.loc 1 801 30 is_stmt 0 view .LVU139
 505 00a2 019A     		ldr	r2, [sp, #4]
 506              		.loc 1 801 10 view .LVU140
 507 00a4 002A     		cmp	r2, #0
 508 00a6 F6D1     		bne	.L19
 802:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       {
 803:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         /* Time-out error */
 804:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         status = ERROR;
 509              		.loc 1 804 16 view .LVU141
 510 00a8 0120     		movs	r0, #1
 511              	.LVL34:
 512              	.L13:
 805:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         break;
 806:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       }
 807:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
 808:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 809:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 810:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Check whether ADC state is compliant with expected state */
 811:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (READ_BIT(ADCx->CR,
 513              		.loc 1 811 3 is_stmt 1 view .LVU142
 514              		.loc 1 811 7 is_stmt 0 view .LVU143
 515 00aa 9A68     		ldr	r2, [r3, #8]
 516              		.loc 1 811 6 view .LVU144
 517 00ac 9206     		lsls	r2, r2, #26
 518 00ae 40F09D80 		bne	.L23
 812:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                (ADC_CR_JADSTP | ADC_CR_ADSTP | ADC_CR_JADSTART | ADC_CR_ADSTART
 813:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 | ADC_CR_ADDIS | ADC_CR_ADEN)
 814:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               )
 815:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       == 0UL)
 816:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 817:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* ========== Reset ADC registers ========== */
 818:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register IER */
 819:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->IER,
 519              		.loc 1 819 5 is_stmt 1 view .LVU145
 520 00b2 5A68     		ldr	r2, [r3, #4]
 820:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (LL_ADC_IT_ADRDY
 821:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_EOC
 822:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_EOS
 823:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_OVR
 824:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_EOSMP
 825:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_JEOC
 826:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_JEOS
 827:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_JQOVF
 828:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_AWD1
 829:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_AWD2
 830:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | LL_ADC_IT_AWD3
 831:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               )
 832:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 833:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 834:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register ISR */
 835:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     SET_BIT(ADCx->ISR,
 836:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             (LL_ADC_FLAG_ADRDY
 837:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_EOC
 838:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_EOS
 839:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_OVR
 840:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_EOSMP
 841:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_JEOC
 842:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_JEOS
 843:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_JQOVF
 844:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_AWD1
 845:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_AWD2
 846:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              | LL_ADC_FLAG_AWD3
 847:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             )
 848:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****            );
 849:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 850:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register CR */
 851:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - Bits ADC_CR_JADSTP, ADC_CR_ADSTP, ADC_CR_JADSTART, ADC_CR_ADSTART,  */
 852:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    ADC_CR_ADCAL, ADC_CR_ADDIS, ADC_CR_ADEN are in                      */
 853:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    access mode "read-set": no direct reset applicable.                 */
 854:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - Reset Calibration mode to default setting (single ended).           */
 855:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - Disable ADC internal voltage regulator.                             */
 856:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - Enable ADC deep power down.                                         */
 857:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    Note: ADC internal voltage regulator disable and ADC deep power     */
 858:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*          down enable are conditioned to ADC state disabled:            */
 859:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*          already done above.                                           */
 860:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->CR, ADC_CR_ADVREGEN | ADC_CR_ADCALDIF);
 861:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     SET_BIT(ADCx->CR, ADC_CR_DEEPPWD);
 862:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 863:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register CFGR */
 864:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     MODIFY_REG(ADCx->CFGR,
 865:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                (ADC_CFGR_AWD1CH  | ADC_CFGR_JAUTO   | ADC_CFGR_JAWD1EN
 866:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 | ADC_CFGR_AWD1EN  | ADC_CFGR_AWD1SGL | ADC_CFGR_JQM
 867:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 | ADC_CFGR_JDISCEN | ADC_CFGR_DISCNUM | ADC_CFGR_DISCEN
 868:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 | ADC_CFGR_AUTDLY  | ADC_CFGR_CONT    | ADC_CFGR_OVRMOD
 869:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 | ADC_CFGR_EXTEN   | ADC_CFGR_EXTSEL  | ADC_CFGR_ALIGN
 870:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 | ADC_CFGR_RES     | ADC_CFGR_DMACFG  | ADC_CFGR_DMAEN),
 871:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                ADC_CFGR_JQDIS
 872:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               );
 873:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 874:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register CFGR2 */
 875:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->CFGR2,
 876:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_CFGR2_ROVSM  | ADC_CFGR2_TROVS | ADC_CFGR2_OVSS
 877:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_CFGR2_SWTRIG | ADC_CFGR2_BULB | ADC_CFGR2_SMPTRIG
 878:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_CFGR2_GCOMP
 879:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_CFGR2_OVSR   | ADC_CFGR2_JOVSE | ADC_CFGR2_ROVSE)
 880:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 881:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 882:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register SMPR1 */
 883:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->SMPR1,
 884:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SMPR1_SMP9 | ADC_SMPR1_SMP8 | ADC_SMPR1_SMP7
 885:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_SMPR1_SMP6 | ADC_SMPR1_SMP5 | ADC_SMPR1_SMP4
 886:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_SMPR1_SMP3 | ADC_SMPR1_SMP2 | ADC_SMPR1_SMP1)
 887:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 888:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 889:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register SMPR2 */
 890:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->SMPR2,
 891:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SMPR2_SMP18 | ADC_SMPR2_SMP17 | ADC_SMPR2_SMP16
 892:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_SMPR2_SMP15 | ADC_SMPR2_SMP14 | ADC_SMPR2_SMP13
 893:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_SMPR2_SMP12 | ADC_SMPR2_SMP11 | ADC_SMPR2_SMP10)
 894:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 895:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 896:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register TR1 */
 897:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     MODIFY_REG(ADCx->TR1, ADC_TR1_AWDFILT | ADC_TR1_HT1 | ADC_TR1_LT1, ADC_TR1_HT1);
 898:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 899:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register TR2 */
 900:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     MODIFY_REG(ADCx->TR2, ADC_TR2_HT2 | ADC_TR2_LT2, ADC_TR2_HT2);
 901:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 902:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register TR3 */
 903:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     MODIFY_REG(ADCx->TR3, ADC_TR3_HT3 | ADC_TR3_LT3, ADC_TR3_HT3);
 904:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 905:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register SQR1 */
 906:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->SQR1,
 907:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SQR1_SQ4 | ADC_SQR1_SQ3 | ADC_SQR1_SQ2
 908:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_SQR1_SQ1 | ADC_SQR1_L)
 909:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 910:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 911:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register SQR2 */
 912:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->SQR2,
 521              		.loc 1 912 5 is_stmt 0 view .LVU146
 522 00b4 4E4C     		ldr	r4, .L34
 819:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (LL_ADC_IT_ADRDY
 523              		.loc 1 819 5 view .LVU147
 524 00b6 22F4FF62 		bic	r2, r2, #2040
 525 00ba 22F00702 		bic	r2, r2, #7
 526 00be 5A60     		str	r2, [r3, #4]
 835:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****             (LL_ADC_FLAG_ADRDY
 527              		.loc 1 835 5 is_stmt 1 view .LVU148
 528 00c0 1A68     		ldr	r2, [r3]
 529 00c2 6FEAD222 		mvn	r2, r2, lsr #11
 530 00c6 6FEAC222 		mvn	r2, r2, lsl #11
 531 00ca 1A60     		str	r2, [r3]
 860:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     SET_BIT(ADCx->CR, ADC_CR_DEEPPWD);
 532              		.loc 1 860 5 view .LVU149
 533 00cc 9A68     		ldr	r2, [r3, #8]
 534 00ce 22F0A042 		bic	r2, r2, #1342177280
 535 00d2 9A60     		str	r2, [r3, #8]
 861:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 536              		.loc 1 861 5 view .LVU150
 537 00d4 9A68     		ldr	r2, [r3, #8]
 538 00d6 42F00052 		orr	r2, r2, #536870912
 539 00da 9A60     		str	r2, [r3, #8]
 864:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                (ADC_CFGR_AWD1CH  | ADC_CFGR_JAUTO   | ADC_CFGR_JAWD1EN
 540              		.loc 1 864 5 view .LVU151
 541 00dc DA68     		ldr	r2, [r3, #12]
 542 00de 02F00402 		and	r2, r2, #4
 543 00e2 42F00042 		orr	r2, r2, #-2147483648
 544 00e6 DA60     		str	r2, [r3, #12]
 875:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_CFGR2_ROVSM  | ADC_CFGR2_TROVS | ADC_CFGR2_OVSS
 545              		.loc 1 875 5 view .LVU152
 546 00e8 1A69     		ldr	r2, [r3, #16]
 547 00ea 22F06062 		bic	r2, r2, #234881024
 548 00ee 22F48332 		bic	r2, r2, #67072
 549 00f2 22F4FF72 		bic	r2, r2, #510
 550 00f6 22F00102 		bic	r2, r2, #1
 551 00fa 1A61     		str	r2, [r3, #16]
 883:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SMPR1_SMP9 | ADC_SMPR1_SMP8 | ADC_SMPR1_SMP7
 552              		.loc 1 883 5 view .LVU153
 553 00fc 5A69     		ldr	r2, [r3, #20]
 554 00fe 22F07F52 		bic	r2, r2, #1069547520
 555 0102 22F47F12 		bic	r2, r2, #4177920
 556 0106 22F47F52 		bic	r2, r2, #16320
 557 010a 22F03802 		bic	r2, r2, #56
 558 010e 5A61     		str	r2, [r3, #20]
 890:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SMPR2_SMP18 | ADC_SMPR2_SMP17 | ADC_SMPR2_SMP16
 559              		.loc 1 890 5 view .LVU154
 560 0110 9A69     		ldr	r2, [r3, #24]
 561 0112 02F07842 		and	r2, r2, #-134217728
 562 0116 9A61     		str	r2, [r3, #24]
 897:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 563              		.loc 1 897 5 view .LVU155
 564 0118 1A6A     		ldr	r2, [r3, #32]
 565 011a 22F07F62 		bic	r2, r2, #267386880
 566 011e 22F47722 		bic	r2, r2, #1011712
 567 0122 22F47F62 		bic	r2, r2, #4080
 568 0126 22F00F02 		bic	r2, r2, #15
 569 012a 42F07F62 		orr	r2, r2, #267386880
 570 012e 42F47022 		orr	r2, r2, #983040
 571 0132 1A62     		str	r2, [r3, #32]
 900:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 572              		.loc 1 900 5 view .LVU156
 573 0134 5A6A     		ldr	r2, [r3, #36]
 574 0136 02F0FF22 		and	r2, r2, #-16711936
 575 013a 42F47F02 		orr	r2, r2, #16711680
 576 013e 5A62     		str	r2, [r3, #36]
 903:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 577              		.loc 1 903 5 view .LVU157
 578 0140 9A6A     		ldr	r2, [r3, #40]
 579 0142 02F0FF22 		and	r2, r2, #-16711936
 580 0146 42F47F02 		orr	r2, r2, #16711680
 581 014a 9A62     		str	r2, [r3, #40]
 906:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SQR1_SQ4 | ADC_SQR1_SQ3 | ADC_SQR1_SQ2
 582              		.loc 1 906 5 view .LVU158
 583 014c 196B     		ldr	r1, [r3, #48]
 584 014e 294A     		ldr	r2, .L34+4
 585 0150 0A40     		ands	r2, r2, r1
 586 0152 1A63     		str	r2, [r3, #48]
 587              		.loc 1 912 5 view .LVU159
 588 0154 596B     		ldr	r1, [r3, #52]
 589 0156 2140     		ands	r1, r1, r4
 590 0158 5963     		str	r1, [r3, #52]
 913:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SQR2_SQ9 | ADC_SQR2_SQ8 | ADC_SQR2_SQ7
 914:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_SQR2_SQ6 | ADC_SQR2_SQ5)
 915:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 916:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 917:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register SQR3 */
 918:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->SQR3,
 591              		.loc 1 918 5 view .LVU160
 592 015a 9A6B     		ldr	r2, [r3, #56]
 593 015c 2240     		ands	r2, r2, r4
 594 015e 9A63     		str	r2, [r3, #56]
 919:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_SQR3_SQ14 | ADC_SQR3_SQ13 | ADC_SQR3_SQ12
 920:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_SQR3_SQ11 | ADC_SQR3_SQ10)
 921:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 922:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 923:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register SQR4 */
 924:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->SQR4, ADC_SQR4_SQ16 | ADC_SQR4_SQ15);
 595              		.loc 1 924 5 view .LVU161
 596 0160 DA6B     		ldr	r2, [r3, #60]
 597 0162 22F4FB62 		bic	r2, r2, #2008
 598 0166 22F00702 		bic	r2, r2, #7
 599 016a DA63     		str	r2, [r3, #60]
 925:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 926:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register JSQR */
 927:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->JSQR,
 600              		.loc 1 927 5 view .LVU162
 601 016c DA6C     		ldr	r2, [r3, #76]
 602 016e 22F07B42 		bic	r2, r2, #-83886080
 603 0172 22F46F02 		bic	r2, r2, #15663104
 604 0176 22F43F42 		bic	r2, r2, #48896
 605 017a 22F0FF02 		bic	r2, r2, #255
 606 017e DA64     		str	r2, [r3, #76]
 928:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               (ADC_JSQR_JL
 929:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_JSQR_JEXTSEL | ADC_JSQR_JEXTEN
 930:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_JSQR_JSQ4    | ADC_JSQR_JSQ3
 931:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_JSQR_JSQ2    | ADC_JSQR_JSQ1)
 932:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****              );
 933:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 934:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register DR */
 935:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Note: bits in access mode read only, no direct reset applicable */
 936:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 937:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register OFR1 */
 938:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->OFR1, ADC_OFR1_OFFSET1_EN | ADC_OFR1_OFFSET1_CH | ADC_OFR1_OFFSET1 | ADC_OFR1_S
 607              		.loc 1 938 5 view .LVU163
 608 0180 196E     		ldr	r1, [r3, #96]
 609 0182 1D4A     		ldr	r2, .L34+8
 610 0184 1140     		ands	r1, r1, r2
 611 0186 1966     		str	r1, [r3, #96]
 939:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register OFR2 */
 940:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->OFR2, ADC_OFR2_OFFSET2_EN | ADC_OFR2_OFFSET2_CH | ADC_OFR2_OFFSET2 | ADC_OFR2_S
 612              		.loc 1 940 5 view .LVU164
 613 0188 596E     		ldr	r1, [r3, #100]
 614 018a 1140     		ands	r1, r1, r2
 615 018c 5966     		str	r1, [r3, #100]
 941:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register OFR3 */
 942:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->OFR3, ADC_OFR3_OFFSET3_EN | ADC_OFR3_OFFSET3_CH | ADC_OFR3_OFFSET3 | ADC_OFR3_S
 616              		.loc 1 942 5 view .LVU165
 617 018e 996E     		ldr	r1, [r3, #104]
 618 0190 1140     		ands	r1, r1, r2
 619 0192 9966     		str	r1, [r3, #104]
 943:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register OFR4 */
 944:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->OFR4, ADC_OFR4_OFFSET4_EN | ADC_OFR4_OFFSET4_CH | ADC_OFR4_OFFSET4 | ADC_OFR4_S
 620              		.loc 1 944 5 view .LVU166
 621 0194 D96E     		ldr	r1, [r3, #108]
 622 0196 0A40     		ands	r2, r2, r1
 623 0198 DA66     		str	r2, [r3, #108]
 945:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     
 946:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset registers JDR1, JDR2, JDR3, JDR4 */
 947:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Note: bits in access mode read only, no direct reset applicable */
 948:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 949:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register AWD2CR */
 950:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->AWD2CR, ADC_AWD2CR_AWD2CH);
 624              		.loc 1 950 5 view .LVU167
 625 019a D3F8A020 		ldr	r2, [r3, #160]
 626 019e 1749     		ldr	r1, .L34+12
 627 01a0 0A40     		ands	r2, r2, r1
 628 01a2 C3F8A020 		str	r2, [r3, #160]
 951:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 952:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register AWD3CR */
 953:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->AWD3CR, ADC_AWD3CR_AWD3CH);
 629              		.loc 1 953 5 view .LVU168
 630 01a6 D3F8A420 		ldr	r2, [r3, #164]
 631 01aa 0A40     		ands	r2, r2, r1
 632 01ac C3F8A420 		str	r2, [r3, #164]
 954:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 955:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register DIFSEL */
 956:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->DIFSEL, ADC_DIFSEL_DIFSEL);
 633              		.loc 1 956 5 view .LVU169
 634 01b0 D3F8B020 		ldr	r2, [r3, #176]
 635 01b4 0A40     		ands	r2, r2, r1
 636 01b6 C3F8B020 		str	r2, [r3, #176]
 957:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 958:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register CALFACT */
 959:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->CALFACT, ADC_CALFACT_CALFACT_D | ADC_CALFACT_CALFACT_S);
 637              		.loc 1 959 5 view .LVU170
 638 01ba D3F8B420 		ldr	r2, [r3, #180]
 639 01be 22F07F12 		bic	r2, r2, #8323199
 640 01c2 C3F8B420 		str	r2, [r3, #180]
 960:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 961:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Reset register GCOMP */
 962:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     CLEAR_BIT(ADCx->GCOMP, ADC_GCOMP_GCOMPCOEFF);
 641              		.loc 1 962 5 view .LVU171
 642 01c6 D3F8C020 		ldr	r2, [r3, #192]
 643 01ca 22F47F52 		bic	r2, r2, #16320
 644 01ce 22F03F02 		bic	r2, r2, #63
 645 01d2 C3F8C020 		str	r2, [r3, #192]
 646              	.LVL35:
 647              	.L20:
 963:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 964:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   else
 965:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
 966:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* ADC instance is in an unknown state */
 967:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Need to performing a hard reset of ADC instance, using high level      */
 968:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* clock source RCC ADC reset.                                            */
 969:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Caution: On this STM32 serie, if several ADC instances are available   */
 970:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*          on the selected device, RCC ADC reset will reset              */
 971:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*          all ADC instances belonging to the common ADC instance.       */
 972:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Caution: On this STM32 serie, if several ADC instances are available   */
 973:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*          on the selected device, RCC ADC reset will reset              */
 974:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*          all ADC instances belonging to the common ADC instance.       */
 975:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     status = ERROR;
 976:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 977:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 978:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   return status;
 648              		.loc 1 978 3 view .LVU172
 979:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 649              		.loc 1 979 1 is_stmt 0 view .LVU173
 650 01d6 02B0     		add	sp, sp, #8
 651              		.cfi_remember_state
 652              		.cfi_def_cfa_offset 8
 653              		@ sp needed
 654 01d8 10BD     		pop	{r4, pc}
 655              	.LVL36:
 656              	.L18:
 657              		.cfi_restore_state
 779:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       if (timeout_cpu_cycles == 0UL)
 658              		.loc 1 779 7 is_stmt 1 view .LVU174
 779:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       if (timeout_cpu_cycles == 0UL)
 659              		.loc 1 779 25 is_stmt 0 view .LVU175
 660 01da 019A     		ldr	r2, [sp, #4]
 661 01dc 013A     		subs	r2, r2, #1
 662 01de 0192     		str	r2, [sp, #4]
 780:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       {
 663              		.loc 1 780 7 is_stmt 1 view .LVU176
 780:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       {
 664              		.loc 1 780 30 is_stmt 0 view .LVU177
 665 01e0 019A     		ldr	r2, [sp, #4]
 780:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       {
 666              		.loc 1 780 10 view .LVU178
 667 01e2 002A     		cmp	r2, #0
 668 01e4 7FF43BAF 		bne	.L16
 783:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****         break;
 669              		.loc 1 783 16 view .LVU179
 670 01e8 0120     		movs	r0, #1
 671 01ea 41E7     		b	.L17
 672              	.LVL37:
 673              	.L23:
 975:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 674              		.loc 1 975 12 view .LVU180
 675 01ec 0120     		movs	r0, #1
 676              	.LVL38:
 975:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 677              		.loc 1 975 12 view .LVU181
 678 01ee F2E7     		b	.L20
 679              	.L35:
 680              		.align	2
 681              	.L34:
 682 01f0 200882E0 		.word	-528349152
 683 01f4 300882E0 		.word	-528349136
 684 01f8 00F0FF00 		.word	16773120
 685 01fc 0000F8FF 		.word	-524288
 686              		.cfi_endproc
 687              	.LFE370:
 689              		.section	.text.LL_ADC_Init,"ax",%progbits
 690              		.align	1
 691              		.global	LL_ADC_Init
 692              		.syntax unified
 693              		.thumb
 694              		.thumb_func
 695              		.fpu fpv4-sp-d16
 697              	LL_ADC_Init:
 698              	.LVL39:
 699              	.LFB371:
 980:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 981:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
 982:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Initialize some features of ADC instance.
 983:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   These parameters have an impact on ADC scope: ADC instance.
 984:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Affects both group regular and group injected (availability
 985:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         of ADC group injected depends on STM32 families).
 986:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Refer to corresponding unitary functions into
 987:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         @ref ADC_LL_EF_Configuration_ADC_Instance .
 988:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   The setting of these parameters by function @ref LL_ADC_Init()
 989:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         is conditioned to ADC state:
 990:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         ADC instance must be disabled.
 991:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         This condition is applied to all ADC features, for efficiency
 992:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         and compatibility over all STM32 families. However, the different
 993:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         features can be set under different ADC state conditions
 994:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (setting possible with ADC enabled without conversion on going,
 995:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         ADC enabled with conversion on going, ...)
 996:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Each feature can be updated afterwards with a unitary function
 997:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         and potentially with ADC in a different state than disabled,
 998:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         refer to description of each function for setting
 999:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         conditioned to ADC state.
1000:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   After using this function, some other features must be configured
1001:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         using LL unitary functions.
1002:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         The minimum configuration remaining to be done is:
1003:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - Set ADC group regular or group injected sequencer:
1004:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            map channel on the selected sequencer rank.
1005:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            Refer to function @ref LL_ADC_REG_SetSequencerRanks().
1006:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - Set ADC channel sampling time
1007:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            Refer to function LL_ADC_SetChannelSamplingTime();
1008:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADCx ADC instance
1009:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_InitStruct Pointer to a @ref LL_ADC_REG_InitTypeDef structure
1010:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval An ErrorStatus enumeration value:
1011:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - SUCCESS: ADC registers are initialized
1012:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - ERROR: ADC registers are not initialized
1013:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
1014:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** ErrorStatus LL_ADC_Init(ADC_TypeDef *ADCx, LL_ADC_InitTypeDef *ADC_InitStruct)
1015:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 700              		.loc 1 1015 1 is_stmt 1 view -0
 701              		.cfi_startproc
 702              		@ args = 0, pretend = 0, frame = 0
 703              		@ frame_needed = 0, uses_anonymous_args = 0
1016:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 704              		.loc 1 1016 3 view .LVU183
1017:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1018:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Check the parameters */
1019:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
 705              		.loc 1 1019 3 view .LVU184
1020:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1021:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_RESOLUTION(ADC_InitStruct->Resolution));
 706              		.loc 1 1021 3 view .LVU185
1022:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_DATA_ALIGN(ADC_InitStruct->DataAlignment));
 707              		.loc 1 1022 3 view .LVU186
1023:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_LOW_POWER(ADC_InitStruct->LowPowerMode));
 708              		.loc 1 1023 3 view .LVU187
1024:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1025:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Note: Hardware constraint (refer to description of this function):       */
1026:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       ADC instance must be disabled.                                     */
1027:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (LL_ADC_IsEnabled(ADCx) == 0UL)
 709              		.loc 1 1027 3 view .LVU188
 710              	.LBB96:
 711              	.LBI96:
6621:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 712              		.loc 3 6621 26 view .LVU189
 713              	.LBB97:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 714              		.loc 3 6623 3 view .LVU190
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 715              		.loc 3 6623 12 is_stmt 0 view .LVU191
 716 0000 8368     		ldr	r3, [r0, #8]
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 717              		.loc 3 6623 68 view .LVU192
 718 0002 13F00103 		ands	r3, r3, #1
 719              	.LBE97:
 720              	.LBE96:
1015:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 721              		.loc 1 1015 1 view .LVU193
 722 0006 30B5     		push	{r4, r5, lr}
 723              		.cfi_def_cfa_offset 12
 724              		.cfi_offset 4, -12
 725              		.cfi_offset 5, -8
 726              		.cfi_offset 14, -4
 727              	.LBB99:
 728              	.LBB98:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 729              		.loc 3 6623 68 view .LVU194
 730 0008 0DD1     		bne	.L38
 731              	.LVL40:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 732              		.loc 3 6623 68 view .LVU195
 733              	.LBE98:
 734              	.LBE99:
1028:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1029:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Configuration of ADC hierarchical scope:                               */
1030:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - ADC instance                                                        */
1031:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC data resolution                                           */
1032:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC conversion data alignment                                 */
1033:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC low power mode                                            */
1034:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     MODIFY_REG(ADCx->CFGR,
 735              		.loc 1 1034 5 is_stmt 1 view .LVU196
 736 000a D1E90025 		ldrd	r2, r5, [r1]
 737 000e C468     		ldr	r4, [r0, #12]
 738 0010 8968     		ldr	r1, [r1, #8]
 739              	.LVL41:
 740              		.loc 1 1034 5 is_stmt 0 view .LVU197
 741 0012 2A43     		orrs	r2, r2, r5
 742 0014 0A43     		orrs	r2, r2, r1
 743 0016 24F44041 		bic	r1, r4, #49152
 744 001a 21F01801 		bic	r1, r1, #24
 745 001e 0A43     		orrs	r2, r2, r1
 746 0020 C260     		str	r2, [r0, #12]
1016:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 747              		.loc 1 1016 15 view .LVU198
 748 0022 1846     		mov	r0, r3
 749              	.LVL42:
 750              	.L37:
1035:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                ADC_CFGR_RES
1036:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_CFGR_ALIGN
1037:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_CFGR_AUTDLY
1038:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                ,
1039:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                ADC_InitStruct->Resolution
1040:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_InitStruct->DataAlignment
1041:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_InitStruct->LowPowerMode
1042:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               );
1043:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1044:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1045:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   else
1046:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1047:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Initialization error: ADC instance is not disabled. */
1048:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     status = ERROR;
1049:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1050:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   return status;
 751              		.loc 1 1050 3 is_stmt 1 view .LVU199
1051:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 752              		.loc 1 1051 1 is_stmt 0 view .LVU200
 753 0024 30BD     		pop	{r4, r5, pc}
 754              	.LVL43:
 755              	.L38:
1048:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 756              		.loc 1 1048 12 view .LVU201
 757 0026 0120     		movs	r0, #1
 758              	.LVL44:
1048:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 759              		.loc 1 1048 12 view .LVU202
 760 0028 FCE7     		b	.L37
 761              		.cfi_endproc
 762              	.LFE371:
 764              		.section	.text.LL_ADC_StructInit,"ax",%progbits
 765              		.align	1
 766              		.global	LL_ADC_StructInit
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu fpv4-sp-d16
 772              	LL_ADC_StructInit:
 773              	.LVL45:
 774              	.LFB372:
1052:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1053:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
1054:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Set each @ref LL_ADC_InitTypeDef field to default value.
1055:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_InitStruct Pointer to a @ref LL_ADC_InitTypeDef structure
1056:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *                        whose fields will be set to default values.
1057:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval None
1058:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
1059:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** void LL_ADC_StructInit(LL_ADC_InitTypeDef *ADC_InitStruct)
1060:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 775              		.loc 1 1060 1 is_stmt 1 view -0
 776              		.cfi_startproc
 777              		@ args = 0, pretend = 0, frame = 0
 778              		@ frame_needed = 0, uses_anonymous_args = 0
 779              		@ link register save eliminated.
1061:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set ADC_InitStruct fields to default values */
1062:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set fields of ADC instance */
1063:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_InitStruct->Resolution    = LL_ADC_RESOLUTION_12B;
 780              		.loc 1 1063 3 view .LVU204
 781              		.loc 1 1063 33 is_stmt 0 view .LVU205
 782 0000 0023     		movs	r3, #0
1064:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_InitStruct->DataAlignment = LL_ADC_DATA_ALIGN_RIGHT;
 783              		.loc 1 1064 33 view .LVU206
 784 0002 C0E90033 		strd	r3, r3, [r0]
1065:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_InitStruct->LowPowerMode  = LL_ADC_LP_MODE_NONE;
 785              		.loc 1 1065 3 is_stmt 1 view .LVU207
 786              		.loc 1 1065 33 is_stmt 0 view .LVU208
 787 0006 8360     		str	r3, [r0, #8]
1066:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1067:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 788              		.loc 1 1067 1 view .LVU209
 789 0008 7047     		bx	lr
 790              		.cfi_endproc
 791              	.LFE372:
 793              		.section	.text.LL_ADC_REG_Init,"ax",%progbits
 794              		.align	1
 795              		.global	LL_ADC_REG_Init
 796              		.syntax unified
 797              		.thumb
 798              		.thumb_func
 799              		.fpu fpv4-sp-d16
 801              	LL_ADC_REG_Init:
 802              	.LVL46:
 803              	.LFB373:
1068:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1069:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
1070:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Initialize some features of ADC group regular.
1071:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   These parameters have an impact on ADC scope: ADC group regular.
1072:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Refer to corresponding unitary functions into
1073:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         @ref ADC_LL_EF_Configuration_ADC_Group_Regular
1074:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (functions with prefix "REG").
1075:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   The setting of these parameters by function @ref LL_ADC_Init()
1076:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         is conditioned to ADC state:
1077:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         ADC instance must be disabled.
1078:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         This condition is applied to all ADC features, for efficiency
1079:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         and compatibility over all STM32 families. However, the different
1080:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         features can be set under different ADC state conditions
1081:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (setting possible with ADC enabled without conversion on going,
1082:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         ADC enabled with conversion on going, ...)
1083:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Each feature can be updated afterwards with a unitary function
1084:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         and potentially with ADC in a different state than disabled,
1085:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         refer to description of each function for setting
1086:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         conditioned to ADC state.
1087:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   After using this function, other features must be configured
1088:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         using LL unitary functions.
1089:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         The minimum configuration remaining to be done is:
1090:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - Set ADC group regular or group injected sequencer:
1091:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            map channel on the selected sequencer rank.
1092:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            Refer to function @ref LL_ADC_REG_SetSequencerRanks().
1093:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - Set ADC channel sampling time
1094:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            Refer to function LL_ADC_SetChannelSamplingTime();
1095:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADCx ADC instance
1096:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_REG_InitStruct Pointer to a @ref LL_ADC_REG_InitTypeDef structure
1097:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval An ErrorStatus enumeration value:
1098:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - SUCCESS: ADC registers are initialized
1099:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - ERROR: ADC registers are not initialized
1100:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
1101:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** ErrorStatus LL_ADC_REG_Init(ADC_TypeDef *ADCx, LL_ADC_REG_InitTypeDef *ADC_REG_InitStruct)
1102:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 804              		.loc 1 1102 1 is_stmt 1 view -0
 805              		.cfi_startproc
 806              		@ args = 0, pretend = 0, frame = 0
 807              		@ frame_needed = 0, uses_anonymous_args = 0
1103:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 808              		.loc 1 1103 3 view .LVU211
1104:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1105:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Check the parameters */
1106:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
 809              		.loc 1 1106 3 view .LVU212
1107:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_REG_TRIG_SOURCE(ADCx, ADC_REG_InitStruct->TriggerSource));
 810              		.loc 1 1107 3 view .LVU213
1108:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_REG_SEQ_SCAN_LENGTH(ADC_REG_InitStruct->SequencerLength));
 811              		.loc 1 1108 3 view .LVU214
1109:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (ADC_REG_InitStruct->SequencerLength != LL_ADC_REG_SEQ_SCAN_DISABLE)
 812              		.loc 1 1109 3 view .LVU215
1110:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1111:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     assert_param(IS_LL_ADC_REG_SEQ_SCAN_DISCONT_MODE(ADC_REG_InitStruct->SequencerDiscont));
 813              		.loc 1 1111 5 view .LVU216
1112:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1113:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_REG_CONTINUOUS_MODE(ADC_REG_InitStruct->ContinuousMode));
 814              		.loc 1 1113 3 view .LVU217
1114:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_REG_DMA_TRANSFER(ADC_REG_InitStruct->DMATransfer));
 815              		.loc 1 1114 3 view .LVU218
1115:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_REG_OVR_DATA_BEHAVIOR(ADC_REG_InitStruct->Overrun));
 816              		.loc 1 1115 3 view .LVU219
1116:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1117:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Note: Hardware constraint (refer to description of this function):       */
1118:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       ADC instance must be disabled.                                     */
1119:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (LL_ADC_IsEnabled(ADCx) == 0UL)
 817              		.loc 1 1119 3 view .LVU220
 818              	.LBB104:
 819              	.LBI104:
6621:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 820              		.loc 3 6621 26 view .LVU221
 821              	.LBB105:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 822              		.loc 3 6623 3 view .LVU222
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 823              		.loc 3 6623 12 is_stmt 0 view .LVU223
 824 0000 8368     		ldr	r3, [r0, #8]
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 825              		.loc 3 6623 68 view .LVU224
 826 0002 DB07     		lsls	r3, r3, #31
 827              	.LBE105:
 828              	.LBE104:
1102:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 829              		.loc 1 1102 1 view .LVU225
 830 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 831              		.cfi_def_cfa_offset 20
 832              		.cfi_offset 4, -20
 833              		.cfi_offset 5, -16
 834              		.cfi_offset 6, -12
 835              		.cfi_offset 7, -8
 836              		.cfi_offset 14, -4
 837              	.LBB107:
 838              	.LBB106:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 839              		.loc 3 6623 68 view .LVU226
 840 0006 1BD4     		bmi	.L44
 841              	.LVL47:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 842              		.loc 3 6623 68 view .LVU227
 843              	.LBE106:
 844              	.LBE107:
1120:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1121:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Configuration of ADC hierarchical scope:                               */
1122:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - ADC group regular                                                   */
1123:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group regular trigger source                              */
1124:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group regular sequencer length                            */
1125:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group regular sequencer discontinuous mode                */
1126:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group regular continuous mode                             */
1127:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group regular conversion data transfer: no transfer or    */
1128:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*      transfer by DMA, and DMA requests mode                            */
1129:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group regular overrun behavior                            */
1130:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Note: On this STM32 serie, ADC trigger edge is set to value 0x0 by     */
1131:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*       setting of trigger source to SW start.                           */
1132:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     if (ADC_REG_InitStruct->SequencerLength != LL_ADC_REG_SEQ_SCAN_DISABLE)
 845              		.loc 1 1132 5 is_stmt 1 view .LVU228
 846 0008 D1E90032 		ldrd	r3, r2, [r1]
 847 000c D1E90347 		ldrd	r4, r7, [r1, #12]
 848 0010 4E69     		ldr	r6, [r1, #20]
 849 0012 0C4D     		ldr	r5, .L46
 850 0014 2343     		orrs	r3, r3, r4
 851              		.loc 1 1132 8 is_stmt 0 view .LVU229
 852 0016 72B1     		cbz	r2, .L42
1133:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
1134:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       MODIFY_REG(ADCx->CFGR,
 853              		.loc 1 1134 7 is_stmt 1 view .LVU230
 854 0018 C468     		ldr	r4, [r0, #12]
 855 001a 8968     		ldr	r1, [r1, #8]
 856              	.LVL48:
 857              		.loc 1 1134 7 is_stmt 0 view .LVU231
 858 001c 3B43     		orrs	r3, r3, r7
 859 001e 3343     		orrs	r3, r3, r6
 860 0020 2C40     		ands	r4, r4, r5
 861 0022 2343     		orrs	r3, r3, r4
 862              	.L45:
1135:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CFGR_EXTSEL
1136:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_EXTEN
1137:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DISCEN
1138:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DISCNUM
1139:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_CONT
1140:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DMAEN
1141:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DMACFG
1142:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_OVRMOD
1143:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ,
1144:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_REG_InitStruct->TriggerSource
1145:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_REG_InitStruct->SequencerDiscont
1146:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_REG_InitStruct->ContinuousMode
1147:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_REG_InitStruct->DMATransfer
1148:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_REG_InitStruct->Overrun
1149:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 );
1150:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
1151:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     else
1152:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
1153:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       MODIFY_REG(ADCx->CFGR,
 863              		.loc 1 1153 7 view .LVU232
 864 0024 0B43     		orrs	r3, r3, r1
 865 0026 C360     		str	r3, [r0, #12]
1154:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CFGR_EXTSEL
1155:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_EXTEN
1156:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DISCEN
1157:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DISCNUM
1158:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_CONT
1159:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DMAEN
1160:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_DMACFG
1161:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_OVRMOD
1162:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ,
1163:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_REG_InitStruct->TriggerSource
1164:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | LL_ADC_REG_SEQ_DISCONT_DISABLE
1165:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_REG_InitStruct->ContinuousMode
1166:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_REG_InitStruct->DMATransfer
1167:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_REG_InitStruct->Overrun
1168:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 );
1169:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
1170:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1171:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Set ADC group regular sequencer length and scan direction */
1172:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     LL_ADC_REG_SetSequencerLength(ADCx, ADC_REG_InitStruct->SequencerLength);
 866              		.loc 1 1172 5 is_stmt 1 view .LVU233
 867              	.LVL49:
 868              	.LBB108:
 869              	.LBI108:
3781:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 870              		.loc 3 3781 22 view .LVU234
 871              	.LBB109:
3783:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 872              		.loc 3 3783 3 view .LVU235
 873 0028 036B     		ldr	r3, [r0, #48]
 874 002a 23F00F03 		bic	r3, r3, #15
 875 002e 1343     		orrs	r3, r3, r2
 876 0030 0363     		str	r3, [r0, #48]
 877              	.LBE109:
 878              	.LBE108:
1103:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 879              		.loc 1 1103 15 is_stmt 0 view .LVU236
 880 0032 0020     		movs	r0, #0
 881              	.LVL50:
 882              	.L41:
1173:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1174:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   else
1175:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1176:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Initialization error: ADC instance is not disabled. */
1177:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     status = ERROR;
1178:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1179:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   return status;
 883              		.loc 1 1179 3 is_stmt 1 view .LVU237
1180:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 884              		.loc 1 1180 1 is_stmt 0 view .LVU238
 885 0034 F0BD     		pop	{r4, r5, r6, r7, pc}
 886              	.LVL51:
 887              	.L42:
1153:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CFGR_EXTSEL
 888              		.loc 1 1153 7 is_stmt 1 view .LVU239
 889 0036 C168     		ldr	r1, [r0, #12]
 890              	.LVL52:
1153:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CFGR_EXTSEL
 891              		.loc 1 1153 7 is_stmt 0 view .LVU240
 892 0038 3B43     		orrs	r3, r3, r7
 893 003a 3343     		orrs	r3, r3, r6
 894 003c 2940     		ands	r1, r1, r5
 895 003e F1E7     		b	.L45
 896              	.LVL53:
 897              	.L44:
1177:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 898              		.loc 1 1177 12 view .LVU241
 899 0040 0120     		movs	r0, #1
 900              	.LVL54:
1177:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 901              		.loc 1 1177 12 view .LVU242
 902 0042 F7E7     		b	.L41
 903              	.L47:
 904              		.align	2
 905              	.L46:
 906 0044 1CC0F0FF 		.word	-999396
 907              		.cfi_endproc
 908              	.LFE373:
 910              		.section	.text.LL_ADC_REG_StructInit,"ax",%progbits
 911              		.align	1
 912              		.global	LL_ADC_REG_StructInit
 913              		.syntax unified
 914              		.thumb
 915              		.thumb_func
 916              		.fpu fpv4-sp-d16
 918              	LL_ADC_REG_StructInit:
 919              	.LVL55:
 920              	.LFB374:
1181:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1182:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
1183:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Set each @ref LL_ADC_REG_InitTypeDef field to default value.
1184:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_REG_InitStruct Pointer to a @ref LL_ADC_REG_InitTypeDef structure
1185:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *                            whose fields will be set to default values.
1186:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval None
1187:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
1188:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** void LL_ADC_REG_StructInit(LL_ADC_REG_InitTypeDef *ADC_REG_InitStruct)
1189:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 921              		.loc 1 1189 1 is_stmt 1 view -0
 922              		.cfi_startproc
 923              		@ args = 0, pretend = 0, frame = 0
 924              		@ frame_needed = 0, uses_anonymous_args = 0
 925              		@ link register save eliminated.
1190:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set ADC_REG_InitStruct fields to default values */
1191:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set fields of ADC group regular */
1192:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Note: On this STM32 serie, ADC trigger edge is set to value 0x0 by       */
1193:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       setting of trigger source to SW start.                             */
1194:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_REG_InitStruct->TriggerSource    = LL_ADC_REG_TRIG_SOFTWARE;
 926              		.loc 1 1194 3 view .LVU244
 927              		.loc 1 1194 40 is_stmt 0 view .LVU245
 928 0000 0023     		movs	r3, #0
1195:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_REG_InitStruct->SequencerLength  = LL_ADC_REG_SEQ_SCAN_DISABLE;
 929              		.loc 1 1195 40 view .LVU246
 930 0002 C0E90033 		strd	r3, r3, [r0]
1196:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_REG_InitStruct->SequencerDiscont = LL_ADC_REG_SEQ_DISCONT_DISABLE;
 931              		.loc 1 1196 3 is_stmt 1 view .LVU247
1197:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_REG_InitStruct->ContinuousMode   = LL_ADC_REG_CONV_SINGLE;
 932              		.loc 1 1197 40 is_stmt 0 view .LVU248
 933 0006 C0E90233 		strd	r3, r3, [r0, #8]
1198:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_REG_InitStruct->DMATransfer      = LL_ADC_REG_DMA_TRANSFER_NONE;
 934              		.loc 1 1198 3 is_stmt 1 view .LVU249
 935              		.loc 1 1198 40 is_stmt 0 view .LVU250
 936 000a 0361     		str	r3, [r0, #16]
1199:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_REG_InitStruct->Overrun          = LL_ADC_REG_OVR_DATA_OVERWRITTEN;
 937              		.loc 1 1199 3 is_stmt 1 view .LVU251
 938              		.loc 1 1199 40 is_stmt 0 view .LVU252
 939 000c 4FF48053 		mov	r3, #4096
 940 0010 4361     		str	r3, [r0, #20]
1200:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 941              		.loc 1 1200 1 view .LVU253
 942 0012 7047     		bx	lr
 943              		.cfi_endproc
 944              	.LFE374:
 946              		.section	.text.LL_ADC_INJ_Init,"ax",%progbits
 947              		.align	1
 948              		.global	LL_ADC_INJ_Init
 949              		.syntax unified
 950              		.thumb
 951              		.thumb_func
 952              		.fpu fpv4-sp-d16
 954              	LL_ADC_INJ_Init:
 955              	.LVL56:
 956              	.LFB375:
1201:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1202:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
1203:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Initialize some features of ADC group injected.
1204:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   These parameters have an impact on ADC scope: ADC group injected.
1205:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Refer to corresponding unitary functions into
1206:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         @ref ADC_LL_EF_Configuration_ADC_Group_Regular
1207:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (functions with prefix "INJ").
1208:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   The setting of these parameters by function @ref LL_ADC_Init()
1209:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         is conditioned to ADC state:
1210:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         ADC instance must be disabled.
1211:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         This condition is applied to all ADC features, for efficiency
1212:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         and compatibility over all STM32 families. However, the different
1213:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         features can be set under different ADC state conditions
1214:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         (setting possible with ADC enabled without conversion on going,
1215:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         ADC enabled with conversion on going, ...)
1216:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         Each feature can be updated afterwards with a unitary function
1217:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         and potentially with ADC in a different state than disabled,
1218:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         refer to description of each function for setting
1219:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         conditioned to ADC state.
1220:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @note   After using this function, other features must be configured
1221:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         using LL unitary functions.
1222:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *         The minimum configuration remaining to be done is:
1223:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - Set ADC group injected sequencer:
1224:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            map channel on the selected sequencer rank.
1225:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            Refer to function @ref LL_ADC_INJ_SetSequencerRanks().
1226:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - Set ADC channel sampling time
1227:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *            Refer to function LL_ADC_SetChannelSamplingTime();
1228:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADCx ADC instance
1229:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_INJ_InitStruct Pointer to a @ref LL_ADC_INJ_InitTypeDef structure
1230:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval An ErrorStatus enumeration value:
1231:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - SUCCESS: ADC registers are initialized
1232:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *          - ERROR: ADC registers are not initialized
1233:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
1234:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** ErrorStatus LL_ADC_INJ_Init(ADC_TypeDef *ADCx, LL_ADC_INJ_InitTypeDef *ADC_INJ_InitStruct)
1235:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 957              		.loc 1 1235 1 is_stmt 1 view -0
 958              		.cfi_startproc
 959              		@ args = 0, pretend = 0, frame = 0
 960              		@ frame_needed = 0, uses_anonymous_args = 0
1236:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 961              		.loc 1 1236 3 view .LVU255
1237:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1238:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Check the parameters */
1239:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
 962              		.loc 1 1239 3 view .LVU256
1240:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_INJ_TRIG_SOURCE(ADCx, ADC_INJ_InitStruct->TriggerSource));
 963              		.loc 1 1240 3 view .LVU257
1241:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_INJ_SEQ_SCAN_LENGTH(ADC_INJ_InitStruct->SequencerLength));
 964              		.loc 1 1241 3 view .LVU258
1242:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (ADC_INJ_InitStruct->SequencerLength != LL_ADC_INJ_SEQ_SCAN_DISABLE)
 965              		.loc 1 1242 3 view .LVU259
1243:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1244:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     assert_param(IS_LL_ADC_INJ_SEQ_SCAN_DISCONT_MODE(ADC_INJ_InitStruct->SequencerDiscont));
 966              		.loc 1 1244 5 view .LVU260
1245:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1246:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   assert_param(IS_LL_ADC_INJ_TRIG_AUTO(ADC_INJ_InitStruct->TrigAuto));
 967              		.loc 1 1246 3 view .LVU261
1247:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1248:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Note: Hardware constraint (refer to description of this function):       */
1249:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /*       ADC instance must be disabled.                                     */
1250:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   if (LL_ADC_IsEnabled(ADCx) == 0UL)
 968              		.loc 1 1250 3 view .LVU262
 969              	.LBB112:
 970              	.LBI112:
6621:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** {
 971              		.loc 3 6621 26 view .LVU263
 972              	.LBB113:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 973              		.loc 3 6623 3 view .LVU264
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 974              		.loc 3 6623 12 is_stmt 0 view .LVU265
 975 0000 8368     		ldr	r3, [r0, #8]
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 976              		.loc 3 6623 68 view .LVU266
 977 0002 DB07     		lsls	r3, r3, #31
 978              	.LBE113:
 979              	.LBE112:
1235:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ErrorStatus status = SUCCESS;
 980              		.loc 1 1235 1 view .LVU267
 981 0004 10B5     		push	{r4, lr}
 982              		.cfi_def_cfa_offset 8
 983              		.cfi_offset 4, -8
 984              		.cfi_offset 14, -4
 985              	.LBB115:
 986              	.LBB114:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 987              		.loc 3 6623 68 view .LVU268
 988 0006 14D4     		bmi	.L53
 989              	.LVL57:
6623:../../..\CubeG4\include/stm32g4xx_ll_adc.h **** }
 990              		.loc 3 6623 68 view .LVU269
 991              	.LBE114:
 992              	.LBE115:
1251:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1252:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Configuration of ADC hierarchical scope:                               */
1253:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*  - ADC group injected                                                  */
1254:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group injected trigger source                             */
1255:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group injected sequencer length                           */
1256:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group injected sequencer discontinuous mode               */
1257:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*    - Set ADC group injected conversion trigger: independent or         */
1258:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*      from ADC group regular                                            */
1259:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Note: On this STM32 serie, ADC trigger edge is set to value 0x0 by     */
1260:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /*       setting of trigger source to SW start.                           */
1261:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     if (ADC_INJ_InitStruct->SequencerLength != LL_ADC_REG_SEQ_SCAN_DISABLE)
 993              		.loc 1 1261 5 is_stmt 1 view .LVU270
1262:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
1263:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       MODIFY_REG(ADCx->CFGR,
 994              		.loc 1 1263 7 is_stmt 0 view .LVU271
 995 0008 C268     		ldr	r2, [r0, #12]
 996 000a CB68     		ldr	r3, [r1, #12]
1261:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 997              		.loc 1 1261 27 view .LVU272
 998 000c 4C68     		ldr	r4, [r1, #4]
 999              		.loc 1 1263 7 view .LVU273
 1000 000e 22F00472 		bic	r2, r2, #34603008
 1001 0012 1A43     		orrs	r2, r2, r3
1261:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
 1002              		.loc 1 1261 8 view .LVU274
 1003 0014 0CB1     		cbz	r4, .L51
 1004              		.loc 1 1263 7 is_stmt 1 view .LVU275
 1005 0016 8B68     		ldr	r3, [r1, #8]
 1006 0018 1A43     		orrs	r2, r2, r3
 1007              	.L51:
1264:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CFGR_JDISCEN
1265:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_JAUTO
1266:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ,
1267:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_INJ_InitStruct->SequencerDiscont
1268:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_INJ_InitStruct->TrigAuto
1269:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 );
1270:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
1271:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     else
1272:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     {
1273:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****       MODIFY_REG(ADCx->CFGR,
 1008              		.loc 1 1273 7 view .LVU276
 1009 001a C260     		str	r2, [r0, #12]
1274:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ADC_CFGR_JDISCEN
1275:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_CFGR_JAUTO
1276:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  ,
1277:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  LL_ADC_REG_SEQ_DISCONT_DISABLE
1278:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                  | ADC_INJ_InitStruct->TrigAuto
1279:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                 );
1280:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     }
1281:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1282:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     MODIFY_REG(ADCx->JSQR,
 1010              		.loc 1 1282 5 view .LVU277
 1011 001c C36C     		ldr	r3, [r0, #76]
 1012 001e 0A68     		ldr	r2, [r1]
 1013 0020 23F4FF73 		bic	r3, r3, #510
 1014 0024 23F00103 		bic	r3, r3, #1
 1015 0028 2343     		orrs	r3, r3, r4
 1016 002a 1343     		orrs	r3, r3, r2
 1017 002c C364     		str	r3, [r0, #76]
1236:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
 1018              		.loc 1 1236 15 is_stmt 0 view .LVU278
 1019 002e 0020     		movs	r0, #0
 1020              	.LVL58:
 1021              	.L50:
1283:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                ADC_JSQR_JEXTSEL
1284:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_JSQR_JEXTEN
1285:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_JSQR_JL
1286:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                ,
1287:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                ADC_INJ_InitStruct->TriggerSource
1288:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****                | ADC_INJ_InitStruct->SequencerLength
1289:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****               );
1290:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1291:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   else
1292:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   {
1293:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     /* Initialization error: ADC instance is not disabled. */
1294:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****     status = ERROR;
1295:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
1296:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   return status;
 1022              		.loc 1 1296 3 is_stmt 1 view .LVU279
1297:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 1023              		.loc 1 1297 1 is_stmt 0 view .LVU280
 1024 0030 10BD     		pop	{r4, pc}
 1025              	.LVL59:
 1026              	.L53:
1294:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 1027              		.loc 1 1294 12 view .LVU281
 1028 0032 0120     		movs	r0, #1
 1029              	.LVL60:
1294:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   }
 1030              		.loc 1 1294 12 view .LVU282
 1031 0034 FCE7     		b	.L50
 1032              		.cfi_endproc
 1033              	.LFE375:
 1035              		.section	.text.LL_ADC_INJ_StructInit,"ax",%progbits
 1036              		.align	1
 1037              		.global	LL_ADC_INJ_StructInit
 1038              		.syntax unified
 1039              		.thumb
 1040              		.thumb_func
 1041              		.fpu fpv4-sp-d16
 1043              	LL_ADC_INJ_StructInit:
 1044              	.LVL61:
 1045              	.LFB376:
1298:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** 
1299:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** /**
1300:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @brief  Set each @ref LL_ADC_INJ_InitTypeDef field to default value.
1301:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @param  ADC_INJ_InitStruct Pointer to a @ref LL_ADC_INJ_InitTypeDef structure
1302:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   *                            whose fields will be set to default values.
1303:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   * @retval None
1304:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   */
1305:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** void LL_ADC_INJ_StructInit(LL_ADC_INJ_InitTypeDef *ADC_INJ_InitStruct)
1306:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** {
 1046              		.loc 1 1306 1 is_stmt 1 view -0
 1047              		.cfi_startproc
 1048              		@ args = 0, pretend = 0, frame = 0
 1049              		@ frame_needed = 0, uses_anonymous_args = 0
 1050              		@ link register save eliminated.
1307:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set ADC_INJ_InitStruct fields to default values */
1308:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   /* Set fields of ADC group injected */
1309:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_INJ_InitStruct->TriggerSource    = LL_ADC_INJ_TRIG_SOFTWARE;
 1051              		.loc 1 1309 3 view .LVU284
 1052              		.loc 1 1309 40 is_stmt 0 view .LVU285
 1053 0000 0023     		movs	r3, #0
1310:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_INJ_InitStruct->SequencerLength  = LL_ADC_INJ_SEQ_SCAN_DISABLE;
 1054              		.loc 1 1310 40 view .LVU286
 1055 0002 C0E90033 		strd	r3, r3, [r0]
1311:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_INJ_InitStruct->SequencerDiscont = LL_ADC_INJ_SEQ_DISCONT_DISABLE;
 1056              		.loc 1 1311 3 is_stmt 1 view .LVU287
1312:../../..\CubeG4\src/stm32g4xx_ll_adc.c ****   ADC_INJ_InitStruct->TrigAuto         = LL_ADC_INJ_TRIG_INDEPENDENT;
 1057              		.loc 1 1312 40 is_stmt 0 view .LVU288
 1058 0006 C0E90233 		strd	r3, r3, [r0, #8]
1313:../../..\CubeG4\src/stm32g4xx_ll_adc.c **** }
 1059              		.loc 1 1313 1 view .LVU289
 1060 000a 7047     		bx	lr
 1061              		.cfi_endproc
 1062              	.LFE376:
 1064              		.text
 1065              	.Letext0:
 1066              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1067              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1068              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 1069              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 1070              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 1071              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"