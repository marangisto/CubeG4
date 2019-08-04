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
  13              		.file	"stm32g4xx_hal_cortex.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_NVIC_SetPriorityGrouping,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_NVIC_SetPriorityGrouping
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_NVIC_SetPriorityGrouping:
  27              	.LVL0:
  28              	.LFB325:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_cortex.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @file    stm32g4xx_hal_cortex.c
   4:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief   CORTEX HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *          functionalities of the CORTEX:
   8:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *           + Initialization and Configuration functions
   9:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *           + Peripheral Control functions
  10:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   @verbatim
  12:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ==============================================================================
  13:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                         ##### How to use this driver #####
  14:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ==============================================================================
  15:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  16:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     [..]
  17:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     *** How to configure Interrupts using CORTEX HAL driver ***
  18:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     ===========================================================
  19:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     [..]
  20:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     This section provides functions allowing to configure the NVIC interrupts (IRQ).
  21:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     The Cortex-M4 exceptions are managed by CMSIS functions.
  22:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  23:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     (#) Configure the NVIC Priority Grouping using HAL_NVIC_SetPriorityGrouping() function.
  24:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     (#) Configure the priority of the selected IRQ Channels using HAL_NVIC_SetPriority().
  25:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     (#) Enable the selected IRQ Channels using HAL_NVIC_EnableIRQ().
  26:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  27:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****      -@- When the NVIC_PRIORITYGROUP_0 is selected, IRQ pre-emption is no more possible.
  28:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****          The pending IRQ priority will be managed only by the sub priority.
  29:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  30:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****      -@- IRQ priority order (sorted by highest to lowest priority):
  31:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (+@) Lowest pre-emption priority
  32:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (+@) Lowest sub priority
  33:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (+@) Lowest hardware priority (IRQ number)
  34:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  35:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     [..]
  36:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     *** How to configure SysTick using CORTEX HAL driver ***
  37:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     ========================================================
  38:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     [..]
  39:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     Setup SysTick Timer for time base.
  40:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  41:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****    (+) The HAL_SYSTICK_Config() function calls the SysTick_Config() function which
  42:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        is a CMSIS function that:
  43:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (++) Configures the SysTick Reload register with value passed as function parameter.
  44:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (++) Configures the SysTick IRQ priority to the lowest value (0x0F).
  45:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (++) Resets the SysTick Counter register.
  46:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (++) Configures the SysTick Counter clock source to be Core Clock Source (HCLK).
  47:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (++) Enables the SysTick Interrupt.
  48:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****         (++) Starts the SysTick Counter.
  49:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  50:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****    (+) You can change the SysTick Clock source to be HCLK_Div8 by calling the macro
  51:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        __HAL_CORTEX_SYSTICKCLK_CONFIG(SYSTICK_CLKSOURCE_HCLK_DIV8) just after the
  52:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        HAL_SYSTICK_Config() function call. The __HAL_CORTEX_SYSTICKCLK_CONFIG() macro is defined
  53:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        inside the stm32g4xx_hal_cortex.h file.
  54:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  55:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****    (+) You can change the SysTick IRQ priority by calling the
  56:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        HAL_NVIC_SetPriority(SysTick_IRQn,...) function just after the HAL_SYSTICK_Config() function
  57:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        call. The HAL_NVIC_SetPriority() call the NVIC_SetPriority() function which is a CMSIS funct
  58:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  59:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****    (+) To adjust the SysTick time base, use the following formula:
  60:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  61:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        Reload Value = SysTick Counter Clock (Hz) x  Desired Time base (s)
  62:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        (++) Reload Value is the parameter to be passed for HAL_SYSTICK_Config() function
  63:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****        (++) Reload Value should not exceed 0xFFFFFF
  64:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  65:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   @endverbatim
  66:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ******************************************************************************
  67:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  68:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   The table below gives the allowed values of the pre-emption priority and subpriority according
  69:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   to the Priority Grouping configuration performed by HAL_NVIC_SetPriorityGrouping() function.
  70:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   
  71:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     ===============================================================================================
  72:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****       NVIC_PriorityGroup   | NVIC_IRQChannelPreemptionPriority | NVIC_IRQChannelSubPriority  |     
  73:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     ===============================================================================================
  74:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****      NVIC_PRIORITYGROUP_0  |                0                  |            0-15             | 0 bi
  75:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                            |                                   |                             | 4 bi
  76:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     -----------------------------------------------------------------------------------------------
  77:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****      NVIC_PRIORITYGROUP_1  |                0-1                |            0-7              | 1 bi
  78:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                            |                                   |                             | 3 bi
  79:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     -----------------------------------------------------------------------------------------------
  80:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****      NVIC_PRIORITYGROUP_2  |                0-3                |            0-3              | 2 bi
  81:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                            |                                   |                             | 2 bi
  82:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     -----------------------------------------------------------------------------------------------
  83:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****      NVIC_PRIORITYGROUP_3  |                0-7                |            0-1              | 3 bi
  84:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                            |                                   |                             | 1 bi
  85:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     -----------------------------------------------------------------------------------------------
  86:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****      NVIC_PRIORITYGROUP_4  |                0-15               |            0                | 4 bi
  87:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                            |                                   |                             | 0 bi
  88:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     ===============================================================================================
  89:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
  90:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ******************************************************************************
  91:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @attention
  92:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *
  93:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  94:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * All rights reserved.</center></h2>
  95:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *
  96:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  97:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * the "License"; You may not use this file except in compliance with the
  98:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * License. You may obtain a copy of the License at:
  99:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                        opensource.org/licenses/BSD-3-Clause
 100:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *
 101:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ******************************************************************************
 102:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 103:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 104:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /* Includes ------------------------------------------------------------------*/
 105:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** #include "stm32g4xx_hal.h"
 106:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 107:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /** @addtogroup STM32G4xx_HAL_Driver
 108:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @{
 109:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 110:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 111:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /** @addtogroup CORTEX
 112:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @{
 113:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 114:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 115:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** #ifdef HAL_CORTEX_MODULE_ENABLED
 116:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 117:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /* Private types -------------------------------------------------------------*/
 118:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /* Private variables ---------------------------------------------------------*/
 119:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /* Private constants ---------------------------------------------------------*/
 120:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /* Private macros ------------------------------------------------------------*/
 121:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /* Private functions ---------------------------------------------------------*/
 122:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /* Exported functions --------------------------------------------------------*/
 123:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 124:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /** @addtogroup CORTEX_Exported_Functions
 125:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @{
 126:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 127:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 128:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 129:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /** @addtogroup CORTEX_Exported_Functions_Group1
 130:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****  *  @brief    Initialization and Configuration functions
 131:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****  *
 132:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** @verbatim
 133:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ==============================================================================
 134:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****               ##### Initialization and Configuration functions #####
 135:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ==============================================================================
 136:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     [..]
 137:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****       This section provides the CORTEX HAL driver functions allowing to configure Interrupts
 138:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****       SysTick functionalities
 139:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 140:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** @endverbatim
 141:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @{
 142:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 143:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 144:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 145:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 146:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Set the priority grouping field (pre-emption priority and subpriority)
 147:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         using the required unlock sequence.
 148:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  PriorityGroup: The priority grouping bits length.
 149:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be one of the following values:
 150:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_0: 0 bit  for pre-emption priority,
 151:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                    4 bits for subpriority
 152:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_1: 1 bit  for pre-emption priority,
 153:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                    3 bits for subpriority
 154:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_2: 2 bits for pre-emption priority,
 155:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                    2 bits for subpriority
 156:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_3: 3 bits for pre-emption priority,
 157:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                    1 bit  for subpriority
 158:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         @arg NVIC_PRIORITYGROUP_4: 4 bits for pre-emption priority,
 159:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                    0 bit  for subpriority
 160:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @note   When the NVIC_PriorityGroup_0 is selected, IRQ pre-emption is no more possible.
 161:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         The pending IRQ priority will be managed only by the subpriority.
 162:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 163:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 164:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
 165:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
  30              		.loc 1 165 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 166:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 167:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
  35              		.loc 1 167 3 view .LVU1
 168:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 169:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
 170:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_SetPriorityGrouping(PriorityGroup);
  36              		.loc 1 170 3 view .LVU2
  37              	.LBB20:
  38              	.LBI20:
  39              		.file 2 "../../..\\CubeG4\\include/core_cm4.h"
   1:../../..\CubeG4\include/core_cm4.h **** /**************************************************************************//**
   2:../../..\CubeG4\include/core_cm4.h ****  * @file     core_cm4.h
   3:../../..\CubeG4\include/core_cm4.h ****  * @brief    CMSIS Cortex-M4 Core Peripheral Access Layer Header File
   4:../../..\CubeG4\include/core_cm4.h ****  * @version  V5.0.8
   5:../../..\CubeG4\include/core_cm4.h ****  * @date     04. June 2018
   6:../../..\CubeG4\include/core_cm4.h ****  ******************************************************************************/
   7:../../..\CubeG4\include/core_cm4.h **** /*
   8:../../..\CubeG4\include/core_cm4.h ****  * Copyright (c) 2009-2018 Arm Limited. All rights reserved.
   9:../../..\CubeG4\include/core_cm4.h ****  *
  10:../../..\CubeG4\include/core_cm4.h ****  * SPDX-License-Identifier: Apache-2.0
  11:../../..\CubeG4\include/core_cm4.h ****  *
  12:../../..\CubeG4\include/core_cm4.h ****  * Licensed under the Apache License, Version 2.0 (the License); you may
  13:../../..\CubeG4\include/core_cm4.h ****  * not use this file except in compliance with the License.
  14:../../..\CubeG4\include/core_cm4.h ****  * You may obtain a copy of the License at
  15:../../..\CubeG4\include/core_cm4.h ****  *
  16:../../..\CubeG4\include/core_cm4.h ****  * www.apache.org/licenses/LICENSE-2.0
  17:../../..\CubeG4\include/core_cm4.h ****  *
  18:../../..\CubeG4\include/core_cm4.h ****  * Unless required by applicable law or agreed to in writing, software
  19:../../..\CubeG4\include/core_cm4.h ****  * distributed under the License is distributed on an AS IS BASIS, WITHOUT
  20:../../..\CubeG4\include/core_cm4.h ****  * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  21:../../..\CubeG4\include/core_cm4.h ****  * See the License for the specific language governing permissions and
  22:../../..\CubeG4\include/core_cm4.h ****  * limitations under the License.
  23:../../..\CubeG4\include/core_cm4.h ****  */
  24:../../..\CubeG4\include/core_cm4.h **** 
  25:../../..\CubeG4\include/core_cm4.h **** #if   defined ( __ICCARM__ )
  26:../../..\CubeG4\include/core_cm4.h ****   #pragma system_include         /* treat file as system include file for MISRA check */
  27:../../..\CubeG4\include/core_cm4.h **** #elif defined (__clang__)
  28:../../..\CubeG4\include/core_cm4.h ****   #pragma clang system_header   /* treat file as system include file */
  29:../../..\CubeG4\include/core_cm4.h **** #endif
  30:../../..\CubeG4\include/core_cm4.h **** 
  31:../../..\CubeG4\include/core_cm4.h **** #ifndef __CORE_CM4_H_GENERIC
  32:../../..\CubeG4\include/core_cm4.h **** #define __CORE_CM4_H_GENERIC
  33:../../..\CubeG4\include/core_cm4.h **** 
  34:../../..\CubeG4\include/core_cm4.h **** #include <stdint.h>
  35:../../..\CubeG4\include/core_cm4.h **** 
  36:../../..\CubeG4\include/core_cm4.h **** #ifdef __cplusplus
  37:../../..\CubeG4\include/core_cm4.h ****  extern "C" {
  38:../../..\CubeG4\include/core_cm4.h **** #endif
  39:../../..\CubeG4\include/core_cm4.h **** 
  40:../../..\CubeG4\include/core_cm4.h **** /**
  41:../../..\CubeG4\include/core_cm4.h ****   \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  42:../../..\CubeG4\include/core_cm4.h ****   CMSIS violates the following MISRA-C:2004 rules:
  43:../../..\CubeG4\include/core_cm4.h **** 
  44:../../..\CubeG4\include/core_cm4.h ****    \li Required Rule 8.5, object/function definition in header file.<br>
  45:../../..\CubeG4\include/core_cm4.h ****      Function definitions in header files are used to allow 'inlining'.
  46:../../..\CubeG4\include/core_cm4.h **** 
  47:../../..\CubeG4\include/core_cm4.h ****    \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  48:../../..\CubeG4\include/core_cm4.h ****      Unions are used for effective representation of core registers.
  49:../../..\CubeG4\include/core_cm4.h **** 
  50:../../..\CubeG4\include/core_cm4.h ****    \li Advisory Rule 19.7, Function-like macro defined.<br>
  51:../../..\CubeG4\include/core_cm4.h ****      Function-like macros are used to allow more efficient code.
  52:../../..\CubeG4\include/core_cm4.h ****  */
  53:../../..\CubeG4\include/core_cm4.h **** 
  54:../../..\CubeG4\include/core_cm4.h **** 
  55:../../..\CubeG4\include/core_cm4.h **** /*******************************************************************************
  56:../../..\CubeG4\include/core_cm4.h ****  *                 CMSIS definitions
  57:../../..\CubeG4\include/core_cm4.h ****  ******************************************************************************/
  58:../../..\CubeG4\include/core_cm4.h **** /**
  59:../../..\CubeG4\include/core_cm4.h ****   \ingroup Cortex_M4
  60:../../..\CubeG4\include/core_cm4.h ****   @{
  61:../../..\CubeG4\include/core_cm4.h ****  */
  62:../../..\CubeG4\include/core_cm4.h **** 
  63:../../..\CubeG4\include/core_cm4.h **** #include "cmsis_version.h"
  64:../../..\CubeG4\include/core_cm4.h **** 
  65:../../..\CubeG4\include/core_cm4.h **** /* CMSIS CM4 definitions */
  66:../../..\CubeG4\include/core_cm4.h **** #define __CM4_CMSIS_VERSION_MAIN  (__CM_CMSIS_VERSION_MAIN)              /*!< \deprecated [31:16] C
  67:../../..\CubeG4\include/core_cm4.h **** #define __CM4_CMSIS_VERSION_SUB   (__CM_CMSIS_VERSION_SUB)               /*!< \deprecated [15:0]  C
  68:../../..\CubeG4\include/core_cm4.h **** #define __CM4_CMSIS_VERSION       ((__CM4_CMSIS_VERSION_MAIN << 16U) | \
  69:../../..\CubeG4\include/core_cm4.h ****                                     __CM4_CMSIS_VERSION_SUB           )  /*!< \deprecated CMSIS HAL
  70:../../..\CubeG4\include/core_cm4.h **** 
  71:../../..\CubeG4\include/core_cm4.h **** #define __CORTEX_M                (4U)                                   /*!< Cortex-M Core */
  72:../../..\CubeG4\include/core_cm4.h **** 
  73:../../..\CubeG4\include/core_cm4.h **** /** __FPU_USED indicates whether an FPU is used or not.
  74:../../..\CubeG4\include/core_cm4.h ****     For this, __FPU_PRESENT has to be checked prior to making use of FPU specific registers and fun
  75:../../..\CubeG4\include/core_cm4.h **** */
  76:../../..\CubeG4\include/core_cm4.h **** #if defined ( __CC_ARM )
  77:../../..\CubeG4\include/core_cm4.h ****   #if defined __TARGET_FPU_VFP
  78:../../..\CubeG4\include/core_cm4.h ****     #if defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)
  79:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       1U
  80:../../..\CubeG4\include/core_cm4.h ****     #else
  81:../../..\CubeG4\include/core_cm4.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
  82:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       0U
  83:../../..\CubeG4\include/core_cm4.h ****     #endif
  84:../../..\CubeG4\include/core_cm4.h ****   #else
  85:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_USED         0U
  86:../../..\CubeG4\include/core_cm4.h ****   #endif
  87:../../..\CubeG4\include/core_cm4.h **** 
  88:../../..\CubeG4\include/core_cm4.h **** #elif defined (__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  89:../../..\CubeG4\include/core_cm4.h ****   #if defined __ARM_PCS_VFP
  90:../../..\CubeG4\include/core_cm4.h ****     #if defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)
  91:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       1U
  92:../../..\CubeG4\include/core_cm4.h ****     #else
  93:../../..\CubeG4\include/core_cm4.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
  94:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       0U
  95:../../..\CubeG4\include/core_cm4.h ****     #endif
  96:../../..\CubeG4\include/core_cm4.h ****   #else
  97:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_USED         0U
  98:../../..\CubeG4\include/core_cm4.h ****   #endif
  99:../../..\CubeG4\include/core_cm4.h **** 
 100:../../..\CubeG4\include/core_cm4.h **** #elif defined ( __GNUC__ )
 101:../../..\CubeG4\include/core_cm4.h ****   #if defined (__VFP_FP__) && !defined(__SOFTFP__)
 102:../../..\CubeG4\include/core_cm4.h ****     #if defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)
 103:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       1U
 104:../../..\CubeG4\include/core_cm4.h ****     #else
 105:../../..\CubeG4\include/core_cm4.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 106:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       0U
 107:../../..\CubeG4\include/core_cm4.h ****     #endif
 108:../../..\CubeG4\include/core_cm4.h ****   #else
 109:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_USED         0U
 110:../../..\CubeG4\include/core_cm4.h ****   #endif
 111:../../..\CubeG4\include/core_cm4.h **** 
 112:../../..\CubeG4\include/core_cm4.h **** #elif defined ( __ICCARM__ )
 113:../../..\CubeG4\include/core_cm4.h ****   #if defined __ARMVFP__
 114:../../..\CubeG4\include/core_cm4.h ****     #if defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)
 115:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       1U
 116:../../..\CubeG4\include/core_cm4.h ****     #else
 117:../../..\CubeG4\include/core_cm4.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 118:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       0U
 119:../../..\CubeG4\include/core_cm4.h ****     #endif
 120:../../..\CubeG4\include/core_cm4.h ****   #else
 121:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_USED         0U
 122:../../..\CubeG4\include/core_cm4.h ****   #endif
 123:../../..\CubeG4\include/core_cm4.h **** 
 124:../../..\CubeG4\include/core_cm4.h **** #elif defined ( __TI_ARM__ )
 125:../../..\CubeG4\include/core_cm4.h ****   #if defined __TI_VFP_SUPPORT__
 126:../../..\CubeG4\include/core_cm4.h ****     #if defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)
 127:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       1U
 128:../../..\CubeG4\include/core_cm4.h ****     #else
 129:../../..\CubeG4\include/core_cm4.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 130:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       0U
 131:../../..\CubeG4\include/core_cm4.h ****     #endif
 132:../../..\CubeG4\include/core_cm4.h ****   #else
 133:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_USED         0U
 134:../../..\CubeG4\include/core_cm4.h ****   #endif
 135:../../..\CubeG4\include/core_cm4.h **** 
 136:../../..\CubeG4\include/core_cm4.h **** #elif defined ( __TASKING__ )
 137:../../..\CubeG4\include/core_cm4.h ****   #if defined __FPU_VFP__
 138:../../..\CubeG4\include/core_cm4.h ****     #if defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)
 139:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       1U
 140:../../..\CubeG4\include/core_cm4.h ****     #else
 141:../../..\CubeG4\include/core_cm4.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 142:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       0U
 143:../../..\CubeG4\include/core_cm4.h ****     #endif
 144:../../..\CubeG4\include/core_cm4.h ****   #else
 145:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_USED         0U
 146:../../..\CubeG4\include/core_cm4.h ****   #endif
 147:../../..\CubeG4\include/core_cm4.h **** 
 148:../../..\CubeG4\include/core_cm4.h **** #elif defined ( __CSMC__ )
 149:../../..\CubeG4\include/core_cm4.h ****   #if ( __CSMC__ & 0x400U)
 150:../../..\CubeG4\include/core_cm4.h ****     #if defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)
 151:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       1U
 152:../../..\CubeG4\include/core_cm4.h ****     #else
 153:../../..\CubeG4\include/core_cm4.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 154:../../..\CubeG4\include/core_cm4.h ****       #define __FPU_USED       0U
 155:../../..\CubeG4\include/core_cm4.h ****     #endif
 156:../../..\CubeG4\include/core_cm4.h ****   #else
 157:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_USED         0U
 158:../../..\CubeG4\include/core_cm4.h ****   #endif
 159:../../..\CubeG4\include/core_cm4.h **** 
 160:../../..\CubeG4\include/core_cm4.h **** #endif
 161:../../..\CubeG4\include/core_cm4.h **** 
 162:../../..\CubeG4\include/core_cm4.h **** #include "cmsis_compiler.h"               /* CMSIS compiler specific defines */
 163:../../..\CubeG4\include/core_cm4.h **** 
 164:../../..\CubeG4\include/core_cm4.h **** 
 165:../../..\CubeG4\include/core_cm4.h **** #ifdef __cplusplus
 166:../../..\CubeG4\include/core_cm4.h **** }
 167:../../..\CubeG4\include/core_cm4.h **** #endif
 168:../../..\CubeG4\include/core_cm4.h **** 
 169:../../..\CubeG4\include/core_cm4.h **** #endif /* __CORE_CM4_H_GENERIC */
 170:../../..\CubeG4\include/core_cm4.h **** 
 171:../../..\CubeG4\include/core_cm4.h **** #ifndef __CMSIS_GENERIC
 172:../../..\CubeG4\include/core_cm4.h **** 
 173:../../..\CubeG4\include/core_cm4.h **** #ifndef __CORE_CM4_H_DEPENDANT
 174:../../..\CubeG4\include/core_cm4.h **** #define __CORE_CM4_H_DEPENDANT
 175:../../..\CubeG4\include/core_cm4.h **** 
 176:../../..\CubeG4\include/core_cm4.h **** #ifdef __cplusplus
 177:../../..\CubeG4\include/core_cm4.h ****  extern "C" {
 178:../../..\CubeG4\include/core_cm4.h **** #endif
 179:../../..\CubeG4\include/core_cm4.h **** 
 180:../../..\CubeG4\include/core_cm4.h **** /* check device defines and use defaults */
 181:../../..\CubeG4\include/core_cm4.h **** #if defined __CHECK_DEVICE_DEFINES
 182:../../..\CubeG4\include/core_cm4.h ****   #ifndef __CM4_REV
 183:../../..\CubeG4\include/core_cm4.h ****     #define __CM4_REV               0x0000U
 184:../../..\CubeG4\include/core_cm4.h ****     #warning "__CM4_REV not defined in device header file; using default!"
 185:../../..\CubeG4\include/core_cm4.h ****   #endif
 186:../../..\CubeG4\include/core_cm4.h **** 
 187:../../..\CubeG4\include/core_cm4.h ****   #ifndef __FPU_PRESENT
 188:../../..\CubeG4\include/core_cm4.h ****     #define __FPU_PRESENT             0U
 189:../../..\CubeG4\include/core_cm4.h ****     #warning "__FPU_PRESENT not defined in device header file; using default!"
 190:../../..\CubeG4\include/core_cm4.h ****   #endif
 191:../../..\CubeG4\include/core_cm4.h **** 
 192:../../..\CubeG4\include/core_cm4.h ****   #ifndef __MPU_PRESENT
 193:../../..\CubeG4\include/core_cm4.h ****     #define __MPU_PRESENT             0U
 194:../../..\CubeG4\include/core_cm4.h ****     #warning "__MPU_PRESENT not defined in device header file; using default!"
 195:../../..\CubeG4\include/core_cm4.h ****   #endif
 196:../../..\CubeG4\include/core_cm4.h **** 
 197:../../..\CubeG4\include/core_cm4.h ****   #ifndef __NVIC_PRIO_BITS
 198:../../..\CubeG4\include/core_cm4.h ****     #define __NVIC_PRIO_BITS          3U
 199:../../..\CubeG4\include/core_cm4.h ****     #warning "__NVIC_PRIO_BITS not defined in device header file; using default!"
 200:../../..\CubeG4\include/core_cm4.h ****   #endif
 201:../../..\CubeG4\include/core_cm4.h **** 
 202:../../..\CubeG4\include/core_cm4.h ****   #ifndef __Vendor_SysTickConfig
 203:../../..\CubeG4\include/core_cm4.h ****     #define __Vendor_SysTickConfig    0U
 204:../../..\CubeG4\include/core_cm4.h ****     #warning "__Vendor_SysTickConfig not defined in device header file; using default!"
 205:../../..\CubeG4\include/core_cm4.h ****   #endif
 206:../../..\CubeG4\include/core_cm4.h **** #endif
 207:../../..\CubeG4\include/core_cm4.h **** 
 208:../../..\CubeG4\include/core_cm4.h **** /* IO definitions (access restrictions to peripheral registers) */
 209:../../..\CubeG4\include/core_cm4.h **** /**
 210:../../..\CubeG4\include/core_cm4.h ****     \defgroup CMSIS_glob_defs CMSIS Global Defines
 211:../../..\CubeG4\include/core_cm4.h **** 
 212:../../..\CubeG4\include/core_cm4.h ****     <strong>IO Type Qualifiers</strong> are used
 213:../../..\CubeG4\include/core_cm4.h ****     \li to specify the access to peripheral variables.
 214:../../..\CubeG4\include/core_cm4.h ****     \li for automatic generation of peripheral register debug information.
 215:../../..\CubeG4\include/core_cm4.h **** */
 216:../../..\CubeG4\include/core_cm4.h **** #ifdef __cplusplus
 217:../../..\CubeG4\include/core_cm4.h ****   #define   __I     volatile             /*!< Defines 'read only' permissions */
 218:../../..\CubeG4\include/core_cm4.h **** #else
 219:../../..\CubeG4\include/core_cm4.h ****   #define   __I     volatile const       /*!< Defines 'read only' permissions */
 220:../../..\CubeG4\include/core_cm4.h **** #endif
 221:../../..\CubeG4\include/core_cm4.h **** #define     __O     volatile             /*!< Defines 'write only' permissions */
 222:../../..\CubeG4\include/core_cm4.h **** #define     __IO    volatile             /*!< Defines 'read / write' permissions */
 223:../../..\CubeG4\include/core_cm4.h **** 
 224:../../..\CubeG4\include/core_cm4.h **** /* following defines should be used for structure members */
 225:../../..\CubeG4\include/core_cm4.h **** #define     __IM     volatile const      /*! Defines 'read only' structure member permissions */
 226:../../..\CubeG4\include/core_cm4.h **** #define     __OM     volatile            /*! Defines 'write only' structure member permissions */
 227:../../..\CubeG4\include/core_cm4.h **** #define     __IOM    volatile            /*! Defines 'read / write' structure member permissions */
 228:../../..\CubeG4\include/core_cm4.h **** 
 229:../../..\CubeG4\include/core_cm4.h **** /*@} end of group Cortex_M4 */
 230:../../..\CubeG4\include/core_cm4.h **** 
 231:../../..\CubeG4\include/core_cm4.h **** 
 232:../../..\CubeG4\include/core_cm4.h **** 
 233:../../..\CubeG4\include/core_cm4.h **** /*******************************************************************************
 234:../../..\CubeG4\include/core_cm4.h ****  *                 Register Abstraction
 235:../../..\CubeG4\include/core_cm4.h ****   Core Register contain:
 236:../../..\CubeG4\include/core_cm4.h ****   - Core Register
 237:../../..\CubeG4\include/core_cm4.h ****   - Core NVIC Register
 238:../../..\CubeG4\include/core_cm4.h ****   - Core SCB Register
 239:../../..\CubeG4\include/core_cm4.h ****   - Core SysTick Register
 240:../../..\CubeG4\include/core_cm4.h ****   - Core Debug Register
 241:../../..\CubeG4\include/core_cm4.h ****   - Core MPU Register
 242:../../..\CubeG4\include/core_cm4.h ****   - Core FPU Register
 243:../../..\CubeG4\include/core_cm4.h ****  ******************************************************************************/
 244:../../..\CubeG4\include/core_cm4.h **** /**
 245:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_core_register Defines and Type Definitions
 246:../../..\CubeG4\include/core_cm4.h ****   \brief Type definitions and defines for Cortex-M processor based devices.
 247:../../..\CubeG4\include/core_cm4.h **** */
 248:../../..\CubeG4\include/core_cm4.h **** 
 249:../../..\CubeG4\include/core_cm4.h **** /**
 250:../../..\CubeG4\include/core_cm4.h ****   \ingroup    CMSIS_core_register
 251:../../..\CubeG4\include/core_cm4.h ****   \defgroup   CMSIS_CORE  Status and Control Registers
 252:../../..\CubeG4\include/core_cm4.h ****   \brief      Core Register type definitions.
 253:../../..\CubeG4\include/core_cm4.h ****   @{
 254:../../..\CubeG4\include/core_cm4.h ****  */
 255:../../..\CubeG4\include/core_cm4.h **** 
 256:../../..\CubeG4\include/core_cm4.h **** /**
 257:../../..\CubeG4\include/core_cm4.h ****   \brief  Union type to access the Application Program Status Register (APSR).
 258:../../..\CubeG4\include/core_cm4.h ****  */
 259:../../..\CubeG4\include/core_cm4.h **** typedef union
 260:../../..\CubeG4\include/core_cm4.h **** {
 261:../../..\CubeG4\include/core_cm4.h ****   struct
 262:../../..\CubeG4\include/core_cm4.h ****   {
 263:../../..\CubeG4\include/core_cm4.h ****     uint32_t _reserved0:16;              /*!< bit:  0..15  Reserved */
 264:../../..\CubeG4\include/core_cm4.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags */
 265:../../..\CubeG4\include/core_cm4.h ****     uint32_t _reserved1:7;               /*!< bit: 20..26  Reserved */
 266:../../..\CubeG4\include/core_cm4.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag */
 267:../../..\CubeG4\include/core_cm4.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag */
 268:../../..\CubeG4\include/core_cm4.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag */
 269:../../..\CubeG4\include/core_cm4.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag */
 270:../../..\CubeG4\include/core_cm4.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag */
 271:../../..\CubeG4\include/core_cm4.h ****   } b;                                   /*!< Structure used for bit  access */
 272:../../..\CubeG4\include/core_cm4.h ****   uint32_t w;                            /*!< Type      used for word access */
 273:../../..\CubeG4\include/core_cm4.h **** } APSR_Type;
 274:../../..\CubeG4\include/core_cm4.h **** 
 275:../../..\CubeG4\include/core_cm4.h **** /* APSR Register Definitions */
 276:../../..\CubeG4\include/core_cm4.h **** #define APSR_N_Pos                         31U                                            /*!< APSR
 277:../../..\CubeG4\include/core_cm4.h **** #define APSR_N_Msk                         (1UL << APSR_N_Pos)                            /*!< APSR
 278:../../..\CubeG4\include/core_cm4.h **** 
 279:../../..\CubeG4\include/core_cm4.h **** #define APSR_Z_Pos                         30U                                            /*!< APSR
 280:../../..\CubeG4\include/core_cm4.h **** #define APSR_Z_Msk                         (1UL << APSR_Z_Pos)                            /*!< APSR
 281:../../..\CubeG4\include/core_cm4.h **** 
 282:../../..\CubeG4\include/core_cm4.h **** #define APSR_C_Pos                         29U                                            /*!< APSR
 283:../../..\CubeG4\include/core_cm4.h **** #define APSR_C_Msk                         (1UL << APSR_C_Pos)                            /*!< APSR
 284:../../..\CubeG4\include/core_cm4.h **** 
 285:../../..\CubeG4\include/core_cm4.h **** #define APSR_V_Pos                         28U                                            /*!< APSR
 286:../../..\CubeG4\include/core_cm4.h **** #define APSR_V_Msk                         (1UL << APSR_V_Pos)                            /*!< APSR
 287:../../..\CubeG4\include/core_cm4.h **** 
 288:../../..\CubeG4\include/core_cm4.h **** #define APSR_Q_Pos                         27U                                            /*!< APSR
 289:../../..\CubeG4\include/core_cm4.h **** #define APSR_Q_Msk                         (1UL << APSR_Q_Pos)                            /*!< APSR
 290:../../..\CubeG4\include/core_cm4.h **** 
 291:../../..\CubeG4\include/core_cm4.h **** #define APSR_GE_Pos                        16U                                            /*!< APSR
 292:../../..\CubeG4\include/core_cm4.h **** #define APSR_GE_Msk                        (0xFUL << APSR_GE_Pos)                         /*!< APSR
 293:../../..\CubeG4\include/core_cm4.h **** 
 294:../../..\CubeG4\include/core_cm4.h **** 
 295:../../..\CubeG4\include/core_cm4.h **** /**
 296:../../..\CubeG4\include/core_cm4.h ****   \brief  Union type to access the Interrupt Program Status Register (IPSR).
 297:../../..\CubeG4\include/core_cm4.h ****  */
 298:../../..\CubeG4\include/core_cm4.h **** typedef union
 299:../../..\CubeG4\include/core_cm4.h **** {
 300:../../..\CubeG4\include/core_cm4.h ****   struct
 301:../../..\CubeG4\include/core_cm4.h ****   {
 302:../../..\CubeG4\include/core_cm4.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number */
 303:../../..\CubeG4\include/core_cm4.h ****     uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved */
 304:../../..\CubeG4\include/core_cm4.h ****   } b;                                   /*!< Structure used for bit  access */
 305:../../..\CubeG4\include/core_cm4.h ****   uint32_t w;                            /*!< Type      used for word access */
 306:../../..\CubeG4\include/core_cm4.h **** } IPSR_Type;
 307:../../..\CubeG4\include/core_cm4.h **** 
 308:../../..\CubeG4\include/core_cm4.h **** /* IPSR Register Definitions */
 309:../../..\CubeG4\include/core_cm4.h **** #define IPSR_ISR_Pos                        0U                                            /*!< IPSR
 310:../../..\CubeG4\include/core_cm4.h **** #define IPSR_ISR_Msk                       (0x1FFUL /*<< IPSR_ISR_Pos*/)                  /*!< IPSR
 311:../../..\CubeG4\include/core_cm4.h **** 
 312:../../..\CubeG4\include/core_cm4.h **** 
 313:../../..\CubeG4\include/core_cm4.h **** /**
 314:../../..\CubeG4\include/core_cm4.h ****   \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 315:../../..\CubeG4\include/core_cm4.h ****  */
 316:../../..\CubeG4\include/core_cm4.h **** typedef union
 317:../../..\CubeG4\include/core_cm4.h **** {
 318:../../..\CubeG4\include/core_cm4.h ****   struct
 319:../../..\CubeG4\include/core_cm4.h ****   {
 320:../../..\CubeG4\include/core_cm4.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number */
 321:../../..\CubeG4\include/core_cm4.h ****     uint32_t _reserved0:1;               /*!< bit:      9  Reserved */
 322:../../..\CubeG4\include/core_cm4.h ****     uint32_t ICI_IT_1:6;                 /*!< bit: 10..15  ICI/IT part 1 */
 323:../../..\CubeG4\include/core_cm4.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags */
 324:../../..\CubeG4\include/core_cm4.h ****     uint32_t _reserved1:4;               /*!< bit: 20..23  Reserved */
 325:../../..\CubeG4\include/core_cm4.h ****     uint32_t T:1;                        /*!< bit:     24  Thumb bit */
 326:../../..\CubeG4\include/core_cm4.h ****     uint32_t ICI_IT_2:2;                 /*!< bit: 25..26  ICI/IT part 2 */
 327:../../..\CubeG4\include/core_cm4.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag */
 328:../../..\CubeG4\include/core_cm4.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag */
 329:../../..\CubeG4\include/core_cm4.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag */
 330:../../..\CubeG4\include/core_cm4.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag */
 331:../../..\CubeG4\include/core_cm4.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag */
 332:../../..\CubeG4\include/core_cm4.h ****   } b;                                   /*!< Structure used for bit  access */
 333:../../..\CubeG4\include/core_cm4.h ****   uint32_t w;                            /*!< Type      used for word access */
 334:../../..\CubeG4\include/core_cm4.h **** } xPSR_Type;
 335:../../..\CubeG4\include/core_cm4.h **** 
 336:../../..\CubeG4\include/core_cm4.h **** /* xPSR Register Definitions */
 337:../../..\CubeG4\include/core_cm4.h **** #define xPSR_N_Pos                         31U                                            /*!< xPSR
 338:../../..\CubeG4\include/core_cm4.h **** #define xPSR_N_Msk                         (1UL << xPSR_N_Pos)                            /*!< xPSR
 339:../../..\CubeG4\include/core_cm4.h **** 
 340:../../..\CubeG4\include/core_cm4.h **** #define xPSR_Z_Pos                         30U                                            /*!< xPSR
 341:../../..\CubeG4\include/core_cm4.h **** #define xPSR_Z_Msk                         (1UL << xPSR_Z_Pos)                            /*!< xPSR
 342:../../..\CubeG4\include/core_cm4.h **** 
 343:../../..\CubeG4\include/core_cm4.h **** #define xPSR_C_Pos                         29U                                            /*!< xPSR
 344:../../..\CubeG4\include/core_cm4.h **** #define xPSR_C_Msk                         (1UL << xPSR_C_Pos)                            /*!< xPSR
 345:../../..\CubeG4\include/core_cm4.h **** 
 346:../../..\CubeG4\include/core_cm4.h **** #define xPSR_V_Pos                         28U                                            /*!< xPSR
 347:../../..\CubeG4\include/core_cm4.h **** #define xPSR_V_Msk                         (1UL << xPSR_V_Pos)                            /*!< xPSR
 348:../../..\CubeG4\include/core_cm4.h **** 
 349:../../..\CubeG4\include/core_cm4.h **** #define xPSR_Q_Pos                         27U                                            /*!< xPSR
 350:../../..\CubeG4\include/core_cm4.h **** #define xPSR_Q_Msk                         (1UL << xPSR_Q_Pos)                            /*!< xPSR
 351:../../..\CubeG4\include/core_cm4.h **** 
 352:../../..\CubeG4\include/core_cm4.h **** #define xPSR_ICI_IT_2_Pos                  25U                                            /*!< xPSR
 353:../../..\CubeG4\include/core_cm4.h **** #define xPSR_ICI_IT_2_Msk                  (3UL << xPSR_ICI_IT_2_Pos)                     /*!< xPSR
 354:../../..\CubeG4\include/core_cm4.h **** 
 355:../../..\CubeG4\include/core_cm4.h **** #define xPSR_T_Pos                         24U                                            /*!< xPSR
 356:../../..\CubeG4\include/core_cm4.h **** #define xPSR_T_Msk                         (1UL << xPSR_T_Pos)                            /*!< xPSR
 357:../../..\CubeG4\include/core_cm4.h **** 
 358:../../..\CubeG4\include/core_cm4.h **** #define xPSR_GE_Pos                        16U                                            /*!< xPSR
 359:../../..\CubeG4\include/core_cm4.h **** #define xPSR_GE_Msk                        (0xFUL << xPSR_GE_Pos)                         /*!< xPSR
 360:../../..\CubeG4\include/core_cm4.h **** 
 361:../../..\CubeG4\include/core_cm4.h **** #define xPSR_ICI_IT_1_Pos                  10U                                            /*!< xPSR
 362:../../..\CubeG4\include/core_cm4.h **** #define xPSR_ICI_IT_1_Msk                  (0x3FUL << xPSR_ICI_IT_1_Pos)                  /*!< xPSR
 363:../../..\CubeG4\include/core_cm4.h **** 
 364:../../..\CubeG4\include/core_cm4.h **** #define xPSR_ISR_Pos                        0U                                            /*!< xPSR
 365:../../..\CubeG4\include/core_cm4.h **** #define xPSR_ISR_Msk                       (0x1FFUL /*<< xPSR_ISR_Pos*/)                  /*!< xPSR
 366:../../..\CubeG4\include/core_cm4.h **** 
 367:../../..\CubeG4\include/core_cm4.h **** 
 368:../../..\CubeG4\include/core_cm4.h **** /**
 369:../../..\CubeG4\include/core_cm4.h ****   \brief  Union type to access the Control Registers (CONTROL).
 370:../../..\CubeG4\include/core_cm4.h ****  */
 371:../../..\CubeG4\include/core_cm4.h **** typedef union
 372:../../..\CubeG4\include/core_cm4.h **** {
 373:../../..\CubeG4\include/core_cm4.h ****   struct
 374:../../..\CubeG4\include/core_cm4.h ****   {
 375:../../..\CubeG4\include/core_cm4.h ****     uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
 376:../../..\CubeG4\include/core_cm4.h ****     uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used */
 377:../../..\CubeG4\include/core_cm4.h ****     uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag */
 378:../../..\CubeG4\include/core_cm4.h ****     uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved */
 379:../../..\CubeG4\include/core_cm4.h ****   } b;                                   /*!< Structure used for bit  access */
 380:../../..\CubeG4\include/core_cm4.h ****   uint32_t w;                            /*!< Type      used for word access */
 381:../../..\CubeG4\include/core_cm4.h **** } CONTROL_Type;
 382:../../..\CubeG4\include/core_cm4.h **** 
 383:../../..\CubeG4\include/core_cm4.h **** /* CONTROL Register Definitions */
 384:../../..\CubeG4\include/core_cm4.h **** #define CONTROL_FPCA_Pos                    2U                                            /*!< CONT
 385:../../..\CubeG4\include/core_cm4.h **** #define CONTROL_FPCA_Msk                   (1UL << CONTROL_FPCA_Pos)                      /*!< CONT
 386:../../..\CubeG4\include/core_cm4.h **** 
 387:../../..\CubeG4\include/core_cm4.h **** #define CONTROL_SPSEL_Pos                   1U                                            /*!< CONT
 388:../../..\CubeG4\include/core_cm4.h **** #define CONTROL_SPSEL_Msk                  (1UL << CONTROL_SPSEL_Pos)                     /*!< CONT
 389:../../..\CubeG4\include/core_cm4.h **** 
 390:../../..\CubeG4\include/core_cm4.h **** #define CONTROL_nPRIV_Pos                   0U                                            /*!< CONT
 391:../../..\CubeG4\include/core_cm4.h **** #define CONTROL_nPRIV_Msk                  (1UL /*<< CONTROL_nPRIV_Pos*/)                 /*!< CONT
 392:../../..\CubeG4\include/core_cm4.h **** 
 393:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_CORE */
 394:../../..\CubeG4\include/core_cm4.h **** 
 395:../../..\CubeG4\include/core_cm4.h **** 
 396:../../..\CubeG4\include/core_cm4.h **** /**
 397:../../..\CubeG4\include/core_cm4.h ****   \ingroup    CMSIS_core_register
 398:../../..\CubeG4\include/core_cm4.h ****   \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
 399:../../..\CubeG4\include/core_cm4.h ****   \brief      Type definitions for the NVIC Registers
 400:../../..\CubeG4\include/core_cm4.h ****   @{
 401:../../..\CubeG4\include/core_cm4.h ****  */
 402:../../..\CubeG4\include/core_cm4.h **** 
 403:../../..\CubeG4\include/core_cm4.h **** /**
 404:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 405:../../..\CubeG4\include/core_cm4.h ****  */
 406:../../..\CubeG4\include/core_cm4.h **** typedef struct
 407:../../..\CubeG4\include/core_cm4.h **** {
 408:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ISER[8U];               /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register */
 409:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED0[24U];
 410:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ICER[8U];               /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register 
 411:../../..\CubeG4\include/core_cm4.h ****         uint32_t RSERVED1[24U];
 412:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ISPR[8U];               /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register *
 413:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED2[24U];
 414:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ICPR[8U];               /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register
 415:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED3[24U];
 416:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t IABR[8U];               /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register */
 417:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED4[56U];
 418:../../..\CubeG4\include/core_cm4.h ****   __IOM uint8_t  IP[240U];               /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bi
 419:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED5[644U];
 420:../../..\CubeG4\include/core_cm4.h ****   __OM  uint32_t STIR;                   /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Regis
 421:../../..\CubeG4\include/core_cm4.h **** }  NVIC_Type;
 422:../../..\CubeG4\include/core_cm4.h **** 
 423:../../..\CubeG4\include/core_cm4.h **** /* Software Triggered Interrupt Register Definitions */
 424:../../..\CubeG4\include/core_cm4.h **** #define NVIC_STIR_INTID_Pos                 0U                                         /*!< STIR: I
 425:../../..\CubeG4\include/core_cm4.h **** #define NVIC_STIR_INTID_Msk                (0x1FFUL /*<< NVIC_STIR_INTID_Pos*/)        /*!< STIR: I
 426:../../..\CubeG4\include/core_cm4.h **** 
 427:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_NVIC */
 428:../../..\CubeG4\include/core_cm4.h **** 
 429:../../..\CubeG4\include/core_cm4.h **** 
 430:../../..\CubeG4\include/core_cm4.h **** /**
 431:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
 432:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_SCB     System Control Block (SCB)
 433:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the System Control Block Registers
 434:../../..\CubeG4\include/core_cm4.h ****   @{
 435:../../..\CubeG4\include/core_cm4.h ****  */
 436:../../..\CubeG4\include/core_cm4.h **** 
 437:../../..\CubeG4\include/core_cm4.h **** /**
 438:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the System Control Block (SCB).
 439:../../..\CubeG4\include/core_cm4.h ****  */
 440:../../..\CubeG4\include/core_cm4.h **** typedef struct
 441:../../..\CubeG4\include/core_cm4.h **** {
 442:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t CPUID;                  /*!< Offset: 0x000 (R/ )  CPUID Base Register */
 443:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ICSR;                   /*!< Offset: 0x004 (R/W)  Interrupt Control and State Regi
 444:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t VTOR;                   /*!< Offset: 0x008 (R/W)  Vector Table Offset Register */
 445:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t AIRCR;                  /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset 
 446:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t SCR;                    /*!< Offset: 0x010 (R/W)  System Control Register */
 447:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CCR;                    /*!< Offset: 0x014 (R/W)  Configuration Control Register *
 448:../../..\CubeG4\include/core_cm4.h ****   __IOM uint8_t  SHP[12U];               /*!< Offset: 0x018 (R/W)  System Handlers Priority Registe
 449:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t SHCSR;                  /*!< Offset: 0x024 (R/W)  System Handler Control and State
 450:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CFSR;                   /*!< Offset: 0x028 (R/W)  Configurable Fault Status Regist
 451:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t HFSR;                   /*!< Offset: 0x02C (R/W)  HardFault Status Register */
 452:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t DFSR;                   /*!< Offset: 0x030 (R/W)  Debug Fault Status Register */
 453:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t MMFAR;                  /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register
 454:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t BFAR;                   /*!< Offset: 0x038 (R/W)  BusFault Address Register */
 455:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t AFSR;                   /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register 
 456:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PFR[2U];                /*!< Offset: 0x040 (R/ )  Processor Feature Register */
 457:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t DFR;                    /*!< Offset: 0x048 (R/ )  Debug Feature Register */
 458:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t ADR;                    /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register */
 459:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t MMFR[4U];               /*!< Offset: 0x050 (R/ )  Memory Model Feature Register */
 460:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t ISAR[5U];               /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Regis
 461:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED0[5U];
 462:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CPACR;                  /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Regis
 463:../../..\CubeG4\include/core_cm4.h **** } SCB_Type;
 464:../../..\CubeG4\include/core_cm4.h **** 
 465:../../..\CubeG4\include/core_cm4.h **** /* SCB CPUID Register Definitions */
 466:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24U                                            /*!< SCB 
 467:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 468:../../..\CubeG4\include/core_cm4.h **** 
 469:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_VARIANT_Pos              20U                                            /*!< SCB 
 470:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_VARIANT_Msk              (0xFUL << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 471:../../..\CubeG4\include/core_cm4.h **** 
 472:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16U                                            /*!< SCB 
 473:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 474:../../..\CubeG4\include/core_cm4.h **** 
 475:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_PARTNO_Pos                4U                                            /*!< SCB 
 476:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFUL << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 477:../../..\CubeG4\include/core_cm4.h **** 
 478:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_REVISION_Pos              0U                                            /*!< SCB 
 479:../../..\CubeG4\include/core_cm4.h **** #define SCB_CPUID_REVISION_Msk             (0xFUL /*<< SCB_CPUID_REVISION_Pos*/)          /*!< SCB 
 480:../../..\CubeG4\include/core_cm4.h **** 
 481:../../..\CubeG4\include/core_cm4.h **** /* SCB Interrupt Control State Register Definitions */
 482:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_NMIPENDSET_Pos            31U                                            /*!< SCB 
 483:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1UL << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 484:../../..\CubeG4\include/core_cm4.h **** 
 485:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSVSET_Pos             28U                                            /*!< SCB 
 486:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSVSET_Msk             (1UL << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 487:../../..\CubeG4\include/core_cm4.h **** 
 488:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSVCLR_Pos             27U                                            /*!< SCB 
 489:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1UL << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 490:../../..\CubeG4\include/core_cm4.h **** 
 491:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSTSET_Pos             26U                                            /*!< SCB 
 492:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSTSET_Msk             (1UL << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 493:../../..\CubeG4\include/core_cm4.h **** 
 494:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSTCLR_Pos             25U                                            /*!< SCB 
 495:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1UL << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 496:../../..\CubeG4\include/core_cm4.h **** 
 497:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23U                                            /*!< SCB 
 498:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1UL << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 499:../../..\CubeG4\include/core_cm4.h **** 
 500:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_ISRPENDING_Pos            22U                                            /*!< SCB 
 501:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_ISRPENDING_Msk            (1UL << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 502:../../..\CubeG4\include/core_cm4.h **** 
 503:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_VECTPENDING_Pos           12U                                            /*!< SCB 
 504:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 505:../../..\CubeG4\include/core_cm4.h **** 
 506:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_RETTOBASE_Pos             11U                                            /*!< SCB 
 507:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_RETTOBASE_Msk             (1UL << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 508:../../..\CubeG4\include/core_cm4.h **** 
 509:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_VECTACTIVE_Pos             0U                                            /*!< SCB 
 510:../../..\CubeG4\include/core_cm4.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFUL /*<< SCB_ICSR_VECTACTIVE_Pos*/)       /*!< SCB 
 511:../../..\CubeG4\include/core_cm4.h **** 
 512:../../..\CubeG4\include/core_cm4.h **** /* SCB Vector Table Offset Register Definitions */
 513:../../..\CubeG4\include/core_cm4.h **** #define SCB_VTOR_TBLOFF_Pos                 7U                                            /*!< SCB 
 514:../../..\CubeG4\include/core_cm4.h **** #define SCB_VTOR_TBLOFF_Msk                (0x1FFFFFFUL << SCB_VTOR_TBLOFF_Pos)           /*!< SCB 
 515:../../..\CubeG4\include/core_cm4.h **** 
 516:../../..\CubeG4\include/core_cm4.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 517:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTKEY_Pos              16U                                            /*!< SCB 
 518:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 519:../../..\CubeG4\include/core_cm4.h **** 
 520:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16U                                            /*!< SCB 
 521:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 522:../../..\CubeG4\include/core_cm4.h **** 
 523:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_ENDIANESS_Pos            15U                                            /*!< SCB 
 524:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1UL << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 525:../../..\CubeG4\include/core_cm4.h **** 
 526:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_PRIGROUP_Pos              8U                                            /*!< SCB 
 527:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7UL << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 528:../../..\CubeG4\include/core_cm4.h **** 
 529:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2U                                            /*!< SCB 
 530:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1UL << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 531:../../..\CubeG4\include/core_cm4.h **** 
 532:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1U                                            /*!< SCB 
 533:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 534:../../..\CubeG4\include/core_cm4.h **** 
 535:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTRESET_Pos             0U                                            /*!< SCB 
 536:../../..\CubeG4\include/core_cm4.h **** #define SCB_AIRCR_VECTRESET_Msk            (1UL /*<< SCB_AIRCR_VECTRESET_Pos*/)           /*!< SCB 
 537:../../..\CubeG4\include/core_cm4.h **** 
 538:../../..\CubeG4\include/core_cm4.h **** /* SCB System Control Register Definitions */
 539:../../..\CubeG4\include/core_cm4.h **** #define SCB_SCR_SEVONPEND_Pos               4U                                            /*!< SCB 
 540:../../..\CubeG4\include/core_cm4.h **** #define SCB_SCR_SEVONPEND_Msk              (1UL << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 541:../../..\CubeG4\include/core_cm4.h **** 
 542:../../..\CubeG4\include/core_cm4.h **** #define SCB_SCR_SLEEPDEEP_Pos               2U                                            /*!< SCB 
 543:../../..\CubeG4\include/core_cm4.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1UL << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 544:../../..\CubeG4\include/core_cm4.h **** 
 545:../../..\CubeG4\include/core_cm4.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1U                                            /*!< SCB 
 546:../../..\CubeG4\include/core_cm4.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1UL << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 547:../../..\CubeG4\include/core_cm4.h **** 
 548:../../..\CubeG4\include/core_cm4.h **** /* SCB Configuration Control Register Definitions */
 549:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_STKALIGN_Pos                9U                                            /*!< SCB 
 550:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_STKALIGN_Msk               (1UL << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 551:../../..\CubeG4\include/core_cm4.h **** 
 552:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_BFHFNMIGN_Pos               8U                                            /*!< SCB 
 553:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1UL << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 554:../../..\CubeG4\include/core_cm4.h **** 
 555:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_DIV_0_TRP_Pos               4U                                            /*!< SCB 
 556:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1UL << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 557:../../..\CubeG4\include/core_cm4.h **** 
 558:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3U                                            /*!< SCB 
 559:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1UL << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 560:../../..\CubeG4\include/core_cm4.h **** 
 561:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_USERSETMPEND_Pos            1U                                            /*!< SCB 
 562:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_USERSETMPEND_Msk           (1UL << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 563:../../..\CubeG4\include/core_cm4.h **** 
 564:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0U                                            /*!< SCB 
 565:../../..\CubeG4\include/core_cm4.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1UL /*<< SCB_CCR_NONBASETHRDENA_Pos*/)        /*!< SCB 
 566:../../..\CubeG4\include/core_cm4.h **** 
 567:../../..\CubeG4\include/core_cm4.h **** /* SCB System Handler Control and State Register Definitions */
 568:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18U                                            /*!< SCB 
 569:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1UL << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 570:../../..\CubeG4\include/core_cm4.h **** 
 571:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17U                                            /*!< SCB 
 572:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1UL << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 573:../../..\CubeG4\include/core_cm4.h **** 
 574:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16U                                            /*!< SCB 
 575:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1UL << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 576:../../..\CubeG4\include/core_cm4.h **** 
 577:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15U                                            /*!< SCB 
 578:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1UL << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 579:../../..\CubeG4\include/core_cm4.h **** 
 580:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14U                                            /*!< SCB 
 581:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1UL << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 582:../../..\CubeG4\include/core_cm4.h **** 
 583:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13U                                            /*!< SCB 
 584:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1UL << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 585:../../..\CubeG4\include/core_cm4.h **** 
 586:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12U                                            /*!< SCB 
 587:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1UL << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 588:../../..\CubeG4\include/core_cm4.h **** 
 589:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11U                                            /*!< SCB 
 590:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1UL << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 591:../../..\CubeG4\include/core_cm4.h **** 
 592:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_PENDSVACT_Pos            10U                                            /*!< SCB 
 593:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1UL << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 594:../../..\CubeG4\include/core_cm4.h **** 
 595:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MONITORACT_Pos            8U                                            /*!< SCB 
 596:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MONITORACT_Msk           (1UL << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 597:../../..\CubeG4\include/core_cm4.h **** 
 598:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_SVCALLACT_Pos             7U                                            /*!< SCB 
 599:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1UL << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 600:../../..\CubeG4\include/core_cm4.h **** 
 601:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3U                                            /*!< SCB 
 602:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1UL << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 603:../../..\CubeG4\include/core_cm4.h **** 
 604:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1U                                            /*!< SCB 
 605:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1UL << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 606:../../..\CubeG4\include/core_cm4.h **** 
 607:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0U                                            /*!< SCB 
 608:../../..\CubeG4\include/core_cm4.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1UL /*<< SCB_SHCSR_MEMFAULTACT_Pos*/)         /*!< SCB 
 609:../../..\CubeG4\include/core_cm4.h **** 
 610:../../..\CubeG4\include/core_cm4.h **** /* SCB Configurable Fault Status Register Definitions */
 611:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_USGFAULTSR_Pos            16U                                            /*!< SCB 
 612:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFUL << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 613:../../..\CubeG4\include/core_cm4.h **** 
 614:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8U                                            /*!< SCB 
 615:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFUL << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 616:../../..\CubeG4\include/core_cm4.h **** 
 617:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0U                                            /*!< SCB 
 618:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFUL /*<< SCB_CFSR_MEMFAULTSR_Pos*/)        /*!< SCB 
 619:../../..\CubeG4\include/core_cm4.h **** 
 620:../../..\CubeG4\include/core_cm4.h **** /* MemManage Fault Status Register (part of SCB Configurable Fault Status Register) */
 621:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MMARVALID_Pos             (SCB_SHCSR_MEMFAULTACT_Pos + 7U)               /*!< SCB 
 622:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MMARVALID_Msk             (1UL << SCB_CFSR_MMARVALID_Pos)                /*!< SCB 
 623:../../..\CubeG4\include/core_cm4.h **** 
 624:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MLSPERR_Pos               (SCB_SHCSR_MEMFAULTACT_Pos + 5U)               /*!< SCB 
 625:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MLSPERR_Msk               (1UL << SCB_CFSR_MLSPERR_Pos)                  /*!< SCB 
 626:../../..\CubeG4\include/core_cm4.h **** 
 627:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MSTKERR_Pos               (SCB_SHCSR_MEMFAULTACT_Pos + 4U)               /*!< SCB 
 628:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MSTKERR_Msk               (1UL << SCB_CFSR_MSTKERR_Pos)                  /*!< SCB 
 629:../../..\CubeG4\include/core_cm4.h **** 
 630:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MUNSTKERR_Pos             (SCB_SHCSR_MEMFAULTACT_Pos + 3U)               /*!< SCB 
 631:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_MUNSTKERR_Msk             (1UL << SCB_CFSR_MUNSTKERR_Pos)                /*!< SCB 
 632:../../..\CubeG4\include/core_cm4.h **** 
 633:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_DACCVIOL_Pos              (SCB_SHCSR_MEMFAULTACT_Pos + 1U)               /*!< SCB 
 634:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_DACCVIOL_Msk              (1UL << SCB_CFSR_DACCVIOL_Pos)                 /*!< SCB 
 635:../../..\CubeG4\include/core_cm4.h **** 
 636:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_IACCVIOL_Pos              (SCB_SHCSR_MEMFAULTACT_Pos + 0U)               /*!< SCB 
 637:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_IACCVIOL_Msk              (1UL /*<< SCB_CFSR_IACCVIOL_Pos*/)             /*!< SCB 
 638:../../..\CubeG4\include/core_cm4.h **** 
 639:../../..\CubeG4\include/core_cm4.h **** /* BusFault Status Register (part of SCB Configurable Fault Status Register) */
 640:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_BFARVALID_Pos            (SCB_CFSR_BUSFAULTSR_Pos + 7U)                  /*!< SCB 
 641:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_BFARVALID_Msk            (1UL << SCB_CFSR_BFARVALID_Pos)                 /*!< SCB 
 642:../../..\CubeG4\include/core_cm4.h **** 
 643:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_LSPERR_Pos               (SCB_CFSR_BUSFAULTSR_Pos + 5U)                  /*!< SCB 
 644:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_LSPERR_Msk               (1UL << SCB_CFSR_LSPERR_Pos)                    /*!< SCB 
 645:../../..\CubeG4\include/core_cm4.h **** 
 646:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_STKERR_Pos               (SCB_CFSR_BUSFAULTSR_Pos + 4U)                  /*!< SCB 
 647:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_STKERR_Msk               (1UL << SCB_CFSR_STKERR_Pos)                    /*!< SCB 
 648:../../..\CubeG4\include/core_cm4.h **** 
 649:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_UNSTKERR_Pos             (SCB_CFSR_BUSFAULTSR_Pos + 3U)                  /*!< SCB 
 650:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_UNSTKERR_Msk             (1UL << SCB_CFSR_UNSTKERR_Pos)                  /*!< SCB 
 651:../../..\CubeG4\include/core_cm4.h **** 
 652:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_IMPRECISERR_Pos          (SCB_CFSR_BUSFAULTSR_Pos + 2U)                  /*!< SCB 
 653:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_IMPRECISERR_Msk          (1UL << SCB_CFSR_IMPRECISERR_Pos)               /*!< SCB 
 654:../../..\CubeG4\include/core_cm4.h **** 
 655:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_PRECISERR_Pos            (SCB_CFSR_BUSFAULTSR_Pos + 1U)                  /*!< SCB 
 656:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_PRECISERR_Msk            (1UL << SCB_CFSR_PRECISERR_Pos)                 /*!< SCB 
 657:../../..\CubeG4\include/core_cm4.h **** 
 658:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_IBUSERR_Pos              (SCB_CFSR_BUSFAULTSR_Pos + 0U)                  /*!< SCB 
 659:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_IBUSERR_Msk              (1UL << SCB_CFSR_IBUSERR_Pos)                   /*!< SCB 
 660:../../..\CubeG4\include/core_cm4.h **** 
 661:../../..\CubeG4\include/core_cm4.h **** /* UsageFault Status Register (part of SCB Configurable Fault Status Register) */
 662:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_DIVBYZERO_Pos            (SCB_CFSR_USGFAULTSR_Pos + 9U)                  /*!< SCB 
 663:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_DIVBYZERO_Msk            (1UL << SCB_CFSR_DIVBYZERO_Pos)                 /*!< SCB 
 664:../../..\CubeG4\include/core_cm4.h **** 
 665:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_UNALIGNED_Pos            (SCB_CFSR_USGFAULTSR_Pos + 8U)                  /*!< SCB 
 666:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_UNALIGNED_Msk            (1UL << SCB_CFSR_UNALIGNED_Pos)                 /*!< SCB 
 667:../../..\CubeG4\include/core_cm4.h **** 
 668:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_NOCP_Pos                 (SCB_CFSR_USGFAULTSR_Pos + 3U)                  /*!< SCB 
 669:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_NOCP_Msk                 (1UL << SCB_CFSR_NOCP_Pos)                      /*!< SCB 
 670:../../..\CubeG4\include/core_cm4.h **** 
 671:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_INVPC_Pos                (SCB_CFSR_USGFAULTSR_Pos + 2U)                  /*!< SCB 
 672:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_INVPC_Msk                (1UL << SCB_CFSR_INVPC_Pos)                     /*!< SCB 
 673:../../..\CubeG4\include/core_cm4.h **** 
 674:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_INVSTATE_Pos             (SCB_CFSR_USGFAULTSR_Pos + 1U)                  /*!< SCB 
 675:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_INVSTATE_Msk             (1UL << SCB_CFSR_INVSTATE_Pos)                  /*!< SCB 
 676:../../..\CubeG4\include/core_cm4.h **** 
 677:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_UNDEFINSTR_Pos           (SCB_CFSR_USGFAULTSR_Pos + 0U)                  /*!< SCB 
 678:../../..\CubeG4\include/core_cm4.h **** #define SCB_CFSR_UNDEFINSTR_Msk           (1UL << SCB_CFSR_UNDEFINSTR_Pos)                /*!< SCB 
 679:../../..\CubeG4\include/core_cm4.h **** 
 680:../../..\CubeG4\include/core_cm4.h **** /* SCB Hard Fault Status Register Definitions */
 681:../../..\CubeG4\include/core_cm4.h **** #define SCB_HFSR_DEBUGEVT_Pos              31U                                            /*!< SCB 
 682:../../..\CubeG4\include/core_cm4.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1UL << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 683:../../..\CubeG4\include/core_cm4.h **** 
 684:../../..\CubeG4\include/core_cm4.h **** #define SCB_HFSR_FORCED_Pos                30U                                            /*!< SCB 
 685:../../..\CubeG4\include/core_cm4.h **** #define SCB_HFSR_FORCED_Msk                (1UL << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 686:../../..\CubeG4\include/core_cm4.h **** 
 687:../../..\CubeG4\include/core_cm4.h **** #define SCB_HFSR_VECTTBL_Pos                1U                                            /*!< SCB 
 688:../../..\CubeG4\include/core_cm4.h **** #define SCB_HFSR_VECTTBL_Msk               (1UL << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 689:../../..\CubeG4\include/core_cm4.h **** 
 690:../../..\CubeG4\include/core_cm4.h **** /* SCB Debug Fault Status Register Definitions */
 691:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_EXTERNAL_Pos               4U                                            /*!< SCB 
 692:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_EXTERNAL_Msk              (1UL << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 693:../../..\CubeG4\include/core_cm4.h **** 
 694:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_VCATCH_Pos                 3U                                            /*!< SCB 
 695:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_VCATCH_Msk                (1UL << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 696:../../..\CubeG4\include/core_cm4.h **** 
 697:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_DWTTRAP_Pos                2U                                            /*!< SCB 
 698:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_DWTTRAP_Msk               (1UL << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 699:../../..\CubeG4\include/core_cm4.h **** 
 700:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_BKPT_Pos                   1U                                            /*!< SCB 
 701:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_BKPT_Msk                  (1UL << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 702:../../..\CubeG4\include/core_cm4.h **** 
 703:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_HALTED_Pos                 0U                                            /*!< SCB 
 704:../../..\CubeG4\include/core_cm4.h **** #define SCB_DFSR_HALTED_Msk                (1UL /*<< SCB_DFSR_HALTED_Pos*/)               /*!< SCB 
 705:../../..\CubeG4\include/core_cm4.h **** 
 706:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_SCB */
 707:../../..\CubeG4\include/core_cm4.h **** 
 708:../../..\CubeG4\include/core_cm4.h **** 
 709:../../..\CubeG4\include/core_cm4.h **** /**
 710:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
 711:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
 712:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the System Control and ID Register not in the SCB
 713:../../..\CubeG4\include/core_cm4.h ****   @{
 714:../../..\CubeG4\include/core_cm4.h ****  */
 715:../../..\CubeG4\include/core_cm4.h **** 
 716:../../..\CubeG4\include/core_cm4.h **** /**
 717:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the System Control and ID Register not in the SCB.
 718:../../..\CubeG4\include/core_cm4.h ****  */
 719:../../..\CubeG4\include/core_cm4.h **** typedef struct
 720:../../..\CubeG4\include/core_cm4.h **** {
 721:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED0[1U];
 722:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t ICTR;                   /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Regist
 723:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ACTLR;                  /*!< Offset: 0x008 (R/W)  Auxiliary Control Register */
 724:../../..\CubeG4\include/core_cm4.h **** } SCnSCB_Type;
 725:../../..\CubeG4\include/core_cm4.h **** 
 726:../../..\CubeG4\include/core_cm4.h **** /* Interrupt Controller Type Register Definitions */
 727:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ICTR_INTLINESNUM_Pos         0U                                         /*!< ICTR: I
 728:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ICTR_INTLINESNUM_Msk        (0xFUL /*<< SCnSCB_ICTR_INTLINESNUM_Pos*/)  /*!< ICTR: I
 729:../../..\CubeG4\include/core_cm4.h **** 
 730:../../..\CubeG4\include/core_cm4.h **** /* Auxiliary Control Register Definitions */
 731:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISOOFP_Pos            9U                                         /*!< ACTLR: 
 732:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISOOFP_Msk           (1UL << SCnSCB_ACTLR_DISOOFP_Pos)           /*!< ACTLR: 
 733:../../..\CubeG4\include/core_cm4.h **** 
 734:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISFPCA_Pos            8U                                         /*!< ACTLR: 
 735:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISFPCA_Msk           (1UL << SCnSCB_ACTLR_DISFPCA_Pos)           /*!< ACTLR: 
 736:../../..\CubeG4\include/core_cm4.h **** 
 737:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISFOLD_Pos            2U                                         /*!< ACTLR: 
 738:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISFOLD_Msk           (1UL << SCnSCB_ACTLR_DISFOLD_Pos)           /*!< ACTLR: 
 739:../../..\CubeG4\include/core_cm4.h **** 
 740:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISDEFWBUF_Pos         1U                                         /*!< ACTLR: 
 741:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISDEFWBUF_Msk        (1UL << SCnSCB_ACTLR_DISDEFWBUF_Pos)        /*!< ACTLR: 
 742:../../..\CubeG4\include/core_cm4.h **** 
 743:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISMCYCINT_Pos         0U                                         /*!< ACTLR: 
 744:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB_ACTLR_DISMCYCINT_Msk        (1UL /*<< SCnSCB_ACTLR_DISMCYCINT_Pos*/)    /*!< ACTLR: 
 745:../../..\CubeG4\include/core_cm4.h **** 
 746:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_SCnotSCB */
 747:../../..\CubeG4\include/core_cm4.h **** 
 748:../../..\CubeG4\include/core_cm4.h **** 
 749:../../..\CubeG4\include/core_cm4.h **** /**
 750:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
 751:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
 752:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the System Timer Registers.
 753:../../..\CubeG4\include/core_cm4.h ****   @{
 754:../../..\CubeG4\include/core_cm4.h ****  */
 755:../../..\CubeG4\include/core_cm4.h **** 
 756:../../..\CubeG4\include/core_cm4.h **** /**
 757:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the System Timer (SysTick).
 758:../../..\CubeG4\include/core_cm4.h ****  */
 759:../../..\CubeG4\include/core_cm4.h **** typedef struct
 760:../../..\CubeG4\include/core_cm4.h **** {
 761:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x000 (R/W)  SysTick Control and Status Regis
 762:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t LOAD;                   /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register */
 763:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t VAL;                    /*!< Offset: 0x008 (R/W)  SysTick Current Value Register *
 764:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t CALIB;                  /*!< Offset: 0x00C (R/ )  SysTick Calibration Register */
 765:../../..\CubeG4\include/core_cm4.h **** } SysTick_Type;
 766:../../..\CubeG4\include/core_cm4.h **** 
 767:../../..\CubeG4\include/core_cm4.h **** /* SysTick Control / Status Register Definitions */
 768:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16U                                            /*!< SysT
 769:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 770:../../..\CubeG4\include/core_cm4.h **** 
 771:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2U                                            /*!< SysT
 772:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 773:../../..\CubeG4\include/core_cm4.h **** 
 774:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_TICKINT_Pos            1U                                            /*!< SysT
 775:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 776:../../..\CubeG4\include/core_cm4.h **** 
 777:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_ENABLE_Pos             0U                                            /*!< SysT
 778:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CTRL_ENABLE_Msk            (1UL /*<< SysTick_CTRL_ENABLE_Pos*/)           /*!< SysT
 779:../../..\CubeG4\include/core_cm4.h **** 
 780:../../..\CubeG4\include/core_cm4.h **** /* SysTick Reload Register Definitions */
 781:../../..\CubeG4\include/core_cm4.h **** #define SysTick_LOAD_RELOAD_Pos             0U                                            /*!< SysT
 782:../../..\CubeG4\include/core_cm4.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL /*<< SysTick_LOAD_RELOAD_Pos*/)    /*!< SysT
 783:../../..\CubeG4\include/core_cm4.h **** 
 784:../../..\CubeG4\include/core_cm4.h **** /* SysTick Current Register Definitions */
 785:../../..\CubeG4\include/core_cm4.h **** #define SysTick_VAL_CURRENT_Pos             0U                                            /*!< SysT
 786:../../..\CubeG4\include/core_cm4.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL /*<< SysTick_VAL_CURRENT_Pos*/)    /*!< SysT
 787:../../..\CubeG4\include/core_cm4.h **** 
 788:../../..\CubeG4\include/core_cm4.h **** /* SysTick Calibration Register Definitions */
 789:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CALIB_NOREF_Pos            31U                                            /*!< SysT
 790:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 791:../../..\CubeG4\include/core_cm4.h **** 
 792:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CALIB_SKEW_Pos             30U                                            /*!< SysT
 793:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 794:../../..\CubeG4\include/core_cm4.h **** 
 795:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CALIB_TENMS_Pos             0U                                            /*!< SysT
 796:../../..\CubeG4\include/core_cm4.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL /*<< SysTick_CALIB_TENMS_Pos*/)    /*!< SysT
 797:../../..\CubeG4\include/core_cm4.h **** 
 798:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_SysTick */
 799:../../..\CubeG4\include/core_cm4.h **** 
 800:../../..\CubeG4\include/core_cm4.h **** 
 801:../../..\CubeG4\include/core_cm4.h **** /**
 802:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
 803:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
 804:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the Instrumentation Trace Macrocell (ITM)
 805:../../..\CubeG4\include/core_cm4.h ****   @{
 806:../../..\CubeG4\include/core_cm4.h ****  */
 807:../../..\CubeG4\include/core_cm4.h **** 
 808:../../..\CubeG4\include/core_cm4.h **** /**
 809:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 810:../../..\CubeG4\include/core_cm4.h ****  */
 811:../../..\CubeG4\include/core_cm4.h **** typedef struct
 812:../../..\CubeG4\include/core_cm4.h **** {
 813:../../..\CubeG4\include/core_cm4.h ****   __OM  union
 814:../../..\CubeG4\include/core_cm4.h ****   {
 815:../../..\CubeG4\include/core_cm4.h ****     __OM  uint8_t    u8;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit */
 816:../../..\CubeG4\include/core_cm4.h ****     __OM  uint16_t   u16;                /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit */
 817:../../..\CubeG4\include/core_cm4.h ****     __OM  uint32_t   u32;                /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit */
 818:../../..\CubeG4\include/core_cm4.h ****   }  PORT [32U];                         /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers */
 819:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED0[864U];
 820:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t TER;                    /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register */
 821:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED1[15U];
 822:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t TPR;                    /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register */
 823:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED2[15U];
 824:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t TCR;                    /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register */
 825:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED3[29U];
 826:../../..\CubeG4\include/core_cm4.h ****   __OM  uint32_t IWR;                    /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register *
 827:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t IRR;                    /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register */
 828:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t IMCR;                   /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Reg
 829:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED4[43U];
 830:../../..\CubeG4\include/core_cm4.h ****   __OM  uint32_t LAR;                    /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register */
 831:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t LSR;                    /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register */
 832:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED5[6U];
 833:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID4;                   /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Re
 834:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID5;                   /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Re
 835:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID6;                   /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Re
 836:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID7;                   /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Re
 837:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID0;                   /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Re
 838:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID1;                   /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Re
 839:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID2;                   /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Re
 840:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PID3;                   /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Re
 841:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t CID0;                   /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Re
 842:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t CID1;                   /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Re
 843:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t CID2;                   /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Re
 844:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t CID3;                   /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Re
 845:../../..\CubeG4\include/core_cm4.h **** } ITM_Type;
 846:../../..\CubeG4\include/core_cm4.h **** 
 847:../../..\CubeG4\include/core_cm4.h **** /* ITM Trace Privilege Register Definitions */
 848:../../..\CubeG4\include/core_cm4.h **** #define ITM_TPR_PRIVMASK_Pos                0U                                            /*!< ITM 
 849:../../..\CubeG4\include/core_cm4.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFFFFFFFFUL /*<< ITM_TPR_PRIVMASK_Pos*/)     /*!< ITM 
 850:../../..\CubeG4\include/core_cm4.h **** 
 851:../../..\CubeG4\include/core_cm4.h **** /* ITM Trace Control Register Definitions */
 852:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_BUSY_Pos                   23U                                            /*!< ITM 
 853:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_BUSY_Msk                   (1UL << ITM_TCR_BUSY_Pos)                      /*!< ITM 
 854:../../..\CubeG4\include/core_cm4.h **** 
 855:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_TraceBusID_Pos             16U                                            /*!< ITM 
 856:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_TraceBusID_Msk             (0x7FUL << ITM_TCR_TraceBusID_Pos)             /*!< ITM 
 857:../../..\CubeG4\include/core_cm4.h **** 
 858:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_GTSFREQ_Pos                10U                                            /*!< ITM 
 859:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_GTSFREQ_Msk                (3UL << ITM_TCR_GTSFREQ_Pos)                   /*!< ITM 
 860:../../..\CubeG4\include/core_cm4.h **** 
 861:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_TSPrescale_Pos              8U                                            /*!< ITM 
 862:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_TSPrescale_Msk             (3UL << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
 863:../../..\CubeG4\include/core_cm4.h **** 
 864:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_SWOENA_Pos                  4U                                            /*!< ITM 
 865:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_SWOENA_Msk                 (1UL << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
 866:../../..\CubeG4\include/core_cm4.h **** 
 867:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_DWTENA_Pos                  3U                                            /*!< ITM 
 868:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_DWTENA_Msk                 (1UL << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
 869:../../..\CubeG4\include/core_cm4.h **** 
 870:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_SYNCENA_Pos                 2U                                            /*!< ITM 
 871:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_SYNCENA_Msk                (1UL << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
 872:../../..\CubeG4\include/core_cm4.h **** 
 873:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_TSENA_Pos                   1U                                            /*!< ITM 
 874:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_TSENA_Msk                  (1UL << ITM_TCR_TSENA_Pos)                     /*!< ITM 
 875:../../..\CubeG4\include/core_cm4.h **** 
 876:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_ITMENA_Pos                  0U                                            /*!< ITM 
 877:../../..\CubeG4\include/core_cm4.h **** #define ITM_TCR_ITMENA_Msk                 (1UL /*<< ITM_TCR_ITMENA_Pos*/)                /*!< ITM 
 878:../../..\CubeG4\include/core_cm4.h **** 
 879:../../..\CubeG4\include/core_cm4.h **** /* ITM Integration Write Register Definitions */
 880:../../..\CubeG4\include/core_cm4.h **** #define ITM_IWR_ATVALIDM_Pos                0U                                            /*!< ITM 
 881:../../..\CubeG4\include/core_cm4.h **** #define ITM_IWR_ATVALIDM_Msk               (1UL /*<< ITM_IWR_ATVALIDM_Pos*/)              /*!< ITM 
 882:../../..\CubeG4\include/core_cm4.h **** 
 883:../../..\CubeG4\include/core_cm4.h **** /* ITM Integration Read Register Definitions */
 884:../../..\CubeG4\include/core_cm4.h **** #define ITM_IRR_ATREADYM_Pos                0U                                            /*!< ITM 
 885:../../..\CubeG4\include/core_cm4.h **** #define ITM_IRR_ATREADYM_Msk               (1UL /*<< ITM_IRR_ATREADYM_Pos*/)              /*!< ITM 
 886:../../..\CubeG4\include/core_cm4.h **** 
 887:../../..\CubeG4\include/core_cm4.h **** /* ITM Integration Mode Control Register Definitions */
 888:../../..\CubeG4\include/core_cm4.h **** #define ITM_IMCR_INTEGRATION_Pos            0U                                            /*!< ITM 
 889:../../..\CubeG4\include/core_cm4.h **** #define ITM_IMCR_INTEGRATION_Msk           (1UL /*<< ITM_IMCR_INTEGRATION_Pos*/)          /*!< ITM 
 890:../../..\CubeG4\include/core_cm4.h **** 
 891:../../..\CubeG4\include/core_cm4.h **** /* ITM Lock Status Register Definitions */
 892:../../..\CubeG4\include/core_cm4.h **** #define ITM_LSR_ByteAcc_Pos                 2U                                            /*!< ITM 
 893:../../..\CubeG4\include/core_cm4.h **** #define ITM_LSR_ByteAcc_Msk                (1UL << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
 894:../../..\CubeG4\include/core_cm4.h **** 
 895:../../..\CubeG4\include/core_cm4.h **** #define ITM_LSR_Access_Pos                  1U                                            /*!< ITM 
 896:../../..\CubeG4\include/core_cm4.h **** #define ITM_LSR_Access_Msk                 (1UL << ITM_LSR_Access_Pos)                    /*!< ITM 
 897:../../..\CubeG4\include/core_cm4.h **** 
 898:../../..\CubeG4\include/core_cm4.h **** #define ITM_LSR_Present_Pos                 0U                                            /*!< ITM 
 899:../../..\CubeG4\include/core_cm4.h **** #define ITM_LSR_Present_Msk                (1UL /*<< ITM_LSR_Present_Pos*/)               /*!< ITM 
 900:../../..\CubeG4\include/core_cm4.h **** 
 901:../../..\CubeG4\include/core_cm4.h **** /*@}*/ /* end of group CMSIS_ITM */
 902:../../..\CubeG4\include/core_cm4.h **** 
 903:../../..\CubeG4\include/core_cm4.h **** 
 904:../../..\CubeG4\include/core_cm4.h **** /**
 905:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
 906:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
 907:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the Data Watchpoint and Trace (DWT)
 908:../../..\CubeG4\include/core_cm4.h ****   @{
 909:../../..\CubeG4\include/core_cm4.h ****  */
 910:../../..\CubeG4\include/core_cm4.h **** 
 911:../../..\CubeG4\include/core_cm4.h **** /**
 912:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
 913:../../..\CubeG4\include/core_cm4.h ****  */
 914:../../..\CubeG4\include/core_cm4.h **** typedef struct
 915:../../..\CubeG4\include/core_cm4.h **** {
 916:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x000 (R/W)  Control Register */
 917:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CYCCNT;                 /*!< Offset: 0x004 (R/W)  Cycle Count Register */
 918:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CPICNT;                 /*!< Offset: 0x008 (R/W)  CPI Count Register */
 919:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t EXCCNT;                 /*!< Offset: 0x00C (R/W)  Exception Overhead Count Registe
 920:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t SLEEPCNT;               /*!< Offset: 0x010 (R/W)  Sleep Count Register */
 921:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t LSUCNT;                 /*!< Offset: 0x014 (R/W)  LSU Count Register */
 922:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FOLDCNT;                /*!< Offset: 0x018 (R/W)  Folded-instruction Count Registe
 923:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t PCSR;                   /*!< Offset: 0x01C (R/ )  Program Counter Sample Register 
 924:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t COMP0;                  /*!< Offset: 0x020 (R/W)  Comparator Register 0 */
 925:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t MASK0;                  /*!< Offset: 0x024 (R/W)  Mask Register 0 */
 926:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FUNCTION0;              /*!< Offset: 0x028 (R/W)  Function Register 0 */
 927:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED0[1U];
 928:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t COMP1;                  /*!< Offset: 0x030 (R/W)  Comparator Register 1 */
 929:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t MASK1;                  /*!< Offset: 0x034 (R/W)  Mask Register 1 */
 930:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FUNCTION1;              /*!< Offset: 0x038 (R/W)  Function Register 1 */
 931:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED1[1U];
 932:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t COMP2;                  /*!< Offset: 0x040 (R/W)  Comparator Register 2 */
 933:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t MASK2;                  /*!< Offset: 0x044 (R/W)  Mask Register 2 */
 934:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FUNCTION2;              /*!< Offset: 0x048 (R/W)  Function Register 2 */
 935:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED2[1U];
 936:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t COMP3;                  /*!< Offset: 0x050 (R/W)  Comparator Register 3 */
 937:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t MASK3;                  /*!< Offset: 0x054 (R/W)  Mask Register 3 */
 938:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FUNCTION3;              /*!< Offset: 0x058 (R/W)  Function Register 3 */
 939:../../..\CubeG4\include/core_cm4.h **** } DWT_Type;
 940:../../..\CubeG4\include/core_cm4.h **** 
 941:../../..\CubeG4\include/core_cm4.h **** /* DWT Control Register Definitions */
 942:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NUMCOMP_Pos               28U                                         /*!< DWT CTR
 943:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NUMCOMP_Msk               (0xFUL << DWT_CTRL_NUMCOMP_Pos)             /*!< DWT CTR
 944:../../..\CubeG4\include/core_cm4.h **** 
 945:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOTRCPKT_Pos              27U                                         /*!< DWT CTR
 946:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOTRCPKT_Msk              (0x1UL << DWT_CTRL_NOTRCPKT_Pos)            /*!< DWT CTR
 947:../../..\CubeG4\include/core_cm4.h **** 
 948:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOEXTTRIG_Pos             26U                                         /*!< DWT CTR
 949:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOEXTTRIG_Msk             (0x1UL << DWT_CTRL_NOEXTTRIG_Pos)           /*!< DWT CTR
 950:../../..\CubeG4\include/core_cm4.h **** 
 951:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOCYCCNT_Pos              25U                                         /*!< DWT CTR
 952:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOCYCCNT_Msk              (0x1UL << DWT_CTRL_NOCYCCNT_Pos)            /*!< DWT CTR
 953:../../..\CubeG4\include/core_cm4.h **** 
 954:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOPRFCNT_Pos              24U                                         /*!< DWT CTR
 955:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_NOPRFCNT_Msk              (0x1UL << DWT_CTRL_NOPRFCNT_Pos)            /*!< DWT CTR
 956:../../..\CubeG4\include/core_cm4.h **** 
 957:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CYCEVTENA_Pos             22U                                         /*!< DWT CTR
 958:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CYCEVTENA_Msk             (0x1UL << DWT_CTRL_CYCEVTENA_Pos)           /*!< DWT CTR
 959:../../..\CubeG4\include/core_cm4.h **** 
 960:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_FOLDEVTENA_Pos            21U                                         /*!< DWT CTR
 961:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_FOLDEVTENA_Msk            (0x1UL << DWT_CTRL_FOLDEVTENA_Pos)          /*!< DWT CTR
 962:../../..\CubeG4\include/core_cm4.h **** 
 963:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_LSUEVTENA_Pos             20U                                         /*!< DWT CTR
 964:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_LSUEVTENA_Msk             (0x1UL << DWT_CTRL_LSUEVTENA_Pos)           /*!< DWT CTR
 965:../../..\CubeG4\include/core_cm4.h **** 
 966:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_SLEEPEVTENA_Pos           19U                                         /*!< DWT CTR
 967:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_SLEEPEVTENA_Msk           (0x1UL << DWT_CTRL_SLEEPEVTENA_Pos)         /*!< DWT CTR
 968:../../..\CubeG4\include/core_cm4.h **** 
 969:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_EXCEVTENA_Pos             18U                                         /*!< DWT CTR
 970:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_EXCEVTENA_Msk             (0x1UL << DWT_CTRL_EXCEVTENA_Pos)           /*!< DWT CTR
 971:../../..\CubeG4\include/core_cm4.h **** 
 972:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CPIEVTENA_Pos             17U                                         /*!< DWT CTR
 973:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CPIEVTENA_Msk             (0x1UL << DWT_CTRL_CPIEVTENA_Pos)           /*!< DWT CTR
 974:../../..\CubeG4\include/core_cm4.h **** 
 975:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_EXCTRCENA_Pos             16U                                         /*!< DWT CTR
 976:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_EXCTRCENA_Msk             (0x1UL << DWT_CTRL_EXCTRCENA_Pos)           /*!< DWT CTR
 977:../../..\CubeG4\include/core_cm4.h **** 
 978:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_PCSAMPLENA_Pos            12U                                         /*!< DWT CTR
 979:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_PCSAMPLENA_Msk            (0x1UL << DWT_CTRL_PCSAMPLENA_Pos)          /*!< DWT CTR
 980:../../..\CubeG4\include/core_cm4.h **** 
 981:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_SYNCTAP_Pos               10U                                         /*!< DWT CTR
 982:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_SYNCTAP_Msk               (0x3UL << DWT_CTRL_SYNCTAP_Pos)             /*!< DWT CTR
 983:../../..\CubeG4\include/core_cm4.h **** 
 984:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CYCTAP_Pos                 9U                                         /*!< DWT CTR
 985:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CYCTAP_Msk                (0x1UL << DWT_CTRL_CYCTAP_Pos)              /*!< DWT CTR
 986:../../..\CubeG4\include/core_cm4.h **** 
 987:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_POSTINIT_Pos               5U                                         /*!< DWT CTR
 988:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_POSTINIT_Msk              (0xFUL << DWT_CTRL_POSTINIT_Pos)            /*!< DWT CTR
 989:../../..\CubeG4\include/core_cm4.h **** 
 990:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_POSTPRESET_Pos             1U                                         /*!< DWT CTR
 991:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_POSTPRESET_Msk            (0xFUL << DWT_CTRL_POSTPRESET_Pos)          /*!< DWT CTR
 992:../../..\CubeG4\include/core_cm4.h **** 
 993:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CYCCNTENA_Pos              0U                                         /*!< DWT CTR
 994:../../..\CubeG4\include/core_cm4.h **** #define DWT_CTRL_CYCCNTENA_Msk             (0x1UL /*<< DWT_CTRL_CYCCNTENA_Pos*/)       /*!< DWT CTR
 995:../../..\CubeG4\include/core_cm4.h **** 
 996:../../..\CubeG4\include/core_cm4.h **** /* DWT CPI Count Register Definitions */
 997:../../..\CubeG4\include/core_cm4.h **** #define DWT_CPICNT_CPICNT_Pos               0U                                         /*!< DWT CPI
 998:../../..\CubeG4\include/core_cm4.h **** #define DWT_CPICNT_CPICNT_Msk              (0xFFUL /*<< DWT_CPICNT_CPICNT_Pos*/)       /*!< DWT CPI
 999:../../..\CubeG4\include/core_cm4.h **** 
