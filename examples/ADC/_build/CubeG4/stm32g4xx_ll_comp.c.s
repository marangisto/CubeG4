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
  13              		.file	"stm32g4xx_ll_comp.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_COMP_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_COMP_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_COMP_DeInit:
  27              	.LVL0:
  28              	.LFB147:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_comp.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @file    stm32g4xx_ll_comp.c
   4:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @brief   COMP LL module driver
   6:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #include "stm32g4xx_ll_comp.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  24:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #ifdef  USE_FULL_ASSERT
  25:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #include "stm32_assert.h"
  26:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #else
  27:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define assert_param(expr) ((void)0U)
  28:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #endif
  29:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  30:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /** @addtogroup STM32G4xx_LL_Driver
  31:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @{
  32:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
  33:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  34:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /** @addtogroup COMP_LL COMP
  37:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @{
  38:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
  39:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  40:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Private types -------------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Private variables ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Private constants ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Private macros ------------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  45:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /** @addtogroup COMP_LL_Private_Macros
  46:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @{
  47:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
  48:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  49:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Check of parameters for configuration of COMP hierarchical scope:          */
  50:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* COMP instance.                                                             */
  51:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  52:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Note: On this STM32 serie, comparator input plus parameters are            */
  53:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /*       the same on all COMP instances.                                      */
  54:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /*       However, comparator instance kept as macro parameter for             */
  55:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /*       compatibility with other STM32 families.                             */
  56:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define IS_LL_COMP_INPUT_PLUS(__COMP_INSTANCE__, __INPUT_PLUS__)               \
  57:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   (   ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO1)                             \
  58:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO2)                             \
  59:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   )
  60:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #if defined(STM32G474xx) || defined(STM32G484xx) || defined(STM32G473xx) || defined(STM32G483xx)
  61:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define IS_LL_COMP_INPUT_MINUS(__COMP_INSTANCE__, __INPUT_MINUS__)           \
  62:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                   (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_1_4VREFINT)  || \
  63:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_1_2VREFINT)  || \
  64:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_3_4VREFINT)  || \
  65:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_VREFINT)     || \
  66:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_IO1)         || \
  67:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_IO2)         || \
  68:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP1)                        && \
  69:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH1)  || \
  70:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH1))     \
  71:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
  72:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP2)                        && \
  73:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH2)  || \
  74:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH2))     \
  75:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
  76:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP3)                        && \
  77:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH1)  || \
  78:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH1))     \
  79:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
  80:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP4)                        && \
  81:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH1)  || \
  82:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH2))     \
  83:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
  84:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP5)                        && \
  85:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH2)  || \
  86:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC4_CH1))     \
  87:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
  88:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP6)                        && \
  89:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC2_CH1)  || \
  90:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC4_CH2))     \
  91:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
  92:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP7)                        && \
  93:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC2_CH1)  || \
  94:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC4_CH1))     \
  95:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ))
  96:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #elif defined(STM32GBK1CB) || defined(STM32G431xx) || defined(STM32G441xx) || defined(STM32G471xx)
  97:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define IS_LL_COMP_INPUT_MINUS(__COMP_INSTANCE__, __INPUT_MINUS__)           \
  98:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                   (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_1_4VREFINT)  || \
  99:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_1_2VREFINT)  || \
 100:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_3_4VREFINT)  || \
 101:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_VREFINT)     || \
 102:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_IO1)         || \
 103:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_IO2)         || \
 104:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP1)                        && \
 105:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH1)  || \
 106:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH1))     \
 107:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
 108:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP2)                        && \
 109:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH2)  || \
 110:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH2))     \
 111:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
 112:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP3)                        && \
 113:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH1)  || \
 114:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH1))     \
 115:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    )                                                      || \
 116:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    (((__COMP_INSTANCE__) == COMP4)                        && \
 117:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     (((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH1)  || \
 118:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                     ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC3_CH2))     \
 119:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                    ))
 120:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #endif
 121:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 122:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define IS_LL_COMP_INPUT_HYSTERESIS(__INPUT_HYSTERESIS__)                      \
 123:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   (   ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_NONE)                      \
 124:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_10MV)                      \
 125:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_20MV)                      \
 126:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_30MV)                      \
 127:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_40MV)                      \
 128:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_50MV)                      \
 129:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_60MV)                      \
 130:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__INPUT_HYSTERESIS__) == LL_COMP_HYSTERESIS_70MV)                      \
 131:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   )
 132:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 133:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define IS_LL_COMP_OUTPUT_POLARITY(__POLARITY__)                               \
 134:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   (   ((__POLARITY__) == LL_COMP_OUTPUTPOL_NONINVERTED)                        \
 135:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****    || ((__POLARITY__) == LL_COMP_OUTPUTPOL_INVERTED)                           \
 136:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   )
 137:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 138:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #if defined(STM32G474xx) || defined(STM32G484xx) || defined(STM32G473xx) || defined(STM32G483xx)
 139:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define IS_LL_COMP_OUTPUT_BLANKING_SOURCE(__INSTANCE__, __OUTPUT_BLANKING_SOURCE__)  \
 140:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****      ((((__INSTANCE__) == COMP1) &&                                                  \
 141:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 142:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP1)  ||      \
 143:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC3_COMP1)  ||      \
 144:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP1)  ||      \
 145:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP1)))        \
 146:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 147:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP2) &&                                                  \
 148:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 149:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP2)  ||      \
 150:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC3_COMP2)  ||      \
 151:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP2)  ||      \
 152:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP2)))        \
 153:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 154:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP3) &&                                                  \
 155:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 156:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP3)  ||      \
 157:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC4_COMP3)  ||      \
 158:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP3)  ||      \
 159:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP3)))        \
 160:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 161:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP4) &&                                                  \
 162:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 163:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP4)  ||      \
 164:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC4_COMP4)  ||      \
 165:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP4)  ||      \
 166:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM15_OC1_COMP4)))       \
 167:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 168:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP5) &&                                                  \
 169:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 170:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP5)  ||      \
 171:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC3_COMP5)  ||      \
 172:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP5)  ||      \
 173:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP5)))        \
 174:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 175:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP6) &&                                                  \
 176:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 177:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP6)  ||      \
 178:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC4_COMP6)  ||      \
 179:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP6)  ||      \
 180:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM15_OC2_COMP6)))       \
 181:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 182:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP7) &&                                                  \
 183:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 184:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP7)  ||      \
 185:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP7)  ||      \
 186:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP7)  ||      \
 187:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM15_OC2_COMP7)))       \
 188:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       || ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM20_OC5)             \
 189:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       || ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM15_OC1)             \
 190:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       || ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM4_OC3)              \
 191:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       )
 192:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #elif defined(STM32GBK1CB) || defined(STM32G431xx) || defined(STM32G441xx) || defined(STM32G471xx)
 193:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #define IS_LL_COMP_OUTPUT_BLANKING_SOURCE(__INSTANCE__, __OUTPUT_BLANKING_SOURCE__)  \
 194:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****      ((((__INSTANCE__) == COMP1) &&                                                  \
 195:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 196:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP1)  ||      \
 197:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC3_COMP1)  ||      \
 198:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP1)  ||      \
 199:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP1)))        \
 200:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 201:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP2) &&                                                  \
 202:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 203:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP2)  ||      \
 204:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC3_COMP2)  ||      \
 205:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP2)  ||      \
 206:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP2)))        \
 207:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 208:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP3) &&                                                  \
 209:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 210:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP3)  ||      \
 211:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM2_OC4_COMP3)  ||      \
 212:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC3_COMP3)  ||      \
 213:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP3)))        \
 214:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       ||                                                                             \
 215:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__INSTANCE__) == COMP4) &&                                                  \
 216:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       (((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_NONE)            ||      \
 217:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM1_OC5_COMP4)  ||      \
 218:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM3_OC4_COMP4)  ||      \
 219:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM8_OC5_COMP4)  ||      \
 220:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****        ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM15_OC1_COMP4)))       \
 221:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       || ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM15_OC1)             \
 222:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       || ((__OUTPUT_BLANKING_SOURCE__) == LL_COMP_BLANKINGSRC_TIM4_OC3)              \
 223:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****       )
 224:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** #endif
 225:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /**
 226:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @}
 227:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
 228:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 229:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 230:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Private function prototypes -----------------------------------------------*/
 231:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 232:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /* Exported functions --------------------------------------------------------*/
 233:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /** @addtogroup COMP_LL_Exported_Functions
 234:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @{
 235:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
 236:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 237:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /** @addtogroup COMP_LL_EF_Init
 238:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @{
 239:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
 240:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 241:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /**
 242:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @brief  De-initialize registers of the selected COMP instance
 243:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *         to their default reset values.
 244:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @note   If comparator is locked, de-initialization by software is
 245:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *         not possible.
 246:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *         The only way to unlock the comparator is a device hardware reset.
 247:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @param  COMPx COMP instance
 248:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @retval An ErrorStatus enumeration value:
 249:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *          - SUCCESS: COMP registers are de-initialized
 250:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *          - ERROR: COMP registers are not de-initialized
 251:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
 252:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** ErrorStatus LL_COMP_DeInit(COMP_TypeDef *COMPx)
 253:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** {
  30              		.loc 1 253 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 254:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   ErrorStatus status = SUCCESS;
  35              		.loc 1 254 3 view .LVU1
 255:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 256:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   /* Check the parameters */
 257:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   assert_param(IS_COMP_ALL_INSTANCE(COMPx));
  36              		.loc 1 257 3 view .LVU2
 258:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 259:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   /* Note: Hardware constraint (refer to description of this function):       */
 260:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   /*       COMP instance must not be locked.                                  */
 261:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   if (LL_COMP_IsLocked(COMPx) == 0UL)
  37              		.loc 1 261 3 view .LVU3
  38              	.LBB6:
  39              	.LBI6:
  40              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_comp.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @file    stm32g4xx_ll_comp.h
   4:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief   Header file of COMP LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #ifndef STM32G4xx_LL_COMP_H
  22:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define STM32G4xx_LL_COMP_H
  23:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  36:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL COMP
  38:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Private macros ------------------------------------------------------------*/
  46:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Exported types ------------------------------------------------------------*/
  47:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #if defined(USE_FULL_LL_DRIVER)
  48:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_ES_INIT COMP Exported Init structure
  49:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
  50:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  51:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  52:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
  53:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Structure definition of some features of COMP instance.
  54:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  55:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** typedef struct
  56:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
  57:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   uint32_t InputPlus;                   /*!< Set comparator input plus (non-inverting input).
  58:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This parameter can be a value of @ref COMP_LL_EC_INPUT
  59:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  60:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This feature can be modified afterwards using unitary 
  61:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   uint32_t InputMinus;                  /*!< Set comparator input minus (inverting input).
  63:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This parameter can be a value of @ref COMP_LL_EC_INPUT
  64:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  65:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This feature can be modified afterwards using unitary 
  66:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  67:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   uint32_t InputHysteresis;             /*!< Set comparator hysteresis mode of the input minus.
  68:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This parameter can be a value of @ref COMP_LL_EC_INPUT
  69:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  70:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This feature can be modified afterwards using unitary 
  71:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  72:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   uint32_t OutputPolarity;              /*!< Set comparator output polarity.
  73:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This parameter can be a value of @ref COMP_LL_EC_OUTPU
  74:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  75:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This feature can be modified afterwards using unitary 
  76:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  77:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   uint32_t OutputBlankingSource;        /*!< Set comparator blanking source.
  78:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This parameter can be a value of @ref COMP_LL_EC_OUTPU
  79:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  80:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****                                              This feature can be modified afterwards using unitary 
  81:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** } LL_COMP_InitTypeDef;
  83:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  84:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
  85:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
  86:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  87:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #endif /* USE_FULL_LL_DRIVER */
  88:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  89:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Exported constants --------------------------------------------------------*/
  90:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_Exported_Constants COMP Exported Constants
  91:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
  92:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  93:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
  94:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EC_INPUT_PLUS Comparator inputs - Input plus (input non-inverting) selection
  95:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
  96:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
  97:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_PLUS_IO1          (0x00000000UL)                          /*!< Comparator inp
  98:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_PLUS_IO2          (COMP_CSR_INPSEL)                       /*!< Comparator inp
  99:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 100:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 101:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 102:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 103:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EC_INPUT_MINUS Comparator inputs - Input minus (input inverting) selection
 104:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 105:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 106:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_1_4VREFINT  (                                                          
 107:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_1_2VREFINT  (                                        COMP_CSR_INMSEL_0 
 108:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_3_4VREFINT  (                    COMP_CSR_INMSEL_1                     
 109:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_VREFINT     (                    COMP_CSR_INMSEL_1 | COMP_CSR_INMSEL_0 
 110:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_DAC1_CH1    (COMP_CSR_INMSEL_2                     | COMP_CSR_INMSEL_0)
 111:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_DAC1_CH2    (COMP_CSR_INMSEL_2                     | COMP_CSR_INMSEL_0)
 112:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_DAC2_CH1    (COMP_CSR_INMSEL_2                     | COMP_CSR_INMSEL_0)
 113:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_DAC3_CH1    (COMP_CSR_INMSEL_2                                        )
 114:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_DAC3_CH2    (COMP_CSR_INMSEL_2                                        )
 115:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_DAC4_CH1    (COMP_CSR_INMSEL_2                                        )
 116:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_DAC4_CH2    (COMP_CSR_INMSEL_2                                        )
 117:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_IO1         (COMP_CSR_INMSEL_2 | COMP_CSR_INMSEL_1                    )
 118:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_INPUT_MINUS_IO2         (COMP_CSR_INMSEL_2 | COMP_CSR_INMSEL_1 | COMP_CSR_INMSEL_0)
 119:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 121:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 122:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 123:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 124:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EC_INPUT_HYSTERESIS Comparator input - Hysteresis
 125:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 126:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 127:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_NONE         (0x00000000UL)                                       /*!< N
 128:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_10MV         (                                    COMP_CSR_HYST_0) /*!< 
 129:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_20MV         (                  COMP_CSR_HYST_1                  ) /*!< 
 130:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_30MV         (                  COMP_CSR_HYST_1 | COMP_CSR_HYST_0) /*!< 
 131:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_40MV         (COMP_CSR_HYST_2                                    ) /*!< 
 132:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_50MV         (COMP_CSR_HYST_2                   | COMP_CSR_HYST_0) /*!< 
 133:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_60MV         (COMP_CSR_HYST_2 | COMP_CSR_HYST_1                  ) /*!< 
 134:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_70MV         (COMP_CSR_HYST_2 | COMP_CSR_HYST_1 | COMP_CSR_HYST_0) /*!< 
 135:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_LOW          LL_COMP_HYSTERESIS_10MV /*!< Hysteresis level low */
 136:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_MEDIUM       LL_COMP_HYSTERESIS_40MV /*!< Hysteresis level medium */
 137:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_HYSTERESIS_HIGH         LL_COMP_HYSTERESIS_70MV /*!< Hysteresis level high */
 138:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 139:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 140:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 141:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 142:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EC_OUTPUT_POLARITY Comparator output - Output polarity
 143:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 144:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 145:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_OUTPUTPOL_NONINVERTED   (0x00000000UL)          /*!< COMP output polarity is not in
 146:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_OUTPUTPOL_INVERTED      (COMP_CSR_POLARITY)     /*!< COMP output polarity is invert
 147:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 148:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 149:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 150:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 151:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EC_OUTPUT_BLANKING_SOURCE Comparator output - Blanking source
 152:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 153:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 154:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_NONE            (0x00000000UL)          /*!<Comparator output without b
 155:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM1_OC5_COMP1  (                                            COMP_CSR_B
 156:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM1_OC5_COMP2  (                                            COMP_CSR_B
 157:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM1_OC5_COMP3  (                                            COMP_CSR_B
 158:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM1_OC5_COMP4  (COMP_CSR_BLANKING_2                                   
 159:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM1_OC5_COMP5  (COMP_CSR_BLANKING_2                                   
 160:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM1_OC5_COMP6  (COMP_CSR_BLANKING_2                                   
 161:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM1_OC5_COMP7  (                                            COMP_CSR_B
 162:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM2_OC3_COMP1  (                      COMP_CSR_BLANKING_1             
 163:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM2_OC3_COMP2  (                      COMP_CSR_BLANKING_1             
 164:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM2_OC3_COMP5  (                                            COMP_CSR_B
 165:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM2_OC4_COMP3  (                      COMP_CSR_BLANKING_1 | COMP_CSR_B
 166:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM2_OC4_COMP6  (                      COMP_CSR_BLANKING_1             
 167:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM3_OC3_COMP1  (                      COMP_CSR_BLANKING_1 | COMP_CSR_B
 168:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM3_OC3_COMP2  (                      COMP_CSR_BLANKING_1 | COMP_CSR_B
 169:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM3_OC3_COMP3  (                      COMP_CSR_BLANKING_1             
 170:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM3_OC3_COMP5  (                      COMP_CSR_BLANKING_1 | COMP_CSR_B
 171:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM3_OC3_COMP7  (                      COMP_CSR_BLANKING_1 | COMP_CSR_B
 172:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM3_OC4_COMP4  (                                            COMP_CSR_B
 173:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM8_OC5_COMP1  (COMP_CSR_BLANKING_2                                   
 174:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM8_OC5_COMP2  (COMP_CSR_BLANKING_2                                   
 175:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM8_OC5_COMP3  (COMP_CSR_BLANKING_2                                   
 176:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM8_OC5_COMP4  (                      COMP_CSR_BLANKING_1             
 177:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM8_OC5_COMP5  (                      COMP_CSR_BLANKING_1             
 178:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM8_OC5_COMP6  (                                            COMP_CSR_B
 179:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM8_OC5_COMP7  (                      COMP_CSR_BLANKING_1             
 180:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM15_OC1_COMP4 (                      COMP_CSR_BLANKING_1 | COMP_CSR_B
 181:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM15_OC2_COMP6 (                      COMP_CSR_BLANKING_1 | COMP_CSR_B
 182:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM15_OC2_COMP7 (COMP_CSR_BLANKING_2                                   
 183:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM20_OC5       (COMP_CSR_BLANKING_2 |                       COMP_CSR_B
 184:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM15_OC1       (COMP_CSR_BLANKING_2 | COMP_CSR_BLANKING_1             
 185:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_BLANKINGSRC_TIM4_OC3        (COMP_CSR_BLANKING_2 | COMP_CSR_BLANKING_1 | COMP_CSR_B
 186:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 187:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 188:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 189:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 190:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 191:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EC_OUTPUT_LEVEL Comparator output - Output level
 192:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 193:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 194:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_OUTPUT_LEVEL_LOW        (0x00000000UL)          /*!< Comparator output level low (i
 195:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_OUTPUT_LEVEL_HIGH       (0x00000001UL)          /*!< Comparator output level high (
 196:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 197:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 198:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 199:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 200:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EC_HW_DELAYS  Definitions of COMP hardware constraints delays
 201:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   Only COMP peripheral HW delays are defined in COMP LL driver driver,
 202:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         not timeout values.
 203:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         For details on delays values, refer to descriptions in source code
 204:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         above each literal definition.
 205:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 206:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 207:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 208:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Delay for comparator startup time.                                         */
 209:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Note: Delay required to reach propagation delay specification.             */
 210:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Literal set to maximum value (refer to device datasheet,                   */
 211:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* parameter "tSTART").                                                       */
 212:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Unit: us                                                                   */
 213:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_DELAY_STARTUP_US          (  5UL) /*!< Delay for COMP startup time */
 214:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 215:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Delay for comparator voltage scaler stabilization time.                    */
 216:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Note: Voltage scaler is used when selecting comparator input               */
 217:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /*       based on VrefInt: VrefInt or subdivision of VrefInt.                 */
 218:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Literal set to maximum value (refer to device datasheet,                   */
 219:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* parameter "tSTART_SCALER").                                                */
 220:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Unit: us                                                                   */
 221:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_DELAY_VOLTAGE_SCALER_STAB_US ( 200UL) /*!< Delay for COMP voltage scaler stabilizat
 222:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 223:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 224:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 225:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 226:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 227:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 228:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 229:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 230:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 231:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Exported macro ------------------------------------------------------------*/
 232:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_Exported_Macros COMP Exported Macros
 233:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 234:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 235:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EM_WRITE_READ Common write and read registers macro
 236:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 237:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 238:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 239:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 240:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Write a value in COMP register
 241:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  __INSTANCE__ comparator instance
 242:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  __REG__ Register to be written
 243:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  __VALUE__ Value to be written in the register
 244:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 245:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 246:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG((__INSTANCE__)->__REG__, (__VA
 247:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 248:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 249:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Read a value in COMP register
 250:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  __INSTANCE__ comparator instance
 251:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  __REG__ Register to be read
 252:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval Register value
 253:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 254:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** #define LL_COMP_ReadReg(__INSTANCE__, __REG__) READ_REG((__INSTANCE__)->__REG__)
 255:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 256:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 257:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 258:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 259:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EM_HELPER_MACRO COMP helper macro
 260:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 261:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 262:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 263:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 264:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 265:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 266:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 267:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 268:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 269:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 270:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 271:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /* Exported functions --------------------------------------------------------*/
 272:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_Exported_Functions COMP Exported Functions
 273:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 274:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 275:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 276:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EF_Configuration_comparator_inputs Configuration of comparator inputs
 277:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 278:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 279:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 280:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 281:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Set comparator inputs minus (inverting) and plus (non-inverting).
 282:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   In case of comparator input selected to be connected to IO:
 283:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         GPIO pins are specific to each comparator instance.
 284:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to description of parameters or to reference manual.
 285:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   On this STM32 serie, scaler bridge is configurable:
 286:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         to optimize power consumption, this function enables the
 287:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         voltage scaler bridge only when required
 288:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         (when selecting comparator input based on VrefInt: VrefInt or
 289:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         subdivision of VrefInt).
 290:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         - For scaler bridge power consumption values,
 291:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           refer to device datasheet, parameter "IDDA(SCALER)".
 292:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         - Voltage scaler requires a delay for voltage stabilization.
 293:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           Refer to device datasheet, parameter "tSTART_SCALER".
 294:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         - Scaler bridge is common for all comparator instances,
 295:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           therefore if at least one of the comparator instance
 296:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           is requiring the scaler bridge, it remains enabled.
 297:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      INMSEL         LL_COMP_ConfigInputs\n
 298:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         CSR      INPSEL         LL_COMP_ConfigInputs\n
 299:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         CSR      BRGEN          LL_COMP_ConfigInputs\n
 300:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         CSR      SCALEN         LL_COMP_ConfigInputs
 301:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 302:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  InputMinus This parameter can be one of the following values:
 303:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_1_4VREFINT
 304:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_1_2VREFINT
 305:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_3_4VREFINT
 306:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_VREFINT
 307:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC1_CH1   (1,3,4)
 308:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC1_CH2   (2,5)
 309:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC2_CH1   (6,7)
 310:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC3_CH1   (1,3)
 311:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC3_CH2   (2,4)
 312:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC4_CH1   (5,7)
 313:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC4_CH2   (6)
 314:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         (a,b...) Only available for COMPa, COMPb...
 315:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *                  For COMPx & DACx instances availability, please refer to datasheet
 316:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_IO1
 317:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_IO2
 318:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  InputPlus This parameter can be one of the following values:
 319:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_PLUS_IO1
 320:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_PLUS_IO2
 321:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 322:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 323:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_ConfigInputs(COMP_TypeDef *COMPx, uint32_t InputMinus, uint32_t InputP
 324:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 325:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   MODIFY_REG(COMPx->CSR,
 326:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****              COMP_CSR_INMSEL | COMP_CSR_INPSEL | COMP_CSR_SCALEN | COMP_CSR_BRGEN,
 327:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****              InputMinus | InputPlus);
 328:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 329:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 330:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 331:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Set comparator input plus (non-inverting).
 332:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   In case of comparator input selected to be connected to IO:
 333:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         GPIO pins are specific to each comparator instance.
 334:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to description of parameters or to reference manual.
 335:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      INPSEL         LL_COMP_SetInputPlus
 336:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 337:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  InputPlus This parameter can be one of the following values:
 338:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_PLUS_IO1
 339:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_PLUS_IO2
 340:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 341:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 342:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_SetInputPlus(COMP_TypeDef *COMPx, uint32_t InputPlus)
 343:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 344:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   MODIFY_REG(COMPx->CSR, COMP_CSR_INPSEL, InputPlus);
 345:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 346:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 347:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 348:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Get comparator input plus (non-inverting).
 349:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   In case of comparator input selected to be connected to IO:
 350:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         GPIO pins are specific to each comparator instance.
 351:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to description of parameters or to reference manual.
 352:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      INPSEL         LL_COMP_GetInputPlus
 353:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 354:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval Returned value can be one of the following values:
 355:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_PLUS_IO1
 356:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_PLUS_IO2
 357:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 358:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE uint32_t LL_COMP_GetInputPlus(COMP_TypeDef *COMPx)
 359:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 360:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   return (uint32_t)(READ_BIT(COMPx->CSR, COMP_CSR_INPSEL));
 361:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 362:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 363:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 364:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Set comparator input minus (inverting).
 365:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   In case of comparator input selected to be connected to IO:
 366:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         GPIO pins are specific to each comparator instance.
 367:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to description of parameters or to reference manual.
 368:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   On this STM32 serie, scaler bridge is configurable:
 369:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         to optimize power consumption, this function enables the
 370:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         voltage scaler bridge only when required
 371:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         (when selecting comparator input based on VrefInt: VrefInt or
 372:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         subdivision of VrefInt).
 373:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         - For scaler bridge power consumption values,
 374:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           refer to device datasheet, parameter "IDDA(SCALER)".
 375:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         - Voltage scaler requires a delay for voltage stabilization.
 376:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           Refer to device datasheet, parameter "tSTART_SCALER".
 377:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         - Scaler bridge is common for all comparator instances,
 378:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           therefore if at least one of the comparator instance
 379:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *           is requiring the scaler bridge, it remains enabled.
 380:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      INMSEL         LL_COMP_SetInputMinus\n
 381:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         CSR      BRGEN          LL_COMP_SetInputMinus\n
 382:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         CSR      SCALEN         LL_COMP_SetInputMinus
 383:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 384:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  InputMinus This parameter can be one of the following values:
 385:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_1_4VREFINT
 386:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_1_2VREFINT
 387:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_3_4VREFINT
 388:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_VREFINT
 389:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC1_CH1   (1,3,4)
 390:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC1_CH2   (2,5)
 391:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC2_CH1   (6,7)
 392:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC3_CH1   (1,3)
 393:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC3_CH2   (2,4)
 394:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC4_CH1   (5,7)
 395:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC4_CH2   (6)
 396:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         (a,b...) Only available for COMPa, COMPb...
 397:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *                  For COMPx & DACx instances availability, please refer to datasheet
 398:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_IO1
 399:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_IO2
 400:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 401:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 402:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_SetInputMinus(COMP_TypeDef *COMPx, uint32_t InputMinus)
 403:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 404:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   MODIFY_REG(COMPx->CSR, COMP_CSR_INMSEL | COMP_CSR_SCALEN | COMP_CSR_BRGEN, InputMinus);
 405:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 406:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 407:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 408:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Get comparator input minus (inverting).
 409:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   In case of comparator input selected to be connected to IO:
 410:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         GPIO pins are specific to each comparator instance.
 411:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to description of parameters or to reference manual.
 412:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      INMSEL         LL_COMP_GetInputMinus\n
 413:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         CSR      BRGEN          LL_COMP_GetInputMinus\n
 414:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         CSR      SCALEN         LL_COMP_GetInputMinus
 415:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 416:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval Returned value can be one of the following values:
 417:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_1_4VREFINT
 418:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_1_2VREFINT
 419:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_3_4VREFINT
 420:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_VREFINT
 421:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC1_CH1   (1,3,4)
 422:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC1_CH2   (2,5)
 423:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC2_CH1   (6,7)
 424:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC3_CH1   (1,3)
 425:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC3_CH2   (2,4)
 426:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC4_CH1   (5,7)
 427:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_DAC4_CH2   (6)
 428:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         (a,b...) Only available for COMPa, COMPb...
 429:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *                  For COMPx & DACx instances availability, please refer to datasheet
 430:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_IO1
 431:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_INPUT_MINUS_IO2
 432:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 433:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE uint32_t LL_COMP_GetInputMinus(COMP_TypeDef *COMPx)
 434:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 435:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   return (uint32_t)(READ_BIT(COMPx->CSR, COMP_CSR_INMSEL | COMP_CSR_SCALEN | COMP_CSR_BRGEN));
 436:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 437:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 438:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 439:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Set comparator instance hysteresis mode of the input minus (inverting input).
 440:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      HYST           LL_COMP_SetInputHysteresis
 441:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 442:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  InputHysteresis This parameter can be one of the following values:
 443:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_NONE
 444:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_10MV
 445:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_20MV
 446:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_30MV
 447:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_40MV
 448:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_50MV
 449:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_60MV
 450:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_70MV
 451:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_LOW
 452:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_MEDIUM
 453:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_HIGH
 454:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 455:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 456:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_SetInputHysteresis(COMP_TypeDef *COMPx, uint32_t InputHysteresis)
 457:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 458:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   MODIFY_REG(COMPx->CSR, COMP_CSR_HYST, InputHysteresis);
 459:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 460:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 461:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 462:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Get comparator instance hysteresis mode of the minus (inverting) input.
 463:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      HYST           LL_COMP_GetInputHysteresis
 464:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 465:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval Returned value can be one of the following values:
 466:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_NONE
 467:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_10MV
 468:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_20MV
 469:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_30MV
 470:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_40MV
 471:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_50MV
 472:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_60MV
 473:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_HYSTERESIS_70MV
 474:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 475:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE uint32_t LL_COMP_GetInputHysteresis(COMP_TypeDef *COMPx)
 476:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 477:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   return (uint32_t)(READ_BIT(COMPx->CSR, COMP_CSR_HYST));
 478:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 479:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 480:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 481:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 482:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 483:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 484:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EF_Configuration_comparator_output Configuration of comparator output
 485:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 486:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 487:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 488:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 489:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Set comparator instance output polarity.
 490:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      POLARITY       LL_COMP_SetOutputPolarity
 491:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 492:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  OutputPolarity This parameter can be one of the following values:
 493:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_OUTPUTPOL_NONINVERTED
 494:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_OUTPUTPOL_INVERTED
 495:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 496:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 497:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_SetOutputPolarity(COMP_TypeDef *COMPx, uint32_t OutputPolarity)
 498:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 499:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   MODIFY_REG(COMPx->CSR, COMP_CSR_POLARITY, OutputPolarity);
 500:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 501:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 502:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 503:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Get comparator instance output polarity.
 504:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      POLARITY       LL_COMP_GetOutputPolarity
 505:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 506:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval Returned value can be one of the following values:
 507:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_OUTPUTPOL_NONINVERTED
 508:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_OUTPUTPOL_INVERTED
 509:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 510:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE uint32_t LL_COMP_GetOutputPolarity(COMP_TypeDef *COMPx)
 511:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 512:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   return (uint32_t)(READ_BIT(COMPx->CSR, COMP_CSR_POLARITY));
 513:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 514:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 515:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 516:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Set comparator instance blanking source.
 517:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   Blanking source may be specific to each comparator instance.
 518:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to description of parameters or to reference manual.
 519:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   Availability of parameters of blanking source from timer
 520:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         depends on timers availability on the selected device.
 521:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      BLANKING       LL_COMP_SetOutputBlankingSource
 522:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 523:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  BlankingSource This parameter can be one of the following values:
 524:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_NONE
 525:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP1
 526:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP2
 527:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP3
 528:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP4
 529:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP5
 530:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP6
 531:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP7
 532:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC3_COMP1
 533:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC3_COMP2
 534:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC3_COMP5
 535:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC4_COMP3
 536:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC4_COMP6
 537:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP1
 538:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP2
 539:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP3
 540:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP5
 541:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP7
 542:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC4_COMP4
 543:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP1
 544:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP2
 545:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP3
 546:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP4
 547:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP5
 548:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP6
 549:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP7
 550:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC1_COMP4
 551:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC2_COMP6
 552:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC2_COMP7
 553:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM20_OC5
 554:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC1
 555:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM4_OC3
 556:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *
 557:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         On STM32G4 series, blanking sources are linked to COMP instance (except
 558:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         those without COMPx suffix that are common to all instances)
 559:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Note: For COMPx & TIMx instances availability, please refer to datasheet
 560:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 561:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 562:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_SetOutputBlankingSource(COMP_TypeDef *COMPx, uint32_t BlankingSource)
 563:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 564:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   MODIFY_REG(COMPx->CSR, COMP_CSR_BLANKING, BlankingSource);
 565:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 566:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 567:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 568:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Get comparator instance blanking source.
 569:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   Availability of parameters of blanking source from timer
 570:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         depends on timers availability on the selected device.
 571:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   Blanking source may be specific to each comparator instance.
 572:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to description of parameters or to reference manual.
 573:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      BLANKING       LL_COMP_GetOutputBlankingSource
 574:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 575:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval Returned value can be one of the following values:
 576:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_NONE
 577:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP1
 578:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP2
 579:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP3
 580:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP4
 581:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP5
 582:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP6
 583:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM1_OC5_COMP7
 584:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC3_COMP1
 585:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC3_COMP2
 586:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC3_COMP5
 587:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC4_COMP3
 588:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM2_OC4_COMP6
 589:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP1
 590:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP2
 591:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP3
 592:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP5
 593:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC3_COMP7
 594:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM3_OC4_COMP4
 595:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP1
 596:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP2
 597:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP3
 598:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP4
 599:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP5
 600:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP6
 601:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM8_OC5_COMP7
 602:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC1_COMP4
 603:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC2_COMP6
 604:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC2_COMP7
 605:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM20_OC5
 606:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM15_OC1
 607:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         @arg @ref LL_COMP_BLANKINGSRC_TIM4_OC3
 608:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *
 609:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         On STM32G4 series, blanking sources are linked to COMP instance (except
 610:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         those without COMPx suffix that are common to all instances)
 611:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Note: For COMPx & TIMx instances availability, please refer to datasheet
 612:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 613:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE uint32_t LL_COMP_GetOutputBlankingSource(COMP_TypeDef *COMPx)
 614:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 615:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   return (uint32_t)(READ_BIT(COMPx->CSR, COMP_CSR_BLANKING));
 616:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 617:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 618:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 619:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @}
 620:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 621:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 622:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /** @defgroup COMP_LL_EF_Operation Operation on comparator instance
 623:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @{
 624:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 625:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 626:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 627:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Enable comparator instance.
 628:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   After enable from off state, comparator requires a delay
 629:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         to reach reach propagation delay specification.
 630:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         Refer to device datasheet, parameter "tSTART".
 631:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      EN             LL_COMP_Enable
 632:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 633:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 634:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 635:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_Enable(COMP_TypeDef *COMPx)
 636:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 637:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   SET_BIT(COMPx->CSR, COMP_CSR_EN);
 638:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 639:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 640:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 641:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Disable comparator instance.
 642:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      EN             LL_COMP_Disable
 643:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 644:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 645:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 646:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_Disable(COMP_TypeDef *COMPx)
 647:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 648:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   CLEAR_BIT(COMPx->CSR, COMP_CSR_EN);
 649:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 650:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 651:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 652:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Get comparator enable state
 653:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         (0: COMP is disabled, 1: COMP is enabled)
 654:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      EN             LL_COMP_IsEnabled
 655:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 656:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval State of bit (1 or 0).
 657:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 658:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE uint32_t LL_COMP_IsEnabled(COMP_TypeDef *COMPx)
 659:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 660:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   return ((READ_BIT(COMPx->CSR, COMP_CSR_EN) == (COMP_CSR_EN)) ? 1UL : 0UL);
 661:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 662:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 663:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 664:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Lock comparator instance.
 665:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   Once locked, comparator configuration can be accessed in read-only.
 666:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   The only way to unlock the comparator is a device hardware reset.
 667:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      LOCK           LL_COMP_Lock
 668:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 669:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval None
 670:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 671:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE void LL_COMP_Lock(COMP_TypeDef *COMPx)
 672:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 673:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   SET_BIT(COMPx->CSR, COMP_CSR_LOCK);
 674:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** }
 675:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** 
 676:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** /**
 677:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @brief  Get comparator lock state
 678:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   *         (0: COMP is unlocked, 1: COMP is locked).
 679:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   Once locked, comparator configuration can be accessed in read-only.
 680:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @note   The only way to unlock the comparator is a device hardware reset.
 681:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @rmtoll CSR      LOCK           LL_COMP_IsLocked
 682:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @param  COMPx Comparator instance
 683:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   * @retval State of bit (1 or 0).
 684:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   */
 685:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** __STATIC_INLINE uint32_t LL_COMP_IsLocked(COMP_TypeDef *COMPx)
  41              		.loc 2 685 26 view .LVU4
  42              	.LBB7:
 686:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
 687:../../..\CubeG4\include/stm32g4xx_ll_comp.h ****   return ((READ_BIT(COMPx->CSR, COMP_CSR_LOCK) == (COMP_CSR_LOCK)) ? 1UL : 0UL);
  43              		.loc 2 687 3 view .LVU5
  44              		.loc 2 687 12 is_stmt 0 view .LVU6
  45 0000 0368     		ldr	r3, [r0]
  46              		.loc 2 687 74 view .LVU7
  47 0002 002B     		cmp	r3, #0
  48              	.LVL1:
  49              		.loc 2 687 74 view .LVU8
  50              	.LBE7:
  51              	.LBE6:
 262:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   {
 263:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     LL_COMP_WriteReg(COMPx, CSR, 0x00000000UL);
  52              		.loc 1 263 5 is_stmt 1 view .LVU9
  53 0004 A3BF     		ittte	ge
  54 0006 0023     		movge	r3, #0
  55 0008 0360     		strge	r3, [r0]
 254:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
  56              		.loc 1 254 15 is_stmt 0 view .LVU10
  57 000a 1846     		movge	r0, r3
  58              	.LVL2:
 264:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 265:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   }
 266:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   else
 267:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   {
 268:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /* Comparator instance is locked: de-initialization by software is         */
 269:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /* not possible.                                                           */
 270:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /* The only way to unlock the comparator is a device hardware reset.       */
 271:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     status = ERROR;
  59              		.loc 1 271 12 view .LVU11
  60 000c 0120     		movlt	r0, #1
  61              	.LVL3:
 272:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   }
 273:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 274:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   return status;
  62              		.loc 1 274 3 is_stmt 1 view .LVU12
 275:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** }
  63              		.loc 1 275 1 is_stmt 0 view .LVU13
  64 000e 7047     		bx	lr
  65              		.cfi_endproc
  66              	.LFE147:
  68              		.section	.text.LL_COMP_Init,"ax",%progbits
  69              		.align	1
  70              		.global	LL_COMP_Init
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  76              	LL_COMP_Init:
  77              	.LVL4:
  78              	.LFB148:
 276:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 277:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /**
 278:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @brief  Initialize some features of COMP instance.
 279:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @note   This function configures features of the selected COMP instance.
 280:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *         Some features are also available at scope COMP common instance
 281:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *         (common to several COMP instances).
 282:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *         Refer to functions having argument "COMPxy_COMMON" as parameter.
 283:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @param  COMPx COMP instance
 284:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @param  COMP_InitStruct Pointer to a @ref LL_COMP_InitTypeDef structure
 285:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @retval An ErrorStatus enumeration value:
 286:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *          - SUCCESS: COMP registers are initialized
 287:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *          - ERROR: COMP registers are not initialized
 288:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
 289:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** ErrorStatus LL_COMP_Init(COMP_TypeDef *COMPx, LL_COMP_InitTypeDef *COMP_InitStruct)
 290:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** {
  79              		.loc 1 290 1 is_stmt 1 view -0
  80              		.cfi_startproc
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
 291:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   ErrorStatus status = SUCCESS;
  83              		.loc 1 291 3 view .LVU15
 292:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 293:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   /* Check the parameters */
 294:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   assert_param(IS_COMP_ALL_INSTANCE(COMPx));
  84              		.loc 1 294 3 view .LVU16
 295:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   assert_param(IS_LL_COMP_INPUT_PLUS(COMPx, COMP_InitStruct->InputPlus));
  85              		.loc 1 295 3 view .LVU17
 296:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   assert_param(IS_LL_COMP_INPUT_MINUS(COMPx, COMP_InitStruct->InputMinus));
  86              		.loc 1 296 3 view .LVU18
 297:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   assert_param(IS_LL_COMP_INPUT_HYSTERESIS(COMP_InitStruct->InputHysteresis));
  87              		.loc 1 297 3 view .LVU19
 298:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   assert_param(IS_LL_COMP_OUTPUT_POLARITY(COMP_InitStruct->OutputPolarity));
  88              		.loc 1 298 3 view .LVU20
 299:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   assert_param(IS_LL_COMP_OUTPUT_BLANKING_SOURCE(COMPx, COMP_InitStruct->OutputBlankingSource));
  89              		.loc 1 299 3 view .LVU21
 300:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 301:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   /* Note: Hardware constraint (refer to description of this function)        */
 302:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   /*       COMP instance must not be locked.                                  */
 303:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   if (LL_COMP_IsLocked(COMPx) == 0UL)
  90              		.loc 1 303 3 view .LVU22
  91              	.LBB8:
  92              	.LBI8:
 685:../../..\CubeG4\include/stm32g4xx_ll_comp.h **** {
  93              		.loc 2 685 26 view .LVU23
  94              	.LBB9:
  95              		.loc 2 687 3 view .LVU24
  96              		.loc 2 687 12 is_stmt 0 view .LVU25
  97 0000 0368     		ldr	r3, [r0]
  98              		.loc 2 687 74 view .LVU26
  99 0002 002B     		cmp	r3, #0
 100              	.LBE9:
 101              	.LBE8:
 290:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   ErrorStatus status = SUCCESS;
 102              		.loc 1 290 1 view .LVU27
 103 0004 10B5     		push	{r4, lr}
 104              		.cfi_def_cfa_offset 8
 105              		.cfi_offset 4, -8
 106              		.cfi_offset 14, -4
 107              	.LBB11:
 108              	.LBB10:
 109              		.loc 2 687 74 view .LVU28
 110 0006 0FDB     		blt	.L6
 111              	.LVL5:
 112              		.loc 2 687 74 view .LVU29
 113              	.LBE10:
 114              	.LBE11:
 304:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   {
 305:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /* Configuration of comparator instance :                                 */
 306:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /*  - InputPlus                                                           */
 307:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /*  - InputMinus                                                          */
 308:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /*  - InputHysteresis                                                     */
 309:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /*  - OutputPolarity                                                      */
 310:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /*  - OutputBlankingSource                                                */
 311:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     MODIFY_REG(COMPx->CSR,
 115              		.loc 1 311 5 is_stmt 1 view .LVU30
 116 0008 D1E90032 		ldrd	r3, r2, [r1]
 117 000c 1343     		orrs	r3, r3, r2
 118 000e 8A68     		ldr	r2, [r1, #8]
 119 0010 0468     		ldr	r4, [r0]
 120 0012 1343     		orrs	r3, r3, r2
 121 0014 CA68     		ldr	r2, [r1, #12]
 122 0016 1343     		orrs	r3, r3, r2
 123 0018 0A69     		ldr	r2, [r1, #16]
 124 001a 1343     		orrs	r3, r3, r2
 125 001c 034A     		ldr	r2, .L7
 126 001e 2240     		ands	r2, r2, r4
 127 0020 1343     		orrs	r3, r3, r2
 128 0022 0360     		str	r3, [r0]
 291:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 129              		.loc 1 291 15 is_stmt 0 view .LVU31
 130 0024 0020     		movs	r0, #0
 131              	.LVL6:
 132              	.L5:
 312:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                COMP_CSR_INPSEL
 313:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_CSR_SCALEN
 314:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_CSR_BRGEN
 315:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_CSR_INMSEL
 316:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_CSR_HYST
 317:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_CSR_POLARITY
 318:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_CSR_BLANKING
 319:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                ,
 320:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                COMP_InitStruct->InputPlus
 321:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_InitStruct->InputMinus
 322:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_InitStruct->InputHysteresis
 323:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_InitStruct->OutputPolarity
 324:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****                | COMP_InitStruct->OutputBlankingSource
 325:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****               );
 326:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 327:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   }
 328:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   else
 329:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   {
 330:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     /* Initialization error: COMP instance is locked.                         */
 331:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****     status = ERROR;
 332:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   }
 333:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 334:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   return status;
 133              		.loc 1 334 3 is_stmt 1 view .LVU32
 335:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** }
 134              		.loc 1 335 1 is_stmt 0 view .LVU33
 135 0026 10BD     		pop	{r4, pc}
 136              	.LVL7:
 137              	.L6:
 331:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   }
 138              		.loc 1 331 12 view .LVU34
 139 0028 0120     		movs	r0, #1
 140              	.LVL8:
 331:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   }
 141              		.loc 1 331 12 view .LVU35
 142 002a FCE7     		b	.L5
 143              	.L8:
 144              		.align	2
 145              	.L7:
 146 002c 0F7E00FF 		.word	-16744945
 147              		.cfi_endproc
 148              	.LFE148:
 150              		.section	.text.LL_COMP_StructInit,"ax",%progbits
 151              		.align	1
 152              		.global	LL_COMP_StructInit
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv4-sp-d16
 158              	LL_COMP_StructInit:
 159              	.LVL9:
 160              	.LFB149:
 336:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** 
 337:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** /**
 338:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @brief Set each @ref LL_COMP_InitTypeDef field to default value.
 339:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @param COMP_InitStruct Pointer to a @ref LL_COMP_InitTypeDef structure
 340:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   *                        whose fields will be set to default values.
 341:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   * @retval None
 342:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   */
 343:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** void LL_COMP_StructInit(LL_COMP_InitTypeDef *COMP_InitStruct)
 344:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** {
 161              		.loc 1 344 1 is_stmt 1 view -0
 162              		.cfi_startproc
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 345:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   /* Set COMP_InitStruct fields to default values */
 346:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   COMP_InitStruct->InputPlus            = LL_COMP_INPUT_PLUS_IO1;
 166              		.loc 1 346 3 view .LVU37
 347:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   COMP_InitStruct->InputMinus           = LL_COMP_INPUT_MINUS_VREFINT;
 167              		.loc 1 347 41 is_stmt 0 view .LVU38
 168 0000 034A     		ldr	r2, .L10
 169 0002 0023     		movs	r3, #0
 170 0004 C0E90032 		strd	r3, r2, [r0]
 348:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   COMP_InitStruct->InputHysteresis      = LL_COMP_HYSTERESIS_NONE;
 171              		.loc 1 348 3 is_stmt 1 view .LVU39
 349:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   COMP_InitStruct->OutputPolarity       = LL_COMP_OUTPUTPOL_NONINVERTED;
 172              		.loc 1 349 41 is_stmt 0 view .LVU40
 173 0008 C0E90233 		strd	r3, r3, [r0, #8]
 350:../../..\CubeG4\src/stm32g4xx_ll_comp.c ****   COMP_InitStruct->OutputBlankingSource = LL_COMP_BLANKINGSRC_NONE;
 174              		.loc 1 350 3 is_stmt 1 view .LVU41
 175              		.loc 1 350 41 is_stmt 0 view .LVU42
 176 000c 0361     		str	r3, [r0, #16]
 351:../../..\CubeG4\src/stm32g4xx_ll_comp.c **** }
 177              		.loc 1 351 1 view .LVU43
 178 000e 7047     		bx	lr
 179              	.L11:
 180              		.align	2
 181              	.L10:
 182 0010 30008000 		.word	8388656
 183              		.cfi_endproc
 184              	.LFE149:
 186              		.text
 187              	.Letext0:
 188              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 189              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 190              		.file 5 "../../..\\CubeG4\\include/core_cm4.h"
 191              		.file 6 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 192              		.file 7 "../../..\\CubeG4\\include/stm32g431xx.h"
 193              		.file 8 "../../..\\CubeG4\\include/stm32g4xx.h"
