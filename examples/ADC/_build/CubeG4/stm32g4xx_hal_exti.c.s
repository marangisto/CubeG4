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
  13              		.file	"stm32g4xx_hal_exti.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_EXTI_SetConfigLine,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_EXTI_SetConfigLine
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_EXTI_SetConfigLine:
  27              	.LVL0:
  28              	.LFB325:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_exti.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @file    stm32g4xx_hal_exti.c
   4:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief   EXTI HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *          functionalities of the Extended Interrupts and events controller (EXTI) peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *          functionalities of the General Purpose Input/Output (EXTI) peripheral:
   9:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *           + Initialization and de-initialization functions
  10:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *           + IO operation functions
  11:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   @verbatim
  13:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   ==============================================================================
  14:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****                     ##### EXTI Peripheral features #####
  15:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   ==============================================================================
  16:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   [..]
  17:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (+) Each Exti line can be configured within this driver.
  18:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  19:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (+) Exti line can be configured in 3 different modes
  20:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Interrupt
  21:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Event
  22:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Both of them
  23:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  24:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (+) Configurable Exti lines can be configured with 3 different triggers
  25:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Rising
  26:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Falling
  27:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Both of them
  28:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  29:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (+) When set in interrupt mode, configurable Exti lines have two different
  30:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         interrupt pending registers which allow to distinguish which transition
  31:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         occurs:
  32:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Rising edge pending interrupt
  33:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Falling
  34:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  35:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (+) Exti lines 0 to 15 are linked to gpio pin number 0 to 15. Gpio port can
  36:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         be selected through multiplexer.
  37:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  38:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****                      ##### How to use this driver #####
  39:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   ==============================================================================
  40:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   [..]
  41:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  42:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (#) Configure the EXTI line using HAL_EXTI_SetConfigLine().
  43:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Choose the interrupt line number by setting "Line" member from
  44:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****              EXTI_ConfigTypeDef structure.
  45:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Configure the interrupt and/or event mode using "Mode" member from
  46:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****              EXTI_ConfigTypeDef structure.
  47:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) For configurable lines, configure rising and/or falling trigger
  48:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****              "Trigger" member from EXTI_ConfigTypeDef structure.
  49:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) For Exti lines linked to gpio, choose gpio port using "GPIOSel"
  50:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****              member from GPIO_InitTypeDef structure.
  51:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  52:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (#) Get current Exti configuration of a dedicated line using
  53:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         HAL_EXTI_GetConfigLine().
  54:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Provide exiting handle as parameter.
  55:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Provide pointer on EXTI_ConfigTypeDef structure as second parameter.
  56:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  57:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (#) Clear Exti configuration of a dedicated line using HAL_EXTI_GetConfigLine().
  58:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Provide exiting handle as parameter.
  59:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  60:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (#) Register callback to treat Exti interrupts using HAL_EXTI_RegisterCallback().
  61:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Provide exiting handle as first parameter.
  62:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Provide which callback will be registered using one value from
  63:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****              EXTI_CallbackIDTypeDef.
  64:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****         (++) Provide callback function pointer.
  65:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  66:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (#) Get interrupt pending bit using HAL_EXTI_GetPending().
  67:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  68:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (#) Clear interrupt pending bit using HAL_EXTI_ClearPending().
  69:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  70:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     (#) Generate software interrupt using HAL_EXTI_GenerateSWI().
  71:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  72:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   @endverbatim
  73:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   ******************************************************************************
  74:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @attention
  75:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *
  76:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  77:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * All rights reserved.</center></h2>
  78:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *
  79:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  80:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * the "License"; You may not use this file except in compliance with the
  81:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * License. You may obtain a copy of the License at:
  82:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *                        opensource.org/licenses/BSD-3-Clause
  83:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *
  84:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   ******************************************************************************
  85:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
  86:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  87:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /* Includes ------------------------------------------------------------------*/
  88:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** #include "stm32g4xx_hal.h"
  89:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  90:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /** @addtogroup STM32G4xx_HAL_Driver
  91:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @{
  92:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
  93:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  94:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /** @addtogroup EXTI
  95:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @{
  96:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
  97:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /** MISRA C:2012 deviation rule has been granted for following rule:
  98:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * Rule-18.1_b - Medium: Array `EXTICR' 1st subscript interval [0,7] may be out
  99:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * of bounds [0,3] in following API :
 100:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * HAL_EXTI_SetConfigLine
 101:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * HAL_EXTI_GetConfigLine
 102:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * HAL_EXTI_ClearConfigLine
 103:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 104:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 105:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** #ifdef HAL_EXTI_MODULE_ENABLED
 106:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 107:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /* Private typedef -----------------------------------------------------------*/
 108:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /* Private defines ------------------------------------------------------------*/
 109:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /** @defgroup EXTI_Private_Constants EXTI Private Constants
 110:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @{
 111:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 112:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** #define EXTI_MODE_OFFSET                    0x08U   /* 0x20: offset between MCU IMR/EMR registers *
 113:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** #define EXTI_CONFIG_OFFSET                  0x08U   /* 0x20: offset between MCU Rising/Falling conf
 114:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 115:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @}
 116:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 117:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 118:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /* Private macros ------------------------------------------------------------*/
 119:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /* Private variables ---------------------------------------------------------*/
 120:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /* Private function prototypes -----------------------------------------------*/
 121:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /* Exported functions --------------------------------------------------------*/
 122:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 123:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /** @addtogroup EXTI_Exported_Functions
 124:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @{
 125:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 126:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 127:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /** @addtogroup EXTI_Exported_Functions_Group1
 128:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *  @brief    Configuration functions
 129:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *
 130:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** @verbatim
 131:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****  ===============================================================================
 132:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****               ##### Configuration functions #####
 133:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****  ===============================================================================
 134:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 135:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** @endverbatim
 136:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @{
 137:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 138:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 139:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 140:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Set configuration of a dedicated Exti line.
 141:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 142:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  pExtiConfig Pointer on EXTI configuration to be set.
 143:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval HAL Status.
 144:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 145:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig
 146:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
  30              		.loc 1 146 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
 147:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
  34              		.loc 1 147 3 view .LVU1
 148:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t regval;
  35              		.loc 1 148 3 view .LVU2
 149:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t linepos;
  36              		.loc 1 149 3 view .LVU3
 150:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t maskline;
  37              		.loc 1 150 3 view .LVU4
 151:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t offset;
  38              		.loc 1 151 3 view .LVU5
 152:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 153:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check null pointer */
 154:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((hexti == NULL) || (pExtiConfig == NULL))
  39              		.loc 1 154 3 view .LVU6
 146:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
  40              		.loc 1 146 1 is_stmt 0 view .LVU7
  41 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  42              		.cfi_def_cfa_offset 20
  43              		.cfi_offset 4, -20
  44              		.cfi_offset 5, -16
  45              		.cfi_offset 6, -12
  46              		.cfi_offset 7, -8
  47              		.cfi_offset 14, -4
  48              		.loc 1 154 6 view .LVU8
  49 0002 0028     		cmp	r0, #0
  50 0004 4DD0     		beq	.L15
  51              		.loc 1 154 23 discriminator 1 view .LVU9
  52 0006 0029     		cmp	r1, #0
  53 0008 4BD0     		beq	.L15
 155:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 156:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     return HAL_ERROR;
 157:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 158:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 159:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check parameters */
 160:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_LINE(pExtiConfig->Line));
  54              		.loc 1 160 3 is_stmt 1 view .LVU10
 161:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_MODE(pExtiConfig->Mode));
  55              		.loc 1 161 3 view .LVU11
 162:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 163:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Assign line number to handle */
 164:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   hexti->Line = pExtiConfig->Line;
  56              		.loc 1 164 3 view .LVU12
  57              		.loc 1 164 28 is_stmt 0 view .LVU13
  58 000a 0A68     		ldr	r2, [r1]
  59              		.loc 1 164 15 view .LVU14
  60 000c 0260     		str	r2, [r0]
 165:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 166:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line register offset */
 167:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   offset = ((pExtiConfig->Line & EXTI_REG_MASK) >> EXTI_REG_SHIFT);
  61              		.loc 1 167 3 is_stmt 1 view .LVU15
  62              	.LVL1:
 168:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line position */
 169:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   linepos = (pExtiConfig->Line & EXTI_PIN_MASK);
  63              		.loc 1 169 3 view .LVU16
  64              		.loc 1 169 11 is_stmt 0 view .LVU17
  65 000e 02F01F04 		and	r4, r2, #31
  66              	.LVL2:
 170:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line mask */
 171:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   maskline = (1uL << linepos);
  67              		.loc 1 171 3 is_stmt 1 view .LVU18
  68              		.loc 1 171 12 is_stmt 0 view .LVU19
  69 0012 0123     		movs	r3, #1
 167:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line position */
  70              		.loc 1 167 10 view .LVU20
  71 0014 C2F30040 		ubfx	r0, r2, #16, #1
  72              	.LVL3:
 172:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 173:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Configure triggers for configurable lines */
 174:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((pExtiConfig->Line & EXTI_CONFIG) != 0x00u)
  73              		.loc 1 174 6 view .LVU21
  74 0018 9501     		lsls	r5, r2, #6
 171:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
  75              		.loc 1 171 12 view .LVU22
  76 001a 03FA04F3 		lsl	r3, r3, r4
  77              	.LVL4:
  78              		.loc 1 174 3 is_stmt 1 view .LVU23
  79 001e 4FEA4010 		lsl	r0, r0, #5
  80              		.loc 1 174 6 is_stmt 0 view .LVU24
  81 0022 28D5     		bpl	.L4
 175:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 176:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     assert_param(IS_EXTI_TRIGGER(pExtiConfig->Trigger));
  82              		.loc 1 176 5 is_stmt 1 view .LVU25
 177:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 178:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Configure rising trigger */
 179:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regaddr = (&EXTI->RTSR1 + (EXTI_CONFIG_OFFSET * offset));
  83              		.loc 1 179 5 view .LVU26
  84              		.loc 1 179 13 is_stmt 0 view .LVU27
  85 0024 204E     		ldr	r6, .L16
  86              	.LVL5:
 180:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = *regaddr;
  87              		.loc 1 180 5 is_stmt 1 view .LVU28
 181:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 182:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Mask or set line */
 183:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if ((pExtiConfig->Trigger & EXTI_TRIGGER_RISING) != 0x00u)
  88              		.loc 1 183 31 is_stmt 0 view .LVU29
  89 0026 8F68     		ldr	r7, [r1, #8]
 180:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = *regaddr;
  90              		.loc 1 180 12 view .LVU30
  91 0028 8559     		ldr	r5, [r0, r6]
  92              	.LVL6:
  93              		.loc 1 183 5 is_stmt 1 view .LVU31
  94              		.loc 1 183 8 is_stmt 0 view .LVU32
  95 002a FF07     		lsls	r7, r7, #31
 184:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 185:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval |= maskline;
  96              		.loc 1 185 7 is_stmt 1 view .LVU33
  97              		.loc 1 185 14 is_stmt 0 view .LVU34
  98 002c 4CBF     		ite	mi
  99 002e 1D43     		orrmi	r5, r5, r3
 100              	.LVL7:
 186:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 187:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     else
 188:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 189:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval &= ~maskline;
 101              		.loc 1 189 7 is_stmt 1 view .LVU35
 102              		.loc 1 189 14 is_stmt 0 view .LVU36
 103 0030 9D43     		bicpl	r5, r5, r3
 104              	.LVL8:
 190:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 191:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 192:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Store rising trigger mode */
 193:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 105              		.loc 1 193 5 is_stmt 1 view .LVU37
 106              		.loc 1 193 14 is_stmt 0 view .LVU38
 107 0032 8551     		str	r5, [r0, r6]
 194:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 195:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Configure falling trigger */
 196:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regaddr = (&EXTI->FTSR1 + (EXTI_CONFIG_OFFSET * offset));
 108              		.loc 1 196 5 is_stmt 1 view .LVU39
 109              		.loc 1 196 13 is_stmt 0 view .LVU40
 110 0034 1D4E     		ldr	r6, .L16+4
 111              	.LVL9:
 197:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = *regaddr;
 112              		.loc 1 197 5 is_stmt 1 view .LVU41
 198:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 199:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Mask or set line */
 200:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if ((pExtiConfig->Trigger & EXTI_TRIGGER_FALLING) != 0x00u)
 113              		.loc 1 200 31 is_stmt 0 view .LVU42
 114 0036 8F68     		ldr	r7, [r1, #8]
 197:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = *regaddr;
 115              		.loc 1 197 12 view .LVU43
 116 0038 8559     		ldr	r5, [r0, r6]
 117              	.LVL10:
 118              		.loc 1 200 5 is_stmt 1 view .LVU44
 119              		.loc 1 200 8 is_stmt 0 view .LVU45
 120 003a BF07     		lsls	r7, r7, #30
 201:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 202:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval |= maskline;
 121              		.loc 1 202 7 is_stmt 1 view .LVU46
 122              		.loc 1 202 14 is_stmt 0 view .LVU47
 123 003c 4CBF     		ite	mi
 124 003e 1D43     		orrmi	r5, r5, r3
 125              	.LVL11:
 203:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 204:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     else
 205:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 206:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval &= ~maskline;
 126              		.loc 1 206 7 is_stmt 1 view .LVU48
 127              		.loc 1 206 14 is_stmt 0 view .LVU49
 128 0040 9D43     		bicpl	r5, r5, r3
 129              	.LVL12:
 207:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 208:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 209:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Store falling trigger mode */
 210:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 130              		.loc 1 210 5 is_stmt 1 view .LVU50
 131              		.loc 1 210 14 is_stmt 0 view .LVU51
 132 0042 8551     		str	r5, [r0, r6]
 211:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 212:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Configure gpio port selection in case of gpio exti line */
 213:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if ((pExtiConfig->Line & EXTI_GPIO) == EXTI_GPIO)
 133              		.loc 1 213 5 is_stmt 1 view .LVU52
 134              		.loc 1 213 28 is_stmt 0 view .LVU53
 135 0044 0D68     		ldr	r5, [r1]
 136              	.LVL13:
 137              		.loc 1 213 28 view .LVU54
 138 0046 05F0C065 		and	r5, r5, #100663296
 139              		.loc 1 213 8 view .LVU55
 140 004a B5F1C06F 		cmp	r5, #100663296
 141 004e 12D1     		bne	.L4
 214:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 215:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       assert_param(IS_EXTI_GPIO_PORT(pExtiConfig->GPIOSel));
 142              		.loc 1 215 7 is_stmt 1 view .LVU56
 216:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       assert_param(IS_EXTI_GPIO_PIN(linepos));
 143              		.loc 1 216 7 view .LVU57
 217:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 218:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval = SYSCFG->EXTICR[linepos >> 2u];
 144              		.loc 1 218 7 view .LVU58
 145 0050 04F01C04 		and	r4, r4, #28
 146              	.LVL14:
 147              		.loc 1 218 7 is_stmt 0 view .LVU59
 148 0054 04F18044 		add	r4, r4, #1073741824
 149 0058 04F58034 		add	r4, r4, #65536
 219:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval &= ~(SYSCFG_EXTICR1_EXTI0 << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
 150              		.loc 1 219 80 view .LVU60
 151 005c 02F00302 		and	r2, r2, #3
 152              	.LVL15:
 218:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval &= ~(SYSCFG_EXTICR1_EXTI0 << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
 153              		.loc 1 218 14 view .LVU61
 154 0060 A668     		ldr	r6, [r4, #8]
 155              	.LVL16:
 156              		.loc 1 219 7 is_stmt 1 view .LVU62
 157              		.loc 1 219 69 is_stmt 0 view .LVU63
 158 0062 9200     		lsls	r2, r2, #2
 159              		.loc 1 219 40 view .LVU64
 160 0064 0725     		movs	r5, #7
 161 0066 9540     		lsls	r5, r5, r2
 162              		.loc 1 219 14 view .LVU65
 163 0068 26EA0506 		bic	r6, r6, r5
 164              	.LVL17:
 220:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval |= (pExtiConfig->GPIOSel << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
 165              		.loc 1 220 7 is_stmt 1 view .LVU66
 166              		.loc 1 220 39 is_stmt 0 view .LVU67
 167 006c CD68     		ldr	r5, [r1, #12]
 168 006e 05FA02F2 		lsl	r2, r5, r2
 169              		.loc 1 220 14 view .LVU68
 170 0072 3243     		orrs	r2, r2, r6
 171              	.LVL18:
 221:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 172              		.loc 1 221 7 is_stmt 1 view .LVU69
 173              		.loc 1 221 37 is_stmt 0 view .LVU70
 174 0074 A260     		str	r2, [r4, #8]
 175              	.LVL19:
 176              	.L4:
 222:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 223:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 224:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 225:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Configure interrupt mode : read current mode */
 226:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->IMR1 + (EXTI_MODE_OFFSET * offset));
 177              		.loc 1 226 3 is_stmt 1 view .LVU71
 178              		.loc 1 226 11 is_stmt 0 view .LVU72
 179 0076 00F18044 		add	r4, r0, #1073741824
 180 007a 04F58234 		add	r4, r4, #66560
 181              	.LVL20:
 227:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = *regaddr;
 182              		.loc 1 227 3 is_stmt 1 view .LVU73
 228:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 229:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Mask or set line */
 230:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((pExtiConfig->Mode & EXTI_MODE_INTERRUPT) != 0x00u)
 183              		.loc 1 230 26 is_stmt 0 view .LVU74
 184 007e 4D68     		ldr	r5, [r1, #4]
 227:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = *regaddr;
 185              		.loc 1 227 10 view .LVU75
 186 0080 2268     		ldr	r2, [r4]
 187              	.LVL21:
 188              		.loc 1 230 3 is_stmt 1 view .LVU76
 189              		.loc 1 230 6 is_stmt 0 view .LVU77
 190 0082 ED07     		lsls	r5, r5, #31
 231:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 232:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval |= maskline;
 191              		.loc 1 232 5 is_stmt 1 view .LVU78
 192              		.loc 1 232 12 is_stmt 0 view .LVU79
 193 0084 4CBF     		ite	mi
 194 0086 1A43     		orrmi	r2, r2, r3
 195              	.LVL22:
 233:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 234:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   else
 235:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 236:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval &= ~maskline;
 196              		.loc 1 236 5 is_stmt 1 view .LVU80
 197              		.loc 1 236 12 is_stmt 0 view .LVU81
 198 0088 9A43     		bicpl	r2, r2, r3
 199              	.LVL23:
 237:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 238:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 239:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Store interrupt mode */
 240:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *regaddr = regval;
 200              		.loc 1 240 3 is_stmt 1 view .LVU82
 201              		.loc 1 240 12 is_stmt 0 view .LVU83
 202 008a 2260     		str	r2, [r4]
 241:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 242:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Configure event mode : read current mode */
 243:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->EMR1 + (EXTI_MODE_OFFSET * offset));
 203              		.loc 1 243 3 is_stmt 1 view .LVU84
 204              		.loc 1 243 11 is_stmt 0 view .LVU85
 205 008c 084C     		ldr	r4, .L16+8
 206              	.LVL24:
 244:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = *regaddr;
 207              		.loc 1 244 3 is_stmt 1 view .LVU86
 245:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 246:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Mask or set line */
 247:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((pExtiConfig->Mode & EXTI_MODE_EVENT) != 0x00u)
 208              		.loc 1 247 26 is_stmt 0 view .LVU87
 209 008e 4968     		ldr	r1, [r1, #4]
 210              	.LVL25:
 244:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = *regaddr;
 211              		.loc 1 244 10 view .LVU88
 212 0090 0259     		ldr	r2, [r0, r4]
 213              	.LVL26:
 214              		.loc 1 247 3 is_stmt 1 view .LVU89
 215              		.loc 1 247 6 is_stmt 0 view .LVU90
 216 0092 8907     		lsls	r1, r1, #30
 248:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 249:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval |= maskline;
 217              		.loc 1 249 5 is_stmt 1 view .LVU91
 218              		.loc 1 249 12 is_stmt 0 view .LVU92
 219 0094 4CBF     		ite	mi
 220 0096 1343     		orrmi	r3, r3, r2
 221              	.LVL27:
 250:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 251:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   else
 252:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 253:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval &= ~maskline;
 222              		.loc 1 253 5 is_stmt 1 view .LVU93
 223              		.loc 1 253 12 is_stmt 0 view .LVU94
 224 0098 22EA0303 		bicpl	r3, r2, r3
 225              	.LVL28:
 254:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 255:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 256:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Store event mode */
 257:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *regaddr = regval;
 226              		.loc 1 257 3 is_stmt 1 view .LVU95
 227              		.loc 1 257 12 is_stmt 0 view .LVU96
 228 009c 0351     		str	r3, [r0, r4]
 258:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 259:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   return HAL_OK;
 229              		.loc 1 259 3 is_stmt 1 view .LVU97
 230              		.loc 1 259 10 is_stmt 0 view .LVU98
 231 009e 0020     		movs	r0, #0
 232              	.LVL29:
 233              	.L2:
 260:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 234              		.loc 1 260 1 view .LVU99
 235 00a0 F0BD     		pop	{r4, r5, r6, r7, pc}
 236              	.LVL30:
 237              	.L15:
 156:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 238              		.loc 1 156 12 view .LVU100
 239 00a2 0120     		movs	r0, #1
 240              	.LVL31:
 156:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 241              		.loc 1 156 12 view .LVU101
 242 00a4 FCE7     		b	.L2
 243              	.L17:
 244 00a6 00BF     		.align	2
 245              	.L16:
 246 00a8 08040140 		.word	1073808392
 247 00ac 0C040140 		.word	1073808396
 248 00b0 04040140 		.word	1073808388
 249              		.cfi_endproc
 250              	.LFE325:
 252              		.section	.text.HAL_EXTI_GetConfigLine,"ax",%progbits
 253              		.align	1
 254              		.global	HAL_EXTI_GetConfigLine
 255              		.syntax unified
 256              		.thumb
 257              		.thumb_func
 258              		.fpu fpv4-sp-d16
 260              	HAL_EXTI_GetConfigLine:
 261              	.LVL32:
 262              	.LFB326:
 261:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 262:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 263:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 264:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Get configuration of a dedicated Exti line.
 265:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 266:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  pExtiConfig Pointer on structure to store Exti configuration.
 267:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval HAL Status.
 268:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 269:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig
 270:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 263              		.loc 1 270 1 is_stmt 1 view -0
 264              		.cfi_startproc
 265              		@ args = 0, pretend = 0, frame = 0
 266              		@ frame_needed = 0, uses_anonymous_args = 0
 271:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 267              		.loc 1 271 3 view .LVU103
 272:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t regval;
 268              		.loc 1 272 3 view .LVU104
 273:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t linepos;
 269              		.loc 1 273 3 view .LVU105
 274:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t maskline;
 270              		.loc 1 274 3 view .LVU106
 275:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t offset;
 271              		.loc 1 275 3 view .LVU107
 276:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 277:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check null pointer */
 278:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((hexti == NULL) || (pExtiConfig == NULL))
 272              		.loc 1 278 3 view .LVU108
 270:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 273              		.loc 1 270 1 is_stmt 0 view .LVU109
 274 0000 70B5     		push	{r4, r5, r6, lr}
 275              		.cfi_def_cfa_offset 16
 276              		.cfi_offset 4, -16
 277              		.cfi_offset 5, -12
 278              		.cfi_offset 6, -8
 279              		.cfi_offset 14, -4
 280              		.loc 1 278 6 view .LVU110
 281 0002 0028     		cmp	r0, #0
 282 0004 43D0     		beq	.L25
 283              		.loc 1 278 23 discriminator 1 view .LVU111
 284 0006 0029     		cmp	r1, #0
 285 0008 41D0     		beq	.L25
 279:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 280:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     return HAL_ERROR;
 281:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 282:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 283:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check the parameter */
 284:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_LINE(hexti->Line));
 286              		.loc 1 284 3 is_stmt 1 view .LVU112
 285:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 286:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Store handle line number to configuration structure */
 287:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   pExtiConfig->Line = hexti->Line;
 287              		.loc 1 287 3 view .LVU113
 288              		.loc 1 287 28 is_stmt 0 view .LVU114
 289 000a 0368     		ldr	r3, [r0]
 290              		.loc 1 287 21 view .LVU115
 291 000c 0B60     		str	r3, [r1]
 288:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 289:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line register offset and line mask */
 290:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   offset = ((pExtiConfig->Line & EXTI_REG_MASK) >> EXTI_REG_SHIFT);
 292              		.loc 1 290 3 is_stmt 1 view .LVU116
 293              	.LVL33:
 291:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line position */
 292:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   linepos = (pExtiConfig->Line & EXTI_PIN_MASK);
 294              		.loc 1 292 3 view .LVU117
 290:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line position */
 295              		.loc 1 290 10 is_stmt 0 view .LVU118
 296 000e C3F30045 		ubfx	r5, r3, #16, #1
 293:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute mask */
 294:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   maskline = (1uL << linepos);
 295:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 296:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* 1] Get core mode : interrupt */
 297:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->IMR1 + (EXTI_MODE_OFFSET * offset));
 297              		.loc 1 297 26 view .LVU119
 298 0012 6D01     		lsls	r5, r5, #5
 299              		.loc 1 297 11 view .LVU120
 300 0014 05F18040 		add	r0, r5, #1073741824
 301              	.LVL34:
 302              		.loc 1 297 11 view .LVU121
 303 0018 00F58230 		add	r0, r0, #66560
 292:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute mask */
 304              		.loc 1 292 11 view .LVU122
 305 001c 03F01F02 		and	r2, r3, #31
 306              	.LVL35:
 294:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 307              		.loc 1 294 3 is_stmt 1 view .LVU123
 298:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = *regaddr;
 308              		.loc 1 298 10 is_stmt 0 view .LVU124
 309 0020 0068     		ldr	r0, [r0]
 299:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 300:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check if selected line is enable */
 301:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((regval & maskline) != 0x00u)
 302:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 303:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     pExtiConfig->Mode = EXTI_MODE_INTERRUPT;
 304:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 305:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   else
 306:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 307:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     pExtiConfig->Mode = EXTI_MODE_NONE;
 308:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 309:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 310:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Get event mode */
 311:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->EMR1 + (EXTI_MODE_OFFSET * offset));
 310              		.loc 1 311 11 view .LVU125
 311 0022 1C4E     		ldr	r6, .L33
 294:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 312              		.loc 1 294 12 view .LVU126
 313 0024 0124     		movs	r4, #1
 314 0026 9440     		lsls	r4, r4, r2
 315              	.LVL36:
 297:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = *regaddr;
 316              		.loc 1 297 3 is_stmt 1 view .LVU127
 298:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 317              		.loc 1 298 3 view .LVU128
 301:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 318              		.loc 1 301 3 view .LVU129
 301:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 319              		.loc 1 301 6 is_stmt 0 view .LVU130
 320 0028 0442     		tst	r4, r0
 321 002a 14BF     		ite	ne
 322 002c 0120     		movne	r0, #1
 323              	.LVL37:
 301:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 324              		.loc 1 301 6 view .LVU131
 325 002e 0020     		moveq	r0, #0
 326 0030 4860     		str	r0, [r1, #4]
 327              		.loc 1 311 3 is_stmt 1 view .LVU132
 328              	.LVL38:
 312:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = *regaddr;
 329              		.loc 1 312 3 view .LVU133
 330              		.loc 1 312 10 is_stmt 0 view .LVU134
 331 0032 AE59     		ldr	r6, [r5, r6]
 332              	.LVL39:
 313:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 314:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check if selected line is enable */
 315:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((regval & maskline) != 0x00u)
 333              		.loc 1 315 3 is_stmt 1 view .LVU135
 334              		.loc 1 315 6 is_stmt 0 view .LVU136
 335 0034 3442     		tst	r4, r6
 316:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 317:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     pExtiConfig->Mode |= EXTI_MODE_EVENT;
 336              		.loc 1 317 5 is_stmt 1 view .LVU137
 337              		.loc 1 317 23 is_stmt 0 view .LVU138
 338 0036 1CBF     		itt	ne
 339 0038 40F00200 		orrne	r0, r0, #2
 340 003c 4860     		strne	r0, [r1, #4]
 318:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 319:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 320:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* 2] Get trigger for configurable lines : rising */
 321:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((pExtiConfig->Line & EXTI_CONFIG) != 0x00u)
 341              		.loc 1 321 3 is_stmt 1 view .LVU139
 342              		.loc 1 321 6 is_stmt 0 view .LVU140
 343 003e 13F00070 		ands	r0, r3, #33554432
 344 0042 22D0     		beq	.L21
 322:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 323:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regaddr = (&EXTI->RTSR1 + (EXTI_CONFIG_OFFSET * offset));
 345              		.loc 1 323 5 is_stmt 1 view .LVU141
 346              		.loc 1 323 13 is_stmt 0 view .LVU142
 347 0044 1448     		ldr	r0, .L33+4
 348              	.LVL40:
 324:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = *regaddr;
 349              		.loc 1 324 5 is_stmt 1 view .LVU143
 325:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 326:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Check if configuration of selected line is enable */
 327:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if ((regval & maskline) != 0x00u)
 328:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 329:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       pExtiConfig->Trigger = EXTI_TRIGGER_RISING;
 330:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 331:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     else
 332:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 333:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       pExtiConfig->Trigger = EXTI_TRIGGER_NONE;
 334:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 335:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 336:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Get falling configuration */
 337:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regaddr = (&EXTI->FTSR1 + (EXTI_CONFIG_OFFSET * offset));
 350              		.loc 1 337 13 is_stmt 0 view .LVU144
 351 0046 154E     		ldr	r6, .L33+8
 352              	.LVL41:
 324:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = *regaddr;
 353              		.loc 1 324 12 view .LVU145
 354 0048 2858     		ldr	r0, [r5, r0]
 355              	.LVL42:
 327:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 356              		.loc 1 327 5 is_stmt 1 view .LVU146
 327:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 357              		.loc 1 327 8 is_stmt 0 view .LVU147
 358 004a 0442     		tst	r4, r0
 359 004c 14BF     		ite	ne
 360 004e 0120     		movne	r0, #1
 361              	.LVL43:
 327:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 362              		.loc 1 327 8 view .LVU148
 363 0050 0020     		moveq	r0, #0
 364 0052 8860     		str	r0, [r1, #8]
 365              		.loc 1 337 5 is_stmt 1 view .LVU149
 366              	.LVL44:
 338:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = *regaddr;
 367              		.loc 1 338 5 view .LVU150
 368              		.loc 1 338 12 is_stmt 0 view .LVU151
 369 0054 AD59     		ldr	r5, [r5, r6]
 370              	.LVL45:
 339:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 340:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Check if configuration of selected line is enable */
 341:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if ((regval & maskline) != 0x00u)
 371              		.loc 1 341 5 is_stmt 1 view .LVU152
 372              		.loc 1 341 8 is_stmt 0 view .LVU153
 373 0056 2C42     		tst	r4, r5
 342:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 343:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       pExtiConfig->Trigger |= EXTI_TRIGGER_FALLING;
 374              		.loc 1 343 7 is_stmt 1 view .LVU154
 375              		.loc 1 343 28 is_stmt 0 view .LVU155
 376 0058 1CBF     		itt	ne
 377 005a 40F00200 		orrne	r0, r0, #2
 378 005e 8860     		strne	r0, [r1, #8]
 344:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 345:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 346:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Get Gpio port selection for gpio lines */
 347:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if ((pExtiConfig->Line & EXTI_GPIO) == EXTI_GPIO)
 379              		.loc 1 347 5 is_stmt 1 view .LVU156
 380              		.loc 1 347 28 is_stmt 0 view .LVU157
 381 0060 03F0C060 		and	r0, r3, #100663296
 382              		.loc 1 347 8 view .LVU158
 383 0064 B0F1C06F 		cmp	r0, #100663296
 384 0068 0CD1     		bne	.L23
 348:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 349:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       assert_param(IS_EXTI_GPIO_PIN(linepos));
 385              		.loc 1 349 7 is_stmt 1 view .LVU159
 350:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 351:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval = SYSCFG->EXTICR[linepos >> 2u];
 386              		.loc 1 351 7 view .LVU160
 387              		.loc 1 351 39 is_stmt 0 view .LVU161
 388 006a 9208     		lsrs	r2, r2, #2
 389              	.LVL46:
 390              		.loc 1 351 14 view .LVU162
 391 006c 0C48     		ldr	r0, .L33+12
 392 006e 0232     		adds	r2, r2, #2
 352:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       pExtiConfig->GPIOSel = ((regval >> (SYSCFG_EXTICR1_EXTI1_Pos * ((linepos & 0x03u)))));
 393              		.loc 1 352 80 view .LVU163
 394 0070 03F00303 		and	r3, r3, #3
 395              	.LVL47:
 351:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       pExtiConfig->GPIOSel = ((regval >> (SYSCFG_EXTICR1_EXTI1_Pos * ((linepos & 0x03u)))));
 396              		.loc 1 351 14 view .LVU164
 397 0074 50F82220 		ldr	r2, [r0, r2, lsl #2]
 398              	.LVL48:
 399              		.loc 1 352 7 is_stmt 1 view .LVU165
 400              		.loc 1 352 68 is_stmt 0 view .LVU166
 401 0078 9B00     		lsls	r3, r3, #2
 402              		.loc 1 352 39 view .LVU167
 403 007a 22FA03F3 		lsr	r3, r2, r3
 404              		.loc 1 352 28 view .LVU168
 405 007e CB60     		str	r3, [r1, #12]
 353:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 354:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     else
 355:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 356:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       pExtiConfig->GPIOSel = 0x00u;
 357:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 358:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 359:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   else
 360:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 361:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     pExtiConfig->Trigger = EXTI_TRIGGER_NONE;
 362:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     pExtiConfig->GPIOSel = 0x00u;
 363:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 364:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 365:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   return HAL_OK;
 406              		.loc 1 365 10 view .LVU169
 407 0080 0020     		movs	r0, #0
 408              	.LVL49:
 409              	.L19:
 366:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 410              		.loc 1 366 1 view .LVU170
 411 0082 70BD     		pop	{r4, r5, r6, pc}
 412              	.LVL50:
 413              	.L23:
 356:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 414              		.loc 1 356 7 is_stmt 1 view .LVU171
 356:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 415              		.loc 1 356 28 is_stmt 0 view .LVU172
 416 0084 0020     		movs	r0, #0
 417              	.LVL51:
 418              	.L32:
 362:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 419              		.loc 1 362 5 is_stmt 1 view .LVU173
 362:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 420              		.loc 1 362 26 is_stmt 0 view .LVU174
 421 0086 C860     		str	r0, [r1, #12]
 422 0088 FBE7     		b	.L19
 423              	.LVL52:
 424              	.L21:
 361:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     pExtiConfig->GPIOSel = 0x00u;
 425              		.loc 1 361 5 is_stmt 1 view .LVU175
 361:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     pExtiConfig->GPIOSel = 0x00u;
 426              		.loc 1 361 26 is_stmt 0 view .LVU176
 427 008a 8860     		str	r0, [r1, #8]
 428 008c FBE7     		b	.L32
 429              	.LVL53:
 430              	.L25:
 280:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 431              		.loc 1 280 12 view .LVU177
 432 008e 0120     		movs	r0, #1
 433              	.LVL54:
 280:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 434              		.loc 1 280 12 view .LVU178
 435 0090 F7E7     		b	.L19
 436              	.L34:
 437 0092 00BF     		.align	2
 438              	.L33:
 439 0094 04040140 		.word	1073808388
 440 0098 08040140 		.word	1073808392
 441 009c 0C040140 		.word	1073808396
 442 00a0 00000140 		.word	1073807360
 443              		.cfi_endproc
 444              	.LFE326:
 446              		.section	.text.HAL_EXTI_ClearConfigLine,"ax",%progbits
 447              		.align	1
 448              		.global	HAL_EXTI_ClearConfigLine
 449              		.syntax unified
 450              		.thumb
 451              		.thumb_func
 452              		.fpu fpv4-sp-d16
 454              	HAL_EXTI_ClearConfigLine:
 455              	.LVL55:
 456              	.LFB327:
 367:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 368:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 369:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 370:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Clear whole configuration of a dedicated Exti line.
 371:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 372:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval HAL Status.
 373:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 374:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(EXTI_HandleTypeDef *hexti)
 375:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 457              		.loc 1 375 1 is_stmt 1 view -0
 458              		.cfi_startproc
 459              		@ args = 0, pretend = 0, frame = 0
 460              		@ frame_needed = 0, uses_anonymous_args = 0
 376:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 461              		.loc 1 376 3 view .LVU180
 377:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t regval;
 462              		.loc 1 377 3 view .LVU181
 378:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t linepos;
 463              		.loc 1 378 3 view .LVU182
 379:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t maskline;
 464              		.loc 1 379 3 view .LVU183
 380:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t offset;
 465              		.loc 1 380 3 view .LVU184
 381:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 382:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check null pointer */
 383:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if (hexti == NULL)
 466              		.loc 1 383 3 view .LVU185
 375:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 467              		.loc 1 375 1 is_stmt 0 view .LVU186
 468 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 469              		.cfi_def_cfa_offset 20
 470              		.cfi_offset 4, -20
 471              		.cfi_offset 5, -16
 472              		.cfi_offset 6, -12
 473              		.cfi_offset 7, -8
 474              		.cfi_offset 14, -4
 475              		.loc 1 383 6 view .LVU187
 476 0002 0028     		cmp	r0, #0
 477 0004 38D0     		beq	.L39
 384:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 385:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     return HAL_ERROR;
 386:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 387:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 388:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check the parameter */
 389:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_LINE(hexti->Line));
 478              		.loc 1 389 3 is_stmt 1 view .LVU188
 390:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 391:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line register offset and line mask */
 392:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   offset = ((hexti->Line & EXTI_REG_MASK) >> EXTI_REG_SHIFT);
 479              		.loc 1 392 3 view .LVU189
 480              		.loc 1 392 19 is_stmt 0 view .LVU190
 481 0006 0268     		ldr	r2, [r0]
 482              	.LVL56:
 393:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line position */
 394:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   linepos = (hexti->Line & EXTI_PIN_MASK);
 483              		.loc 1 394 3 is_stmt 1 view .LVU191
 392:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line position */
 484              		.loc 1 392 10 is_stmt 0 view .LVU192
 485 0008 C2F30047 		ubfx	r7, r2, #16, #1
 395:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line mask */
 396:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   maskline = (1uL << linepos);
 397:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 398:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* 1] Clear interrupt mode */
 399:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->IMR1 + (EXTI_MODE_OFFSET * offset));
 486              		.loc 1 399 26 view .LVU193
 487 000c 7F01     		lsls	r7, r7, #5
 488              		.loc 1 399 11 view .LVU194
 489 000e 07F18041 		add	r1, r7, #1073741824
 490 0012 01F58231 		add	r1, r1, #66560
 396:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 491              		.loc 1 396 12 view .LVU195
 492 0016 0123     		movs	r3, #1
 394:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line mask */
 493              		.loc 1 394 11 view .LVU196
 494 0018 02F01F06 		and	r6, r2, #31
 495              	.LVL57:
 396:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 496              		.loc 1 396 3 is_stmt 1 view .LVU197
 497              		.loc 1 399 3 view .LVU198
 400:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = (*regaddr & ~maskline);
 498              		.loc 1 400 3 view .LVU199
 499              		.loc 1 400 13 is_stmt 0 view .LVU200
 500 001c 0C68     		ldr	r4, [r1]
 396:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 501              		.loc 1 396 12 view .LVU201
 502 001e 03FA06F5 		lsl	r5, r3, r6
 503              	.LVL58:
 504              		.loc 1 400 24 view .LVU202
 505 0022 EB43     		mvns	r3, r5
 506              		.loc 1 400 10 view .LVU203
 507 0024 1C40     		ands	r4, r4, r3
 508              	.LVL59:
 401:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *regaddr = regval;
 509              		.loc 1 401 3 is_stmt 1 view .LVU204
 510              		.loc 1 401 12 is_stmt 0 view .LVU205
 511 0026 0C60     		str	r4, [r1]
 402:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 403:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* 2] Clear event mode */
 404:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->EMR1 + (EXTI_MODE_OFFSET * offset));
 512              		.loc 1 404 3 is_stmt 1 view .LVU206
 513              		.loc 1 404 11 is_stmt 0 view .LVU207
 514 0028 144C     		ldr	r4, .L41
 515              	.LVL60:
 405:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = (*regaddr & ~maskline);
 516              		.loc 1 405 3 is_stmt 1 view .LVU208
 517              		.loc 1 405 13 is_stmt 0 view .LVU209
 518 002a 3959     		ldr	r1, [r7, r4]
 519              	.LVL61:
 520              		.loc 1 405 10 view .LVU210
 521 002c 1940     		ands	r1, r1, r3
 522              	.LVL62:
 406:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *regaddr = regval;
 523              		.loc 1 406 3 is_stmt 1 view .LVU211
 524              		.loc 1 406 12 is_stmt 0 view .LVU212
 525 002e 3951     		str	r1, [r7, r4]
 407:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 408:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* 3] Clear triggers in case of configurable lines */
 409:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if ((hexti->Line & EXTI_CONFIG) != 0x00u)
 526              		.loc 1 409 3 is_stmt 1 view .LVU213
 527              		.loc 1 409 20 is_stmt 0 view .LVU214
 528 0030 0168     		ldr	r1, [r0]
 529              	.LVL63:
 530              		.loc 1 409 6 view .LVU215
 531 0032 8901     		lsls	r1, r1, #6
 532 0034 01D4     		bmi	.L37
 533              	.LVL64:
 534              	.L40:
 410:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 411:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regaddr = (&EXTI->RTSR1 + (EXTI_CONFIG_OFFSET * offset));
 412:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = (*regaddr & ~maskline);
 413:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 414:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 415:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regaddr = (&EXTI->FTSR1 + (EXTI_CONFIG_OFFSET * offset));
 416:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = (*regaddr & ~maskline);
 417:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 418:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 419:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Get Gpio port selection for gpio lines */
 420:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if ((hexti->Line & EXTI_GPIO) == EXTI_GPIO)
 421:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 422:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       assert_param(IS_EXTI_GPIO_PIN(linepos));
 423:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 424:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval = SYSCFG->EXTICR[linepos >> 2u];
 425:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval &= ~(SYSCFG_EXTICR1_EXTI0 << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
 426:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 427:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 428:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 429:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 430:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   return HAL_OK;
 535              		.loc 1 430 10 view .LVU216
 536 0036 0020     		movs	r0, #0
 537              	.LVL65:
 538              	.L36:
 431:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 539              		.loc 1 431 1 view .LVU217
 540 0038 F0BD     		pop	{r4, r5, r6, r7, pc}
 541              	.LVL66:
 542              	.L37:
 411:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = (*regaddr & ~maskline);
 543              		.loc 1 411 5 is_stmt 1 view .LVU218
 411:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = (*regaddr & ~maskline);
 544              		.loc 1 411 13 is_stmt 0 view .LVU219
 545 003a 114C     		ldr	r4, .L41+4
 546              	.LVL67:
 412:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 547              		.loc 1 412 5 is_stmt 1 view .LVU220
 412:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 548              		.loc 1 412 15 is_stmt 0 view .LVU221
 549 003c 3959     		ldr	r1, [r7, r4]
 412:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 550              		.loc 1 412 12 view .LVU222
 551 003e 1940     		ands	r1, r1, r3
 552              	.LVL68:
 413:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 553              		.loc 1 413 5 is_stmt 1 view .LVU223
 413:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 554              		.loc 1 413 14 is_stmt 0 view .LVU224
 555 0040 3951     		str	r1, [r7, r4]
 415:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = (*regaddr & ~maskline);
 556              		.loc 1 415 5 is_stmt 1 view .LVU225
 415:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     regval = (*regaddr & ~maskline);
 557              		.loc 1 415 13 is_stmt 0 view .LVU226
 558 0042 0434     		adds	r4, r4, #4
 559              	.LVL69:
 416:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 560              		.loc 1 416 5 is_stmt 1 view .LVU227
 416:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 561              		.loc 1 416 15 is_stmt 0 view .LVU228
 562 0044 3959     		ldr	r1, [r7, r4]
 563              	.LVL70:
 416:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = regval;
 564              		.loc 1 416 12 view .LVU229
 565 0046 1940     		ands	r1, r1, r3
 566              	.LVL71:
 417:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 567              		.loc 1 417 5 is_stmt 1 view .LVU230
 417:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 568              		.loc 1 417 14 is_stmt 0 view .LVU231
 569 0048 3951     		str	r1, [r7, r4]
 420:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 570              		.loc 1 420 5 is_stmt 1 view .LVU232
 420:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 571              		.loc 1 420 22 is_stmt 0 view .LVU233
 572 004a 0168     		ldr	r1, [r0]
 573              	.LVL72:
 420:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 574              		.loc 1 420 22 view .LVU234
 575 004c 01F0C061 		and	r1, r1, #100663296
 420:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 576              		.loc 1 420 8 view .LVU235
 577 0050 B1F1C06F 		cmp	r1, #100663296
 578 0054 EFD1     		bne	.L40
 422:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 579              		.loc 1 422 7 is_stmt 1 view .LVU236
 424:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval &= ~(SYSCFG_EXTICR1_EXTI0 << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
 580              		.loc 1 424 7 view .LVU237
 581 0056 06F01C03 		and	r3, r6, #28
 582 005a 03F18043 		add	r3, r3, #1073741824
 583 005e 03F58033 		add	r3, r3, #65536
 425:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 584              		.loc 1 425 80 is_stmt 0 view .LVU238
 585 0062 02F00302 		and	r2, r2, #3
 586              	.LVL73:
 424:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       regval &= ~(SYSCFG_EXTICR1_EXTI0 << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
 587              		.loc 1 424 14 view .LVU239
 588 0066 9968     		ldr	r1, [r3, #8]
 589              	.LVL74:
 425:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 590              		.loc 1 425 7 is_stmt 1 view .LVU240
 425:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 591              		.loc 1 425 69 is_stmt 0 view .LVU241
 592 0068 9200     		lsls	r2, r2, #2
 425:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 593              		.loc 1 425 40 view .LVU242
 594 006a 0720     		movs	r0, #7
 595              	.LVL75:
 425:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 596              		.loc 1 425 40 view .LVU243
 597 006c 00FA02F2 		lsl	r2, r0, r2
 425:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       SYSCFG->EXTICR[linepos >> 2u] = regval;
 598              		.loc 1 425 14 view .LVU244
 599 0070 21EA0202 		bic	r2, r1, r2
 600              	.LVL76:
 426:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 601              		.loc 1 426 7 is_stmt 1 view .LVU245
 426:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 602              		.loc 1 426 37 is_stmt 0 view .LVU246
 603 0074 9A60     		str	r2, [r3, #8]
 604 0076 DEE7     		b	.L40
 605              	.LVL77:
 606              	.L39:
 385:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 607              		.loc 1 385 12 view .LVU247
 608 0078 0120     		movs	r0, #1
 609              	.LVL78:
 385:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 610              		.loc 1 385 12 view .LVU248
 611 007a DDE7     		b	.L36
 612              	.L42:
 613              		.align	2
 614              	.L41:
 615 007c 04040140 		.word	1073808388
 616 0080 08040140 		.word	1073808392
 617              		.cfi_endproc
 618              	.LFE327:
 620              		.section	.text.HAL_EXTI_RegisterCallback,"ax",%progbits
 621              		.align	1
 622              		.global	HAL_EXTI_RegisterCallback
 623              		.syntax unified
 624              		.thumb
 625              		.thumb_func
 626              		.fpu fpv4-sp-d16
 628              	HAL_EXTI_RegisterCallback:
 629              	.LVL79:
 630              	.LFB328:
 432:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 433:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 434:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 435:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Register callback for a dedicated Exti line.
 436:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 437:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  CallbackID User callback identifier.
 438:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *         This parameter can be one of @arg @ref EXTI_CallbackIDTypeDef values.
 439:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  pPendingCbfn function pointer to be stored as callback.
 440:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval HAL Status.
 441:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 442:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef Callb
 443:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 631              		.loc 1 443 1 is_stmt 1 view -0
 632              		.cfi_startproc
 633              		@ args = 0, pretend = 0, frame = 0
 634              		@ frame_needed = 0, uses_anonymous_args = 0
 635              		@ link register save eliminated.
 444:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   HAL_StatusTypeDef status = HAL_OK;
 636              		.loc 1 444 3 view .LVU250
 445:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 446:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check the parameters */
 447:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_CB(CallbackID));
 637              		.loc 1 447 3 view .LVU251
 448:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 449:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   switch (CallbackID)
 638              		.loc 1 449 3 view .LVU252
 639 0000 0029     		cmp	r1, #0
 450:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 451:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* set common callback */
 452:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     case  HAL_EXTI_COMMON_CB_ID:
 453:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       hexti->PendingCallback = pPendingCbfn;
 454:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       break;
 455:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 456:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     default:
 457:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       hexti->PendingCallback = NULL;
 640              		.loc 1 457 30 is_stmt 0 view .LVU253
 641 0002 18BF     		it	ne
 642 0004 0022     		movne	r2, #0
 643              	.LVL80:
 644              		.loc 1 457 30 view .LVU254
 645 0006 4260     		str	r2, [r0, #4]
 646              	.LVL81:
 458:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       status = HAL_ERROR;
 459:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       break;
 460:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 461:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 462:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   return status;
 647              		.loc 1 462 3 is_stmt 1 view .LVU255
 463:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 648              		.loc 1 463 1 is_stmt 0 view .LVU256
 649 0008 14BF     		ite	ne
 650 000a 0120     		movne	r0, #1
 651              	.LVL82:
 652              		.loc 1 463 1 view .LVU257
 653 000c 0020     		moveq	r0, #0
 654 000e 7047     		bx	lr
 655              		.cfi_endproc
 656              	.LFE328:
 658              		.section	.text.HAL_EXTI_GetHandle,"ax",%progbits
 659              		.align	1
 660              		.global	HAL_EXTI_GetHandle
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu fpv4-sp-d16
 666              	HAL_EXTI_GetHandle:
 667              	.LVL83:
 668              	.LFB329:
 464:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 465:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 466:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 467:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Store line number as handle private field.
 468:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 469:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  ExtiLine Exti line number.
 470:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *         This parameter can be from 0 to @ref EXTI_LINE_NB.
 471:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval HAL Status.
 472:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 473:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine)
 474:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 669              		.loc 1 474 1 is_stmt 1 view -0
 670              		.cfi_startproc
 671              		@ args = 0, pretend = 0, frame = 0
 672              		@ frame_needed = 0, uses_anonymous_args = 0
 673              		@ link register save eliminated.
 475:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check the parameters */
 476:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_LINE(ExtiLine));
 674              		.loc 1 476 3 view .LVU259
 477:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 478:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check null pointer */
 479:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if (hexti == NULL)
 675              		.loc 1 479 3 view .LVU260
 676              		.loc 1 479 6 is_stmt 0 view .LVU261
 677 0000 10B1     		cbz	r0, .L48
 480:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 481:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     return HAL_ERROR;
 482:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 483:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   else
 484:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 485:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Store line number as handle private field */
 486:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     hexti->Line = ExtiLine;
 678              		.loc 1 486 5 is_stmt 1 view .LVU262
 679              		.loc 1 486 17 is_stmt 0 view .LVU263
 680 0002 0160     		str	r1, [r0]
 487:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 488:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     return HAL_OK;
 681              		.loc 1 488 5 is_stmt 1 view .LVU264
 682              		.loc 1 488 12 is_stmt 0 view .LVU265
 683 0004 0020     		movs	r0, #0
 684              	.LVL84:
 685              		.loc 1 488 12 view .LVU266
 686 0006 7047     		bx	lr
 687              	.LVL85:
 688              	.L48:
 481:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 689              		.loc 1 481 12 view .LVU267
 690 0008 0120     		movs	r0, #1
 691              	.LVL86:
 489:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 490:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 692              		.loc 1 490 1 view .LVU268
 693 000a 7047     		bx	lr
 694              		.cfi_endproc
 695              	.LFE329:
 697              		.section	.text.HAL_EXTI_IRQHandler,"ax",%progbits
 698              		.align	1
 699              		.global	HAL_EXTI_IRQHandler
 700              		.syntax unified
 701              		.thumb
 702              		.thumb_func
 703              		.fpu fpv4-sp-d16
 705              	HAL_EXTI_IRQHandler:
 706              	.LVL87:
 707              	.LFB330:
 491:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 492:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 493:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 494:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @}
 495:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 496:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 497:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /** @addtogroup EXTI_Exported_Functions_Group2
 498:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *  @brief EXTI IO functions.
 499:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *
 500:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** @verbatim
 501:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****  ===============================================================================
 502:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****                        ##### IO operation functions #####
 503:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****  ===============================================================================
 504:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 505:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** @endverbatim
 506:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @{
 507:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 508:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 509:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 510:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Handle EXTI interrupt request.
 511:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 512:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval none.
 513:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 514:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** void HAL_EXTI_IRQHandler(EXTI_HandleTypeDef *hexti)
 515:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 708              		.loc 1 515 1 is_stmt 1 view -0
 709              		.cfi_startproc
 710              		@ args = 0, pretend = 0, frame = 0
 711              		@ frame_needed = 0, uses_anonymous_args = 0
 712              		@ link register save eliminated.
 516:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 713              		.loc 1 516 3 view .LVU270
 517:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t regval;
 714              		.loc 1 517 3 view .LVU271
 518:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t maskline;
 715              		.loc 1 518 3 view .LVU272
 519:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t offset;
 716              		.loc 1 519 3 view .LVU273
 520:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 521:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line register offset */
 522:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   offset = ((hexti->Line & EXTI_REG_MASK) >> EXTI_REG_SHIFT);
 717              		.loc 1 522 3 view .LVU274
 718              		.loc 1 522 19 is_stmt 0 view .LVU275
 719 0000 0368     		ldr	r3, [r0]
 720              	.LVL88:
 523:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line mask */
 524:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   maskline = (1uL << (hexti->Line & EXTI_PIN_MASK));
 721              		.loc 1 524 3 is_stmt 1 view .LVU276
 722              		.loc 1 524 12 is_stmt 0 view .LVU277
 723 0002 0122     		movs	r2, #1
 724              		.loc 1 524 35 view .LVU278
 725 0004 03F01F01 		and	r1, r3, #31
 522:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line mask */
 726              		.loc 1 522 10 view .LVU279
 727 0008 C3F30043 		ubfx	r3, r3, #16, #1
 728              	.LVL89:
 729              		.loc 1 524 12 view .LVU280
 730 000c 8A40     		lsls	r2, r2, r1
 731              	.LVL90:
 525:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 526:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Get pending bit  */
 527:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->PR1 + (EXTI_CONFIG_OFFSET * offset));
 732              		.loc 1 527 3 is_stmt 1 view .LVU281
 733              		.loc 1 527 25 is_stmt 0 view .LVU282
 734 000e 5B01     		lsls	r3, r3, #5
 735              		.loc 1 527 11 view .LVU283
 736 0010 0649     		ldr	r1, .L56
 737              	.LVL91:
 528:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = (*regaddr & maskline);
 738              		.loc 1 528 3 is_stmt 1 view .LVU284
 515:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 739              		.loc 1 515 1 is_stmt 0 view .LVU285
 740 0012 10B4     		push	{r4}
 741              		.cfi_def_cfa_offset 4
 742              		.cfi_offset 4, -4
 743              		.loc 1 528 13 view .LVU286
 744 0014 5C58     		ldr	r4, [r3, r1]
 745              	.LVL92:
 529:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 530:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   if (regval != 0x00u)
 746              		.loc 1 530 3 is_stmt 1 view .LVU287
 747              		.loc 1 530 6 is_stmt 0 view .LVU288
 748 0016 1442     		tst	r4, r2
 749 0018 05D0     		beq	.L49
 531:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   {
 532:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Clear pending bit */
 533:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     *regaddr = maskline;
 750              		.loc 1 533 5 is_stmt 1 view .LVU289
 751              		.loc 1 533 14 is_stmt 0 view .LVU290
 752 001a 5A50     		str	r2, [r3, r1]
 753              	.LVL93:
 534:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 535:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     /* Call pending callback */
 536:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     if (hexti->PendingCallback != NULL)
 754              		.loc 1 536 5 is_stmt 1 view .LVU291
 755              		.loc 1 536 14 is_stmt 0 view .LVU292
 756 001c 4368     		ldr	r3, [r0, #4]
 757              	.LVL94:
 758              		.loc 1 536 8 view .LVU293
 759 001e 13B1     		cbz	r3, .L49
 537:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     {
 538:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****       hexti->PendingCallback();
 760              		.loc 1 538 7 is_stmt 1 view .LVU294
 539:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 540:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   }
 541:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 761              		.loc 1 541 1 is_stmt 0 view .LVU295
 762 0020 5DF8044B 		ldr	r4, [sp], #4
 763              		.cfi_remember_state
 764              		.cfi_restore 4
 765              		.cfi_def_cfa_offset 0
 766              	.LVL95:
 538:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****     }
 767              		.loc 1 538 7 view .LVU296
 768 0024 1847     		bx	r3	@ indirect register sibling call
 769              	.LVL96:
 770              	.L49:
 771              		.cfi_restore_state
 772              		.loc 1 541 1 view .LVU297
 773 0026 5DF8044B 		ldr	r4, [sp], #4
 774              		.cfi_restore 4
 775              		.cfi_def_cfa_offset 0
 776              	.LVL97:
 777              		.loc 1 541 1 view .LVU298
 778 002a 7047     		bx	lr
 779              	.L57:
 780              		.align	2
 781              	.L56:
 782 002c 14040140 		.word	1073808404
 783              		.cfi_endproc
 784              	.LFE330:
 786              		.section	.text.HAL_EXTI_GetPending,"ax",%progbits
 787              		.align	1
 788              		.global	HAL_EXTI_GetPending
 789              		.syntax unified
 790              		.thumb
 791              		.thumb_func
 792              		.fpu fpv4-sp-d16
 794              	HAL_EXTI_GetPending:
 795              	.LVL98:
 796              	.LFB331:
 542:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 543:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 544:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Get interrupt pending bit of a dedicated line.
 545:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 546:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  Edge unused
 547:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval 1 if interrupt is pending else 0.
 548:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 549:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** uint32_t HAL_EXTI_GetPending(EXTI_HandleTypeDef *hexti, uint32_t Edge)
 550:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 797              		.loc 1 550 1 is_stmt 1 view -0
 798              		.cfi_startproc
 799              		@ args = 0, pretend = 0, frame = 0
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801              		@ link register save eliminated.
 551:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 802              		.loc 1 551 3 view .LVU300
 552:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t regval;
 803              		.loc 1 552 3 view .LVU301
 553:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t linepos;
 804              		.loc 1 553 3 view .LVU302
 554:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t maskline;
 805              		.loc 1 554 3 view .LVU303
 555:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t offset;
 806              		.loc 1 555 3 view .LVU304
 556:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 557:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check parameters */
 558:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_LINE(hexti->Line));
 807              		.loc 1 558 3 view .LVU305
 559:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_CONFIG_LINE(hexti->Line));
 808              		.loc 1 559 3 view .LVU306
 560:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   UNUSED(Edge);
 809              		.loc 1 560 3 view .LVU307
 561:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 562:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line register offset */
 563:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   offset = ((hexti->Line & EXTI_REG_MASK) >> EXTI_REG_SHIFT);
 810              		.loc 1 563 3 view .LVU308
 811              		.loc 1 563 19 is_stmt 0 view .LVU309
 812 0000 0368     		ldr	r3, [r0]
 813              	.LVL99:
 564:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line position */
 565:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   linepos = (hexti->Line & EXTI_PIN_MASK);
 814              		.loc 1 565 3 is_stmt 1 view .LVU310
 566:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line mask */
 567:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   maskline = (1uL << linepos);
 568:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 569:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Get pending bit */
 570:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->PR1 + (EXTI_CONFIG_OFFSET * offset));
 815              		.loc 1 570 11 is_stmt 0 view .LVU311
 816 0002 064A     		ldr	r2, .L59
 565:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line mask */
 817              		.loc 1 565 11 view .LVU312
 818 0004 03F01F00 		and	r0, r3, #31
 819              	.LVL100:
 567:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 820              		.loc 1 567 3 is_stmt 1 view .LVU313
 821              		.loc 1 570 3 view .LVU314
 563:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line position */
 822              		.loc 1 563 10 is_stmt 0 view .LVU315
 823 0008 C3F30043 		ubfx	r3, r3, #16, #1
 824              	.LVL101:
 825              		.loc 1 570 25 view .LVU316
 826 000c 5B01     		lsls	r3, r3, #5
 827              	.LVL102:
 571:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 572:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* return 1 if bit is set else 0 */
 573:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regval = ((*regaddr & maskline) >> linepos);
 828              		.loc 1 573 3 is_stmt 1 view .LVU317
 829              		.loc 1 573 14 is_stmt 0 view .LVU318
 830 000e 9A58     		ldr	r2, [r3, r2]
 831              	.LVL103:
 574:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   return regval;
 832              		.loc 1 574 3 is_stmt 1 view .LVU319
 567:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 833              		.loc 1 567 12 is_stmt 0 view .LVU320
 834 0010 0123     		movs	r3, #1
 835              	.LVL104:
 567:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 836              		.loc 1 567 12 view .LVU321
 837 0012 8340     		lsls	r3, r3, r0
 838              	.LVL105:
 573:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   return regval;
 839              		.loc 1 573 23 view .LVU322
 840 0014 1340     		ands	r3, r3, r2
 841              	.LVL106:
 575:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 842              		.loc 1 575 1 view .LVU323
 843 0016 23FA00F0 		lsr	r0, r3, r0
 844              	.LVL107:
 845              		.loc 1 575 1 view .LVU324
 846 001a 7047     		bx	lr
 847              	.L60:
 848              		.align	2
 849              	.L59:
 850 001c 14040140 		.word	1073808404
 851              		.cfi_endproc
 852              	.LFE331:
 854              		.section	.text.HAL_EXTI_ClearPending,"ax",%progbits
 855              		.align	1
 856              		.global	HAL_EXTI_ClearPending
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu fpv4-sp-d16
 862              	HAL_EXTI_ClearPending:
 863              	.LVL108:
 864              	.LFB332:
 576:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 577:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 578:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 579:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Clear interrupt pending bit of a dedicated line.
 580:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 581:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  Edge unused
 582:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval None.
 583:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 584:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** void HAL_EXTI_ClearPending(EXTI_HandleTypeDef *hexti, uint32_t Edge)
 585:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 865              		.loc 1 585 1 is_stmt 1 view -0
 866              		.cfi_startproc
 867              		@ args = 0, pretend = 0, frame = 0
 868              		@ frame_needed = 0, uses_anonymous_args = 0
 869              		@ link register save eliminated.
 586:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 870              		.loc 1 586 3 view .LVU326
 587:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t maskline;
 871              		.loc 1 587 3 view .LVU327
 588:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t offset;
 872              		.loc 1 588 3 view .LVU328
 589:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 590:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check parameters */
 591:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_LINE(hexti->Line));
 873              		.loc 1 591 3 view .LVU329
 592:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_CONFIG_LINE(hexti->Line));
 874              		.loc 1 592 3 view .LVU330
 593:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   UNUSED(Edge);
 875              		.loc 1 593 3 view .LVU331
 594:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 595:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line register offset */
 596:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   offset = ((hexti->Line & EXTI_REG_MASK) >> EXTI_REG_SHIFT);
 876              		.loc 1 596 3 view .LVU332
 877              		.loc 1 596 19 is_stmt 0 view .LVU333
 878 0000 0368     		ldr	r3, [r0]
 879              	.LVL109:
 597:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line mask */
 598:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   maskline = (1uL << (hexti->Line & EXTI_PIN_MASK));
 880              		.loc 1 598 3 is_stmt 1 view .LVU334
 881              		.loc 1 598 12 is_stmt 0 view .LVU335
 882 0002 0122     		movs	r2, #1
 883              		.loc 1 598 35 view .LVU336
 884 0004 03F01F01 		and	r1, r3, #31
 885              	.LVL110:
 596:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Compute line mask */
 886              		.loc 1 596 10 view .LVU337
 887 0008 C3F30043 		ubfx	r3, r3, #16, #1
 888              	.LVL111:
 889              		.loc 1 598 12 view .LVU338
 890 000c 8A40     		lsls	r2, r2, r1
 891              	.LVL112:
 599:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 600:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Get pending register address */
 601:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->PR1 + (EXTI_CONFIG_OFFSET * offset));
 892              		.loc 1 601 3 is_stmt 1 view .LVU339
 893              		.loc 1 601 25 is_stmt 0 view .LVU340
 894 000e 5B01     		lsls	r3, r3, #5
 895              		.loc 1 601 11 view .LVU341
 896 0010 0149     		ldr	r1, .L62
 897              	.LVL113:
 602:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 603:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Clear Pending bit */
 604:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *regaddr =  maskline;
 898              		.loc 1 604 3 is_stmt 1 view .LVU342
 899              		.loc 1 604 12 is_stmt 0 view .LVU343
 900 0012 5A50     		str	r2, [r3, r1]
 901              	.LVL114:
 605:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 902              		.loc 1 605 1 view .LVU344
 903 0014 7047     		bx	lr
 904              	.L63:
 905 0016 00BF     		.align	2
 906              	.L62:
 907 0018 14040140 		.word	1073808404
 908              		.cfi_endproc
 909              	.LFE332:
 911              		.section	.text.HAL_EXTI_GenerateSWI,"ax",%progbits
 912              		.align	1
 913              		.global	HAL_EXTI_GenerateSWI
 914              		.syntax unified
 915              		.thumb
 916              		.thumb_func
 917              		.fpu fpv4-sp-d16
 919              	HAL_EXTI_GenerateSWI:
 920              	.LVL115:
 921              	.LFB333:
 606:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 607:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 608:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** /**
 609:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @brief  Generate a software interrupt for a dedicated line.
 610:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @param  hexti Exti handle.
 611:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   * @retval None.
 612:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   */
 613:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** void HAL_EXTI_GenerateSWI(EXTI_HandleTypeDef *hexti)
 614:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** {
 922              		.loc 1 614 1 is_stmt 1 view -0
 923              		.cfi_startproc
 924              		@ args = 0, pretend = 0, frame = 0
 925              		@ frame_needed = 0, uses_anonymous_args = 0
 926              		@ link register save eliminated.
 615:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   __IO uint32_t *regaddr;
 927              		.loc 1 615 3 view .LVU346
 616:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t maskline;
 928              		.loc 1 616 3 view .LVU347
 617:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   uint32_t offset;
 929              		.loc 1 617 3 view .LVU348
 618:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 619:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* Check parameter */
 620:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_LINE(hexti->Line));
 930              		.loc 1 620 3 view .LVU349
 621:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   assert_param(IS_EXTI_CONFIG_LINE(hexti->Line));
 931              		.loc 1 621 3 view .LVU350
 622:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 623:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line register offset */
 624:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   offset = ((hexti->Line & EXTI_REG_MASK) >> EXTI_REG_SHIFT);
 932              		.loc 1 624 3 view .LVU351
 933              		.loc 1 624 19 is_stmt 0 view .LVU352
 934 0000 0368     		ldr	r3, [r0]
 935              	.LVL116:
 625:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line mask */
 626:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   maskline = (1uL << (hexti->Line & EXTI_PIN_MASK));
 936              		.loc 1 626 3 is_stmt 1 view .LVU353
 937              		.loc 1 626 12 is_stmt 0 view .LVU354
 938 0002 0122     		movs	r2, #1
 939              		.loc 1 626 35 view .LVU355
 940 0004 03F01F01 		and	r1, r3, #31
 624:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   /* compute line mask */
 941              		.loc 1 624 10 view .LVU356
 942 0008 C3F30043 		ubfx	r3, r3, #16, #1
 943              	.LVL117:
 944              		.loc 1 626 12 view .LVU357
 945 000c 8A40     		lsls	r2, r2, r1
 946              	.LVL118:
 627:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** 
 628:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   regaddr = (&EXTI->SWIER1 + (EXTI_CONFIG_OFFSET * offset));
 947              		.loc 1 628 3 is_stmt 1 view .LVU358
 948              		.loc 1 628 28 is_stmt 0 view .LVU359
 949 000e 5B01     		lsls	r3, r3, #5
 950              		.loc 1 628 11 view .LVU360
 951 0010 0149     		ldr	r1, .L65
 952              	.LVL119:
 629:../../..\CubeG4\src/stm32g4xx_hal_exti.c ****   *regaddr = maskline;
 953              		.loc 1 629 3 is_stmt 1 view .LVU361
 954              		.loc 1 629 12 is_stmt 0 view .LVU362
 955 0012 5A50     		str	r2, [r3, r1]
 956              	.LVL120:
 630:../../..\CubeG4\src/stm32g4xx_hal_exti.c **** }
 957              		.loc 1 630 1 view .LVU363
 958 0014 7047     		bx	lr
 959              	.L66:
 960 0016 00BF     		.align	2
 961              	.L65:
 962 0018 10040140 		.word	1073808400
 963              		.cfi_endproc
 964              	.LFE333:
 966              		.text
 967              	.Letext0:
 968              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 969              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 970              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 971              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 972              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 973              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 974              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_exti.h"
 975              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 976              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