1000:../../..\CubeG4\include/core_cm4.h **** /* DWT Exception Overhead Count Register Definitions */
1001:../../..\CubeG4\include/core_cm4.h **** #define DWT_EXCCNT_EXCCNT_Pos               0U                                         /*!< DWT EXC
1002:../../..\CubeG4\include/core_cm4.h **** #define DWT_EXCCNT_EXCCNT_Msk              (0xFFUL /*<< DWT_EXCCNT_EXCCNT_Pos*/)       /*!< DWT EXC
1003:../../..\CubeG4\include/core_cm4.h **** 
1004:../../..\CubeG4\include/core_cm4.h **** /* DWT Sleep Count Register Definitions */
1005:../../..\CubeG4\include/core_cm4.h **** #define DWT_SLEEPCNT_SLEEPCNT_Pos           0U                                         /*!< DWT SLE
1006:../../..\CubeG4\include/core_cm4.h **** #define DWT_SLEEPCNT_SLEEPCNT_Msk          (0xFFUL /*<< DWT_SLEEPCNT_SLEEPCNT_Pos*/)   /*!< DWT SLE
1007:../../..\CubeG4\include/core_cm4.h **** 
1008:../../..\CubeG4\include/core_cm4.h **** /* DWT LSU Count Register Definitions */
1009:../../..\CubeG4\include/core_cm4.h **** #define DWT_LSUCNT_LSUCNT_Pos               0U                                         /*!< DWT LSU
1010:../../..\CubeG4\include/core_cm4.h **** #define DWT_LSUCNT_LSUCNT_Msk              (0xFFUL /*<< DWT_LSUCNT_LSUCNT_Pos*/)       /*!< DWT LSU
1011:../../..\CubeG4\include/core_cm4.h **** 
1012:../../..\CubeG4\include/core_cm4.h **** /* DWT Folded-instruction Count Register Definitions */
1013:../../..\CubeG4\include/core_cm4.h **** #define DWT_FOLDCNT_FOLDCNT_Pos             0U                                         /*!< DWT FOL
1014:../../..\CubeG4\include/core_cm4.h **** #define DWT_FOLDCNT_FOLDCNT_Msk            (0xFFUL /*<< DWT_FOLDCNT_FOLDCNT_Pos*/)     /*!< DWT FOL
1015:../../..\CubeG4\include/core_cm4.h **** 
1016:../../..\CubeG4\include/core_cm4.h **** /* DWT Comparator Mask Register Definitions */
1017:../../..\CubeG4\include/core_cm4.h **** #define DWT_MASK_MASK_Pos                   0U                                         /*!< DWT MAS
1018:../../..\CubeG4\include/core_cm4.h **** #define DWT_MASK_MASK_Msk                  (0x1FUL /*<< DWT_MASK_MASK_Pos*/)           /*!< DWT MAS
1019:../../..\CubeG4\include/core_cm4.h **** 
1020:../../..\CubeG4\include/core_cm4.h **** /* DWT Comparator Function Register Definitions */
1021:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_MATCHED_Pos           24U                                         /*!< DWT FUN
1022:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_MATCHED_Msk           (0x1UL << DWT_FUNCTION_MATCHED_Pos)         /*!< DWT FUN
1023:../../..\CubeG4\include/core_cm4.h **** 
1024:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVADDR1_Pos        16U                                         /*!< DWT FUN
1025:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVADDR1_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR1_Pos)      /*!< DWT FUN
1026:../../..\CubeG4\include/core_cm4.h **** 
1027:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVADDR0_Pos        12U                                         /*!< DWT FUN
1028:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVADDR0_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR0_Pos)      /*!< DWT FUN
1029:../../..\CubeG4\include/core_cm4.h **** 
1030:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVSIZE_Pos         10U                                         /*!< DWT FUN
1031:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVSIZE_Msk         (0x3UL << DWT_FUNCTION_DATAVSIZE_Pos)       /*!< DWT FUN
1032:../../..\CubeG4\include/core_cm4.h **** 
1033:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_LNK1ENA_Pos            9U                                         /*!< DWT FUN
1034:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_LNK1ENA_Msk           (0x1UL << DWT_FUNCTION_LNK1ENA_Pos)         /*!< DWT FUN
1035:../../..\CubeG4\include/core_cm4.h **** 
1036:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVMATCH_Pos         8U                                         /*!< DWT FUN
1037:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_DATAVMATCH_Msk        (0x1UL << DWT_FUNCTION_DATAVMATCH_Pos)      /*!< DWT FUN
1038:../../..\CubeG4\include/core_cm4.h **** 
1039:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_CYCMATCH_Pos           7U                                         /*!< DWT FUN
1040:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_CYCMATCH_Msk          (0x1UL << DWT_FUNCTION_CYCMATCH_Pos)        /*!< DWT FUN
1041:../../..\CubeG4\include/core_cm4.h **** 
1042:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_EMITRANGE_Pos          5U                                         /*!< DWT FUN
1043:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_EMITRANGE_Msk         (0x1UL << DWT_FUNCTION_EMITRANGE_Pos)       /*!< DWT FUN
1044:../../..\CubeG4\include/core_cm4.h **** 
1045:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_FUNCTION_Pos           0U                                         /*!< DWT FUN
1046:../../..\CubeG4\include/core_cm4.h **** #define DWT_FUNCTION_FUNCTION_Msk          (0xFUL /*<< DWT_FUNCTION_FUNCTION_Pos*/)    /*!< DWT FUN
1047:../../..\CubeG4\include/core_cm4.h **** 
1048:../../..\CubeG4\include/core_cm4.h **** /*@}*/ /* end of group CMSIS_DWT */
1049:../../..\CubeG4\include/core_cm4.h **** 
1050:../../..\CubeG4\include/core_cm4.h **** 
1051:../../..\CubeG4\include/core_cm4.h **** /**
1052:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
1053:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_TPI     Trace Port Interface (TPI)
1054:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the Trace Port Interface (TPI)
1055:../../..\CubeG4\include/core_cm4.h ****   @{
1056:../../..\CubeG4\include/core_cm4.h ****  */
1057:../../..\CubeG4\include/core_cm4.h **** 
1058:../../..\CubeG4\include/core_cm4.h **** /**
1059:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the Trace Port Interface Register (TPI).
1060:../../..\CubeG4\include/core_cm4.h ****  */
1061:../../..\CubeG4\include/core_cm4.h **** typedef struct
1062:../../..\CubeG4\include/core_cm4.h **** {
1063:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t SSPSR;                  /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Reg
1064:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CSPSR;                  /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Regis
1065:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED0[2U];
1066:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ACPR;                   /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Reg
1067:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED1[55U];
1068:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t SPPR;                   /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register *
1069:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED2[131U];
1070:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t FFSR;                   /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Regis
1071:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FFCR;                   /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Regi
1072:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t FSCR;                   /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counte
1073:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED3[759U];
1074:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t TRIGGER;                /*!< Offset: 0xEE8 (R/ )  TRIGGER Register */
1075:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t FIFO0;                  /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
1076:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t ITATBCTR2;              /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
1077:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED4[1U];
1078:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t ITATBCTR0;              /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
1079:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t FIFO1;                  /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
1080:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t ITCTRL;                 /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
1081:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED5[39U];
1082:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CLAIMSET;               /*!< Offset: 0xFA0 (R/W)  Claim tag set */
1083:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CLAIMCLR;               /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
1084:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED7[8U];
1085:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t DEVID;                  /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
1086:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t DEVTYPE;                /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
1087:../../..\CubeG4\include/core_cm4.h **** } TPI_Type;
1088:../../..\CubeG4\include/core_cm4.h **** 
1089:../../..\CubeG4\include/core_cm4.h **** /* TPI Asynchronous Clock Prescaler Register Definitions */
1090:../../..\CubeG4\include/core_cm4.h **** #define TPI_ACPR_PRESCALER_Pos              0U                                         /*!< TPI ACP
1091:../../..\CubeG4\include/core_cm4.h **** #define TPI_ACPR_PRESCALER_Msk             (0x1FFFUL /*<< TPI_ACPR_PRESCALER_Pos*/)    /*!< TPI ACP
1092:../../..\CubeG4\include/core_cm4.h **** 
1093:../../..\CubeG4\include/core_cm4.h **** /* TPI Selected Pin Protocol Register Definitions */
1094:../../..\CubeG4\include/core_cm4.h **** #define TPI_SPPR_TXMODE_Pos                 0U                                         /*!< TPI SPP
1095:../../..\CubeG4\include/core_cm4.h **** #define TPI_SPPR_TXMODE_Msk                (0x3UL /*<< TPI_SPPR_TXMODE_Pos*/)          /*!< TPI SPP
1096:../../..\CubeG4\include/core_cm4.h **** 
1097:../../..\CubeG4\include/core_cm4.h **** /* TPI Formatter and Flush Status Register Definitions */
1098:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_FtNonStop_Pos              3U                                         /*!< TPI FFS
1099:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_FtNonStop_Msk             (0x1UL << TPI_FFSR_FtNonStop_Pos)           /*!< TPI FFS
1100:../../..\CubeG4\include/core_cm4.h **** 
1101:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_TCPresent_Pos              2U                                         /*!< TPI FFS
1102:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_TCPresent_Msk             (0x1UL << TPI_FFSR_TCPresent_Pos)           /*!< TPI FFS
1103:../../..\CubeG4\include/core_cm4.h **** 
1104:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_FtStopped_Pos              1U                                         /*!< TPI FFS
1105:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_FtStopped_Msk             (0x1UL << TPI_FFSR_FtStopped_Pos)           /*!< TPI FFS
1106:../../..\CubeG4\include/core_cm4.h **** 
1107:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_FlInProg_Pos               0U                                         /*!< TPI FFS
1108:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFSR_FlInProg_Msk              (0x1UL /*<< TPI_FFSR_FlInProg_Pos*/)        /*!< TPI FFS
1109:../../..\CubeG4\include/core_cm4.h **** 
1110:../../..\CubeG4\include/core_cm4.h **** /* TPI Formatter and Flush Control Register Definitions */
1111:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFCR_TrigIn_Pos                 8U                                         /*!< TPI FFC
1112:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFCR_TrigIn_Msk                (0x1UL << TPI_FFCR_TrigIn_Pos)              /*!< TPI FFC
1113:../../..\CubeG4\include/core_cm4.h **** 
1114:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFCR_EnFCont_Pos                1U                                         /*!< TPI FFC
1115:../../..\CubeG4\include/core_cm4.h **** #define TPI_FFCR_EnFCont_Msk               (0x1UL << TPI_FFCR_EnFCont_Pos)             /*!< TPI FFC
1116:../../..\CubeG4\include/core_cm4.h **** 
1117:../../..\CubeG4\include/core_cm4.h **** /* TPI TRIGGER Register Definitions */
1118:../../..\CubeG4\include/core_cm4.h **** #define TPI_TRIGGER_TRIGGER_Pos             0U                                         /*!< TPI TRI
1119:../../..\CubeG4\include/core_cm4.h **** #define TPI_TRIGGER_TRIGGER_Msk            (0x1UL /*<< TPI_TRIGGER_TRIGGER_Pos*/)      /*!< TPI TRI
1120:../../..\CubeG4\include/core_cm4.h **** 
1121:../../..\CubeG4\include/core_cm4.h **** /* TPI Integration ETM Data Register Definitions (FIFO0) */
1122:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ITM_ATVALID_Pos          29U                                         /*!< TPI FIF
1123:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ITM_ATVALID_Pos)        /*!< TPI FIF
1124:../../..\CubeG4\include/core_cm4.h **** 
1125:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ITM_bytecount_Pos        27U                                         /*!< TPI FIF
1126:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ITM_bytecount_Msk        (0x3UL << TPI_FIFO0_ITM_bytecount_Pos)      /*!< TPI FIF
1127:../../..\CubeG4\include/core_cm4.h **** 
1128:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM_ATVALID_Pos          26U                                         /*!< TPI FIF
1129:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ETM_ATVALID_Pos)        /*!< TPI FIF
1130:../../..\CubeG4\include/core_cm4.h **** 
1131:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM_bytecount_Pos        24U                                         /*!< TPI FIF
1132:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM_bytecount_Msk        (0x3UL << TPI_FIFO0_ETM_bytecount_Pos)      /*!< TPI FIF
1133:../../..\CubeG4\include/core_cm4.h **** 
1134:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM2_Pos                 16U                                         /*!< TPI FIF
1135:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM2_Msk                 (0xFFUL << TPI_FIFO0_ETM2_Pos)              /*!< TPI FIF
1136:../../..\CubeG4\include/core_cm4.h **** 
1137:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM1_Pos                  8U                                         /*!< TPI FIF
1138:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM1_Msk                 (0xFFUL << TPI_FIFO0_ETM1_Pos)              /*!< TPI FIF
1139:../../..\CubeG4\include/core_cm4.h **** 
1140:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM0_Pos                  0U                                         /*!< TPI FIF
1141:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO0_ETM0_Msk                 (0xFFUL /*<< TPI_FIFO0_ETM0_Pos*/)          /*!< TPI FIF
1142:../../..\CubeG4\include/core_cm4.h **** 
1143:../../..\CubeG4\include/core_cm4.h **** /* TPI ITATBCTR2 Register Definitions */
1144:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR2_ATREADY2_Pos          0U                                         /*!< TPI ITA
1145:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR2_ATREADY2_Msk         (0x1UL /*<< TPI_ITATBCTR2_ATREADY2_Pos*/)   /*!< TPI ITA
1146:../../..\CubeG4\include/core_cm4.h **** 
1147:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR2_ATREADY1_Pos          0U                                         /*!< TPI ITA
1148:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR2_ATREADY1_Msk         (0x1UL /*<< TPI_ITATBCTR2_ATREADY1_Pos*/)   /*!< TPI ITA
1149:../../..\CubeG4\include/core_cm4.h **** 
1150:../../..\CubeG4\include/core_cm4.h **** /* TPI Integration ITM Data Register Definitions (FIFO1) */
1151:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM_ATVALID_Pos          29U                                         /*!< TPI FIF
1152:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ITM_ATVALID_Pos)        /*!< TPI FIF
1153:../../..\CubeG4\include/core_cm4.h **** 
1154:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM_bytecount_Pos        27U                                         /*!< TPI FIF
1155:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM_bytecount_Msk        (0x3UL << TPI_FIFO1_ITM_bytecount_Pos)      /*!< TPI FIF
1156:../../..\CubeG4\include/core_cm4.h **** 
1157:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ETM_ATVALID_Pos          26U                                         /*!< TPI FIF
1158:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ETM_ATVALID_Pos)        /*!< TPI FIF
1159:../../..\CubeG4\include/core_cm4.h **** 
1160:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ETM_bytecount_Pos        24U                                         /*!< TPI FIF
1161:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ETM_bytecount_Msk        (0x3UL << TPI_FIFO1_ETM_bytecount_Pos)      /*!< TPI FIF
1162:../../..\CubeG4\include/core_cm4.h **** 
1163:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM2_Pos                 16U                                         /*!< TPI FIF
1164:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM2_Msk                 (0xFFUL << TPI_FIFO1_ITM2_Pos)              /*!< TPI FIF
1165:../../..\CubeG4\include/core_cm4.h **** 
1166:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM1_Pos                  8U                                         /*!< TPI FIF
1167:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM1_Msk                 (0xFFUL << TPI_FIFO1_ITM1_Pos)              /*!< TPI FIF
1168:../../..\CubeG4\include/core_cm4.h **** 
1169:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM0_Pos                  0U                                         /*!< TPI FIF
1170:../../..\CubeG4\include/core_cm4.h **** #define TPI_FIFO1_ITM0_Msk                 (0xFFUL /*<< TPI_FIFO1_ITM0_Pos*/)          /*!< TPI FIF
1171:../../..\CubeG4\include/core_cm4.h **** 
1172:../../..\CubeG4\include/core_cm4.h **** /* TPI ITATBCTR0 Register Definitions */
1173:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR0_ATREADY2_Pos          0U                                         /*!< TPI ITA
1174:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR0_ATREADY2_Msk         (0x1UL /*<< TPI_ITATBCTR0_ATREADY2_Pos*/)   /*!< TPI ITA
1175:../../..\CubeG4\include/core_cm4.h **** 
1176:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR0_ATREADY1_Pos          0U                                         /*!< TPI ITA
1177:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITATBCTR0_ATREADY1_Msk         (0x1UL /*<< TPI_ITATBCTR0_ATREADY1_Pos*/)   /*!< TPI ITA
1178:../../..\CubeG4\include/core_cm4.h **** 
1179:../../..\CubeG4\include/core_cm4.h **** /* TPI Integration Mode Control Register Definitions */
1180:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITCTRL_Mode_Pos                 0U                                         /*!< TPI ITC
1181:../../..\CubeG4\include/core_cm4.h **** #define TPI_ITCTRL_Mode_Msk                (0x3UL /*<< TPI_ITCTRL_Mode_Pos*/)          /*!< TPI ITC
1182:../../..\CubeG4\include/core_cm4.h **** 
1183:../../..\CubeG4\include/core_cm4.h **** /* TPI DEVID Register Definitions */
1184:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_NRZVALID_Pos             11U                                         /*!< TPI DEV
1185:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_NRZVALID_Msk             (0x1UL << TPI_DEVID_NRZVALID_Pos)           /*!< TPI DEV
1186:../../..\CubeG4\include/core_cm4.h **** 
1187:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_MANCVALID_Pos            10U                                         /*!< TPI DEV
1188:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_MANCVALID_Msk            (0x1UL << TPI_DEVID_MANCVALID_Pos)          /*!< TPI DEV
1189:../../..\CubeG4\include/core_cm4.h **** 
1190:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_PTINVALID_Pos             9U                                         /*!< TPI DEV
1191:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_PTINVALID_Msk            (0x1UL << TPI_DEVID_PTINVALID_Pos)          /*!< TPI DEV
1192:../../..\CubeG4\include/core_cm4.h **** 
1193:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_MinBufSz_Pos              6U                                         /*!< TPI DEV
1194:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_MinBufSz_Msk             (0x7UL << TPI_DEVID_MinBufSz_Pos)           /*!< TPI DEV
1195:../../..\CubeG4\include/core_cm4.h **** 
1196:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_AsynClkIn_Pos             5U                                         /*!< TPI DEV
1197:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_AsynClkIn_Msk            (0x1UL << TPI_DEVID_AsynClkIn_Pos)          /*!< TPI DEV
1198:../../..\CubeG4\include/core_cm4.h **** 
1199:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_NrTraceInput_Pos          0U                                         /*!< TPI DEV
1200:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVID_NrTraceInput_Msk         (0x1FUL /*<< TPI_DEVID_NrTraceInput_Pos*/)  /*!< TPI DEV
1201:../../..\CubeG4\include/core_cm4.h **** 
1202:../../..\CubeG4\include/core_cm4.h **** /* TPI DEVTYPE Register Definitions */
1203:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVTYPE_SubType_Pos             4U                                         /*!< TPI DEV
1204:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVTYPE_SubType_Msk            (0xFUL /*<< TPI_DEVTYPE_SubType_Pos*/)      /*!< TPI DEV
1205:../../..\CubeG4\include/core_cm4.h **** 
1206:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVTYPE_MajorType_Pos           0U                                         /*!< TPI DEV
1207:../../..\CubeG4\include/core_cm4.h **** #define TPI_DEVTYPE_MajorType_Msk          (0xFUL << TPI_DEVTYPE_MajorType_Pos)        /*!< TPI DEV
1208:../../..\CubeG4\include/core_cm4.h **** 
1209:../../..\CubeG4\include/core_cm4.h **** /*@}*/ /* end of group CMSIS_TPI */
1210:../../..\CubeG4\include/core_cm4.h **** 
1211:../../..\CubeG4\include/core_cm4.h **** 
1212:../../..\CubeG4\include/core_cm4.h **** #if defined (__MPU_PRESENT) && (__MPU_PRESENT == 1U)
1213:../../..\CubeG4\include/core_cm4.h **** /**
1214:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
1215:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
1216:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the Memory Protection Unit (MPU)
1217:../../..\CubeG4\include/core_cm4.h ****   @{
1218:../../..\CubeG4\include/core_cm4.h ****  */
1219:../../..\CubeG4\include/core_cm4.h **** 
1220:../../..\CubeG4\include/core_cm4.h **** /**
1221:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the Memory Protection Unit (MPU).
1222:../../..\CubeG4\include/core_cm4.h ****  */
1223:../../..\CubeG4\include/core_cm4.h **** typedef struct
1224:../../..\CubeG4\include/core_cm4.h **** {
1225:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t TYPE;                   /*!< Offset: 0x000 (R/ )  MPU Type Register */
1226:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x004 (R/W)  MPU Control Register */
1227:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RNR;                    /*!< Offset: 0x008 (R/W)  MPU Region RNRber Register */
1228:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RBAR;                   /*!< Offset: 0x00C (R/W)  MPU Region Base Address Register
1229:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RASR;                   /*!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Re
1230:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RBAR_A1;                /*!< Offset: 0x014 (R/W)  MPU Alias 1 Region Base Address 
1231:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RASR_A1;                /*!< Offset: 0x018 (R/W)  MPU Alias 1 Region Attribute and
1232:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RBAR_A2;                /*!< Offset: 0x01C (R/W)  MPU Alias 2 Region Base Address 
1233:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RASR_A2;                /*!< Offset: 0x020 (R/W)  MPU Alias 2 Region Attribute and
1234:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RBAR_A3;                /*!< Offset: 0x024 (R/W)  MPU Alias 3 Region Base Address 
1235:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t RASR_A3;                /*!< Offset: 0x028 (R/W)  MPU Alias 3 Region Attribute and
1236:../../..\CubeG4\include/core_cm4.h **** } MPU_Type;
1237:../../..\CubeG4\include/core_cm4.h **** 
1238:../../..\CubeG4\include/core_cm4.h **** #define MPU_TYPE_RALIASES                  4U
1239:../../..\CubeG4\include/core_cm4.h **** 
1240:../../..\CubeG4\include/core_cm4.h **** /* MPU Type Register Definitions */
1241:../../..\CubeG4\include/core_cm4.h **** #define MPU_TYPE_IREGION_Pos               16U                                            /*!< MPU 
1242:../../..\CubeG4\include/core_cm4.h **** #define MPU_TYPE_IREGION_Msk               (0xFFUL << MPU_TYPE_IREGION_Pos)               /*!< MPU 
1243:../../..\CubeG4\include/core_cm4.h **** 
1244:../../..\CubeG4\include/core_cm4.h **** #define MPU_TYPE_DREGION_Pos                8U                                            /*!< MPU 
1245:../../..\CubeG4\include/core_cm4.h **** #define MPU_TYPE_DREGION_Msk               (0xFFUL << MPU_TYPE_DREGION_Pos)               /*!< MPU 
1246:../../..\CubeG4\include/core_cm4.h **** 
1247:../../..\CubeG4\include/core_cm4.h **** #define MPU_TYPE_SEPARATE_Pos               0U                                            /*!< MPU 
1248:../../..\CubeG4\include/core_cm4.h **** #define MPU_TYPE_SEPARATE_Msk              (1UL /*<< MPU_TYPE_SEPARATE_Pos*/)             /*!< MPU 
1249:../../..\CubeG4\include/core_cm4.h **** 
1250:../../..\CubeG4\include/core_cm4.h **** /* MPU Control Register Definitions */
1251:../../..\CubeG4\include/core_cm4.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2U                                            /*!< MPU 
1252:../../..\CubeG4\include/core_cm4.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1UL << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
1253:../../..\CubeG4\include/core_cm4.h **** 
1254:../../..\CubeG4\include/core_cm4.h **** #define MPU_CTRL_HFNMIENA_Pos               1U                                            /*!< MPU 
1255:../../..\CubeG4\include/core_cm4.h **** #define MPU_CTRL_HFNMIENA_Msk              (1UL << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
1256:../../..\CubeG4\include/core_cm4.h **** 
1257:../../..\CubeG4\include/core_cm4.h **** #define MPU_CTRL_ENABLE_Pos                 0U                                            /*!< MPU 
1258:../../..\CubeG4\include/core_cm4.h **** #define MPU_CTRL_ENABLE_Msk                (1UL /*<< MPU_CTRL_ENABLE_Pos*/)               /*!< MPU 
1259:../../..\CubeG4\include/core_cm4.h **** 
1260:../../..\CubeG4\include/core_cm4.h **** /* MPU Region Number Register Definitions */
1261:../../..\CubeG4\include/core_cm4.h **** #define MPU_RNR_REGION_Pos                  0U                                            /*!< MPU 
1262:../../..\CubeG4\include/core_cm4.h **** #define MPU_RNR_REGION_Msk                 (0xFFUL /*<< MPU_RNR_REGION_Pos*/)             /*!< MPU 
1263:../../..\CubeG4\include/core_cm4.h **** 
1264:../../..\CubeG4\include/core_cm4.h **** /* MPU Region Base Address Register Definitions */
1265:../../..\CubeG4\include/core_cm4.h **** #define MPU_RBAR_ADDR_Pos                   5U                                            /*!< MPU 
1266:../../..\CubeG4\include/core_cm4.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFUL << MPU_RBAR_ADDR_Pos)             /*!< MPU 
1267:../../..\CubeG4\include/core_cm4.h **** 
1268:../../..\CubeG4\include/core_cm4.h **** #define MPU_RBAR_VALID_Pos                  4U                                            /*!< MPU 
1269:../../..\CubeG4\include/core_cm4.h **** #define MPU_RBAR_VALID_Msk                 (1UL << MPU_RBAR_VALID_Pos)                    /*!< MPU 
1270:../../..\CubeG4\include/core_cm4.h **** 
1271:../../..\CubeG4\include/core_cm4.h **** #define MPU_RBAR_REGION_Pos                 0U                                            /*!< MPU 
1272:../../..\CubeG4\include/core_cm4.h **** #define MPU_RBAR_REGION_Msk                (0xFUL /*<< MPU_RBAR_REGION_Pos*/)             /*!< MPU 
1273:../../..\CubeG4\include/core_cm4.h **** 
1274:../../..\CubeG4\include/core_cm4.h **** /* MPU Region Attribute and Size Register Definitions */
1275:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_ATTRS_Pos                 16U                                            /*!< MPU 
1276:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_ATTRS_Msk                 (0xFFFFUL << MPU_RASR_ATTRS_Pos)               /*!< MPU 
1277:../../..\CubeG4\include/core_cm4.h **** 
1278:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_XN_Pos                    28U                                            /*!< MPU 
1279:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_XN_Msk                    (1UL << MPU_RASR_XN_Pos)                       /*!< MPU 
1280:../../..\CubeG4\include/core_cm4.h **** 
1281:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_AP_Pos                    24U                                            /*!< MPU 
1282:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_AP_Msk                    (0x7UL << MPU_RASR_AP_Pos)                     /*!< MPU 
1283:../../..\CubeG4\include/core_cm4.h **** 
1284:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_TEX_Pos                   19U                                            /*!< MPU 
1285:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_TEX_Msk                   (0x7UL << MPU_RASR_TEX_Pos)                    /*!< MPU 
1286:../../..\CubeG4\include/core_cm4.h **** 
1287:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_S_Pos                     18U                                            /*!< MPU 
1288:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_S_Msk                     (1UL << MPU_RASR_S_Pos)                        /*!< MPU 
1289:../../..\CubeG4\include/core_cm4.h **** 
1290:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_C_Pos                     17U                                            /*!< MPU 
1291:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_C_Msk                     (1UL << MPU_RASR_C_Pos)                        /*!< MPU 
1292:../../..\CubeG4\include/core_cm4.h **** 
1293:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_B_Pos                     16U                                            /*!< MPU 
1294:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_B_Msk                     (1UL << MPU_RASR_B_Pos)                        /*!< MPU 
1295:../../..\CubeG4\include/core_cm4.h **** 
1296:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_SRD_Pos                    8U                                            /*!< MPU 
1297:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_SRD_Msk                   (0xFFUL << MPU_RASR_SRD_Pos)                   /*!< MPU 
1298:../../..\CubeG4\include/core_cm4.h **** 
1299:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_SIZE_Pos                   1U                                            /*!< MPU 
1300:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_SIZE_Msk                  (0x1FUL << MPU_RASR_SIZE_Pos)                  /*!< MPU 
1301:../../..\CubeG4\include/core_cm4.h **** 
1302:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_ENABLE_Pos                 0U                                            /*!< MPU 
1303:../../..\CubeG4\include/core_cm4.h **** #define MPU_RASR_ENABLE_Msk                (1UL /*<< MPU_RASR_ENABLE_Pos*/)               /*!< MPU 
1304:../../..\CubeG4\include/core_cm4.h **** 
1305:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_MPU */
1306:../../..\CubeG4\include/core_cm4.h **** #endif /* defined (__MPU_PRESENT) && (__MPU_PRESENT == 1U) */
1307:../../..\CubeG4\include/core_cm4.h **** 
1308:../../..\CubeG4\include/core_cm4.h **** 
1309:../../..\CubeG4\include/core_cm4.h **** /**
1310:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
1311:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_FPU     Floating Point Unit (FPU)
1312:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the Floating Point Unit (FPU)
1313:../../..\CubeG4\include/core_cm4.h ****   @{
1314:../../..\CubeG4\include/core_cm4.h ****  */
1315:../../..\CubeG4\include/core_cm4.h **** 
1316:../../..\CubeG4\include/core_cm4.h **** /**
1317:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the Floating Point Unit (FPU).
1318:../../..\CubeG4\include/core_cm4.h ****  */
1319:../../..\CubeG4\include/core_cm4.h **** typedef struct
1320:../../..\CubeG4\include/core_cm4.h **** {
1321:../../..\CubeG4\include/core_cm4.h ****         uint32_t RESERVED0[1U];
1322:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FPCCR;                  /*!< Offset: 0x004 (R/W)  Floating-Point Context Control R
1323:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FPCAR;                  /*!< Offset: 0x008 (R/W)  Floating-Point Context Address R
1324:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t FPDSCR;                 /*!< Offset: 0x00C (R/W)  Floating-Point Default Status Co
1325:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t MVFR0;                  /*!< Offset: 0x010 (R/ )  Media and FP Feature Register 0 
1326:../../..\CubeG4\include/core_cm4.h ****   __IM  uint32_t MVFR1;                  /*!< Offset: 0x014 (R/ )  Media and FP Feature Register 1 
1327:../../..\CubeG4\include/core_cm4.h **** } FPU_Type;
1328:../../..\CubeG4\include/core_cm4.h **** 
1329:../../..\CubeG4\include/core_cm4.h **** /* Floating-Point Context Control Register Definitions */
1330:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_ASPEN_Pos                31U                                            /*!< FPCC
1331:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_ASPEN_Msk                (1UL << FPU_FPCCR_ASPEN_Pos)                   /*!< FPCC
1332:../../..\CubeG4\include/core_cm4.h **** 
1333:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_LSPEN_Pos                30U                                            /*!< FPCC
1334:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_LSPEN_Msk                (1UL << FPU_FPCCR_LSPEN_Pos)                   /*!< FPCC
1335:../../..\CubeG4\include/core_cm4.h **** 
1336:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_MONRDY_Pos                8U                                            /*!< FPCC
1337:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_MONRDY_Msk               (1UL << FPU_FPCCR_MONRDY_Pos)                  /*!< FPCC
1338:../../..\CubeG4\include/core_cm4.h **** 
1339:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_BFRDY_Pos                 6U                                            /*!< FPCC
1340:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_BFRDY_Msk                (1UL << FPU_FPCCR_BFRDY_Pos)                   /*!< FPCC
1341:../../..\CubeG4\include/core_cm4.h **** 
1342:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_MMRDY_Pos                 5U                                            /*!< FPCC
1343:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_MMRDY_Msk                (1UL << FPU_FPCCR_MMRDY_Pos)                   /*!< FPCC
1344:../../..\CubeG4\include/core_cm4.h **** 
1345:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_HFRDY_Pos                 4U                                            /*!< FPCC
1346:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_HFRDY_Msk                (1UL << FPU_FPCCR_HFRDY_Pos)                   /*!< FPCC
1347:../../..\CubeG4\include/core_cm4.h **** 
1348:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_THREAD_Pos                3U                                            /*!< FPCC
1349:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_THREAD_Msk               (1UL << FPU_FPCCR_THREAD_Pos)                  /*!< FPCC
1350:../../..\CubeG4\include/core_cm4.h **** 
1351:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_USER_Pos                  1U                                            /*!< FPCC
1352:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_USER_Msk                 (1UL << FPU_FPCCR_USER_Pos)                    /*!< FPCC
1353:../../..\CubeG4\include/core_cm4.h **** 
1354:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_LSPACT_Pos                0U                                            /*!< FPCC
1355:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCCR_LSPACT_Msk               (1UL /*<< FPU_FPCCR_LSPACT_Pos*/)              /*!< FPCC
1356:../../..\CubeG4\include/core_cm4.h **** 
1357:../../..\CubeG4\include/core_cm4.h **** /* Floating-Point Context Address Register Definitions */
1358:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCAR_ADDRESS_Pos               3U                                            /*!< FPCA
1359:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPCAR_ADDRESS_Msk              (0x1FFFFFFFUL << FPU_FPCAR_ADDRESS_Pos)        /*!< FPCA
1360:../../..\CubeG4\include/core_cm4.h **** 
1361:../../..\CubeG4\include/core_cm4.h **** /* Floating-Point Default Status Control Register Definitions */
1362:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_AHP_Pos                 26U                                            /*!< FPDS
1363:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_AHP_Msk                 (1UL << FPU_FPDSCR_AHP_Pos)                    /*!< FPDS
1364:../../..\CubeG4\include/core_cm4.h **** 
1365:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_DN_Pos                  25U                                            /*!< FPDS
1366:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_DN_Msk                  (1UL << FPU_FPDSCR_DN_Pos)                     /*!< FPDS
1367:../../..\CubeG4\include/core_cm4.h **** 
1368:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_FZ_Pos                  24U                                            /*!< FPDS
1369:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_FZ_Msk                  (1UL << FPU_FPDSCR_FZ_Pos)                     /*!< FPDS
1370:../../..\CubeG4\include/core_cm4.h **** 
1371:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_RMode_Pos               22U                                            /*!< FPDS
1372:../../..\CubeG4\include/core_cm4.h **** #define FPU_FPDSCR_RMode_Msk               (3UL << FPU_FPDSCR_RMode_Pos)                  /*!< FPDS
1373:../../..\CubeG4\include/core_cm4.h **** 
1374:../../..\CubeG4\include/core_cm4.h **** /* Media and FP Feature Register 0 Definitions */
1375:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_FP_rounding_modes_Pos    28U                                            /*!< MVFR
1376:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_FP_rounding_modes_Msk    (0xFUL << FPU_MVFR0_FP_rounding_modes_Pos)     /*!< MVFR
1377:../../..\CubeG4\include/core_cm4.h **** 
1378:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Short_vectors_Pos        24U                                            /*!< MVFR
1379:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Short_vectors_Msk        (0xFUL << FPU_MVFR0_Short_vectors_Pos)         /*!< MVFR
1380:../../..\CubeG4\include/core_cm4.h **** 
1381:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Square_root_Pos          20U                                            /*!< MVFR
1382:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Square_root_Msk          (0xFUL << FPU_MVFR0_Square_root_Pos)           /*!< MVFR
1383:../../..\CubeG4\include/core_cm4.h **** 
1384:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Divide_Pos               16U                                            /*!< MVFR
1385:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Divide_Msk               (0xFUL << FPU_MVFR0_Divide_Pos)                /*!< MVFR
1386:../../..\CubeG4\include/core_cm4.h **** 
1387:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_FP_excep_trapping_Pos    12U                                            /*!< MVFR
1388:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_FP_excep_trapping_Msk    (0xFUL << FPU_MVFR0_FP_excep_trapping_Pos)     /*!< MVFR
1389:../../..\CubeG4\include/core_cm4.h **** 
1390:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Double_precision_Pos      8U                                            /*!< MVFR
1391:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Double_precision_Msk     (0xFUL << FPU_MVFR0_Double_precision_Pos)      /*!< MVFR
1392:../../..\CubeG4\include/core_cm4.h **** 
1393:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Single_precision_Pos      4U                                            /*!< MVFR
1394:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_Single_precision_Msk     (0xFUL << FPU_MVFR0_Single_precision_Pos)      /*!< MVFR
1395:../../..\CubeG4\include/core_cm4.h **** 
1396:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_A_SIMD_registers_Pos      0U                                            /*!< MVFR
1397:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR0_A_SIMD_registers_Msk     (0xFUL /*<< FPU_MVFR0_A_SIMD_registers_Pos*/)  /*!< MVFR
1398:../../..\CubeG4\include/core_cm4.h **** 
1399:../../..\CubeG4\include/core_cm4.h **** /* Media and FP Feature Register 1 Definitions */
1400:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_FP_fused_MAC_Pos         28U                                            /*!< MVFR
1401:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_FP_fused_MAC_Msk         (0xFUL << FPU_MVFR1_FP_fused_MAC_Pos)          /*!< MVFR
1402:../../..\CubeG4\include/core_cm4.h **** 
1403:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_FP_HPFP_Pos              24U                                            /*!< MVFR
1404:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_FP_HPFP_Msk              (0xFUL << FPU_MVFR1_FP_HPFP_Pos)               /*!< MVFR
1405:../../..\CubeG4\include/core_cm4.h **** 
1406:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_D_NaN_mode_Pos            4U                                            /*!< MVFR
1407:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_D_NaN_mode_Msk           (0xFUL << FPU_MVFR1_D_NaN_mode_Pos)            /*!< MVFR
1408:../../..\CubeG4\include/core_cm4.h **** 
1409:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_FtZ_mode_Pos              0U                                            /*!< MVFR
1410:../../..\CubeG4\include/core_cm4.h **** #define FPU_MVFR1_FtZ_mode_Msk             (0xFUL /*<< FPU_MVFR1_FtZ_mode_Pos*/)          /*!< MVFR
1411:../../..\CubeG4\include/core_cm4.h **** 
1412:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_FPU */
1413:../../..\CubeG4\include/core_cm4.h **** 
1414:../../..\CubeG4\include/core_cm4.h **** 
1415:../../..\CubeG4\include/core_cm4.h **** /**
1416:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_core_register
1417:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
1418:../../..\CubeG4\include/core_cm4.h ****   \brief    Type definitions for the Core Debug Registers
1419:../../..\CubeG4\include/core_cm4.h ****   @{
1420:../../..\CubeG4\include/core_cm4.h ****  */
1421:../../..\CubeG4\include/core_cm4.h **** 
1422:../../..\CubeG4\include/core_cm4.h **** /**
1423:../../..\CubeG4\include/core_cm4.h ****   \brief  Structure type to access the Core Debug Register (CoreDebug).
1424:../../..\CubeG4\include/core_cm4.h ****  */
1425:../../..\CubeG4\include/core_cm4.h **** typedef struct
1426:../../..\CubeG4\include/core_cm4.h **** {
1427:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t DHCSR;                  /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status
1428:../../..\CubeG4\include/core_cm4.h ****   __OM  uint32_t DCRSR;                  /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Reg
1429:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t DCRDR;                  /*!< Offset: 0x008 (R/W)  Debug Core Register Data Registe
1430:../../..\CubeG4\include/core_cm4.h ****   __IOM uint32_t DEMCR;                  /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Cont
1431:../../..\CubeG4\include/core_cm4.h **** } CoreDebug_Type;
1432:../../..\CubeG4\include/core_cm4.h **** 
1433:../../..\CubeG4\include/core_cm4.h **** /* Debug Halting Control and Status Register Definitions */
1434:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16U                                            /*!< Core
1435:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFUL << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
1436:../../..\CubeG4\include/core_cm4.h **** 
1437:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25U                                            /*!< Core
1438:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1UL << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
1439:../../..\CubeG4\include/core_cm4.h **** 
1440:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24U                                            /*!< Core
1441:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1UL << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
1442:../../..\CubeG4\include/core_cm4.h **** 
1443:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19U                                            /*!< Core
1444:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1UL << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
1445:../../..\CubeG4\include/core_cm4.h **** 
1446:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18U                                            /*!< Core
1447:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1UL << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
1448:../../..\CubeG4\include/core_cm4.h **** 
1449:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17U                                            /*!< Core
1450:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1UL << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
1451:../../..\CubeG4\include/core_cm4.h **** 
1452:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16U                                            /*!< Core
1453:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1UL << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
1454:../../..\CubeG4\include/core_cm4.h **** 
1455:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5U                                            /*!< Core
1456:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1UL << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
1457:../../..\CubeG4\include/core_cm4.h **** 
1458:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3U                                            /*!< Core
1459:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1UL << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
1460:../../..\CubeG4\include/core_cm4.h **** 
1461:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2U                                            /*!< Core
1462:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1UL << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
1463:../../..\CubeG4\include/core_cm4.h **** 
1464:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1U                                            /*!< Core
1465:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1UL << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
1466:../../..\CubeG4\include/core_cm4.h **** 
1467:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0U                                            /*!< Core
1468:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1UL /*<< CoreDebug_DHCSR_C_DEBUGEN_Pos*/)     /*!< Core
1469:../../..\CubeG4\include/core_cm4.h **** 
1470:../../..\CubeG4\include/core_cm4.h **** /* Debug Core Register Selector Register Definitions */
1471:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16U                                            /*!< Core
1472:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1UL << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
1473:../../..\CubeG4\include/core_cm4.h **** 
1474:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0U                                            /*!< Core
1475:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1FUL /*<< CoreDebug_DCRSR_REGSEL_Pos*/)     /*!< Core
1476:../../..\CubeG4\include/core_cm4.h **** 
1477:../../..\CubeG4\include/core_cm4.h **** /* Debug Exception and Monitor Control Register Definitions */
1478:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24U                                            /*!< Core
1479:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1UL << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
1480:../../..\CubeG4\include/core_cm4.h **** 
1481:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19U                                            /*!< Core
1482:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1UL << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
1483:../../..\CubeG4\include/core_cm4.h **** 
1484:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18U                                            /*!< Core
1485:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1UL << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
1486:../../..\CubeG4\include/core_cm4.h **** 
1487:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17U                                            /*!< Core
1488:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1UL << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
1489:../../..\CubeG4\include/core_cm4.h **** 
1490:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16U                                            /*!< Core
1491:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1UL << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
1492:../../..\CubeG4\include/core_cm4.h **** 
1493:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10U                                            /*!< Core
1494:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1UL << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
1495:../../..\CubeG4\include/core_cm4.h **** 
1496:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9U                                            /*!< Core
1497:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1UL << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
1498:../../..\CubeG4\include/core_cm4.h **** 
1499:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8U                                            /*!< Core
1500:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1UL << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
1501:../../..\CubeG4\include/core_cm4.h **** 
1502:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7U                                            /*!< Core
1503:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1UL << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
1504:../../..\CubeG4\include/core_cm4.h **** 
1505:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6U                                            /*!< Core
1506:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1UL << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
1507:../../..\CubeG4\include/core_cm4.h **** 
1508:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5U                                            /*!< Core
1509:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1UL << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
1510:../../..\CubeG4\include/core_cm4.h **** 
1511:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4U                                            /*!< Core
1512:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1UL << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
1513:../../..\CubeG4\include/core_cm4.h **** 
1514:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0U                                            /*!< Core
1515:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1UL /*<< CoreDebug_DEMCR_VC_CORERESET_Pos*/)  /*!< Core
1516:../../..\CubeG4\include/core_cm4.h **** 
1517:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_CoreDebug */
1518:../../..\CubeG4\include/core_cm4.h **** 
1519:../../..\CubeG4\include/core_cm4.h **** 
1520:../../..\CubeG4\include/core_cm4.h **** /**
1521:../../..\CubeG4\include/core_cm4.h ****   \ingroup    CMSIS_core_register
1522:../../..\CubeG4\include/core_cm4.h ****   \defgroup   CMSIS_core_bitfield     Core register bit field macros
1523:../../..\CubeG4\include/core_cm4.h ****   \brief      Macros for use with bit field definitions (xxx_Pos, xxx_Msk).
1524:../../..\CubeG4\include/core_cm4.h ****   @{
1525:../../..\CubeG4\include/core_cm4.h ****  */
1526:../../..\CubeG4\include/core_cm4.h **** 
1527:../../..\CubeG4\include/core_cm4.h **** /**
1528:../../..\CubeG4\include/core_cm4.h ****   \brief   Mask and shift a bit field value for use in a register bit range.
1529:../../..\CubeG4\include/core_cm4.h ****   \param[in] field  Name of the register bit field.
1530:../../..\CubeG4\include/core_cm4.h ****   \param[in] value  Value of the bit field. This parameter is interpreted as an uint32_t type.
1531:../../..\CubeG4\include/core_cm4.h ****   \return           Masked and shifted value.
1532:../../..\CubeG4\include/core_cm4.h **** */
1533:../../..\CubeG4\include/core_cm4.h **** #define _VAL2FLD(field, value)    (((uint32_t)(value) << field ## _Pos) & field ## _Msk)
1534:../../..\CubeG4\include/core_cm4.h **** 
1535:../../..\CubeG4\include/core_cm4.h **** /**
1536:../../..\CubeG4\include/core_cm4.h ****   \brief     Mask and shift a register value to extract a bit filed value.
1537:../../..\CubeG4\include/core_cm4.h ****   \param[in] field  Name of the register bit field.
1538:../../..\CubeG4\include/core_cm4.h ****   \param[in] value  Value of register. This parameter is interpreted as an uint32_t type.
1539:../../..\CubeG4\include/core_cm4.h ****   \return           Masked and shifted bit field value.
1540:../../..\CubeG4\include/core_cm4.h **** */
1541:../../..\CubeG4\include/core_cm4.h **** #define _FLD2VAL(field, value)    (((uint32_t)(value) & field ## _Msk) >> field ## _Pos)
1542:../../..\CubeG4\include/core_cm4.h **** 
1543:../../..\CubeG4\include/core_cm4.h **** /*@} end of group CMSIS_core_bitfield */
1544:../../..\CubeG4\include/core_cm4.h **** 
1545:../../..\CubeG4\include/core_cm4.h **** 
1546:../../..\CubeG4\include/core_cm4.h **** /**
1547:../../..\CubeG4\include/core_cm4.h ****   \ingroup    CMSIS_core_register
1548:../../..\CubeG4\include/core_cm4.h ****   \defgroup   CMSIS_core_base     Core Definitions
1549:../../..\CubeG4\include/core_cm4.h ****   \brief      Definitions for base addresses, unions, and structures.
1550:../../..\CubeG4\include/core_cm4.h ****   @{
1551:../../..\CubeG4\include/core_cm4.h ****  */
1552:../../..\CubeG4\include/core_cm4.h **** 
1553:../../..\CubeG4\include/core_cm4.h **** /* Memory mapping of Core Hardware */
1554:../../..\CubeG4\include/core_cm4.h **** #define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Bas
1555:../../..\CubeG4\include/core_cm4.h **** #define ITM_BASE            (0xE0000000UL)                            /*!< ITM Base Address */
1556:../../..\CubeG4\include/core_cm4.h **** #define DWT_BASE            (0xE0001000UL)                            /*!< DWT Base Address */
1557:../../..\CubeG4\include/core_cm4.h **** #define TPI_BASE            (0xE0040000UL)                            /*!< TPI Base Address */
1558:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug_BASE      (0xE000EDF0UL)                            /*!< Core Debug Base Address 
1559:../../..\CubeG4\include/core_cm4.h **** #define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address */
1560:../../..\CubeG4\include/core_cm4.h **** #define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address */
1561:../../..\CubeG4\include/core_cm4.h **** #define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Bas
1562:../../..\CubeG4\include/core_cm4.h **** 
1563:../../..\CubeG4\include/core_cm4.h **** #define SCnSCB              ((SCnSCB_Type    *)     SCS_BASE      )   /*!< System control Register 
1564:../../..\CubeG4\include/core_cm4.h **** #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct
1565:../../..\CubeG4\include/core_cm4.h **** #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration st
1566:../../..\CubeG4\include/core_cm4.h **** #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struc
1567:../../..\CubeG4\include/core_cm4.h **** #define ITM                 ((ITM_Type       *)     ITM_BASE      )   /*!< ITM configuration struct
1568:../../..\CubeG4\include/core_cm4.h **** #define DWT                 ((DWT_Type       *)     DWT_BASE      )   /*!< DWT configuration struct
1569:../../..\CubeG4\include/core_cm4.h **** #define TPI                 ((TPI_Type       *)     TPI_BASE      )   /*!< TPI configuration struct
1570:../../..\CubeG4\include/core_cm4.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
1571:../../..\CubeG4\include/core_cm4.h **** 
1572:../../..\CubeG4\include/core_cm4.h **** #if defined (__MPU_PRESENT) && (__MPU_PRESENT == 1U)
1573:../../..\CubeG4\include/core_cm4.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit *
1574:../../..\CubeG4\include/core_cm4.h ****   #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit *
1575:../../..\CubeG4\include/core_cm4.h **** #endif
1576:../../..\CubeG4\include/core_cm4.h **** 
1577:../../..\CubeG4\include/core_cm4.h **** #define FPU_BASE            (SCS_BASE +  0x0F30UL)                    /*!< Floating Point Unit */
1578:../../..\CubeG4\include/core_cm4.h **** #define FPU                 ((FPU_Type       *)     FPU_BASE      )   /*!< Floating Point Unit */
1579:../../..\CubeG4\include/core_cm4.h **** 
1580:../../..\CubeG4\include/core_cm4.h **** /*@} */
1581:../../..\CubeG4\include/core_cm4.h **** 
1582:../../..\CubeG4\include/core_cm4.h **** 
1583:../../..\CubeG4\include/core_cm4.h **** 
1584:../../..\CubeG4\include/core_cm4.h **** /*******************************************************************************
1585:../../..\CubeG4\include/core_cm4.h ****  *                Hardware Abstraction Layer
1586:../../..\CubeG4\include/core_cm4.h ****   Core Function Interface contains:
1587:../../..\CubeG4\include/core_cm4.h ****   - Core NVIC Functions
1588:../../..\CubeG4\include/core_cm4.h ****   - Core SysTick Functions
1589:../../..\CubeG4\include/core_cm4.h ****   - Core Debug Functions
1590:../../..\CubeG4\include/core_cm4.h ****   - Core Register Access Functions
1591:../../..\CubeG4\include/core_cm4.h ****  ******************************************************************************/
1592:../../..\CubeG4\include/core_cm4.h **** /**
1593:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
1594:../../..\CubeG4\include/core_cm4.h **** */
1595:../../..\CubeG4\include/core_cm4.h **** 
1596:../../..\CubeG4\include/core_cm4.h **** 
1597:../../..\CubeG4\include/core_cm4.h **** 
1598:../../..\CubeG4\include/core_cm4.h **** /* ##########################   NVIC functions  #################################### */
1599:../../..\CubeG4\include/core_cm4.h **** /**
1600:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_Core_FunctionInterface
1601:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_Core_NVICFunctions NVIC Functions
1602:../../..\CubeG4\include/core_cm4.h ****   \brief    Functions that manage interrupts and exceptions via the NVIC.
1603:../../..\CubeG4\include/core_cm4.h ****   @{
1604:../../..\CubeG4\include/core_cm4.h ****  */
1605:../../..\CubeG4\include/core_cm4.h **** 
1606:../../..\CubeG4\include/core_cm4.h **** #ifdef CMSIS_NVIC_VIRTUAL
1607:../../..\CubeG4\include/core_cm4.h ****   #ifndef CMSIS_NVIC_VIRTUAL_HEADER_FILE
1608:../../..\CubeG4\include/core_cm4.h ****     #define CMSIS_NVIC_VIRTUAL_HEADER_FILE "cmsis_nvic_virtual.h"
1609:../../..\CubeG4\include/core_cm4.h ****   #endif
1610:../../..\CubeG4\include/core_cm4.h ****   #include CMSIS_NVIC_VIRTUAL_HEADER_FILE
1611:../../..\CubeG4\include/core_cm4.h **** #else
1612:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_SetPriorityGrouping    __NVIC_SetPriorityGrouping
1613:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_GetPriorityGrouping    __NVIC_GetPriorityGrouping
1614:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_EnableIRQ              __NVIC_EnableIRQ
1615:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_GetEnableIRQ           __NVIC_GetEnableIRQ
1616:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_DisableIRQ             __NVIC_DisableIRQ
1617:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_GetPendingIRQ          __NVIC_GetPendingIRQ
1618:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_SetPendingIRQ          __NVIC_SetPendingIRQ
1619:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_ClearPendingIRQ        __NVIC_ClearPendingIRQ
1620:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_GetActive              __NVIC_GetActive
1621:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_SetPriority            __NVIC_SetPriority
1622:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_GetPriority            __NVIC_GetPriority
1623:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_SystemReset            __NVIC_SystemReset
1624:../../..\CubeG4\include/core_cm4.h **** #endif /* CMSIS_NVIC_VIRTUAL */
1625:../../..\CubeG4\include/core_cm4.h **** 
1626:../../..\CubeG4\include/core_cm4.h **** #ifdef CMSIS_VECTAB_VIRTUAL
1627:../../..\CubeG4\include/core_cm4.h ****   #ifndef CMSIS_VECTAB_VIRTUAL_HEADER_FILE
1628:../../..\CubeG4\include/core_cm4.h ****    #define CMSIS_VECTAB_VIRTUAL_HEADER_FILE "cmsis_vectab_virtual.h"
1629:../../..\CubeG4\include/core_cm4.h ****   #endif
1630:../../..\CubeG4\include/core_cm4.h ****   #include CMSIS_VECTAB_VIRTUAL_HEADER_FILE
1631:../../..\CubeG4\include/core_cm4.h **** #else
1632:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_SetVector              __NVIC_SetVector
1633:../../..\CubeG4\include/core_cm4.h ****   #define NVIC_GetVector              __NVIC_GetVector
1634:../../..\CubeG4\include/core_cm4.h **** #endif  /* (CMSIS_VECTAB_VIRTUAL) */
1635:../../..\CubeG4\include/core_cm4.h **** 
1636:../../..\CubeG4\include/core_cm4.h **** #define NVIC_USER_IRQ_OFFSET          16
1637:../../..\CubeG4\include/core_cm4.h **** 
1638:../../..\CubeG4\include/core_cm4.h **** 
1639:../../..\CubeG4\include/core_cm4.h **** /* The following EXC_RETURN values are saved the LR on exception entry */
1640:../../..\CubeG4\include/core_cm4.h **** #define EXC_RETURN_HANDLER         (0xFFFFFFF1UL)     /* return to Handler mode, uses MSP after ret
1641:../../..\CubeG4\include/core_cm4.h **** #define EXC_RETURN_THREAD_MSP      (0xFFFFFFF9UL)     /* return to Thread mode, uses MSP after retu
1642:../../..\CubeG4\include/core_cm4.h **** #define EXC_RETURN_THREAD_PSP      (0xFFFFFFFDUL)     /* return to Thread mode, uses PSP after retu
1643:../../..\CubeG4\include/core_cm4.h **** #define EXC_RETURN_HANDLER_FPU     (0xFFFFFFE1UL)     /* return to Handler mode, uses MSP after ret
1644:../../..\CubeG4\include/core_cm4.h **** #define EXC_RETURN_THREAD_MSP_FPU  (0xFFFFFFE9UL)     /* return to Thread mode, uses MSP after retu
1645:../../..\CubeG4\include/core_cm4.h **** #define EXC_RETURN_THREAD_PSP_FPU  (0xFFFFFFEDUL)     /* return to Thread mode, uses PSP after retu
1646:../../..\CubeG4\include/core_cm4.h **** 
1647:../../..\CubeG4\include/core_cm4.h **** 
1648:../../..\CubeG4\include/core_cm4.h **** /**
1649:../../..\CubeG4\include/core_cm4.h ****   \brief   Set Priority Grouping
1650:../../..\CubeG4\include/core_cm4.h ****   \details Sets the priority grouping field using the required unlock sequence.
1651:../../..\CubeG4\include/core_cm4.h ****            The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
1652:../../..\CubeG4\include/core_cm4.h ****            Only values from 0..7 are used.
1653:../../..\CubeG4\include/core_cm4.h ****            In case of a conflict between priority grouping and available
1654:../../..\CubeG4\include/core_cm4.h ****            priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1655:../../..\CubeG4\include/core_cm4.h ****   \param [in]      PriorityGroup  Priority grouping field.
1656:../../..\CubeG4\include/core_cm4.h ****  */
1657:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
  40              		.loc 2 1657 22 view .LVU3
  41              	.LBB21:
