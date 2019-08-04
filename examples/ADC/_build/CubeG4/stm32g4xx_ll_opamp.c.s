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
  13              		.file	"stm32g4xx_ll_opamp.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_OPAMP_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_OPAMP_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_OPAMP_DeInit:
  27              	.LVL0:
  28              	.LFB164:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_opamp.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @file    stm32g4xx_ll_opamp.c
   4:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @brief   OPAMP LL module driver
   6:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #include "stm32g4xx_ll_opamp.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  24:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #ifdef  USE_FULL_ASSERT
  25:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #include "stm32_assert.h"
  26:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #else
  27:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #define assert_param(expr) ((void)0U)
  28:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #endif
  29:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  30:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /** @addtogroup STM32G4xx_LL_Driver
  31:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @{
  32:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
  33:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  34:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #if defined (OPAMP1) || defined (OPAMP2) || defined (OPAMP3) || defined (OPAMP4) || defined (OPAMP5
  35:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /** @addtogroup OPAMP_LL OPAMP
  37:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @{
  38:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
  39:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  40:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Private types -------------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Private variables ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Private constants ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Private macros ------------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  45:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /** @addtogroup OPAMP_LL_Private_Macros
  46:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @{
  47:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
  48:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  49:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Check of parameters for configuration of OPAMP hierarchical scope:         */
  50:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* OPAMP instance.                                                            */
  51:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  52:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #define IS_LL_OPAMP_POWER_MODE(__POWER_MODE__)                                 \
  53:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   (   ((__POWER_MODE__) == LL_OPAMP_POWERMODE_NORMAL)                          \
  54:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__POWER_MODE__) == LL_OPAMP_POWERMODE_HIGHSPEED))
  55:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  56:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #define IS_LL_OPAMP_FUNCTIONAL_MODE(__FUNCTIONAL_MODE__)                       \
  57:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   (   ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_STANDALONE)                      \
  58:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_FOLLOWER)                        \
  59:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_PGA)                             \
  60:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_PGA_IO0)                         \
  61:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_PGA_IO0_BIAS)                    \
  62:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_PGA_IO0_IO1_BIAS)                \
  63:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   )
  64:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  65:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #define IS_LL_OPAMP_INPUT_NONINVERTING(__INPUT_NONINVERTING__)                 \
  66:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   (   ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO0)               \
  67:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO1)               \
  68:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO2)               \
  69:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO3)               \
  70:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_DAC)               \
  71:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   )
  72:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  73:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** #define IS_LL_OPAMP_INPUT_INVERTING(__INPUT_INVERTING__)                       \
  74:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   (   ((__INPUT_INVERTING__) == LL_OPAMP_INPUT_INVERT_IO0)                     \
  75:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__INPUT_INVERTING__) == LL_OPAMP_INPUT_INVERT_IO1)                     \
  76:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****    || ((__INPUT_INVERTING__) == LL_OPAMP_INPUT_INVERT_CONNECT_NO)              \
  77:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   )
  78:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  79:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /**
  80:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @}
  81:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
  82:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  83:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  84:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Private function prototypes -----------------------------------------------*/
  85:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  86:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /* Exported functions --------------------------------------------------------*/
  87:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /** @addtogroup OPAMP_LL_Exported_Functions
  88:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @{
  89:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
  90:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  91:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /** @addtogroup OPAMP_LL_EF_Init
  92:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @{
  93:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
  94:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
  95:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /**
  96:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @brief  De-initialize registers of the selected OPAMP instance
  97:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *         to their default reset values.
  98:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @note   If comparator is locked, de-initialization by software is
  99:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *         not possible.
 100:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *         The only way to unlock the comparator is a device hardware reset.
 101:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @param  OPAMPx OPAMP instance
 102:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @retval An ErrorStatus enumeration value:
 103:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *          - SUCCESS: OPAMP registers are de-initialized
 104:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *          - ERROR: OPAMP registers are not de-initialized
 105:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
 106:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** ErrorStatus LL_OPAMP_DeInit(OPAMP_TypeDef *OPAMPx)
 107:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** {
  30              		.loc 1 107 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 108:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   ErrorStatus status = SUCCESS;
  35              		.loc 1 108 3 view .LVU1
 109:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 110:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Check the parameters */
 111:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   assert_param(IS_OPAMP_ALL_INSTANCE(OPAMPx));
  36              		.loc 1 111 3 view .LVU2
 112:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 113:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Note: Hardware constraint (refer to description of this function):       */
 114:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /*       OPAMP instance must not be locked.                                 */
 115:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   if (LL_OPAMP_IsLocked(OPAMPx) == 0UL)
  37              		.loc 1 115 3 view .LVU3
  38              	.LBB8:
  39              	.LBI8:
  40              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_opamp.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @file    stm32g4xx_ll_opamp.h
   4:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief   Header file of OPAMP LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #ifndef STM32G4xx_LL_OPAMP_H
  22:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define STM32G4xx_LL_OPAMP_H
  23:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #if defined (OPAMP1) || defined (OPAMP2) || defined (OPAMP3) || defined (OPAMP4) || defined (OPAMP5
  36:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL OPAMP
  38:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  44:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Private constants ---------------------------------------------------------*/
  45:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_Private_Constants OPAMP Private Constants
  46:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
  47:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  48:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  49:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Internal mask for OPAMP trimming of transistors differential pair NMOS     */
  50:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* or PMOS.                                                                   */
  51:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* To select into literal LL_OPAMP_TRIMMING_x the relevant bits for:          */
  52:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* - OPAMP trimming selection of transistors differential pair                */
  53:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* - OPAMP trimming values of transistors differential pair                   */
  54:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define OPAMP_TRIMMING_SELECT_MASK          (OPAMP_CSR_CALSEL)
  55:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define OPAMP_TRIMMING_VALUE_MASK           (OPAMP_CSR_TRIMOFFSETN | OPAMP_CSR_TRIMOFFSETP)
  56:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  57:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
  58:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
  59:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  60:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  61:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Private macros ------------------------------------------------------------*/
  63:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_Private_Macros OPAMP Private Macros
  64:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
  65:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  66:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  67:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
  68:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Driver macro reserved for internal use: set a pointer to
  69:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         a register from a register basis from which an offset
  70:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         is applied.
  71:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  __REG__ Register basis from which the offset is applied.
  72:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  __REG_OFFSET__ Offset to be applied (unit: number of registers).
  73:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Register address
  74:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  75:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define __OPAMP_PTR_REG_OFFSET(__REG__, __REG_OFFSET__)                        \
  76:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   ((__IO uint32_t *)((uint32_t) ((uint32_t)(&(__REG__)) + ((__REG_OFFSET__) << 2))))
  77:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  78:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  79:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  80:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  81:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
  82:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
  83:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  84:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  85:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  86:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Exported types ------------------------------------------------------------*/
  87:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #if defined(USE_FULL_LL_DRIVER)
  88:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_ES_INIT OPAMP Exported Init structure
  89:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
  90:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  91:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
  92:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
  93:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Structure definition of some features of OPAMP instance.
  94:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
  95:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** typedef struct
  96:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
  97:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   uint32_t PowerMode;                   /*!< Set OPAMP power mode.
  98:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This parameter can be a value of @ref OPAMP_LL_EC_POWE
  99:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This feature can be modified afterwards using unitary 
 101:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 102:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 103:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   uint32_t FunctionalMode;              /*!< Set OPAMP functional mode by setting internal connecti
 104:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This parameter can be a value of @ref OPAMP_LL_EC_FUNC
 105:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              @note If OPAMP is configured in mode PGA, the gain can
 106:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 107:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This feature can be modified afterwards using unitary 
 108:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   uint32_t InputNonInverting;           /*!< Set OPAMP input non-inverting connection.
 110:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This parameter can be a value of @ref OPAMP_LL_EC_INPU
 111:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 112:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This feature can be modified afterwards using unitary 
 113:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 114:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   uint32_t InputInverting;              /*!< Set OPAMP inverting input connection.
 115:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This parameter can be a value of @ref OPAMP_LL_EC_INPU
 116:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              @note OPAMP inverting input is used with OPAMP in mode
 117:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 118:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                              This feature can be modified afterwards using unitary 
 119:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** } LL_OPAMP_InitTypeDef;
 121:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 122:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 123:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 124:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 125:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #endif /* USE_FULL_LL_DRIVER */
 126:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 127:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Exported constants --------------------------------------------------------*/
 128:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_Exported_Constants OPAMP Exported Constants
 129:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 130:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 131:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 132:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_MODE OPAMP mode calibration or functional.
 133:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 134:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 135:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_FUNCTIONAL        (0x00000000UL)                              /*!< OPAMP func
 136:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_CALIBRATION       (OPAMP_CSR_CALON)                           /*!< OPAMP cali
 137:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 138:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 139:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 140:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 141:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_FUNCTIONAL_MODE OPAMP functional mode
 142:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 143:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 144:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_STANDALONE        (0x00000000UL)                                             
 145:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_FOLLOWER          (OPAMP_CSR_VMSEL_1 | OPAMP_CSR_VMSEL_0)                    
 146:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_PGA               (OPAMP_CSR_VMSEL_1)                                        
 147:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_PGA_IO0           (OPAMP_CSR_PGGAIN_4|OPAMP_CSR_VMSEL_1)                     
 148:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_PGA_IO0_BIAS      (OPAMP_CSR_PGGAIN_3|OPAMP_CSR_VMSEL_1)                     
 149:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                                                    
 150:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                                                    
 151:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_MODE_PGA_IO0_IO1_BIAS  (OPAMP_CSR_PGGAIN_4|OPAMP_CSR_PGGAIN_3|OPAMP_CSR_VMSEL_1)  
 152:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                                                    
 153:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                                                    
 154:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                                                    
 155:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 156:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 157:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 158:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 159:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 160:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_MODE_PGA_GAIN OPAMP PGA gain (relevant when OPAMP is in functional mode P
 161:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note Gain sign:
 162:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         - is positive if the @ref OPAMP_LL_EC_FUNCTIONAL_MODE configuration is
 163:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *           @ref LL_OPAMP_MODE_PGA or LL_OPAMP_MODE_PGA_IO0
 164:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         - may be positive or negative if the @ref OPAMP_LL_EC_FUNCTIONAL_MODE configuration is
 165:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *           @ref LL_OPAMP_MODE_PGA_IO0_BIAS or LL_OPAMP_MODE_PGA_IO0_IO1_BIAS
 166:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *       see @ref OPAMP_LL_EC_FUNCTIONAL_MODE for more details
 167:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 168:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 169:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_PGA_GAIN_2_OR_MINUS_1             (0x00000000UL)                                  
 170:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_PGA_GAIN_4_OR_MINUS_3             (                                          OPAMP
 171:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_PGA_GAIN_8_OR_MINUS_7             (                     OPAMP_CSR_PGGAIN_1        
 172:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_PGA_GAIN_16_OR_MINUS_15           (                     OPAMP_CSR_PGGAIN_1 | OPAMP
 173:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_PGA_GAIN_32_OR_MINUS_31           (OPAMP_CSR_PGGAIN_2                             
 174:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_PGA_GAIN_64_OR_MINUS_63           (OPAMP_CSR_PGGAIN_2 |                      OPAMP
 175:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 176:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 177:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 178:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 179:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_INPUT_NONINVERTING OPAMP input non-inverting
 180:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 181:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 182:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO0         (0x00000000UL)        /*!< OPAMP non inverting input c
 183:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         (PA1  for OPAMP1, PA7  for 
 184:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         Note: On this STM32 serie, 
 185:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO1         OPAMP_CSR_VPSEL_0     /*!< OPAMP non inverting input c
 186:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         (PA3  for OPAMP1, PB14 for 
 187:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         Note: On this STM32 serie, 
 188:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO2         OPAMP_CSR_VPSEL_1     /*!< OPAMP non inverting input c
 189:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         (PA7  for OPAMP1, PB0  for 
 190:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         Note: On this STM32 serie, 
 191:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO3         OPAMP_CSR_VPSEL       /*!< OPAMP non inverting input c
 192:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         (PD14 for OPAMP2) */
 193:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_DAC         OPAMP_CSR_VPSEL       /*!< OPAMP non inverting input c
 194:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         (DAC3_CH1 for OPAMP1, DAC3_
 195:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         Note: On this STM32 serie, 
 196:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 197:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 198:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 199:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 200:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_INPUT_INVERTING OPAMP input inverting
 201:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note OPAMP inverting input is used with OPAMP in mode standalone or PGA with negative gain or 
 202:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *       Otherwise (OPAMP in mode follower), OPAMP inverting input is not used (not connected to G
 203:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 204:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 205:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_INVERT_IO0         (0x00000000UL)           /*!< OPAMP inverting input conne
 206:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         (PA3  for OPAMP1, PA5  for 
 207:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         Note: On this STM32 serie, 
 208:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_INVERT_IO1         OPAMP_CSR_VMSEL_0        /*!< OPAMP inverting input conne
 209:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         (PC5  for OPAMP1, PC5  for 
 210:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         Note: On this STM32 serie, 
 211:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_INVERT_CONNECT_NO  OPAMP_CSR_VMSEL_1        /*!< OPAMP inverting input not e
 212:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                         Note: On this STM32 serie, 
 213:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 214:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 215:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 216:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 217:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_INPUT_NONINVERTING_SECONDARY OPAMP input non-inverting secondary
 218:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 219:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 220:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO0_SEC         (0x00000000UL)       /*!< OPAMP secondary non inve
 221:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (PA1  for OPAMP1, PA7  f
 222:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            Note: On this STM32 seri
 223:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO1_SEC         OPAMP_TCMR_VPSSEL_0  /*!< OPAMP secondary non inve
 224:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (PA3  for OPAMP1, PB14 f
 225:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            Note: On this STM32 seri
 226:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO2_SEC         OPAMP_TCMR_VPSSEL_1  /*!< OPAMP secondary non inve
 227:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (PA7  for OPAMP1, PB0  f
 228:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            Note: On this STM32 seri
 229:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_IO3_SEC         OPAMP_TCMR_VPSSEL    /*!< OPAMP secondary non inve
 230:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (PD14 for OPAMP2) */
 231:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_NONINVERT_DAC_SEC         OPAMP_TCMR_VPSSEL    /*!< OPAMP secondary non inve
 232:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (DAC3_CH1 for OPAMP1, DA
 233:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            Note: On this STM32 seri
 234:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 235:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 236:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 237:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 238:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_INPUT_INVERTING_SECONDARY OPAMP input inverting secondary
 239:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note OPAMP inverting input is used with OPAMP in mode standalone or PGA with negative gain or 
 240:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *       Otherwise (OPAMP in mode follower), OPAMP inverting input is not used (not connected to G
 241:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 242:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 243:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_INVERT_IO0_SEC         (0x00000000UL)          /*!< OPAMP secondary mode is 
 244:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            has been configured by c
 245:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            OPAMP secondary invertin
 246:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (PA3  for OPAMP1, PA5  f
 247:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            Note: On this STM32 seri
 248:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_INVERT_IO1_SEC         OPAMP_TCMR_VMSSEL       /*!< OPAMP secondary mode is 
 249:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            has been configured by c
 250:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            OPAMP secondary invertin
 251:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (PC5  for OPAMP1, PC5  f
 252:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            Note: On this STM32 seri
 253:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_INVERT_PGA_SEC         (0x00000000UL)          /*!< OPAMP secondary mode is 
 254:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            or @ref LL_OPAMP_SetFunc
 255:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            OPAMP secondary invertin
 256:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - Not connected if con
 257:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - Connected to VINM0 a
 258:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            (see @ref OPAMP_LL_EC_FU
 259:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_INVERT_FOLLOWER_SEC    OPAMP_TCMR_VMSSEL       /*!< OPAMP secondary mode is 
 260:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            or @ref LL_OPAMP_SetFunc
 261:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            OPAMP secondary invertin
 262:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 263:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 264:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 265:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 266:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_INTERNAL_OUPUT_MODE OPAMP internal output mode
 267:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 268:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 269:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INTERNAL_OUPUT_DISABLED       (0x00000000UL)         /*!< OPAMP internal output to
 270:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INTERNAL_OUPUT_ENABLED        OPAMP_CSR_OPAMPINTEN   /*!< OPAMP internal output to
 271:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - OPAMP1 internal outp
 272:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - OPAMP2 internal outp
 273:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - OPAMP3 internal outp
 274:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - OPAMP4 internal outp
 275:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - OPAMP5 internal outp
 276:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                              - OPAMP6 internal outp
 277:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                            Note: On this STM32 seri
 278:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 279:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 280:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 281:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 282:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_INPUT_MUX_MODE OPAMP inputs multiplexer mode
 283:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note The switch can be controlled either by a single timer or a combination of them,
 284:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *       in this case application has to 'ORed' the values below
 285:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *       ex LL_OPAMP_INPUT_MUX_TIM1_CH6 | LL_OPAMP_INPUT_MUX_TIM20_CH6
 286:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 287:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 288:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_MUX_DISABLE       (0x00000000UL)         /*!< OPAMP inputs timer controlled 
 289:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_MUX_TIM1_CH6      OPAMP_TCMR_T1CMEN      /*!< OPAMP inputs timer controlled 
 290:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_MUX_TIM8_CH6      OPAMP_TCMR_T8CMEN      /*!< OPAMP inputs timer controlled 
 291:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_INPUT_MUX_TIM20_CH6     OPAMP_TCMR_T20CMEN     /*!< OPAMP inputs timer controlled 
 292:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                                      Note: On this STM32 serie, TIM
 293:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 294:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 295:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 296:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 297:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_POWER_MODE OPAMP PowerMode
 298:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 299:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 300:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_POWERMODE_NORMAL        (0x00000000UL)         /*!< OPAMP output in normal mode */
 301:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_POWERMODE_HIGHSPEED     OPAMP_CSR_HIGHSPEEDEN  /*!< OPAMP output in highspeed mode
 302:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 303:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 304:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 305:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 306:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_TRIMMING_MODE OPAMP trimming mode
 307:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 308:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 309:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_FACTORY       (0x00000000UL)           /*!< OPAMP trimming factors set to
 310:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_USER          OPAMP_CSR_USERTRIM      /*!< OPAMP trimming factors set to 
 311:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 312:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 313:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 314:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 315:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_TRIMMING_TRANSISTORS_DIFF_PAIR OPAMP trimming of transistors differential
 316:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 317:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 318:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_NMOS_VREF_90PC_VDDA  (OPAMP_CSR_TRIMOFFSETN | OPAMP_CSR_CALSEL_1 | OPAMP_
 319:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_NMOS_VREF_50PC_VDDA  (OPAMP_CSR_TRIMOFFSETN | OPAMP_CSR_CALSEL_1         
 320:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_PMOS_VREF_10PC_VDDA  (OPAMP_CSR_TRIMOFFSETP                      | OPAMP_
 321:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_PMOS_VREF_3_3PC_VDDA (OPAMP_CSR_TRIMOFFSETP                              
 322:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_NMOS          (LL_OPAMP_TRIMMING_NMOS_VREF_90PC_VDDA) /*!< OPAMP trimming
 323:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_TRIMMING_PMOS          (LL_OPAMP_TRIMMING_PMOS_VREF_10PC_VDDA) /*!< OPAMP trimming
 324:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 325:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 326:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 327:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 328:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EC_HW_DELAYS  Definitions of OPAMP hardware constraints delays
 329:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Only OPAMP IP HW delays are defined in OPAMP LL driver driver,
 330:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         not timeout values.
 331:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         For details on delays values, refer to descriptions in source code
 332:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         above each literal definition.
 333:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 334:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 335:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 336:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Delay for OPAMP startup time (transition from state disable to enable).    */
 337:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Note: OPAMP startup time depends on board application environment:         */
 338:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /*       impedance connected to OPAMP output.                                 */
 339:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /*       The delay below is specified under conditions:                       */
 340:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /*        - OPAMP in functional mode follower                                 */
 341:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /*        - load impedance of 4kOhm (min), 50pF (max)                         */
 342:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Literal set to maximum value (refer to device datasheet,                   */
 343:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* parameter "tWAKEUP").                                                      */
 344:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Unit: us                                                                   */
 345:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_DELAY_STARTUP_US         (6)  /*!< Delay for OPAMP startup time */
 346:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 347:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 348:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 349:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 350:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 351:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 352:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 353:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 354:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Exported macro ------------------------------------------------------------*/
 355:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_Exported_Macros OPAMP Exported Macros
 356:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 357:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 358:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EM_WRITE_READ Common write and read registers macro
 359:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 360:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 361:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 362:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Write a value in OPAMP register
 363:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  __INSTANCE__ OPAMP Instance
 364:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  __REG__ Register to be written
 365:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  __VALUE__ Value to be written in the register
 366:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 367:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 368:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG((__INSTANCE__)->__REG__, (__V
 369:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 370:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 371:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Read a value in OPAMP register
 372:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  __INSTANCE__ OPAMP Instance
 373:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  __REG__ Register to be read
 374:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Register value
 375:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 376:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** #define LL_OPAMP_ReadReg(__INSTANCE__, __REG__) READ_REG((__INSTANCE__)->__REG__)
 377:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 378:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 379:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 380:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 381:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 382:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 383:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 384:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 385:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /* Exported functions --------------------------------------------------------*/
 386:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_Exported_Functions OPAMP Exported Functions
 387:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 388:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 389:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 390:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EF_CONFIGURATION_OPAMP_INSTANCE Configuration of OPAMP hierarchical scope: O
 391:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 392:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 393:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 394:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 395:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP mode calibration or functional.
 396:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   OPAMP mode corresponds to functional or calibration mode:
 397:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *          - functional mode: OPAMP operation in standalone, follower, ...
 398:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *            Set functional mode using function
 399:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *            @ref LL_OPAMP_SetFunctionalMode().
 400:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *          - calibration mode: offset calibration of the selected
 401:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *            transistors differential pair NMOS or PMOS.
 402:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      CALON          LL_OPAMP_SetMode
 403:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 404:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  Mode This parameter can be one of the following values:
 405:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_FUNCTIONAL
 406:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_CALIBRATION
 407:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 408:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 409:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetMode(OPAMP_TypeDef *OPAMPx, uint32_t Mode)
 410:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 411:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_CALON, Mode);
 412:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 413:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 414:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 415:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP mode calibration or functional.
 416:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   OPAMP mode corresponds to functional or calibration mode:
 417:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *          - functional mode: OPAMP operation in standalone, follower, ...
 418:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *            Set functional mode using function
 419:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *            @ref LL_OPAMP_SetFunctionalMode().
 420:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *          - calibration mode: offset calibration of the selected
 421:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *            transistors differential pair NMOS or PMOS.
 422:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      CALON          LL_OPAMP_GetMode
 423:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 424:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 425:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_FUNCTIONAL
 426:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_CALIBRATION
 427:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 428:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetMode(OPAMP_TypeDef *OPAMPx)
 429:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 430:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->CSR, OPAMP_CSR_CALON));
 431:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 432:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 433:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 434:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP functional mode by setting internal connections.
 435:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         OPAMP operation in standalone, follower, ...
 436:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   This function reset bit of calibration mode to ensure
 437:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         to be in functional mode, in order to have OPAMP parameters
 438:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         (inputs selection, ...) set with the corresponding OPAMP mode
 439:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         to be effective.
 440:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      VMSEL          LL_OPAMP_SetFunctionalMode
 441:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 442:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  FunctionalMode This parameter can be one of the following values:
 443:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_STANDALONE
 444:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_FOLLOWER
 445:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA
 446:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA_IO0
 447:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA_IO0_BIAS
 448:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA_IO0_IO1_BIAS
 449:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 450:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 451:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetFunctionalMode(OPAMP_TypeDef *OPAMPx, uint32_t FunctionalMode)
 452:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 453:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* Note: Bit OPAMP_CSR_CALON reset to ensure to be in functional mode */
 454:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_PGGAIN_4 | OPAMP_CSR_PGGAIN_3 | OPAMP_CSR_VMSEL | OPAMP_CSR_CAL
 455:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 456:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 457:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 458:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP functional mode from setting of internal connections.
 459:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         OPAMP operation in standalone, follower, ...
 460:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      VMSEL          LL_OPAMP_GetFunctionalMode
 461:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 462:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 463:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_STANDALONE
 464:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_FOLLOWER
 465:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA
 466:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA_IO0
 467:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA_IO0_BIAS
 468:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_MODE_PGA_IO0_IO1_BIAS
 469:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 470:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetFunctionalMode(OPAMP_TypeDef *OPAMPx)
 471:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 472:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->CSR, OPAMP_CSR_PGGAIN_4 | OPAMP_CSR_PGGAIN_3 | OPAMP_CSR_VMSEL
 473:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 474:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 475:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 476:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP PGA gain.
 477:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Preliminarily, OPAMP must be set in mode PGA
 478:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         using function @ref LL_OPAMP_SetFunctionalMode().
 479:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      PGGAIN         LL_OPAMP_SetPGAGain
 480:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 481:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  PGAGain This parameter can be one of the following values:
 482:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_2_OR_MINUS_1
 483:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_4_OR_MINUS_3
 484:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_8_OR_MINUS_7
 485:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_16_OR_MINUS_15
 486:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_32_OR_MINUS_31
 487:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_64_OR_MINUS_63
 488:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 489:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 490:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetPGAGain(OPAMP_TypeDef *OPAMPx, uint32_t PGAGain)
 491:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 492:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_PGGAIN_2 | OPAMP_CSR_PGGAIN_1 | OPAMP_CSR_PGGAIN_0, PGAGain);
 493:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 494:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 495:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 496:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP PGA gain.
 497:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Preliminarily, OPAMP must be set in mode PGA
 498:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         using function @ref LL_OPAMP_SetFunctionalMode().
 499:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      PGGAIN         LL_OPAMP_GetPGAGain
 500:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 501:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 502:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_2_OR_MINUS_1
 503:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_4_OR_MINUS_3
 504:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_8_OR_MINUS_7
 505:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_16_OR_MINUS_15
 506:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_32_OR_MINUS_31
 507:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_PGA_GAIN_64_OR_MINUS_63
 508:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 509:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetPGAGain(OPAMP_TypeDef *OPAMPx)
 510:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 511:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->CSR, OPAMP_CSR_PGGAIN_2 | OPAMP_CSR_PGGAIN_1 | OPAMP_CSR_PGGAI
 512:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 513:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 514:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 515:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP power mode normal or highspeed.
 516:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   OPAMP highspeed mode allows output stage to have a better slew rate.
 517:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      HIGHSPEEDEN     LL_OPAMP_SetPowerMode
 518:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 519:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  PowerMode This parameter can be one of the following values:
 520:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_POWERMODE_NORMAL
 521:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_POWERMODE_HIGHSPEED
 522:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 523:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 524:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetPowerMode(OPAMP_TypeDef *OPAMPx, uint32_t PowerMode)
 525:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 526:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_HIGHSPEEDEN, PowerMode);
 527:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 528:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 529:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 530:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP power mode normal or highspeed.
 531:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   OPAMP highspeed mode allows output stage to have a better slew rate.
 532:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      HIGHSPEEDEN     LL_OPAMP_GetPowerMode
 533:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 534:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 535:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_POWERMODE_NORMAL
 536:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_POWERMODE_HIGHSPEED
 537:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 538:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetPowerMode(OPAMP_TypeDef *OPAMPx)
 539:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 540:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->CSR, OPAMP_CSR_HIGHSPEEDEN));
 541:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 542:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 543:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 544:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 545:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 546:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EF_CONFIGURATION_INPUTS Configuration of OPAMP inputs
 547:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 548:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 549:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 550:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 551:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP non-inverting input connection.
 552:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      VPSEL          LL_OPAMP_SetInputNonInverting
 553:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 554:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  InputNonInverting This parameter can be one of the following values:
 555:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO0
 556:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO1
 557:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO2
 558:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO3
 559:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_DAC
 560:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 561:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 562:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetInputNonInverting(OPAMP_TypeDef *OPAMPx, uint32_t InputNonInvertin
 563:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 564:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_VPSEL, InputNonInverting);
 565:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 566:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 567:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 568:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP non-inverting input connection.
 569:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      VPSEL          LL_OPAMP_GetInputNonInverting
 570:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 571:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 572:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO0
 573:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO1
 574:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO2
 575:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO3
 576:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_DAC
 577:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 578:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetInputNonInverting(OPAMP_TypeDef *OPAMPx)
 579:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 580:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->CSR, OPAMP_CSR_VPSEL));
 581:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 582:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 583:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 584:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP inverting input connection.
 585:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   OPAMP inverting input is used with OPAMP in mode standalone
 586:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         or PGA with external capacitors for filtering circuit.
 587:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         Otherwise (OPAMP in mode follower), OPAMP inverting input
 588:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         is not used (not connected to GPIO pin).
 589:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      VMSEL          LL_OPAMP_SetInputInverting
 590:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 591:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  InputInverting This parameter can be one of the following values:
 592:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO0
 593:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO1
 594:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_CONNECT_NO
 595:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 596:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 597:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetInputInverting(OPAMP_TypeDef *OPAMPx, uint32_t InputInverting)
 598:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 599:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* Manage cases of OPAMP inverting input not connected (0x10 and 0x11)      */
 600:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* to not modify OPAMP mode follower or PGA.                                */
 601:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* Bit OPAMP_CSR_VMSEL_1 is set by OPAMP mode (follower, PGA). */
 602:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, (~(InputInverting >> 1)) & OPAMP_CSR_VMSEL_0, InputInverting);
 603:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 604:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 605:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 606:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP inverting input connection.
 607:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      VMSEL          LL_OPAMP_GetInputInverting
 608:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 609:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 610:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO0
 611:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO1
 612:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_CONNECT_NO
 613:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 614:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetInputInverting(OPAMP_TypeDef *OPAMPx)
 615:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 616:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   register uint32_t input_inverting = READ_BIT(OPAMPx->CSR, OPAMP_CSR_VMSEL);
 617:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 618:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* Manage cases 0x10 and 0x11 to return the same value: OPAMP inverting     */
 619:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* input not connected.                                                     */
 620:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (input_inverting & ~((input_inverting >> 1) & OPAMP_CSR_VMSEL_0));
 621:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 622:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 623:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 624:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP non-inverting input secondary connection.
 625:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     VPSSEL         LL_OPAMP_SetInputNonInvertingSecondary
 626:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 627:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  InputNonInverting This parameter can be one of the following values:
 628:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO0_SEC
 629:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO1_SEC
 630:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO2_SEC
 631:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO3_SEC
 632:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_DAC_SEC
 633:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 634:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 635:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetInputNonInvertingSecondary(OPAMP_TypeDef *OPAMPx, uint32_t InputNo
 636:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 637:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->TCMR, OPAMP_TCMR_VPSSEL, InputNonInverting);
 638:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 639:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 640:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 641:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP non-inverting input secondary connection.
 642:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     VPSSEL         LL_OPAMP_GetInputNonInvertingSecondary
 643:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 644:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 645:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO0_SEC
 646:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO1_SEC
 647:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO2_SEC
 648:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_IO3_SEC
 649:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_NONINVERT_DAC_SEC
 650:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 651:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetInputNonInvertingSecondary(OPAMP_TypeDef *OPAMPx)
 652:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 653:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->TCMR, OPAMP_TCMR_VPSSEL));
 654:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 655:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 656:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 657:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP inverting input secondary connection.
 658:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   OPAMP inverting input is used with OPAMP in mode standalone
 659:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         or PGA with external capacitors for filtering circuit.
 660:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         Otherwise (OPAMP in mode follower), OPAMP inverting input
 661:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         is not used (not connected to GPIO pin).
 662:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     VMSSEL         LL_OPAMP_SetInputInvertingSecondary
 663:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 664:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  InputInverting This parameter can be one of the following values:
 665:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO0_SEC
 666:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO1_SEC
 667:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_PGA_SEC
 668:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_FOLLOWER_SEC
 669:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 670:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 671:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetInputInvertingSecondary(OPAMP_TypeDef *OPAMPx, uint32_t InputInver
 672:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 673:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->TCMR, OPAMP_TCMR_VMSSEL, InputInverting);
 674:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 675:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 676:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 677:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP inverting input secondary connection.
 678:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     VMSSEL         LL_OPAMP_GetInputInvertingSecondary
 679:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 680:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 681:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO0_SEC
 682:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_IO1_SEC
 683:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_PGA_SEC
 684:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_INVERT_FOLLOWER_SEC
 685:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 686:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetInputInvertingSecondary(OPAMP_TypeDef *OPAMPx)
 687:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 688:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->TCMR, OPAMP_TCMR_VMSSEL));
 689:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 690:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 691:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 692:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP inputs multiplexer mode.
 693:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     TCMEN          LL_OPAMP_SetInputsMuxMode
 694:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 695:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  InputsMuxMode This parameter can be one of the following values:
 696:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_DISABLE
 697:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_TIM1_CH6
 698:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_TIM8_CH6
 699:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_TIM20_CH6  (1)
 700:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         On this STM32 serie, this value is not available on all devices. Refer to datasheet for
 701:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 702:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 703:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetInputsMuxMode(OPAMP_TypeDef *OPAMPx, uint32_t InputsMuxMode)
 704:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 705:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->TCMR, OPAMP_TCMR_T1CMEN | OPAMP_TCMR_T8CMEN | OPAMP_TCMR_T20CMEN, InputsMuxMod
 706:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 707:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 708:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 709:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP inputs multiplexer mode.
 710:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     TCMEN          LL_OPAMP_GetInputsMuxMode
 711:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 712:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 713:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_DISABLE
 714:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_TIM1_CH6
 715:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_TIM8_CH6
 716:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INPUT_MUX_TIM20_CH6  (1)
 717:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         On this STM32 serie, this value is not available on all devices. Refer to datasheet for
 718:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 719:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetInputsMuxMode(OPAMP_TypeDef *OPAMPx)
 720:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 721:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->TCMR, OPAMP_TCMR_T1CMEN | OPAMP_TCMR_T8CMEN | OPAMP_TCMR_T20CM
 722:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 723:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 724:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 725:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP internal output.
 726:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   OPAMP internal output is used to link OPAMP output to ADC input internally.
 727:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      OPAMPINTEN     LL_OPAMP_SetInternalOutput
 728:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 729:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  InternalOutput This parameter can be one of the following values:
 730:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INTERNAL_OUPUT_DISABLED
 731:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INTERNAL_OUPUT_ENABLED
 732:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 733:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 734:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetInternalOutput(OPAMP_TypeDef *OPAMPx, uint32_t InternalOutput)
 735:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 736:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_OPAMPINTEN, InternalOutput);
 737:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 738:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 739:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 740:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP internal output state.
 741:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      OPAMPINTEN     LL_OPAMP_GetInternalOutput
 742:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 743:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 744:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INTERNAL_OUPUT_DISABLED
 745:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_INTERNAL_OUPUT_ENABLED
 746:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 747:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetInternalOutput(OPAMP_TypeDef *OPAMPx)
 748:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 749:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return READ_BIT(OPAMPx->CSR, OPAMP_CSR_OPAMPINTEN);
 750:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 751:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 752:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 753:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 754:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 755:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 756:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EF_OPAMP_TRIMMING Configuration and operation of OPAMP trimming
 757:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 758:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 759:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 760:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 761:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP trimming mode.
 762:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      USERTRIM       LL_OPAMP_SetTrimmingMode
 763:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 764:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  TrimmingMode This parameter can be one of the following values:
 765:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_FACTORY
 766:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_USER
 767:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 768:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 769:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetTrimmingMode(OPAMP_TypeDef *OPAMPx, uint32_t TrimmingMode)
 770:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 771:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_USERTRIM, TrimmingMode);
 772:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 773:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 774:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 775:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP trimming mode.
 776:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      USERTRIM       LL_OPAMP_GetTrimmingMode
 777:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 778:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 779:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_FACTORY
 780:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_USER
 781:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 782:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetTrimmingMode(OPAMP_TypeDef *OPAMPx)
 783:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 784:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->CSR, OPAMP_CSR_USERTRIM));
 785:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 786:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 787:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 788:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP offset to calibrate the selected transistors
 789:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         differential pair NMOS or PMOS.
 790:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Preliminarily, OPAMP must be set in mode calibration
 791:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         using function @ref LL_OPAMP_SetMode().
 792:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      CALSEL         LL_OPAMP_SetCalibrationSelection
 793:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 794:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  TransistorsDiffPair This parameter can be one of the following values:
 795:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_NMOS            (1)
 796:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_PMOS            (1)
 797:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_NMOS_VREF_50PC_VDDA
 798:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_PMOS_VREF_3_3PC_VDDA
 799:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *
 800:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         (1) Default parameters to be used for calibration
 801:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *             using two trimming steps (one with each transistors differential
 802:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *             pair NMOS and PMOS)
 803:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 804:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 805:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetCalibrationSelection(OPAMP_TypeDef *OPAMPx, uint32_t TransistorsDi
 806:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 807:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* Parameter used with mask "OPAMP_TRIMMING_SELECT_MASK" because            */
 808:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   /* containing other bits reserved for other purpose.                        */
 809:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR, OPAMP_CSR_CALSEL, (TransistorsDiffPair & OPAMP_TRIMMING_SELECT_MASK));
 810:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 811:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 812:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 813:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP offset to calibrate the selected transistors
 814:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         differential pair NMOS or PMOS.
 815:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Preliminarily, OPAMP must be set in mode calibration
 816:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         using function @ref LL_OPAMP_SetMode().
 817:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      CALSEL         LL_OPAMP_GetCalibrationSelection
 818:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 819:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval Returned value can be one of the following values:
 820:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_NMOS            (1)
 821:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_PMOS            (1)
 822:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_NMOS_VREF_50PC_VDDA
 823:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_PMOS_VREF_3_3PC_VDDA
 824:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *
 825:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         (1) Default parameters to be used for calibration
 826:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *             using two trimming steps (one with each transistors differential
 827:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *             pair NMOS and PMOS)
 828:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 829:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetCalibrationSelection(OPAMP_TypeDef *OPAMPx)
 830:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 831:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   register uint32_t CalibrationSelection = (uint32_t)(READ_BIT(OPAMPx->CSR, OPAMP_CSR_CALSEL));
 832:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 833:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (CalibrationSelection |
 834:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****           (((CalibrationSelection & OPAMP_CSR_CALSEL_1) == 0UL) ? OPAMP_CSR_TRIMOFFSETP : OPAMP_CSR
 835:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 836:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 837:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 838:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP calibration result of toggling output.
 839:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   This functions returns:
 840:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         0 if OPAMP calibration output is reset
 841:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         1 if OPAMP calibration output is set
 842:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      OUTCAL         LL_OPAMP_IsCalibrationOutputSet
 843:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 844:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval State of bit (1 or 0).
 845:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 846:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_IsCalibrationOutputSet(OPAMP_TypeDef *OPAMPx)
 847:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 848:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return ((READ_BIT(OPAMPx->CSR, OPAMP_CSR_OUTCAL) == OPAMP_CSR_OUTCAL) ? 1UL : 0UL);
 849:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 850:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 851:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 852:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Set OPAMP trimming factor for the selected transistors
 853:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         differential pair NMOS or PMOS, corresponding to the selected
 854:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         power mode.
 855:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      TRIMOFFSETN    LL_OPAMP_SetTrimmingValue\n
 856:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         CSR      TRIMOFFSETP    LL_OPAMP_SetTrimmingValue
 857:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 858:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  TransistorsDiffPair This parameter can be one of the following values:
 859:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_NMOS
 860:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_PMOS
 861:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  TrimmingValue 0x00...0x1F
 862:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 863:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 864:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_SetTrimmingValue(OPAMP_TypeDef *OPAMPx, uint32_t TransistorsDiffPair,
 865:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                                                uint32_t TrimmingValue)
 866:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 867:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   MODIFY_REG(OPAMPx->CSR,
 868:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****              (TransistorsDiffPair & OPAMP_TRIMMING_VALUE_MASK),
 869:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****              TrimmingValue << ((TransistorsDiffPair == LL_OPAMP_TRIMMING_NMOS) ? OPAMP_CSR_TRIMOFFS
 870:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 871:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 872:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 873:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP trimming factor for the selected transistors
 874:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         differential pair NMOS or PMOS, corresponding to the selected
 875:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         power mode.
 876:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      TRIMOFFSETN    LL_OPAMP_GetTrimmingValue\n
 877:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         CSR      TRIMOFFSETP    LL_OPAMP_GetTrimmingValue
 878:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 879:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  TransistorsDiffPair This parameter can be one of the following values:
 880:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_NMOS
 881:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         @arg @ref LL_OPAMP_TRIMMING_PMOS
 882:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval 0x0...0x1F
 883:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 884:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_GetTrimmingValue(OPAMP_TypeDef *OPAMPx, uint32_t TransistorsDiffP
 885:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 886:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return (uint32_t)(READ_BIT(OPAMPx->CSR, (TransistorsDiffPair & OPAMP_TRIMMING_VALUE_MASK))
 887:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****                     >> ((TransistorsDiffPair == LL_OPAMP_TRIMMING_NMOS) ? OPAMP_CSR_TRIMOFFSETN_Pos
 888:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 889:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 890:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 891:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @}
 892:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 893:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 894:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /** @defgroup OPAMP_LL_EF_OPERATION Operation on OPAMP instance
 895:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @{
 896:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 897:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 898:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Enable OPAMP instance.
 899:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   After enable from off state, OPAMP requires a delay
 900:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         to fullfill wake up time specification.
 901:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         Refer to device datasheet, parameter "tWAKEUP".
 902:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      OPAMPXEN       LL_OPAMP_Enable
 903:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 904:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 905:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 906:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_Enable(OPAMP_TypeDef *OPAMPx)
 907:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 908:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   SET_BIT(OPAMPx->CSR, OPAMP_CSR_OPAMPxEN);
 909:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 910:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 911:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 912:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Disable OPAMP instance.
 913:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      OPAMPXEN       LL_OPAMP_Disable
 914:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 915:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 916:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 917:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_Disable(OPAMP_TypeDef *OPAMPx)
 918:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 919:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   CLEAR_BIT(OPAMPx->CSR, OPAMP_CSR_OPAMPxEN);
 920:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 921:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 922:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 923:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP instance enable state
 924:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         (0: OPAMP is disabled, 1: OPAMP is enabled)
 925:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      OPAMPXEN       LL_OPAMP_IsEnabled
 926:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 927:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval State of bit (1 or 0).
 928:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 929:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_IsEnabled(OPAMP_TypeDef *OPAMPx)
 930:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 931:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return ((READ_BIT(OPAMPx->CSR, OPAMP_CSR_OPAMPxEN) == (OPAMP_CSR_OPAMPxEN)) ? 1UL : 0UL);
 932:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 933:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 934:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 935:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Lock OPAMP instance.
 936:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Once locked, OPAMP configuration can be accessed in read-only.
 937:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   The only way to unlock the OPAMP is a device hardware reset.
 938:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      LOCK           LL_OPAMP_Lock
 939:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 940:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 941:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 942:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_Lock(OPAMP_TypeDef *OPAMPx)
 943:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 944:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   SET_BIT(OPAMPx->CSR, OPAMP_CSR_LOCK);
 945:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 946:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 947:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 948:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP lock state
 949:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         (0: OPAMP is unlocked, 1: OPAMP is locked).
 950:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Once locked, OPAMP configuration can be accessed in read-only.
 951:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   The only way to unlock the OPAMP is a device hardware reset.
 952:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll CSR      LOCK           LL_OPAMP_IsLocked
 953:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 954:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval State of bit (1 or 0).
 955:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 956:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_IsLocked(OPAMP_TypeDef *OPAMPx)
  41              		.loc 2 956 26 view .LVU4
  42              	.LBB9:
 957:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 958:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return ((READ_BIT(OPAMPx->CSR, OPAMP_CSR_LOCK) == (OPAMP_CSR_LOCK)) ? 1UL : 0UL);
  43              		.loc 2 958 3 view .LVU5
  44              		.loc 2 958 12 is_stmt 0 view .LVU6
  45 0000 0368     		ldr	r3, [r0]
  46              	.LBE9:
  47              	.LBE8:
 107:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   ErrorStatus status = SUCCESS;
  48              		.loc 1 107 1 view .LVU7
  49 0002 0246     		mov	r2, r0
  50              	.LBB11:
  51              	.LBB10:
  52              		.loc 2 958 77 view .LVU8
  53 0004 002B     		cmp	r3, #0
  54              	.LVL1:
  55              		.loc 2 958 77 view .LVU9
  56              	.LBE10:
  57              	.LBE11:
 116:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 117:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     LL_OPAMP_WriteReg(OPAMPx, CSR, 0x00000000UL);
  58              		.loc 1 117 5 is_stmt 1 view .LVU10
  59 0006 A4BF     		itt	ge
  60 0008 0020     		movge	r0, #0
  61              	.LVL2:
  62              		.loc 1 117 5 is_stmt 0 view .LVU11
  63 000a 1060     		strge	r0, [r2]
  64              	.LBB12:
  65              	.LBB13:
 959:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 960:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 961:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 962:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Lock OPAMP instance timer controlled mux
 963:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Once locked, OPAMP timer controlled mux configuration can be accessed in read-only.
 964:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   The only way to unlock the OPAMP timer controlled mux is a device hardware reset.
 965:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     LOCK           LL_OPAMP_LockTimerMux
 966:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 967:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval None
 968:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 969:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE void LL_OPAMP_LockTimerMux(OPAMP_TypeDef *OPAMPx)
 970:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 971:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   SET_BIT(OPAMPx->TCMR, OPAMP_TCMR_LOCK);
 972:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 973:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** 
 974:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** /**
 975:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @brief  Get OPAMP timer controlled mux lock state
 976:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   *         (0: OPAMP timer controlled mux is unlocked, 1: OPAMP timer controlled mux is locked).
 977:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   Once locked, OPAMP timer controlled mux configuration can be accessed in read-only.
 978:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @note   The only way to unlock the OPAMP timer controlled mux is a device hardware reset.
 979:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @rmtoll TCMR     LOCK           LL_OPAMP_IsTimerMuxLocked
 980:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @param  OPAMPx OPAMP instance
 981:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   * @retval State of bit (1 or 0).
 982:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   */
 983:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** __STATIC_INLINE uint32_t LL_OPAMP_IsTimerMuxLocked(OPAMP_TypeDef *OPAMPx)
 984:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 985:../../..\CubeG4\include/stm32g4xx_ll_opamp.h ****   return ((READ_BIT(OPAMPx->TCMR, OPAMP_TCMR_LOCK) == (OPAMP_TCMR_LOCK)) ? 1UL : 0UL);
  66              		.loc 2 985 12 view .LVU12
  67 000c 9369     		ldr	r3, [r2, #24]
  68              	.LBE13:
  69              	.LBE12:
 118:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 119:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   else
 120:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 121:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* OPAMP instance is locked: de-initialization by software is              */
 122:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* not possible.                                                           */
 123:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* The only way to unlock the OPAMP is a device hardware reset.            */
 124:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     status = ERROR;
  70              		.loc 1 124 12 view .LVU13
  71 000e B8BF     		it	lt
  72 0010 0120     		movlt	r0, #1
  73              	.LVL3:
 125:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 126:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 127:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Timer controlled mux mode register reset                                  */
 128:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   if (LL_OPAMP_IsTimerMuxLocked(OPAMPx) == 0UL)
  74              		.loc 1 128 3 is_stmt 1 view .LVU14
  75              	.LBB15:
  76              	.LBI12:
 983:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
  77              		.loc 2 983 26 view .LVU15
  78              	.LBB14:
  79              		.loc 2 985 3 view .LVU16
  80              		.loc 2 985 80 is_stmt 0 view .LVU17
  81 0012 002B     		cmp	r3, #0
  82 0014 02DB     		blt	.L3
  83              	.LVL4:
  84              		.loc 2 985 80 view .LVU18
  85              	.LBE14:
  86              	.LBE15:
 129:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 130:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     LL_OPAMP_WriteReg(OPAMPx, TCMR, 0x00000000UL);
  87              		.loc 1 130 5 is_stmt 1 view .LVU19
  88 0016 0023     		movs	r3, #0
  89 0018 9361     		str	r3, [r2, #24]
  90 001a 7047     		bx	lr
  91              	.LVL5:
  92              	.L3:
 131:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 132:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   else if (LL_OPAMP_ReadReg(OPAMPx, TCMR) != 0x80000000UL)
  93              		.loc 1 132 8 view .LVU20
  94              		.loc 1 132 12 is_stmt 0 view .LVU21
  95 001c 9369     		ldr	r3, [r2, #24]
 133:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 134:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* OPAMP instance timer controlled mux is locked configured, deinit error  */
 135:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* The only way to unlock the OPAMP is a device hardware reset.            */
 136:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     status = ERROR;
  96              		.loc 1 136 12 view .LVU22
  97 001e B3F1004F 		cmp	r3, #-2147483648
  98 0022 18BF     		it	ne
  99 0024 0120     		movne	r0, #1
 100              	.LVL6:
 137:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 138:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   else
 139:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 140:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* OPAMP instance timer controlled mux is locked unconfigured, deinit OK */
 141:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 101              		.loc 1 141 3 is_stmt 1 view .LVU23
 142:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 143:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   return status;
 102              		.loc 1 143 3 view .LVU24
 144:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** }
 103              		.loc 1 144 1 is_stmt 0 view .LVU25
 104 0026 7047     		bx	lr
 105              		.cfi_endproc
 106              	.LFE164:
 108              		.section	.text.LL_OPAMP_Init,"ax",%progbits
 109              		.align	1
 110              		.global	LL_OPAMP_Init
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu fpv4-sp-d16
 116              	LL_OPAMP_Init:
 117              	.LVL7:
 118              	.LFB165:
 145:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 146:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /**
 147:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @brief  Initialize some features of OPAMP instance.
 148:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @note   This function reset bit of calibration mode to ensure
 149:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *         to be in functional mode, in order to have OPAMP parameters
 150:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *         (inputs selection, ...) set with the corresponding OPAMP mode
 151:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *         to be effective.
 152:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @param  OPAMPx OPAMP instance
 153:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @param  OPAMP_InitStruct Pointer to a @ref LL_OPAMP_InitTypeDef structure
 154:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @retval An ErrorStatus enumeration value:
 155:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *          - SUCCESS: OPAMP registers are initialized
 156:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *          - ERROR: OPAMP registers are not initialized
 157:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
 158:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** ErrorStatus LL_OPAMP_Init(OPAMP_TypeDef *OPAMPx, LL_OPAMP_InitTypeDef *OPAMP_InitStruct)
 159:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** {
 119              		.loc 1 159 1 is_stmt 1 view -0
 120              		.cfi_startproc
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 160:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   ErrorStatus status = SUCCESS;
 123              		.loc 1 160 3 view .LVU27
 161:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 162:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Check the parameters */
 163:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   assert_param(IS_OPAMP_ALL_INSTANCE(OPAMPx));
 124              		.loc 1 163 3 view .LVU28
 164:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   assert_param(IS_LL_OPAMP_POWER_MODE(OPAMP_InitStruct->PowerMode));
 125              		.loc 1 164 3 view .LVU29
 165:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   assert_param(IS_LL_OPAMP_FUNCTIONAL_MODE(OPAMP_InitStruct->FunctionalMode));
 126              		.loc 1 165 3 view .LVU30
 166:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   assert_param(IS_LL_OPAMP_INPUT_NONINVERTING(OPAMP_InitStruct->InputNonInverting));
 127              		.loc 1 166 3 view .LVU31
 167:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 168:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Note: OPAMP inverting input can be used with OPAMP in mode standalone    */
 169:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /*       or PGA with external capacitors for filtering circuit.             */
 170:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /*       Otherwise (OPAMP in mode follower), OPAMP inverting input is       */
 171:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /*       not used (not connected to GPIO pin).                              */
 172:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   if (OPAMP_InitStruct->FunctionalMode != LL_OPAMP_MODE_FOLLOWER)
 128              		.loc 1 172 3 view .LVU32
 173:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 174:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     assert_param(IS_LL_OPAMP_INPUT_INVERTING(OPAMP_InitStruct->InputInverting));
 129              		.loc 1 174 5 view .LVU33
 175:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 176:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 177:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Note: Hardware constraint (refer to description of this function):       */
 178:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /*       OPAMP instance must not be locked.                                 */
 179:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   if (LL_OPAMP_IsLocked(OPAMPx) == 0U)
 130              		.loc 1 179 3 view .LVU34
 131              	.LBB16:
 132              	.LBI16:
 956:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** {
 133              		.loc 2 956 26 view .LVU35
 134              	.LBB17:
 958:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 135              		.loc 2 958 3 view .LVU36
 958:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 136              		.loc 2 958 12 is_stmt 0 view .LVU37
 137 0000 0368     		ldr	r3, [r0]
 958:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 138              		.loc 2 958 77 view .LVU38
 139 0002 002B     		cmp	r3, #0
 140              	.LBE17:
 141              	.LBE16:
 159:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   ErrorStatus status = SUCCESS;
 142              		.loc 1 159 1 view .LVU39
 143 0004 70B5     		push	{r4, r5, r6, lr}
 144              		.cfi_def_cfa_offset 16
 145              		.cfi_offset 4, -16
 146              		.cfi_offset 5, -12
 147              		.cfi_offset 6, -8
 148              		.cfi_offset 14, -4
 149              	.LBB19:
 150              	.LBB18:
 958:../../..\CubeG4\include/stm32g4xx_ll_opamp.h **** }
 151              		.loc 2 958 77 view .LVU40
 152 0006 16DB     		blt	.L11
 153 0008 D1E90053 		ldrd	r5, r3, [r1]
 154              	.LBE18:
 155              	.LBE19:
 180:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 181:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* Configuration of OPAMP instance :                                      */
 182:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /*  - PowerMode                                                             */
 183:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /*  - Functional mode                                                     */
 184:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /*  - Input non-inverting                                                 */
 185:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /*  - Input inverting                                                     */
 186:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* Note: Bit OPAMP_CSR_CALON reset to ensure to be in functional mode.    */
 187:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     if (OPAMP_InitStruct->FunctionalMode != LL_OPAMP_MODE_FOLLOWER)
 156              		.loc 1 187 8 view .LVU41
 157 000c 602B     		cmp	r3, #96
 158 000e 8C68     		ldr	r4, [r1, #8]
 159 0010 0A4E     		ldr	r6, .L13
 160 0012 09D0     		beq	.L10
 188:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     {
 189:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****       MODIFY_REG(OPAMPx->CSR,
 161              		.loc 1 189 7 is_stmt 1 view .LVU42
 162 0014 0268     		ldr	r2, [r0]
 163 0016 2B43     		orrs	r3, r3, r5
 164 0018 3240     		ands	r2, r2, r6
 165 001a 2343     		orrs	r3, r3, r4
 166 001c 1343     		orrs	r3, r3, r2
 167 001e CA68     		ldr	r2, [r1, #12]
 168 0020 1343     		orrs	r3, r3, r2
 169              	.L12:
 190:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  OPAMP_CSR_HIGHSPEEDEN
 191:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_CALON
 192:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_VMSEL
 193:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_VPSEL
 194:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_PGGAIN_4 | OPAMP_CSR_PGGAIN_3
 195:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  ,
 196:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  OPAMP_InitStruct->PowerMode
 197:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_InitStruct->FunctionalMode
 198:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_InitStruct->InputNonInverting
 199:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_InitStruct->InputInverting
 200:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                 );
 201:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     }
 202:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     else
 203:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     {
 204:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****       MODIFY_REG(OPAMPx->CSR,
 170              		.loc 1 204 7 is_stmt 0 view .LVU43
 171 0022 0360     		str	r3, [r0]
 160:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 172              		.loc 1 160 15 view .LVU44
 173 0024 0020     		movs	r0, #0
 174              	.LVL8:
 175              	.L9:
 205:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  OPAMP_CSR_HIGHSPEEDEN
 206:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_CALON
 207:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_VMSEL
 208:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_VPSEL
 209:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_CSR_PGGAIN_4 | OPAMP_CSR_PGGAIN_3
 210:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  ,
 211:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  OPAMP_InitStruct->PowerMode
 212:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | LL_OPAMP_MODE_FOLLOWER
 213:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  | OPAMP_InitStruct->InputNonInverting
 214:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                 );
 215:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     }
 216:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 217:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   else
 218:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   {
 219:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     /* Initialization error: OPAMP instance is locked.                        */
 220:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****     status = ERROR;
 221:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 222:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 223:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   return status;
 176              		.loc 1 223 3 is_stmt 1 view .LVU45
 224:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** }
 177              		.loc 1 224 1 is_stmt 0 view .LVU46
 178 0026 70BD     		pop	{r4, r5, r6, pc}
 179              	.LVL9:
 180              	.L10:
 204:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****                  OPAMP_CSR_HIGHSPEEDEN
 181              		.loc 1 204 7 is_stmt 1 view .LVU47
 182 0028 0368     		ldr	r3, [r0]
 183 002a 3340     		ands	r3, r3, r6
 184 002c 2B43     		orrs	r3, r3, r5
 185 002e 2343     		orrs	r3, r3, r4
 186 0030 43F06003 		orr	r3, r3, #96
 187 0034 F5E7     		b	.L12
 188              	.L11:
 220:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 189              		.loc 1 220 12 is_stmt 0 view .LVU48
 190 0036 0120     		movs	r0, #1
 191              	.LVL10:
 220:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   }
 192              		.loc 1 220 12 view .LVU49
 193 0038 F5E7     		b	.L9
 194              	.L14:
 195 003a 00BF     		.align	2
 196              	.L13:
 197 003c 13F7F9FF 		.word	-395501
 198              		.cfi_endproc
 199              	.LFE165:
 201              		.section	.text.LL_OPAMP_StructInit,"ax",%progbits
 202              		.align	1
 203              		.global	LL_OPAMP_StructInit
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu fpv4-sp-d16
 209              	LL_OPAMP_StructInit:
 210              	.LVL11:
 211              	.LFB166:
 225:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** 
 226:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** /**
 227:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @brief Set each @ref LL_OPAMP_InitTypeDef field to default value.
 228:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @param OPAMP_InitStruct pointer to a @ref LL_OPAMP_InitTypeDef structure
 229:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   *                         whose fields will be set to default values.
 230:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   * @retval None
 231:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   */
 232:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** void LL_OPAMP_StructInit(LL_OPAMP_InitTypeDef *OPAMP_InitStruct)
 233:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** {
 212              		.loc 1 233 1 is_stmt 1 view -0
 213              		.cfi_startproc
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 234:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Set OPAMP_InitStruct fields to default values */
 235:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   OPAMP_InitStruct->PowerMode         = LL_OPAMP_POWERMODE_NORMAL;
 217              		.loc 1 235 3 view .LVU51
 236:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   OPAMP_InitStruct->FunctionalMode    = LL_OPAMP_MODE_FOLLOWER;
 218              		.loc 1 236 39 is_stmt 0 view .LVU52
 219 0000 0023     		movs	r3, #0
 220 0002 6022     		movs	r2, #96
 221 0004 C0E90032 		strd	r3, r2, [r0]
 237:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   OPAMP_InitStruct->InputNonInverting = LL_OPAMP_INPUT_NONINVERT_IO0;
 222              		.loc 1 237 3 is_stmt 1 view .LVU53
 223              		.loc 1 237 39 is_stmt 0 view .LVU54
 224 0008 8360     		str	r3, [r0, #8]
 238:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /* Note: Parameter discarded if OPAMP in functional mode follower,          */
 239:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   /*       set anyway to its default value.                                   */
 240:../../..\CubeG4\src/stm32g4xx_ll_opamp.c ****   OPAMP_InitStruct->InputInverting    = LL_OPAMP_INPUT_INVERT_CONNECT_NO;
 225              		.loc 1 240 3 is_stmt 1 view .LVU55
 226              		.loc 1 240 39 is_stmt 0 view .LVU56
 227 000a 4023     		movs	r3, #64
 228 000c C360     		str	r3, [r0, #12]
 241:../../..\CubeG4\src/stm32g4xx_ll_opamp.c **** }
 229              		.loc 1 241 1 view .LVU57
 230 000e 7047     		bx	lr
 231              		.cfi_endproc
 232              	.LFE166:
 234              		.text
 235              	.Letext0:
 236              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 237              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 238              		.file 5 "../../..\\CubeG4\\include/core_cm4.h"
 239              		.file 6 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 240              		.file 7 "../../..\\CubeG4\\include/stm32g431xx.h"
 241              		.file 8 "../../..\\CubeG4\\include/stm32g4xx.h"
