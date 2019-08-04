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
  13              		.file	"stm32g4xx_ll_dac.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_DAC_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_DAC_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_DAC_DeInit:
  27              	.LVL0:
  28              	.LFB252:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_dac.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @file    stm32g4xx_ll_dac.c
   4:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @brief   DAC LL module driver
   6:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #include "stm32g4xx_ll_dac.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #include "stm32g4xx_ll_bus.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  25:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #ifdef USE_FULL_ASSERT
  26:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #include "stm32_assert.h"
  27:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #else
  28:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define assert_param(expr) ((void)0U)
  29:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
  30:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  31:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @{
  33:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
  34:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #if defined(DAC1) || defined(DAC2) || defined(DAC3) ||defined (DAC4)
  36:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  37:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /** @addtogroup DAC_LL DAC
  38:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @{
  39:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
  40:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  41:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /* Private macros ------------------------------------------------------------*/
  45:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  46:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /** @addtogroup DAC_LL_Private_Macros
  47:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @{
  48:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
  49:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #if defined(STM32G474xx) || defined(STM32G484xx) || defined(STM32G473xx) || defined(STM32G483xx)
  50:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_CHANNEL(__DACX__, __DAC_CHANNEL__)                           \
  51:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (((__DACX__) == DAC2) ?                                                      \
  52:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    ((__DAC_CHANNEL__) == LL_DAC_CHANNEL_1)                                 \
  53:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    :                                                                        \
  54:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    (((__DAC_CHANNEL__) == LL_DAC_CHANNEL_1)                                \
  55:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     ||  ((__DAC_CHANNEL__) == LL_DAC_CHANNEL_2))                            \
  56:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
  57:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #else
  58:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_CHANNEL(__DACX__, __DAC_CHANNEL__)                           \
  59:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (((__DAC_CHANNEL__) == LL_DAC_CHANNEL_1)                                 \
  60:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    ||  ((__DAC_CHANNEL__) == LL_DAC_CHANNEL_2)                             \
  61:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
  62:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
  63:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  64:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #if defined(STM32G474xx) || defined(STM32G484xx)
  65:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_TRIGGER_SOURCE(__DACX__, __TRIGGER_SOURCE__)                       \
  66:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_SOFTWARE)                                 \
  67:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM7_TRGO)                            \
  68:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM15_TRGO)                           \
  69:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM2_TRGO)                            \
  70:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM4_TRGO)                            \
  71:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_EXTI_LINE9)                           \
  72:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM6_TRGO)                            \
  73:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM3_TRGO)                            \
  74:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_RST_TRG1)                       \
  75:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_RST_TRG2)                       \
  76:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_RST_TRG3)                       \
  77:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_RST_TRG4)                       \
  78:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_RST_TRG5)                       \
  79:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_RST_TRG6)                       \
  80:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC3) ? ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM1_TRGO)    \
  81:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         : ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM8_TRGO))                       \
  82:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC1) && ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_TRGO1))\
  83:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC2) && ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_TRGO2))\
  84:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC3) && ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_TRGO3))\
  85:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC4) && ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_TRGO1))\
  86:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
  87:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #else
  88:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_TRIGGER_SOURCE(__DACX__, __TRIGGER_SOURCE__)                       \
  89:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_SOFTWARE)                                 \
  90:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM7_TRGO)                            \
  91:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM15_TRGO)                           \
  92:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM2_TRGO)                            \
  93:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM4_TRGO)                            \
  94:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_EXTI_LINE9)                           \
  95:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM6_TRGO)                            \
  96:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM3_TRGO)                            \
  97:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC3) ? ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM1_TRGO)    \
  98:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         : ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM8_TRGO))                       \
  99:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 100:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
 101:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 102:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #if defined(STM32G474xx) || defined(STM32G484xx)
 103:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_TRIGGER_SOURCE2(__DACX__, __TRIGGER_SOURCE__)                      \
 104:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_SOFTWARE)                                 \
 105:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM7_TRGO)                            \
 106:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM15_TRGO)                           \
 107:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM2_TRGO)                            \
 108:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM4_TRGO)                            \
 109:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_EXTI_LINE10)                          \
 110:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM6_TRGO)                            \
 111:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM3_TRGO)                            \
 112:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_STEP_TRG1)                      \
 113:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_STEP_TRG2)                      \
 114:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_STEP_TRG3)                      \
 115:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_STEP_TRG4)                      \
 116:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_STEP_TRG5)                      \
 117:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_HRTIM_STEP_TRG6)                      \
 118:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC3) ? ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM1_TRGO)    \
 119:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         : ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM8_TRGO))                       \
 120:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 121:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #else
 122:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_TRIGGER_SOURCE2(__DACX__, __TRIGGER_SOURCE__)                      \
 123:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_SOFTWARE)                                 \
 124:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM7_TRGO)                            \
 125:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM15_TRGO)                           \
 126:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM2_TRGO)                            \
 127:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM4_TRGO)                            \
 128:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_EXTI_LINE10)                          \
 129:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM6_TRGO)                            \
 130:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM3_TRGO)                            \
 131:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || (((__DACX__) == DAC3) ? ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM1_TRGO)    \
 132:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         : ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM8_TRGO))                       \
 133:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 134:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
 135:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 136:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_WAVE_AUTO_GENER_MODE(__WAVE_AUTO_GENERATION_MODE__)           \
 137:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_NONE)     \
 138:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_NOISE)    \
 139:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_TRIANGLE) \
 140:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_SAWTOOTH) \
 141:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 142:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_WAVE_AUTO_GENER_CONFIG(__WAVE_AUTO_GENERATION_MODE__, __WAVE_AUTO_GENERATION_CONF
 143:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ( (((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_NOISE)                        
 144:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     && (  ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BIT0)                     
 145:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS1_0)                  
 146:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS2_0)                  
 147:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS3_0)                  
 148:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS4_0)                  
 149:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS5_0)                  
 150:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS6_0)                  
 151:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS7_0)                  
 152:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS8_0)                  
 153:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS9_0)                  
 154:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS10_0)                 
 155:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS11_0))                
 156:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     )                                                                                              
 157:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ||(((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_TRIANGLE)                     
 158:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     && (  ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_1)                       
 159:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_3)                       
 160:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_7)                       
 161:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_15)                      
 162:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_31)                      
 163:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_63)                      
 164:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_127)                     
 165:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_255)                     
 166:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_511)                     
 167:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_1023)                    
 168:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_2047)                    
 169:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****        || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_4095))                   
 170:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     )                                                                                              
 171:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ||(((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_SAWTOOTH)                     
 172:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     && (((__WAVE_AUTO_GENERATION_CONFIG__) & ~(DAC_STR1_STINCDATA1|DAC_STR1_STDIR1|DAC_STR1_STRSTDA
 173:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****          == 0UL)                                                                                   
 174:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     )                                                                                              
 175:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 176:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 177:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_OUTPUT_BUFFER(__OUTPUT_BUFFER__)                             \
 178:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__OUTPUT_BUFFER__) == LL_DAC_OUTPUT_BUFFER_ENABLE)                     \
 179:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__OUTPUT_BUFFER__) == LL_DAC_OUTPUT_BUFFER_DISABLE)                    \
 180:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 181:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 182:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_OUTPUT_CONNECTION(__OUTPUT_CONNECTION__)                     \
 183:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__OUTPUT_CONNECTION__) == LL_DAC_OUTPUT_CONNECT_GPIO)                  \
 184:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__OUTPUT_CONNECTION__) == LL_DAC_OUTPUT_CONNECT_INTERNAL)              \
 185:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 186:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 187:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #define IS_LL_DAC_OUTPUT_MODE(__OUTPUT_MODE__)                                 \
 188:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   (   ((__OUTPUT_MODE__) == LL_DAC_OUTPUT_MODE_NORMAL)                         \
 189:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****    || ((__OUTPUT_MODE__) == LL_DAC_OUTPUT_MODE_SAMPLE_AND_HOLD)                \
 190:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   )
 191:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 192:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /**
 193:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @}
 194:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
 195:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 196:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 197:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /* Private function prototypes -----------------------------------------------*/
 198:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 199:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /* Exported functions --------------------------------------------------------*/
 200:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /** @addtogroup DAC_LL_Exported_Functions
 201:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @{
 202:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
 203:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 204:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /** @addtogroup DAC_LL_EF_Init
 205:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @{
 206:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
 207:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 208:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /**
 209:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @brief  De-initialize registers of the selected DAC instance
 210:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         to their default reset values.
 211:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @param  DACx DAC instance
 212:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @retval An ErrorStatus enumeration value:
 213:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *          - SUCCESS: DAC registers are de-initialized
 214:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *          - ERROR: not applicable
 215:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
 216:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** ErrorStatus LL_DAC_DeInit(DAC_TypeDef *DACx)
 217:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** {
  30              		.loc 1 217 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 218:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   /* Check the parameters */
 219:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_DAC_ALL_INSTANCE(DACx));
  35              		.loc 1 219 3 view .LVU1
 220:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 221:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #ifdef DAC1
 222:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   if (DACx == DAC1)
  36              		.loc 1 222 3 view .LVU2
  37              		.loc 1 222 6 is_stmt 0 view .LVU3
  38 0000 0F4B     		ldr	r3, .L5
  39 0002 9842     		cmp	r0, r3
  40 0004 0DD1     		bne	.L2
 223:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
 224:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Force reset of DAC clock */
 225:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_DAC1);
  41              		.loc 1 225 5 is_stmt 1 view .LVU4
  42              	.LVL1:
  43              	.LBB10:
  44              	.LBI10:
  45              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
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
  46              		.loc 2 583 22 view .LVU5
  47              	.LBB11:
 584:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 585:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB2RSTR, Periphs);
  48              		.loc 2 585 3 view .LVU6
  49 0006 03F17043 		add	r3, r3, #-268435456
  50 000a 03F50233 		add	r3, r3, #133120
  51 000e DA6A     		ldr	r2, [r3, #44]
  52 0010 42F48032 		orr	r2, r2, #65536
  53 0014 DA62     		str	r2, [r3, #44]
  54              	.LVL2:
  55              		.loc 2 585 3 is_stmt 0 view .LVU7
  56              	.LBE11:
  57              	.LBE10:
 226:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 227:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Release reset of DAC clock */
 228:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_DAC1);
  58              		.loc 1 228 5 is_stmt 1 view .LVU8
  59              	.LBB12:
  60              	.LBI12:
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
  61              		.loc 2 625 22 view .LVU9
  62              	.LBB13:
 626:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 627:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB2RSTR, Periphs);
  63              		.loc 2 627 3 view .LVU10
  64 0016 DA6A     		ldr	r2, [r3, #44]
  65 0018 22F48032 		bic	r2, r2, #65536
  66              	.LVL3:
  67              	.L4:
  68              		.loc 2 627 3 is_stmt 0 view .LVU11
  69              	.LBE13:
  70              	.LBE12:
  71              	.LBB14:
  72              	.LBB15:
  73 001c DA62     		str	r2, [r3, #44]
  74              	.L3:
  75              	.LBE15:
  76              	.LBE14:
 229:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 230:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
 231:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #ifdef DAC2
 232:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   if (DACx == DAC2)
 233:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
 234:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Force reset of DAC clock */
 235:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_DAC2);
 236:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 237:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Release reset of DAC clock */
 238:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_DAC2);
 239:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 240:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
 241:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #ifdef DAC3
 242:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   if (DACx == DAC3)
 243:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
 244:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Force reset of DAC clock */
 245:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_DAC3);
 246:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 247:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Release reset of DAC clock */
 248:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_DAC3);
 249:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 250:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
 251:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #ifdef DAC4
 252:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   if (DACx == DAC4)
 253:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
 254:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Force reset of DAC clock */
 255:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ForceReset(LL_AHB2_GRP1_PERIPH_DAC4);
 256:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 257:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Release reset of DAC clock */
 258:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     LL_AHB2_GRP1_ReleaseReset(LL_AHB2_GRP1_PERIPH_DAC4);
 259:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 260:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** #endif
 261:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 262:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   return SUCCESS;
  77              		.loc 1 262 3 is_stmt 1 view .LVU12
 263:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** }
  78              		.loc 1 263 1 is_stmt 0 view .LVU13
  79 001e 0020     		movs	r0, #0
  80              	.LVL4:
  81              		.loc 1 263 1 view .LVU14
  82 0020 7047     		bx	lr
  83              	.LVL5:
  84              	.L2:
 242:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
  85              		.loc 1 242 3 is_stmt 1 view .LVU15
 242:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
  86              		.loc 1 242 6 is_stmt 0 view .LVU16
  87 0022 084B     		ldr	r3, .L5+4
  88 0024 9842     		cmp	r0, r3
  89 0026 FAD1     		bne	.L3
 245:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
  90              		.loc 1 245 5 is_stmt 1 view .LVU17
  91              	.LVL6:
  92              	.LBB17:
  93              	.LBI17:
 583:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
  94              		.loc 2 583 22 view .LVU18
  95              	.LBB18:
 585:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  96              		.loc 2 585 3 view .LVU19
  97 0028 03F17043 		add	r3, r3, #-268435456
  98 002c 03F50033 		add	r3, r3, #131072
  99 0030 DA6A     		ldr	r2, [r3, #44]
 100 0032 42F48022 		orr	r2, r2, #262144
 101 0036 DA62     		str	r2, [r3, #44]
 102              	.LVL7:
 585:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 103              		.loc 2 585 3 is_stmt 0 view .LVU20
 104              	.LBE18:
 105              	.LBE17:
 248:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 106              		.loc 1 248 5 is_stmt 1 view .LVU21
 107              	.LBB19:
 108              	.LBI14:
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 109              		.loc 2 625 22 view .LVU22
 110              	.LBB16:
 111              		.loc 2 627 3 view .LVU23
 112 0038 DA6A     		ldr	r2, [r3, #44]
 113 003a 22F48022 		bic	r2, r2, #262144
 114 003e EDE7     		b	.L4
 115              	.L6:
 116              		.align	2
 117              	.L5:
 118 0040 00080050 		.word	1342179328
 119 0044 00100050 		.word	1342181376
 120              	.LBE16:
 121              	.LBE19:
 122              		.cfi_endproc
 123              	.LFE252:
 125              		.section	.text.LL_DAC_Init,"ax",%progbits
 126              		.align	1
 127              		.global	LL_DAC_Init
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv4-sp-d16
 133              	LL_DAC_Init:
 134              	.LVL8:
 135              	.LFB253:
 264:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 265:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /**
 266:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @brief  Initialize some features of DAC channel.
 267:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @note   @ref LL_DAC_Init() aims to ease basic configuration of a DAC channel.
 268:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         Leaving it ready to be enabled and output:
 269:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         a level by calling one of
 270:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *           @ref LL_DAC_ConvertData12RightAligned
 271:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *           @ref LL_DAC_ConvertData12LeftAligned
 272:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *           @ref LL_DAC_ConvertData8RightAligned
 273:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         or one of the supported autogenerated wave.
 274:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @note   This function allows configuration of:
 275:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *          - Output mode
 276:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *          - Trigger
 277:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *          - Wave generation
 278:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @note   The setting of these parameters by function @ref LL_DAC_Init()
 279:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         is conditioned to DAC state:
 280:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         DAC channel must be disabled.
 281:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @param  DACx DAC instance
 282:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @param  DAC_Channel This parameter can be one of the following values:
 283:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         @arg @ref LL_DAC_CHANNEL_1
 284:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 285:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *
 286:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *         (1) On this STM32 serie, parameter not available on all instances.
 287:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *             Refer to device datasheet for channels availability.
 288:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @param  DAC_InitStruct Pointer to a @ref LL_DAC_InitTypeDef structure
 289:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @retval An ErrorStatus enumeration value:
 290:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *          - SUCCESS: DAC registers are initialized
 291:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *          - ERROR: DAC registers are not initialized
 292:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
 293:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** ErrorStatus LL_DAC_Init(DAC_TypeDef *DACx, uint32_t DAC_Channel, LL_DAC_InitTypeDef *DAC_InitStruct
 294:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** {
 136              		.loc 1 294 1 view -0
 137              		.cfi_startproc
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 295:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ErrorStatus status = SUCCESS;
 140              		.loc 1 295 3 view .LVU25
 296:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 297:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   /* Check the parameters */
 298:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_DAC_ALL_INSTANCE(DACx));
 141              		.loc 1 298 3 view .LVU26
 299:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_LL_DAC_CHANNEL(DACx, DAC_Channel));
 142              		.loc 1 299 3 view .LVU27
 300:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_LL_DAC_TRIGGER_SOURCE(DACx, DAC_InitStruct->TriggerSource));
 143              		.loc 1 300 3 view .LVU28
 301:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_LL_DAC_OUTPUT_BUFFER(DAC_InitStruct->OutputBuffer));
 144              		.loc 1 301 3 view .LVU29
 302:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_LL_DAC_OUTPUT_CONNECTION(DAC_InitStruct->OutputConnection));
 145              		.loc 1 302 3 view .LVU30
 303:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_LL_DAC_OUTPUT_MODE(DAC_InitStruct->OutputMode));
 146              		.loc 1 303 3 view .LVU31
 304:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   assert_param(IS_LL_DAC_WAVE_AUTO_GENER_MODE(DAC_InitStruct->WaveAutoGeneration));
 147              		.loc 1 304 3 view .LVU32
 305:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   if (DAC_InitStruct->WaveAutoGeneration != LL_DAC_WAVE_AUTO_GENERATION_NONE)
 148              		.loc 1 305 3 view .LVU33
 306:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
 307:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     assert_param(IS_LL_DAC_WAVE_AUTO_GENER_CONFIG(DAC_InitStruct->WaveAutoGeneration,
 149              		.loc 1 307 5 view .LVU34
 308:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                                                   DAC_InitStruct->WaveAutoGenerationConfig));
 309:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 310:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 311:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   /* Note: Hardware constraint (refer to description of this function)        */
 312:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   /*       DAC instance must be disabled.                                     */
 313:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   if (LL_DAC_IsEnabled(DACx, DAC_Channel) == 0U)
 150              		.loc 1 313 3 view .LVU35
 151              	.LBB22:
 152              	.LBI22:
 153              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_dac.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @file    stm32g4xx_ll_dac.h
   4:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief   Header file of DAC LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #ifndef STM32G4xx_LL_DAC_H
  22:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define STM32G4xx_LL_DAC_H
  23:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #if defined(DAC1) || defined(DAC2) || defined(DAC3) ||defined (DAC4)
  36:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL DAC
  38:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  44:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Private constants ---------------------------------------------------------*/
  45:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_Private_Constants DAC Private Constants
  46:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
  47:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
  48:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  49:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Internal masks for DAC channels definition */
  50:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* To select into literal LL_DAC_CHANNEL_x the relevant bits for:             */
  51:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* - channel bits position into registers CR, MCR, CCR, SHHR, SHRR, STMODR    */
  52:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* - channel bits position into register SWTRIG                               */
  53:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* - channel bits position into register SWTRIGB                              */
  54:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* - channel register offset of data holding register DHRx                    */
  55:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* - channel register offset of data output register DORx                     */
  56:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* - channel register offset of sample-and-hold sample time register SHSRx    */
  57:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* - channel register offset of sawtooth register STRx                        */
  58:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_CR_CH1_BITOFFSET           0U    /* Position of channel bits into registers CR, MCR, CC
  59:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_CR_CH2_BITOFFSET           16U   /* Position of channel bits into registers CR, MCR, CC
  60:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_CR_CHX_BITOFFSET_MASK      (DAC_CR_CH1_BITOFFSET | DAC_CR_CH2_BITOFFSET)
  61:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_SWTR_CH1                   (DAC_SWTRIGR_SWTRIG1) /* Channel bit into register SWTRIGR o
  63:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_SWTR_CH2                   (DAC_SWTRIGR_SWTRIG2) /* Channel bit into register SWTRIGR o
  64:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_SWTR_CHX_MASK              (DAC_SWTR_CH1 | DAC_SWTR_CH2)
  65:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  66:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_SWTRB_CH1                  (DAC_SWTRIGR_SWTRIGB1) /* Channel bit into register SWTRIGRB
  67:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_SWTRB_CH2                  (DAC_SWTRIGR_SWTRIGB2) /* Channel bit into register SWTRIGR 
  68:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_SWTRB_CHX_MASK             (DAC_SWTRB_CH1 | DAC_SWTRB_CH2)
  69:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  70:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12R1_REGOFFSET      0x00000000U             /* Register DHR12Rx channel 1 taken 
  71:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12L1_REGOFFSET      0x00100000U             /* Register offset of DHR12Lx channe
  72:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR8R1_REGOFFSET       0x02000000U             /* Register offset of DHR8Rx  channe
  73:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12R2_REGOFFSET      0x30000000U             /* Register offset of DHR12Rx channe
  74:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12L2_REGOFFSET      0x00400000U             /* Register offset of DHR12Lx channe
  75:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR8R2_REGOFFSET       0x05000000U             /* Register offset of DHR8Rx  channe
  76:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12RX_REGOFFSET_MASK 0xF0000000U
  77:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12LX_REGOFFSET_MASK 0x00F00000U
  78:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR8RX_REGOFFSET_MASK  0x0F000000U
  79:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHRX_REGOFFSET_MASK    (DAC_REG_DHR12RX_REGOFFSET_MASK | DAC_REG_DHR12LX_REGOFFSET_
  80:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  81:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DOR1_REGOFFSET         0x00000000U             /* Register DORx channel 1 taken as 
  82:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DOR2_REGOFFSET         0x00000020U             /* Register offset of DORx channel 1
  83:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DORX_REGOFFSET_MASK    (DAC_REG_DOR1_REGOFFSET | DAC_REG_DOR2_REGOFFSET)
  84:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_SHSR1_REGOFFSET        0x00000000U             /* Register SHSRx channel 1 taken as
  85:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_SHSR2_REGOFFSET        0x00000040U             /* Register offset of SHSRx channel 
  86:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_SHSRX_REGOFFSET_MASK   (DAC_REG_SHSR1_REGOFFSET | DAC_REG_SHSR2_REGOFFSET)
  87:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  88:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_STR1_REGOFFSET         0x00000000U             /* Register STRx channel 1 taken as 
  89:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_STR2_REGOFFSET         0x00000080U             /* Register offset of STRx channel 1
  90:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_STRX_REGOFFSET_MASK   (DAC_REG_STR1_REGOFFSET | DAC_REG_STR2_REGOFFSET)
  91:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  92:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR_REGOFFSET_MASK_POSBIT0         0x0000000FU  /* Mask of data hold registers offs
  93:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DORX_REGOFFSET_MASK_POSBIT0        0x00000001U  /* Mask of DORx registers offset wh
  94:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_SHSRX_REGOFFSET_MASK_POSBIT0       0x00000001U  /* Mask of SHSRx registers offset w
  95:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_STRX_REGOFFSET_MASK_POSBIT0        0x00000001U  /* Mask of STRx registers offset wh
  96:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
  97:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12RX_REGOFFSET_BITOFFSET_POS           28U   /* Position of bits register offset
  98:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR12LX_REGOFFSET_BITOFFSET_POS           20U   /* Position of bits register offset
  99:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DHR8RX_REGOFFSET_BITOFFSET_POS            24U   /* Position of bits register offset
 100:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_DORX_REGOFFSET_BITOFFSET_POS               5U   /* Position of bits register offset
 101:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_SHSRX_REGOFFSET_BITOFFSET_POS              6U   /* Position of bits register offset
 102:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_REG_STRX_REGOFFSET_BITOFFSET_POS               7U   /* Position of bits register offset
 103:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 104:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* DAC registers bits positions */
 105:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_DHR12RD_DACC2DHR_BITOFFSET_POS                DAC_DHR12RD_DACC2DHR_Pos
 106:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_DHR12LD_DACC2DHR_BITOFFSET_POS                DAC_DHR12LD_DACC2DHR_Pos
 107:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_DHR8RD_DACC2DHR_BITOFFSET_POS                 DAC_DHR8RD_DACC2DHR_Pos
 108:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Miscellaneous data */
 110:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define DAC_DIGITAL_SCALE_12BITS                        4095U  /* Full-scale digital value with a r
 111:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 112:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 113:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 114:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 115:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 116:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 117:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Private macros ------------------------------------------------------------*/
 118:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_Private_Macros DAC Private Macros
 119:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 120:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 121:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 122:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 123:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Driver macro reserved for internal use: set a pointer to
 124:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         a register from a register basis from which an offset
 125:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         is applied.
 126:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __REG__ Register basis from which the offset is applied.
 127:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __REG_OFFFSET__ Offset to be applied (unit: number of registers).
 128:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Pointer to register address
 129:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** */
 130:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define __DAC_PTR_REG_OFFSET(__REG__, __REG_OFFFSET__)                         \
 131:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ((uint32_t *)((uint32_t) ((uint32_t)(&(__REG__)) + ((__REG_OFFFSET__) << 2U))))
 132:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 133:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 134:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 135:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 136:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 137:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 138:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Exported types ------------------------------------------------------------*/
 139:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #if defined(USE_FULL_LL_DRIVER)
 140:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_ES_INIT DAC Exported Init structure
 141:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 142:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 143:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 144:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 145:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Structure definition of some features of DAC instance.
 146:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 147:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** typedef struct
 148:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 149:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   uint32_t TriggerSource;               /*!< Set the conversion trigger source for the selected DAC
 150:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This parameter can be a value of @ref DAC_LL_EC_TRIGGE
 151:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 152:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This feature can be modified afterwards using unitary 
 153:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              @note If waveform automatic generation mode is set to 
 154:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 155:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   uint32_t TriggerSource2;              /*!< Set the conversion secondary trigger source for the se
 156:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This parameter can be a value of @ref DAC_LL_EC_TRIGGE
 157:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 158:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This feature can be modified afterwards using unitary 
 159:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              @note If waveform automatic generation mode is set to 
 160:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              step trigger */
 161:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 162:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   uint32_t WaveAutoGeneration;          /*!< Set the waveform automatic generation mode for the sel
 163:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This parameter can be a value of @ref DAC_LL_EC_WAVE_A
 164:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 165:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This feature can be modified afterwards using unitary 
 166:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 167:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   uint32_t WaveAutoGenerationConfig;    /*!< Set the waveform automatic generation mode for the sel
 168:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              If waveform automatic generation mode is set to noise,
 169:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              If waveform automatic generation mode is set to triang
 170:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              If waveform automatic generation mode is set to sawtoo
 171:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              set this parameter value.
 172:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              @note If waveform automatic generation mode is disable
 173:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 174:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This feature can be modified afterwards using unitary 
 175:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 176:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   uint32_t OutputBuffer;                /*!< Set the output buffer for the selected DAC channel.
 177:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This parameter can be a value of @ref DAC_LL_EC_OUTPUT
 178:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 179:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This feature can be modified afterwards using unitary 
 180:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 181:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 182:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   uint32_t OutputConnection;            /*!< Set the output connection for the selected DAC channel
 183:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This parameter can be a value of @ref DAC_LL_EC_OUTPUT
 184:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 185:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This feature can be modified afterwards using unitary 
 186:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 187:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   uint32_t OutputMode;                  /*!< Set the output mode normal or sample-and-hold for the 
 188:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This parameter can be a value of @ref DAC_LL_EC_OUTPUT
 189:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 190:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                              This feature can be modified afterwards using unitary 
 191:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** } LL_DAC_InitTypeDef;
 192:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 193:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 194:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 195:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 196:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #endif /* USE_FULL_LL_DRIVER */
 197:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 198:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Exported constants --------------------------------------------------------*/
 199:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_Exported_Constants DAC Exported Constants
 200:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 201:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 202:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 203:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_GET_FLAG DAC flags
 204:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief    Flags defines which can be used with LL_DAC_ReadReg function
 205:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 206:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 207:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* DAC channel 1 flags */
 208:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_DMAUDR1                (DAC_SR_DMAUDR1)   /*!< DAC channel 1 flag DMA underrun 
 209:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_CAL1                   (DAC_SR_CAL_FLAG1) /*!< DAC channel 1 flag offset calibr
 210:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_BWST1                  (DAC_SR_BWST1)     /*!< DAC channel 1 flag busy writing 
 211:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_DAC1RDY                (DAC_SR_DAC1RDY)   /*!< DAC channel 1 flag ready */
 212:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_DORSTAT1               (DAC_SR_DORSTAT1)  /*!< DAC channel 1 flag output regist
 213:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 214:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* DAC channel 2 flags */
 215:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_DMAUDR2                (DAC_SR_DMAUDR2)   /*!< DAC channel 2 flag DMA underrun 
 216:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_CAL2                   (DAC_SR_CAL_FLAG2) /*!< DAC channel 2 flag offset calibr
 217:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_BWST2                  (DAC_SR_BWST2)     /*!< DAC channel 2 flag busy writing 
 218:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_DAC2RDY                (DAC_SR_DAC2RDY)   /*!< DAC channel 2 flag ready */
 219:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_FLAG_DORSTAT2               (DAC_SR_DORSTAT2)  /*!< DAC channel 2 flag output regist
 220:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 221:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 222:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 223:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 224:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_IT DAC interruptions
 225:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief    IT defines which can be used with LL_DAC_ReadReg and  LL_DAC_WriteReg functions
 226:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 227:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 228:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_IT_DMAUDRIE1                (DAC_CR_DMAUDRIE1) /*!< DAC channel 1 interruption DMA u
 229:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_IT_DMAUDRIE2                (DAC_CR_DMAUDRIE2) /*!< DAC channel 2 interruption DMA u
 230:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 231:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 232:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 233:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 234:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_CHANNEL DAC channels
 235:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 236:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 237:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_CHANNEL_1                   (DAC_REG_STR1_REGOFFSET | DAC_REG_SHSR1_REGOFFSET | DAC_
 238:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_CHANNEL_2                   (DAC_REG_STR2_REGOFFSET | DAC_REG_SHSR2_REGOFFSET | DAC_
 239:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 240:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 241:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 242:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 243:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_HIGH_FREQUENCY_MODE DAC high frequency interface mode
 244:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief    High frequency interface mode defines that can be used with LL_DAC_SetHighFrequencyMo
 245:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 246:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 247:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_HIGH_FREQ_MODE_DISABLE         0x00000000U        /*!< High frequency interface mode
 248:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_HIGH_FREQ_MODE_ABOVE_80MHZ     (DAC_MCR_HFSEL_0)  /*!< High frequency interface mode
 249:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_HIGH_FREQ_MODE_ABOVE_160MHZ    (DAC_MCR_HFSEL_1)  /*!< High frequency interface mode
 250:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 251:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 252:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 253:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 254:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_OPERATING_MODE DAC operating mode
 255:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 256:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 257:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_MODE_NORMAL_OPERATION       0x00000000U             /*!< DAC channel in mode normal 
 258:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_MODE_CALIBRATION            (DAC_CR_CEN1)           /*!< DAC channel in mode calibra
 259:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 260:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 261:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 262:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 263:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_TRIGGER_SOURCE DAC trigger source
 264:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 265:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 266:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_SOFTWARE                  0x00000000U                                          
 267:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM1_TRGO             (                                                   D
 268:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM8_TRGO             (                                                   D
 269:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM7_TRGO             (                                  DAC_CR_TSEL1_1    
 270:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM15_TRGO            (                                  DAC_CR_TSEL1_1 | D
 271:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM2_TRGO             (                 DAC_CR_TSEL1_2                     
 272:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM4_TRGO             (                 DAC_CR_TSEL1_2                  | D
 273:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_EXTI_LINE9            (                 DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1    
 274:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_EXTI_LINE10           (                 DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1    
 275:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM6_TRGO             (                 DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1 | D
 276:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_TIM3_TRGO             (DAC_CR_TSEL1_3                                      
 277:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_STEP_TRG1       (DAC_CR_TSEL1_3                                   | D
 278:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_RST_TRG1        (DAC_CR_TSEL1_3                                   | D
 279:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_STEP_TRG2       (DAC_CR_TSEL1_3                  | DAC_CR_TSEL1_1    
 280:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_RST_TRG2        (DAC_CR_TSEL1_3                  | DAC_CR_TSEL1_1    
 281:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_STEP_TRG3       (DAC_CR_TSEL1_3                  | DAC_CR_TSEL1_1 | D
 282:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_RST_TRG3        (DAC_CR_TSEL1_3                  | DAC_CR_TSEL1_1 | D
 283:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_STEP_TRG4       (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2                     
 284:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_RST_TRG4        (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2                     
 285:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_STEP_TRG5       (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2                  | D
 286:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_RST_TRG5        (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2                  | D
 287:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_STEP_TRG6       (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1    
 288:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_RST_TRG6        (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1    
 289:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_TRGO1           (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1 | D
 290:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_TRGO2           (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1 | D
 291:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIG_EXT_HRTIM_TRGO3           (DAC_CR_TSEL1_3 | DAC_CR_TSEL1_2 | DAC_CR_TSEL1_1 | D
 292:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 293:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 294:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 295:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 296:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_WAVE_AUTO_GENERATION_MODE DAC waveform automatic generation mode
 297:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 298:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 299:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_WAVE_AUTO_GENERATION_NONE     0x00000000U                     /*!< DAC channel wave 
 300:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_WAVE_AUTO_GENERATION_NOISE    (               DAC_CR_WAVE1_0) /*!< DAC channel wave 
 301:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_WAVE_AUTO_GENERATION_TRIANGLE (DAC_CR_WAVE1_1               ) /*!< DAC channel wave 
 302:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_WAVE_AUTO_GENERATION_SAWTOOTH (DAC_CR_WAVE1_1|DAC_CR_WAVE1_0) /*!< DAC channel wave 
 303:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 304:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 305:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 307:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_WAVE_NOISE_LFSR_UNMASK_BITS DAC wave generation - Noise LFSR unmask bits
 308:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 309:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 310:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BIT0      0x00000000U                                             
 311:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS1_0   (                                                   DAC_
 312:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS2_0   (                                  DAC_CR_MAMP1_1       
 313:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS3_0   (                                  DAC_CR_MAMP1_1 | DAC_
 314:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS4_0   (                 DAC_CR_MAMP1_2                        
 315:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS5_0   (                 DAC_CR_MAMP1_2                  | DAC_
 316:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS6_0   (                 DAC_CR_MAMP1_2 | DAC_CR_MAMP1_1       
 317:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS7_0   (                 DAC_CR_MAMP1_2 | DAC_CR_MAMP1_1 | DAC_
 318:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS8_0   (DAC_CR_MAMP1_3                                         
 319:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS9_0   (DAC_CR_MAMP1_3                                   | DAC_
 320:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS10_0  (DAC_CR_MAMP1_3                  | DAC_CR_MAMP1_1       
 321:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_NOISE_LFSR_UNMASK_BITS11_0  (DAC_CR_MAMP1_3                  | DAC_CR_MAMP1_1 | DAC_
 322:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 323:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 324:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 325:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 326:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_WAVE_TRIANGLE_AMPLITUDE DAC wave generation - Triangle amplitude
 327:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 328:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 329:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_1        0x00000000U                                             
 330:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_3        (                                                   DAC_
 331:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_7        (                                  DAC_CR_MAMP1_1       
 332:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_15       (                                  DAC_CR_MAMP1_1 | DAC_
 333:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_31       (                 DAC_CR_MAMP1_2                        
 334:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_63       (                 DAC_CR_MAMP1_2                  | DAC_
 335:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_127      (                 DAC_CR_MAMP1_2 | DAC_CR_MAMP1_1       
 336:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_255      (                 DAC_CR_MAMP1_2 | DAC_CR_MAMP1_1 | DAC_
 337:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_511      (DAC_CR_MAMP1_3                                         
 338:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_1023     (DAC_CR_MAMP1_3                                   | DAC_
 339:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_2047     (DAC_CR_MAMP1_3                  | DAC_CR_MAMP1_1       
 340:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_TRIANGLE_AMPLITUDE_4095     (DAC_CR_MAMP1_3                  | DAC_CR_MAMP1_1 | DAC_
 341:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 342:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 343:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 344:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 345:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_SAWTOOTH_POLARITY_MODE DAC wave generation - Sawtooth polarity mode
 346:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 347:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 348:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_SAWTOOTH_POLARITY_DECREMENT          0x00000000U             /*!< Sawtooth wave gene
 349:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_SAWTOOTH_POLARITY_INCREMENT          (DAC_STR1_STDIR1)       /*!< Sawtooth wave gene
 350:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 351:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 352:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 353:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 354:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_OUTPUT_MODE DAC channel output mode
 355:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 356:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 357:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_OUTPUT_MODE_NORMAL          0x00000000U             /*!< The selected DAC channel ou
 358:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_OUTPUT_MODE_SAMPLE_AND_HOLD (DAC_MCR_MODE1_2)       /*!< The selected DAC channel ou
 359:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 360:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 361:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 362:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 363:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_OUTPUT_BUFFER DAC channel output buffer
 364:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 365:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 366:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_OUTPUT_BUFFER_ENABLE        0x00000000U             /*!< The selected DAC channel ou
 367:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_OUTPUT_BUFFER_DISABLE       (DAC_MCR_MODE1_1)       /*!< The selected DAC channel ou
 368:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 369:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 370:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 371:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 372:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_OUTPUT_CONNECTION DAC channel output connection
 373:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 374:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 375:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_OUTPUT_CONNECT_GPIO         0x00000000U             /*!< The selected DAC channel ou
 376:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_OUTPUT_CONNECT_INTERNAL     (DAC_MCR_MODE1_0)       /*!< The selected DAC channel ou
 377:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 378:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 379:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 380:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 381:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_SIGNED_FORMAT DAC channel signed format
 382:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 383:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 384:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_SIGNED_FORMAT_DISABLE       0x00000000U             /*!< The selected DAC channel da
 385:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_SIGNED_FORMAT_ENABLE        (DAC_MCR_SINFORMAT1)    /*!< The selected DAC channel da
 386:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 387:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 388:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 389:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 390:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_RESOLUTION  DAC channel output resolution
 391:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 392:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 393:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_RESOLUTION_12B              0x00000000U             /*!< DAC channel resolution 12 b
 394:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_RESOLUTION_8B               0x00000002U             /*!< DAC channel resolution 8 bi
 395:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 396:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 397:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 398:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 399:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_REGISTERS  DAC registers compliant with specific purpose
 400:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 401:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 402:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* List of DAC registers intended to be used (most commonly) with             */
 403:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* DMA transfer.                                                              */
 404:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Refer to function @ref LL_DAC_DMA_GetRegAddr().                            */
 405:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_DMA_REG_DATA_12BITS_RIGHT_ALIGNED  DAC_REG_DHR12RX_REGOFFSET_BITOFFSET_POS /*!< DAC 
 406:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_DMA_REG_DATA_12BITS_LEFT_ALIGNED   DAC_REG_DHR12LX_REGOFFSET_BITOFFSET_POS /*!< DAC 
 407:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_DMA_REG_DATA_8BITS_RIGHT_ALIGNED   DAC_REG_DHR8RX_REGOFFSET_BITOFFSET_POS  /*!< DAC 
 408:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 409:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 410:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 411:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 412:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EC_HW_DELAYS  Definitions of DAC hardware constraints delays
 413:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   Only DAC peripheral HW delays are defined in DAC LL driver driver,
 414:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         not timeout values.
 415:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         For details on delays values, refer to descriptions in source code
 416:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         above each literal definition.
 417:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 418:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 419:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 420:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Delay for DAC channel voltage settling time from DAC channel startup       */
 421:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* (transition from disable to enable).                                       */
 422:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Note: DAC channel startup time depends on board application environment:   */
 423:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*       impedance connected to DAC channel output.                           */
 424:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*       The delay below is specified under conditions:                       */
 425:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - voltage maximum transition (lowest to highest value)              */
 426:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - until voltage reaches final value +-1LSB                          */
 427:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - DAC channel output buffer enabled                                 */
 428:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - load impedance of 5kOhm (min), 50pF (max)                         */
 429:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Literal set to maximum value (refer to device datasheet,                   */
 430:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* parameter "tWAKEUP").                                                      */
 431:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Unit: us                                                                   */
 432:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_DELAY_STARTUP_VOLTAGE_SETTLING_US             8U  /*!< Delay for DAC channel voltage
 433:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 434:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Delay for DAC channel voltage settling time.                               */
 435:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Note: DAC channel startup time depends on board application environment:   */
 436:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*       impedance connected to DAC channel output.                           */
 437:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*       The delay below is specified under conditions:                       */
 438:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - voltage maximum transition (lowest to highest value)              */
 439:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - until voltage reaches final value +-1LSB                          */
 440:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - DAC channel output buffer enabled                                 */
 441:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /*        - load impedance of 5kOhm min, 50pF max                             */
 442:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Literal set to maximum value (refer to device datasheet,                   */
 443:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* parameter "tSETTLING").                                                    */
 444:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Unit: us                                                                   */
 445:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_DELAY_VOLTAGE_SETTLING_US                     3U  /*!< Delay for DAC channel voltage
 446:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 447:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 448:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 449:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 450:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 451:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 452:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 453:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 454:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 455:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Exported macro ------------------------------------------------------------*/
 456:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_Exported_Macros DAC Exported Macros
 457:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 458:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 459:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 460:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EM_WRITE_READ Common write and read registers macros
 461:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 462:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 463:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 464:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 465:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Write a value in DAC register
 466:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __INSTANCE__ DAC Instance
 467:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __REG__ Register to be written
 468:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __VALUE__ Value to be written in the register
 469:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
 470:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 471:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALUE
 472:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 473:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 474:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Read a value in DAC register
 475:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __INSTANCE__ DAC Instance
 476:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __REG__ Register to be read
 477:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Register value
 478:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 479:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define LL_DAC_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 480:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 481:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 482:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 483:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 484:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 485:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EM_HELPER_MACRO DAC helper macro
 486:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 487:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 488:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 489:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 490:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Helper macro to get DAC channel number in decimal format
 491:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         from literals LL_DAC_CHANNEL_x.
 492:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Example:
 493:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *            __LL_DAC_CHANNEL_TO_DECIMAL_NB(LL_DAC_CHANNEL_1)
 494:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *            will return decimal number "1".
 495:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   The input can be a value from functions where a channel
 496:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         number is returned.
 497:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __CHANNEL__ This parameter can be one of the following values:
 498:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 499:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 500:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 501:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 502:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 503:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval 1...2
 504:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 505:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define __LL_DAC_CHANNEL_TO_DECIMAL_NB(__CHANNEL__)                            \
 506:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ((__CHANNEL__) & DAC_SWTR_CHX_MASK)
 507:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 508:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 509:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Helper macro to get DAC channel in literal format LL_DAC_CHANNEL_x
 510:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         from number in decimal format.
 511:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Example:
 512:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           __LL_DAC_DECIMAL_NB_TO_CHANNEL(1)
 513:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           will return a data equivalent to "LL_DAC_CHANNEL_1".
 514:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note  If the input parameter does not correspond to a DAC channel,
 515:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *        this macro returns value '0'.
 516:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __DECIMAL_NB__ 1...2
 517:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
 518:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 519:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 520:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 521:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 522:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 523:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 524:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define __LL_DAC_DECIMAL_NB_TO_CHANNEL(__DECIMAL_NB__)                         \
 525:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   (((__DECIMAL_NB__) == 1U)                                                    \
 526:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****     ? (                                                                        \
 527:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****        LL_DAC_CHANNEL_1                                                        \
 528:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****       )                                                                        \
 529:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****       :                                                                        \
 530:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****       (((__DECIMAL_NB__) == 2U)                                                \
 531:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****         ? (                                                                    \
 532:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****            LL_DAC_CHANNEL_2                                                    \
 533:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****           )                                                                    \
 534:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****           :                                                                    \
 535:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****           (                                                                    \
 536:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****            0U                                                                  \
 537:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****           )                                                                    \
 538:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****       )                                                                        \
 539:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   )
 540:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 541:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 542:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Helper macro to define the DAC conversion data full-scale digital
 543:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         value corresponding to the selected DAC resolution.
 544:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   DAC conversion data full-scale corresponds to voltage range
 545:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         determined by analog voltage references Vref+ and Vref-
 546:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (refer to reference manual).
 547:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __DAC_RESOLUTION__ This parameter can be one of the following values:
 548:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_RESOLUTION_12B
 549:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_RESOLUTION_8B
 550:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval ADC conversion data equivalent voltage value (unit: mVolt)
 551:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 552:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define __LL_DAC_DIGITAL_SCALE(__DAC_RESOLUTION__)                             \
 553:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ((0x00000FFFU) >> ((__DAC_RESOLUTION__) << 1U))
 554:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 555:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 556:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Helper macro to calculate the DAC conversion data (unit: digital
 557:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         value) corresponding to a voltage (unit: mVolt).
 558:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This helper macro is intended to provide input data in voltage
 559:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         rather than digital value,
 560:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         to be used with LL DAC functions such as
 561:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @ref LL_DAC_ConvertData12RightAligned().
 562:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   Analog reference voltage (Vref+) must be either known from
 563:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         user board environment or can be calculated using ADC measurement
 564:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         and ADC helper macro @ref __LL_ADC_CALC_VREFANALOG_VOLTAGE().
 565:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __VREFANALOG_VOLTAGE__ Analog reference voltage (unit: mV)
 566:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __DAC_VOLTAGE__ Voltage to be generated by DAC channel
 567:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *                         (unit: mVolt).
 568:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __DAC_RESOLUTION__ This parameter can be one of the following values:
 569:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_RESOLUTION_12B
 570:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_RESOLUTION_8B
 571:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval DAC conversion data (unit: digital value)
 572:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 573:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define __LL_DAC_CALC_VOLTAGE_TO_DATA(__VREFANALOG_VOLTAGE__,\
 574:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                       __DAC_VOLTAGE__,\
 575:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                       __DAC_RESOLUTION__)                      \
 576:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ((__DAC_VOLTAGE__) * __LL_DAC_DIGITAL_SCALE(__DAC_RESOLUTION__)              \
 577:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****    / (__VREFANALOG_VOLTAGE__)                                                  \
 578:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   )
 579:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 580:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 581:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Helper macro to format sawtooth wave generation configuration
 582:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         value to be filled into WaveAutoGenerationConfig  parameter of @ref LL_DAC_InitTypeDef.
 583:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This helper will format information to fit in DAC_STRx register.
 584:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __POLARITY__ sawtooth wave polarity (must be value of @ref DAC_LL_EC_SAWTOOTH_POLARITY_
 585:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __RESET_DATA__ sawtooth reset data.
 586:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  __STEP_DATA__ sawtooth step data
 587:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Sawtooth configuration organized in DAC_STRx compatible format.
 588:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 589:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** #define __LL_DAC_FORMAT_SAWTOOTHWAVECONFIG(__POLARITY__,\
 590:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                            __RESET_DATA__,\
 591:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                            __STEP_DATA__)                        \
 592:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   ( (((__STEP_DATA__) << DAC_STR1_STINCDATA1_Pos) & DAC_STR1_STINCDATA1_Msk)     \
 593:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****     | ((__POLARITY__) & DAC_STR1_STDIR1_Msk)                                    \
 594:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****     | (((__RESET_DATA__) << DAC_STR1_STRSTDATA1_Pos) & DAC_STR1_STRSTDATA1_Msk) \
 595:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   )
 596:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 597:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 598:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 599:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 600:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 601:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 602:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 603:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 604:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 605:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 606:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /* Exported functions --------------------------------------------------------*/
 607:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_Exported_Functions DAC Exported Functions
 608:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 609:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 610:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EF_Configuration Configuration of DAC instance
 611:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 612:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 613:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 614:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the high frequency interface mode for the selected DAC instance
 615:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll MCR      HFSEL          LL_DAC_SetHighFrequencyMode
 616:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 617:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  HighFreqMode This parameter can be one of the following values:
 618:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_HIGH_FREQ_MODE_DISABLE
 619:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_HIGH_FREQ_MODE_ABOVE_80MHZ
 620:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_HIGH_FREQ_MODE_ABOVE_160MHZ
 621:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
 622:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 623:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetHighFrequencyMode(DAC_TypeDef *DACx, uint32_t HighFreqMode)
 624:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 625:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->MCR, DAC_MCR_HFSEL, HighFreqMode);
 626:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 627:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 628:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 629:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the high frequency interface mode for the selected DAC instance
 630:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll MCR      HFSEL          LL_DAC_GetHighFrequencyMode
 631:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 632:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
 633:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_HIGH_FREQ_MODE_DISABLE
 634:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_HIGH_FREQ_MODE_ABOVE_80MHZ
 635:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_HIGH_FREQ_MODE_ABOVE_160MHZ
 636:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 637:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetHighFrequencyMode(DAC_TypeDef *DACx)
 638:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 639:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->MCR, DAC_MCR_HFSEL));
 640:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 641:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 642:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
 643:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 644:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 645:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EF_Configuration Configuration of DAC channels
 646:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
 647:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 648:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 649:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 650:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the operating mode for the selected DAC channel:
 651:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         calibration or normal operating mode.
 652:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       CEN1           LL_DAC_SetMode\n
 653:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       CEN2           LL_DAC_SetMode
 654:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 655:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 656:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 657:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 658:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 659:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 660:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 661:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  ChannelMode This parameter can be one of the following values:
 662:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_MODE_NORMAL_OPERATION
 663:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_MODE_CALIBRATION
 664:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
 665:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 666:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetMode(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t ChannelMode)
 667:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 668:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->CR,
 669:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_CR_CEN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
 670:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              ChannelMode << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
 671:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 672:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 673:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 674:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the operating mode for the selected DAC channel:
 675:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         calibration or normal operating mode.
 676:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       CEN1           LL_DAC_GetMode\n
 677:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       CEN2           LL_DAC_GetMode
 678:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 679:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 680:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 681:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 682:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 683:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 684:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 685:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
 686:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_MODE_NORMAL_OPERATION
 687:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_MODE_CALIBRATION
 688:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 689:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetMode(DAC_TypeDef *DACx, uint32_t DAC_Channel)
 690:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 691:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->CR, DAC_CR_CEN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
 692:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 693:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
 694:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 695:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 696:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 697:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the offset trimming value for the selected DAC channel.
 698:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Trimming has an impact when output buffer is enabled
 699:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         and is intended to replace factory calibration default values.
 700:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CCR      OTRIM1         LL_DAC_SetTrimmingValue\n
 701:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CCR      OTRIM2         LL_DAC_SetTrimmingValue
 702:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 703:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 704:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 705:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 706:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 707:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 708:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 709:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  TrimmingValue Value between Min_Data=0x00 and Max_Data=0x1F
 710:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
 711:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 712:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetTrimmingValue(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t Trim
 713:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 714:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->CCR,
 715:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_CCR_OTRIM1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
 716:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              TrimmingValue << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
 717:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 718:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 719:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 720:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the offset trimming value for the selected DAC channel.
 721:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Trimming has an impact when output buffer is enabled
 722:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         and is intended to replace factory calibration default values.
 723:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CCR      OTRIM1         LL_DAC_GetTrimmingValue\n
 724:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CCR      OTRIM2         LL_DAC_GetTrimmingValue
 725:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 726:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 727:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 728:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 729:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 730:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 731:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 732:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval TrimmingValue Value between Min_Data=0x00 and Max_Data=0x1F
 733:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 734:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetTrimmingValue(DAC_TypeDef *DACx, uint32_t DAC_Channel)
 735:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 736:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->CCR, DAC_CCR_OTRIM1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 737:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 738:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
 739:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 740:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 741:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 742:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the conversion trigger source for the selected DAC channel.
 743:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For conversion trigger source to be effective, DAC trigger
 744:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         must be enabled using function @ref LL_DAC_EnableTrigger().
 745:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   To set conversion trigger source, DAC channel must be disabled.
 746:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Otherwise, the setting is discarded.
 747:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   Availability of parameters of trigger sources from timer
 748:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         depends on timers availability on the selected device.
 749:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       TSEL1          LL_DAC_SetTriggerSource\n
 750:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       TSEL2          LL_DAC_SetTriggerSource
 751:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 752:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 753:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 754:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 755:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 756:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 757:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 758:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  TriggerSource This parameter can be one of the following values:
 759:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_SOFTWARE
 760:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM1_TRGO            (1)
 761:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM8_TRGO            (2)
 762:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM7_TRGO
 763:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM15_TRGO
 764:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM2_TRGO
 765:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM4_TRGO
 766:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_EXTI_LINE9
 767:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM6_TRGO
 768:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM3_TRGO
 769:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG1           (5)
 770:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG2           (5)
 771:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG3           (5)
 772:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG4           (5)
 773:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG5           (5)
 774:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG6           (5)
 775:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO1          (3) (5)
 776:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO2          (4) (5)
 777:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO3          (1) (5)
 778:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 779:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter only available on DAC3.
 780:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (2) On this STM32 serie, parameter only available on DAC1/2/4.
 781:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (3) On this STM32 serie, parameter only available on DAC1&4.
 782:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (4) On this STM32 serie, parameter only available on DAC2.
 783:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Refer to device datasheet for DACx instances availability.
 784:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (5) On this STM32 serie, parameter not available on all devices.
 785:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Only available if HRTIM feature is supported (refer to device datasheet for supported 
 786:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
 787:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 788:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetTriggerSource(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t Trig
 789:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 790:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->CR,
 791:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_CR_TSEL1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
 792:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              TriggerSource << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
 793:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 794:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 795:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 796:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the conversion trigger source for the selected DAC channel.
 797:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For conversion trigger source to be effective, DAC trigger
 798:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         must be enabled using function @ref LL_DAC_EnableTrigger().
 799:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   Availability of parameters of trigger sources from timer
 800:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         depends on timers availability on the selected device.
 801:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       TSEL1          LL_DAC_GetTriggerSource\n
 802:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       TSEL2          LL_DAC_GetTriggerSource
 803:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 804:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 805:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 806:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 807:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 808:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 809:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 810:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
 811:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_SOFTWARE
 812:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM1_TRGO            (1)
 813:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM8_TRGO            (2)
 814:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM7_TRGO
 815:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM15_TRGO
 816:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM2_TRGO
 817:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM4_TRGO
 818:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_EXTI_LINE9
 819:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM6_TRGO
 820:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM3_TRGO
 821:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG1           (5)
 822:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG2           (5)
 823:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG3           (5)
 824:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG4           (5)
 825:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG5           (5)
 826:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG6           (5)
 827:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO1          (3) (5)
 828:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO2          (4) (5)
 829:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO3          (1) (5)
 830:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 831:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter only available on DAC3.
 832:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (2) On this STM32 serie, parameter only available on DAC1/2/4.
 833:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (3) On this STM32 serie, parameter only available on DAC1&4.
 834:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (4) On this STM32 serie, parameter only available on DAC2.
 835:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Refer to device datasheet for DACx instances availability.
 836:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (5) On this STM32 serie, parameter not available on all devices.
 837:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Only available if HRTIM feature is supported (refer to device datasheet for supported 
 838:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 839:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetTriggerSource(DAC_TypeDef *DACx, uint32_t DAC_Channel)
 840:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 841:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->CR, DAC_CR_TSEL1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
 842:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 843:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
 844:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 845:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 846:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 847:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the waveform automatic generation mode
 848:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         for the selected DAC channel.
 849:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       WAVE1          LL_DAC_SetWaveAutoGeneration\n
 850:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       WAVE2          LL_DAC_SetWaveAutoGeneration
 851:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 852:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 853:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 854:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 855:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 856:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 857:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 858:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  WaveAutoGeneration This parameter can be one of the following values:
 859:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_NONE
 860:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_NOISE
 861:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_TRIANGLE
 862:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_SAWTOOTH
 863:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
 864:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 865:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveAutoGeneration(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t
 866:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 867:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->CR,
 868:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_CR_WAVE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
 869:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              WaveAutoGeneration << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
 870:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 871:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 872:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 873:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the waveform automatic generation mode
 874:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         for the selected DAC channel.
 875:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       WAVE1          LL_DAC_GetWaveAutoGeneration\n
 876:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       WAVE2          LL_DAC_GetWaveAutoGeneration
 877:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 878:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 879:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 880:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 881:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 882:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 883:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 884:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
 885:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_NONE
 886:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_NOISE
 887:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_TRIANGLE
 888:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_WAVE_AUTO_GENERATION_SAWTOOTH
 889:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 890:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveAutoGeneration(DAC_TypeDef *DACx, uint32_t DAC_Channel)
 891:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 892:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->CR, DAC_CR_WAVE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
 893:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 894:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
 895:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 896:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 897:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 898:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the noise waveform generation for the selected DAC channel:
 899:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Noise mode and parameters LFSR (linear feedback shift register).
 900:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For wave generation to be effective, DAC channel
 901:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         wave generation mode must be enabled using
 902:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function @ref LL_DAC_SetWaveAutoGeneration().
 903:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This setting can be set when the selected DAC channel is disabled
 904:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (otherwise, the setting operation is ignored).
 905:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MAMP1          LL_DAC_SetWaveNoiseLFSR\n
 906:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MAMP2          LL_DAC_SetWaveNoiseLFSR
 907:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 908:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 909:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 910:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 911:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 912:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 913:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 914:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  NoiseLFSRMask This parameter can be one of the following values:
 915:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BIT0
 916:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS1_0
 917:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS2_0
 918:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS3_0
 919:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS4_0
 920:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS5_0
 921:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS6_0
 922:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS7_0
 923:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS8_0
 924:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS9_0
 925:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS10_0
 926:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS11_0
 927:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
 928:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 929:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveNoiseLFSR(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t Nois
 930:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 931:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->CR,
 932:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_CR_MAMP1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
 933:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              NoiseLFSRMask << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
 934:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 935:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 936:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 937:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the noise waveform generation for the selected DAC channel:
 938:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Noise mode and parameters LFSR (linear feedback shift register).
 939:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MAMP1          LL_DAC_GetWaveNoiseLFSR\n
 940:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MAMP2          LL_DAC_GetWaveNoiseLFSR
 941:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 942:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 943:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 944:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 945:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 946:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 947:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 948:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
 949:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BIT0
 950:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS1_0
 951:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS2_0
 952:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS3_0
 953:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS4_0
 954:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS5_0
 955:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS6_0
 956:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS7_0
 957:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS8_0
 958:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS9_0
 959:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS10_0
 960:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_NOISE_LFSR_UNMASK_BITS11_0
 961:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
 962:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveNoiseLFSR(DAC_TypeDef *DACx, uint32_t DAC_Channel)
 963:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
 964:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->CR, DAC_CR_MAMP1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
 965:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 966:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
 967:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
 968:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
 969:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
 970:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the triangle waveform generation for the selected DAC channel:
 971:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         triangle mode and amplitude.
 972:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For wave generation to be effective, DAC channel
 973:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         wave generation mode must be enabled using
 974:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function @ref LL_DAC_SetWaveAutoGeneration().
 975:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This setting can be set when the selected DAC channel is disabled
 976:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (otherwise, the setting operation is ignored).
 977:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MAMP1          LL_DAC_SetWaveTriangleAmplitude\n
 978:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MAMP2          LL_DAC_SetWaveTriangleAmplitude
 979:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
 980:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
 981:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
 982:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
 983:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
 984:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
 985:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
 986:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  TriangleAmplitude This parameter can be one of the following values:
 987:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_1
 988:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_3
 989:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_7
 990:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_15
 991:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_31
 992:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_63
 993:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_127
 994:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_255
 995:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_511
 996:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_1023
 997:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_2047
 998:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_4095
 999:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1000:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1001:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveTriangleAmplitude(DAC_TypeDef *DACx, uint32_t DAC_Channel,
1002:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                                      uint32_t TriangleAmplitude)
1003:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1004:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->CR,
1005:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_CR_MAMP1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1006:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              TriangleAmplitude << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1007:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1008:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1009:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1010:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the triangle waveform generation for the selected DAC channel:
1011:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         triangle mode and amplitude.
1012:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MAMP1          LL_DAC_GetWaveTriangleAmplitude\n
1013:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MAMP2          LL_DAC_GetWaveTriangleAmplitude
1014:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1015:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1016:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1017:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1018:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1019:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1020:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1021:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1022:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_1
1023:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_3
1024:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_7
1025:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_15
1026:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_31
1027:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_63
1028:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_127
1029:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_255
1030:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_511
1031:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_1023
1032:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_2047
1033:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIANGLE_AMPLITUDE_4095
1034:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1035:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveTriangleAmplitude(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1036:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1037:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->CR, DAC_CR_MAMP1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
1038:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1039:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
1040:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1041:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1042:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1043:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the swatooth waveform generation polarity.
1044:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For wave generation to be effective, DAC channel
1045:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         wave generation mode must be enabled using
1046:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function @ref LL_DAC_SetWaveAutoGeneration().
1047:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This setting can be set when the selected DAC channel is disabled
1048:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (otherwise, the setting operation is ignored).
1049:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STR1     STDIR1         LL_DAC_SetWaveSawtoothPolarity\n
1050:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STR2     STDIR2         LL_DAC_SetWaveSawtoothPolarity
1051:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1052:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1053:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1054:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1055:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1056:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1057:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1058:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  Polarity This parameter can be one of the following values:
1059:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SAWTOOTH_POLARITY_DECREMENT
1060:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SAWTOOTH_POLARITY_INCREMENT
1061:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1062:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1063:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveSawtoothPolarity(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32
1064:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1065:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t *preg = __DAC_PTR_REG_OFFSET(DACx->STR1, (DAC_Channel >> DAC_REG_STRX_REGOFFSET_BIT
1066:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1067:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(*preg,
1068:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_STR1_STDIR1,
1069:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              Polarity);
1070:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1071:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1072:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1073:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sawtooth waveform generation polarity.
1074:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STR1     STDIR1         LL_DAC_GetWaveSawtoothPolarity\n
1075:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STR2     STDIR2         LL_DAC_GetWaveSawtoothPolarity
1076:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1077:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1078:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1079:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1080:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1081:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1082:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1083:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1084:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SAWTOOTH_POLARITY_DECREMENT
1085:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SAWTOOTH_POLARITY_INCREMENT
1086:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1087:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveSawtoothPolarity(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1088:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1089:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t const *preg = __DAC_PTR_REG_OFFSET(DACx->STR1, (DAC_Channel >> DAC_REG_STRX_REGOFFS
1090:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1091:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t) READ_BIT(*preg, DAC_STR1_STDIR1);
1092:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1093:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1094:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1095:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the swatooth waveform generation reset data.
1096:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For wave generation to be effective, DAC channel
1097:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         wave generation mode must be enabled using
1098:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function @ref LL_DAC_SetWaveAutoGeneration().
1099:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This setting can be set when the selected DAC channel is disabled
1100:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (otherwise, the setting operation is ignored).
1101:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STR1     STRSTDATA1     LL_DAC_SetWaveSawtoothResetData\n
1102:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STR2     STRSTDATA2     LL_DAC_SetWaveSawtoothResetData
1103:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1104:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1105:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1106:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1107:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1108:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1109:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1110:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  ResetData This parameter is the sawtooth reset value.
1111:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Range is from 0 to DAC full range 4095 (0xFFF)
1112:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1113:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1114:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveSawtoothResetData(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint3
1115:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1116:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t *preg = __DAC_PTR_REG_OFFSET(DACx->STR1, (DAC_Channel >> DAC_REG_STRX_REGOFFSET_BIT
1117:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1118:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(*preg,
1119:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_STR1_STRSTDATA1,
1120:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              ResetData << DAC_STR1_STRSTDATA1_Pos);
1121:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1122:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1123:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1124:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sawtooth waveform generation reset data.
1125:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STR1     STRSTDATA1     LL_DAC_GetWaveSawtoothResetData\n
1126:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STR2     STRSTDATA2     LL_DAC_GetWaveSawtoothResetData
1127:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1128:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1129:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1130:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1131:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1132:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1133:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1134:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value is the sawtooth reset value.
1135:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Range is from 0 to DAC full range 4095 (0xFFF)
1136:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1137:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveSawtoothResetData(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1138:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1139:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t const *preg = __DAC_PTR_REG_OFFSET(DACx->STR1, (DAC_Channel >> DAC_REG_STRX_REGOFFS
1140:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1141:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(*preg, DAC_STR1_STRSTDATA1) >> DAC_STR1_STRSTDATA1_Pos);
1142:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1143:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1144:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1145:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the swatooth waveform generation step data.
1146:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For wave generation to be effective, DAC channel
1147:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         wave generation mode must be enabled using
1148:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function @ref LL_DAC_SetWaveAutoGeneration().
1149:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This setting can be set when the selected DAC channel is disabled
1150:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (otherwise, the setting operation is ignored).
1151:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STR1     STINCDATA1     LL_DAC_SetWaveSawtoothStepData\n
1152:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STR2     STINCDATA2     LL_DAC_SetWaveSawtoothStepData
1153:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1154:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1155:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1156:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1157:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1158:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1159:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1160:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  StepData This parameter is the sawtooth step value.
1161:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         12.4 bit format, unsigned: 12 bits exponent / 4 bits mantissa
1162:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Step value step is 1/16 = 0.0625
1163:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Step value range is 0.0000 to 4095.9375 (0xFFF.F)
1164:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1165:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1166:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveSawtoothStepData(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32
1167:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1168:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t *preg = __DAC_PTR_REG_OFFSET(DACx->STR1, (DAC_Channel >> DAC_REG_STRX_REGOFFSET_BIT
1169:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1170:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(*preg,
1171:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_STR1_STINCDATA1,
1172:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              StepData << DAC_STR1_STINCDATA1_Pos);
1173:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1174:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1175:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1176:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sawtooth waveform generation step data.
1177:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STR1     STINCDATA1     LL_DAC_GetWaveSawtoothStepData\n
1178:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STR2     STINCDATA2     LL_DAC_GetWaveSawtoothStepData
1179:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1180:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1181:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1182:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1183:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1184:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1185:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1186:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value is the sawtooth step value.
1187:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         12.4 bit format, unsigned: 12 bits exponent / 4 bits mantissa
1188:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Step value step is 1/16 = 0.0625
1189:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Step value range is 0.0000 to 4095.9375 (0xFFF.F)
1190:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1191:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveSawtoothStepData(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1192:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1193:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t const *preg = __DAC_PTR_REG_OFFSET(DACx->STR1, (DAC_Channel >> DAC_REG_STRX_REGOFFS
1194:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1195:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(*preg, DAC_STR1_STINCDATA1) >> DAC_STR1_STINCDATA1_Pos);
1196:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1197:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1198:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1199:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the swatooth waveform generation reset trigger source.
1200:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For wave generation to be effective, DAC channel
1201:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         wave generation mode must be enabled using
1202:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function @ref LL_DAC_SetWaveAutoGeneration().
1203:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This setting can be set when the selected DAC channel is disabled
1204:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (otherwise, the setting operation is ignored).
1205:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STMODR   STRSTTRIGSEL1  LL_DAC_SetWaveSawtoothResetTriggerSource\n
1206:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STMODR   STRSTTRIGSEL2  LL_DAC_SetWaveSawtoothResetTriggerSource
1207:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1208:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1209:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1210:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1211:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1212:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1213:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1214:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  TriggerSource This parameter can be one of the following values:
1215:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_SOFTWARE
1216:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM1_TRGO            (1)
1217:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM8_TRGO            (2)
1218:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM7_TRGO
1219:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM15_TRGO
1220:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM2_TRGO
1221:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM4_TRGO
1222:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_EXTI_LINE9
1223:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM6_TRGO
1224:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM3_TRGO
1225:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG1           (5)
1226:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG2           (5)
1227:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG3           (5)
1228:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG4           (5)
1229:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG5           (5)
1230:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG6           (5)
1231:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO1          (3) (5)
1232:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO2          (4) (5)
1233:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO3          (1) (5)
1234:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1235:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter only available on DAC3.
1236:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (2) On this STM32 serie, parameter only available on DAC1/2/4.
1237:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (3) On this STM32 serie, parameter only available on DAC1&4.
1238:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (4) On this STM32 serie, parameter only available on DAC2.
1239:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Refer to device datasheet for DACx instances availability.
1240:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (5) On this STM32 serie, parameter not available on all devices.
1241:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Only available if HRTIM feature is supported (refer to device datasheet for supported 
1242:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1243:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1244:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveSawtoothResetTriggerSource(DAC_TypeDef *DACx, uint32_t DAC_Chann
1245:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                                               uint32_t TriggerSource)
1246:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1247:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->STMODR,
1248:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_STMODR_STRSTTRIGSEL1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1249:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              ((TriggerSource >> DAC_CR_TSEL1_Pos) << DAC_STMODR_STRSTTRIGSEL1_Pos) << (DAC_Channel 
1250:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1251:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1252:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1253:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sawtooth waveform generation reset trigger source.
1254:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STMODR   STRSTTRIGSEL1  LL_DAC_GetWaveSawtoothResetTriggerSource\n
1255:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STMODR   STRSTTRIGSEL2  LL_DAC_GetWaveSawtoothResetTriggerSource
1256:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1257:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1258:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1259:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1260:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1261:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1262:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1263:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1264:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_SOFTWARE
1265:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM1_TRGO            (1)
1266:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM8_TRGO            (2)
1267:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM7_TRGO
1268:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM15_TRGO
1269:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM2_TRGO
1270:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM4_TRGO
1271:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_EXTI_LINE9
1272:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM6_TRGO
1273:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM3_TRGO
1274:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG1           (5)
1275:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG2           (5)
1276:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG3           (5)
1277:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG4           (5)
1278:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG5           (5)
1279:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_RST_TRG6           (5)
1280:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO1          (3) (5)
1281:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO2          (4) (5)
1282:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_TRGO3          (1) (5)
1283:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1284:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter only available on DAC3.
1285:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (2) On this STM32 serie, parameter only available on DAC1/2/4.
1286:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (3) On this STM32 serie, parameter only available on DAC1&4.
1287:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (4) On this STM32 serie, parameter only available on DAC2.
1288:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Refer to device datasheet for DACx instances availability.
1289:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (5) On this STM32 serie, parameter not available on all devices.
1290:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Only available if HRTIM feature is supported (refer to device datasheet for supported 
1291:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1292:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveSawtoothResetTriggerSource(DAC_TypeDef *DACx, uint32_t DAC_C
1293:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1294:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)((READ_BIT(DACx->STMODR,
1295:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                               DAC_STMODR_STRSTTRIGSEL1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1296:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                              )
1297:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                      >> (DAC_STMODR_STRSTTRIGSEL1_Pos + (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
1298:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     ) << DAC_CR_TSEL1_Pos);
1299:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1300:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1301:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1302:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the swatooth waveform generation step trigger source.
1303:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   For wave generation to be effective, DAC channel
1304:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         wave generation mode must be enabled using
1305:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function @ref LL_DAC_SetWaveAutoGeneration().
1306:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This setting can be set when the selected DAC channel is disabled
1307:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (otherwise, the setting operation is ignored).
1308:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STMODR   STINCTRIGSEL1  LL_DAC_SetWaveSawtoothStepTriggerSource\n
1309:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STMODR   STINCTRIGSEL2  LL_DAC_SetWaveSawtoothStepTriggerSource
1310:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1311:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1312:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1313:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1314:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1315:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1316:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1317:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  TriggerSource This parameter can be one of the following values:
1318:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_SOFTWARE
1319:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM1_TRGO            (1)
1320:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM8_TRGO            (2)
1321:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM7_TRGO
1322:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM15_TRGO
1323:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM2_TRGO
1324:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM4_TRGO
1325:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_EXTI_LINE10
1326:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM6_TRGO
1327:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM3_TRGO
1328:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG1      (3)
1329:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG2      (3)
1330:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG3      (3)
1331:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG4      (3)
1332:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG5      (3)
1333:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG6      (3)
1334:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1335:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter only available on DAC3.
1336:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (2) On this STM32 serie, parameter only available on DAC1/2/4.
1337:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Refer to device datasheet for DACx instances availability.
1338:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (3) On this STM32 serie, parameter not available on all devices.
1339:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Only available if HRTIM feature is supported (refer to device datasheet for supported 
1340:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1341:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1342:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetWaveSawtoothStepTriggerSource(DAC_TypeDef *DACx, uint32_t DAC_Channe
1343:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                                              uint32_t TriggerSource)
1344:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1345:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->STMODR,
1346:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_STMODR_STINCTRIGSEL1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1347:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              ((TriggerSource >> DAC_CR_TSEL1_Pos) << DAC_STMODR_STINCTRIGSEL1_Pos) << (DAC_Channel 
1348:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1349:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1350:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1351:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sawtooth waveform generation step trigger source.
1352:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll STMODR   STINCTRIGSEL1  LL_DAC_GetWaveSawtoothStepTriggerSource\n
1353:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         STMODR   STINCTRIGSEL2  LL_DAC_GetWaveSawtoothStepTriggerSource
1354:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1355:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1356:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1357:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1358:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1359:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1360:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1361:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1362:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_SOFTWARE
1363:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM1_TRGO            (1)
1364:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM8_TRGO            (2)
1365:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM7_TRGO
1366:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM15_TRGO
1367:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM2_TRGO
1368:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM4_TRGO
1369:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_EXTI_LINE10
1370:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM6_TRGO
1371:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_TIM3_TRGO
1372:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG1      (3)
1373:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG2      (3)
1374:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG3      (3)
1375:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG4      (3)
1376:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG5      (3)
1377:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_TRIG_EXT_HRTIM_STEP_TRG6      (3)
1378:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1379:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter only available on DAC3.
1380:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (2) On this STM32 serie, parameter only available on DAC1/2/4.
1381:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Refer to device datasheet for DACx instances availability.
1382:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (3) On this STM32 serie, parameter not available on all devices.
1383:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *          Only available if HRTIM feature is supported (refer to device datasheet for supported 
1384:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1385:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetWaveSawtoothStepTriggerSource(DAC_TypeDef *DACx, uint32_t DAC_Ch
1386:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1387:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)((READ_BIT(DACx->STMODR,
1388:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                               DAC_STMODR_STINCTRIGSEL1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1389:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                              )
1390:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                      >> (DAC_STMODR_STINCTRIGSEL1_Pos + (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
1391:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     ) << DAC_CR_TSEL1_Pos);
1392:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1393:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1394:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1395:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the output for the selected DAC channel.
1396:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This function set several features:
1397:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - mode normal or sample-and-hold
1398:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - buffer
1399:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - connection to GPIO or internal path.
1400:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         These features can also be set individually using
1401:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         dedicated functions:
1402:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - @ref LL_DAC_SetOutputBuffer()
1403:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - @ref LL_DAC_SetOutputMode()
1404:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - @ref LL_DAC_SetOutputConnection()
1405:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   On this STM32 serie, output connection depends on output mode
1406:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (normal or sample and hold) and output buffer state.
1407:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - if output connection is set to internal path and output buffer
1408:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           is enabled (whatever output mode):
1409:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           output connection is also connected to GPIO pin
1410:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           (both connections to GPIO pin and internal path).
1411:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - if output connection is set to GPIO pin, output buffer
1412:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           is disabled, output mode set to sample and hold:
1413:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           output connection is also connected to internal path
1414:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           (both connections to GPIO pin and internal path).
1415:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   Mode sample-and-hold requires an external capacitor
1416:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         to be connected between DAC channel output and ground.
1417:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Capacitor value depends on load on DAC channel output and
1418:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         sample-and-hold timings configured.
1419:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         As indication, capacitor typical value is 100nF
1420:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (refer to device datasheet, parameter "CSH").
1421:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MODE1          LL_DAC_ConfigOutput\n
1422:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MODE2          LL_DAC_ConfigOutput
1423:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1424:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1425:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1426:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1427:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1428:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1429:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1430:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  OutputMode This parameter can be one of the following values:
1431:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_MODE_NORMAL
1432:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_MODE_SAMPLE_AND_HOLD
1433:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  OutputBuffer This parameter can be one of the following values:
1434:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_BUFFER_ENABLE
1435:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_BUFFER_DISABLE
1436:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  OutputConnection This parameter can be one of the following values:
1437:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_CONNECT_GPIO
1438:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_CONNECT_INTERNAL
1439:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1440:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1441:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_ConfigOutput(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t OutputMo
1442:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                          uint32_t OutputBuffer, uint32_t OutputConnection)
1443:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1444:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->MCR,
1445:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              (DAC_MCR_MODE1_2 | DAC_MCR_MODE1_1 | DAC_MCR_MODE1_0) << (DAC_Channel & DAC_CR_CHX_BIT
1446:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              (OutputMode | OutputBuffer | OutputConnection) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_
1447:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1448:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1449:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1450:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the output mode normal or sample-and-hold
1451:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         for the selected DAC channel.
1452:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   Mode sample-and-hold requires an external capacitor
1453:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         to be connected between DAC channel output and ground.
1454:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Capacitor value depends on load on DAC channel output and
1455:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         sample-and-hold timings configured.
1456:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         As indication, capacitor typical value is 100nF
1457:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (refer to device datasheet, parameter "CSH").
1458:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MODE1          LL_DAC_SetOutputMode\n
1459:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MODE2          LL_DAC_SetOutputMode
1460:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1461:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1462:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1463:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1464:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1465:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1466:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1467:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  OutputMode This parameter can be one of the following values:
1468:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_MODE_NORMAL
1469:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_MODE_SAMPLE_AND_HOLD
1470:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1471:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1472:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetOutputMode(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t OutputM
1473:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1474:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->MCR,
1475:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              (uint32_t)DAC_MCR_MODE1_2 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1476:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              OutputMode << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1477:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1478:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1479:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1480:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the output mode normal or sample-and-hold for the selected DAC channel.
1481:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MODE1          LL_DAC_GetOutputMode\n
1482:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MODE2          LL_DAC_GetOutputMode
1483:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1484:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1485:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1486:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1487:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1488:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1489:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1490:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1491:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_MODE_NORMAL
1492:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_MODE_SAMPLE_AND_HOLD
1493:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1494:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetOutputMode(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1495:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1496:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->MCR, (uint32_t)DAC_MCR_MODE1_2 << (DAC_Channel & DAC_CR_CHX_BITO
1497:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1498:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
1499:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1500:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1501:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1502:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the output buffer for the selected DAC channel.
1503:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   On this STM32 serie, when buffer is enabled, its offset can be
1504:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         trimmed: factory calibration default values can be
1505:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         replaced by user trimming values, using function
1506:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @ref LL_DAC_SetTrimmingValue().
1507:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MODE1          LL_DAC_SetOutputBuffer\n
1508:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MODE2          LL_DAC_SetOutputBuffer
1509:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1510:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1511:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1512:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1513:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1514:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1515:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1516:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  OutputBuffer This parameter can be one of the following values:
1517:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_BUFFER_ENABLE
1518:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_BUFFER_DISABLE
1519:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1520:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1521:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetOutputBuffer(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t Outpu
1522:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1523:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->MCR,
1524:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              (uint32_t)DAC_MCR_MODE1_1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1525:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              OutputBuffer << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1526:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1527:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1528:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1529:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the output buffer state for the selected DAC channel.
1530:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MODE1          LL_DAC_GetOutputBuffer\n
1531:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MODE2          LL_DAC_GetOutputBuffer
1532:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1533:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1534:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1535:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1536:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1537:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1538:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1539:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1540:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_BUFFER_ENABLE
1541:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_BUFFER_DISABLE
1542:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1543:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetOutputBuffer(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1544:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1545:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->MCR, (uint32_t)DAC_MCR_MODE1_1 << (DAC_Channel & DAC_CR_CHX_BITO
1546:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1547:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
1548:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1549:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1550:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1551:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the output connection for the selected DAC channel.
1552:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   On this STM32 serie, output connection depends on output mode (normal or
1553:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         sample and hold) and output buffer state.
1554:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - if output connection is set to internal path and output buffer
1555:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           is enabled (whatever output mode):
1556:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           output connection is also connected to GPIO pin
1557:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           (both connections to GPIO pin and internal path).
1558:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - if output connection is set to GPIO pin, output buffer
1559:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           is disabled, output mode set to sample and hold:
1560:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           output connection is also connected to internal path
1561:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           (both connections to GPIO pin and internal path).
1562:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MODE1          LL_DAC_SetOutputConnection\n
1563:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MODE2          LL_DAC_SetOutputConnection
1564:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1565:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1566:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1567:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1568:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1569:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1570:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1571:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  OutputConnection This parameter can be one of the following values:
1572:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_CONNECT_GPIO
1573:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_CONNECT_INTERNAL
1574:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1575:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1576:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetOutputConnection(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t O
1577:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1578:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->MCR,
1579:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              (uint32_t)DAC_MCR_MODE1_0 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1580:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              OutputConnection << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1581:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1582:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1583:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1584:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the output connection for the selected DAC channel.
1585:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   On this STM32 serie, output connection depends on output mode (normal or
1586:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         sample and hold) and output buffer state.
1587:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - if output connection is set to internal path and output buffer
1588:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           is enabled (whatever output mode):
1589:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           output connection is also connected to GPIO pin
1590:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           (both connections to GPIO pin and internal path).
1591:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         - if output connection is set to GPIO pin, output buffer
1592:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           is disabled, output mode set to sample and hold:
1593:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           output connection is also connected to internal path
1594:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           (both connections to GPIO pin and internal path).
1595:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       MODE1          LL_DAC_GetOutputConnection\n
1596:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       MODE2          LL_DAC_GetOutputConnection
1597:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1598:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1599:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1600:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1601:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1602:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1603:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1604:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1605:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_CONNECT_GPIO
1606:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_OUTPUT_CONNECT_INTERNAL
1607:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1608:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetOutputConnection(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1609:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1610:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->MCR, (uint32_t)DAC_MCR_MODE1_0 << (DAC_Channel & DAC_CR_CHX_BITO
1611:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1612:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
1613:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1614:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1615:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1616:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the sample-and-hold timing for the selected DAC channel:
1617:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         sample time
1618:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   Sample time must be set when DAC channel is disabled
1619:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         or during DAC operation when DAC channel flag BWSTx is reset,
1620:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         otherwise the setting is ignored.
1621:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Check BWSTx flag state using function "LL_DAC_IsActiveFlag_BWSTx()".
1622:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll SHSR1    TSAMPLE1       LL_DAC_SetSampleAndHoldSampleTime\n
1623:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         SHSR2    TSAMPLE2       LL_DAC_SetSampleAndHoldSampleTime
1624:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1625:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1626:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1627:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1628:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1629:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1630:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1631:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  SampleTime Value between Min_Data=0x000 and Max_Data=0x3FF
1632:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1633:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1634:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetSampleAndHoldSampleTime(DAC_TypeDef *DACx, uint32_t DAC_Channel, uin
1635:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1636:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t *preg = __DAC_PTR_REG_OFFSET(DACx->SHSR1, (DAC_Channel >> DAC_REG_SHSRX_REGOFFSET_B
1637:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1638:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(*preg,
1639:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_SHSR1_TSAMPLE1,
1640:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              SampleTime);
1641:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1642:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1643:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1644:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sample-and-hold timing for the selected DAC channel:
1645:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         sample time
1646:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll SHSR1    TSAMPLE1       LL_DAC_GetSampleAndHoldSampleTime\n
1647:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         SHSR2    TSAMPLE2       LL_DAC_GetSampleAndHoldSampleTime
1648:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1649:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1650:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1651:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1652:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1653:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1654:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1655:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0x3FF
1656:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1657:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetSampleAndHoldSampleTime(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1658:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1659:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   __IO uint32_t const *preg = __DAC_PTR_REG_OFFSET(DACx->SHSR1, (DAC_Channel >> DAC_REG_SHSRX_REGOF
1660:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1661:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t) READ_BIT(*preg, DAC_SHSR1_TSAMPLE1);
1662:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1663:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1664:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1665:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the sample-and-hold timing for the selected DAC channel:
1666:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         hold time
1667:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll SHHR     THOLD1         LL_DAC_SetSampleAndHoldHoldTime\n
1668:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         SHHR     THOLD2         LL_DAC_SetSampleAndHoldHoldTime
1669:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1670:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1671:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1672:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1673:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1674:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1675:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1676:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  HoldTime Value between Min_Data=0x000 and Max_Data=0x3FF
1677:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1678:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1679:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetSampleAndHoldHoldTime(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint3
1680:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1681:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->SHHR,
1682:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_SHHR_THOLD1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1683:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              HoldTime << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1684:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1685:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1686:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1687:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sample-and-hold timing for the selected DAC channel:
1688:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         hold time
1689:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll SHHR     THOLD1         LL_DAC_GetSampleAndHoldHoldTime\n
1690:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         SHHR     THOLD2         LL_DAC_GetSampleAndHoldHoldTime
1691:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1692:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1693:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1694:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1695:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1696:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1697:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1698:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Value between Min_Data=0x000 and Max_Data=0x3FF
1699:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1700:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetSampleAndHoldHoldTime(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1701:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1702:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->SHHR, DAC_SHHR_THOLD1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MAS
1703:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1704:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
1705:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1706:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1707:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1708:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the sample-and-hold timing for the selected DAC channel:
1709:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         refresh time
1710:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll SHRR     TREFRESH1      LL_DAC_SetSampleAndHoldRefreshTime\n
1711:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         SHRR     TREFRESH2      LL_DAC_SetSampleAndHoldRefreshTime
1712:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1713:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1714:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1715:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1716:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1717:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1718:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1719:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  RefreshTime Value between Min_Data=0x00 and Max_Data=0xFF
1720:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1721:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1722:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetSampleAndHoldRefreshTime(DAC_TypeDef *DACx, uint32_t DAC_Channel, ui
1723:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1724:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->SHRR,
1725:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_SHRR_TREFRESH1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1726:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              RefreshTime << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1727:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1728:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1729:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1730:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the sample-and-hold timing for the selected DAC channel:
1731:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         refresh time
1732:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll SHRR     TREFRESH1      LL_DAC_GetSampleAndHoldRefreshTime\n
1733:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         SHRR     TREFRESH2      LL_DAC_GetSampleAndHoldRefreshTime
1734:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1735:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1736:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1737:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1738:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1739:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1740:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1741:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xFF
1742:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1743:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetSampleAndHoldRefreshTime(DAC_TypeDef *DACx, uint32_t DAC_Channel
1744:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1745:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->SHRR, DAC_SHRR_TREFRESH1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_
1746:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1747:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
1748:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1749:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1750:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1751:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Set the signed format for the selected DAC channel.
1752:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   On this STM32 serie, signed format can be used to inject
1753:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Q1.15, Q1.11, Q1.7 signed format data to DAC.
1754:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Ex when using 12bits data format (Q1.11 is used):
1755:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             0x800 will output 0v level
1756:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             0xFFF will output mid-scale level
1757:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             0x000 will output mid-scale level
1758:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             0x7FF will output full-scale level
1759:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll MCR      SINFORMAT1     LL_DAC_SetSignedFormat\n
1760:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         MCR      SINFORMAT2     LL_DAC_SetSignedFormat
1761:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1762:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1763:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1764:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1765:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1766:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1767:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1768:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  SignedFormat This parameter can be one of the following values:
1769:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SIGNED_FORMAT_ENABLE
1770:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SIGNED_FORMAT_DISABLE
1771:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1772:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1773:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_SetSignedFormat(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t Signe
1774:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1775:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   MODIFY_REG(DACx->MCR,
1776:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              DAC_MCR_SINFORMAT1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
1777:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****              SignedFormat << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1778:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1779:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1780:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1781:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get the signed format state for the selected DAC channel.
1782:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll MCR      SINFORMAT1     LL_DAC_GetSignedFormat\n
1783:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         MCR      SINFORMAT2     LL_DAC_GetSignedFormat
1784:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1785:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1786:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1787:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1788:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1789:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1790:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1791:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval Returned value can be one of the following values:
1792:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SIGNED_FORMAT_ENABLE
1793:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_SIGNED_FORMAT_DISABLE
1794:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1795:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_GetSignedFormat(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1796:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1797:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return (uint32_t)(READ_BIT(DACx->MCR, DAC_MCR_SINFORMAT1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_M
1798:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     >> (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
1799:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                    );
1800:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1801:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1802:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1803:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
1804:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1805:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1806:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EF_DMA_Management DMA Management
1807:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
1808:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1809:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1810:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1811:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Enable DAC DMA transfer request of the selected channel.
1812:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   To configure DMA source address (peripheral address),
1813:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         use function @ref LL_DAC_DMA_GetRegAddr().
1814:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       DMAEN1         LL_DAC_EnableDMAReq\n
1815:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       DMAEN2         LL_DAC_EnableDMAReq
1816:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1817:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1818:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1819:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1820:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1821:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1822:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1823:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1824:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1825:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_EnableDMAReq(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1826:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1827:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   SET_BIT(DACx->CR,
1828:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****           DAC_CR_DMAEN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1829:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1830:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1831:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1832:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Disable DAC DMA transfer request of the selected channel.
1833:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   To configure DMA source address (peripheral address),
1834:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         use function @ref LL_DAC_DMA_GetRegAddr().
1835:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       DMAEN1         LL_DAC_DisableDMAReq\n
1836:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       DMAEN2         LL_DAC_DisableDMAReq
1837:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1838:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1839:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1840:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1841:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1842:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1843:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1844:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1845:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1846:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_DisableDMAReq(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1847:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1848:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   CLEAR_BIT(DACx->CR,
1849:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****             DAC_CR_DMAEN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1850:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1851:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1852:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1853:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get DAC DMA transfer request state of the selected channel.
1854:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (0: DAC DMA transfer request is disabled, 1: DAC DMA transfer request is enabled)
1855:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       DMAEN1         LL_DAC_IsDMAReqEnabled\n
1856:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       DMAEN2         LL_DAC_IsDMAReqEnabled
1857:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1858:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1859:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1860:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1861:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1862:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1863:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1864:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval State of bit (1 or 0).
1865:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1866:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_IsDMAReqEnabled(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1867:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1868:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return ((READ_BIT(DACx->CR,
1869:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     DAC_CR_DMAEN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
1870:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****            == (DAC_CR_DMAEN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))) ? 1UL : 0UL);
1871:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1872:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1873:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1874:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Enable DAC DMA Double data mode of the selected channel.
1875:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll MCR      DMADOUBLE1     LL_DAC_EnableDMADoubleDataMode\n
1876:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         MCR      DMADOUBLE2     LL_DAC_EnableDMADoubleDataMode
1877:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1878:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1879:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1880:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1881:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1882:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1883:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1884:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1885:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1886:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_EnableDMADoubleDataMode(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1887:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1888:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   SET_BIT(DACx->MCR,
1889:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****           DAC_MCR_DMADOUBLE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1890:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1891:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1892:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1893:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Disable DAC DMA Double data mode of the selected channel.
1894:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll MCR      DMADOUBLE1     LL_DAC_DisableDMADoubleDataMode\n
1895:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         MCR      DMADOUBLE2     LL_DAC_DisableDMADoubleDataMode
1896:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1897:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1898:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1899:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1900:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1901:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1902:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1903:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1904:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1905:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_DisableDMADoubleDataMode(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1906:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1907:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   CLEAR_BIT(DACx->MCR,
1908:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****             DAC_MCR_DMADOUBLE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
1909:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1910:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1911:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1912:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get DAC DMA double data mode state of the selected channel.
1913:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (0: DAC DMA double data mode is disabled, 1: DAC DMA double data mode is enabled)
1914:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll MCR      DMADOUBLE1     LL_DAC_IsDMADoubleDataModeEnabled\n
1915:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         MCR      DMADOUBLE2     LL_DAC_IsDMADoubleDataModeEnabled
1916:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1917:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1918:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1919:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1920:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1921:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1922:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1923:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval State of bit (1 or 0).
1924:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1925:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_IsDMADoubleDataModeEnabled(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1926:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1927:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return ((READ_BIT(DACx->MCR,
1928:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     DAC_MCR_DMADOUBLE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
1929:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****            == (DAC_MCR_DMADOUBLE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))) ? 1UL : 0UL);
1930:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1931:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1932:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1933:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Function to help to configure DMA transfer to DAC: retrieve the
1934:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         DAC register address from DAC instance and a list of DAC registers
1935:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         intended to be used (most commonly) with DMA transfer.
1936:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   These DAC registers are data holding registers:
1937:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         when DAC conversion is requested, DAC generates a DMA transfer
1938:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         request to have data available in DAC data holding registers.
1939:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   This macro is intended to be used with LL DMA driver, refer to
1940:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         function "LL_DMA_ConfigAddresses()".
1941:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Example:
1942:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *           LL_DMA_ConfigAddresses(DMA1,
1943:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *                                  LL_DMA_CHANNEL_1,
1944:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *                                  (uint32_t)&< array or variable >,
1945:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *                                  LL_DAC_DMA_GetRegAddr(DAC1, LL_DAC_CHANNEL_1, LL_DAC_DMA_REG_D
1946:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *                                  LL_DMA_DIRECTION_MEMORY_TO_PERIPH);
1947:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll DHR12R1  DACC1DHR       LL_DAC_DMA_GetRegAddr\n
1948:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         DHR12L1  DACC1DHR       LL_DAC_DMA_GetRegAddr\n
1949:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         DHR8R1   DACC1DHR       LL_DAC_DMA_GetRegAddr\n
1950:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         DHR12R2  DACC2DHR       LL_DAC_DMA_GetRegAddr\n
1951:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         DHR12L2  DACC2DHR       LL_DAC_DMA_GetRegAddr\n
1952:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         DHR8R2   DACC2DHR       LL_DAC_DMA_GetRegAddr
1953:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1954:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1955:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1956:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1957:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1958:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1959:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1960:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  Register This parameter can be one of the following values:
1961:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_DMA_REG_DATA_12BITS_RIGHT_ALIGNED
1962:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_DMA_REG_DATA_12BITS_LEFT_ALIGNED
1963:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_DMA_REG_DATA_8BITS_RIGHT_ALIGNED
1964:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval DAC register address
1965:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1966:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_DMA_GetRegAddr(DAC_TypeDef *DACx, uint32_t DAC_Channel, uint32_t Re
1967:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1968:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   /* Retrieve address of register DHR12Rx, DHR12Lx or DHR8Rx depending on     */
1969:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   /* DAC channel selected.                                                    */
1970:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return ((uint32_t)(__DAC_PTR_REG_OFFSET((DACx)->DHR12R1,
1971:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                                           ((DAC_Channel >> (Register & 0x1FUL)) & DAC_REG_DHR_REGOF
1972:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
1973:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1974:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @}
1975:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1976:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1977:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /** @defgroup DAC_LL_EF_Operation Operation on DAC channels
1978:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @{
1979:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1980:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
1981:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
1982:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Enable DAC selected channel.
1983:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       EN1            LL_DAC_Enable\n
1984:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       EN2            LL_DAC_Enable
1985:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @note   After enable from off state, DAC channel requires a delay
1986:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         for output voltage to reach accuracy +/- 1 LSB.
1987:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         Refer to device datasheet, parameter "tWAKEUP".
1988:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
1989:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
1990:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
1991:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
1992:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
1993:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
1994:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
1995:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
1996:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
1997:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_Enable(DAC_TypeDef *DACx, uint32_t DAC_Channel)
1998:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
1999:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   SET_BIT(DACx->CR,
2000:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****           DAC_CR_EN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
2001:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
2002:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
2003:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
2004:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Disable DAC selected channel.
2005:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       EN1            LL_DAC_Disable\n
2006:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       EN2            LL_DAC_Disable
2007:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
2008:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
2009:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
2010:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
2011:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
2012:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
2013:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
2014:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval None
2015:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
2016:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE void LL_DAC_Disable(DAC_TypeDef *DACx, uint32_t DAC_Channel)
2017:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
2018:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   CLEAR_BIT(DACx->CR,
2019:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****             DAC_CR_EN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK));
2020:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** }
2021:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** 
2022:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** /**
2023:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @brief  Get DAC enable state of the selected channel.
2024:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (0: DAC channel is disabled, 1: DAC channel is enabled)
2025:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @rmtoll CR       EN1            LL_DAC_IsEnabled\n
2026:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         CR       EN2            LL_DAC_IsEnabled
2027:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DACx DAC instance
2028:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @param  DAC_Channel This parameter can be one of the following values:
2029:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_1
2030:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         @arg @ref LL_DAC_CHANNEL_2 (1)
2031:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *
2032:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *         (1) On this STM32 serie, parameter not available on all instances.
2033:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   *             Refer to device datasheet for channels availability.
2034:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   * @retval State of bit (1 or 0).
2035:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   */
2036:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** __STATIC_INLINE uint32_t LL_DAC_IsEnabled(DAC_TypeDef *DACx, uint32_t DAC_Channel)
 154              		.loc 3 2036 26 view .LVU36
 155              	.LBB23:
2037:../../..\CubeG4\include/stm32g4xx_ll_dac.h **** {
2038:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****   return ((READ_BIT(DACx->CR,
 156              		.loc 3 2038 3 view .LVU37
 157              	.LBE23:
 158              	.LBE22:
 294:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   ErrorStatus status = SUCCESS;
 159              		.loc 1 294 1 is_stmt 0 view .LVU38
 160 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 161              		.cfi_def_cfa_offset 20
 162              		.cfi_offset 4, -20
 163              		.cfi_offset 5, -16
 164              		.cfi_offset 6, -12
 165              		.cfi_offset 7, -8
 166              		.cfi_offset 14, -4
 167              	.LBB25:
 168              	.LBB24:
 169              		.loc 3 2038 12 view .LVU39
 170 0002 0123     		movs	r3, #1
 171 0004 0668     		ldr	r6, [r0]
 172 0006 01F01005 		and	r5, r1, #16
 173 000a 03FA05F4 		lsl	r4, r3, r5
2039:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****                     DAC_CR_EN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))
2040:../../..\CubeG4\include/stm32g4xx_ll_dac.h ****            == (DAC_CR_EN1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK))) ? 1UL : 0UL);
 174              		.loc 3 2040 80 view .LVU40
 175 000e B443     		bics	r4, r4, r6
 176 0010 41D0     		beq	.L12
 177              	.LVL9:
 178              		.loc 3 2040 80 view .LVU41
 179              	.LBE24:
 180              	.LBE25:
 314:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
 315:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Configuration of DAC channel:                                          */
 316:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /*  - TriggerSource                                                       */
 317:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /*  - WaveAutoGeneration                                                  */
 318:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /*  - OutputBuffer                                                        */
 319:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /*  - OutputConnection                                                    */
 320:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /*  - OutputMode                                                          */
 321:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     if (DAC_InitStruct->WaveAutoGeneration != LL_DAC_WAVE_AUTO_GENERATION_NONE)
 181              		.loc 1 321 5 is_stmt 1 view .LVU42
 182              		.loc 1 321 23 is_stmt 0 view .LVU43
 183 0012 9368     		ldr	r3, [r2, #8]
 184 0014 1468     		ldr	r4, [r2]
 185              		.loc 1 321 8 view .LVU44
 186 0016 002B     		cmp	r3, #0
 187 0018 35D0     		beq	.L9
 322:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     {
 323:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****       if (DAC_InitStruct->WaveAutoGeneration == LL_DAC_WAVE_AUTO_GENERATION_SAWTOOTH)
 188              		.loc 1 323 7 is_stmt 1 view .LVU45
 189              		.loc 1 323 10 is_stmt 0 view .LVU46
 190 001a C02B     		cmp	r3, #192
 191 001c D668     		ldr	r6, [r2, #12]
 192 001e 26D1     		bne	.L10
 324:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****       {
 325:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         assert_param(IS_LL_DAC_TRIGGER_SOURCE2(DACx, DAC_InitStruct->TriggerSource2));
 193              		.loc 1 325 9 is_stmt 1 view .LVU47
 326:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 327:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         MODIFY_REG(DACx->CR,
 194              		.loc 1 327 9 view .LVU48
 195 0020 0768     		ldr	r7, [r0]
 196 0022 AB40     		lsls	r3, r3, r5
 197 0024 3B43     		orrs	r3, r3, r7
 328:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    DAC_CR_WAVE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
 329:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    DAC_InitStruct->WaveAutoGeneration << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 330:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                   );
 331:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         MODIFY_REG(DACx->STMODR,
 198              		.loc 1 331 9 is_stmt 0 view .LVU49
 199 0026 5768     		ldr	r7, [r2, #4]
 327:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    DAC_CR_WAVE1 << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK),
 200              		.loc 1 327 9 view .LVU50
 201 0028 0360     		str	r3, [r0]
 202              		.loc 1 331 9 is_stmt 1 view .LVU51
 203 002a BF08     		lsrs	r7, r7, #2
 204 002c A408     		lsrs	r4, r4, #2
 205 002e 036E     		ldr	r3, [r0, #96]
 206 0030 44EA0724 		orr	r4, r4, r7, lsl #8
 332:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_STMODR_STINCTRIGSEL1 | DAC_STMODR_STRSTTRIGSEL1) << (DAC_Channel & DAC_CR_C
 333:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (
 334:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                      ((DAC_InitStruct->TriggerSource >> DAC_CR_TSEL1_Pos) << DAC_STMODR_STRSTTRIGSE
 335:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                      | ((DAC_InitStruct->TriggerSource2 >> DAC_CR_TSEL1_Pos) << DAC_STMODR_STINCTRI
 336:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 337:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                   );
 338:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         WRITE_REG(*(__DAC_PTR_REG_OFFSET(DACx->STR1, (DAC_Channel >> DAC_REG_STRX_REGOFFSET_BITOFFS
 207              		.loc 1 338 9 is_stmt 0 view .LVU52
 208 0034 4909     		lsrs	r1, r1, #5
 209              	.LVL10:
 331:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_STMODR_STINCTRIGSEL1 | DAC_STMODR_STRSTTRIGSEL1) << (DAC_Channel & DAC_CR_C
 210              		.loc 1 331 9 view .LVU53
 211 0036 40F60F77 		movw	r7, #3855
 212 003a AF40     		lsls	r7, r7, r5
 213              		.loc 1 338 9 view .LVU54
 214 003c 01F00401 		and	r1, r1, #4
 331:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_STMODR_STINCTRIGSEL1 | DAC_STMODR_STRSTTRIGSEL1) << (DAC_Channel & DAC_CR_C
 215              		.loc 1 331 9 view .LVU55
 216 0040 AC40     		lsls	r4, r4, r5
 217 0042 23EA0703 		bic	r3, r3, r7
 218              		.loc 1 338 9 view .LVU56
 219 0046 0144     		add	r1, r1, r0
 331:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_STMODR_STINCTRIGSEL1 | DAC_STMODR_STRSTTRIGSEL1) << (DAC_Channel & DAC_CR_C
 220              		.loc 1 331 9 view .LVU57
 221 0048 1C43     		orrs	r4, r4, r3
 222 004a 0466     		str	r4, [r0, #96]
 223              		.loc 1 338 9 is_stmt 1 view .LVU58
 224 004c 8E65     		str	r6, [r1, #88]
 225              	.L11:
 339:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                   DAC_InitStruct->WaveAutoGenerationConfig);
 340:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****       }
 341:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****       else
 342:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****       {
 343:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****         MODIFY_REG(DACx->CR,
 344:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_CR_TSEL1
 345:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                     | DAC_CR_WAVE1
 346:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                     | DAC_CR_MAMP1
 347:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 348:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    ,
 349:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_InitStruct->TriggerSource
 350:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                     | DAC_InitStruct->WaveAutoGeneration
 351:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                     | DAC_InitStruct->WaveAutoGenerationConfig
 352:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 353:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                   );
 354:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****       }
 355:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     }
 356:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     else
 357:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     {
 358:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****       MODIFY_REG(DACx->CR,
 359:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  (DAC_CR_TSEL1
 360:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                   | DAC_CR_WAVE1
 361:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 362:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  ,
 363:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  (DAC_InitStruct->TriggerSource
 364:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                   | LL_DAC_WAVE_AUTO_GENERATION_NONE
 365:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 366:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                 );
 367:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     }
 368:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     MODIFY_REG(DACx->MCR,
 226              		.loc 1 368 5 view .LVU59
 227 004e D2E90434 		ldrd	r3, r4, [r2, #16]
 228 0052 9269     		ldr	r2, [r2, #24]
 229              	.LVL11:
 230              		.loc 1 368 5 is_stmt 0 view .LVU60
 231 0054 C16B     		ldr	r1, [r0, #60]
 232 0056 2343     		orrs	r3, r3, r4
 233 0058 1343     		orrs	r3, r3, r2
 234 005a 0722     		movs	r2, #7
 235 005c AB40     		lsls	r3, r3, r5
 236 005e 02FA05F5 		lsl	r5, r2, r5
 237 0062 21EA0501 		bic	r1, r1, r5
 238 0066 0B43     		orrs	r3, r3, r1
 239 0068 C363     		str	r3, [r0, #60]
 295:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 240              		.loc 1 295 15 view .LVU61
 241 006a 0020     		movs	r0, #0
 242              	.LVL12:
 243              	.L8:
 369:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                (DAC_MCR_MODE1_1
 370:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                 | DAC_MCR_MODE1_0
 371:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                 | DAC_MCR_MODE1_2
 372:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 373:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                ,
 374:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                (DAC_InitStruct->OutputBuffer
 375:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                 | DAC_InitStruct->OutputConnection
 376:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                 | DAC_InitStruct->OutputMode
 377:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
 378:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****               );
 379:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 380:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   else
 381:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   {
 382:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     /* Initialization error: DAC instance is not disabled.                    */
 383:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****     status = ERROR;
 384:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 385:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   return status;
 244              		.loc 1 385 3 is_stmt 1 view .LVU62
 386:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** }
 245              		.loc 1 386 1 is_stmt 0 view .LVU63
 246 006c F0BD     		pop	{r4, r5, r6, r7, pc}
 247              	.LVL13:
 248              	.L10:
 343:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_CR_TSEL1
 249              		.loc 1 343 9 is_stmt 1 view .LVU64
 250 006e 0168     		ldr	r1, [r0]
 251              	.LVL14:
 343:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                    (DAC_CR_TSEL1
 252              		.loc 1 343 9 is_stmt 0 view .LVU65
 253 0070 40F6FC77 		movw	r7, #4092
 254 0074 2343     		orrs	r3, r3, r4
 255 0076 AF40     		lsls	r7, r7, r5
 256 0078 3343     		orrs	r3, r3, r6
 257 007a 21EA0701 		bic	r1, r1, r7
 258 007e AB40     		lsls	r3, r3, r5
 259              	.L13:
 358:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  (DAC_CR_TSEL1
 260              		.loc 1 358 7 view .LVU66
 261 0080 0B43     		orrs	r3, r3, r1
 262 0082 0360     		str	r3, [r0]
 263 0084 E3E7     		b	.L11
 264              	.LVL15:
 265              	.L9:
 358:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  (DAC_CR_TSEL1
 266              		.loc 1 358 7 is_stmt 1 view .LVU67
 267 0086 0368     		ldr	r3, [r0]
 268 0088 FC21     		movs	r1, #252
 269              	.LVL16:
 358:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****                  (DAC_CR_TSEL1
 270              		.loc 1 358 7 is_stmt 0 view .LVU68
 271 008a A940     		lsls	r1, r1, r5
 272 008c 23EA0101 		bic	r1, r3, r1
 273 0090 04FA05F3 		lsl	r3, r4, r5
 274 0094 F4E7     		b	.L13
 275              	.LVL17:
 276              	.L12:
 383:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 277              		.loc 1 383 12 view .LVU69
 278 0096 1846     		mov	r0, r3
 279              	.LVL18:
 383:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   }
 280              		.loc 1 383 12 view .LVU70
 281 0098 E8E7     		b	.L8
 282              		.cfi_endproc
 283              	.LFE253:
 285              		.section	.text.LL_DAC_StructInit,"ax",%progbits
 286              		.align	1
 287              		.global	LL_DAC_StructInit
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv4-sp-d16
 293              	LL_DAC_StructInit:
 294              	.LVL19:
 295              	.LFB254:
 387:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** 
 388:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** /**
 389:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @brief Set each @ref LL_DAC_InitTypeDef field to default value.
 390:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @param DAC_InitStruct pointer to a @ref LL_DAC_InitTypeDef structure
 391:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   *                       whose fields will be set to default values.
 392:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   * @retval None
 393:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   */
 394:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** void LL_DAC_StructInit(LL_DAC_InitTypeDef *DAC_InitStruct)
 395:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** {
 296              		.loc 1 395 1 is_stmt 1 view -0
 297              		.cfi_startproc
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 396:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   /* Set DAC_InitStruct fields to default values */
 397:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   DAC_InitStruct->TriggerSource            = LL_DAC_TRIG_SOFTWARE;
 301              		.loc 1 397 3 view .LVU72
 302              		.loc 1 397 44 is_stmt 0 view .LVU73
 303 0000 0023     		movs	r3, #0
 398:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   DAC_InitStruct->TriggerSource2           = LL_DAC_TRIG_SOFTWARE;
 304              		.loc 1 398 44 view .LVU74
 305 0002 C0E90033 		strd	r3, r3, [r0]
 399:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   DAC_InitStruct->WaveAutoGeneration       = LL_DAC_WAVE_AUTO_GENERATION_NONE;
 306              		.loc 1 399 3 is_stmt 1 view .LVU75
 400:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   /* Note: Parameter discarded if wave auto generation is disabled,           */
 401:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   /*       set anyway to its default value.                                   */
 402:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   DAC_InitStruct->WaveAutoGenerationConfig = LL_DAC_NOISE_LFSR_UNMASK_BIT0;
 307              		.loc 1 402 44 is_stmt 0 view .LVU76
 308 0006 C0E90233 		strd	r3, r3, [r0, #8]
 403:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   DAC_InitStruct->OutputBuffer             = LL_DAC_OUTPUT_BUFFER_ENABLE;
 309              		.loc 1 403 3 is_stmt 1 view .LVU77
 404:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   DAC_InitStruct->OutputConnection         = LL_DAC_OUTPUT_CONNECT_GPIO;
 310              		.loc 1 404 44 is_stmt 0 view .LVU78
 311 000a C0E90433 		strd	r3, r3, [r0, #16]
 405:../../..\CubeG4\src/stm32g4xx_ll_dac.c ****   DAC_InitStruct->OutputMode               = LL_DAC_OUTPUT_MODE_NORMAL;
 312              		.loc 1 405 3 is_stmt 1 view .LVU79
 313              		.loc 1 405 44 is_stmt 0 view .LVU80
 314 000e 8361     		str	r3, [r0, #24]
 406:../../..\CubeG4\src/stm32g4xx_ll_dac.c **** }
 315              		.loc 1 406 1 view .LVU81
 316 0010 7047     		bx	lr
 317              		.cfi_endproc
 318              	.LFE254:
 320              		.text
 321              	.Letext0:
 322              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 323              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 324              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 325              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 326              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 327              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