1658:../../..\CubeG4\include/core_cm4.h **** {
1659:../../..\CubeG4\include/core_cm4.h ****   uint32_t reg_value;
  42              		.loc 2 1659 3 view .LVU4
1660:../../..\CubeG4\include/core_cm4.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 a
  43              		.loc 2 1660 3 view .LVU5
1661:../../..\CubeG4\include/core_cm4.h **** 
1662:../../..\CubeG4\include/core_cm4.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
  44              		.loc 2 1662 3 view .LVU6
  45              		.loc 2 1662 14 is_stmt 0 view .LVU7
  46 0000 074A     		ldr	r2, .L2
  47 0002 D368     		ldr	r3, [r2, #12]
  48              	.LVL1:
1663:../../..\CubeG4\include/core_cm4.h ****   reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to chan
  49              		.loc 2 1663 3 is_stmt 1 view .LVU8
1664:../../..\CubeG4\include/core_cm4.h ****   reg_value  =  (reg_value                                   |
  50              		.loc 2 1664 3 view .LVU9
1663:../../..\CubeG4\include/core_cm4.h ****   reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to chan
  51              		.loc 2 1663 13 is_stmt 0 view .LVU10
  52 0004 23F4E063 		bic	r3, r3, #1792
  53              	.LVL2:
1665:../../..\CubeG4\include/core_cm4.h ****                 ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
1666:../../..\CubeG4\include/core_cm4.h ****                 (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key a
  54              		.loc 2 1666 35 view .LVU11
  55 0008 0002     		lsls	r0, r0, #8
  56              	.LVL3:
1663:../../..\CubeG4\include/core_cm4.h ****   reg_value  =  (reg_value                                   |
  57              		.loc 2 1663 13 view .LVU12
  58 000a 1B04     		lsls	r3, r3, #16
  59              		.loc 2 1666 35 view .LVU13
  60 000c 00F4E060 		and	r0, r0, #1792
1663:../../..\CubeG4\include/core_cm4.h ****   reg_value  =  (reg_value                                   |
  61              		.loc 2 1663 13 view .LVU14
  62 0010 1B0C     		lsrs	r3, r3, #16
1665:../../..\CubeG4\include/core_cm4.h ****                 ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
  63              		.loc 2 1665 62 view .LVU15
  64 0012 1843     		orrs	r0, r0, r3
1664:../../..\CubeG4\include/core_cm4.h ****   reg_value  =  (reg_value                                   |
  65              		.loc 2 1664 14 view .LVU16
  66 0014 40F0BF60 		orr	r0, r0, #100139008
  67 0018 40F40030 		orr	r0, r0, #131072
  68              	.LVL4:
1667:../../..\CubeG4\include/core_cm4.h ****   SCB->AIRCR =  reg_value;
  69              		.loc 2 1667 3 is_stmt 1 view .LVU17
  70              		.loc 2 1667 14 is_stmt 0 view .LVU18
  71 001c D060     		str	r0, [r2, #12]
  72              	.LVL5:
  73              		.loc 2 1667 14 view .LVU19
  74              	.LBE21:
  75              	.LBE20:
 171:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
  76              		.loc 1 171 1 view .LVU20
  77 001e 7047     		bx	lr
  78              	.L3:
  79              		.align	2
  80              	.L2:
  81 0020 00ED00E0 		.word	-536810240
  82              		.cfi_endproc
  83              	.LFE325:
  85              		.section	.text.HAL_NVIC_SetPriority,"ax",%progbits
  86              		.align	1
  87              		.global	HAL_NVIC_SetPriority
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  93              	HAL_NVIC_SetPriority:
  94              	.LVL6:
  95              	.LFB326:
 172:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 173:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 174:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Set the priority of an interrupt.
 175:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  IRQn: External interrupt number.
 176:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 177:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 178:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  PreemptPriority: The pre-emption priority for the IRQn channel.
 179:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be a value between 0 and 15
 180:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         A lower priority value indicates a higher priority
 181:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  SubPriority: the subpriority level for the IRQ channel.
 182:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be a value between 0 and 15
 183:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         A lower priority value indicates a higher priority.
 184:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 185:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 186:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
 187:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
  96              		.loc 1 187 1 is_stmt 1 view -0
  97              		.cfi_startproc
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 188:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   uint32_t prioritygroup;
 100              		.loc 1 188 3 view .LVU22
 189:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 190:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 191:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
 101              		.loc 1 191 3 view .LVU23
 192:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
 102              		.loc 1 192 3 view .LVU24
 193:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 194:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   prioritygroup = NVIC_GetPriorityGrouping();
 103              		.loc 1 194 3 view .LVU25
 104              	.LBB28:
 105              	.LBI28:
1668:../../..\CubeG4\include/core_cm4.h **** }
1669:../../..\CubeG4\include/core_cm4.h **** 
1670:../../..\CubeG4\include/core_cm4.h **** 
1671:../../..\CubeG4\include/core_cm4.h **** /**
1672:../../..\CubeG4\include/core_cm4.h ****   \brief   Get Priority Grouping
1673:../../..\CubeG4\include/core_cm4.h ****   \details Reads the priority grouping field from the NVIC Interrupt Controller.
1674:../../..\CubeG4\include/core_cm4.h ****   \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
1675:../../..\CubeG4\include/core_cm4.h ****  */
1676:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t __NVIC_GetPriorityGrouping(void)
 106              		.loc 2 1676 26 view .LVU26
 107              	.LBB29:
1677:../../..\CubeG4\include/core_cm4.h **** {
1678:../../..\CubeG4\include/core_cm4.h ****   return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 108              		.loc 2 1678 3 view .LVU27
 109              		.loc 2 1678 26 is_stmt 0 view .LVU28
 110 0000 174B     		ldr	r3, .L9
 111              	.LBE29:
 112              	.LBE28:
 187:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   uint32_t prioritygroup;
 113              		.loc 1 187 1 view .LVU29
 114 0002 70B5     		push	{r4, r5, r6, lr}
 115              		.cfi_def_cfa_offset 16
 116              		.cfi_offset 4, -16
 117              		.cfi_offset 5, -12
 118              		.cfi_offset 6, -8
 119              		.cfi_offset 14, -4
 120              	.LBB31:
 121              	.LBB30:
 122              		.loc 2 1678 26 view .LVU30
 123 0004 DC68     		ldr	r4, [r3, #12]
 124              		.loc 2 1678 11 view .LVU31
 125 0006 C4F30224 		ubfx	r4, r4, #8, #3
 126              	.LVL7:
 127              		.loc 2 1678 11 view .LVU32
 128              	.LBE30:
 129              	.LBE31:
 195:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 196:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 130              		.loc 1 196 3 is_stmt 1 view .LVU33
 131              	.LBB32:
 132              	.LBI32:
1679:../../..\CubeG4\include/core_cm4.h **** }
1680:../../..\CubeG4\include/core_cm4.h **** 
1681:../../..\CubeG4\include/core_cm4.h **** 
1682:../../..\CubeG4\include/core_cm4.h **** /**
1683:../../..\CubeG4\include/core_cm4.h ****   \brief   Enable Interrupt
1684:../../..\CubeG4\include/core_cm4.h ****   \details Enables a device specific interrupt in the NVIC interrupt controller.
1685:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Device specific interrupt number.
1686:../../..\CubeG4\include/core_cm4.h ****   \note    IRQn must not be negative.
1687:../../..\CubeG4\include/core_cm4.h ****  */
1688:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
1689:../../..\CubeG4\include/core_cm4.h **** {
1690:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1691:../../..\CubeG4\include/core_cm4.h ****   {
1692:../../..\CubeG4\include/core_cm4.h ****     NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
1693:../../..\CubeG4\include/core_cm4.h ****   }
1694:../../..\CubeG4\include/core_cm4.h **** }
1695:../../..\CubeG4\include/core_cm4.h **** 
1696:../../..\CubeG4\include/core_cm4.h **** 
1697:../../..\CubeG4\include/core_cm4.h **** /**
1698:../../..\CubeG4\include/core_cm4.h ****   \brief   Get Interrupt Enable status
1699:../../..\CubeG4\include/core_cm4.h ****   \details Returns a device specific interrupt enable status from the NVIC interrupt controller.
1700:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Device specific interrupt number.
1701:../../..\CubeG4\include/core_cm4.h ****   \return             0  Interrupt is not enabled.
1702:../../..\CubeG4\include/core_cm4.h ****   \return             1  Interrupt is enabled.
1703:../../..\CubeG4\include/core_cm4.h ****   \note    IRQn must not be negative.
1704:../../..\CubeG4\include/core_cm4.h ****  */
1705:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
1706:../../..\CubeG4\include/core_cm4.h **** {
1707:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1708:../../..\CubeG4\include/core_cm4.h ****   {
1709:../../..\CubeG4\include/core_cm4.h ****     return((uint32_t)(((NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL)
1710:../../..\CubeG4\include/core_cm4.h ****   }
1711:../../..\CubeG4\include/core_cm4.h ****   else
1712:../../..\CubeG4\include/core_cm4.h ****   {
1713:../../..\CubeG4\include/core_cm4.h ****     return(0U);
1714:../../..\CubeG4\include/core_cm4.h ****   }
1715:../../..\CubeG4\include/core_cm4.h **** }
1716:../../..\CubeG4\include/core_cm4.h **** 
1717:../../..\CubeG4\include/core_cm4.h **** 
1718:../../..\CubeG4\include/core_cm4.h **** /**
1719:../../..\CubeG4\include/core_cm4.h ****   \brief   Disable Interrupt
1720:../../..\CubeG4\include/core_cm4.h ****   \details Disables a device specific interrupt in the NVIC interrupt controller.
1721:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Device specific interrupt number.
1722:../../..\CubeG4\include/core_cm4.h ****   \note    IRQn must not be negative.
1723:../../..\CubeG4\include/core_cm4.h ****  */
1724:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void __NVIC_DisableIRQ(IRQn_Type IRQn)
1725:../../..\CubeG4\include/core_cm4.h **** {
1726:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1727:../../..\CubeG4\include/core_cm4.h ****   {
1728:../../..\CubeG4\include/core_cm4.h ****     NVIC->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
1729:../../..\CubeG4\include/core_cm4.h ****     __DSB();
1730:../../..\CubeG4\include/core_cm4.h ****     __ISB();
1731:../../..\CubeG4\include/core_cm4.h ****   }
1732:../../..\CubeG4\include/core_cm4.h **** }
1733:../../..\CubeG4\include/core_cm4.h **** 
1734:../../..\CubeG4\include/core_cm4.h **** 
1735:../../..\CubeG4\include/core_cm4.h **** /**
1736:../../..\CubeG4\include/core_cm4.h ****   \brief   Get Pending Interrupt
1737:../../..\CubeG4\include/core_cm4.h ****   \details Reads the NVIC pending register and returns the pending bit for the specified device spe
1738:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Device specific interrupt number.
1739:../../..\CubeG4\include/core_cm4.h ****   \return             0  Interrupt status is not pending.
1740:../../..\CubeG4\include/core_cm4.h ****   \return             1  Interrupt status is pending.
1741:../../..\CubeG4\include/core_cm4.h ****   \note    IRQn must not be negative.
1742:../../..\CubeG4\include/core_cm4.h ****  */
1743:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
1744:../../..\CubeG4\include/core_cm4.h **** {
1745:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1746:../../..\CubeG4\include/core_cm4.h ****   {
1747:../../..\CubeG4\include/core_cm4.h ****     return((uint32_t)(((NVIC->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL)
1748:../../..\CubeG4\include/core_cm4.h ****   }
1749:../../..\CubeG4\include/core_cm4.h ****   else
1750:../../..\CubeG4\include/core_cm4.h ****   {
1751:../../..\CubeG4\include/core_cm4.h ****     return(0U);
1752:../../..\CubeG4\include/core_cm4.h ****   }
1753:../../..\CubeG4\include/core_cm4.h **** }
1754:../../..\CubeG4\include/core_cm4.h **** 
1755:../../..\CubeG4\include/core_cm4.h **** 
1756:../../..\CubeG4\include/core_cm4.h **** /**
1757:../../..\CubeG4\include/core_cm4.h ****   \brief   Set Pending Interrupt
1758:../../..\CubeG4\include/core_cm4.h ****   \details Sets the pending bit of a device specific interrupt in the NVIC pending register.
1759:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Device specific interrupt number.
1760:../../..\CubeG4\include/core_cm4.h ****   \note    IRQn must not be negative.
1761:../../..\CubeG4\include/core_cm4.h ****  */
1762:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
1763:../../..\CubeG4\include/core_cm4.h **** {
1764:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1765:../../..\CubeG4\include/core_cm4.h ****   {
1766:../../..\CubeG4\include/core_cm4.h ****     NVIC->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
1767:../../..\CubeG4\include/core_cm4.h ****   }
1768:../../..\CubeG4\include/core_cm4.h **** }
1769:../../..\CubeG4\include/core_cm4.h **** 
1770:../../..\CubeG4\include/core_cm4.h **** 
1771:../../..\CubeG4\include/core_cm4.h **** /**
1772:../../..\CubeG4\include/core_cm4.h ****   \brief   Clear Pending Interrupt
1773:../../..\CubeG4\include/core_cm4.h ****   \details Clears the pending bit of a device specific interrupt in the NVIC pending register.
1774:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Device specific interrupt number.
1775:../../..\CubeG4\include/core_cm4.h ****   \note    IRQn must not be negative.
1776:../../..\CubeG4\include/core_cm4.h ****  */
1777:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1778:../../..\CubeG4\include/core_cm4.h **** {
1779:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1780:../../..\CubeG4\include/core_cm4.h ****   {
1781:../../..\CubeG4\include/core_cm4.h ****     NVIC->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
1782:../../..\CubeG4\include/core_cm4.h ****   }
1783:../../..\CubeG4\include/core_cm4.h **** }
1784:../../..\CubeG4\include/core_cm4.h **** 
1785:../../..\CubeG4\include/core_cm4.h **** 
1786:../../..\CubeG4\include/core_cm4.h **** /**
1787:../../..\CubeG4\include/core_cm4.h ****   \brief   Get Active Interrupt
1788:../../..\CubeG4\include/core_cm4.h ****   \details Reads the active register in the NVIC and returns the active bit for the device specific
1789:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Device specific interrupt number.
1790:../../..\CubeG4\include/core_cm4.h ****   \return             0  Interrupt status is not active.
1791:../../..\CubeG4\include/core_cm4.h ****   \return             1  Interrupt status is active.
1792:../../..\CubeG4\include/core_cm4.h ****   \note    IRQn must not be negative.
1793:../../..\CubeG4\include/core_cm4.h ****  */
1794:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t __NVIC_GetActive(IRQn_Type IRQn)
1795:../../..\CubeG4\include/core_cm4.h **** {
1796:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1797:../../..\CubeG4\include/core_cm4.h ****   {
1798:../../..\CubeG4\include/core_cm4.h ****     return((uint32_t)(((NVIC->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL)
1799:../../..\CubeG4\include/core_cm4.h ****   }
1800:../../..\CubeG4\include/core_cm4.h ****   else
1801:../../..\CubeG4\include/core_cm4.h ****   {
1802:../../..\CubeG4\include/core_cm4.h ****     return(0U);
1803:../../..\CubeG4\include/core_cm4.h ****   }
1804:../../..\CubeG4\include/core_cm4.h **** }
1805:../../..\CubeG4\include/core_cm4.h **** 
1806:../../..\CubeG4\include/core_cm4.h **** 
1807:../../..\CubeG4\include/core_cm4.h **** /**
1808:../../..\CubeG4\include/core_cm4.h ****   \brief   Set Interrupt Priority
1809:../../..\CubeG4\include/core_cm4.h ****   \details Sets the priority of a device specific interrupt or a processor exception.
1810:../../..\CubeG4\include/core_cm4.h ****            The interrupt number can be positive to specify a device specific interrupt,
1811:../../..\CubeG4\include/core_cm4.h ****            or negative to specify a processor exception.
1812:../../..\CubeG4\include/core_cm4.h ****   \param [in]      IRQn  Interrupt number.
1813:../../..\CubeG4\include/core_cm4.h ****   \param [in]  priority  Priority to set.
1814:../../..\CubeG4\include/core_cm4.h ****   \note    The priority cannot be set for every processor exception.
1815:../../..\CubeG4\include/core_cm4.h ****  */
1816:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
1817:../../..\CubeG4\include/core_cm4.h **** {
1818:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1819:../../..\CubeG4\include/core_cm4.h ****   {
1820:../../..\CubeG4\include/core_cm4.h ****     NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (u
1821:../../..\CubeG4\include/core_cm4.h ****   }
1822:../../..\CubeG4\include/core_cm4.h ****   else
1823:../../..\CubeG4\include/core_cm4.h ****   {
1824:../../..\CubeG4\include/core_cm4.h ****     SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (u
1825:../../..\CubeG4\include/core_cm4.h ****   }
1826:../../..\CubeG4\include/core_cm4.h **** }
1827:../../..\CubeG4\include/core_cm4.h **** 
1828:../../..\CubeG4\include/core_cm4.h **** 
1829:../../..\CubeG4\include/core_cm4.h **** /**
1830:../../..\CubeG4\include/core_cm4.h ****   \brief   Get Interrupt Priority
1831:../../..\CubeG4\include/core_cm4.h ****   \details Reads the priority of a device specific interrupt or a processor exception.
1832:../../..\CubeG4\include/core_cm4.h ****            The interrupt number can be positive to specify a device specific interrupt,
1833:../../..\CubeG4\include/core_cm4.h ****            or negative to specify a processor exception.
1834:../../..\CubeG4\include/core_cm4.h ****   \param [in]   IRQn  Interrupt number.
1835:../../..\CubeG4\include/core_cm4.h ****   \return             Interrupt Priority.
1836:../../..\CubeG4\include/core_cm4.h ****                       Value is aligned automatically to the implemented priority bits of the microc
1837:../../..\CubeG4\include/core_cm4.h ****  */
1838:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
1839:../../..\CubeG4\include/core_cm4.h **** {
1840:../../..\CubeG4\include/core_cm4.h **** 
1841:../../..\CubeG4\include/core_cm4.h ****   if ((int32_t)(IRQn) >= 0)
1842:../../..\CubeG4\include/core_cm4.h ****   {
1843:../../..\CubeG4\include/core_cm4.h ****     return(((uint32_t)NVIC->IP[((uint32_t)IRQn)]               >> (8U - __NVIC_PRIO_BITS)));
1844:../../..\CubeG4\include/core_cm4.h ****   }
1845:../../..\CubeG4\include/core_cm4.h ****   else
1846:../../..\CubeG4\include/core_cm4.h ****   {
1847:../../..\CubeG4\include/core_cm4.h ****     return(((uint32_t)SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - __NVIC_PRIO_BITS)));
1848:../../..\CubeG4\include/core_cm4.h ****   }
1849:../../..\CubeG4\include/core_cm4.h **** }
1850:../../..\CubeG4\include/core_cm4.h **** 
1851:../../..\CubeG4\include/core_cm4.h **** 
1852:../../..\CubeG4\include/core_cm4.h **** /**
1853:../../..\CubeG4\include/core_cm4.h ****   \brief   Encode Priority
1854:../../..\CubeG4\include/core_cm4.h ****   \details Encodes the priority for an interrupt with the given priority group,
1855:../../..\CubeG4\include/core_cm4.h ****            preemptive priority value, and subpriority value.
1856:../../..\CubeG4\include/core_cm4.h ****            In case of a conflict between priority grouping and available
1857:../../..\CubeG4\include/core_cm4.h ****            priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1858:../../..\CubeG4\include/core_cm4.h ****   \param [in]     PriorityGroup  Used priority group.
1859:../../..\CubeG4\include/core_cm4.h ****   \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
1860:../../..\CubeG4\include/core_cm4.h ****   \param [in]       SubPriority  Subpriority value (starting from 0).
1861:../../..\CubeG4\include/core_cm4.h ****   \return                        Encoded priority. Value can be used in the function \ref NVIC_SetP
1862:../../..\CubeG4\include/core_cm4.h ****  */
1863:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uin
 133              		.loc 2 1863 26 view .LVU34
 134              	.LBB33:
1864:../../..\CubeG4\include/core_cm4.h **** {
1865:../../..\CubeG4\include/core_cm4.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used   
 135              		.loc 2 1865 3 view .LVU35
1866:../../..\CubeG4\include/core_cm4.h ****   uint32_t PreemptPriorityBits;
 136              		.loc 2 1866 3 view .LVU36
1867:../../..\CubeG4\include/core_cm4.h ****   uint32_t SubPriorityBits;
 137              		.loc 2 1867 3 view .LVU37
1868:../../..\CubeG4\include/core_cm4.h **** 
1869:../../..\CubeG4\include/core_cm4.h ****   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NV
 138              		.loc 2 1869 3 view .LVU38
 139              		.loc 2 1869 31 is_stmt 0 view .LVU39
 140 000a C4F10705 		rsb	r5, r4, #7
 141              		.loc 2 1869 23 view .LVU40
 142 000e 042D     		cmp	r5, #4
1870:../../..\CubeG4\include/core_cm4.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
 143              		.loc 2 1870 44 view .LVU41
 144 0010 04F10403 		add	r3, r4, #4
1869:../../..\CubeG4\include/core_cm4.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
 145              		.loc 2 1869 23 view .LVU42
 146 0014 28BF     		it	cs
 147 0016 0425     		movcs	r5, #4
 148              	.LVL8:
 149              		.loc 2 1870 3 is_stmt 1 view .LVU43
1871:../../..\CubeG4\include/core_cm4.h **** 
1872:../../..\CubeG4\include/core_cm4.h ****   return (
1873:../../..\CubeG4\include/core_cm4.h ****            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits
 150              		.loc 2 1873 30 is_stmt 0 view .LVU44
 151 0018 4FF0FF36 		mov	r6, #-1
1870:../../..\CubeG4\include/core_cm4.h **** 
 152              		.loc 2 1870 109 view .LVU45
 153 001c 062B     		cmp	r3, #6
 154              		.loc 2 1873 30 view .LVU46
 155 001e 06FA05F5 		lsl	r5, r6, r5
 156              	.LVL9:
1870:../../..\CubeG4\include/core_cm4.h **** 
 157              		.loc 2 1870 109 view .LVU47
 158 0022 8CBF     		ite	hi
 159 0024 033C     		subhi	r4, r4, #3
 160              	.LVL10:
1870:../../..\CubeG4\include/core_cm4.h **** 
 161              		.loc 2 1870 109 view .LVU48
 162 0026 0024     		movls	r4, #0
 163              	.LVL11:
1872:../../..\CubeG4\include/core_cm4.h ****            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits
 164              		.loc 2 1872 3 is_stmt 1 view .LVU49
1872:../../..\CubeG4\include/core_cm4.h ****            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits
 165              		.loc 2 1872 3 is_stmt 0 view .LVU50
 166              	.LBE33:
 167              	.LBE32:
 168              	.LBB36:
 169              	.LBI36:
1816:../../..\CubeG4\include/core_cm4.h **** {
 170              		.loc 2 1816 22 is_stmt 1 view .LVU51
 171              	.LBB37:
1818:../../..\CubeG4\include/core_cm4.h ****   {
 172              		.loc 2 1818 3 view .LVU52
 173              	.LBE37:
 174              	.LBE36:
 175              	.LBB40:
 176              	.LBB34:
 177              		.loc 2 1873 30 is_stmt 0 view .LVU53
 178 0028 21EA0501 		bic	r1, r1, r5
 179              	.LVL12:
 180              		.loc 2 1873 82 view .LVU54
 181 002c A140     		lsls	r1, r1, r4
1874:../../..\CubeG4\include/core_cm4.h ****            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 182              		.loc 2 1874 30 view .LVU55
 183 002e 06FA04F4 		lsl	r4, r6, r4
 184              	.LVL13:
 185              		.loc 2 1874 30 view .LVU56
 186 0032 22EA0403 		bic	r3, r2, r4
 187              	.LVL14:
 188              		.loc 2 1874 30 view .LVU57
 189              	.LBE34:
 190              	.LBE40:
 191              	.LBB41:
 192              	.LBB38:
1818:../../..\CubeG4\include/core_cm4.h ****   {
 193              		.loc 2 1818 6 view .LVU58
 194 0036 0028     		cmp	r0, #0
1820:../../..\CubeG4\include/core_cm4.h ****   }
 195              		.loc 2 1820 5 is_stmt 1 view .LVU59
 196              	.LBE38:
 197              	.LBE41:
 198              	.LBB42:
 199              	.LBB35:
1873:../../..\CubeG4\include/core_cm4.h ****            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 200              		.loc 2 1873 102 is_stmt 0 view .LVU60
 201 0038 43EA0103 		orr	r3, r3, r1
 202              	.LBE35:
 203              	.LBE42:
 204              	.LBB43:
 205              	.LBB39:
1820:../../..\CubeG4\include/core_cm4.h ****   }
 206              		.loc 2 1820 46 view .LVU61
 207 003c A8BF     		it	ge
 208 003e 00F16040 		addge	r0, r0, #-536870912
 209              	.LVL15:
1820:../../..\CubeG4\include/core_cm4.h ****   }
 210              		.loc 2 1820 46 view .LVU62
 211 0042 4FEA0313 		lsl	r3, r3, #4
1824:../../..\CubeG4\include/core_cm4.h ****   }
 212              		.loc 2 1824 32 view .LVU63
 213 0046 BCBF     		itt	lt
 214 0048 00F00F00 		andlt	r0, r0, #15
1824:../../..\CubeG4\include/core_cm4.h ****   }
 215              		.loc 2 1824 46 view .LVU64
 216 004c 054A     		ldrlt	r2, .L9+4
 217              	.LVL16:
1824:../../..\CubeG4\include/core_cm4.h ****   }
 218              		.loc 2 1824 46 view .LVU65
 219 004e DBB2     		uxtb	r3, r3
1820:../../..\CubeG4\include/core_cm4.h ****   }
 220              		.loc 2 1820 46 view .LVU66
 221 0050 AABF     		itet	ge
 222 0052 00F56140 		addge	r0, r0, #57600
1824:../../..\CubeG4\include/core_cm4.h ****   }
 223              		.loc 2 1824 46 view .LVU67
 224 0056 1354     		strblt	r3, [r2, r0]
1820:../../..\CubeG4\include/core_cm4.h ****   }
 225              		.loc 2 1820 46 view .LVU68
 226 0058 80F80033 		strbge	r3, [r0, #768]
1824:../../..\CubeG4\include/core_cm4.h ****   }
 227              		.loc 2 1824 5 is_stmt 1 view .LVU69
 228              	.LVL17:
1824:../../..\CubeG4\include/core_cm4.h ****   }
 229              		.loc 2 1824 5 is_stmt 0 view .LVU70
 230              	.LBE39:
 231              	.LBE43:
 197:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 232              		.loc 1 197 1 view .LVU71
 233 005c 70BD     		pop	{r4, r5, r6, pc}
 234              	.L10:
 235 005e 00BF     		.align	2
 236              	.L9:
 237 0060 00ED00E0 		.word	-536810240
 238 0064 14ED00E0 		.word	-536810220
 239              		.cfi_endproc
 240              	.LFE326:
 242              		.section	.text.HAL_NVIC_EnableIRQ,"ax",%progbits
 243              		.align	1
 244              		.global	HAL_NVIC_EnableIRQ
 245              		.syntax unified
 246              		.thumb
 247              		.thumb_func
 248              		.fpu fpv4-sp-d16
 250              	HAL_NVIC_EnableIRQ:
 251              	.LVL18:
 252              	.LFB327:
 198:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 199:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 200:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Enable a device specific interrupt in the NVIC interrupt controller.
 201:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @note   To configure interrupts priority correctly, the NVIC_PriorityGroupConfig()
 202:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         function should be called before.
 203:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 204:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 205:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 206:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 207:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 208:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
 209:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 253              		.loc 1 209 1 is_stmt 1 view -0
 254              		.cfi_startproc
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 210:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 211:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 258              		.loc 1 211 3 view .LVU73
 212:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   
 213:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Enable interrupt */
 214:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_EnableIRQ(IRQn);
 259              		.loc 1 214 3 view .LVU74
 260              	.LBB46:
 261              	.LBI46:
1688:../../..\CubeG4\include/core_cm4.h **** {
 262              		.loc 2 1688 22 view .LVU75
 263              	.LBB47:
1690:../../..\CubeG4\include/core_cm4.h ****   {
 264              		.loc 2 1690 3 view .LVU76
1690:../../..\CubeG4\include/core_cm4.h ****   {
 265              		.loc 2 1690 6 is_stmt 0 view .LVU77
 266 0000 0028     		cmp	r0, #0
 267              	.LVL19:
1690:../../..\CubeG4\include/core_cm4.h ****   {
 268              		.loc 2 1690 6 view .LVU78
 269 0002 08DB     		blt	.L11
1692:../../..\CubeG4\include/core_cm4.h ****   }
 270              		.loc 2 1692 5 is_stmt 1 view .LVU79
1692:../../..\CubeG4\include/core_cm4.h ****   }
 271              		.loc 2 1692 34 is_stmt 0 view .LVU80
 272 0004 4209     		lsrs	r2, r0, #5
1692:../../..\CubeG4\include/core_cm4.h ****   }
 273              		.loc 2 1692 45 view .LVU81
 274 0006 0123     		movs	r3, #1
1692:../../..\CubeG4\include/core_cm4.h ****   }
 275              		.loc 2 1692 81 view .LVU82
 276 0008 00F01F00 		and	r0, r0, #31
1692:../../..\CubeG4\include/core_cm4.h ****   }
 277              		.loc 2 1692 45 view .LVU83
 278 000c 03FA00F0 		lsl	r0, r3, r0
1692:../../..\CubeG4\include/core_cm4.h ****   }
 279              		.loc 2 1692 43 view .LVU84
 280 0010 014B     		ldr	r3, .L13
 281 0012 43F82200 		str	r0, [r3, r2, lsl #2]
 282              	.LVL20:
 283              	.L11:
1692:../../..\CubeG4\include/core_cm4.h ****   }
 284              		.loc 2 1692 43 view .LVU85
 285              	.LBE47:
 286              	.LBE46:
 215:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 287              		.loc 1 215 1 view .LVU86
 288 0016 7047     		bx	lr
 289              	.L14:
 290              		.align	2
 291              	.L13:
 292 0018 00E100E0 		.word	-536813312
 293              		.cfi_endproc
 294              	.LFE327:
 296              		.section	.text.HAL_NVIC_DisableIRQ,"ax",%progbits
 297              		.align	1
 298              		.global	HAL_NVIC_DisableIRQ
 299              		.syntax unified
 300              		.thumb
 301              		.thumb_func
 302              		.fpu fpv4-sp-d16
 304              	HAL_NVIC_DisableIRQ:
 305              	.LVL21:
 306              	.LFB328:
 216:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 217:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 218:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Disable a device specific interrupt in the NVIC interrupt controller.
 219:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 220:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 221:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 222:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 223:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 224:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_DisableIRQ(IRQn_Type IRQn)
 225:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 307              		.loc 1 225 1 is_stmt 1 view -0
 308              		.cfi_startproc
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311              		@ link register save eliminated.
 226:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 227:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 312              		.loc 1 227 3 view .LVU88
 228:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   
 229:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Disable interrupt */
 230:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_DisableIRQ(IRQn);
 313              		.loc 1 230 3 view .LVU89
 314              	.LBB54:
 315              	.LBI54:
1724:../../..\CubeG4\include/core_cm4.h **** {
 316              		.loc 2 1724 22 view .LVU90
 317              	.LBB55:
1726:../../..\CubeG4\include/core_cm4.h ****   {
 318              		.loc 2 1726 3 view .LVU91
1726:../../..\CubeG4\include/core_cm4.h ****   {
 319              		.loc 2 1726 6 is_stmt 0 view .LVU92
 320 0000 0028     		cmp	r0, #0
 321              	.LVL22:
1726:../../..\CubeG4\include/core_cm4.h ****   {
 322              		.loc 2 1726 6 view .LVU93
 323 0002 0DDB     		blt	.L15
1728:../../..\CubeG4\include/core_cm4.h ****     __DSB();
 324              		.loc 2 1728 5 is_stmt 1 view .LVU94
1728:../../..\CubeG4\include/core_cm4.h ****     __DSB();
 325              		.loc 2 1728 34 is_stmt 0 view .LVU95
 326 0004 4309     		lsrs	r3, r0, #5
1728:../../..\CubeG4\include/core_cm4.h ****     __DSB();
 327              		.loc 2 1728 45 view .LVU96
 328 0006 0122     		movs	r2, #1
1728:../../..\CubeG4\include/core_cm4.h ****     __DSB();
 329              		.loc 2 1728 81 view .LVU97
 330 0008 00F01F00 		and	r0, r0, #31
1728:../../..\CubeG4\include/core_cm4.h ****     __DSB();
 331              		.loc 2 1728 45 view .LVU98
 332 000c 02FA00F0 		lsl	r0, r2, r0
1728:../../..\CubeG4\include/core_cm4.h ****     __DSB();
 333              		.loc 2 1728 43 view .LVU99
 334 0010 2033     		adds	r3, r3, #32
 335 0012 044A     		ldr	r2, .L17
 336 0014 42F82300 		str	r0, [r2, r3, lsl #2]
1729:../../..\CubeG4\include/core_cm4.h ****     __ISB();
 337              		.loc 2 1729 5 is_stmt 1 view .LVU100
 338              	.LBB56:
 339              	.LBI56:
 340              		.file 3 "../../..\\CubeG4\\include/cmsis_gcc.h"
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
 341              		.loc 3 877 27 view .LVU101
 342              	.LBB57:
 878:../../..\CubeG4\include/cmsis_gcc.h **** {
 879:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("dsb 0xF":::"memory");
 343              		.loc 3 879 3 view .LVU102
 344              		.syntax unified
 345              	@ 879 "../../..\CubeG4\include/cmsis_gcc.h" 1
 346 0018 BFF34F8F 		dsb 0xF
 347              	@ 0 "" 2
 348              		.thumb
 349              		.syntax unified
 350              	.LBE57:
 351              	.LBE56:
1730:../../..\CubeG4\include/core_cm4.h ****   }
 352              		.loc 2 1730 5 view .LVU103
 353              	.LBB58:
 354              	.LBI58:
 866:../../..\CubeG4\include/cmsis_gcc.h **** {
 355              		.loc 3 866 27 view .LVU104
 356              	.LBB59:
 868:../../..\CubeG4\include/cmsis_gcc.h **** }
 357              		.loc 3 868 3 view .LVU105
 358              		.syntax unified
 359              	@ 868 "../../..\CubeG4\include/cmsis_gcc.h" 1
 360 001c BFF36F8F 		isb 0xF
 361              	@ 0 "" 2
 362              	.LVL23:
 363              		.thumb
 364              		.syntax unified
 365              	.L15:
 868:../../..\CubeG4\include/cmsis_gcc.h **** }
 366              		.loc 3 868 3 is_stmt 0 view .LVU106
 367              	.LBE59:
 368              	.LBE58:
 369              	.LBE55:
 370              	.LBE54:
 231:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 371              		.loc 1 231 1 view .LVU107
 372 0020 7047     		bx	lr
 373              	.L18:
 374 0022 00BF     		.align	2
 375              	.L17:
 376 0024 00E100E0 		.word	-536813312
 377              		.cfi_endproc
 378              	.LFE328:
 380              		.section	.text.HAL_NVIC_SystemReset,"ax",%progbits
 381              		.align	1
 382              		.global	HAL_NVIC_SystemReset
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu fpv4-sp-d16
 388              	HAL_NVIC_SystemReset:
 389              	.LFB329:
 232:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 233:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 234:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Initiate a system reset request to reset the MCU.
 235:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 236:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 237:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_SystemReset(void)
 238:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 390              		.loc 1 238 1 is_stmt 1 view -0
 391              		.cfi_startproc
 392              		@ Volatile: function does not return.
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395              		@ link register save eliminated.
 239:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* System Reset */
 240:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_SystemReset();
 396              		.loc 1 240 3 view .LVU109
 397              	.LBB66:
 398              	.LBI66:
1875:../../..\CubeG4\include/core_cm4.h ****          );
1876:../../..\CubeG4\include/core_cm4.h **** }
1877:../../..\CubeG4\include/core_cm4.h **** 
1878:../../..\CubeG4\include/core_cm4.h **** 
1879:../../..\CubeG4\include/core_cm4.h **** /**
1880:../../..\CubeG4\include/core_cm4.h ****   \brief   Decode Priority
1881:../../..\CubeG4\include/core_cm4.h ****   \details Decodes an interrupt priority value with a given priority group to
1882:../../..\CubeG4\include/core_cm4.h ****            preemptive priority value and subpriority value.
1883:../../..\CubeG4\include/core_cm4.h ****            In case of a conflict between priority grouping and available
1884:../../..\CubeG4\include/core_cm4.h ****            priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.
1885:../../..\CubeG4\include/core_cm4.h ****   \param [in]         Priority   Priority value, which can be retrieved with the function \ref NVIC
1886:../../..\CubeG4\include/core_cm4.h ****   \param [in]     PriorityGroup  Used priority group.
1887:../../..\CubeG4\include/core_cm4.h ****   \param [out] pPreemptPriority  Preemptive priority value (starting from 0).
1888:../../..\CubeG4\include/core_cm4.h ****   \param [out]     pSubPriority  Subpriority value (starting from 0).
1889:../../..\CubeG4\include/core_cm4.h ****  */
1890:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* cons
1891:../../..\CubeG4\include/core_cm4.h **** {
1892:../../..\CubeG4\include/core_cm4.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used   
1893:../../..\CubeG4\include/core_cm4.h ****   uint32_t PreemptPriorityBits;
1894:../../..\CubeG4\include/core_cm4.h ****   uint32_t SubPriorityBits;
1895:../../..\CubeG4\include/core_cm4.h **** 
1896:../../..\CubeG4\include/core_cm4.h ****   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NV
1897:../../..\CubeG4\include/core_cm4.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
1898:../../..\CubeG4\include/core_cm4.h **** 
1899:../../..\CubeG4\include/core_cm4.h ****   *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1
1900:../../..\CubeG4\include/core_cm4.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
1901:../../..\CubeG4\include/core_cm4.h **** }
1902:../../..\CubeG4\include/core_cm4.h **** 
1903:../../..\CubeG4\include/core_cm4.h **** 
1904:../../..\CubeG4\include/core_cm4.h **** /**
1905:../../..\CubeG4\include/core_cm4.h ****   \brief   Set Interrupt Vector
1906:../../..\CubeG4\include/core_cm4.h ****   \details Sets an interrupt vector in SRAM based interrupt vector table.
1907:../../..\CubeG4\include/core_cm4.h ****            The interrupt number can be positive to specify a device specific interrupt,
1908:../../..\CubeG4\include/core_cm4.h ****            or negative to specify a processor exception.
1909:../../..\CubeG4\include/core_cm4.h ****            VTOR must been relocated to SRAM before.
1910:../../..\CubeG4\include/core_cm4.h ****   \param [in]   IRQn      Interrupt number
1911:../../..\CubeG4\include/core_cm4.h ****   \param [in]   vector    Address of interrupt handler function
1912:../../..\CubeG4\include/core_cm4.h ****  */
1913:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
1914:../../..\CubeG4\include/core_cm4.h **** {
1915:../../..\CubeG4\include/core_cm4.h ****   uint32_t *vectors = (uint32_t *)SCB->VTOR;
1916:../../..\CubeG4\include/core_cm4.h ****   vectors[(int32_t)IRQn + NVIC_USER_IRQ_OFFSET] = vector;
1917:../../..\CubeG4\include/core_cm4.h **** }
1918:../../..\CubeG4\include/core_cm4.h **** 
1919:../../..\CubeG4\include/core_cm4.h **** 
1920:../../..\CubeG4\include/core_cm4.h **** /**
1921:../../..\CubeG4\include/core_cm4.h ****   \brief   Get Interrupt Vector
1922:../../..\CubeG4\include/core_cm4.h ****   \details Reads an interrupt vector from interrupt vector table.
1923:../../..\CubeG4\include/core_cm4.h ****            The interrupt number can be positive to specify a device specific interrupt,
1924:../../..\CubeG4\include/core_cm4.h ****            or negative to specify a processor exception.
1925:../../..\CubeG4\include/core_cm4.h ****   \param [in]   IRQn      Interrupt number.
1926:../../..\CubeG4\include/core_cm4.h ****   \return                 Address of interrupt handler function
1927:../../..\CubeG4\include/core_cm4.h ****  */
1928:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t __NVIC_GetVector(IRQn_Type IRQn)
1929:../../..\CubeG4\include/core_cm4.h **** {
1930:../../..\CubeG4\include/core_cm4.h ****   uint32_t *vectors = (uint32_t *)SCB->VTOR;
1931:../../..\CubeG4\include/core_cm4.h ****   return vectors[(int32_t)IRQn + NVIC_USER_IRQ_OFFSET];
1932:../../..\CubeG4\include/core_cm4.h **** }
1933:../../..\CubeG4\include/core_cm4.h **** 
1934:../../..\CubeG4\include/core_cm4.h **** 
1935:../../..\CubeG4\include/core_cm4.h **** /**
1936:../../..\CubeG4\include/core_cm4.h ****   \brief   System Reset
1937:../../..\CubeG4\include/core_cm4.h ****   \details Initiates a system reset request to reset the MCU.
1938:../../..\CubeG4\include/core_cm4.h ****  */
1939:../../..\CubeG4\include/core_cm4.h **** __NO_RETURN __STATIC_INLINE void __NVIC_SystemReset(void)
 399              		.loc 2 1939 34 view .LVU110
 400              	.LBB67:
1940:../../..\CubeG4\include/core_cm4.h **** {
1941:../../..\CubeG4\include/core_cm4.h ****   __DSB();                                                          /* Ensure all outstanding memor
 401              		.loc 2 1941 3 view .LVU111
 402              	.LBB68:
 403              	.LBI68:
 877:../../..\CubeG4\include/cmsis_gcc.h **** {
 404              		.loc 3 877 27 view .LVU112
 405              	.LBB69:
 406              		.loc 3 879 3 view .LVU113
 407              		.syntax unified
 408              	@ 879 "../../..\CubeG4\include/cmsis_gcc.h" 1
 409 0000 BFF34F8F 		dsb 0xF
 410              	@ 0 "" 2
 411              		.thumb
 412              		.syntax unified
 413              	.LBE69:
 414              	.LBE68:
1942:../../..\CubeG4\include/core_cm4.h ****                                                                        buffered write are completed
1943:../../..\CubeG4\include/core_cm4.h ****   SCB->AIRCR  = (uint32_t)((0x5FAUL << SCB_AIRCR_VECTKEY_Pos)    |
 415              		.loc 2 1943 3 view .LVU114
1944:../../..\CubeG4\include/core_cm4.h ****                            (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 416              		.loc 2 1944 32 is_stmt 0 view .LVU115
 417 0004 0549     		ldr	r1, .L21
1943:../../..\CubeG4\include/core_cm4.h ****                            (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 418              		.loc 2 1943 17 view .LVU116
 419 0006 064B     		ldr	r3, .L21+4
 420              		.loc 2 1944 32 view .LVU117
 421 0008 CA68     		ldr	r2, [r1, #12]
 422              		.loc 2 1944 40 view .LVU118
 423 000a 02F4E062 		and	r2, r2, #1792
1943:../../..\CubeG4\include/core_cm4.h ****                            (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 424              		.loc 2 1943 17 view .LVU119
 425 000e 1343     		orrs	r3, r3, r2
1943:../../..\CubeG4\include/core_cm4.h ****                            (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 426              		.loc 2 1943 15 view .LVU120
 427 0010 CB60     		str	r3, [r1, #12]
1945:../../..\CubeG4\include/core_cm4.h ****                             SCB_AIRCR_SYSRESETREQ_Msk    );         /* Keep priority group unchange
1946:../../..\CubeG4\include/core_cm4.h ****   __DSB();                                                          /* Ensure completion of memory 
 428              		.loc 2 1946 3 is_stmt 1 view .LVU121
 429              	.LBB70:
 430              	.LBI70:
 877:../../..\CubeG4\include/cmsis_gcc.h **** {
 431              		.loc 3 877 27 view .LVU122
 432              	.LBB71:
 433              		.loc 3 879 3 view .LVU123
 434              		.syntax unified
 435              	@ 879 "../../..\CubeG4\include/cmsis_gcc.h" 1
 436 0012 BFF34F8F 		dsb 0xF
 437              	@ 0 "" 2
 438              		.thumb
 439              		.syntax unified
 440              	.L20:
 441              	.LBE71:
 442              	.LBE70:
1947:../../..\CubeG4\include/core_cm4.h **** 
1948:../../..\CubeG4\include/core_cm4.h ****   for(;;)                                                           /* wait until reset */
 443              		.loc 2 1948 3 view .LVU124
1949:../../..\CubeG4\include/core_cm4.h ****   {
1950:../../..\CubeG4\include/core_cm4.h ****     __NOP();
 444              		.loc 2 1950 5 view .LVU125
 445              		.syntax unified
 446              	@ 1950 "../../..\CubeG4\include/core_cm4.h" 1
 447 0016 00BF     		nop
 448              	@ 0 "" 2
 449              		.thumb
 450              		.syntax unified
 451 0018 FDE7     		b	.L20
 452              	.L22:
 453 001a 00BF     		.align	2
 454              	.L21:
 455 001c 00ED00E0 		.word	-536810240
 456 0020 0400FA05 		.word	100270084
 457              	.LBE67:
 458              	.LBE66:
 459              		.cfi_endproc
 460              	.LFE329:
 462              		.section	.text.HAL_SYSTICK_Config,"ax",%progbits
 463              		.align	1
 464              		.global	HAL_SYSTICK_Config
 465              		.syntax unified
 466              		.thumb
 467              		.thumb_func
 468              		.fpu fpv4-sp-d16
 470              	HAL_SYSTICK_Config:
 471              	.LVL24:
 472              	.LFB330:
 241:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 242:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 243:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 244:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Initialize the System Timer with interrupt enabled and start the System Tick Timer (Sys
 245:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         Counter is in free running mode to generate periodic interrupts.
 246:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  TicksNumb: Specifies the ticks Number of ticks between two interrupts.
 247:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval status:  - 0  Function succeeded.
 248:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                  - 1  Function failed.
 249:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 250:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
 251:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 473              		.loc 1 251 1 view -0
 474              		.cfi_startproc
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477              		@ link register save eliminated.
 252:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****    return SysTick_Config(TicksNumb);
 478              		.loc 1 252 4 view .LVU127
 479              	.LBB76:
 480              	.LBI76:
1951:../../..\CubeG4\include/core_cm4.h ****   }
1952:../../..\CubeG4\include/core_cm4.h **** }
1953:../../..\CubeG4\include/core_cm4.h **** 
1954:../../..\CubeG4\include/core_cm4.h **** /*@} end of CMSIS_Core_NVICFunctions */
1955:../../..\CubeG4\include/core_cm4.h **** 
1956:../../..\CubeG4\include/core_cm4.h **** /* ##########################  MPU functions  #################################### */
1957:../../..\CubeG4\include/core_cm4.h **** 
1958:../../..\CubeG4\include/core_cm4.h **** #if defined (__MPU_PRESENT) && (__MPU_PRESENT == 1U)
1959:../../..\CubeG4\include/core_cm4.h **** 
1960:../../..\CubeG4\include/core_cm4.h **** #include "mpu_armv7.h"
1961:../../..\CubeG4\include/core_cm4.h **** 
1962:../../..\CubeG4\include/core_cm4.h **** #endif
1963:../../..\CubeG4\include/core_cm4.h **** 
1964:../../..\CubeG4\include/core_cm4.h **** 
1965:../../..\CubeG4\include/core_cm4.h **** /* ##########################  FPU functions  #################################### */
1966:../../..\CubeG4\include/core_cm4.h **** /**
1967:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_Core_FunctionInterface
1968:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_Core_FpuFunctions FPU Functions
1969:../../..\CubeG4\include/core_cm4.h ****   \brief    Function that provides FPU type.
1970:../../..\CubeG4\include/core_cm4.h ****   @{
1971:../../..\CubeG4\include/core_cm4.h ****  */
1972:../../..\CubeG4\include/core_cm4.h **** 
1973:../../..\CubeG4\include/core_cm4.h **** /**
1974:../../..\CubeG4\include/core_cm4.h ****   \brief   get FPU type
1975:../../..\CubeG4\include/core_cm4.h ****   \details returns the FPU type
1976:../../..\CubeG4\include/core_cm4.h ****   \returns
1977:../../..\CubeG4\include/core_cm4.h ****    - \b  0: No FPU
1978:../../..\CubeG4\include/core_cm4.h ****    - \b  1: Single precision FPU
1979:../../..\CubeG4\include/core_cm4.h ****    - \b  2: Double + Single precision FPU
1980:../../..\CubeG4\include/core_cm4.h ****  */
1981:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t SCB_GetFPUType(void)
1982:../../..\CubeG4\include/core_cm4.h **** {
1983:../../..\CubeG4\include/core_cm4.h ****   uint32_t mvfr0;
1984:../../..\CubeG4\include/core_cm4.h **** 
1985:../../..\CubeG4\include/core_cm4.h ****   mvfr0 = FPU->MVFR0;
1986:../../..\CubeG4\include/core_cm4.h ****   if      ((mvfr0 & (FPU_MVFR0_Single_precision_Msk | FPU_MVFR0_Double_precision_Msk)) == 0x020U)
1987:../../..\CubeG4\include/core_cm4.h ****   {
1988:../../..\CubeG4\include/core_cm4.h ****     return 1U;           /* Single precision FPU */
1989:../../..\CubeG4\include/core_cm4.h ****   }
1990:../../..\CubeG4\include/core_cm4.h ****   else
1991:../../..\CubeG4\include/core_cm4.h ****   {
1992:../../..\CubeG4\include/core_cm4.h ****     return 0U;           /* No FPU */
1993:../../..\CubeG4\include/core_cm4.h ****   }
1994:../../..\CubeG4\include/core_cm4.h **** }
1995:../../..\CubeG4\include/core_cm4.h **** 
1996:../../..\CubeG4\include/core_cm4.h **** 
1997:../../..\CubeG4\include/core_cm4.h **** /*@} end of CMSIS_Core_FpuFunctions */
1998:../../..\CubeG4\include/core_cm4.h **** 
1999:../../..\CubeG4\include/core_cm4.h **** 
2000:../../..\CubeG4\include/core_cm4.h **** 
2001:../../..\CubeG4\include/core_cm4.h **** /* ##################################    SysTick function  ########################################
2002:../../..\CubeG4\include/core_cm4.h **** /**
2003:../../..\CubeG4\include/core_cm4.h ****   \ingroup  CMSIS_Core_FunctionInterface
2004:../../..\CubeG4\include/core_cm4.h ****   \defgroup CMSIS_Core_SysTickFunctions SysTick Functions
2005:../../..\CubeG4\include/core_cm4.h ****   \brief    Functions that configure the System.
2006:../../..\CubeG4\include/core_cm4.h ****   @{
2007:../../..\CubeG4\include/core_cm4.h ****  */
2008:../../..\CubeG4\include/core_cm4.h **** 
2009:../../..\CubeG4\include/core_cm4.h **** #if defined (__Vendor_SysTickConfig) && (__Vendor_SysTickConfig == 0U)
2010:../../..\CubeG4\include/core_cm4.h **** 
2011:../../..\CubeG4\include/core_cm4.h **** /**
2012:../../..\CubeG4\include/core_cm4.h ****   \brief   System Tick Configuration
2013:../../..\CubeG4\include/core_cm4.h ****   \details Initializes the System Timer and its interrupt, and starts the System Tick Timer.
2014:../../..\CubeG4\include/core_cm4.h ****            Counter is in free running mode to generate periodic interrupts.
2015:../../..\CubeG4\include/core_cm4.h ****   \param [in]  ticks  Number of ticks between two interrupts.
2016:../../..\CubeG4\include/core_cm4.h ****   \return          0  Function succeeded.
2017:../../..\CubeG4\include/core_cm4.h ****   \return          1  Function failed.
2018:../../..\CubeG4\include/core_cm4.h ****   \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
2019:../../..\CubeG4\include/core_cm4.h ****            function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.
2020:../../..\CubeG4\include/core_cm4.h ****            must contain a vendor-specific implementation of this function.
2021:../../..\CubeG4\include/core_cm4.h ****  */
2022:../../..\CubeG4\include/core_cm4.h **** __STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
 481              		.loc 2 2022 26 view .LVU128
 482              	.LBB77:
2023:../../..\CubeG4\include/core_cm4.h **** {
2024:../../..\CubeG4\include/core_cm4.h ****   if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 483              		.loc 2 2024 3 view .LVU129
 484              		.loc 2 2024 14 is_stmt 0 view .LVU130
 485 0000 0138     		subs	r0, r0, #1
 486              	.LVL25:
 487              		.loc 2 2024 6 view .LVU131
 488 0002 B0F1807F 		cmp	r0, #16777216
 489 0006 0AD2     		bcs	.L25
2025:../../..\CubeG4\include/core_cm4.h ****   {
2026:../../..\CubeG4\include/core_cm4.h ****     return (1UL);                                                   /* Reload value impossible */
2027:../../..\CubeG4\include/core_cm4.h ****   }
2028:../../..\CubeG4\include/core_cm4.h **** 
2029:../../..\CubeG4\include/core_cm4.h ****   SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 490              		.loc 2 2029 3 is_stmt 1 view .LVU132
 491              		.loc 2 2029 18 is_stmt 0 view .LVU133
 492 0008 064B     		ldr	r3, .L26
 493              	.LBB78:
 494              	.LBB79:
1824:../../..\CubeG4\include/core_cm4.h ****   }
 495              		.loc 2 1824 46 view .LVU134
 496 000a 074A     		ldr	r2, .L26+4
 497              	.LBE79:
 498              	.LBE78:
 499              		.loc 2 2029 18 view .LVU135
 500 000c 5860     		str	r0, [r3, #4]
2030:../../..\CubeG4\include/core_cm4.h ****   NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Int
 501              		.loc 2 2030 3 is_stmt 1 view .LVU136
 502              	.LVL26:
 503              	.LBB81:
 504              	.LBI78:
1816:../../..\CubeG4\include/core_cm4.h **** {
 505              		.loc 2 1816 22 view .LVU137
 506              	.LBB80:
1818:../../..\CubeG4\include/core_cm4.h ****   {
 507              		.loc 2 1818 3 view .LVU138
1824:../../..\CubeG4\include/core_cm4.h ****   }
 508              		.loc 2 1824 5 view .LVU139
1824:../../..\CubeG4\include/core_cm4.h ****   }
 509              		.loc 2 1824 46 is_stmt 0 view .LVU140
 510 000e F021     		movs	r1, #240
 511 0010 82F82310 		strb	r1, [r2, #35]
 512              	.LVL27:
1824:../../..\CubeG4\include/core_cm4.h ****   }
 513              		.loc 2 1824 46 view .LVU141
 514              	.LBE80:
 515              	.LBE81:
2031:../../..\CubeG4\include/core_cm4.h ****   SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Val
 516              		.loc 2 2031 3 is_stmt 1 view .LVU142
 517              		.loc 2 2031 18 is_stmt 0 view .LVU143
 518 0014 0020     		movs	r0, #0
 519              	.LVL28:
2032:../../..\CubeG4\include/core_cm4.h ****   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 520              		.loc 2 2032 18 view .LVU144
 521 0016 0722     		movs	r2, #7
2031:../../..\CubeG4\include/core_cm4.h ****   SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Val
 522              		.loc 2 2031 18 view .LVU145
 523 0018 9860     		str	r0, [r3, #8]
 524              		.loc 2 2032 3 is_stmt 1 view .LVU146
 525              		.loc 2 2032 18 is_stmt 0 view .LVU147
 526 001a 1A60     		str	r2, [r3]
2033:../../..\CubeG4\include/core_cm4.h ****                    SysTick_CTRL_TICKINT_Msk   |
2034:../../..\CubeG4\include/core_cm4.h ****                    SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTi
2035:../../..\CubeG4\include/core_cm4.h ****   return (0UL);                                                     /* Function successful */
 527              		.loc 2 2035 3 is_stmt 1 view .LVU148
 528 001c 7047     		bx	lr
 529              	.L25:
2026:../../..\CubeG4\include/core_cm4.h ****   }
 530              		.loc 2 2026 12 is_stmt 0 view .LVU149
 531 001e 0120     		movs	r0, #1
 532              	.LVL29:
2026:../../..\CubeG4\include/core_cm4.h ****   }
 533              		.loc 2 2026 12 view .LVU150
 534              	.LBE77:
 535              	.LBE76:
 253:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 536              		.loc 1 253 1 view .LVU151
 537 0020 7047     		bx	lr
 538              	.L27:
 539 0022 00BF     		.align	2
 540              	.L26:
 541 0024 10E000E0 		.word	-536813552
 542 0028 00ED00E0 		.word	-536810240
 543              		.cfi_endproc
 544              	.LFE330:
 546              		.section	.text.HAL_NVIC_GetPriorityGrouping,"ax",%progbits
 547              		.align	1
 548              		.global	HAL_NVIC_GetPriorityGrouping
 549              		.syntax unified
 550              		.thumb
 551              		.thumb_func
 552              		.fpu fpv4-sp-d16
 554              	HAL_NVIC_GetPriorityGrouping:
 555              	.LFB331:
 254:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 255:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @}
 256:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 257:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 258:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /** @addtogroup CORTEX_Exported_Functions_Group2
 259:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****  *  @brief   Cortex control functions
 260:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****  *
 261:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** @verbatim
 262:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ==============================================================================
 263:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                       ##### Peripheral Control functions #####
 264:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   ==============================================================================
 265:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     [..]
 266:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****       This subsection provides a set of functions allowing to control the CORTEX
 267:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****       (NVIC, SYSTICK, MPU) functionalities.
 268:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 269:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 270:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** @endverbatim
 271:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @{
 272:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 273:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 274:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 275:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Get the priority grouping field from the NVIC Interrupt Controller.
 276:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field)
 277:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 278:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** uint32_t HAL_NVIC_GetPriorityGrouping(void)
 279:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 556              		.loc 1 279 1 is_stmt 1 view -0
 557              		.cfi_startproc
 558              		@ args = 0, pretend = 0, frame = 0
 559              		@ frame_needed = 0, uses_anonymous_args = 0
 560              		@ link register save eliminated.
 280:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Get the PRIGROUP[10:8] field value */
 281:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   return NVIC_GetPriorityGrouping();
 561              		.loc 1 281 3 view .LVU153
 562              	.LBB84:
 563              	.LBI84:
1676:../../..\CubeG4\include/core_cm4.h **** {
 564              		.loc 2 1676 26 view .LVU154
 565              	.LBB85:
1678:../../..\CubeG4\include/core_cm4.h **** }
 566              		.loc 2 1678 3 view .LVU155
1678:../../..\CubeG4\include/core_cm4.h **** }
 567              		.loc 2 1678 26 is_stmt 0 view .LVU156
 568 0000 024B     		ldr	r3, .L29
 569 0002 D868     		ldr	r0, [r3, #12]
 570              	.LBE85:
 571              	.LBE84:
 282:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 572              		.loc 1 282 1 view .LVU157
 573 0004 C0F30220 		ubfx	r0, r0, #8, #3
 574 0008 7047     		bx	lr
 575              	.L30:
 576 000a 00BF     		.align	2
 577              	.L29:
 578 000c 00ED00E0 		.word	-536810240
 579              		.cfi_endproc
 580              	.LFE331:
 582              		.section	.text.HAL_NVIC_GetPriority,"ax",%progbits
 583              		.align	1
 584              		.global	HAL_NVIC_GetPriority
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu fpv4-sp-d16
 590              	HAL_NVIC_GetPriority:
 591              	.LVL30:
 592              	.LFB332:
 283:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 284:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 285:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Get the priority of an interrupt.
 286:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  IRQn: External interrupt number.
 287:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 288:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 289:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param   PriorityGroup: the priority grouping bits length.
 290:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be one of the following values:
 291:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_0: 0 bit for pre-emption priority,
 292:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                      4 bits for subpriority
 293:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_1: 1 bit for pre-emption priority,
 294:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                      3 bits for subpriority
 295:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_2: 2 bits for pre-emption priority,
 296:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                      2 bits for subpriority
 297:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_3: 3 bits for pre-emption priority,
 298:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                      1 bit for subpriority
 299:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *           @arg NVIC_PRIORITYGROUP_4: 4 bits for pre-emption priority,
 300:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                                      0 bit for subpriority
 301:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  pPreemptPriority: Pointer on the Preemptive priority value (starting from 0).
 302:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  pSubPriority: Pointer on the Subpriority value (starting from 0).
 303:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 304:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 305:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t *pPreemptPriority, uint3
 306:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 593              		.loc 1 306 1 is_stmt 1 view -0
 594              		.cfi_startproc
 595              		@ args = 0, pretend = 0, frame = 0
 596              		@ frame_needed = 0, uses_anonymous_args = 0
 307:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 308:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
 597              		.loc 1 308 3 view .LVU159
 309:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****  /* Get priority for Cortex-M system or device specific interrupts */
 310:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_DecodePriority(NVIC_GetPriority(IRQn), PriorityGroup, pPreemptPriority, pSubPriority);
 598              		.loc 1 310 3 view .LVU160
 599              	.LBB90:
 600              	.LBI90:
1838:../../..\CubeG4\include/core_cm4.h **** {
 601              		.loc 2 1838 26 view .LVU161
 602              	.LBB91:
1841:../../..\CubeG4\include/core_cm4.h ****   {
 603              		.loc 2 1841 3 view .LVU162
 604              	.LBE91:
 605              	.LBE90:
 306:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 606              		.loc 1 306 1 is_stmt 0 view .LVU163
 607 0000 70B5     		push	{r4, r5, r6, lr}
 608              		.cfi_def_cfa_offset 16
 609              		.cfi_offset 4, -16
 610              		.cfi_offset 5, -12
 611              		.cfi_offset 6, -8
 612              		.cfi_offset 14, -4
 613              	.LBB95:
 614              	.LBB92:
1841:../../..\CubeG4\include/core_cm4.h ****   {
 615              		.loc 2 1841 6 view .LVU164
 616 0002 0028     		cmp	r0, #0
 617              	.LVL31:
1843:../../..\CubeG4\include/core_cm4.h ****   }
 618              		.loc 2 1843 5 is_stmt 1 view .LVU165
1843:../../..\CubeG4\include/core_cm4.h ****   }
 619              		.loc 2 1843 31 is_stmt 0 view .LVU166
 620 0004 AEBF     		itee	ge
 621 0006 00F16040 		addge	r0, r0, #-536870912
1847:../../..\CubeG4\include/core_cm4.h ****   }
 622              		.loc 2 1847 50 view .LVU167
 623 000a 00F00F00 		andlt	r0, r0, #15
1847:../../..\CubeG4\include/core_cm4.h ****   }
 624              		.loc 2 1847 31 view .LVU168
 625 000e 124C     		ldrlt	r4, .L37
 626              	.LBE92:
 627              	.LBE95:
 628              	.LBB96:
 629              	.LBB97:
1892:../../..\CubeG4\include/core_cm4.h ****   uint32_t PreemptPriorityBits;
 630              		.loc 2 1892 12 view .LVU169
 631 0010 01F00701 		and	r1, r1, #7
 632              	.LVL32:
1892:../../..\CubeG4\include/core_cm4.h ****   uint32_t PreemptPriorityBits;
 633              		.loc 2 1892 12 view .LVU170
 634              	.LBE97:
 635              	.LBE96:
 636              	.LBB100:
 637              	.LBB93:
1843:../../..\CubeG4\include/core_cm4.h ****   }
 638              		.loc 2 1843 31 view .LVU171
 639 0014 AABF     		itet	ge
 640 0016 00F56140 		addge	r0, r0, #57600
1847:../../..\CubeG4\include/core_cm4.h ****   }
 641              		.loc 2 1847 31 view .LVU172
 642 001a 205C     		ldrblt	r0, [r4, r0]	@ zero_extendqisi2
1843:../../..\CubeG4\include/core_cm4.h ****   }
 643              		.loc 2 1843 31 view .LVU173
 644 001c 90F80003 		ldrbge	r0, [r0, #768]	@ zero_extendqisi2
1847:../../..\CubeG4\include/core_cm4.h ****   }
 645              		.loc 2 1847 5 is_stmt 1 view .LVU174
 646              	.LBE93:
 647              	.LBE100:
 648              	.LBB101:
 649              	.LBB98:
1896:../../..\CubeG4\include/core_cm4.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
 650              		.loc 2 1896 31 is_stmt 0 view .LVU175
 651 0020 C1F10704 		rsb	r4, r1, #7
1897:../../..\CubeG4\include/core_cm4.h **** 
 652              		.loc 2 1897 44 view .LVU176
 653 0024 0D1D     		adds	r5, r1, #4
1896:../../..\CubeG4\include/core_cm4.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
 654              		.loc 2 1896 23 view .LVU177
 655 0026 042C     		cmp	r4, #4
 656 0028 28BF     		it	cs
 657 002a 0424     		movcs	r4, #4
1897:../../..\CubeG4\include/core_cm4.h **** 
 658              		.loc 2 1897 109 view .LVU178
 659 002c 062D     		cmp	r5, #6
 660              	.LBE98:
 661              	.LBE101:
 662              	.LBB102:
 663              	.LBB94:
1847:../../..\CubeG4\include/core_cm4.h ****   }
 664              		.loc 2 1847 64 view .LVU179
 665 002e 4FEA1010 		lsr	r0, r0, #4
 666              	.LVL33:
1847:../../..\CubeG4\include/core_cm4.h ****   }
 667              		.loc 2 1847 64 view .LVU180
 668              	.LBE94:
 669              	.LBE102:
 670              	.LBB103:
 671              	.LBI96:
1890:../../..\CubeG4\include/core_cm4.h **** {
 672              		.loc 2 1890 22 is_stmt 1 view .LVU181
 673              	.LBB99:
1892:../../..\CubeG4\include/core_cm4.h ****   uint32_t PreemptPriorityBits;
 674              		.loc 2 1892 3 view .LVU182
1893:../../..\CubeG4\include/core_cm4.h ****   uint32_t SubPriorityBits;
 675              		.loc 2 1893 3 view .LVU183
1894:../../..\CubeG4\include/core_cm4.h **** 
 676              		.loc 2 1894 3 view .LVU184
1896:../../..\CubeG4\include/core_cm4.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
 677              		.loc 2 1896 3 view .LVU185
1897:../../..\CubeG4\include/core_cm4.h **** 
 678              		.loc 2 1897 3 view .LVU186
1897:../../..\CubeG4\include/core_cm4.h **** 
 679              		.loc 2 1897 109 is_stmt 0 view .LVU187
 680 0032 8CBF     		ite	hi
 681 0034 0339     		subhi	r1, r1, #3
 682              	.LVL34:
1897:../../..\CubeG4\include/core_cm4.h **** 
 683              		.loc 2 1897 109 view .LVU188
 684 0036 0021     		movls	r1, #0
 685              	.LVL35:
1899:../../..\CubeG4\include/core_cm4.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
 686              		.loc 2 1899 3 is_stmt 1 view .LVU189
1899:../../..\CubeG4\include/core_cm4.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
 687              		.loc 2 1899 53 is_stmt 0 view .LVU190
 688 0038 4FF0FF35 		mov	r5, #-1
 689              	.LVL36:
1899:../../..\CubeG4\include/core_cm4.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
 690              		.loc 2 1899 33 view .LVU191
 691 003c 20FA01F6 		lsr	r6, r0, r1
1899:../../..\CubeG4\include/core_cm4.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
 692              		.loc 2 1899 53 view .LVU192
 693 0040 05FA04F4 		lsl	r4, r5, r4
 694              	.LVL37:
1900:../../..\CubeG4\include/core_cm4.h **** }
 695              		.loc 2 1900 53 view .LVU193
 696 0044 05FA01F1 		lsl	r1, r5, r1
 697              	.LVL38:
1899:../../..\CubeG4\include/core_cm4.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
 698              		.loc 2 1899 53 view .LVU194
 699 0048 26EA0404 		bic	r4, r6, r4
1900:../../..\CubeG4\include/core_cm4.h **** }
 700              		.loc 2 1900 53 view .LVU195
 701 004c 20EA0100 		bic	r0, r0, r1
 702              	.LVL39:
1899:../../..\CubeG4\include/core_cm4.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
 703              		.loc 2 1899 21 view .LVU196
 704 0050 1460     		str	r4, [r2]
1900:../../..\CubeG4\include/core_cm4.h **** }
 705              		.loc 2 1900 3 is_stmt 1 view .LVU197
1900:../../..\CubeG4\include/core_cm4.h **** }
 706              		.loc 2 1900 21 is_stmt 0 view .LVU198
 707 0052 1860     		str	r0, [r3]
 708              	.LVL40:
1900:../../..\CubeG4\include/core_cm4.h **** }
 709              		.loc 2 1900 21 view .LVU199
 710              	.LBE99:
 711              	.LBE103:
 311:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 712              		.loc 1 311 1 view .LVU200
 713 0054 70BD     		pop	{r4, r5, r6, pc}
 714              	.L38:
 715 0056 00BF     		.align	2
 716              	.L37:
 717 0058 14ED00E0 		.word	-536810220
 718              		.cfi_endproc
 719              	.LFE332:
 721              		.section	.text.HAL_NVIC_SetPendingIRQ,"ax",%progbits
 722              		.align	1
 723              		.global	HAL_NVIC_SetPendingIRQ
 724              		.syntax unified
 725              		.thumb
 726              		.thumb_func
 727              		.fpu fpv4-sp-d16
 729              	HAL_NVIC_SetPendingIRQ:
 730              	.LVL41:
 731              	.LFB333:
 312:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 313:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 314:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Set Pending bit of an external interrupt.
 315:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  IRQn External interrupt number
 316:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 317:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 318:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 319:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 320:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn)
 321:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 732              		.loc 1 321 1 is_stmt 1 view -0
 733              		.cfi_startproc
 734              		@ args = 0, pretend = 0, frame = 0
 735              		@ frame_needed = 0, uses_anonymous_args = 0
 736              		@ link register save eliminated.
 322:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 323:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 737              		.loc 1 323 3 view .LVU202
 324:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   
 325:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Set interrupt pending */
 326:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_SetPendingIRQ(IRQn);
 738              		.loc 1 326 3 view .LVU203
 739              	.LBB106:
 740              	.LBI106:
1762:../../..\CubeG4\include/core_cm4.h **** {
 741              		.loc 2 1762 22 view .LVU204
 742              	.LBB107:
1764:../../..\CubeG4\include/core_cm4.h ****   {
 743              		.loc 2 1764 3 view .LVU205
1764:../../..\CubeG4\include/core_cm4.h ****   {
 744              		.loc 2 1764 6 is_stmt 0 view .LVU206
 745 0000 0028     		cmp	r0, #0
 746              	.LVL42:
1764:../../..\CubeG4\include/core_cm4.h ****   {
 747              		.loc 2 1764 6 view .LVU207
 748 0002 09DB     		blt	.L39
1766:../../..\CubeG4\include/core_cm4.h ****   }
 749              		.loc 2 1766 5 is_stmt 1 view .LVU208
1766:../../..\CubeG4\include/core_cm4.h ****   }
 750              		.loc 2 1766 34 is_stmt 0 view .LVU209
 751 0004 4309     		lsrs	r3, r0, #5
1766:../../..\CubeG4\include/core_cm4.h ****   }
 752              		.loc 2 1766 45 view .LVU210
 753 0006 0122     		movs	r2, #1
1766:../../..\CubeG4\include/core_cm4.h ****   }
 754              		.loc 2 1766 81 view .LVU211
 755 0008 00F01F00 		and	r0, r0, #31
1766:../../..\CubeG4\include/core_cm4.h ****   }
 756              		.loc 2 1766 45 view .LVU212
 757 000c 02FA00F0 		lsl	r0, r2, r0
1766:../../..\CubeG4\include/core_cm4.h ****   }
 758              		.loc 2 1766 43 view .LVU213
 759 0010 4033     		adds	r3, r3, #64
 760 0012 024A     		ldr	r2, .L41
 761 0014 42F82300 		str	r0, [r2, r3, lsl #2]
 762              	.LVL43:
 763              	.L39:
1766:../../..\CubeG4\include/core_cm4.h ****   }
 764              		.loc 2 1766 43 view .LVU214
 765              	.LBE107:
 766              	.LBE106:
 327:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 767              		.loc 1 327 1 view .LVU215
 768 0018 7047     		bx	lr
 769              	.L42:
 770 001a 00BF     		.align	2
 771              	.L41:
 772 001c 00E100E0 		.word	-536813312
 773              		.cfi_endproc
 774              	.LFE333:
 776              		.section	.text.HAL_NVIC_GetPendingIRQ,"ax",%progbits
 777              		.align	1
 778              		.global	HAL_NVIC_GetPendingIRQ
 779              		.syntax unified
 780              		.thumb
 781              		.thumb_func
 782              		.fpu fpv4-sp-d16
 784              	HAL_NVIC_GetPendingIRQ:
 785              	.LVL44:
 786              	.LFB334:
 328:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 329:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 330:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Get Pending Interrupt (read the pending register in the NVIC
 331:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         and return the pending bit for the specified interrupt).
 332:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 333:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *          This parameter can be an enumerator of IRQn_Type enumeration
 334:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 335:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval status: - 0  Interrupt status is not pending.
 336:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                 - 1  Interrupt status is pending.
 337:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 338:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn)
 339:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 787              		.loc 1 339 1 is_stmt 1 view -0
 788              		.cfi_startproc
 789              		@ args = 0, pretend = 0, frame = 0
 790              		@ frame_needed = 0, uses_anonymous_args = 0
 791              		@ link register save eliminated.
 340:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 341:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 792              		.loc 1 341 3 view .LVU217
 342:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   
 343:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Return 1 if pending else 0 */
 344:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   return NVIC_GetPendingIRQ(IRQn);
 793              		.loc 1 344 3 view .LVU218
 794              	.LBB110:
 795              	.LBI110:
