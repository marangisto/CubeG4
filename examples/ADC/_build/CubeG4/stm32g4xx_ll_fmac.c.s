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
  13              		.file	"stm32g4xx_ll_fmac.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_FMAC_Init,"ax",%progbits
  18              		.align	1
  19              		.global	LL_FMAC_Init
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_FMAC_Init:
  27              	.LVL0:
  28              	.LFB237:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_fmac.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @file    stm32g4xx_ll_fmac.c
   4:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @brief   FMAC LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #include "stm32g4xx_ll_fmac.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #include "stm32g4xx_ll_bus.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #ifdef USE_FULL_ASSERT
  25:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #include "stm32_assert.h"
  26:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #else
  27:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #define assert_param(expr) ((void)0)
  28:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #endif /* USE_FULL_ASSERT */
  29:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  30:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /** @addtogroup STM32G4xx_LL_Driver
  31:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @{
  32:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  33:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  34:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #if defined(FMAC)
  35:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /** @addtogroup FMAC_LL
  37:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @{
  38:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  39:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  40:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /* Private types -------------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /* Private variables ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /* Private constants ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /* Private macros ------------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /** @addtogroup FMAC_LL_Private_Macros
  45:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @{
  46:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  47:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  48:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /** @brief  Check if the watermark value is a valid one.
  49:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @param  __VALUE__ Watermak value.
  50:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @retval SET (__VALUE__ is a valid value) or RESET (__VALUE__ is invalid)
  51:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  52:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #define IS_LL_FMAC_WM(__VALUE__) (((__VALUE__) == LL_FMAC_WM_0_THRESHOLD_1) \
  53:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****                                   || ((__VALUE__) == LL_FMAC_WM_1_THRESHOLD_2) \
  54:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****                                   || ((__VALUE__) == LL_FMAC_WM_2_THRESHOLD_4) \
  55:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****                                   || ((__VALUE__) == LL_FMAC_WM_3_THRESHOLD_8))
  56:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  57:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /** @brief  Check if the function ID is a valid one.
  58:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @param  __VALUE__ Function ID.
  59:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @retval SET (__VALUE__ is a valid value) or RESET (__VALUE__ is invalid)
  60:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  61:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** #define IS_LL_FMAC_FUNC(__VALUE__) (((__VALUE__) == LL_FMAC_FUNC_LOAD_X1) \
  62:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****                                     || ((__VALUE__) == LL_FMAC_FUNC_LOAD_X2) \
  63:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****                                     || ((__VALUE__) == LL_FMAC_FUNC_LOAD_Y) \
  64:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****                                     || ((__VALUE__) == LL_FMAC_FUNC_CONVO_FIR) \
  65:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****                                     || ((__VALUE__) == LL_FMAC_FUNC_IIR_DIRECT_FORM_1))
  66:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  67:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  68:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /**
  69:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @}
  70:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  71:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  72:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /* Private function prototypes -----------------------------------------------*/
  73:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  74:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /* Exported functions --------------------------------------------------------*/
  75:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /** @addtogroup FMAC_LL_Exported_Functions
  76:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @{
  77:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  78:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  79:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /** @addtogroup FMAC_LL_EF_Init
  80:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @{
  81:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  82:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  83:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /**
  84:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @brief  Initialize FMAC peripheral registers to their default reset values.
  85:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @param  FMACx FMAC Instance
  86:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @retval An ErrorStatus enumeration value:
  87:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *          - SUCCESS: FMAC registers are initialized
  88:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *          - ERROR: FMAC registers are not initialized
  89:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
  90:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** ErrorStatus LL_FMAC_Init(FMAC_TypeDef *FMACx)
  91:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** {
  30              		.loc 1 91 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
  92:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   ErrorStatus status = SUCCESS;
  35              		.loc 1 92 3 view .LVU1
  93:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  94:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   /* Check the parameters */
  95:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   assert_param(IS_FMAC_ALL_INSTANCE(FMACx));
  36              		.loc 1 95 3 view .LVU2
  96:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
  97:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   if (FMACx == FMAC)
  37              		.loc 1 97 3 view .LVU3
  38              		.loc 1 97 6 is_stmt 0 view .LVU4
  39 0000 064B     		ldr	r3, .L6
  40 0002 9842     		cmp	r0, r3
  41 0004 08D1     		bne	.L4
  98:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   {
  99:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     /* Perform the reset */
 100:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     LL_FMAC_EnableReset(FMACx);
  42              		.loc 1 100 5 is_stmt 1 view .LVU5
  43              	.LVL1:
  44              	.LBB8:
  45              	.LBI8:
  46              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_fmac.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @file    stm32g4xx_ll_fmac.h
   4:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief   Header file of FMAC LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #ifndef STM32G4xx_LL_FMAC_H
  22:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define STM32G4xx_LL_FMAC_H
  23:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #if defined(FMAC)
  36:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL FMAC
  38:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Private variables ---------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  43:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Private macros ------------------------------------------------------------*/
  46:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #if defined(USE_FULL_LL_DRIVER)
  47:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_Private_Macros FMAC Private Macros
  48:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
  49:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  50:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
  51:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
  52:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  53:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #endif /*USE_FULL_LL_DRIVER*/
  54:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  55:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Exported types ------------------------------------------------------------*/
  56:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  57:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Exported constants --------------------------------------------------------*/
  58:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_Exported_Constants FMAC Exported Constants
  59:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
  60:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  61:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_EC_GET_FLAG Get Flag Defines
  63:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief    Flag defines which can be used with LL_FMAC_ReadReg function
  64:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
  65:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  66:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_SR_SAT                     FMAC_SR_SAT
  67:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_SR_UNFL                    FMAC_SR_UNFL
  68:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_SR_OVFL                    FMAC_SR_OVFL
  69:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_SR_X1FULL                  FMAC_SR_X1FULL
  70:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_SR_YEMPTY                  FMAC_SR_YEMPTY
  71:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
  72:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
  73:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  74:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  75:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_EC_IT IT Defines
  76:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief    IT defines which can be used with LL_FMAC_ReadReg and LL_FMAC_WriteReg functions
  77:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
  78:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  79:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_CR_SATIEN                  FMAC_CR_SATIEN
  80:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_CR_UNFLIEN                 FMAC_CR_UNFLIEN
  81:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_CR_OVFLIEN                 FMAC_CR_OVFLIEN
  82:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_CR_WIEN                    FMAC_CR_WIEN
  83:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_CR_RIEN                    FMAC_CR_RIEN
  84:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
  85:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
  86:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  87:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
  88:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_EC_WM FMAC watermarks
  89:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief    Watermark defines that can be used for buffer full (input) or buffer empty (output)
  90:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
  91:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  92:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_WM_0_THRESHOLD_1           0x00000000UL /*!< Buffer full/empty flag set if there is
  93:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_WM_1_THRESHOLD_2           0x01000000UL /*!< Buffer full/empty flag set if there ar
  94:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_WM_2_THRESHOLD_4           0x02000000UL /*!< Buffer full/empty flag set if there ar
  95:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_WM_3_THRESHOLD_8           0x03000000UL /*!< Buffer full/empty flag set if there ar
  96:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
  97:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
  98:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
  99:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_EC_FUNC FMAC functions
 101:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
 102:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 103:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_FUNC_LOAD_X1               ((uint32_t)(FMAC_PARAM_FUNC_0))                         
 104:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_FUNC_LOAD_X2               ((uint32_t)(FMAC_PARAM_FUNC_1))                         
 105:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_FUNC_LOAD_Y                ((uint32_t)(FMAC_PARAM_FUNC_1 | FMAC_PARAM_FUNC_0))     
 106:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_FUNC_CONVO_FIR             ((uint32_t)(FMAC_PARAM_FUNC_3))                         
 107:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_FUNC_IIR_DIRECT_FORM_1     ((uint32_t)(FMAC_PARAM_FUNC_3 | FMAC_PARAM_FUNC_0))     
 108:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 109:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
 110:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 111:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 112:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 113:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
 114:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 115:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 116:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Exported macro ------------------------------------------------------------*/
 117:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_Exported_Macros FMAC Exported Macros
 118:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
 119:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 120:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 121:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_EM_WRITE_READ Common Write and read registers Macros
 122:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
 123:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 124:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 125:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 126:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Write a value in FMAC register
 127:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  __INSTANCE__ FMAC Instance
 128:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  __REG__ Register to be written
 129:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  __VALUE__ Value to be written in the register
 130:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 131:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 132:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALU
 133:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 135:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Read a value in FMAC register
 136:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  __INSTANCE__ FMAC Instance
 137:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  __REG__ Register to be read
 138:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval Register value
 139:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 140:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** #define LL_FMAC_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 141:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 142:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
 143:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 144:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 145:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 146:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
 147:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 148:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 149:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 150:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /* Exported functions --------------------------------------------------------*/
 151:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 152:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_Exported_Functions FMAC Exported Functions
 153:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
 154:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 155:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 156:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_EF_Configuration FMAC Configuration functions
 157:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
 158:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 159:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 160:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 161:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure X1 full watermark.
 162:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X1BUFCFG     FULL_WM       LL_FMAC_SetX1FullWatermark
 163:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 164:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Watermark This parameter can be one of the following values:
 165:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_0_THRESHOLD_1
 166:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_1_THRESHOLD_2
 167:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_2_THRESHOLD_4
 168:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_3_THRESHOLD_8
 169:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 170:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 171:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetX1FullWatermark(FMAC_TypeDef *FMACx, uint32_t Watermark)
 172:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 173:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->X1BUFCFG, FMAC_X1BUFCFG_FULL_WM, Watermark);
 174:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 175:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 176:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 177:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return X1 full watermark.
 178:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X1BUFCFG     FULL_WM       LL_FMAC_GetX1FullWatermark
 179:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 180:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval Returned value can be one of the following values:
 181:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_0_THRESHOLD_1
 182:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_1_THRESHOLD_2
 183:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_2_THRESHOLD_4
 184:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_3_THRESHOLD_8
 185:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 186:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint32_t LL_FMAC_GetX1FullWatermark(FMAC_TypeDef *FMACx)
 187:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 188:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint32_t)(READ_BIT(FMACx->X1BUFCFG, FMAC_X1BUFCFG_FULL_WM));
 189:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 190:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 191:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 192:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure X1 buffer size.
 193:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X1BUFCFG     X1_BUF_SIZE   LL_FMAC_SetX1BufferSize
 194:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 195:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  BufferSize 0x01 .. 0xFF: Number of 16-bit addresses allocated to the input buffer (incl
 196:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 197:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 198:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetX1BufferSize(FMAC_TypeDef *FMACx, uint8_t BufferSize)
 199:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 200:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->X1BUFCFG, FMAC_X1BUFCFG_X1_BUF_SIZE, ((uint32_t)BufferSize) << FMAC_X1BUFCFG_X1
 201:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 202:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 203:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 204:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return X1 buffer size.
 205:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X1BUFCFG     X1_BUF_SIZE   LL_FMAC_GetX1BufferSize
 206:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 207:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x01 .. 0xFF: Number of 16-bit addresses allocated to the input buffer (including the o
 208:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 209:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetX1BufferSize(FMAC_TypeDef *FMACx)
 210:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 211:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->X1BUFCFG, FMAC_X1BUFCFG_X1_BUF_SIZE) >> FMAC_X1BUFCFG_X1_BUF_SIZ
 212:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 213:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 214:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 215:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure X1 base.
 216:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X1BUFCFG     X1_BASE       LL_FMAC_SetX1Base
 217:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 218:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Base 0x00 .. 0xFF: Base address of the input buffer (X1) within the internal memory.
 219:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 220:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 221:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetX1Base(FMAC_TypeDef *FMACx, uint8_t Base)
 222:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 223:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->X1BUFCFG, FMAC_X1BUFCFG_X1_BASE, ((uint32_t)Base) << FMAC_X1BUFCFG_X1_BASE_Pos)
 224:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 225:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 226:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 227:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return X1 base.
 228:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X1BUFCFG     X1_BASE       LL_FMAC_GetX1Base
 229:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 230:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x00 .. 0xFF: Base address of the input buffer (X1) within the internal memory.
 231:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 232:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetX1Base(FMAC_TypeDef *FMACx)
 233:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 234:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->X1BUFCFG, FMAC_X1BUFCFG_X1_BASE) >> FMAC_X1BUFCFG_X1_BASE_Pos);
 235:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 236:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 237:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 238:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure X2 buffer size.
 239:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X2BUFCFG     X2_BUF_SIZE   LL_FMAC_SetX2BufferSize
 240:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 241:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  BufferSize 0x01 .. 0xFF: Number of 16-bit addresses allocated to the coefficient buffer
 242:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 243:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 244:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetX2BufferSize(FMAC_TypeDef *FMACx, uint8_t BufferSize)
 245:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 246:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->X2BUFCFG, FMAC_X2BUFCFG_X2_BUF_SIZE, ((uint32_t)BufferSize) << FMAC_X2BUFCFG_X2
 247:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 248:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 249:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 250:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return X2 buffer size.
 251:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X2BUFCFG     X2_BUF_SIZE   LL_FMAC_GetX2BufferSize
 252:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 253:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x01 .. 0xFF: Number of 16-bit addresses allocated to the coefficient buffer.
 254:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 255:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetX2BufferSize(FMAC_TypeDef *FMACx)
 256:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 257:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->X2BUFCFG, FMAC_X2BUFCFG_X2_BUF_SIZE) >> FMAC_X2BUFCFG_X2_BUF_SIZ
 258:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 259:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 260:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 261:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure X2 base.
 262:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X2BUFCFG     X2_BASE       LL_FMAC_SetX2Base
 263:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 264:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Base 0x00 .. 0xFF: Base address of the coefficient buffer (X2) within the internal memo
 265:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 266:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 267:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetX2Base(FMAC_TypeDef *FMACx, uint8_t Base)
 268:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 269:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->X2BUFCFG, FMAC_X2BUFCFG_X2_BASE, ((uint32_t)Base) << FMAC_X2BUFCFG_X2_BASE_Pos)
 270:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 271:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 272:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 273:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return X2 base.
 274:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll X2BUFCFG     X2_BASE       LL_FMAC_GetX2Base
 275:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 276:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x00 .. 0xFF: Base address of the coefficient buffer (X2) within the internal memory.
 277:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 278:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetX2Base(FMAC_TypeDef *FMACx)
 279:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 280:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->X2BUFCFG, FMAC_X2BUFCFG_X2_BASE) >> FMAC_X2BUFCFG_X2_BASE_Pos);
 281:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 282:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 283:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 284:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure Y empty watermark.
 285:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll YBUFCFG      EMPTY_WM      LL_FMAC_SetYEmptyWatermark
 286:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 287:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Watermark This parameter can be one of the following values:
 288:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_0_THRESHOLD_1
 289:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_1_THRESHOLD_2
 290:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_2_THRESHOLD_4
 291:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_3_THRESHOLD_8
 292:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 293:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 294:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetYEmptyWatermark(FMAC_TypeDef *FMACx, uint32_t Watermark)
 295:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 296:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->YBUFCFG, FMAC_YBUFCFG_EMPTY_WM, Watermark);
 297:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 298:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 299:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 300:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return Y empty watermark.
 301:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll YBUFCFG      EMPTY_WM      LL_FMAC_GetYEmptyWatermark
 302:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 303:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval Returned value can be one of the following values:
 304:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_0_THRESHOLD_1
 305:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_1_THRESHOLD_2
 306:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_2_THRESHOLD_4
 307:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_WM_3_THRESHOLD_8
 308:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 309:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint32_t LL_FMAC_GetYEmptyWatermark(FMAC_TypeDef *FMACx)
 310:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 311:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint32_t)(READ_BIT(FMACx->YBUFCFG, FMAC_YBUFCFG_EMPTY_WM));
 312:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 313:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 314:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 315:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure Y buffer size.
 316:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll YBUFCFG      Y_BUF_SIZE    LL_FMAC_SetYBufferSize
 317:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 318:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  BufferSize 0x01 .. 0xFF: Number of 16-bit addresses allocated to the output buffer (inc
 319:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 320:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 321:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetYBufferSize(FMAC_TypeDef *FMACx, uint8_t BufferSize)
 322:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 323:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->YBUFCFG, FMAC_YBUFCFG_Y_BUF_SIZE, ((uint32_t)BufferSize) << FMAC_YBUFCFG_Y_BUF_
 324:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 325:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 326:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 327:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return Y buffer size.
 328:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll YBUFCFG      Y_BUF_SIZE    LL_FMAC_GetYBufferSize
 329:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 330:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x01 .. 0xFF: Number of 16-bit addresses allocated to the output buffer (including the 
 331:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 332:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetYBufferSize(FMAC_TypeDef *FMACx)
 333:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 334:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->YBUFCFG, FMAC_YBUFCFG_Y_BUF_SIZE) >> FMAC_YBUFCFG_Y_BUF_SIZE_Pos
 335:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 336:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 337:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 338:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure Y base.
 339:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll YBUFCFG      Y_BASE        LL_FMAC_SetYBase
 340:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 341:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Base 0x00 .. 0xFF: Base address of the output buffer (Y) within the internal memory.
 342:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 343:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 344:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetYBase(FMAC_TypeDef *FMACx, uint8_t Base)
 345:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 346:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->YBUFCFG, FMAC_YBUFCFG_Y_BASE, ((uint32_t)Base) << FMAC_YBUFCFG_Y_BASE_Pos);
 347:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 348:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 349:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 350:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return Y base.
 351:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll YBUFCFG      Y_BASE        LL_FMAC_GetYBase
 352:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 353:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x00 .. 0xFF: Base address of the output buffer (Y) within the internal memory.
 354:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 355:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetYBase(FMAC_TypeDef *FMACx)
 356:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 357:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->YBUFCFG, FMAC_YBUFCFG_Y_BASE) >> FMAC_YBUFCFG_Y_BASE_Pos);
 358:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 359:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 360:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 361:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Start FMAC processing.
 362:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        START         LL_FMAC_EnableStart
 363:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 364:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 365:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 366:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_EnableStart(FMAC_TypeDef *FMACx)
 367:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 368:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   SET_BIT(FMACx->PARAM, FMAC_PARAM_START);
 369:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 370:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 371:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 372:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Stop FMAC processing.
 373:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        START         LL_FMAC_DisableStart
 374:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 375:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 376:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 377:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_DisableStart(FMAC_TypeDef *FMACx)
 378:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 379:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   CLEAR_BIT(FMACx->PARAM, FMAC_PARAM_START);
 380:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 381:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 382:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 383:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Check the state of FMAC processing.
 384:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        START         LL_FMAC_IsEnabledStart
 385:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 386:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval State of bit (1 or 0).
 387:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 388:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint32_t LL_FMAC_IsEnabledStart(FMAC_TypeDef *FMACx)
 389:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 390:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return ((READ_BIT(FMACx->PARAM, FMAC_PARAM_START) == (FMAC_PARAM_START)) ? 1UL : 0UL);
 391:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 392:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 393:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 394:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure function.
 395:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        FUNC          LL_FMAC_SetFunction
 396:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 397:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Function This parameter can be one of the following values:
 398:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_LOAD_X1
 399:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_LOAD_X2
 400:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_LOAD_Y
 401:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_CONVO_FIR
 402:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_IIR_DIRECT_FORM_1
 403:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 404:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 405:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetFunction(FMAC_TypeDef *FMACx, uint32_t Function)
 406:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 407:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->PARAM, FMAC_PARAM_FUNC, Function);
 408:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 409:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 410:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 411:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return function.
 412:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        FUNC          LL_FMAC_GetFunction
 413:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 414:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval Returned value can be one of the following values:
 415:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_LOAD_X1
 416:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_LOAD_X2
 417:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_LOAD_Y
 418:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_CONVO_FIR
 419:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   *         @arg @ref LL_FMAC_FUNC_IIR_DIRECT_FORM_1
 420:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 421:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint32_t LL_FMAC_GetFunction(FMAC_TypeDef *FMACx)
 422:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 423:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint32_t)(READ_BIT(FMACx->PARAM, FMAC_PARAM_FUNC));
 424:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 425:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 426:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 427:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure input parameter R.
 428:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        R             LL_FMAC_SetParamR
 429:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 430:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Param 0x00 .. 0xFF: Parameter R (gain, etc.).
 431:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 432:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 433:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetParamR(FMAC_TypeDef *FMACx, uint8_t Param)
 434:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 435:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->PARAM, FMAC_PARAM_R, ((uint32_t)Param) << FMAC_PARAM_R_Pos);
 436:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 437:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 438:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 439:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return input parameter R.
 440:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        R             LL_FMAC_GetParamR
 441:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 442:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x00 .. 0xFF: Parameter R (gain, etc.).
 443:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 444:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetParamR(FMAC_TypeDef *FMACx)
 445:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 446:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->PARAM, FMAC_PARAM_R) >> FMAC_PARAM_R_Pos);
 447:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 448:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 449:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 450:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure input parameter Q.
 451:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        Q             LL_FMAC_SetParamQ
 452:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 453:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Param 0x00 .. 0xFF: Parameter Q (vector length, etc.).
 454:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 455:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 456:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetParamQ(FMAC_TypeDef *FMACx, uint8_t Param)
 457:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 458:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->PARAM, FMAC_PARAM_Q, ((uint32_t)Param) << FMAC_PARAM_Q_Pos);
 459:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 460:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 461:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 462:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return input parameter Q.
 463:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        Q             LL_FMAC_GetParamQ
 464:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 465:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x00 .. 0xFF: Parameter Q (vector length, etc.).
 466:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 467:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetParamQ(FMAC_TypeDef *FMACx)
 468:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 469:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->PARAM, FMAC_PARAM_Q) >> FMAC_PARAM_Q_Pos);
 470:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 471:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 472:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 473:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Configure input parameter P.
 474:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        P             LL_FMAC_SetParamP
 475:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 476:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  Param 0x00 .. 0xFF: Parameter P (vector length, number of filter taps, etc.).
 477:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 478:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 479:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_SetParamP(FMAC_TypeDef *FMACx, uint8_t Param)
 480:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 481:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   MODIFY_REG(FMACx->PARAM, FMAC_PARAM_P, ((uint32_t)Param) << FMAC_PARAM_P_Pos);
 482:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 483:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 484:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 485:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Return input parameter P.
 486:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll PARAM        P             LL_FMAC_GetParamP
 487:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 488:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval 0x00 .. 0xFF: Parameter P (vector length, number of filter taps, etc.).
 489:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 490:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint8_t LL_FMAC_GetParamP(FMAC_TypeDef *FMACx)
 491:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 492:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return (uint8_t)(READ_BIT(FMACx->PARAM, FMAC_PARAM_P) >> FMAC_PARAM_P_Pos);
 493:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 494:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 495:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 496:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @}
 497:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 498:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 499:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /** @defgroup FMAC_LL_EF_Reset_Management Reset_Management
 500:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @{
 501:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 502:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 503:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 504:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Start the FMAC reset.
 505:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll CR           RESET         LL_FMAC_EnableReset
 506:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 507:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 508:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 509:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_EnableReset(FMAC_TypeDef *FMACx)
  47              		.loc 2 509 22 view .LVU6
  48              	.LBB9:
 510:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 511:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   SET_BIT(FMACx->CR, FMAC_CR_RESET);
  49              		.loc 2 511 3 view .LVU7
  50 0006 1A69     		ldr	r2, [r3, #16]
  51 0008 42F48032 		orr	r2, r2, #65536
  52 000c 1A61     		str	r2, [r3, #16]
  53              	.LVL2:
  54              	.L3:
  55              		.loc 2 511 3 is_stmt 0 view .LVU8
  56              	.LBE9:
  57              	.LBE8:
 101:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 102:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     /* Wait until flag is reset */
 103:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     while (LL_FMAC_IsEnabledReset(FMACx) != 0UL)
 104:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     {
 105:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     }
  58              		.loc 1 105 5 is_stmt 1 discriminator 1 view .LVU9
  59              	.LBB10:
  60              	.LBI10:
 512:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 513:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 514:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 515:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Interrupt the FMAC reset.
 516:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll CR           RESET         LL_FMAC_DisableReset
 517:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 518:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval None
 519:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 520:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE void LL_FMAC_DisableReset(FMAC_TypeDef *FMACx)
 521:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 522:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   CLEAR_BIT(FMACx->CR, FMAC_CR_RESET);
 523:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** }
 524:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** 
 525:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** /**
 526:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @brief  Check the state of the FMAC reset.
 527:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @rmtoll CR           RESET         LL_FMAC_IsEnabledReset
 528:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @param  FMACx FMAC instance
 529:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   * @retval State of bit (1 or 0).
 530:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   */
 531:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** __STATIC_INLINE uint32_t LL_FMAC_IsEnabledReset(FMAC_TypeDef *FMACx)
  61              		.loc 2 531 26 discriminator 1 view .LVU10
  62              	.LBB11:
 532:../../..\CubeG4\include/stm32g4xx_ll_fmac.h **** {
 533:../../..\CubeG4\include/stm32g4xx_ll_fmac.h ****   return ((READ_BIT(FMACx->CR, FMAC_CR_RESET) == (FMAC_CR_RESET)) ? 1UL : 0UL);
  63              		.loc 2 533 3 discriminator 1 view .LVU11
  64              		.loc 2 533 12 is_stmt 0 discriminator 1 view .LVU12
  65 000e 1869     		ldr	r0, [r3, #16]
  66              		.loc 2 533 73 discriminator 1 view .LVU13
  67 0010 10F48030 		ands	r0, r0, #65536
  68 0014 FBD1     		bne	.L3
  69 0016 7047     		bx	lr
  70              	.LVL3:
  71              	.L4:
  72              		.loc 2 533 73 discriminator 1 view .LVU14
  73              	.LBE11:
  74              	.LBE10:
 106:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   }
 107:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   else
 108:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   {
 109:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     status = ERROR;
  75              		.loc 1 109 12 view .LVU15
  76 0018 0120     		movs	r0, #1
  77              	.LVL4:
 110:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   }
 111:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 112:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   return (status);
  78              		.loc 1 112 3 is_stmt 1 view .LVU16
 113:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** }
  79              		.loc 1 113 1 is_stmt 0 view .LVU17
  80 001a 7047     		bx	lr
  81              	.L7:
  82              		.align	2
  83              	.L6:
  84 001c 00140240 		.word	1073878016
  85              		.cfi_endproc
  86              	.LFE237:
  88              		.section	.text.LL_FMAC_DeInit,"ax",%progbits
  89              		.align	1
  90              		.global	LL_FMAC_DeInit
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  96              	LL_FMAC_DeInit:
  97              	.LVL5:
  98              	.LFB238:
 114:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 115:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** /**
 116:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @brief  De-Initialize FMAC peripheral registers to their default reset values.
 117:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @param  FMACx FMAC Instance
 118:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   * @retval An ErrorStatus enumeration value:
 119:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *          - SUCCESS: FMAC registers are de-initialized
 120:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   *          - ERROR: FMAC registers are not de-initialized
 121:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   */
 122:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** ErrorStatus LL_FMAC_DeInit(FMAC_TypeDef *FMACx)
 123:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** {
  99              		.loc 1 123 1 is_stmt 1 view -0
 100              		.cfi_startproc
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 124:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   ErrorStatus status = SUCCESS;
 104              		.loc 1 124 3 view .LVU19
 125:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 126:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   /* Check the parameters */
 127:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   assert_param(IS_FMAC_ALL_INSTANCE(FMACx));
 105              		.loc 1 127 3 view .LVU20
 128:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 129:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   if (FMACx == FMAC)
 106              		.loc 1 129 3 view .LVU21
 107              		.loc 1 129 6 is_stmt 0 view .LVU22
 108 0000 084B     		ldr	r3, .L11
 109 0002 9842     		cmp	r0, r3
 110 0004 0BD1     		bne	.L10
 130:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   {
 131:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     /* Force FMAC reset */
 132:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_FMAC);
 111              		.loc 1 132 5 is_stmt 1 view .LVU23
 112              	.LBB16:
 113              	.LBI16:
 114              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
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
 115              		.loc 3 322 22 view .LVU24
 116              	.LVL6:
 117              	.LBB17:
 323:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 324:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1RSTR, Periphs);
 118              		.loc 3 324 3 view .LVU25
 119 0006 A3F58063 		sub	r3, r3, #1024
 120              	.LBE17:
 121              	.LBE16:
 124:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 122              		.loc 1 124 15 is_stmt 0 view .LVU26
 123 000a 0020     		movs	r0, #0
 124              	.LVL7:
 125              	.LBB19:
 126              	.LBB18:
 127              		.loc 3 324 3 view .LVU27
 128 000c 9A6A     		ldr	r2, [r3, #40]
 129 000e 42F01002 		orr	r2, r2, #16
 130 0012 9A62     		str	r2, [r3, #40]
 131              	.LVL8:
 132              		.loc 3 324 3 view .LVU28
 133              	.LBE18:
 134              	.LBE19:
 133:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 134:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     /* Release FMAC reset */
 135:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_FMAC);
 135              		.loc 1 135 5 is_stmt 1 view .LVU29
 136              	.LBB20:
 137              	.LBI20:
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
 138              		.loc 3 347 22 view .LVU30
 139              	.LBB21:
 348:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 349:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1RSTR, Periphs);
 140              		.loc 3 349 3 view .LVU31
 141 0014 9A6A     		ldr	r2, [r3, #40]
 142 0016 22F01002 		bic	r2, r2, #16
 143 001a 9A62     		str	r2, [r3, #40]
 144 001c 7047     		bx	lr
 145              	.LVL9:
 146              	.L10:
 147              		.loc 3 349 3 is_stmt 0 view .LVU32
 148              	.LBE21:
 149              	.LBE20:
 136:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   }
 137:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   else
 138:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   {
 139:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****     status = ERROR;
 150              		.loc 1 139 12 view .LVU33
 151 001e 0120     		movs	r0, #1
 152              	.LVL10:
 140:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   }
 141:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** 
 142:../../..\CubeG4\src/stm32g4xx_ll_fmac.c ****   return (status);
 153              		.loc 1 142 3 is_stmt 1 view .LVU34
 143:../../..\CubeG4\src/stm32g4xx_ll_fmac.c **** }
 154              		.loc 1 143 1 is_stmt 0 view .LVU35
 155 0020 7047     		bx	lr
 156              	.L12:
 157 0022 00BF     		.align	2
 158              	.L11:
 159 0024 00140240 		.word	1073878016
 160              		.cfi_endproc
 161              	.LFE238:
 163              		.text
 164              	.Letext0:
 165              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 166              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 167              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 168              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 169              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 170              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
