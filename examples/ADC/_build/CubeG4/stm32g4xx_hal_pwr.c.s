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
  13              		.file	"stm32g4xx_hal_pwr.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_PWR_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_PWR_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_PWR_DeInit:
  27              	.LFB325:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_pwr.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @file    stm32g4xx_hal_pwr.c
   4:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief   PWR HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *          functionalities of the Power Controller (PWR) peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           + Initialization/de-initialization functions
   9:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           + Peripheral Control functions
  10:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   ******************************************************************************
  12:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @attention
  13:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *
  14:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  15:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * All rights reserved.</center></h2>
  16:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  18:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * the "License"; You may not use this file except in compliance with the
  19:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * License. You may obtain a copy of the License at:
  20:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *                        opensource.org/licenses/BSD-3-Clause
  21:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *
  22:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   ******************************************************************************
  23:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  24:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  25:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* Includes ------------------------------------------------------------------*/
  26:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #include "stm32g4xx_hal.h"
  27:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  28:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /** @addtogroup STM32G4xx_HAL_Driver
  29:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @{
  30:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  31:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  32:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /** @defgroup PWR PWR
  33:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief PWR HAL module driver
  34:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @{
  35:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  36:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  37:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #ifdef HAL_PWR_MODULE_ENABLED
  38:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  39:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* Private typedef -----------------------------------------------------------*/
  40:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* Private define ------------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  42:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /** @defgroup PWR_Private_Defines PWR Private Defines
  43:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @{
  44:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  45:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  46:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /** @defgroup PWR_PVD_Mode_Mask PWR PVD Mode Mask
  47:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @{
  48:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  49:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #define PVD_MODE_IT               ((uint32_t)0x00010000)  /*!< Mask for interruption yielded by PVD
  50:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #define PVD_MODE_EVT              ((uint32_t)0x00020000)  /*!< Mask for event yielded by PVD thresh
  51:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #define PVD_RISING_EDGE           ((uint32_t)0x00000001)  /*!< Mask for rising edge set as PVD trig
  52:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #define PVD_FALLING_EDGE          ((uint32_t)0x00000002)  /*!< Mask for falling edge set as PVD tri
  53:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
  54:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @}
  55:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  56:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  57:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
  58:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @}
  59:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  60:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  61:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* Private macro -------------------------------------------------------------*/
  62:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* Private variables ---------------------------------------------------------*/
  63:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* Private function prototypes -----------------------------------------------*/
  64:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* Exported functions --------------------------------------------------------*/
  65:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  66:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /** @defgroup PWR_Exported_Functions PWR Exported Functions
  67:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @{
  68:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  69:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  70:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /** @defgroup PWR_Exported_Functions_Group1 Initialization and de-initialization functions
  71:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *  @brief    Initialization and de-initialization functions
  72:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *
  73:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** @verbatim
  74:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****  ===============================================================================
  75:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****               ##### Initialization and de-initialization functions #####
  76:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****  ===============================================================================
  77:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
  78:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  79:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** @endverbatim
  80:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @{
  81:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  82:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  83:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
  84:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Deinitialize the HAL PWR peripheral registers to their default reset values.
  85:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
  86:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
  87:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_DeInit(void)
  88:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
  29              		.loc 1 88 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
  89:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __HAL_RCC_PWR_FORCE_RESET();
  34              		.loc 1 89 3 view .LVU1
  35 0000 044B     		ldr	r3, .L2
  36 0002 9A6B     		ldr	r2, [r3, #56]
  37 0004 42F08052 		orr	r2, r2, #268435456
  38 0008 9A63     		str	r2, [r3, #56]
  90:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __HAL_RCC_PWR_RELEASE_RESET();
  39              		.loc 1 90 3 view .LVU2
  40 000a 9A6B     		ldr	r2, [r3, #56]
  41 000c 22F08052 		bic	r2, r2, #268435456
  42 0010 9A63     		str	r2, [r3, #56]
  91:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
  43              		.loc 1 91 1 is_stmt 0 view .LVU3
  44 0012 7047     		bx	lr
  45              	.L3:
  46              		.align	2
  47              	.L2:
  48 0014 00100240 		.word	1073876992
  49              		.cfi_endproc
  50              	.LFE325:
  52              		.section	.text.HAL_PWR_EnableBkUpAccess,"ax",%progbits
  53              		.align	1
  54              		.global	HAL_PWR_EnableBkUpAccess
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
  58              		.fpu fpv4-sp-d16
  60              	HAL_PWR_EnableBkUpAccess:
  61              	.LFB326:
  92:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
  93:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
  94:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Enable access to the backup domain
  95:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        (RTC registers, RTC backup data registers).
  96:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  After reset, the backup domain is protected against
  97:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        possible unwanted write accesses.
  98:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  RTCSEL that sets the RTC clock source selection is in the RTC back-up domain.
  99:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        In order to set or modify the RTC clock, the backup domain access must be
 100:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        disabled.
 101:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  LSEON bit that switches on and off the LSE crystal belongs as well to the
 102:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        back-up domain.
 103:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 104:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 105:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnableBkUpAccess(void)
 106:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
  62              		.loc 1 106 1 is_stmt 1 view -0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
 107:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   SET_BIT(PWR->CR1, PWR_CR1_DBP);
  67              		.loc 1 107 3 view .LVU5
  68 0000 024A     		ldr	r2, .L5
  69 0002 1368     		ldr	r3, [r2]
  70 0004 43F48073 		orr	r3, r3, #256
  71 0008 1360     		str	r3, [r2]
 108:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
  72              		.loc 1 108 1 is_stmt 0 view .LVU6
  73 000a 7047     		bx	lr
  74              	.L6:
  75              		.align	2
  76              	.L5:
  77 000c 00700040 		.word	1073770496
  78              		.cfi_endproc
  79              	.LFE326:
  81              		.section	.text.HAL_PWR_DisableBkUpAccess,"ax",%progbits
  82              		.align	1
  83              		.global	HAL_PWR_DisableBkUpAccess
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  89              	HAL_PWR_DisableBkUpAccess:
  90              	.LFB327:
 109:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 110:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 111:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Disable access to the backup domain
 112:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        (RTC registers, RTC backup data registers).
 113:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 114:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_DisableBkUpAccess(void)
 116:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
  91              		.loc 1 116 1 is_stmt 1 view -0
  92              		.cfi_startproc
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              		@ link register save eliminated.
 117:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   CLEAR_BIT(PWR->CR1, PWR_CR1_DBP);
  96              		.loc 1 117 3 view .LVU8
  97 0000 024A     		ldr	r2, .L8
  98 0002 1368     		ldr	r3, [r2]
  99 0004 23F48073 		bic	r3, r3, #256
 100 0008 1360     		str	r3, [r2]
 118:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 101              		.loc 1 118 1 is_stmt 0 view .LVU9
 102 000a 7047     		bx	lr
 103              	.L9:
 104              		.align	2
 105              	.L8:
 106 000c 00700040 		.word	1073770496
 107              		.cfi_endproc
 108              	.LFE327:
 110              		.section	.text.HAL_PWR_ConfigPVD,"ax",%progbits
 111              		.align	1
 112              		.global	HAL_PWR_ConfigPVD
 113              		.syntax unified
 114              		.thumb
 115              		.thumb_func
 116              		.fpu fpv4-sp-d16
 118              	HAL_PWR_ConfigPVD:
 119              	.LVL0:
 120              	.LFB328:
 119:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 120:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 121:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 122:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 123:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 124:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @}
 125:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 126:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 127:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 128:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 129:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /** @defgroup PWR_Exported_Functions_Group2 Peripheral Control functions
 130:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *  @brief Low Power modes configuration functions
 131:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *
 132:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** @verbatim
 133:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 134:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****  ===============================================================================
 135:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                  ##### Peripheral Control functions #####
 136:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****  ===============================================================================
 137:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 138:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****      [..]
 139:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****      *** PVD configuration ***
 140:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     =========================
 141:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
 142:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) The PVD is used to monitor the VDD power supply by comparing it to a
 143:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           threshold selected by the PVD Level (PLS[2:0] bits in PWR_CR2 register).
 144:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 145:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) PVDO flag is available to indicate if VDD/VDDA is higher or lower
 146:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           than the PVD threshold. This event is internally connected to the EXTI
 147:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           line16 and can generate an interrupt if enabled. This is done through
 148:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           __HAL_PVD_EXTI_ENABLE_IT() macro.
 149:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) The PVD is stopped in Standby mode.
 150:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 151:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 152:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     *** WakeUp pin configuration ***
 153:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     ================================
 154:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
 155:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) WakeUp pins are used to wakeup the system from Standby mode or Shutdown mode.
 156:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           The polarity of these pins can be set to configure event detection on high
 157:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           level (rising edge) or low level (falling edge).
 158:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 159:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 160:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 161:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     *** Low Power modes configuration ***
 162:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     =====================================
 163:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
 164:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       The devices feature 8 low-power modes:
 165:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Low-power Run mode: core and peripherals are running, main regulator off, low power regul
 166:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Sleep mode: Cortex-M4 core stopped, peripherals kept running, main and low power regulato
 167:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Low-power Sleep mode: Cortex-M4 core stopped, peripherals kept running, main regulator of
 168:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Stop 0 mode: all clocks are stopped except LSI and LSE, main and low power regulators on.
 169:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Stop 1 mode: all clocks are stopped except LSI and LSE, main regulator off, low power reg
 170:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Standby mode with SRAM2: all clocks are stopped except LSI and LSE, SRAM2 content preserv
 171:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Standby mode without SRAM2: all clocks are stopped except LSI and LSE, main and low power
 172:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Shutdown mode: all clocks are stopped except LSE, main and low power regulators off.
 173:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 174:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 175:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    *** Low-power run mode ***
 176:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    ==========================
 177:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
 178:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Entry: (from main run mode)
 179:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         (++) set LPR bit with HAL_PWREx_EnableLowPowerRunMode() API after having decreased the syst
 180:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 181:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Exit:
 182:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         (++) clear LPR bit then wait for REGLP bit to be reset with HAL_PWREx_DisableLowPowerRunMod
 183:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****              then can the system clock frequency be increased above 2 MHz.
 184:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 185:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 186:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    *** Sleep mode / Low-power sleep mode ***
 187:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    =========================================
 188:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
 189:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Entry:
 190:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           The Sleep mode / Low-power Sleep mode is entered thru HAL_PWR_EnterSLEEPMode() API
 191:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           in specifying whether or not the regulator is forced to low-power mode and if exit is int
 192:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_MAINREGULATOR_ON: Sleep mode (regulator in main mode).
 193:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_LOWPOWERREGULATOR_ON: Low-power sleep (regulator in low power mode).
 194:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           In the latter case, the system clock frequency must have been decreased below 2 MHz befor
 195:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_SLEEPENTRY_WFI: enter SLEEP mode with WFI instruction
 196:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_SLEEPENTRY_WFE: enter SLEEP mode with WFE instruction
 197:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 198:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) WFI Exit:
 199:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         (++) Any peripheral interrupt acknowledged by the nested vectored interrupt
 200:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****              controller (NVIC) or any wake-up event.
 201:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 202:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) WFE Exit:
 203:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         (++) Any wake-up event such as an EXTI line configured in event mode.
 204:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 205:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****          [..] When exiting the Low-power sleep mode by issuing an interrupt or a wakeup event,
 206:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****              the MCU is in Low-power Run mode.
 207:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 208:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    *** Stop 0, Stop 1 modes ***
 209:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    ===============================
 210:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
 211:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Entry:
 212:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           The Stop 0, Stop 1 modes are entered thru the following API's:
 213:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) HAL_PWREx_EnterSTOP0Mode() for mode 0 or HAL_PWREx_EnterSTOP1Mode() for mode 1 or fo
 214:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Regulator setting (applicable to HAL_PWR_EnterSTOPMode() only):
 215:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_MAINREGULATOR_ON
 216:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_LOWPOWERREGULATOR_ON
 217:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Exit (interrupt or event-triggered, specified when entering STOP mode):
 218:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_STOPENTRY_WFI: enter Stop mode with WFI instruction
 219:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) PWR_STOPENTRY_WFE: enter Stop mode with WFE instruction
 220:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 221:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) WFI Exit:
 222:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) Any EXTI Line (Internal or External) configured in Interrupt mode.
 223:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) Some specific communication peripherals (USART, LPUART, I2C) interrupts
 224:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                when programmed in wakeup mode.
 225:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) WFE Exit:
 226:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) Any EXTI Line (Internal or External) configured in Event mode.
 227:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 228:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****        [..]
 229:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           When exiting Stop 0 and Stop 1 modes, the MCU is either in Run mode or in Low-power Run m
 230:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           depending on the LPR bit setting.
 231:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 232:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    *** Standby mode ***
 233:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    ====================
 234:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****      [..]
 235:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       The Standby mode offers two options:
 236:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) option a) all clocks off except LSI and LSE, RRS bit set (keeps voltage regulator in low 
 237:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         SRAM and registers contents are lost except for the SRAM2 content, the RTC registers, RTC b
 238:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         and Standby circuitry.
 239:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) option b) all clocks off except LSI and LSE, RRS bit cleared (voltage regulator then disa
 240:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         SRAM and register contents are lost except for the RTC registers, RTC backup registers
 241:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         and Standby circuitry.
 242:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 243:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (++) Entry:
 244:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (+++) The Standby mode is entered thru HAL_PWR_EnterSTANDBYMode() API.
 245:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                 SRAM1 and register contents are lost except for registers in the Backup domain and
 246:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                 Standby circuitry. SRAM2 content can be preserved if the bit RRS is set in PWR_CR3 
 247:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                 To enable this feature, the user can resort to HAL_PWREx_EnableSRAM2ContentRetentio
 248:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                 to set RRS bit.
 249:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 250:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (++) Exit:
 251:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (+++) WKUP pin rising edge, RTC alarm or wakeup, tamper event, time-stamp event,
 252:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                 external reset in NRST pin, IWDG reset.
 253:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 254:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       [..]    After waking up from Standby mode, program execution restarts in the same way as afte
 255:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 256:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 257:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     *** Shutdown mode ***
 258:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    ======================
 259:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****      [..]
 260:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       In Shutdown mode,
 261:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         voltage regulator is disabled, all clocks are off except LSE, RRS bit is cleared.
 262:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         SRAM and registers contents are lost except for backup domain registers.
 263:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 264:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Entry:
 265:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           The Shutdown mode is entered thru HAL_PWREx_EnterSHUTDOWNMode() API.
 266:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 267:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) Exit:
 268:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****           (++) WKUP pin rising edge, RTC alarm or wakeup, tamper event, time-stamp event,
 269:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****                external reset in NRST pin.
 270:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 271:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****          [..] After waking up from Shutdown mode, program execution restarts in the same way as aft
 272:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 273:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 274:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    *** Auto-wakeup (AWU) from low-power mode ***
 275:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    =============================================
 276:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     [..]
 277:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       The MCU can be woken up from low-power mode by an RTC Alarm event, an RTC
 278:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       Wakeup event, a tamper event or a time-stamp event, without depending on
 279:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       an external interrupt (Auto-wakeup mode).
 280:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 281:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (+) RTC auto-wakeup (AWU) from the Stop, Standby and Shutdown modes
 282:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 283:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 284:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         (++) To wake up from the Stop mode with an RTC alarm event, it is necessary to
 285:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****              configure the RTC to generate the RTC alarm using the HAL_RTC_SetAlarm_IT() function.
 286:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 287:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         (++) To wake up from the Stop mode with an RTC Tamper or time stamp event, it
 288:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****              is necessary to configure the RTC to detect the tamper or time stamp event using the
 289:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****              HAL_RTCEx_SetTimeStamp_IT() or HAL_RTCEx_SetTamper_IT() functions.
 290:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 291:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****         (++) To wake up from the Stop mode with an RTC WakeUp event, it is necessary to
 292:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****               configure the RTC to generate the RTC WakeUp event using the HAL_RTCEx_SetWakeUpTimer
 293:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 294:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** @endverbatim
 295:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @{
 296:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 297:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 298:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 299:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 300:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 301:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Configure the voltage threshold detected by the Power Voltage Detector (PVD).
 302:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @param sConfigPVD: pointer to a PWR_PVDTypeDef structure that contains the PVD
 303:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        configuration information.
 304:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note Refer to the electrical characteristics of your device datasheet for
 305:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         more details about the voltage thresholds corresponding to each
 306:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         detection level.
 307:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 308:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 309:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** HAL_StatusTypeDef HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD)
 310:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 121              		.loc 1 310 1 is_stmt 1 view -0
 122              		.cfi_startproc
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 311:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Check the parameters */
 312:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   assert_param(IS_PWR_PVD_LEVEL(sConfigPVD->PVDLevel));
 126              		.loc 1 312 3 view .LVU11
 313:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   assert_param(IS_PWR_PVD_MODE(sConfigPVD->Mode));
 127              		.loc 1 313 3 view .LVU12
 314:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 315:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Set PLS bits according to PVDLevel value */
 316:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   MODIFY_REG(PWR->CR2, PWR_CR2_PLS, sConfigPVD->PVDLevel);
 128              		.loc 1 316 3 view .LVU13
 129 0000 194A     		ldr	r2, .L27
 130 0002 0168     		ldr	r1, [r0]
 131 0004 5368     		ldr	r3, [r2, #4]
 132 0006 23F00E03 		bic	r3, r3, #14
 133 000a 0B43     		orrs	r3, r3, r1
 134 000c 5360     		str	r3, [r2, #4]
 317:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 318:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Clear any previous config. Keep it clear if no event or IT mode is selected */
 319:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_EVENT();
 135              		.loc 1 319 3 view .LVU14
 136 000e 174B     		ldr	r3, .L27+4
 137 0010 5A68     		ldr	r2, [r3, #4]
 138 0012 22F48032 		bic	r2, r2, #65536
 139 0016 5A60     		str	r2, [r3, #4]
 320:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_IT();
 140              		.loc 1 320 3 view .LVU15
 141 0018 1A68     		ldr	r2, [r3]
 142 001a 22F48032 		bic	r2, r2, #65536
 143 001e 1A60     		str	r2, [r3]
 321:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_FALLING_EDGE();
 144              		.loc 1 321 3 view .LVU16
 145 0020 DA68     		ldr	r2, [r3, #12]
 146 0022 22F48032 		bic	r2, r2, #65536
 147 0026 DA60     		str	r2, [r3, #12]
 322:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __HAL_PWR_PVD_EXTI_DISABLE_RISING_EDGE();
 148              		.loc 1 322 3 view .LVU17
 149 0028 9A68     		ldr	r2, [r3, #8]
 150 002a 22F48032 		bic	r2, r2, #65536
 151 002e 9A60     		str	r2, [r3, #8]
 323:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 324:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Configure interrupt mode */
 325:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_MODE_IT) == PVD_MODE_IT)
 152              		.loc 1 325 3 view .LVU18
 153              		.loc 1 325 17 is_stmt 0 view .LVU19
 154 0030 4268     		ldr	r2, [r0, #4]
 155              		.loc 1 325 5 view .LVU20
 156 0032 D103     		lsls	r1, r2, #15
 326:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 327:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_IT();
 157              		.loc 1 327 5 is_stmt 1 view .LVU21
 158 0034 42BF     		ittt	mi
 159 0036 1968     		ldrmi	r1, [r3]
 160 0038 41F48031 		orrmi	r1, r1, #65536
 161 003c 1960     		strmi	r1, [r3]
 328:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 329:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 330:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Configure event mode */
 331:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_MODE_EVT) == PVD_MODE_EVT)
 162              		.loc 1 331 3 view .LVU22
 163              		.loc 1 331 5 is_stmt 0 view .LVU23
 164 003e 9003     		lsls	r0, r2, #14
 165              	.LVL1:
 332:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 333:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_EVENT();
 166              		.loc 1 333 5 is_stmt 1 view .LVU24
 167 0040 42BF     		ittt	mi
 168 0042 5968     		ldrmi	r1, [r3, #4]
 169 0044 41F48031 		orrmi	r1, r1, #65536
 170 0048 5960     		strmi	r1, [r3, #4]
 334:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 335:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 336:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Configure the edge */
 337:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_RISING_EDGE) == PVD_RISING_EDGE)
 171              		.loc 1 337 3 view .LVU25
 172              		.loc 1 337 5 is_stmt 0 view .LVU26
 173 004a D107     		lsls	r1, r2, #31
 338:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 339:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_RISING_EDGE();
 174              		.loc 1 339 5 is_stmt 1 view .LVU27
 175 004c 42BF     		ittt	mi
 176 004e 9968     		ldrmi	r1, [r3, #8]
 177 0050 41F48031 		orrmi	r1, r1, #65536
 178 0054 9960     		strmi	r1, [r3, #8]
 340:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 341:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 342:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   if((sConfigPVD->Mode & PVD_FALLING_EDGE) == PVD_FALLING_EDGE)
 179              		.loc 1 342 3 view .LVU28
 180              		.loc 1 342 5 is_stmt 0 view .LVU29
 181 0056 9207     		lsls	r2, r2, #30
 343:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 344:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __HAL_PWR_PVD_EXTI_ENABLE_FALLING_EDGE();
 182              		.loc 1 344 5 is_stmt 1 view .LVU30
 183 0058 42BF     		ittt	mi
 184 005a DA68     		ldrmi	r2, [r3, #12]
 185 005c 42F48032 		orrmi	r2, r2, #65536
 186 0060 DA60     		strmi	r2, [r3, #12]
 345:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 346:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 347:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   return HAL_OK;
 187              		.loc 1 347 3 view .LVU31
 348:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 188              		.loc 1 348 1 is_stmt 0 view .LVU32
 189 0062 0020     		movs	r0, #0
 190 0064 7047     		bx	lr
 191              	.L28:
 192 0066 00BF     		.align	2
 193              	.L27:
 194 0068 00700040 		.word	1073770496
 195 006c 00040140 		.word	1073808384
 196              		.cfi_endproc
 197              	.LFE328:
 199              		.section	.text.HAL_PWR_EnablePVD,"ax",%progbits
 200              		.align	1
 201              		.global	HAL_PWR_EnablePVD
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 207              	HAL_PWR_EnablePVD:
 208              	.LFB329:
 349:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 350:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 351:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 352:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Enable the Power Voltage Detector (PVD).
 353:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 354:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 355:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnablePVD(void)
 356:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 209              		.loc 1 356 1 is_stmt 1 view -0
 210              		.cfi_startproc
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 357:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   SET_BIT(PWR->CR2, PWR_CR2_PVDE);
 214              		.loc 1 357 3 view .LVU34
 215 0000 024A     		ldr	r2, .L30
 216 0002 5368     		ldr	r3, [r2, #4]
 217 0004 43F00103 		orr	r3, r3, #1
 218 0008 5360     		str	r3, [r2, #4]
 358:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 219              		.loc 1 358 1 is_stmt 0 view .LVU35
 220 000a 7047     		bx	lr
 221              	.L31:
 222              		.align	2
 223              	.L30:
 224 000c 00700040 		.word	1073770496
 225              		.cfi_endproc
 226              	.LFE329:
 228              		.section	.text.HAL_PWR_DisablePVD,"ax",%progbits
 229              		.align	1
 230              		.global	HAL_PWR_DisablePVD
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu fpv4-sp-d16
 236              	HAL_PWR_DisablePVD:
 237              	.LFB330:
 359:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 360:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 361:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Disable the Power Voltage Detector (PVD).
 362:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 363:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 364:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_DisablePVD(void)
 365:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 238              		.loc 1 365 1 is_stmt 1 view -0
 239              		.cfi_startproc
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242              		@ link register save eliminated.
 366:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   CLEAR_BIT(PWR->CR2, PWR_CR2_PVDE);
 243              		.loc 1 366 3 view .LVU37
 244 0000 024A     		ldr	r2, .L33
 245 0002 5368     		ldr	r3, [r2, #4]
 246 0004 23F00103 		bic	r3, r3, #1
 247 0008 5360     		str	r3, [r2, #4]
 367:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 248              		.loc 1 367 1 is_stmt 0 view .LVU38
 249 000a 7047     		bx	lr
 250              	.L34:
 251              		.align	2
 252              	.L33:
 253 000c 00700040 		.word	1073770496
 254              		.cfi_endproc
 255              	.LFE330:
 257              		.section	.text.HAL_PWR_EnableWakeUpPin,"ax",%progbits
 258              		.align	1
 259              		.global	HAL_PWR_EnableWakeUpPin
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu fpv4-sp-d16
 265              	HAL_PWR_EnableWakeUpPin:
 266              	.LVL2:
 267              	.LFB331:
 368:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 369:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 370:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 371:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 372:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 373:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Enable the WakeUp PINx functionality.
 374:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @param WakeUpPinPolarity: Specifies which Wake-Up pin to enable.
 375:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         This parameter can be one of the following legacy values which set the default polarity
 376:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         i.e. detection on high level (rising edge):
 377:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           @arg @ref PWR_WAKEUP_PIN1, PWR_WAKEUP_PIN2, PWR_WAKEUP_PIN3, PWR_WAKEUP_PIN4, PWR_WAK
 378:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *
 379:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         or one of the following value where the user can explicitly specify the enabled pin and
 380:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         the chosen polarity:
 381:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           @arg @ref PWR_WAKEUP_PIN1_HIGH or PWR_WAKEUP_PIN1_LOW
 382:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           @arg @ref PWR_WAKEUP_PIN2_HIGH or PWR_WAKEUP_PIN2_LOW
 383:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           @arg @ref PWR_WAKEUP_PIN3_HIGH or PWR_WAKEUP_PIN3_LOW
 384:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           @arg @ref PWR_WAKEUP_PIN4_HIGH or PWR_WAKEUP_PIN4_LOW
 385:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           @arg @ref PWR_WAKEUP_PIN5_HIGH or PWR_WAKEUP_PIN5_LOW
 386:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  PWR_WAKEUP_PINx and PWR_WAKEUP_PINx_HIGH are equivalent.
 387:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 388:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 389:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinPolarity)
 390:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 268              		.loc 1 390 1 is_stmt 1 view -0
 269              		.cfi_startproc
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              		@ link register save eliminated.
 391:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   assert_param(IS_PWR_WAKEUP_PIN(WakeUpPinPolarity));
 273              		.loc 1 391 3 view .LVU40
 392:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 393:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Specifies the Wake-Up pin polarity for the event detection
 394:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     (rising or falling edge) */
 395:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   MODIFY_REG(PWR->CR4, (PWR_CR3_EWUP & WakeUpPinPolarity), (WakeUpPinPolarity >> PWR_WUP_POLARITY_S
 274              		.loc 1 395 3 view .LVU41
 275 0000 064A     		ldr	r2, .L36
 276 0002 D368     		ldr	r3, [r2, #12]
 277 0004 00F01F01 		and	r1, r0, #31
 278 0008 23EA0103 		bic	r3, r3, r1
 279 000c 43EA5013 		orr	r3, r3, r0, lsr #5
 280 0010 D360     		str	r3, [r2, #12]
 396:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 397:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Enable wake-up pin */
 398:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   SET_BIT(PWR->CR3, (PWR_CR3_EWUP & WakeUpPinPolarity));
 281              		.loc 1 398 3 view .LVU42
 282 0012 9368     		ldr	r3, [r2, #8]
 283 0014 1943     		orrs	r1, r1, r3
 284 0016 9160     		str	r1, [r2, #8]
 399:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 400:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 401:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 285              		.loc 1 401 1 is_stmt 0 view .LVU43
 286 0018 7047     		bx	lr
 287              	.L37:
 288 001a 00BF     		.align	2
 289              	.L36:
 290 001c 00700040 		.word	1073770496
 291              		.cfi_endproc
 292              	.LFE331:
 294              		.section	.text.HAL_PWR_DisableWakeUpPin,"ax",%progbits
 295              		.align	1
 296              		.global	HAL_PWR_DisableWakeUpPin
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu fpv4-sp-d16
 302              	HAL_PWR_DisableWakeUpPin:
 303              	.LVL3:
 304              	.LFB332:
 402:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 403:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 404:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Disable the WakeUp PINx functionality.
 405:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @param WakeUpPinx: Specifies the Power Wake-Up pin to disable.
 406:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         This parameter can be one of the following values:
 407:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           @arg @ref PWR_WAKEUP_PIN1, PWR_WAKEUP_PIN2, PWR_WAKEUP_PIN3, PWR_WAKEUP_PIN4, PWR_WAK
 408:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 409:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 410:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx)
 411:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 305              		.loc 1 411 1 is_stmt 1 view -0
 306              		.cfi_startproc
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              		@ link register save eliminated.
 412:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   assert_param(IS_PWR_WAKEUP_PIN(WakeUpPinx));
 310              		.loc 1 412 3 view .LVU45
 413:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 414:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   CLEAR_BIT(PWR->CR3, (PWR_CR3_EWUP & WakeUpPinx));
 311              		.loc 1 414 3 view .LVU46
 312 0000 034A     		ldr	r2, .L39
 313 0002 9368     		ldr	r3, [r2, #8]
 314 0004 00F01F00 		and	r0, r0, #31
 315              	.LVL4:
 316              		.loc 1 414 3 is_stmt 0 view .LVU47
 317 0008 23EA0003 		bic	r3, r3, r0
 318 000c 9360     		str	r3, [r2, #8]
 415:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 319              		.loc 1 415 1 view .LVU48
 320 000e 7047     		bx	lr
 321              	.L40:
 322              		.align	2
 323              	.L39:
 324 0010 00700040 		.word	1073770496
 325              		.cfi_endproc
 326              	.LFE332:
 328              		.section	.text.HAL_PWR_EnterSLEEPMode,"ax",%progbits
 329              		.align	1
 330              		.global	HAL_PWR_EnterSLEEPMode
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu fpv4-sp-d16
 336              	HAL_PWR_EnterSLEEPMode:
 337              	.LVL5:
 338              	.LFB333:
 416:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 417:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 418:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 419:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Enter Sleep or Low-power Sleep mode.
 420:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  In Sleep/Low-power Sleep mode, all I/O pins keep the same state as in Run mode.
 421:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @param Regulator: Specifies the regulator state in Sleep/Low-power Sleep mode.
 422:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *          This parameter can be one of the following values:
 423:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_MAINREGULATOR_ON Sleep mode (regulator in main mode)
 424:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_LOWPOWERREGULATOR_ON Low-power Sleep mode (regulator in low-power mode
 425:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  Low-power Sleep mode is entered from Low-power Run mode. Therefore, if not yet
 426:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        in Low-power Run mode before calling HAL_PWR_EnterSLEEPMode() with Regulator set
 427:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        to PWR_LOWPOWERREGULATOR_ON, the user can optionally configure the
 428:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        Flash in power-down monde in setting the SLEEP_PD bit in FLASH_ACR register.
 429:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        Additionally, the clock frequency must be reduced below 2 MHz.
 430:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        Setting SLEEP_PD in FLASH_ACR then appropriately reducing the clock frequency must
 431:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        be done before calling HAL_PWR_EnterSLEEPMode() API.
 432:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  When exiting Low-power Sleep mode, the MCU is in Low-power Run mode. To move in
 433:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        Run mode, the user must resort to HAL_PWREx_DisableLowPowerRunMode() API.
 434:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @param SLEEPEntry: Specifies if Sleep mode is entered with WFI or WFE instruction.
 435:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *           This parameter can be one of the following values:
 436:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_SLEEPENTRY_WFI enter Sleep or Low-power Sleep mode with WFI instructio
 437:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_SLEEPENTRY_WFE enter Sleep or Low-power Sleep mode with WFE instructio
 438:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  When WFI entry is used, tick interrupt have to be disabled if not desired as
 439:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        the interrupt wake up source.
 440:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 441:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 442:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry)
 443:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 339              		.loc 1 443 1 is_stmt 1 view -0
 340              		.cfi_startproc
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
 444:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Check the parameters */
 445:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   assert_param(IS_PWR_REGULATOR(Regulator));
 343              		.loc 1 445 3 view .LVU50
 446:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   assert_param(IS_PWR_SLEEP_ENTRY(SLEEPEntry));
 344              		.loc 1 446 3 view .LVU51
 447:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 448:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Set Regulator parameter */
 449:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   if (Regulator == PWR_MAINREGULATOR_ON)
 345              		.loc 1 449 3 view .LVU52
 346 0000 0D4B     		ldr	r3, .L49
 443:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Check the parameters */
 347              		.loc 1 443 1 is_stmt 0 view .LVU53
 348 0002 10B5     		push	{r4, lr}
 349              		.cfi_def_cfa_offset 8
 350              		.cfi_offset 4, -8
 351              		.cfi_offset 14, -4
 450:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 451:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     /* If in low-power run mode at this point, exit it */
 452:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     if (HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_REGLPF))
 352              		.loc 1 452 9 view .LVU54
 353 0004 5B69     		ldr	r3, [r3, #20]
 443:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Check the parameters */
 354              		.loc 1 443 1 view .LVU55
 355 0006 0C46     		mov	r4, r1
 449:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 356              		.loc 1 449 6 view .LVU56
 357 0008 60B9     		cbnz	r0, .L42
 358              		.loc 1 452 5 is_stmt 1 view .LVU57
 359              		.loc 1 452 8 is_stmt 0 view .LVU58
 360 000a 9A05     		lsls	r2, r3, #22
 361 000c 01D5     		bpl	.L43
 453:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     {
 454:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       (void)HAL_PWREx_DisableLowPowerRunMode();
 362              		.loc 1 454 7 is_stmt 1 view .LVU59
 363              		.loc 1 454 13 is_stmt 0 view .LVU60
 364 000e FFF7FEFF 		bl	HAL_PWREx_DisableLowPowerRunMode
 365              	.LVL6:
 366              	.L43:
 455:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     }
 456:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     /* Regulator now in main mode. */
 457:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 458:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   else
 459:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 460:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     /* If in run mode, first move to low-power run mode.
 461:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****        The system clock frequency must be below 2 MHz at this point. */
 462:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     if (HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_REGLPF) == 0U)
 463:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     {
 464:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****       HAL_PWREx_EnableLowPowerRunMode();
 465:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     }
 466:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 467:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 468:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Clear SLEEPDEEP bit of Cortex System Control Register */
 469:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 367              		.loc 1 469 3 is_stmt 1 view .LVU61
 368 0012 0A4A     		ldr	r2, .L49+4
 369 0014 1369     		ldr	r3, [r2, #16]
 470:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 471:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Select SLEEP mode entry -------------------------------------------------*/
 472:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   if(SLEEPEntry == PWR_SLEEPENTRY_WFI)
 370              		.loc 1 472 5 is_stmt 0 view .LVU62
 371 0016 012C     		cmp	r4, #1
 469:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 372              		.loc 1 469 3 view .LVU63
 373 0018 23F00403 		bic	r3, r3, #4
 374 001c 1361     		str	r3, [r2, #16]
 375              		.loc 1 472 3 is_stmt 1 view .LVU64
 376              		.loc 1 472 5 is_stmt 0 view .LVU65
 377 001e 06D1     		bne	.L44
 473:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 474:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     /* Request Wait For Interrupt */
 475:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __WFI();
 378              		.loc 1 475 5 is_stmt 1 view .LVU66
 379              		.syntax unified
 380              	@ 475 "../../..\CubeG4\src\stm32g4xx_hal_pwr.c" 1
 381 0020 30BF     		wfi
 382              	@ 0 "" 2
 383              		.thumb
 384              		.syntax unified
 385              	.L41:
 476:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 477:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   else
 478:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 479:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     /* Request Wait For Event */
 480:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __SEV();
 481:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __WFE();
 482:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __WFE();
 483:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 484:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 485:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 386              		.loc 1 485 1 is_stmt 0 view .LVU67
 387 0022 10BD     		pop	{r4, pc}
 388              	.LVL7:
 389              	.L42:
 462:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     {
 390              		.loc 1 462 5 is_stmt 1 view .LVU68
 462:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     {
 391              		.loc 1 462 8 is_stmt 0 view .LVU69
 392 0024 9B05     		lsls	r3, r3, #22
 393 0026 F4D4     		bmi	.L43
 464:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     }
 394              		.loc 1 464 7 is_stmt 1 view .LVU70
 395 0028 FFF7FEFF 		bl	HAL_PWREx_EnableLowPowerRunMode
 396              	.LVL8:
 464:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     }
 397              		.loc 1 464 7 is_stmt 0 view .LVU71
 398 002c F1E7     		b	.L43
 399              	.L44:
 480:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __WFE();
 400              		.loc 1 480 5 is_stmt 1 view .LVU72
 401              		.syntax unified
 402              	@ 480 "../../..\CubeG4\src\stm32g4xx_hal_pwr.c" 1
 403 002e 40BF     		sev
 404              	@ 0 "" 2
 481:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     __WFE();
 405              		.loc 1 481 5 view .LVU73
 406              	@ 481 "../../..\CubeG4\src\stm32g4xx_hal_pwr.c" 1
 407 0030 20BF     		wfe
 408              	@ 0 "" 2
 482:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 409              		.loc 1 482 5 view .LVU74
 410              	@ 482 "../../..\CubeG4\src\stm32g4xx_hal_pwr.c" 1
 411 0032 20BF     		wfe
 412              	@ 0 "" 2
 413              		.loc 1 485 1 is_stmt 0 view .LVU75
 414              		.thumb
 415              		.syntax unified
 416 0034 F5E7     		b	.L41
 417              	.L50:
 418 0036 00BF     		.align	2
 419              	.L49:
 420 0038 00700040 		.word	1073770496
 421 003c 00ED00E0 		.word	-536810240
 422              		.cfi_endproc
 423              	.LFE333:
 425              		.section	.text.HAL_PWR_EnterSTOPMode,"ax",%progbits
 426              		.align	1
 427              		.global	HAL_PWR_EnterSTOPMode
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu fpv4-sp-d16
 433              	HAL_PWR_EnterSTOPMode:
 434              	.LVL9:
 435              	.LFB334:
 486:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 487:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 488:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 489:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Enter Stop mode
 490:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  This API is named HAL_PWR_EnterSTOPMode to ensure compatibility with legacy code running
 491:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        on devices where only "Stop mode" is mentioned with main or low power regulator ON.
 492:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  In Stop mode, all I/O pins keep the same state as in Run mode.
 493:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  All clocks in the VCORE domain are stopped; the PLL,
 494:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        the HSI and the HSE oscillators are disabled. Some peripherals with the wakeup capabilit
 495:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        (I2Cx, USARTx and LPUART) can switch on the HSI to receive a frame, and switch off the H
 496:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        after receiving the frame if it is not a wakeup frame. In this case, the HSI clock is pr
 497:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        only to the peripheral requesting it.
 498:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        SRAM1, SRAM2 and register contents are preserved.
 499:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        The BOR is available.
 500:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        The voltage regulator can be configured either in normal (Stop 0) or low-power mode (Sto
 501:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  When exiting Stop 0 or Stop 1 mode by issuing an interrupt or a wakeup event,
 502:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         the HSI RC oscillator is selected as system clock.
 503:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  When the voltage regulator operates in low power mode (Stop 1), an additional
 504:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         startup delay is incurred when waking up.
 505:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         By keeping the internal regulator ON during Stop mode (Stop 0), the consumption
 506:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *         is higher although the startup time is reduced.
 507:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @param Regulator: Specifies the regulator state in Stop mode.
 508:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *          This parameter can be one of the following values:
 509:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_MAINREGULATOR_ON  Stop 0 mode (main regulator ON)
 510:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_LOWPOWERREGULATOR_ON  Stop 1 mode (low power regulator ON)
 511:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @param STOPEntry: Specifies Stop 0 or Stop 1 mode is entered with WFI or WFE instruction.
 512:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *          This parameter can be one of the following values:
 513:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_STOPENTRY_WFI  Enter Stop 0 or Stop 1 mode with WFI instruction.
 514:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *            @arg @ref PWR_STOPENTRY_WFE  Enter Stop 0 or Stop 1 mode with WFE instruction.
 515:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 516:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 517:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry)
 518:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 436              		.loc 1 518 1 is_stmt 1 view -0
 437              		.cfi_startproc
 438              		@ args = 0, pretend = 0, frame = 0
 439              		@ frame_needed = 0, uses_anonymous_args = 0
 440              		@ link register save eliminated.
 519:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Check the parameters */
 520:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   assert_param(IS_PWR_REGULATOR(Regulator));
 441              		.loc 1 520 3 view .LVU77
 521:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 522:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   if(Regulator == PWR_LOWPOWERREGULATOR_ON)
 442              		.loc 1 522 3 view .LVU78
 443              		.loc 1 522 5 is_stmt 0 view .LVU79
 444 0000 B0F5804F 		cmp	r0, #16384
 523:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 524:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     HAL_PWREx_EnterSTOP1Mode(STOPEntry);
 445              		.loc 1 524 5 view .LVU80
 446 0004 0846     		mov	r0, r1
 447              	.LVL10:
 522:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 448              		.loc 1 522 5 view .LVU81
 449 0006 01D1     		bne	.L52
 450              		.loc 1 524 5 is_stmt 1 view .LVU82
 451 0008 FFF7FEBF 		b	HAL_PWREx_EnterSTOP1Mode
 452              	.LVL11:
 453              	.L52:
 525:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 526:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   else
 527:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   {
 528:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****     HAL_PWREx_EnterSTOP0Mode(STOPEntry);
 454              		.loc 1 528 5 view .LVU83
 455 000c FFF7FEBF 		b	HAL_PWREx_EnterSTOP0Mode
 456              	.LVL12:
 457              		.loc 1 528 5 is_stmt 0 view .LVU84
 458              		.cfi_endproc
 459              	.LFE334:
 461              		.section	.text.HAL_PWR_EnterSTANDBYMode,"ax",%progbits
 462              		.align	1
 463              		.global	HAL_PWR_EnterSTANDBYMode
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu fpv4-sp-d16
 469              	HAL_PWR_EnterSTANDBYMode:
 470              	.LFB335:
 529:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   }
 530:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 531:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 532:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 533:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Enter Standby mode.
 534:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  In Standby mode, the PLL, the HSI and the HSE oscillators are switched
 535:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        off. The voltage regulator is disabled, except when SRAM2 content is preserved
 536:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        in which case the regulator is in low-power mode.
 537:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        SRAM1 and register contents are lost except for registers in the Backup domain and
 538:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        Standby circuitry. SRAM2 content can be preserved if the bit RRS is set in PWR_CR3 regis
 539:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        To enable this feature, the user can resort to HAL_PWREx_EnableSRAM2ContentRetention() A
 540:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        to set RRS bit.
 541:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        The BOR is available.
 542:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note  The I/Os can be configured either with a pull-up or pull-down or can be kept in analog s
 543:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        HAL_PWREx_EnableGPIOPullUp() and HAL_PWREx_EnableGPIOPullDown() respectively enable Pull
 544:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        Pull Down state, HAL_PWREx_DisableGPIOPullUp() and HAL_PWREx_DisableGPIOPullDown() disab
 545:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        same.
 546:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        These states are effective in Standby mode only if APC bit is set through
 547:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *        HAL_PWREx_EnablePullUpPullDownConfig() API.
 548:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 549:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 550:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnterSTANDBYMode(void)
 551:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 471              		.loc 1 551 1 is_stmt 1 view -0
 472              		.cfi_startproc
 473              		@ args = 0, pretend = 0, frame = 0
 474              		@ frame_needed = 0, uses_anonymous_args = 0
 475              		@ link register save eliminated.
 552:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Set Stand-by mode */
 553:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   MODIFY_REG(PWR->CR1, PWR_CR1_LPMS, PWR_CR1_LPMS_STANDBY);
 476              		.loc 1 553 3 view .LVU86
 477 0000 064A     		ldr	r2, .L54
 478 0002 1368     		ldr	r3, [r2]
 479 0004 23F00703 		bic	r3, r3, #7
 480 0008 43F00303 		orr	r3, r3, #3
 481 000c 1360     		str	r3, [r2]
 554:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 555:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Set SLEEPDEEP bit of Cortex System Control Register */
 556:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 482              		.loc 1 556 3 view .LVU87
 483 000e 044A     		ldr	r2, .L54+4
 484 0010 1369     		ldr	r3, [r2, #16]
 485 0012 43F00403 		orr	r3, r3, #4
 486 0016 1361     		str	r3, [r2, #16]
 557:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 558:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /* This option is used to ensure that store operations are completed */
 559:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #if defined ( __CC_ARM)
 560:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __force_stores();
 561:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** #endif
 562:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Request Wait For Interrupt */
 563:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   __WFI();
 487              		.loc 1 563 3 view .LVU88
 488              		.syntax unified
 489              	@ 563 "../../..\CubeG4\src\stm32g4xx_hal_pwr.c" 1
 490 0018 30BF     		wfi
 491              	@ 0 "" 2
 564:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 492              		.loc 1 564 1 is_stmt 0 view .LVU89
 493              		.thumb
 494              		.syntax unified
 495 001a 7047     		bx	lr
 496              	.L55:
 497              		.align	2
 498              	.L54:
 499 001c 00700040 		.word	1073770496
 500 0020 00ED00E0 		.word	-536810240
 501              		.cfi_endproc
 502              	.LFE335:
 504              		.section	.text.HAL_PWR_EnableSleepOnExit,"ax",%progbits
 505              		.align	1
 506              		.global	HAL_PWR_EnableSleepOnExit
 507              		.syntax unified
 508              		.thumb
 509              		.thumb_func
 510              		.fpu fpv4-sp-d16
 512              	HAL_PWR_EnableSleepOnExit:
 513              	.LFB336:
 565:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 566:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 567:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 568:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 569:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Indicate Sleep-On-Exit when returning from Handler mode to Thread mode.
 570:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note Set SLEEPONEXIT bit of SCR register. When this bit is set, the processor
 571:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *       re-enters SLEEP mode when an interruption handling is over.
 572:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *       Setting this bit is useful when the processor is expected to run only on
 573:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *       interruptions handling.
 574:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 575:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 576:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnableSleepOnExit(void)
 577:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 514              		.loc 1 577 1 is_stmt 1 view -0
 515              		.cfi_startproc
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518              		@ link register save eliminated.
 578:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Set SLEEPONEXIT bit of Cortex System Control Register */
 579:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPONEXIT_Msk));
 519              		.loc 1 579 3 view .LVU91
 520 0000 024A     		ldr	r2, .L57
 521 0002 1369     		ldr	r3, [r2, #16]
 522 0004 43F00203 		orr	r3, r3, #2
 523 0008 1361     		str	r3, [r2, #16]
 580:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 524              		.loc 1 580 1 is_stmt 0 view .LVU92
 525 000a 7047     		bx	lr
 526              	.L58:
 527              		.align	2
 528              	.L57:
 529 000c 00ED00E0 		.word	-536810240
 530              		.cfi_endproc
 531              	.LFE336:
 533              		.section	.text.HAL_PWR_DisableSleepOnExit,"ax",%progbits
 534              		.align	1
 535              		.global	HAL_PWR_DisableSleepOnExit
 536              		.syntax unified
 537              		.thumb
 538              		.thumb_func
 539              		.fpu fpv4-sp-d16
 541              	HAL_PWR_DisableSleepOnExit:
 542              	.LFB337:
 581:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 582:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 583:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 584:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Disable Sleep-On-Exit feature when returning from Handler mode to Thread mode.
 585:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note Clear SLEEPONEXIT bit of SCR register. When this bit is set, the processor
 586:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *       re-enters SLEEP mode when an interruption handling is over.
 587:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 588:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 589:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_DisableSleepOnExit(void)
 590:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 543              		.loc 1 590 1 is_stmt 1 view -0
 544              		.cfi_startproc
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547              		@ link register save eliminated.
 591:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Clear SLEEPONEXIT bit of Cortex System Control Register */
 592:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPONEXIT_Msk));
 548              		.loc 1 592 3 view .LVU94
 549 0000 024A     		ldr	r2, .L60
 550 0002 1369     		ldr	r3, [r2, #16]
 551 0004 23F00203 		bic	r3, r3, #2
 552 0008 1361     		str	r3, [r2, #16]
 593:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 553              		.loc 1 593 1 is_stmt 0 view .LVU95
 554 000a 7047     		bx	lr
 555              	.L61:
 556              		.align	2
 557              	.L60:
 558 000c 00ED00E0 		.word	-536810240
 559              		.cfi_endproc
 560              	.LFE337:
 562              		.section	.text.HAL_PWR_EnableSEVOnPend,"ax",%progbits
 563              		.align	1
 564              		.global	HAL_PWR_EnableSEVOnPend
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv4-sp-d16
 570              	HAL_PWR_EnableSEVOnPend:
 571              	.LFB338:
 594:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 595:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 596:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 597:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 598:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Enable CORTEX M4 SEVONPEND bit.
 599:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note Set SEVONPEND bit of SCR register. When this bit is set, this causes
 600:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *       WFE to wake up when an interrupt moves from inactive to pended.
 601:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 602:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 603:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_EnableSEVOnPend(void)
 604:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 572              		.loc 1 604 1 is_stmt 1 view -0
 573              		.cfi_startproc
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576              		@ link register save eliminated.
 605:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Set SEVONPEND bit of Cortex System Control Register */
 606:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SEVONPEND_Msk));
 577              		.loc 1 606 3 view .LVU97
 578 0000 024A     		ldr	r2, .L63
 579 0002 1369     		ldr	r3, [r2, #16]
 580 0004 43F01003 		orr	r3, r3, #16
 581 0008 1361     		str	r3, [r2, #16]
 607:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 582              		.loc 1 607 1 is_stmt 0 view .LVU98
 583 000a 7047     		bx	lr
 584              	.L64:
 585              		.align	2
 586              	.L63:
 587 000c 00ED00E0 		.word	-536810240
 588              		.cfi_endproc
 589              	.LFE338:
 591              		.section	.text.HAL_PWR_DisableSEVOnPend,"ax",%progbits
 592              		.align	1
 593              		.global	HAL_PWR_DisableSEVOnPend
 594              		.syntax unified
 595              		.thumb
 596              		.thumb_func
 597              		.fpu fpv4-sp-d16
 599              	HAL_PWR_DisableSEVOnPend:
 600              	.LFB339:
 608:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 609:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 610:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 611:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief Disable CORTEX M4 SEVONPEND bit.
 612:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @note Clear SEVONPEND bit of SCR register. When this bit is set, this causes
 613:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   *       WFE to wake up when an interrupt moves from inactive to pended.
 614:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 615:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 616:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** void HAL_PWR_DisableSEVOnPend(void)
 617:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 601              		.loc 1 617 1 is_stmt 1 view -0
 602              		.cfi_startproc
 603              		@ args = 0, pretend = 0, frame = 0
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605              		@ link register save eliminated.
 618:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* Clear SEVONPEND bit of Cortex System Control Register */
 619:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SEVONPEND_Msk));
 606              		.loc 1 619 3 view .LVU100
 607 0000 024A     		ldr	r2, .L66
 608 0002 1369     		ldr	r3, [r2, #16]
 609 0004 23F01003 		bic	r3, r3, #16
 610 0008 1361     		str	r3, [r2, #16]
 620:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 611              		.loc 1 620 1 is_stmt 0 view .LVU101
 612 000a 7047     		bx	lr
 613              	.L67:
 614              		.align	2
 615              	.L66:
 616 000c 00ED00E0 		.word	-536810240
 617              		.cfi_endproc
 618              	.LFE339:
 620              		.section	.text.HAL_PWR_PVDCallback,"ax",%progbits
 621              		.align	1
 622              		.weak	HAL_PWR_PVDCallback
 623              		.syntax unified
 624              		.thumb
 625              		.thumb_func
 626              		.fpu fpv4-sp-d16
 628              	HAL_PWR_PVDCallback:
 629              	.LFB340:
 621:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 622:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 623:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 624:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 625:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** 
 626:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** /**
 627:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @brief PWR PVD interrupt callback
 628:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   * @retval None
 629:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   */
 630:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** __weak void HAL_PWR_PVDCallback(void)
 631:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** {
 630              		.loc 1 631 1 is_stmt 1 view -0
 631              		.cfi_startproc
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634              		@ link register save eliminated.
 632:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****   /* NOTE : This function should not be modified; when the callback is needed,
 633:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****             the HAL_PWR_PVDCallback can be implemented in the user file
 634:../../..\CubeG4\src/stm32g4xx_hal_pwr.c ****    */
 635:../../..\CubeG4\src/stm32g4xx_hal_pwr.c **** }
 635              		.loc 1 635 1 view .LVU103
 636 0000 7047     		bx	lr
 637              		.cfi_endproc
 638              	.LFE340:
 640              		.text
 641              	.Letext0:
 642              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 643              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 644              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 645              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 646              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 647              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 648              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 649              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_pwr.h"
 650              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
 651              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_pwr_ex.h"