1743:../../..\CubeG4\include/core_cm4.h **** {
 796              		.loc 2 1743 26 view .LVU219
 797              	.LBB111:
1745:../../..\CubeG4\include/core_cm4.h ****   {
 798              		.loc 2 1745 3 view .LVU220
1745:../../..\CubeG4\include/core_cm4.h ****   {
 799              		.loc 2 1745 6 is_stmt 0 view .LVU221
 800 0000 0028     		cmp	r0, #0
 801              	.LVL45:
1747:../../..\CubeG4\include/core_cm4.h ****   }
 802              		.loc 2 1747 5 is_stmt 1 view .LVU222
1747:../../..\CubeG4\include/core_cm4.h ****   }
 803              		.loc 2 1747 54 is_stmt 0 view .LVU223
 804 0002 A1BF     		itttt	ge
 805 0004 4309     		lsrge	r3, r0, #5
1747:../../..\CubeG4\include/core_cm4.h ****   }
 806              		.loc 2 1747 35 view .LVU224
 807 0006 4033     		addge	r3, r3, #64
 808 0008 054A     		ldrge	r2, .L46
 809 000a 52F82330 		ldrge	r3, [r2, r3, lsl #2]
1747:../../..\CubeG4\include/core_cm4.h ****   }
 810              		.loc 2 1747 91 view .LVU225
 811 000e A3BF     		ittte	ge
 812 0010 00F01F00 		andge	r0, r0, #31
1747:../../..\CubeG4\include/core_cm4.h ****   }
 813              		.loc 2 1747 103 view .LVU226
 814 0014 23FA00F0 		lsrge	r0, r3, r0
1747:../../..\CubeG4\include/core_cm4.h ****   }
 815              		.loc 2 1747 12 view .LVU227
 816 0018 00F00100 		andge	r0, r0, #1
1751:../../..\CubeG4\include/core_cm4.h ****   }
 817              		.loc 2 1751 11 view .LVU228
 818 001c 0020     		movlt	r0, #0
 819              	.LVL46:
1751:../../..\CubeG4\include/core_cm4.h ****   }
 820              		.loc 2 1751 11 view .LVU229
 821              	.LBE111:
 822              	.LBE110:
 345:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 823              		.loc 1 345 1 view .LVU230
 824 001e 7047     		bx	lr
 825              	.L47:
 826              		.align	2
 827              	.L46:
 828 0020 00E100E0 		.word	-536813312
 829              		.cfi_endproc
 830              	.LFE334:
 832              		.section	.text.HAL_NVIC_ClearPendingIRQ,"ax",%progbits
 833              		.align	1
 834              		.global	HAL_NVIC_ClearPendingIRQ
 835              		.syntax unified
 836              		.thumb
 837              		.thumb_func
 838              		.fpu fpv4-sp-d16
 840              	HAL_NVIC_ClearPendingIRQ:
 841              	.LVL47:
 842              	.LFB335:
 346:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 347:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 348:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Clear the pending bit of an external interrupt.
 349:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  IRQn External interrupt number.
 350:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 351:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 352:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 353:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 354:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn)
 355:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 843              		.loc 1 355 1 is_stmt 1 view -0
 844              		.cfi_startproc
 845              		@ args = 0, pretend = 0, frame = 0
 846              		@ frame_needed = 0, uses_anonymous_args = 0
 847              		@ link register save eliminated.
 356:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 357:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
 848              		.loc 1 357 3 view .LVU232
 358:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   
 359:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Clear pending interrupt */
 360:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   NVIC_ClearPendingIRQ(IRQn);
 849              		.loc 1 360 3 view .LVU233
 850              	.LBB114:
 851              	.LBI114:
1777:../../..\CubeG4\include/core_cm4.h **** {
 852              		.loc 2 1777 22 view .LVU234
 853              	.LBB115:
1779:../../..\CubeG4\include/core_cm4.h ****   {
 854              		.loc 2 1779 3 view .LVU235
1779:../../..\CubeG4\include/core_cm4.h ****   {
 855              		.loc 2 1779 6 is_stmt 0 view .LVU236
 856 0000 0028     		cmp	r0, #0
 857              	.LVL48:
1779:../../..\CubeG4\include/core_cm4.h ****   {
 858              		.loc 2 1779 6 view .LVU237
 859 0002 09DB     		blt	.L48
1781:../../..\CubeG4\include/core_cm4.h ****   }
 860              		.loc 2 1781 5 is_stmt 1 view .LVU238
1781:../../..\CubeG4\include/core_cm4.h ****   }
 861              		.loc 2 1781 34 is_stmt 0 view .LVU239
 862 0004 4309     		lsrs	r3, r0, #5
1781:../../..\CubeG4\include/core_cm4.h ****   }
 863              		.loc 2 1781 45 view .LVU240
 864 0006 0122     		movs	r2, #1
1781:../../..\CubeG4\include/core_cm4.h ****   }
 865              		.loc 2 1781 81 view .LVU241
 866 0008 00F01F00 		and	r0, r0, #31
1781:../../..\CubeG4\include/core_cm4.h ****   }
 867              		.loc 2 1781 45 view .LVU242
 868 000c 02FA00F0 		lsl	r0, r2, r0
1781:../../..\CubeG4\include/core_cm4.h ****   }
 869              		.loc 2 1781 43 view .LVU243
 870 0010 6033     		adds	r3, r3, #96
 871 0012 024A     		ldr	r2, .L50
 872 0014 42F82300 		str	r0, [r2, r3, lsl #2]
 873              	.LVL49:
 874              	.L48:
1781:../../..\CubeG4\include/core_cm4.h ****   }
 875              		.loc 2 1781 43 view .LVU244
 876              	.LBE115:
 877              	.LBE114:
 361:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 878              		.loc 1 361 1 view .LVU245
 879 0018 7047     		bx	lr
 880              	.L51:
 881 001a 00BF     		.align	2
 882              	.L50:
 883 001c 00E100E0 		.word	-536813312
 884              		.cfi_endproc
 885              	.LFE335:
 887              		.section	.text.HAL_NVIC_GetActive,"ax",%progbits
 888              		.align	1
 889              		.global	HAL_NVIC_GetActive
 890              		.syntax unified
 891              		.thumb
 892              		.thumb_func
 893              		.fpu fpv4-sp-d16
 895              	HAL_NVIC_GetActive:
 896              	.LVL50:
 897              	.LFB336:
 362:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 363:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 364:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief Get active interrupt (read the active register in NVIC and return the active bit).
 365:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param IRQn External interrupt number
 366:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         This parameter can be an enumerator of IRQn_Type enumeration
 367:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSI
 368:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval status: - 0  Interrupt status is not pending.
 369:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                 - 1  Interrupt status is pending.
 370:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 371:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn)
 372:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 898              		.loc 1 372 1 is_stmt 1 view -0
 899              		.cfi_startproc
 900              		@ args = 0, pretend = 0, frame = 0
 901              		@ frame_needed = 0, uses_anonymous_args = 0
 902              		@ link register save eliminated.
 373:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Return 1 if active else 0 */
 374:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   return NVIC_GetActive(IRQn);
 903              		.loc 1 374 3 view .LVU247
 904              	.LBB118:
 905              	.LBI118:
1794:../../..\CubeG4\include/core_cm4.h **** {
 906              		.loc 2 1794 26 view .LVU248
 907              	.LBB119:
1796:../../..\CubeG4\include/core_cm4.h ****   {
 908              		.loc 2 1796 3 view .LVU249
1796:../../..\CubeG4\include/core_cm4.h ****   {
 909              		.loc 2 1796 6 is_stmt 0 view .LVU250
 910 0000 0028     		cmp	r0, #0
 911              	.LVL51:
1798:../../..\CubeG4\include/core_cm4.h ****   }
 912              		.loc 2 1798 5 is_stmt 1 view .LVU251
1798:../../..\CubeG4\include/core_cm4.h ****   }
 913              		.loc 2 1798 54 is_stmt 0 view .LVU252
 914 0002 A1BF     		itttt	ge
 915 0004 4309     		lsrge	r3, r0, #5
1798:../../..\CubeG4\include/core_cm4.h ****   }
 916              		.loc 2 1798 35 view .LVU253
 917 0006 8033     		addge	r3, r3, #128
 918 0008 054A     		ldrge	r2, .L55
 919 000a 52F82330 		ldrge	r3, [r2, r3, lsl #2]
1798:../../..\CubeG4\include/core_cm4.h ****   }
 920              		.loc 2 1798 91 view .LVU254
 921 000e A3BF     		ittte	ge
 922 0010 00F01F00 		andge	r0, r0, #31
1798:../../..\CubeG4\include/core_cm4.h ****   }
 923              		.loc 2 1798 103 view .LVU255
 924 0014 23FA00F0 		lsrge	r0, r3, r0
1798:../../..\CubeG4\include/core_cm4.h ****   }
 925              		.loc 2 1798 12 view .LVU256
 926 0018 00F00100 		andge	r0, r0, #1
1802:../../..\CubeG4\include/core_cm4.h ****   }
 927              		.loc 2 1802 11 view .LVU257
 928 001c 0020     		movlt	r0, #0
 929              	.LVL52:
1802:../../..\CubeG4\include/core_cm4.h ****   }
 930              		.loc 2 1802 11 view .LVU258
 931              	.LBE119:
 932              	.LBE118:
 375:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 933              		.loc 1 375 1 view .LVU259
 934 001e 7047     		bx	lr
 935              	.L56:
 936              		.align	2
 937              	.L55:
 938 0020 00E100E0 		.word	-536813312
 939              		.cfi_endproc
 940              	.LFE336:
 942              		.section	.text.HAL_SYSTICK_CLKSourceConfig,"ax",%progbits
 943              		.align	1
 944              		.global	HAL_SYSTICK_CLKSourceConfig
 945              		.syntax unified
 946              		.thumb
 947              		.thumb_func
 948              		.fpu fpv4-sp-d16
 950              	HAL_SYSTICK_CLKSourceConfig:
 951              	.LVL53:
 952              	.LFB337:
 376:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 377:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 378:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Configure the SysTick clock source.
 379:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  CLKSource: specifies the SysTick clock source.
 380:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *          This parameter can be one of the following values:
 381:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *             @arg SYSTICK_CLKSOURCE_HCLK_DIV8: AHB clock divided by 8 selected as SysTick clock 
 382:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *             @arg SYSTICK_CLKSOURCE_HCLK: AHB clock selected as SysTick clock source.
 383:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 384:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 385:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource)
 386:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 953              		.loc 1 386 1 is_stmt 1 view -0
 954              		.cfi_startproc
 955              		@ args = 0, pretend = 0, frame = 0
 956              		@ frame_needed = 0, uses_anonymous_args = 0
 957              		@ link register save eliminated.
 387:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 388:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_SYSTICK_CLK_SOURCE(CLKSource));
 958              		.loc 1 388 3 view .LVU261
 389:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   if (CLKSource == SYSTICK_CLKSOURCE_HCLK)
 959              		.loc 1 389 3 view .LVU262
 960 0000 044B     		ldr	r3, .L61
 390:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   {
 391:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     SysTick->CTRL |= SYSTICK_CLKSOURCE_HCLK;
 961              		.loc 1 391 19 is_stmt 0 view .LVU263
 962 0002 1A68     		ldr	r2, [r3]
 963              		.loc 1 391 5 is_stmt 1 view .LVU264
 389:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   if (CLKSource == SYSTICK_CLKSOURCE_HCLK)
 964              		.loc 1 389 6 is_stmt 0 view .LVU265
 965 0004 0428     		cmp	r0, #4
 966              		.loc 1 391 19 view .LVU266
 967 0006 0CBF     		ite	eq
 968 0008 42F00402 		orreq	r2, r2, #4
 392:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   }
 393:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   else
 394:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   {
 395:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     SysTick->CTRL &= ~SYSTICK_CLKSOURCE_HCLK;
 969              		.loc 1 395 5 is_stmt 1 view .LVU267
 970              		.loc 1 395 19 is_stmt 0 view .LVU268
 971 000c 22F00402 		bicne	r2, r2, #4
 972 0010 1A60     		str	r2, [r3]
 396:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   }
 397:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 973              		.loc 1 397 1 view .LVU269
 974 0012 7047     		bx	lr
 975              	.L62:
 976              		.align	2
 977              	.L61:
 978 0014 10E000E0 		.word	-536813552
 979              		.cfi_endproc
 980              	.LFE337:
 982              		.section	.text.HAL_SYSTICK_Callback,"ax",%progbits
 983              		.align	1
 984              		.weak	HAL_SYSTICK_Callback
 985              		.syntax unified
 986              		.thumb
 987              		.thumb_func
 988              		.fpu fpv4-sp-d16
 990              	HAL_SYSTICK_Callback:
 991              	.LFB339:
 398:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 399:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 400:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Handle SYSTICK interrupt request.
 401:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 402:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 403:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_SYSTICK_IRQHandler(void)
 404:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 405:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   HAL_SYSTICK_Callback();
 406:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 407:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 408:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 409:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  SYSTICK callback.
 410:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 411:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 412:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** __weak void HAL_SYSTICK_Callback(void)
 413:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 992              		.loc 1 413 1 is_stmt 1 view -0
 993              		.cfi_startproc
 994              		@ args = 0, pretend = 0, frame = 0
 995              		@ frame_needed = 0, uses_anonymous_args = 0
 996              		@ link register save eliminated.
 414:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 415:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****             the HAL_SYSTICK_Callback could be implemented in the user file
 416:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****    */
 417:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 997              		.loc 1 417 1 view .LVU271
 998 0000 7047     		bx	lr
 999              		.cfi_endproc
 1000              	.LFE339:
 1002              		.section	.text.HAL_SYSTICK_IRQHandler,"ax",%progbits
 1003              		.align	1
 1004              		.global	HAL_SYSTICK_IRQHandler
 1005              		.syntax unified
 1006              		.thumb
 1007              		.thumb_func
 1008              		.fpu fpv4-sp-d16
 1010              	HAL_SYSTICK_IRQHandler:
 1011              	.LFB338:
 404:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   HAL_SYSTICK_Callback();
 1012              		.loc 1 404 1 view -0
 1013              		.cfi_startproc
 1014              		@ args = 0, pretend = 0, frame = 0
 1015              		@ frame_needed = 0, uses_anonymous_args = 0
 405:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 1016              		.loc 1 405 3 view .LVU273
 404:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   HAL_SYSTICK_Callback();
 1017              		.loc 1 404 1 is_stmt 0 view .LVU274
 1018 0000 08B5     		push	{r3, lr}
 1019              		.cfi_def_cfa_offset 8
 1020              		.cfi_offset 3, -8
 1021              		.cfi_offset 14, -4
 405:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 1022              		.loc 1 405 3 view .LVU275
 1023 0002 FFF7FEFF 		bl	HAL_SYSTICK_Callback
 1024              	.LVL54:
 406:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 1025              		.loc 1 406 1 view .LVU276
 1026 0006 08BD     		pop	{r3, pc}
 1027              		.cfi_endproc
 1028              	.LFE338:
 1030              		.section	.text.HAL_MPU_Enable,"ax",%progbits
 1031              		.align	1
 1032              		.global	HAL_MPU_Enable
 1033              		.syntax unified
 1034              		.thumb
 1035              		.thumb_func
 1036              		.fpu fpv4-sp-d16
 1038              	HAL_MPU_Enable:
 1039              	.LVL55:
 1040              	.LFB340:
 418:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 419:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** #if (__MPU_PRESENT == 1)
 420:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 421:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Enable the MPU.
 422:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  MPU_Control: Specifies the control mode of the MPU during hard fault, 
 423:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *          NMI, FAULTMASK and privileged accessto the default memory 
 424:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *          This parameter can be one of the following values:
 425:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *            @arg MPU_HFNMI_PRIVDEF_NONE
 426:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *            @arg MPU_HARDFAULT_NMI
 427:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *            @arg MPU_PRIVILEGED_DEFAULT
 428:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *            @arg MPU_HFNMI_PRIVDEF
 429:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 430:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 431:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_MPU_Enable(uint32_t MPU_Control)
 432:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 1041              		.loc 1 432 1 is_stmt 1 view -0
 1042              		.cfi_startproc
 1043              		@ args = 0, pretend = 0, frame = 0
 1044              		@ frame_needed = 0, uses_anonymous_args = 0
 1045              		@ link register save eliminated.
 433:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Enable the MPU */
 434:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   MPU->CTRL = (MPU_Control | MPU_CTRL_ENABLE_Msk);
 1046              		.loc 1 434 3 view .LVU278
 1047              		.loc 1 434 13 is_stmt 0 view .LVU279
 1048 0000 044B     		ldr	r3, .L66
 1049              		.loc 1 434 28 view .LVU280
 1050 0002 40F00100 		orr	r0, r0, #1
 1051              	.LVL56:
 1052              		.loc 1 434 13 view .LVU281
 1053 0006 5860     		str	r0, [r3, #4]
 435:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 436:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Ensure MPU setting take effects */
 437:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   __DSB();
 1054              		.loc 1 437 3 is_stmt 1 view .LVU282
 1055              	.LBB120:
 1056              	.LBI120:
 877:../../..\CubeG4\include/cmsis_gcc.h **** {
 1057              		.loc 3 877 27 view .LVU283
 1058              	.LBB121:
 1059              		.loc 3 879 3 view .LVU284
 1060              		.syntax unified
 1061              	@ 879 "../../..\CubeG4\include/cmsis_gcc.h" 1
 1062 0008 BFF34F8F 		dsb 0xF
 1063              	@ 0 "" 2
 1064              		.thumb
 1065              		.syntax unified
 1066              	.LBE121:
 1067              	.LBE120:
 438:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   __ISB();
 1068              		.loc 1 438 3 view .LVU285
 1069              	.LBB122:
 1070              	.LBI122:
 866:../../..\CubeG4\include/cmsis_gcc.h **** {
 1071              		.loc 3 866 27 view .LVU286
 1072              	.LBB123:
 868:../../..\CubeG4\include/cmsis_gcc.h **** }
 1073              		.loc 3 868 3 view .LVU287
 1074              		.syntax unified
 1075              	@ 868 "../../..\CubeG4\include/cmsis_gcc.h" 1
 1076 000c BFF36F8F 		isb 0xF
 1077              	@ 0 "" 2
 1078              		.thumb
 1079              		.syntax unified
 1080              	.LBE123:
 1081              	.LBE122:
 439:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 1082              		.loc 1 439 1 is_stmt 0 view .LVU288
 1083 0010 7047     		bx	lr
 1084              	.L67:
 1085 0012 00BF     		.align	2
 1086              	.L66:
 1087 0014 90ED00E0 		.word	-536810096
 1088              		.cfi_endproc
 1089              	.LFE340:
 1091              		.section	.text.HAL_MPU_Disable,"ax",%progbits
 1092              		.align	1
 1093              		.global	HAL_MPU_Disable
 1094              		.syntax unified
 1095              		.thumb
 1096              		.thumb_func
 1097              		.fpu fpv4-sp-d16
 1099              	HAL_MPU_Disable:
 1100              	.LFB341:
 440:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 441:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 442:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 443:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Disable the MPU.
 444:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 445:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 446:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_MPU_Disable(void)
 447:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 1101              		.loc 1 447 1 is_stmt 1 view -0
 1102              		.cfi_startproc
 1103              		@ args = 0, pretend = 0, frame = 0
 1104              		@ frame_needed = 0, uses_anonymous_args = 0
 1105              		@ link register save eliminated.
 448:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Make sure outstanding transfers are done */
 449:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   __DMB();
 1106              		.loc 1 449 3 view .LVU290
 1107              	.LBB124:
 1108              	.LBI124:
 880:../../..\CubeG4\include/cmsis_gcc.h **** }
 881:../../..\CubeG4\include/cmsis_gcc.h **** 
 882:../../..\CubeG4\include/cmsis_gcc.h **** 
 883:../../..\CubeG4\include/cmsis_gcc.h **** /**
 884:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Data Memory Barrier
 885:../../..\CubeG4\include/cmsis_gcc.h ****   \details Ensures the apparent order of the explicit memory operations before
 886:../../..\CubeG4\include/cmsis_gcc.h ****            and after the instruction, without ensuring their completion.
 887:../../..\CubeG4\include/cmsis_gcc.h ****  */
 888:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __DMB(void)
 1109              		.loc 3 888 27 view .LVU291
 1110              	.LBB125:
 889:../../..\CubeG4\include/cmsis_gcc.h **** {
 890:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("dmb 0xF":::"memory");
 1111              		.loc 3 890 3 view .LVU292
 1112              		.syntax unified
 1113              	@ 890 "../../..\CubeG4\include/cmsis_gcc.h" 1
 1114 0000 BFF35F8F 		dmb 0xF
 1115              	@ 0 "" 2
 1116              		.thumb
 1117              		.syntax unified
 1118              	.LBE125:
 1119              	.LBE124:
 450:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 451:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Disable the MPU and clear the control register*/
 452:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   MPU->CTRL  = 0;
 1120              		.loc 1 452 3 view .LVU293
 1121              		.loc 1 452 14 is_stmt 0 view .LVU294
 1122 0004 014B     		ldr	r3, .L69
 1123 0006 0022     		movs	r2, #0
 1124 0008 5A60     		str	r2, [r3, #4]
 453:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 1125              		.loc 1 453 1 view .LVU295
 1126 000a 7047     		bx	lr
 1127              	.L70:
 1128              		.align	2
 1129              	.L69:
 1130 000c 90ED00E0 		.word	-536810096
 1131              		.cfi_endproc
 1132              	.LFE341:
 1134              		.section	.text.HAL_MPU_ConfigRegion,"ax",%progbits
 1135              		.align	1
 1136              		.global	HAL_MPU_ConfigRegion
 1137              		.syntax unified
 1138              		.thumb
 1139              		.thumb_func
 1140              		.fpu fpv4-sp-d16
 1142              	HAL_MPU_ConfigRegion:
 1143              	.LVL57:
 1144              	.LFB342:
 454:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 455:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 456:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** /**
 457:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @brief  Initialize and configure the Region and the memory to be protected.
 458:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @param  MPU_Init: Pointer to a MPU_Region_InitTypeDef structure that contains
 459:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   *                the initialization and configuration information.
 460:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   * @retval None
 461:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   */
 462:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_Init)
 463:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** {
 1145              		.loc 1 463 1 is_stmt 1 view -0
 1146              		.cfi_startproc
 1147              		@ args = 0, pretend = 0, frame = 0
 1148              		@ frame_needed = 0, uses_anonymous_args = 0
 464:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 465:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_MPU_REGION_NUMBER(MPU_Init->Number));
 1149              		.loc 1 465 3 view .LVU297
 466:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   assert_param(IS_MPU_REGION_ENABLE(MPU_Init->Enable));
 1150              		.loc 1 466 3 view .LVU298
 467:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 468:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Set the Region number */
 469:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   MPU->RNR = MPU_Init->Number;
 1151              		.loc 1 469 3 view .LVU299
 1152              		.loc 1 469 12 is_stmt 0 view .LVU300
 1153 0000 124A     		ldr	r2, .L74
 1154              		.loc 1 469 22 view .LVU301
 1155 0002 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 463:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   /* Check the parameters */
 1156              		.loc 1 463 1 view .LVU302
 1157 0004 10B5     		push	{r4, lr}
 1158              		.cfi_def_cfa_offset 8
 1159              		.cfi_offset 4, -8
 1160              		.cfi_offset 14, -4
 1161              		.loc 1 469 12 view .LVU303
 1162 0006 9360     		str	r3, [r2, #8]
 470:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 471:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   if ((MPU_Init->Enable) != 0U)
 1163              		.loc 1 471 3 is_stmt 1 view .LVU304
 1164              		.loc 1 471 16 is_stmt 0 view .LVU305
 1165 0008 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 1166              		.loc 1 471 6 view .LVU306
 1167 000a D9B1     		cbz	r1, .L72
 472:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   {
 473:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     /* Check the parameters */
 474:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_INSTRUCTION_ACCESS(MPU_Init->DisableExec));
 1168              		.loc 1 474 5 is_stmt 1 view .LVU307
 475:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_REGION_PERMISSION_ATTRIBUTE(MPU_Init->AccessPermission));
 1169              		.loc 1 475 5 view .LVU308
 476:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_TEX_LEVEL(MPU_Init->TypeExtField));
 1170              		.loc 1 476 5 view .LVU309
 477:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_ACCESS_SHAREABLE(MPU_Init->IsShareable));
 1171              		.loc 1 477 5 view .LVU310
 478:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_ACCESS_CACHEABLE(MPU_Init->IsCacheable));
 1172              		.loc 1 478 5 view .LVU311
 479:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_ACCESS_BUFFERABLE(MPU_Init->IsBufferable));
 1173              		.loc 1 479 5 view .LVU312
 480:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_SUB_REGION_DISABLE(MPU_Init->SubRegionDisable));
 1174              		.loc 1 480 5 view .LVU313
 481:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     assert_param(IS_MPU_REGION_SIZE(MPU_Init->Size));
 1175              		.loc 1 481 5 view .LVU314
 482:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** 
 483:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RBAR = MPU_Init->BaseAddress;
 1176              		.loc 1 483 5 view .LVU315
 1177              		.loc 1 483 25 is_stmt 0 view .LVU316
 1178 000c 4368     		ldr	r3, [r0, #4]
 1179              		.loc 1 483 15 view .LVU317
 1180 000e D360     		str	r3, [r2, #12]
 484:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RASR = ((uint32_t)MPU_Init->DisableExec        << MPU_RASR_XN_Pos)   |
 1181              		.loc 1 484 5 is_stmt 1 view .LVU318
 485:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->AccessPermission   << MPU_RASR_AP_Pos)   |
 1182              		.loc 1 485 18 is_stmt 0 view .LVU319
 1183 0010 C37A     		ldrb	r3, [r0, #11]	@ zero_extendqisi2
 484:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RASR = ((uint32_t)MPU_Init->DisableExec        << MPU_RASR_XN_Pos)   |
 1184              		.loc 1 484 18 view .LVU320
 1185 0012 047B     		ldrb	r4, [r0, #12]	@ zero_extendqisi2
 1186              		.loc 1 485 57 view .LVU321
 1187 0014 1B06     		lsls	r3, r3, #24
 484:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RASR = ((uint32_t)MPU_Init->DisableExec        << MPU_RASR_XN_Pos)   |
 1188              		.loc 1 484 79 view .LVU322
 1189 0016 43EA0473 		orr	r3, r3, r4, lsl #28
 486:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->TypeExtField       << MPU_RASR_TEX_Pos)  |
 487:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsShareable        << MPU_RASR_S_Pos)    |
 488:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsCacheable        << MPU_RASR_C_Pos)    |
 489:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsBufferable       << MPU_RASR_B_Pos)    |
 490:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->SubRegionDisable   << MPU_RASR_SRD_Pos)  |
 491:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->Size               << MPU_RASR_SIZE_Pos) |
 1190              		.loc 1 491 79 view .LVU323
 1191 001a 0B43     		orrs	r3, r3, r1
 486:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->TypeExtField       << MPU_RASR_TEX_Pos)  |
 1192              		.loc 1 486 18 view .LVU324
 1193 001c 817A     		ldrb	r1, [r0, #10]	@ zero_extendqisi2
 1194              		.loc 1 491 79 view .LVU325
 1195 001e 43EAC143 		orr	r3, r3, r1, lsl #19
 487:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsCacheable        << MPU_RASR_C_Pos)    |
 1196              		.loc 1 487 18 view .LVU326
 1197 0022 417B     		ldrb	r1, [r0, #13]	@ zero_extendqisi2
 1198              		.loc 1 491 79 view .LVU327
 1199 0024 43EA8143 		orr	r3, r3, r1, lsl #18
 488:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->IsBufferable       << MPU_RASR_B_Pos)    |
 1200              		.loc 1 488 18 view .LVU328
 1201 0028 817B     		ldrb	r1, [r0, #14]	@ zero_extendqisi2
 1202              		.loc 1 491 79 view .LVU329
 1203 002a 43EA4143 		orr	r3, r3, r1, lsl #17
 489:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->SubRegionDisable   << MPU_RASR_SRD_Pos)  |
 1204              		.loc 1 489 18 view .LVU330
 1205 002e C17B     		ldrb	r1, [r0, #15]	@ zero_extendqisi2
 1206              		.loc 1 491 79 view .LVU331
 1207 0030 43EA0143 		orr	r3, r3, r1, lsl #16
 490:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->Size               << MPU_RASR_SIZE_Pos) |
 1208              		.loc 1 490 18 view .LVU332
 1209 0034 417A     		ldrb	r1, [r0, #9]	@ zero_extendqisi2
 1210              		.loc 1 491 79 view .LVU333
 1211 0036 43EA0123 		orr	r3, r3, r1, lsl #8
 1212              		.loc 1 491 18 view .LVU334
 1213 003a 017A     		ldrb	r1, [r0, #8]	@ zero_extendqisi2
 1214              		.loc 1 491 79 view .LVU335
 1215 003c 43EA4103 		orr	r3, r3, r1, lsl #1
 484:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->AccessPermission   << MPU_RASR_AP_Pos)   |
 1216              		.loc 1 484 15 view .LVU336
 1217 0040 1361     		str	r3, [r2, #16]
 1218              	.L71:
 492:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****                 ((uint32_t)MPU_Init->Enable             << MPU_RASR_ENABLE_Pos);
 493:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   }
 494:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   else
 495:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   {
 496:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RBAR = 0x00;
 497:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RASR = 0x00;
 498:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   }
 499:../../..\CubeG4\src/stm32g4xx_hal_cortex.c **** }
 1219              		.loc 1 499 1 view .LVU337
 1220 0042 10BD     		pop	{r4, pc}
 1221              	.L72:
 496:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RASR = 0x00;
 1222              		.loc 1 496 5 is_stmt 1 view .LVU338
 496:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****     MPU->RASR = 0x00;
 1223              		.loc 1 496 15 is_stmt 0 view .LVU339
 1224 0044 D160     		str	r1, [r2, #12]
 497:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   }
 1225              		.loc 1 497 5 is_stmt 1 view .LVU340
 497:../../..\CubeG4\src/stm32g4xx_hal_cortex.c ****   }
 1226              		.loc 1 497 15 is_stmt 0 view .LVU341
 1227 0046 1161     		str	r1, [r2, #16]
 1228              		.loc 1 499 1 view .LVU342
 1229 0048 FBE7     		b	.L71
 1230              	.L75:
 1231 004a 00BF     		.align	2
 1232              	.L74:
 1233 004c 90ED00E0 		.word	-536810096
 1234              		.cfi_endproc
 1235              	.LFE342:
 1237              		.text
 1238              	.Letext0:
 1239              		.file 4 "../../..\\CubeG4\\include/stm32g431xx.h"
 1240              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1241              		.file 6 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1242              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 1243              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 1244              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_cortex.h"
 1245              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 1246              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
