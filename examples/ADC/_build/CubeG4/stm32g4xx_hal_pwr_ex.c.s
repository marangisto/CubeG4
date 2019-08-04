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
  13              		.file	"stm32g4xx_hal_pwr_ex.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_PWREx_GetVoltageRange,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_PWREx_GetVoltageRange
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_PWREx_GetVoltageRange:
  27              	.LFB325:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_pwr_ex.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @file    stm32g4xx_hal_pwr_ex.c
   4:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief   Extended PWR HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *          functionalities of the Power Controller (PWR) peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *           + Extended Initialization and de-initialization functions
   9:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *           + Extended Peripheral Control functions
  10:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   ******************************************************************************
  12:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @attention
  13:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *
  14:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  15:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * All rights reserved.</center></h2>
  16:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  18:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * the "License"; You may not use this file except in compliance with the
  19:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * License. You may obtain a copy of the License at:
  20:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *                        opensource.org/licenses/BSD-3-Clause
  21:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *
  22:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   ******************************************************************************
  23:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  24:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  25:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* Includes ------------------------------------------------------------------*/
  26:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #include "stm32g4xx_hal.h"
  27:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  28:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /** @addtogroup STM32G4xx_HAL_Driver
  29:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @{
  30:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  31:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  32:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /** @defgroup PWREx PWREx
  33:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief PWR Extended HAL module driver
  34:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @{
  35:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  36:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  37:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #ifdef HAL_PWR_MODULE_ENABLED
  38:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  39:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* Private typedef -----------------------------------------------------------*/
  40:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* Private define ------------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  42:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  43:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined (STM32G471xx) || defined (STM32G473xx) || defined (STM32G474xx) || defined (STM32G483xx
  44:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PWR_PORTF_AVAILABLE_PINS   0x0000FFFFU /* PF0..PF15 */
  45:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PWR_PORTG_AVAILABLE_PINS   0x000007FFU /* PG0..PG10 */
  46:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #elif defined (STM32G431xx) || defined (STM32G441xx) || defined (STM32GBK1CB)
  47:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PWR_PORTF_AVAILABLE_PINS   0x00000607U /* PF0..PF2 and PF9 and PF10 */
  48:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PWR_PORTG_AVAILABLE_PINS   0x00000400U /* PG10 */
  49:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif
  50:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  51:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /** @defgroup PWR_Extended_Private_Defines PWR Extended Private Defines
  52:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @{
  53:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  54:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  55:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /** @defgroup PWREx_PVM_Mode_Mask PWR PVM Mode Mask
  56:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @{
  57:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  58:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PVM_MODE_IT               0x00010000U    /*!< Mask for interruption yielded by PVM threshol
  59:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PVM_MODE_EVT              0x00020000U    /*!< Mask for event yielded by PVM threshold cross
  60:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PVM_RISING_EDGE           0x00000001U    /*!< Mask for rising edge set as PVM trigger      
  61:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PVM_FALLING_EDGE          0x00000002U    /*!< Mask for falling edge set as PVM trigger     
  62:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
  63:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @}
  64:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  65:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  66:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /** @defgroup PWREx_TimeOut_Value PWR Extended Flag Setting Time Out Value
  67:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @{
  68:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  69:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #define PWR_FLAG_SETTING_DELAY_US                      50UL   /*!< Time out value for REGLPF and VO
  70:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
  71:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @}
  72:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  73:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  74:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  75:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  76:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
  77:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @}
  78:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  79:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  80:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  81:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  82:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* Private macro -------------------------------------------------------------*/
  83:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* Private variables ---------------------------------------------------------*/
  84:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* Private function prototypes -----------------------------------------------*/
  85:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* Exported functions --------------------------------------------------------*/
  86:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  87:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /** @defgroup PWREx_Exported_Functions PWR Extended Exported Functions
  88:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @{
  89:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
  90:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
  91:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /** @defgroup PWREx_Exported_Functions_Group1 Extended Peripheral Control functions
  92:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *  @brief   Extended Peripheral Control functions
  93:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *
  94:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** @verbatim
  95:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****  ===============================================================================
  96:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****               ##### Extended Peripheral Initialization and de-initialization functions #####
  97:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****  ===============================================================================
  98:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     [..]
  99:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 100:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** @endverbatim
 101:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @{
 102:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 103:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 104:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 105:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 106:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Return Voltage Scaling Range.
 107:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval VOS bit field (PWR_REGULATOR_VOLTAGE_SCALE1 or PWR_REGULATOR_VOLTAGE_SCALE2
 108:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         or PWR_REGULATOR_VOLTAGE_SCALE1_BOOST when applicable)
 109:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 110:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** uint32_t HAL_PWREx_GetVoltageRange(void)
 111:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
  29              		.loc 1 111 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
 112:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if (READ_BIT(PWR->CR1, PWR_CR1_VOS) == PWR_REGULATOR_VOLTAGE_SCALE2)
  34              		.loc 1 112 3 view .LVU1
  35              		.loc 1 112 7 is_stmt 0 view .LVU2
  36 0000 074B     		ldr	r3, .L5
  37 0002 1868     		ldr	r0, [r3]
  38 0004 00F4C060 		and	r0, r0, #1536
  39              		.loc 1 112 6 view .LVU3
  40 0008 B0F5806F 		cmp	r0, #1024
  41 000c 07D0     		beq	.L1
 113:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 114:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     return PWR_REGULATOR_VOLTAGE_SCALE2;
 115:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 116:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   else if (READ_BIT(PWR->CR5, PWR_CR5_R1MODE) == PWR_CR5_R1MODE)
  42              		.loc 1 116 8 is_stmt 1 view .LVU4
  43              		.loc 1 116 12 is_stmt 0 view .LVU5
  44 000e D3F88030 		ldr	r3, [r3, #128]
  45              		.loc 1 116 11 view .LVU6
  46 0012 13F4807F 		tst	r3, #256
 117:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 118:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* PWR_CR5_R1MODE bit set means that Range 1 Boost is disabled */
 119:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     return PWR_REGULATOR_VOLTAGE_SCALE1;
 120:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 121:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   else
 122:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 123:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     return PWR_REGULATOR_VOLTAGE_SCALE1_BOOST;
  47              		.loc 1 123 12 view .LVU7
  48 0016 14BF     		ite	ne
  49 0018 4FF40070 		movne	r0, #512
  50 001c 0020     		moveq	r0, #0
  51              	.L1:
 124:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 125:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
  52              		.loc 1 125 1 view .LVU8
  53 001e 7047     		bx	lr
  54              	.L6:
  55              		.align	2
  56              	.L5:
  57 0020 00700040 		.word	1073770496
  58              		.cfi_endproc
  59              	.LFE325:
  61              		.section	.text.HAL_PWREx_ControlVoltageScaling,"ax",%progbits
  62              		.align	1
  63              		.global	HAL_PWREx_ControlVoltageScaling
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  69              	HAL_PWREx_ControlVoltageScaling:
  70              	.LVL0:
  71              	.LFB326:
 126:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 127:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 128:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 129:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 130:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Configure the main internal regulator output voltage.
 131:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  VoltageScaling: specifies the regulator output voltage to achieve
 132:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         a tradeoff between performance and power consumption.
 133:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *          This parameter can be one of the following values:
 134:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_REGULATOR_VOLTAGE_SCALE1_BOOST when available, Regulator voltage outpu
 135:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *                                                typical output voltage at 1.28 V,
 136:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *                                                system frequency up to 170 MHz.
 137:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_REGULATOR_VOLTAGE_SCALE1 Regulator voltage output range 1 mode,
 138:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *                                                typical output voltage at 1.2 V,
 139:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *                                                system frequency up to 150 MHz.
 140:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_REGULATOR_VOLTAGE_SCALE2 Regulator voltage output range 2 mode,
 141:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *                                                typical output voltage at 1.0 V,
 142:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *                                                system frequency up to 26 MHz.
 143:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When moving from Range 1 to Range 2, the system frequency must be decreased to
 144:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        a value below 26 MHz before calling HAL_PWREx_ControlVoltageScaling() API.
 145:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        When moving from Range 2 to Range 1, the system frequency can be increased to
 146:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        a value up to 150 MHz after calling HAL_PWREx_ControlVoltageScaling() API.
 147:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        When moving from Range 1 to Boost Mode Range 1, the system frequency can be increased to
 148:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        a value up to 170 MHz after calling HAL_PWREx_ControlVoltageScaling() API.
 149:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When moving from Range 2 to Range 1, the API waits for VOSF flag to be
 150:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        cleared before returning the status. If the flag is not cleared within
 151:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        50 microseconds, HAL_TIMEOUT status is reported.
 152:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval HAL Status
 153:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 154:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling)
 155:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
  72              		.loc 1 155 1 is_stmt 1 view -0
  73              		.cfi_startproc
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
 156:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   uint32_t wait_loop_index;
  77              		.loc 1 156 3 view .LVU10
 157:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 158:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_VOLTAGE_SCALING_RANGE(VoltageScaling));
  78              		.loc 1 158 3 view .LVU11
 159:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 160:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if (VoltageScaling == PWR_REGULATOR_VOLTAGE_SCALE1_BOOST)
  79              		.loc 1 160 3 view .LVU12
  80 0000 2A4B     		ldr	r3, .L28
 161:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 162:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* If current range is range 2 */
 163:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     if (READ_BIT(PWR->CR1, PWR_CR1_VOS) == PWR_REGULATOR_VOLTAGE_SCALE2)
  81              		.loc 1 163 9 is_stmt 0 view .LVU13
  82 0002 1A68     		ldr	r2, [r3]
 160:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
  83              		.loc 1 160 6 view .LVU14
  84 0004 38BB     		cbnz	r0, .L8
  85              		.loc 1 163 5 is_stmt 1 view .LVU15
  86              		.loc 1 163 9 is_stmt 0 view .LVU16
  87 0006 02F4C062 		and	r2, r2, #1536
  88              		.loc 1 163 8 view .LVU17
  89 000a B2F5806F 		cmp	r2, #1024
 164:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 165:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Make sure Range 1 Boost is enabled */
 166:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       CLEAR_BIT(PWR->CR5, PWR_CR5_R1MODE);
  90              		.loc 1 166 7 view .LVU18
  91 000e D3F88020 		ldr	r2, [r3, #128]
  92 0012 22F48072 		bic	r2, r2, #256
  93 0016 C3F88020 		str	r2, [r3, #128]
 163:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
  94              		.loc 1 163 8 view .LVU19
  95 001a 1BD1     		bne	.L9
  96              		.loc 1 166 7 is_stmt 1 view .LVU20
 167:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 168:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Set Range 1 */
 169:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       MODIFY_REG(PWR->CR1, PWR_CR1_VOS, PWR_REGULATOR_VOLTAGE_SCALE1);
  97              		.loc 1 169 7 view .LVU21
  98 001c 1A68     		ldr	r2, [r3]
  99 001e 22F4C062 		bic	r2, r2, #1536
 100 0022 42F40072 		orr	r2, r2, #512
 101 0026 1A60     		str	r2, [r3]
 170:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 171:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Wait until VOSF is cleared */
 172:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       wait_loop_index = ((PWR_FLAG_SETTING_DELAY_US * SystemCoreClock) / 1000000U) + 1U;
 102              		.loc 1 172 7 view .LVU22
 103              		.loc 1 172 53 is_stmt 0 view .LVU23
 104 0028 214A     		ldr	r2, .L28+4
 105 002a 1168     		ldr	r1, [r2]
 106 002c 3222     		movs	r2, #50
 107 002e 4A43     		muls	r2, r1, r2
 108              		.loc 1 172 72 view .LVU24
 109 0030 2049     		ldr	r1, .L28+8
 110 0032 B2FBF1F2 		udiv	r2, r2, r1
 111 0036 1946     		mov	r1, r3
 112              		.loc 1 172 23 view .LVU25
 113 0038 0132     		adds	r2, r2, #1
 114              	.LVL1:
 173:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 115              		.loc 1 173 7 is_stmt 1 view .LVU26
 116              	.L10:
 117              		.loc 1 173 15 is_stmt 0 view .LVU27
 118 003a 5869     		ldr	r0, [r3, #20]
 119              		.loc 1 173 13 view .LVU28
 120 003c 4005     		lsls	r0, r0, #21
 121 003e 00D5     		bpl	.L11
 122              		.loc 1 173 55 discriminator 1 view .LVU29
 123 0040 22B9     		cbnz	r2, .L12
 124              	.L11:
 174:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 175:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         wait_loop_index--;
 176:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 177:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if (HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF))
 125              		.loc 1 177 7 is_stmt 1 view .LVU30
 126              		.loc 1 177 11 is_stmt 0 view .LVU31
 127 0042 4B69     		ldr	r3, [r1, #20]
 128              		.loc 1 177 10 view .LVU32
 129 0044 5B05     		lsls	r3, r3, #21
 130 0046 03D4     		bmi	.L13
 131              	.LVL2:
 132              	.L27:
 178:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 179:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         return HAL_TIMEOUT;
 180:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 181:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     }
 182:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* If current range is range 1 normal or boost mode */
 183:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     else
 184:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 185:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Enable Range 1 Boost (no issue if bit already reset) */
 186:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       CLEAR_BIT(PWR->CR5, PWR_CR5_R1MODE);
 187:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     }
 188:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 189:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   else if (VoltageScaling == PWR_REGULATOR_VOLTAGE_SCALE1)
 190:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 191:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* If current range is range 2 */
 192:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     if (READ_BIT(PWR->CR1, PWR_CR1_VOS) == PWR_REGULATOR_VOLTAGE_SCALE2)
 193:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 194:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Make sure Range 1 Boost is disabled */
 195:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       SET_BIT(PWR->CR5, PWR_CR5_R1MODE);
 196:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 197:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Set Range 1 */
 198:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       MODIFY_REG(PWR->CR1, PWR_CR1_VOS, PWR_REGULATOR_VOLTAGE_SCALE1);
 199:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 200:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Wait until VOSF is cleared */
 201:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       wait_loop_index = ((PWR_FLAG_SETTING_DELAY_US * SystemCoreClock) / 1000000U) + 1U;
 202:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 203:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 204:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         wait_loop_index--;
 205:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 206:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if (HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF))
 207:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 208:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         return HAL_TIMEOUT;
 209:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 210:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     }
 211:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****      /* If current range is range 1 normal or boost mode */
 212:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     else
 213:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 214:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Disable Range 1 Boost (no issue if bit already set) */
 215:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       SET_BIT(PWR->CR5, PWR_CR5_R1MODE);
 216:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     }
 217:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 218:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   else
 219:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 220:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Set Range 2 */
 221:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     MODIFY_REG(PWR->CR1, PWR_CR1_VOS, PWR_REGULATOR_VOLTAGE_SCALE2);
 222:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* No need to wait for VOSF to be cleared for this transition */
 223:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* PWR_CR5_R1MODE bit setting has no effect in Range 2        */
 224:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 225:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 226:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   return HAL_OK;
 133              		.loc 1 226 10 view .LVU33
 134 0048 0020     		movs	r0, #0
 227:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 135              		.loc 1 227 1 view .LVU34
 136 004a 7047     		bx	lr
 137              	.LVL3:
 138              	.L12:
 175:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 139              		.loc 1 175 9 is_stmt 1 view .LVU35
 175:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 140              		.loc 1 175 24 is_stmt 0 view .LVU36
 141 004c 013A     		subs	r2, r2, #1
 142              	.LVL4:
 175:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 143              		.loc 1 175 24 view .LVU37
 144 004e F4E7     		b	.L10
 145              	.L13:
 179:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 146              		.loc 1 179 9 is_stmt 1 view .LVU38
 179:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 147              		.loc 1 179 16 is_stmt 0 view .LVU39
 148 0050 0320     		movs	r0, #3
 149 0052 7047     		bx	lr
 150              	.LVL5:
 151              	.L9:
 186:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     }
 152              		.loc 1 186 7 is_stmt 1 view .LVU40
 153 0054 7047     		bx	lr
 154              	.L8:
 189:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 155              		.loc 1 189 8 view .LVU41
 189:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 156              		.loc 1 189 11 is_stmt 0 view .LVU42
 157 0056 B0F5007F 		cmp	r0, #512
 158 005a 20D1     		bne	.L15
 192:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 159              		.loc 1 192 5 is_stmt 1 view .LVU43
 192:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 160              		.loc 1 192 9 is_stmt 0 view .LVU44
 161 005c 02F4C062 		and	r2, r2, #1536
 192:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 162              		.loc 1 192 8 view .LVU45
 163 0060 B2F5806F 		cmp	r2, #1024
 195:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 164              		.loc 1 195 7 view .LVU46
 165 0064 D3F88020 		ldr	r2, [r3, #128]
 166 0068 42F48072 		orr	r2, r2, #256
 167 006c C3F88020 		str	r2, [r3, #128]
 192:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     {
 168              		.loc 1 192 8 view .LVU47
 169 0070 EAD1     		bne	.L27
 195:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 170              		.loc 1 195 7 is_stmt 1 view .LVU48
 198:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 171              		.loc 1 198 7 view .LVU49
 172 0072 1A68     		ldr	r2, [r3]
 173 0074 22F4C062 		bic	r2, r2, #1536
 174 0078 42F40072 		orr	r2, r2, #512
 175 007c 1A60     		str	r2, [r3]
 201:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 176              		.loc 1 201 7 view .LVU50
 201:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 177              		.loc 1 201 53 is_stmt 0 view .LVU51
 178 007e 0C4A     		ldr	r2, .L28+4
 179 0080 1168     		ldr	r1, [r2]
 180 0082 3222     		movs	r2, #50
 181 0084 4A43     		muls	r2, r1, r2
 201:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 182              		.loc 1 201 72 view .LVU52
 183 0086 0B49     		ldr	r1, .L28+8
 184 0088 B2FBF1F2 		udiv	r2, r2, r1
 185 008c 1946     		mov	r1, r3
 201:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 186              		.loc 1 201 23 view .LVU53
 187 008e 0132     		adds	r2, r2, #1
 188              	.LVL6:
 202:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 189              		.loc 1 202 7 is_stmt 1 view .LVU54
 190              	.L17:
 202:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 191              		.loc 1 202 15 is_stmt 0 view .LVU55
 192 0090 5869     		ldr	r0, [r3, #20]
 202:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 193              		.loc 1 202 13 view .LVU56
 194 0092 4005     		lsls	r0, r0, #21
 195 0094 D5D5     		bpl	.L11
 202:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 196              		.loc 1 202 55 discriminator 1 view .LVU57
 197 0096 002A     		cmp	r2, #0
 198 0098 D3D0     		beq	.L11
 204:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 199              		.loc 1 204 9 is_stmt 1 view .LVU58
 204:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 200              		.loc 1 204 24 is_stmt 0 view .LVU59
 201 009a 013A     		subs	r2, r2, #1
 202              	.LVL7:
 204:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 203              		.loc 1 204 24 view .LVU60
 204 009c F8E7     		b	.L17
 205              	.LVL8:
 206              	.L15:
 221:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* No need to wait for VOSF to be cleared for this transition */
 207              		.loc 1 221 5 is_stmt 1 view .LVU61
 208 009e 22F4C062 		bic	r2, r2, #1536
 209 00a2 42F48062 		orr	r2, r2, #1024
 210 00a6 1A60     		str	r2, [r3]
 211 00a8 CEE7     		b	.L27
 212              	.L29:
 213 00aa 00BF     		.align	2
 214              	.L28:
 215 00ac 00700040 		.word	1073770496
 216 00b0 00000000 		.word	SystemCoreClock
 217 00b4 40420F00 		.word	1000000
 218              		.cfi_endproc
 219              	.LFE326:
 221              		.section	.text.HAL_PWREx_EnableBatteryCharging,"ax",%progbits
 222              		.align	1
 223              		.global	HAL_PWREx_EnableBatteryCharging
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 229              	HAL_PWREx_EnableBatteryCharging:
 230              	.LVL9:
 231              	.LFB327:
 228:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 229:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 230:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 231:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable battery charging.
 232:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        When VDD is present, charge the external battery on VBAT thru an internal resistor.
 233:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  ResistorSelection: specifies the resistor impedance.
 234:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *          This parameter can be one of the following values:
 235:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_BATTERY_CHARGING_RESISTOR_5     5 kOhms resistor
 236:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_BATTERY_CHARGING_RESISTOR_1_5 1.5 kOhms resistor
 237:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 238:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 239:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnableBatteryCharging(uint32_t ResistorSelection)
 240:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 232              		.loc 1 240 1 view -0
 233              		.cfi_startproc
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236              		@ link register save eliminated.
 241:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_BATTERY_RESISTOR_SELECT(ResistorSelection));
 237              		.loc 1 241 3 view .LVU63
 242:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 243:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Specify resistor selection */
 244:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   MODIFY_REG(PWR->CR4, PWR_CR4_VBRS, ResistorSelection);
 238              		.loc 1 244 3 view .LVU64
 239 0000 054A     		ldr	r2, .L31
 240 0002 D368     		ldr	r3, [r2, #12]
 241 0004 23F40073 		bic	r3, r3, #512
 242 0008 1843     		orrs	r0, r0, r3
 243              	.LVL10:
 244              		.loc 1 244 3 is_stmt 0 view .LVU65
 245 000a D060     		str	r0, [r2, #12]
 245:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 246:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Enable battery charging */
 247:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR4, PWR_CR4_VBE);
 246              		.loc 1 247 3 is_stmt 1 view .LVU66
 247 000c D368     		ldr	r3, [r2, #12]
 248 000e 43F48073 		orr	r3, r3, #256
 249 0012 D360     		str	r3, [r2, #12]
 248:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 250              		.loc 1 248 1 is_stmt 0 view .LVU67
 251 0014 7047     		bx	lr
 252              	.L32:
 253 0016 00BF     		.align	2
 254              	.L31:
 255 0018 00700040 		.word	1073770496
 256              		.cfi_endproc
 257              	.LFE327:
 259              		.section	.text.HAL_PWREx_DisableBatteryCharging,"ax",%progbits
 260              		.align	1
 261              		.global	HAL_PWREx_DisableBatteryCharging
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 267              	HAL_PWREx_DisableBatteryCharging:
 268              	.LFB328:
 249:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 250:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 251:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 252:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable battery charging.
 253:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 254:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 255:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisableBatteryCharging(void)
 256:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 269              		.loc 1 256 1 is_stmt 1 view -0
 270              		.cfi_startproc
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273              		@ link register save eliminated.
 257:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR4, PWR_CR4_VBE);
 274              		.loc 1 257 3 view .LVU69
 275 0000 024A     		ldr	r2, .L34
 276 0002 D368     		ldr	r3, [r2, #12]
 277 0004 23F48073 		bic	r3, r3, #256
 278 0008 D360     		str	r3, [r2, #12]
 258:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 279              		.loc 1 258 1 is_stmt 0 view .LVU70
 280 000a 7047     		bx	lr
 281              	.L35:
 282              		.align	2
 283              	.L34:
 284 000c 00700040 		.word	1073770496
 285              		.cfi_endproc
 286              	.LFE328:
 288              		.section	.text.HAL_PWREx_EnableInternalWakeUpLine,"ax",%progbits
 289              		.align	1
 290              		.global	HAL_PWREx_EnableInternalWakeUpLine
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 296              	HAL_PWREx_EnableInternalWakeUpLine:
 297              	.LFB329:
 259:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 260:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 261:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 262:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable Internal Wake-up Line.
 263:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 264:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 265:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnableInternalWakeUpLine(void)
 266:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 298              		.loc 1 266 1 is_stmt 1 view -0
 299              		.cfi_startproc
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302              		@ link register save eliminated.
 267:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR3, PWR_CR3_EIWF);
 303              		.loc 1 267 3 view .LVU72
 304 0000 024A     		ldr	r2, .L37
 305 0002 9368     		ldr	r3, [r2, #8]
 306 0004 43F40043 		orr	r3, r3, #32768
 307 0008 9360     		str	r3, [r2, #8]
 268:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 308              		.loc 1 268 1 is_stmt 0 view .LVU73
 309 000a 7047     		bx	lr
 310              	.L38:
 311              		.align	2
 312              	.L37:
 313 000c 00700040 		.word	1073770496
 314              		.cfi_endproc
 315              	.LFE329:
 317              		.section	.text.HAL_PWREx_DisableInternalWakeUpLine,"ax",%progbits
 318              		.align	1
 319              		.global	HAL_PWREx_DisableInternalWakeUpLine
 320              		.syntax unified
 321              		.thumb
 322              		.thumb_func
 323              		.fpu fpv4-sp-d16
 325              	HAL_PWREx_DisableInternalWakeUpLine:
 326              	.LFB330:
 269:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 270:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 271:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 272:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable Internal Wake-up Line.
 273:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 274:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 275:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisableInternalWakeUpLine(void)
 276:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 327              		.loc 1 276 1 is_stmt 1 view -0
 328              		.cfi_startproc
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331              		@ link register save eliminated.
 277:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR3, PWR_CR3_EIWF);
 332              		.loc 1 277 3 view .LVU75
 333 0000 024A     		ldr	r2, .L40
 334 0002 9368     		ldr	r3, [r2, #8]
 335 0004 23F40043 		bic	r3, r3, #32768
 336 0008 9360     		str	r3, [r2, #8]
 278:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 337              		.loc 1 278 1 is_stmt 0 view .LVU76
 338 000a 7047     		bx	lr
 339              	.L41:
 340              		.align	2
 341              	.L40:
 342 000c 00700040 		.word	1073770496
 343              		.cfi_endproc
 344              	.LFE330:
 346              		.section	.text.HAL_PWREx_EnableGPIOPullUp,"ax",%progbits
 347              		.align	1
 348              		.global	HAL_PWREx_EnableGPIOPullUp
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 354              	HAL_PWREx_EnableGPIOPullUp:
 355              	.LVL11:
 356              	.LFB331:
 279:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 280:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 281:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 282:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 283:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable GPIO pull-up state in Standby and Shutdown modes.
 284:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Set the relevant PUy bits of PWR_PUCRx register to configure the I/O in
 285:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        pull-up state in Standby and Shutdown modes.
 286:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  This state is effective in Standby and Shutdown modes only if APC bit
 287:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        is set through HAL_PWREx_EnablePullUpPullDownConfig() API.
 288:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  The configuration is lost when exiting the Shutdown mode due to the
 289:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        power-on reset, maintained when exiting the Standby mode.
 290:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  To avoid any conflict at Standby and Shutdown modes exits, the corresponding
 291:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        PDy bit of PWR_PDCRx register is cleared unless it is reserved.
 292:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Even if a PUy bit to set is reserved, the other PUy bits entered as input
 293:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        parameter at the same time are set.
 294:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIO: Specify the IO port. This parameter can be PWR_GPIO_A, ..., PWR_GPIO_G
 295:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         (or PWR_GPIO_I depending on the devices) to select the GPIO peripheral.
 296:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIONumber: Specify the I/O pins numbers.
 297:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         This parameter can be one of the following values:
 298:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         PWR_GPIO_BIT_0, ..., PWR_GPIO_BIT_15 (except for the port where less
 299:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         I/O pins are available) or the logical OR of several of them to set
 300:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         several bits for a given port in a single API call.
 301:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval HAL Status
 302:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 303:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_EnableGPIOPullUp(uint32_t GPIO, uint32_t GPIONumber)
 304:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 357              		.loc 1 304 1 is_stmt 1 view -0
 358              		.cfi_startproc
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361              		@ link register save eliminated.
 305:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 362              		.loc 1 305 3 view .LVU78
 306:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 307:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO(GPIO));
 363              		.loc 1 307 3 view .LVU79
 308:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO_BIT_NUMBER(GPIONumber));
 364              		.loc 1 308 3 view .LVU80
 309:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 310:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   switch (GPIO)
 365              		.loc 1 310 3 view .LVU81
 366 0000 0628     		cmp	r0, #6
 367 0002 4FD8     		bhi	.L52
 368 0004 DFE800F0 		tbb	[pc, r0]
 369              	.L45:
 370 0008 04       		.byte	(.L51-.L45)/2
 371 0009 12       		.byte	(.L50-.L45)/2
 372 000a 1D       		.byte	(.L49-.L45)/2
 373 000b 26       		.byte	(.L48-.L45)/2
 374 000c 2F       		.byte	(.L47-.L45)/2
 375 000d 38       		.byte	(.L46-.L45)/2
 376 000e 45       		.byte	(.L44-.L45)/2
 377 000f 00       		.p2align 1
 378              	.L51:
 311:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 312:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_A:
 313:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PUCRA, (GPIONumber & (~(PWR_GPIO_BIT_14))));
 379              		.loc 1 313 8 view .LVU82
 380 0010 254B     		ldr	r3, .L54
 381 0012 186A     		ldr	r0, [r3, #32]
 382              	.LVL12:
 383              		.loc 1 313 8 is_stmt 0 view .LVU83
 384 0014 21F48042 		bic	r2, r1, #16384
 385 0018 0243     		orrs	r2, r2, r0
 386 001a 1A62     		str	r2, [r3, #32]
 314:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRA, (GPIONumber & (~(PWR_GPIO_BIT_13|PWR_GPIO_BIT_15))));
 387              		.loc 1 314 8 is_stmt 1 view .LVU84
 388 001c 5A6A     		ldr	r2, [r3, #36]
 389 001e 21F42041 		bic	r1, r1, #40960
 390              	.LVL13:
 391              		.loc 1 314 8 is_stmt 0 view .LVU85
 392 0022 22EA0102 		bic	r2, r2, r1
 393 0026 5A62     		str	r2, [r3, #36]
 315:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 394              		.loc 1 315 8 is_stmt 1 view .LVU86
 395              	.L53:
 316:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_B:
 317:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PUCRB, GPIONumber);
 318:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRB, (GPIONumber & (~(PWR_GPIO_BIT_4))));
 319:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 396              		.loc 1 319 8 view .LVU87
 305:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 397              		.loc 1 305 21 is_stmt 0 view .LVU88
 398 0028 0020     		movs	r0, #0
 399              		.loc 1 319 8 view .LVU89
 400 002a 7047     		bx	lr
 401              	.LVL14:
 402              	.L50:
 317:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRB, (GPIONumber & (~(PWR_GPIO_BIT_4))));
 403              		.loc 1 317 8 is_stmt 1 view .LVU90
 404 002c 1E4B     		ldr	r3, .L54
 405 002e 9A6A     		ldr	r2, [r3, #40]
 406 0030 0A43     		orrs	r2, r2, r1
 407 0032 9A62     		str	r2, [r3, #40]
 318:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 408              		.loc 1 318 8 view .LVU91
 409 0034 DA6A     		ldr	r2, [r3, #44]
 410 0036 21F01001 		bic	r1, r1, #16
 411              	.LVL15:
 318:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 412              		.loc 1 318 8 is_stmt 0 view .LVU92
 413 003a 22EA0102 		bic	r2, r2, r1
 414 003e DA62     		str	r2, [r3, #44]
 415 0040 F2E7     		b	.L53
 416              	.LVL16:
 417              	.L49:
 320:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_C:
 321:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PUCRC, GPIONumber);
 418              		.loc 1 321 8 is_stmt 1 view .LVU93
 419 0042 194B     		ldr	r3, .L54
 420 0044 1A6B     		ldr	r2, [r3, #48]
 421 0046 0A43     		orrs	r2, r2, r1
 422 0048 1A63     		str	r2, [r3, #48]
 322:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRC, GPIONumber);
 423              		.loc 1 322 8 view .LVU94
 424 004a 5A6B     		ldr	r2, [r3, #52]
 425 004c 22EA0101 		bic	r1, r2, r1
 426              	.LVL17:
 427              		.loc 1 322 8 is_stmt 0 view .LVU95
 428 0050 5963     		str	r1, [r3, #52]
 323:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 429              		.loc 1 323 8 is_stmt 1 view .LVU96
 430 0052 E9E7     		b	.L53
 431              	.LVL18:
 432              	.L48:
 324:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_D:
 325:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PUCRD, GPIONumber);
 433              		.loc 1 325 8 view .LVU97
 434 0054 144B     		ldr	r3, .L54
 435 0056 9A6B     		ldr	r2, [r3, #56]
 436 0058 0A43     		orrs	r2, r2, r1
 437 005a 9A63     		str	r2, [r3, #56]
 326:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRD, GPIONumber);
 438              		.loc 1 326 8 view .LVU98
 439 005c DA6B     		ldr	r2, [r3, #60]
 440 005e 22EA0101 		bic	r1, r2, r1
 441              	.LVL19:
 442              		.loc 1 326 8 is_stmt 0 view .LVU99
 443 0062 D963     		str	r1, [r3, #60]
 327:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 444              		.loc 1 327 8 is_stmt 1 view .LVU100
 445 0064 E0E7     		b	.L53
 446              	.LVL20:
 447              	.L47:
 328:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_E:
 329:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PUCRE, GPIONumber);
 448              		.loc 1 329 8 view .LVU101
 449 0066 104B     		ldr	r3, .L54
 450 0068 1A6C     		ldr	r2, [r3, #64]
 451 006a 0A43     		orrs	r2, r2, r1
 452 006c 1A64     		str	r2, [r3, #64]
 330:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRE, GPIONumber);
 453              		.loc 1 330 8 view .LVU102
 454 006e 5A6C     		ldr	r2, [r3, #68]
 455 0070 22EA0101 		bic	r1, r2, r1
 456              	.LVL21:
 457              		.loc 1 330 8 is_stmt 0 view .LVU103
 458 0074 5964     		str	r1, [r3, #68]
 331:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 459              		.loc 1 331 8 is_stmt 1 view .LVU104
 460 0076 D7E7     		b	.L53
 461              	.LVL22:
 462              	.L46:
 332:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_F:
 333:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PUCRF, (GPIONumber & PWR_PORTF_AVAILABLE_PINS));
 463              		.loc 1 333 8 view .LVU105
 464 0078 0B4B     		ldr	r3, .L54
 465 007a 21F4FC71 		bic	r1, r1, #504
 466              	.LVL23:
 467              		.loc 1 333 8 is_stmt 0 view .LVU106
 468 007e 9A6C     		ldr	r2, [r3, #72]
 469 0080 4905     		lsls	r1, r1, #21
 470 0082 490D     		lsrs	r1, r1, #21
 471 0084 0A43     		orrs	r2, r2, r1
 472 0086 9A64     		str	r2, [r3, #72]
 334:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRF, (GPIONumber & PWR_PORTF_AVAILABLE_PINS));
 473              		.loc 1 334 8 is_stmt 1 view .LVU107
 474 0088 DA6C     		ldr	r2, [r3, #76]
 475 008a 22EA0101 		bic	r1, r2, r1
 476 008e D964     		str	r1, [r3, #76]
 335:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 477              		.loc 1 335 8 view .LVU108
 478 0090 CAE7     		b	.L53
 479              	.LVL24:
 480              	.L44:
 336:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_G:
 337:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PUCRG, (GPIONumber & PWR_PORTG_AVAILABLE_PINS));
 481              		.loc 1 337 8 view .LVU109
 482 0092 054B     		ldr	r3, .L54
 483 0094 1A6D     		ldr	r2, [r3, #80]
 484 0096 01F48061 		and	r1, r1, #1024
 485              	.LVL25:
 486              		.loc 1 337 8 is_stmt 0 view .LVU110
 487 009a 1143     		orrs	r1, r1, r2
 488 009c 1965     		str	r1, [r3, #80]
 338:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRG, ((GPIONumber & PWR_PORTG_AVAILABLE_PINS) & (~(PWR_GPIO_BIT_10))));
 489              		.loc 1 338 8 is_stmt 1 view .LVU111
 490 009e 5A6D     		ldr	r2, [r3, #84]
 491 00a0 5A65     		str	r2, [r3, #84]
 339:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 492              		.loc 1 339 8 view .LVU112
 493 00a2 C1E7     		b	.L53
 494              	.LVL26:
 495              	.L52:
 340:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     default:
 341:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       status = HAL_ERROR;
 496              		.loc 1 341 14 is_stmt 0 view .LVU113
 497 00a4 0120     		movs	r0, #1
 498              	.LVL27:
 342:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 343:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 344:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 345:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   return status;
 499              		.loc 1 345 3 is_stmt 1 view .LVU114
 346:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 500              		.loc 1 346 1 is_stmt 0 view .LVU115
 501 00a6 7047     		bx	lr
 502              	.L55:
 503              		.align	2
 504              	.L54:
 505 00a8 00700040 		.word	1073770496
 506              		.cfi_endproc
 507              	.LFE331:
 509              		.section	.text.HAL_PWREx_DisableGPIOPullUp,"ax",%progbits
 510              		.align	1
 511              		.global	HAL_PWREx_DisableGPIOPullUp
 512              		.syntax unified
 513              		.thumb
 514              		.thumb_func
 515              		.fpu fpv4-sp-d16
 517              	HAL_PWREx_DisableGPIOPullUp:
 518              	.LVL28:
 519              	.LFB332:
 347:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 348:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 349:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 350:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable GPIO pull-up state in Standby mode and Shutdown modes.
 351:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Reset the relevant PUy bits of PWR_PUCRx register used to configure the I/O
 352:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        in pull-up state in Standby and Shutdown modes.
 353:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Even if a PUy bit to reset is reserved, the other PUy bits entered as input
 354:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        parameter at the same time are reset.
 355:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIO: Specifies the IO port. This parameter can be PWR_GPIO_A, ..., PWR_GPIO_G
 356:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *          (or PWR_GPIO_I depending on the devices) to select the GPIO peripheral.
 357:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIONumber: Specify the I/O pins numbers.
 358:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         This parameter can be one of the following values:
 359:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         PWR_GPIO_BIT_0, ..., PWR_GPIO_BIT_15 (except for the port where less
 360:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         I/O pins are available) or the logical OR of several of them to reset
 361:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         several bits for a given port in a single API call.
 362:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval HAL Status
 363:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 364:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_DisableGPIOPullUp(uint32_t GPIO, uint32_t GPIONumber)
 365:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 520              		.loc 1 365 1 is_stmt 1 view -0
 521              		.cfi_startproc
 522              		@ args = 0, pretend = 0, frame = 0
 523              		@ frame_needed = 0, uses_anonymous_args = 0
 524              		@ link register save eliminated.
 366:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 525              		.loc 1 366 3 view .LVU117
 367:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 368:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO(GPIO));
 526              		.loc 1 368 3 view .LVU118
 369:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO_BIT_NUMBER(GPIONumber));
 527              		.loc 1 369 3 view .LVU119
 370:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 371:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   switch (GPIO)
 528              		.loc 1 371 3 view .LVU120
 529 0000 0628     		cmp	r0, #6
 530 0002 38D8     		bhi	.L66
 531 0004 DFE800F0 		tbb	[pc, r0]
 532              	.L59:
 533 0008 04       		.byte	(.L65-.L59)/2
 534 0009 0D       		.byte	(.L64-.L59)/2
 535 000a 13       		.byte	(.L63-.L59)/2
 536 000b 19       		.byte	(.L62-.L59)/2
 537 000c 1F       		.byte	(.L61-.L59)/2
 538 000d 25       		.byte	(.L60-.L59)/2
 539 000e 2F       		.byte	(.L58-.L59)/2
 540 000f 00       		.p2align 1
 541              	.L65:
 372:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 373:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_A:
 374:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRA, (GPIONumber & (~(PWR_GPIO_BIT_14))));
 542              		.loc 1 374 8 view .LVU121
 543 0010 1A4A     		ldr	r2, .L68
 544 0012 136A     		ldr	r3, [r2, #32]
 545 0014 21F48041 		bic	r1, r1, #16384
 546              	.LVL29:
 547              		.loc 1 374 8 is_stmt 0 view .LVU122
 548 0018 23EA0103 		bic	r3, r3, r1
 549 001c 1362     		str	r3, [r2, #32]
 375:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 550              		.loc 1 375 8 is_stmt 1 view .LVU123
 551              	.L67:
 376:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_B:
 377:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRB, GPIONumber);
 378:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 552              		.loc 1 378 8 view .LVU124
 366:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 553              		.loc 1 366 21 is_stmt 0 view .LVU125
 554 001e 0020     		movs	r0, #0
 555              	.LVL30:
 556              		.loc 1 378 8 view .LVU126
 557 0020 7047     		bx	lr
 558              	.LVL31:
 559              	.L64:
 377:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 560              		.loc 1 377 8 is_stmt 1 view .LVU127
 561 0022 164A     		ldr	r2, .L68
 562 0024 936A     		ldr	r3, [r2, #40]
 563 0026 23EA0101 		bic	r1, r3, r1
 564              	.LVL32:
 377:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 565              		.loc 1 377 8 is_stmt 0 view .LVU128
 566 002a 9162     		str	r1, [r2, #40]
 567 002c F7E7     		b	.L67
 568              	.LVL33:
 569              	.L63:
 379:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_C:
 380:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRC, GPIONumber);
 570              		.loc 1 380 8 is_stmt 1 view .LVU129
 571 002e 134A     		ldr	r2, .L68
 572 0030 136B     		ldr	r3, [r2, #48]
 573 0032 23EA0101 		bic	r1, r3, r1
 574              	.LVL34:
 575              		.loc 1 380 8 is_stmt 0 view .LVU130
 576 0036 1163     		str	r1, [r2, #48]
 381:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 577              		.loc 1 381 8 is_stmt 1 view .LVU131
 578 0038 F1E7     		b	.L67
 579              	.LVL35:
 580              	.L62:
 382:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_D:
 383:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRD, GPIONumber);
 581              		.loc 1 383 8 view .LVU132
 582 003a 104A     		ldr	r2, .L68
 583 003c 936B     		ldr	r3, [r2, #56]
 584 003e 23EA0101 		bic	r1, r3, r1
 585              	.LVL36:
 586              		.loc 1 383 8 is_stmt 0 view .LVU133
 587 0042 9163     		str	r1, [r2, #56]
 384:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 588              		.loc 1 384 8 is_stmt 1 view .LVU134
 589 0044 EBE7     		b	.L67
 590              	.LVL37:
 591              	.L61:
 385:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_E:
 386:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRE, GPIONumber);
 592              		.loc 1 386 8 view .LVU135
 593 0046 0D4A     		ldr	r2, .L68
 594 0048 136C     		ldr	r3, [r2, #64]
 595 004a 23EA0101 		bic	r1, r3, r1
 596              	.LVL38:
 597              		.loc 1 386 8 is_stmt 0 view .LVU136
 598 004e 1164     		str	r1, [r2, #64]
 387:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 599              		.loc 1 387 8 is_stmt 1 view .LVU137
 600 0050 E5E7     		b	.L67
 601              	.LVL39:
 602              	.L60:
 388:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_F:
 389:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRF, (GPIONumber & PWR_PORTF_AVAILABLE_PINS));
 603              		.loc 1 389 8 view .LVU138
 604 0052 0A4A     		ldr	r2, .L68
 605 0054 21F4FC71 		bic	r1, r1, #504
 606              	.LVL40:
 607              		.loc 1 389 8 is_stmt 0 view .LVU139
 608 0058 936C     		ldr	r3, [r2, #72]
 609 005a 4905     		lsls	r1, r1, #21
 610 005c 490D     		lsrs	r1, r1, #21
 611 005e 23EA0103 		bic	r3, r3, r1
 612 0062 9364     		str	r3, [r2, #72]
 390:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 613              		.loc 1 390 8 is_stmt 1 view .LVU140
 614 0064 DBE7     		b	.L67
 615              	.LVL41:
 616              	.L58:
 391:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_G:
 392:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRG, (GPIONumber & PWR_PORTG_AVAILABLE_PINS));
 617              		.loc 1 392 8 view .LVU141
 618 0066 054A     		ldr	r2, .L68
 619 0068 136D     		ldr	r3, [r2, #80]
 620 006a 01F48061 		and	r1, r1, #1024
 621              	.LVL42:
 622              		.loc 1 392 8 is_stmt 0 view .LVU142
 623 006e 23EA0101 		bic	r1, r3, r1
 624 0072 1165     		str	r1, [r2, #80]
 393:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 625              		.loc 1 393 8 is_stmt 1 view .LVU143
 626 0074 D3E7     		b	.L67
 627              	.LVL43:
 628              	.L66:
 394:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     default:
 395:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        status = HAL_ERROR;
 629              		.loc 1 395 15 is_stmt 0 view .LVU144
 630 0076 0120     		movs	r0, #1
 631              	.LVL44:
 396:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 397:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 398:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 399:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   return status;
 632              		.loc 1 399 3 is_stmt 1 view .LVU145
 400:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 633              		.loc 1 400 1 is_stmt 0 view .LVU146
 634 0078 7047     		bx	lr
 635              	.L69:
 636 007a 00BF     		.align	2
 637              	.L68:
 638 007c 00700040 		.word	1073770496
 639              		.cfi_endproc
 640              	.LFE332:
 642              		.section	.text.HAL_PWREx_EnableGPIOPullDown,"ax",%progbits
 643              		.align	1
 644              		.global	HAL_PWREx_EnableGPIOPullDown
 645              		.syntax unified
 646              		.thumb
 647              		.thumb_func
 648              		.fpu fpv4-sp-d16
 650              	HAL_PWREx_EnableGPIOPullDown:
 651              	.LVL45:
 652              	.LFB333:
 401:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 402:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 403:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 404:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 405:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable GPIO pull-down state in Standby and Shutdown modes.
 406:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Set the relevant PDy bits of PWR_PDCRx register to configure the I/O in
 407:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        pull-down state in Standby and Shutdown modes.
 408:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  This state is effective in Standby and Shutdown modes only if APC bit
 409:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        is set through HAL_PWREx_EnablePullUpPullDownConfig() API.
 410:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  The configuration is lost when exiting the Shutdown mode due to the
 411:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        power-on reset, maintained when exiting the Standby mode.
 412:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  To avoid any conflict at Standby and Shutdown modes exits, the corresponding
 413:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        PUy bit of PWR_PUCRx register is cleared unless it is reserved.
 414:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Even if a PDy bit to set is reserved, the other PDy bits entered as input
 415:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        parameter at the same time are set.
 416:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIO: Specify the IO port. This parameter can be PWR_GPIO_A..PWR_GPIO_G
 417:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         (or PWR_GPIO_I depending on the devices) to select the GPIO peripheral.
 418:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIONumber: Specify the I/O pins numbers.
 419:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         This parameter can be one of the following values:
 420:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         PWR_GPIO_BIT_0, ..., PWR_GPIO_BIT_15 (except for the port where less
 421:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         I/O pins are available) or the logical OR of several of them to set
 422:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         several bits for a given port in a single API call.
 423:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval HAL Status
 424:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 425:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_EnableGPIOPullDown(uint32_t GPIO, uint32_t GPIONumber)
 426:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 653              		.loc 1 426 1 is_stmt 1 view -0
 654              		.cfi_startproc
 655              		@ args = 0, pretend = 0, frame = 0
 656              		@ frame_needed = 0, uses_anonymous_args = 0
 657              		@ link register save eliminated.
 427:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 658              		.loc 1 427 3 view .LVU148
 428:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 429:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO(GPIO));
 659              		.loc 1 429 3 view .LVU149
 430:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO_BIT_NUMBER(GPIONumber));
 660              		.loc 1 430 3 view .LVU150
 431:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 432:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   switch (GPIO)
 661              		.loc 1 432 3 view .LVU151
 662 0000 0628     		cmp	r0, #6
 663 0002 50D8     		bhi	.L80
 664 0004 DFE800F0 		tbb	[pc, r0]
 665              	.L73:
 666 0008 04       		.byte	(.L79-.L73)/2
 667 0009 12       		.byte	(.L78-.L73)/2
 668 000a 1D       		.byte	(.L77-.L73)/2
 669 000b 26       		.byte	(.L76-.L73)/2
 670 000c 2F       		.byte	(.L75-.L73)/2
 671 000d 38       		.byte	(.L74-.L73)/2
 672 000e 45       		.byte	(.L72-.L73)/2
 673 000f 00       		.p2align 1
 674              	.L79:
 433:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 434:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_A:
 435:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PDCRA, (GPIONumber & (~(PWR_GPIO_BIT_13|PWR_GPIO_BIT_15))));
 675              		.loc 1 435 8 view .LVU152
 676 0010 264B     		ldr	r3, .L82
 677 0012 586A     		ldr	r0, [r3, #36]
 678              	.LVL46:
 679              		.loc 1 435 8 is_stmt 0 view .LVU153
 680 0014 21F42042 		bic	r2, r1, #40960
 681 0018 0243     		orrs	r2, r2, r0
 682 001a 5A62     		str	r2, [r3, #36]
 436:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRA, (GPIONumber & (~(PWR_GPIO_BIT_14))));
 683              		.loc 1 436 8 is_stmt 1 view .LVU154
 684 001c 1A6A     		ldr	r2, [r3, #32]
 685 001e 21F48041 		bic	r1, r1, #16384
 686              	.LVL47:
 687              		.loc 1 436 8 is_stmt 0 view .LVU155
 688 0022 22EA0102 		bic	r2, r2, r1
 689 0026 1A62     		str	r2, [r3, #32]
 437:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 690              		.loc 1 437 8 is_stmt 1 view .LVU156
 691              	.L81:
 438:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_B:
 439:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PDCRB, (GPIONumber & (~(PWR_GPIO_BIT_4))));
 440:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRB, GPIONumber);
 441:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 692              		.loc 1 441 8 view .LVU157
 427:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 693              		.loc 1 427 21 is_stmt 0 view .LVU158
 694 0028 0020     		movs	r0, #0
 695              		.loc 1 441 8 view .LVU159
 696 002a 7047     		bx	lr
 697              	.LVL48:
 698              	.L78:
 439:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRB, GPIONumber);
 699              		.loc 1 439 8 is_stmt 1 view .LVU160
 700 002c 1F4B     		ldr	r3, .L82
 701 002e D86A     		ldr	r0, [r3, #44]
 702              	.LVL49:
 439:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRB, GPIONumber);
 703              		.loc 1 439 8 is_stmt 0 view .LVU161
 704 0030 21F01002 		bic	r2, r1, #16
 705 0034 0243     		orrs	r2, r2, r0
 706 0036 DA62     		str	r2, [r3, #44]
 440:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 707              		.loc 1 440 8 is_stmt 1 view .LVU162
 708 0038 9A6A     		ldr	r2, [r3, #40]
 709 003a 22EA0101 		bic	r1, r2, r1
 710              	.LVL50:
 440:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 711              		.loc 1 440 8 is_stmt 0 view .LVU163
 712 003e 9962     		str	r1, [r3, #40]
 713 0040 F2E7     		b	.L81
 714              	.LVL51:
 715              	.L77:
 442:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_C:
 443:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PDCRC, GPIONumber);
 716              		.loc 1 443 8 is_stmt 1 view .LVU164
 717 0042 1A4B     		ldr	r3, .L82
 718 0044 5A6B     		ldr	r2, [r3, #52]
 719 0046 0A43     		orrs	r2, r2, r1
 720 0048 5A63     		str	r2, [r3, #52]
 444:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRC, GPIONumber);
 721              		.loc 1 444 8 view .LVU165
 722 004a 1A6B     		ldr	r2, [r3, #48]
 723 004c 22EA0101 		bic	r1, r2, r1
 724              	.LVL52:
 725              		.loc 1 444 8 is_stmt 0 view .LVU166
 726 0050 1963     		str	r1, [r3, #48]
 445:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 727              		.loc 1 445 8 is_stmt 1 view .LVU167
 728 0052 E9E7     		b	.L81
 729              	.LVL53:
 730              	.L76:
 446:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_D:
 447:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PDCRD, GPIONumber);
 731              		.loc 1 447 8 view .LVU168
 732 0054 154B     		ldr	r3, .L82
 733 0056 DA6B     		ldr	r2, [r3, #60]
 734 0058 0A43     		orrs	r2, r2, r1
 735 005a DA63     		str	r2, [r3, #60]
 448:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRD, GPIONumber);
 736              		.loc 1 448 8 view .LVU169
 737 005c 9A6B     		ldr	r2, [r3, #56]
 738 005e 22EA0101 		bic	r1, r2, r1
 739              	.LVL54:
 740              		.loc 1 448 8 is_stmt 0 view .LVU170
 741 0062 9963     		str	r1, [r3, #56]
 449:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 742              		.loc 1 449 8 is_stmt 1 view .LVU171
 743 0064 E0E7     		b	.L81
 744              	.LVL55:
 745              	.L75:
 450:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_E:
 451:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PDCRE, GPIONumber);
 746              		.loc 1 451 8 view .LVU172
 747 0066 114B     		ldr	r3, .L82
 748 0068 5A6C     		ldr	r2, [r3, #68]
 749 006a 0A43     		orrs	r2, r2, r1
 750 006c 5A64     		str	r2, [r3, #68]
 452:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRE, GPIONumber);
 751              		.loc 1 452 8 view .LVU173
 752 006e 1A6C     		ldr	r2, [r3, #64]
 753 0070 22EA0101 		bic	r1, r2, r1
 754              	.LVL56:
 755              		.loc 1 452 8 is_stmt 0 view .LVU174
 756 0074 1964     		str	r1, [r3, #64]
 453:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 757              		.loc 1 453 8 is_stmt 1 view .LVU175
 758 0076 D7E7     		b	.L81
 759              	.LVL57:
 760              	.L74:
 454:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_F:
 455:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PDCRF, (GPIONumber & PWR_PORTF_AVAILABLE_PINS));
 761              		.loc 1 455 8 view .LVU176
 762 0078 0C4B     		ldr	r3, .L82
 763 007a 21F4FC71 		bic	r1, r1, #504
 764              	.LVL58:
 765              		.loc 1 455 8 is_stmt 0 view .LVU177
 766 007e DA6C     		ldr	r2, [r3, #76]
 767 0080 4905     		lsls	r1, r1, #21
 768 0082 490D     		lsrs	r1, r1, #21
 769 0084 0A43     		orrs	r2, r2, r1
 770 0086 DA64     		str	r2, [r3, #76]
 456:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRF, (GPIONumber & PWR_PORTF_AVAILABLE_PINS));
 771              		.loc 1 456 8 is_stmt 1 view .LVU178
 772 0088 9A6C     		ldr	r2, [r3, #72]
 773 008a 22EA0101 		bic	r1, r2, r1
 774 008e 9964     		str	r1, [r3, #72]
 457:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 775              		.loc 1 457 8 view .LVU179
 776 0090 CAE7     		b	.L81
 777              	.LVL59:
 778              	.L72:
 458:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_G:
 459:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        SET_BIT(PWR->PDCRG, ((GPIONumber & PWR_PORTG_AVAILABLE_PINS) & (~(PWR_GPIO_BIT_10))));
 779              		.loc 1 459 8 view .LVU180
 780 0092 064B     		ldr	r3, .L82
 781 0094 5A6D     		ldr	r2, [r3, #84]
 782 0096 5A65     		str	r2, [r3, #84]
 460:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PUCRG, (GPIONumber & PWR_PORTG_AVAILABLE_PINS));
 783              		.loc 1 460 8 view .LVU181
 784 0098 1A6D     		ldr	r2, [r3, #80]
 785 009a 01F48061 		and	r1, r1, #1024
 786              	.LVL60:
 787              		.loc 1 460 8 is_stmt 0 view .LVU182
 788 009e 22EA0101 		bic	r1, r2, r1
 789 00a2 1965     		str	r1, [r3, #80]
 461:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 790              		.loc 1 461 8 is_stmt 1 view .LVU183
 791 00a4 C0E7     		b	.L81
 792              	.LVL61:
 793              	.L80:
 462:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     default:
 463:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       status = HAL_ERROR;
 794              		.loc 1 463 14 is_stmt 0 view .LVU184
 795 00a6 0120     		movs	r0, #1
 796              	.LVL62:
 464:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 465:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 466:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 467:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   return status;
 797              		.loc 1 467 3 is_stmt 1 view .LVU185
 468:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 798              		.loc 1 468 1 is_stmt 0 view .LVU186
 799 00a8 7047     		bx	lr
 800              	.L83:
 801 00aa 00BF     		.align	2
 802              	.L82:
 803 00ac 00700040 		.word	1073770496
 804              		.cfi_endproc
 805              	.LFE333:
 807              		.section	.text.HAL_PWREx_DisableGPIOPullDown,"ax",%progbits
 808              		.align	1
 809              		.global	HAL_PWREx_DisableGPIOPullDown
 810              		.syntax unified
 811              		.thumb
 812              		.thumb_func
 813              		.fpu fpv4-sp-d16
 815              	HAL_PWREx_DisableGPIOPullDown:
 816              	.LVL63:
 817              	.LFB334:
 469:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 470:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 471:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 472:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable GPIO pull-down state in Standby and Shutdown modes.
 473:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Reset the relevant PDy bits of PWR_PDCRx register used to configure the I/O
 474:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        in pull-down state in Standby and Shutdown modes.
 475:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Even if a PDy bit to reset is reserved, the other PDy bits entered as input
 476:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        parameter at the same time are reset.
 477:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIO: Specifies the IO port. This parameter can be PWR_GPIO_A..PWR_GPIO_G
 478:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         (or PWR_GPIO_I depending on the devices) to select the GPIO peripheral.
 479:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param  GPIONumber: Specify the I/O pins numbers.
 480:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         This parameter can be one of the following values:
 481:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         PWR_GPIO_BIT_0, ..., PWR_GPIO_BIT_15 (except for the port where less
 482:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         I/O pins are available) or the logical OR of several of them to reset
 483:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         several bits for a given port in a single API call.
 484:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval HAL Status
 485:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 486:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_DisableGPIOPullDown(uint32_t GPIO, uint32_t GPIONumber)
 487:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 818              		.loc 1 487 1 is_stmt 1 view -0
 819              		.cfi_startproc
 820              		@ args = 0, pretend = 0, frame = 0
 821              		@ frame_needed = 0, uses_anonymous_args = 0
 822              		@ link register save eliminated.
 488:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 823              		.loc 1 488 3 view .LVU188
 489:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 490:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO(GPIO));
 824              		.loc 1 490 3 view .LVU189
 491:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_GPIO_BIT_NUMBER(GPIONumber));
 825              		.loc 1 491 3 view .LVU190
 492:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 493:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   switch (GPIO)
 826              		.loc 1 493 3 view .LVU191
 827 0000 0628     		cmp	r0, #6
 828 0002 36D8     		bhi	.L94
 829 0004 DFE800F0 		tbb	[pc, r0]
 830              	.L87:
 831 0008 04       		.byte	(.L93-.L87)/2
 832 0009 0D       		.byte	(.L92-.L87)/2
 833 000a 15       		.byte	(.L91-.L87)/2
 834 000b 1B       		.byte	(.L90-.L87)/2
 835 000c 21       		.byte	(.L89-.L87)/2
 836 000d 27       		.byte	(.L88-.L87)/2
 837 000e 31       		.byte	(.L86-.L87)/2
 838 000f 00       		.p2align 1
 839              	.L93:
 494:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 495:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_A:
 496:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRA, (GPIONumber & (~(PWR_GPIO_BIT_13|PWR_GPIO_BIT_15))));
 840              		.loc 1 496 8 view .LVU192
 841 0010 194A     		ldr	r2, .L96
 842 0012 536A     		ldr	r3, [r2, #36]
 843 0014 21F42041 		bic	r1, r1, #40960
 844              	.LVL64:
 845              		.loc 1 496 8 is_stmt 0 view .LVU193
 846 0018 23EA0101 		bic	r1, r3, r1
 847 001c 5162     		str	r1, [r2, #36]
 497:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 848              		.loc 1 497 8 is_stmt 1 view .LVU194
 849              	.L95:
 498:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_B:
 499:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRB, (GPIONumber & (~(PWR_GPIO_BIT_4))));
 500:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 850              		.loc 1 500 8 view .LVU195
 488:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 851              		.loc 1 488 21 is_stmt 0 view .LVU196
 852 001e 0020     		movs	r0, #0
 853              	.LVL65:
 854              		.loc 1 500 8 view .LVU197
 855 0020 7047     		bx	lr
 856              	.LVL66:
 857              	.L92:
 499:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 858              		.loc 1 499 8 is_stmt 1 view .LVU198
 859 0022 154A     		ldr	r2, .L96
 860 0024 D36A     		ldr	r3, [r2, #44]
 861 0026 21F01001 		bic	r1, r1, #16
 862              	.LVL67:
 499:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 863              		.loc 1 499 8 is_stmt 0 view .LVU199
 864 002a 23EA0101 		bic	r1, r3, r1
 865 002e D162     		str	r1, [r2, #44]
 866 0030 F5E7     		b	.L95
 867              	.LVL68:
 868              	.L91:
 501:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_C:
 502:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRC, GPIONumber);
 869              		.loc 1 502 8 is_stmt 1 view .LVU200
 870 0032 114A     		ldr	r2, .L96
 871 0034 536B     		ldr	r3, [r2, #52]
 872 0036 23EA0101 		bic	r1, r3, r1
 873              	.LVL69:
 874              		.loc 1 502 8 is_stmt 0 view .LVU201
 875 003a 5163     		str	r1, [r2, #52]
 503:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 876              		.loc 1 503 8 is_stmt 1 view .LVU202
 877 003c EFE7     		b	.L95
 878              	.LVL70:
 879              	.L90:
 504:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_D:
 505:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRD, GPIONumber);
 880              		.loc 1 505 8 view .LVU203
 881 003e 0E4A     		ldr	r2, .L96
 882 0040 D36B     		ldr	r3, [r2, #60]
 883 0042 23EA0101 		bic	r1, r3, r1
 884              	.LVL71:
 885              		.loc 1 505 8 is_stmt 0 view .LVU204
 886 0046 D163     		str	r1, [r2, #60]
 506:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 887              		.loc 1 506 8 is_stmt 1 view .LVU205
 888 0048 E9E7     		b	.L95
 889              	.LVL72:
 890              	.L89:
 507:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_E:
 508:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRE, GPIONumber);
 891              		.loc 1 508 8 view .LVU206
 892 004a 0B4A     		ldr	r2, .L96
 893 004c 536C     		ldr	r3, [r2, #68]
 894 004e 23EA0101 		bic	r1, r3, r1
 895              	.LVL73:
 896              		.loc 1 508 8 is_stmt 0 view .LVU207
 897 0052 5164     		str	r1, [r2, #68]
 509:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 898              		.loc 1 509 8 is_stmt 1 view .LVU208
 899 0054 E3E7     		b	.L95
 900              	.LVL74:
 901              	.L88:
 510:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_F:
 511:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRF, (GPIONumber & PWR_PORTF_AVAILABLE_PINS));
 902              		.loc 1 511 8 view .LVU209
 903 0056 084A     		ldr	r2, .L96
 904 0058 21F4FC71 		bic	r1, r1, #504
 905              	.LVL75:
 906              		.loc 1 511 8 is_stmt 0 view .LVU210
 907 005c D36C     		ldr	r3, [r2, #76]
 908 005e 4905     		lsls	r1, r1, #21
 909 0060 490D     		lsrs	r1, r1, #21
 910 0062 23EA0101 		bic	r1, r3, r1
 911 0066 D164     		str	r1, [r2, #76]
 512:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 912              		.loc 1 512 8 is_stmt 1 view .LVU211
 913 0068 D9E7     		b	.L95
 914              	.LVL76:
 915              	.L86:
 513:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_GPIO_G:
 514:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        CLEAR_BIT(PWR->PDCRG, ((GPIONumber & PWR_PORTG_AVAILABLE_PINS) & (~(PWR_GPIO_BIT_10))));
 916              		.loc 1 514 8 view .LVU212
 917 006a 034B     		ldr	r3, .L96
 918 006c 5A6D     		ldr	r2, [r3, #84]
 919 006e 5A65     		str	r2, [r3, #84]
 515:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****        break;
 920              		.loc 1 515 8 view .LVU213
 921 0070 D5E7     		b	.L95
 922              	.L94:
 516:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     default:
 517:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       status = HAL_ERROR;
 923              		.loc 1 517 14 is_stmt 0 view .LVU214
 924 0072 0120     		movs	r0, #1
 925              	.LVL77:
 518:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 519:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 520:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 521:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   return status;
 926              		.loc 1 521 3 is_stmt 1 view .LVU215
 522:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 927              		.loc 1 522 1 is_stmt 0 view .LVU216
 928 0074 7047     		bx	lr
 929              	.L97:
 930 0076 00BF     		.align	2
 931              	.L96:
 932 0078 00700040 		.word	1073770496
 933              		.cfi_endproc
 934              	.LFE334:
 936              		.section	.text.HAL_PWREx_EnablePullUpPullDownConfig,"ax",%progbits
 937              		.align	1
 938              		.global	HAL_PWREx_EnablePullUpPullDownConfig
 939              		.syntax unified
 940              		.thumb
 941              		.thumb_func
 942              		.fpu fpv4-sp-d16
 944              	HAL_PWREx_EnablePullUpPullDownConfig:
 945              	.LFB335:
 523:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 524:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 525:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 526:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 527:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable pull-up and pull-down configuration.
 528:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When APC bit is set, the I/O pull-up and pull-down configurations defined in
 529:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        PWR_PUCRx and PWR_PDCRx registers are applied in Standby and Shutdown modes.
 530:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Pull-up set by PUy bit of PWR_PUCRx register is not activated if the corresponding
 531:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        PDy bit of PWR_PDCRx register is also set (pull-down configuration priority is higher).
 532:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        HAL_PWREx_EnableGPIOPullUp() and HAL_PWREx_EnableGPIOPullDown() API's ensure there
 533:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        is no conflict when setting PUy or PDy bit.
 534:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 535:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 536:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnablePullUpPullDownConfig(void)
 537:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 946              		.loc 1 537 1 is_stmt 1 view -0
 947              		.cfi_startproc
 948              		@ args = 0, pretend = 0, frame = 0
 949              		@ frame_needed = 0, uses_anonymous_args = 0
 950              		@ link register save eliminated.
 538:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR3, PWR_CR3_APC);
 951              		.loc 1 538 3 view .LVU218
 952 0000 024A     		ldr	r2, .L99
 953 0002 9368     		ldr	r3, [r2, #8]
 954 0004 43F48063 		orr	r3, r3, #1024
 955 0008 9360     		str	r3, [r2, #8]
 539:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 956              		.loc 1 539 1 is_stmt 0 view .LVU219
 957 000a 7047     		bx	lr
 958              	.L100:
 959              		.align	2
 960              	.L99:
 961 000c 00700040 		.word	1073770496
 962              		.cfi_endproc
 963              	.LFE335:
 965              		.section	.text.HAL_PWREx_DisablePullUpPullDownConfig,"ax",%progbits
 966              		.align	1
 967              		.global	HAL_PWREx_DisablePullUpPullDownConfig
 968              		.syntax unified
 969              		.thumb
 970              		.thumb_func
 971              		.fpu fpv4-sp-d16
 973              	HAL_PWREx_DisablePullUpPullDownConfig:
 974              	.LFB336:
 540:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 541:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 542:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 543:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable pull-up and pull-down configuration.
 544:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When APC bit is cleared, the I/O pull-up and pull-down configurations defined in
 545:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        PWR_PUCRx and PWR_PDCRx registers are not applied in Standby and Shutdown modes.
 546:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 547:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 548:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisablePullUpPullDownConfig(void)
 549:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 975              		.loc 1 549 1 is_stmt 1 view -0
 976              		.cfi_startproc
 977              		@ args = 0, pretend = 0, frame = 0
 978              		@ frame_needed = 0, uses_anonymous_args = 0
 979              		@ link register save eliminated.
 550:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR3, PWR_CR3_APC);
 980              		.loc 1 550 3 view .LVU221
 981 0000 024A     		ldr	r2, .L102
 982 0002 9368     		ldr	r3, [r2, #8]
 983 0004 23F48063 		bic	r3, r3, #1024
 984 0008 9360     		str	r3, [r2, #8]
 551:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 985              		.loc 1 551 1 is_stmt 0 view .LVU222
 986 000a 7047     		bx	lr
 987              	.L103:
 988              		.align	2
 989              	.L102:
 990 000c 00700040 		.word	1073770496
 991              		.cfi_endproc
 992              	.LFE336:
 994              		.section	.text.HAL_PWREx_EnableSRAM2ContentRetention,"ax",%progbits
 995              		.align	1
 996              		.global	HAL_PWREx_EnableSRAM2ContentRetention
 997              		.syntax unified
 998              		.thumb
 999              		.thumb_func
 1000              		.fpu fpv4-sp-d16
 1002              	HAL_PWREx_EnableSRAM2ContentRetention:
 1003              	.LFB337:
 552:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 553:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 554:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 555:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 556:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable SRAM2 content retention in Standby mode.
 557:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When RRS bit is set, SRAM2 is powered by the low-power regulator in
 558:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         Standby mode and its content is kept.
 559:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 560:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 561:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnableSRAM2ContentRetention(void)
 562:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1004              		.loc 1 562 1 is_stmt 1 view -0
 1005              		.cfi_startproc
 1006              		@ args = 0, pretend = 0, frame = 0
 1007              		@ frame_needed = 0, uses_anonymous_args = 0
 1008              		@ link register save eliminated.
 563:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR3, PWR_CR3_RRS);
 1009              		.loc 1 563 3 view .LVU224
 1010 0000 024A     		ldr	r2, .L105
 1011 0002 9368     		ldr	r3, [r2, #8]
 1012 0004 43F48073 		orr	r3, r3, #256
 1013 0008 9360     		str	r3, [r2, #8]
 564:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1014              		.loc 1 564 1 is_stmt 0 view .LVU225
 1015 000a 7047     		bx	lr
 1016              	.L106:
 1017              		.align	2
 1018              	.L105:
 1019 000c 00700040 		.word	1073770496
 1020              		.cfi_endproc
 1021              	.LFE337:
 1023              		.section	.text.HAL_PWREx_DisableSRAM2ContentRetention,"ax",%progbits
 1024              		.align	1
 1025              		.global	HAL_PWREx_DisableSRAM2ContentRetention
 1026              		.syntax unified
 1027              		.thumb
 1028              		.thumb_func
 1029              		.fpu fpv4-sp-d16
 1031              	HAL_PWREx_DisableSRAM2ContentRetention:
 1032              	.LFB338:
 565:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 566:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 567:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 568:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable SRAM2 content retention in Standby mode.
 569:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When RRS bit is reset, SRAM2 is powered off in Standby mode
 570:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        and its content is lost.
 571:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 572:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 573:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisableSRAM2ContentRetention(void)
 574:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1033              		.loc 1 574 1 is_stmt 1 view -0
 1034              		.cfi_startproc
 1035              		@ args = 0, pretend = 0, frame = 0
 1036              		@ frame_needed = 0, uses_anonymous_args = 0
 1037              		@ link register save eliminated.
 575:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR3, PWR_CR3_RRS);
 1038              		.loc 1 575 3 view .LVU227
 1039 0000 024A     		ldr	r2, .L108
 1040 0002 9368     		ldr	r3, [r2, #8]
 1041 0004 23F48073 		bic	r3, r3, #256
 1042 0008 9360     		str	r3, [r2, #8]
 576:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1043              		.loc 1 576 1 is_stmt 0 view .LVU228
 1044 000a 7047     		bx	lr
 1045              	.L109:
 1046              		.align	2
 1047              	.L108:
 1048 000c 00700040 		.word	1073770496
 1049              		.cfi_endproc
 1050              	.LFE338:
 1052              		.section	.text.HAL_PWREx_EnablePVM1,"ax",%progbits
 1053              		.align	1
 1054              		.global	HAL_PWREx_EnablePVM1
 1055              		.syntax unified
 1056              		.thumb
 1057              		.thumb_func
 1058              		.fpu fpv4-sp-d16
 1060              	HAL_PWREx_EnablePVM1:
 1061              	.LFB339:
 577:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 578:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 579:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 580:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 581:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR2_PVME1)
 582:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 583:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable the Power Voltage Monitoring 1: VDDA versus FASTCOMP minimum voltage.
 584:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 585:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 586:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnablePVM1(void)
 587:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1062              		.loc 1 587 1 is_stmt 1 view -0
 1063              		.cfi_startproc
 1064              		@ args = 0, pretend = 0, frame = 0
 1065              		@ frame_needed = 0, uses_anonymous_args = 0
 1066              		@ link register save eliminated.
 588:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR2, PWR_PVM_1);
 1067              		.loc 1 588 3 view .LVU230
 1068 0000 024A     		ldr	r2, .L111
 1069 0002 5368     		ldr	r3, [r2, #4]
 1070 0004 43F01003 		orr	r3, r3, #16
 1071 0008 5360     		str	r3, [r2, #4]
 589:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1072              		.loc 1 589 1 is_stmt 0 view .LVU231
 1073 000a 7047     		bx	lr
 1074              	.L112:
 1075              		.align	2
 1076              	.L111:
 1077 000c 00700040 		.word	1073770496
 1078              		.cfi_endproc
 1079              	.LFE339:
 1081              		.section	.text.HAL_PWREx_DisablePVM1,"ax",%progbits
 1082              		.align	1
 1083              		.global	HAL_PWREx_DisablePVM1
 1084              		.syntax unified
 1085              		.thumb
 1086              		.thumb_func
 1087              		.fpu fpv4-sp-d16
 1089              	HAL_PWREx_DisablePVM1:
 1090              	.LFB340:
 590:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 591:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 592:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable the Power Voltage Monitoring 1: VDDA versus FASTCOMP minimum voltage.
 593:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 594:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 595:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisablePVM1(void)
 596:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1091              		.loc 1 596 1 is_stmt 1 view -0
 1092              		.cfi_startproc
 1093              		@ args = 0, pretend = 0, frame = 0
 1094              		@ frame_needed = 0, uses_anonymous_args = 0
 1095              		@ link register save eliminated.
 597:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR2, PWR_PVM_1);
 1096              		.loc 1 597 3 view .LVU233
 1097 0000 024A     		ldr	r2, .L114
 1098 0002 5368     		ldr	r3, [r2, #4]
 1099 0004 23F01003 		bic	r3, r3, #16
 1100 0008 5360     		str	r3, [r2, #4]
 598:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1101              		.loc 1 598 1 is_stmt 0 view .LVU234
 1102 000a 7047     		bx	lr
 1103              	.L115:
 1104              		.align	2
 1105              	.L114:
 1106 000c 00700040 		.word	1073770496
 1107              		.cfi_endproc
 1108              	.LFE340:
 1110              		.section	.text.HAL_PWREx_EnablePVM2,"ax",%progbits
 1111              		.align	1
 1112              		.global	HAL_PWREx_EnablePVM2
 1113              		.syntax unified
 1114              		.thumb
 1115              		.thumb_func
 1116              		.fpu fpv4-sp-d16
 1118              	HAL_PWREx_EnablePVM2:
 1119              	.LFB341:
 599:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR2_PVME1 */
 600:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 601:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 602:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR2_PVME2)
 603:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 604:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable the Power Voltage Monitoring 2: VDDA versus FASTDAC minimum voltage.
 605:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 606:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 607:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnablePVM2(void)
 608:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1120              		.loc 1 608 1 is_stmt 1 view -0
 1121              		.cfi_startproc
 1122              		@ args = 0, pretend = 0, frame = 0
 1123              		@ frame_needed = 0, uses_anonymous_args = 0
 1124              		@ link register save eliminated.
 609:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR2, PWR_PVM_2);
 1125              		.loc 1 609 3 view .LVU236
 1126 0000 024A     		ldr	r2, .L117
 1127 0002 5368     		ldr	r3, [r2, #4]
 1128 0004 43F02003 		orr	r3, r3, #32
 1129 0008 5360     		str	r3, [r2, #4]
 610:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1130              		.loc 1 610 1 is_stmt 0 view .LVU237
 1131 000a 7047     		bx	lr
 1132              	.L118:
 1133              		.align	2
 1134              	.L117:
 1135 000c 00700040 		.word	1073770496
 1136              		.cfi_endproc
 1137              	.LFE341:
 1139              		.section	.text.HAL_PWREx_DisablePVM2,"ax",%progbits
 1140              		.align	1
 1141              		.global	HAL_PWREx_DisablePVM2
 1142              		.syntax unified
 1143              		.thumb
 1144              		.thumb_func
 1145              		.fpu fpv4-sp-d16
 1147              	HAL_PWREx_DisablePVM2:
 1148              	.LFB342:
 611:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 612:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 613:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable the Power Voltage Monitoring 2: VDDA versus FASTDAC minimum voltage.
 614:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 615:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 616:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisablePVM2(void)
 617:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1149              		.loc 1 617 1 is_stmt 1 view -0
 1150              		.cfi_startproc
 1151              		@ args = 0, pretend = 0, frame = 0
 1152              		@ frame_needed = 0, uses_anonymous_args = 0
 1153              		@ link register save eliminated.
 618:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR2, PWR_PVM_2);
 1154              		.loc 1 618 3 view .LVU239
 1155 0000 024A     		ldr	r2, .L120
 1156 0002 5368     		ldr	r3, [r2, #4]
 1157 0004 23F02003 		bic	r3, r3, #32
 1158 0008 5360     		str	r3, [r2, #4]
 619:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1159              		.loc 1 619 1 is_stmt 0 view .LVU240
 1160 000a 7047     		bx	lr
 1161              	.L121:
 1162              		.align	2
 1163              	.L120:
 1164 000c 00700040 		.word	1073770496
 1165              		.cfi_endproc
 1166              	.LFE342:
 1168              		.section	.text.HAL_PWREx_EnablePVM3,"ax",%progbits
 1169              		.align	1
 1170              		.global	HAL_PWREx_EnablePVM3
 1171              		.syntax unified
 1172              		.thumb
 1173              		.thumb_func
 1174              		.fpu fpv4-sp-d16
 1176              	HAL_PWREx_EnablePVM3:
 1177              	.LFB343:
 620:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR2_PVME2 */
 621:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 622:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 623:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 624:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable the Power Voltage Monitoring 3: VDDA versus ADC minimum voltage 1.62V.
 625:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 626:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 627:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnablePVM3(void)
 628:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1178              		.loc 1 628 1 is_stmt 1 view -0
 1179              		.cfi_startproc
 1180              		@ args = 0, pretend = 0, frame = 0
 1181              		@ frame_needed = 0, uses_anonymous_args = 0
 1182              		@ link register save eliminated.
 629:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR2, PWR_PVM_3);
 1183              		.loc 1 629 3 view .LVU242
 1184 0000 024A     		ldr	r2, .L123
 1185 0002 5368     		ldr	r3, [r2, #4]
 1186 0004 43F04003 		orr	r3, r3, #64
 1187 0008 5360     		str	r3, [r2, #4]
 630:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1188              		.loc 1 630 1 is_stmt 0 view .LVU243
 1189 000a 7047     		bx	lr
 1190              	.L124:
 1191              		.align	2
 1192              	.L123:
 1193 000c 00700040 		.word	1073770496
 1194              		.cfi_endproc
 1195              	.LFE343:
 1197              		.section	.text.HAL_PWREx_DisablePVM3,"ax",%progbits
 1198              		.align	1
 1199              		.global	HAL_PWREx_DisablePVM3
 1200              		.syntax unified
 1201              		.thumb
 1202              		.thumb_func
 1203              		.fpu fpv4-sp-d16
 1205              	HAL_PWREx_DisablePVM3:
 1206              	.LFB344:
 631:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 632:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 633:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable the Power Voltage Monitoring 3: VDDA versus ADC minimum voltage 1.62V.
 634:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 635:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 636:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisablePVM3(void)
 637:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1207              		.loc 1 637 1 is_stmt 1 view -0
 1208              		.cfi_startproc
 1209              		@ args = 0, pretend = 0, frame = 0
 1210              		@ frame_needed = 0, uses_anonymous_args = 0
 1211              		@ link register save eliminated.
 638:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR2, PWR_PVM_3);
 1212              		.loc 1 638 3 view .LVU245
 1213 0000 024A     		ldr	r2, .L126
 1214 0002 5368     		ldr	r3, [r2, #4]
 1215 0004 23F04003 		bic	r3, r3, #64
 1216 0008 5360     		str	r3, [r2, #4]
 639:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1217              		.loc 1 639 1 is_stmt 0 view .LVU246
 1218 000a 7047     		bx	lr
 1219              	.L127:
 1220              		.align	2
 1221              	.L126:
 1222 000c 00700040 		.word	1073770496
 1223              		.cfi_endproc
 1224              	.LFE344:
 1226              		.section	.text.HAL_PWREx_EnablePVM4,"ax",%progbits
 1227              		.align	1
 1228              		.global	HAL_PWREx_EnablePVM4
 1229              		.syntax unified
 1230              		.thumb
 1231              		.thumb_func
 1232              		.fpu fpv4-sp-d16
 1234              	HAL_PWREx_EnablePVM4:
 1235              	.LFB345:
 640:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 641:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 642:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 643:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable the Power Voltage Monitoring 4: VDDA versus OPAMP/DAC minimum voltage 1.8V.
 644:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 645:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 646:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnablePVM4(void)
 647:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1236              		.loc 1 647 1 is_stmt 1 view -0
 1237              		.cfi_startproc
 1238              		@ args = 0, pretend = 0, frame = 0
 1239              		@ frame_needed = 0, uses_anonymous_args = 0
 1240              		@ link register save eliminated.
 648:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR2, PWR_PVM_4);
 1241              		.loc 1 648 3 view .LVU248
 1242 0000 024A     		ldr	r2, .L129
 1243 0002 5368     		ldr	r3, [r2, #4]
 1244 0004 43F08003 		orr	r3, r3, #128
 1245 0008 5360     		str	r3, [r2, #4]
 649:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1246              		.loc 1 649 1 is_stmt 0 view .LVU249
 1247 000a 7047     		bx	lr
 1248              	.L130:
 1249              		.align	2
 1250              	.L129:
 1251 000c 00700040 		.word	1073770496
 1252              		.cfi_endproc
 1253              	.LFE345:
 1255              		.section	.text.HAL_PWREx_DisablePVM4,"ax",%progbits
 1256              		.align	1
 1257              		.global	HAL_PWREx_DisablePVM4
 1258              		.syntax unified
 1259              		.thumb
 1260              		.thumb_func
 1261              		.fpu fpv4-sp-d16
 1263              	HAL_PWREx_DisablePVM4:
 1264              	.LFB346:
 650:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 651:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 652:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable the Power Voltage Monitoring 4: VDDA versus OPAMP/DAC minimum voltage 1.8V.
 653:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 654:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 655:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisablePVM4(void)
 656:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1265              		.loc 1 656 1 is_stmt 1 view -0
 1266              		.cfi_startproc
 1267              		@ args = 0, pretend = 0, frame = 0
 1268              		@ frame_needed = 0, uses_anonymous_args = 0
 1269              		@ link register save eliminated.
 657:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR2, PWR_PVM_4);
 1270              		.loc 1 657 3 view .LVU251
 1271 0000 024A     		ldr	r2, .L132
 1272 0002 5368     		ldr	r3, [r2, #4]
 1273 0004 23F08003 		bic	r3, r3, #128
 1274 0008 5360     		str	r3, [r2, #4]
 658:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1275              		.loc 1 658 1 is_stmt 0 view .LVU252
 1276 000a 7047     		bx	lr
 1277              	.L133:
 1278              		.align	2
 1279              	.L132:
 1280 000c 00700040 		.word	1073770496
 1281              		.cfi_endproc
 1282              	.LFE346:
 1284              		.section	.text.HAL_PWREx_ConfigPVM,"ax",%progbits
 1285              		.align	1
 1286              		.global	HAL_PWREx_ConfigPVM
 1287              		.syntax unified
 1288              		.thumb
 1289              		.thumb_func
 1290              		.fpu fpv4-sp-d16
 1292              	HAL_PWREx_ConfigPVM:
 1293              	.LVL78:
 1294              	.LFB347:
 659:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 660:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 661:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 662:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 663:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 664:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Configure the Peripheral Voltage Monitoring (PVM).
 665:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param sConfigPVM: pointer to a PWR_PVMTypeDef structure that contains the
 666:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        PVM configuration information.
 667:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note The API configures a single PVM according to the information contained
 668:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       in the input structure. To configure several PVMs, the API must be singly
 669:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       called for each PVM used.
 670:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note Refer to the electrical characteristics of your device datasheet for
 671:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         more details about the voltage thresholds corresponding to each
 672:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         detection level and to each monitored supply.
 673:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval HAL status
 674:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 675:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_ConfigPVM(PWR_PVMTypeDef *sConfigPVM)
 676:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1295              		.loc 1 676 1 is_stmt 1 view -0
 1296              		.cfi_startproc
 1297              		@ args = 0, pretend = 0, frame = 0
 1298              		@ frame_needed = 0, uses_anonymous_args = 0
 1299              		@ link register save eliminated.
 677:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 1300              		.loc 1 677 3 view .LVU254
 678:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 679:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Check the parameters */
 680:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_PVM_TYPE(sConfigPVM->PVMType));
 1301              		.loc 1 680 3 view .LVU255
 681:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_PVM_MODE(sConfigPVM->Mode));
 1302              		.loc 1 681 3 view .LVU256
 682:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 683:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 684:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Configure EXTI 35 to 38 interrupts if so required:
 685:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****      scan thru PVMType to detect which PVMx is set and
 686:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****      configure the corresponding EXTI line accordingly. */
 687:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   switch (sConfigPVM->PVMType)
 1303              		.loc 1 687 3 view .LVU257
 1304              		.loc 1 687 21 is_stmt 0 view .LVU258
 1305 0000 0368     		ldr	r3, [r0]
 1306              		.loc 1 687 3 view .LVU259
 1307 0002 202B     		cmp	r3, #32
 1308 0004 60D0     		beq	.L135
 1309 0006 03D8     		bhi	.L136
 1310 0008 102B     		cmp	r3, #16
 1311 000a 30D0     		beq	.L137
 1312              	.L200:
 688:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 689:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR2_PVME1)
 690:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_PVM_1:
 691:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Clear any previous config. Keep it clear if no event or IT mode is selected */
 692:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM1_EXTI_DISABLE_EVENT();
 693:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM1_EXTI_DISABLE_IT();
 694:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM1_EXTI_DISABLE_FALLING_EDGE();
 695:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM1_EXTI_DISABLE_RISING_EDGE();
 696:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 697:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure interrupt mode */
 698:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_IT) == PVM_MODE_IT)
 699:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 700:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM1_EXTI_ENABLE_IT();
 701:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 702:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 703:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure event mode */
 704:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_EVT) == PVM_MODE_EVT)
 705:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 706:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM1_EXTI_ENABLE_EVENT();
 707:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 708:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 709:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure the edge */
 710:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_RISING_EDGE) == PVM_RISING_EDGE)
 711:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 712:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM1_EXTI_ENABLE_RISING_EDGE();
 713:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 714:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 715:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_FALLING_EDGE) == PVM_FALLING_EDGE)
 716:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 717:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM1_EXTI_ENABLE_FALLING_EDGE();
 718:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 719:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 720:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR2_PVME1 */
 721:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 722:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR2_PVME2)
 723:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_PVM_2:
 724:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Clear any previous config. Keep it clear if no event or IT mode is selected */
 725:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM2_EXTI_DISABLE_EVENT();
 726:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM2_EXTI_DISABLE_IT();
 727:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM2_EXTI_DISABLE_FALLING_EDGE();
 728:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM2_EXTI_DISABLE_RISING_EDGE();
 729:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 730:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure interrupt mode */
 731:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_IT) == PVM_MODE_IT)
 732:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 733:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM2_EXTI_ENABLE_IT();
 734:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 735:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 736:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure event mode */
 737:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_EVT) == PVM_MODE_EVT)
 738:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 739:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM2_EXTI_ENABLE_EVENT();
 740:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 741:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 742:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure the edge */
 743:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_RISING_EDGE) == PVM_RISING_EDGE)
 744:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 745:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM2_EXTI_ENABLE_RISING_EDGE();
 746:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 747:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 748:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_FALLING_EDGE) == PVM_FALLING_EDGE)
 749:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 750:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM2_EXTI_ENABLE_FALLING_EDGE();
 751:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 752:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 753:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR2_PVME2 */
 754:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 755:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_PVM_3:
 756:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Clear any previous config. Keep it clear if no event or IT mode is selected */
 757:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM3_EXTI_DISABLE_EVENT();
 758:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM3_EXTI_DISABLE_IT();
 759:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM3_EXTI_DISABLE_FALLING_EDGE();
 760:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM3_EXTI_DISABLE_RISING_EDGE();
 761:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 762:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure interrupt mode */
 763:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_IT) == PVM_MODE_IT)
 764:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 765:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM3_EXTI_ENABLE_IT();
 766:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 767:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 768:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure event mode */
 769:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_EVT) == PVM_MODE_EVT)
 770:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 771:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM3_EXTI_ENABLE_EVENT();
 772:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 773:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 774:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure the edge */
 775:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_RISING_EDGE) == PVM_RISING_EDGE)
 776:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 777:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM3_EXTI_ENABLE_RISING_EDGE();
 778:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 779:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 780:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_FALLING_EDGE) == PVM_FALLING_EDGE)
 781:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 782:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM3_EXTI_ENABLE_FALLING_EDGE();
 783:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 784:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 785:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 786:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     case PWR_PVM_4:
 787:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Clear any previous config. Keep it clear if no event or IT mode is selected */
 788:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM4_EXTI_DISABLE_EVENT();
 789:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM4_EXTI_DISABLE_IT();
 790:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM4_EXTI_DISABLE_FALLING_EDGE();
 791:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM4_EXTI_DISABLE_RISING_EDGE();
 792:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 793:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure interrupt mode */
 794:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_IT) == PVM_MODE_IT)
 795:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 796:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM4_EXTI_ENABLE_IT();
 797:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 798:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 799:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure event mode */
 800:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_MODE_EVT) == PVM_MODE_EVT)
 801:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 802:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM4_EXTI_ENABLE_EVENT();
 803:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 804:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 805:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       /* Configure the edge */
 806:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_RISING_EDGE) == PVM_RISING_EDGE)
 807:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 808:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM4_EXTI_ENABLE_RISING_EDGE();
 809:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 810:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 811:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       if((sConfigPVM->Mode & PVM_FALLING_EDGE) == PVM_FALLING_EDGE)
 812:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 813:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****         __HAL_PWR_PVM4_EXTI_ENABLE_FALLING_EDGE();
 814:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 815:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 816:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 817:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     default:
 818:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       status = HAL_ERROR;
 1313              		.loc 1 818 14 view .LVU260
 1314 000c 0120     		movs	r0, #1
 1315              	.LVL79:
 1316              		.loc 1 818 14 view .LVU261
 1317 000e 7047     		bx	lr
 1318              	.LVL80:
 1319              	.L136:
 687:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 1320              		.loc 1 687 3 view .LVU262
 1321 0010 402B     		cmp	r3, #64
 1322 0012 00F08380 		beq	.L139
 1323 0016 802B     		cmp	r3, #128
 1324 0018 F8D1     		bne	.L200
 788:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM4_EXTI_DISABLE_IT();
 1325              		.loc 1 788 7 is_stmt 1 view .LVU263
 1326 001a 554B     		ldr	r3, .L203
 1327 001c 5A6A     		ldr	r2, [r3, #36]
 1328 001e 22F04002 		bic	r2, r2, #64
 1329 0022 5A62     		str	r2, [r3, #36]
 789:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM4_EXTI_DISABLE_FALLING_EDGE();
 1330              		.loc 1 789 7 view .LVU264
 1331 0024 1A6A     		ldr	r2, [r3, #32]
 1332 0026 22F04002 		bic	r2, r2, #64
 1333 002a 1A62     		str	r2, [r3, #32]
 790:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM4_EXTI_DISABLE_RISING_EDGE();
 1334              		.loc 1 790 7 view .LVU265
 1335 002c DA6A     		ldr	r2, [r3, #44]
 1336 002e 22F04002 		bic	r2, r2, #64
 1337 0032 DA62     		str	r2, [r3, #44]
 791:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1338              		.loc 1 791 7 view .LVU266
 1339 0034 9A6A     		ldr	r2, [r3, #40]
 1340 0036 22F04002 		bic	r2, r2, #64
 1341 003a 9A62     		str	r2, [r3, #40]
 794:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1342              		.loc 1 794 7 view .LVU267
 794:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1343              		.loc 1 794 21 is_stmt 0 view .LVU268
 1344 003c 4268     		ldr	r2, [r0, #4]
 794:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1345              		.loc 1 794 9 view .LVU269
 1346 003e D103     		lsls	r1, r2, #15
 796:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1347              		.loc 1 796 9 is_stmt 1 view .LVU270
 1348 0040 42BF     		ittt	mi
 1349 0042 196A     		ldrmi	r1, [r3, #32]
 1350 0044 41F04001 		orrmi	r1, r1, #64
 1351 0048 1962     		strmi	r1, [r3, #32]
 800:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1352              		.loc 1 800 7 view .LVU271
 800:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1353              		.loc 1 800 9 is_stmt 0 view .LVU272
 1354 004a 9003     		lsls	r0, r2, #14
 1355              	.LVL81:
 802:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1356              		.loc 1 802 9 is_stmt 1 view .LVU273
 1357 004c 42BF     		ittt	mi
 1358 004e 596A     		ldrmi	r1, [r3, #36]
 1359 0050 41F04001 		orrmi	r1, r1, #64
 1360 0054 5962     		strmi	r1, [r3, #36]
 806:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1361              		.loc 1 806 7 view .LVU274
 806:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1362              		.loc 1 806 9 is_stmt 0 view .LVU275
 1363 0056 D107     		lsls	r1, r2, #31
 808:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1364              		.loc 1 808 9 is_stmt 1 view .LVU276
 1365 0058 42BF     		ittt	mi
 1366 005a 996A     		ldrmi	r1, [r3, #40]
 1367 005c 41F04001 		orrmi	r1, r1, #64
 1368 0060 9962     		strmi	r1, [r3, #40]
 811:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1369              		.loc 1 811 7 view .LVU277
 811:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1370              		.loc 1 811 9 is_stmt 0 view .LVU278
 1371 0062 9207     		lsls	r2, r2, #30
 1372 0064 29D5     		bpl	.L202
 813:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1373              		.loc 1 813 9 is_stmt 1 view .LVU279
 1374 0066 DA6A     		ldr	r2, [r3, #44]
 1375 0068 42F04002 		orr	r2, r2, #64
 1376 006c 2AE0     		b	.L201
 1377              	.LVL82:
 1378              	.L137:
 692:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM1_EXTI_DISABLE_IT();
 1379              		.loc 1 692 7 view .LVU280
 1380 006e 404B     		ldr	r3, .L203
 1381 0070 5A6A     		ldr	r2, [r3, #36]
 1382 0072 22F00802 		bic	r2, r2, #8
 1383 0076 5A62     		str	r2, [r3, #36]
 693:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM1_EXTI_DISABLE_FALLING_EDGE();
 1384              		.loc 1 693 7 view .LVU281
 1385 0078 1A6A     		ldr	r2, [r3, #32]
 1386 007a 22F00802 		bic	r2, r2, #8
 1387 007e 1A62     		str	r2, [r3, #32]
 694:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM1_EXTI_DISABLE_RISING_EDGE();
 1388              		.loc 1 694 7 view .LVU282
 1389 0080 DA6A     		ldr	r2, [r3, #44]
 1390 0082 22F00802 		bic	r2, r2, #8
 1391 0086 DA62     		str	r2, [r3, #44]
 695:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1392              		.loc 1 695 7 view .LVU283
 1393 0088 9A6A     		ldr	r2, [r3, #40]
 1394 008a 22F00802 		bic	r2, r2, #8
 1395 008e 9A62     		str	r2, [r3, #40]
 698:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1396              		.loc 1 698 7 view .LVU284
 698:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1397              		.loc 1 698 21 is_stmt 0 view .LVU285
 1398 0090 4268     		ldr	r2, [r0, #4]
 698:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1399              		.loc 1 698 9 view .LVU286
 1400 0092 D103     		lsls	r1, r2, #15
 700:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1401              		.loc 1 700 9 is_stmt 1 view .LVU287
 1402 0094 42BF     		ittt	mi
 1403 0096 196A     		ldrmi	r1, [r3, #32]
 1404 0098 41F00801 		orrmi	r1, r1, #8
 1405 009c 1962     		strmi	r1, [r3, #32]
 704:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1406              		.loc 1 704 7 view .LVU288
 704:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1407              		.loc 1 704 9 is_stmt 0 view .LVU289
 1408 009e 9003     		lsls	r0, r2, #14
 1409              	.LVL83:
 706:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1410              		.loc 1 706 9 is_stmt 1 view .LVU290
 1411 00a0 42BF     		ittt	mi
 1412 00a2 596A     		ldrmi	r1, [r3, #36]
 1413 00a4 41F00801 		orrmi	r1, r1, #8
 1414 00a8 5962     		strmi	r1, [r3, #36]
 710:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1415              		.loc 1 710 7 view .LVU291
 710:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1416              		.loc 1 710 9 is_stmt 0 view .LVU292
 1417 00aa D107     		lsls	r1, r2, #31
 712:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1418              		.loc 1 712 9 is_stmt 1 view .LVU293
 1419 00ac 42BF     		ittt	mi
 1420 00ae 996A     		ldrmi	r1, [r3, #40]
 1421 00b0 41F00801 		orrmi	r1, r1, #8
 1422 00b4 9962     		strmi	r1, [r3, #40]
 715:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1423              		.loc 1 715 7 view .LVU294
 715:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1424              		.loc 1 715 9 is_stmt 0 view .LVU295
 1425 00b6 9007     		lsls	r0, r2, #30
 1426 00b8 01D4     		bmi	.L144
 1427              	.L202:
 677:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1428              		.loc 1 677 21 view .LVU296
 1429 00ba 0020     		movs	r0, #0
 1430              	.LVL84:
 819:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       break;
 820:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 821:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 822:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   return status;
 1431              		.loc 1 822 3 is_stmt 1 view .LVU297
 823:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1432              		.loc 1 823 1 is_stmt 0 view .LVU298
 1433 00bc 7047     		bx	lr
 1434              	.LVL85:
 1435              	.L144:
 717:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1436              		.loc 1 717 9 is_stmt 1 view .LVU299
 1437 00be DA6A     		ldr	r2, [r3, #44]
 1438 00c0 42F00802 		orr	r2, r2, #8
 1439              	.L201:
 813:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1440              		.loc 1 813 9 is_stmt 0 view .LVU300
 1441 00c4 DA62     		str	r2, [r3, #44]
 1442 00c6 F8E7     		b	.L202
 1443              	.LVL86:
 1444              	.L135:
 725:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM2_EXTI_DISABLE_IT();
 1445              		.loc 1 725 7 is_stmt 1 view .LVU301
 1446 00c8 294B     		ldr	r3, .L203
 1447 00ca 5A6A     		ldr	r2, [r3, #36]
 1448 00cc 22F01002 		bic	r2, r2, #16
 1449 00d0 5A62     		str	r2, [r3, #36]
 726:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM2_EXTI_DISABLE_FALLING_EDGE();
 1450              		.loc 1 726 7 view .LVU302
 1451 00d2 1A6A     		ldr	r2, [r3, #32]
 1452 00d4 22F01002 		bic	r2, r2, #16
 1453 00d8 1A62     		str	r2, [r3, #32]
 727:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM2_EXTI_DISABLE_RISING_EDGE();
 1454              		.loc 1 727 7 view .LVU303
 1455 00da DA6A     		ldr	r2, [r3, #44]
 1456 00dc 22F01002 		bic	r2, r2, #16
 1457 00e0 DA62     		str	r2, [r3, #44]
 728:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1458              		.loc 1 728 7 view .LVU304
 1459 00e2 9A6A     		ldr	r2, [r3, #40]
 1460 00e4 22F01002 		bic	r2, r2, #16
 1461 00e8 9A62     		str	r2, [r3, #40]
 731:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1462              		.loc 1 731 7 view .LVU305
 731:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1463              		.loc 1 731 21 is_stmt 0 view .LVU306
 1464 00ea 4268     		ldr	r2, [r0, #4]
 731:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1465              		.loc 1 731 9 view .LVU307
 1466 00ec D103     		lsls	r1, r2, #15
 733:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1467              		.loc 1 733 9 is_stmt 1 view .LVU308
 1468 00ee 42BF     		ittt	mi
 1469 00f0 196A     		ldrmi	r1, [r3, #32]
 1470 00f2 41F01001 		orrmi	r1, r1, #16
 1471 00f6 1962     		strmi	r1, [r3, #32]
 737:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1472              		.loc 1 737 7 view .LVU309
 737:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1473              		.loc 1 737 9 is_stmt 0 view .LVU310
 1474 00f8 9003     		lsls	r0, r2, #14
 1475              	.LVL87:
 739:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1476              		.loc 1 739 9 is_stmt 1 view .LVU311
 1477 00fa 42BF     		ittt	mi
 1478 00fc 596A     		ldrmi	r1, [r3, #36]
 1479 00fe 41F01001 		orrmi	r1, r1, #16
 1480 0102 5962     		strmi	r1, [r3, #36]
 743:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1481              		.loc 1 743 7 view .LVU312
 743:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1482              		.loc 1 743 9 is_stmt 0 view .LVU313
 1483 0104 D107     		lsls	r1, r2, #31
 745:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1484              		.loc 1 745 9 is_stmt 1 view .LVU314
 1485 0106 42BF     		ittt	mi
 1486 0108 996A     		ldrmi	r1, [r3, #40]
 1487 010a 41F01001 		orrmi	r1, r1, #16
 1488 010e 9962     		strmi	r1, [r3, #40]
 748:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1489              		.loc 1 748 7 view .LVU315
 748:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1490              		.loc 1 748 9 is_stmt 0 view .LVU316
 1491 0110 9007     		lsls	r0, r2, #30
 1492 0112 D2D5     		bpl	.L202
 750:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1493              		.loc 1 750 9 is_stmt 1 view .LVU317
 1494 0114 DA6A     		ldr	r2, [r3, #44]
 1495 0116 42F01002 		orr	r2, r2, #16
 1496 011a D3E7     		b	.L201
 1497              	.LVL88:
 1498              	.L139:
 757:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM3_EXTI_DISABLE_IT();
 1499              		.loc 1 757 7 view .LVU318
 1500 011c 144B     		ldr	r3, .L203
 1501 011e 5A6A     		ldr	r2, [r3, #36]
 1502 0120 22F02002 		bic	r2, r2, #32
 1503 0124 5A62     		str	r2, [r3, #36]
 758:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM3_EXTI_DISABLE_FALLING_EDGE();
 1504              		.loc 1 758 7 view .LVU319
 1505 0126 1A6A     		ldr	r2, [r3, #32]
 1506 0128 22F02002 		bic	r2, r2, #32
 1507 012c 1A62     		str	r2, [r3, #32]
 759:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       __HAL_PWR_PVM3_EXTI_DISABLE_RISING_EDGE();
 1508              		.loc 1 759 7 view .LVU320
 1509 012e DA6A     		ldr	r2, [r3, #44]
 1510 0130 22F02002 		bic	r2, r2, #32
 1511 0134 DA62     		str	r2, [r3, #44]
 760:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1512              		.loc 1 760 7 view .LVU321
 1513 0136 9A6A     		ldr	r2, [r3, #40]
 1514 0138 22F02002 		bic	r2, r2, #32
 1515 013c 9A62     		str	r2, [r3, #40]
 763:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1516              		.loc 1 763 7 view .LVU322
 763:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1517              		.loc 1 763 21 is_stmt 0 view .LVU323
 1518 013e 4268     		ldr	r2, [r0, #4]
 763:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1519              		.loc 1 763 9 view .LVU324
 1520 0140 D103     		lsls	r1, r2, #15
 765:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1521              		.loc 1 765 9 is_stmt 1 view .LVU325
 1522 0142 42BF     		ittt	mi
 1523 0144 196A     		ldrmi	r1, [r3, #32]
 1524 0146 41F02001 		orrmi	r1, r1, #32
 1525 014a 1962     		strmi	r1, [r3, #32]
 769:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1526              		.loc 1 769 7 view .LVU326
 769:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1527              		.loc 1 769 9 is_stmt 0 view .LVU327
 1528 014c 9003     		lsls	r0, r2, #14
 1529              	.LVL89:
 771:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1530              		.loc 1 771 9 is_stmt 1 view .LVU328
 1531 014e 42BF     		ittt	mi
 1532 0150 596A     		ldrmi	r1, [r3, #36]
 1533 0152 41F02001 		orrmi	r1, r1, #32
 1534 0156 5962     		strmi	r1, [r3, #36]
 775:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1535              		.loc 1 775 7 view .LVU329
 775:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1536              		.loc 1 775 9 is_stmt 0 view .LVU330
 1537 0158 D107     		lsls	r1, r2, #31
 777:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1538              		.loc 1 777 9 is_stmt 1 view .LVU331
 1539 015a 42BF     		ittt	mi
 1540 015c 996A     		ldrmi	r1, [r3, #40]
 1541 015e 41F02001 		orrmi	r1, r1, #32
 1542 0162 9962     		strmi	r1, [r3, #40]
 780:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1543              		.loc 1 780 7 view .LVU332
 780:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       {
 1544              		.loc 1 780 9 is_stmt 0 view .LVU333
 1545 0164 9007     		lsls	r0, r2, #30
 1546 0166 A8D5     		bpl	.L202
 782:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       }
 1547              		.loc 1 782 9 is_stmt 1 view .LVU334
 1548 0168 DA6A     		ldr	r2, [r3, #44]
 1549 016a 42F02002 		orr	r2, r2, #32
 1550 016e A9E7     		b	.L201
 1551              	.L204:
 1552              		.align	2
 1553              	.L203:
 1554 0170 00040140 		.word	1073808384
 1555              		.cfi_endproc
 1556              	.LFE347:
 1558              		.section	.text.HAL_PWREx_EnableUSBDeadBatteryPD,"ax",%progbits
 1559              		.align	1
 1560              		.global	HAL_PWREx_EnableUSBDeadBatteryPD
 1561              		.syntax unified
 1562              		.thumb
 1563              		.thumb_func
 1564              		.fpu fpv4-sp-d16
 1566              	HAL_PWREx_EnableUSBDeadBatteryPD:
 1567              	.LFB348:
 824:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 825:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR3_UCPD_DBDIS)
 826:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 827:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable the USB Type-C dead battery pull-down behavior
 828:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        on UCPDx_CC1 and UCPDx_CC2 pins
 829:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note After exiting reset, the USB Type-C dead battery behavior will be enabled,
 830:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       which may have a pull-down effect on CC1 and CC2 pins.
 831:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       It is recommended to disable it in all cases, either to stop this pull-down
 832:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       or to hand over control to the UCPD (which should therefore be
 833:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       initialized before doing the disable).
 834:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 835:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 836:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnableUSBDeadBatteryPD(void)
 837:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1568              		.loc 1 837 1 view -0
 1569              		.cfi_startproc
 1570              		@ args = 0, pretend = 0, frame = 0
 1571              		@ frame_needed = 0, uses_anonymous_args = 0
 1572              		@ link register save eliminated.
 838:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    /* writing 0 to enable the USB Type-C dead battery pull-down behavior */
 839:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    CLEAR_BIT(PWR->CR3, PWR_CR3_UCPD_DBDIS);
 1573              		.loc 1 839 4 view .LVU336
 1574 0000 024A     		ldr	r2, .L206
 1575 0002 9368     		ldr	r3, [r2, #8]
 1576 0004 23F48043 		bic	r3, r3, #16384
 1577 0008 9360     		str	r3, [r2, #8]
 840:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1578              		.loc 1 840 1 is_stmt 0 view .LVU337
 1579 000a 7047     		bx	lr
 1580              	.L207:
 1581              		.align	2
 1582              	.L206:
 1583 000c 00700040 		.word	1073770496
 1584              		.cfi_endproc
 1585              	.LFE348:
 1587              		.section	.text.HAL_PWREx_DisableUSBDeadBatteryPD,"ax",%progbits
 1588              		.align	1
 1589              		.global	HAL_PWREx_DisableUSBDeadBatteryPD
 1590              		.syntax unified
 1591              		.thumb
 1592              		.thumb_func
 1593              		.fpu fpv4-sp-d16
 1595              	HAL_PWREx_DisableUSBDeadBatteryPD:
 1596              	.LFB349:
 841:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 842:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 843:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable the USB Type-C dead battery pull-down behavior
 844:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        on UCPDx_CC1 and UCPDx_CC2 pins
 845:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note After exiting reset, the USB Type-C dead battery behavior will be enabled,
 846:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       which may have a pull-down effect on CC1 and CC2 pins.
 847:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       It is recommended to disable it in all cases, either to stop this pull-down
 848:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       or to hand over control to the UCPD (which should therefore be
 849:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *       initialized before doing the disable).
 850:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 851:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 852:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisableUSBDeadBatteryPD(void)
 853:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1597              		.loc 1 853 1 is_stmt 1 view -0
 1598              		.cfi_startproc
 1599              		@ args = 0, pretend = 0, frame = 0
 1600              		@ frame_needed = 0, uses_anonymous_args = 0
 1601              		@ link register save eliminated.
 854:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    /* writing 1 to disable the USB Type-C dead battery pull-down behavior */
 855:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    SET_BIT(PWR->CR3, PWR_CR3_UCPD_DBDIS);
 1602              		.loc 1 855 4 view .LVU339
 1603 0000 024A     		ldr	r2, .L209
 1604 0002 9368     		ldr	r3, [r2, #8]
 1605 0004 43F48043 		orr	r3, r3, #16384
 1606 0008 9360     		str	r3, [r2, #8]
 856:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1607              		.loc 1 856 1 is_stmt 0 view .LVU340
 1608 000a 7047     		bx	lr
 1609              	.L210:
 1610              		.align	2
 1611              	.L209:
 1612 000c 00700040 		.word	1073770496
 1613              		.cfi_endproc
 1614              	.LFE349:
 1616              		.section	.text.HAL_PWREx_EnableUSBStandByModePD,"ax",%progbits
 1617              		.align	1
 1618              		.global	HAL_PWREx_EnableUSBStandByModePD
 1619              		.syntax unified
 1620              		.thumb
 1621              		.thumb_func
 1622              		.fpu fpv4-sp-d16
 1624              	HAL_PWREx_EnableUSBStandByModePD:
 1625              	.LFB350:
 857:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR3_UCPD_DBDIS */
 858:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 859:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR3_UCPD_STDBY)
 860:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 861:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enable the USB Type-C and Power Delivery standby mode
 862:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 863:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 864:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnableUSBStandByModePD(void)
 865:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1626              		.loc 1 865 1 is_stmt 1 view -0
 1627              		.cfi_startproc
 1628              		@ args = 0, pretend = 0, frame = 0
 1629              		@ frame_needed = 0, uses_anonymous_args = 0
 1630              		@ link register save eliminated.
 866:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    /* Write 1 just before entering Standby when using UCPD */
 867:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    SET_BIT(PWR->CR3, PWR_CR3_UCPD_STDBY);
 1631              		.loc 1 867 4 view .LVU342
 1632 0000 024A     		ldr	r2, .L212
 1633 0002 9368     		ldr	r3, [r2, #8]
 1634 0004 43F40053 		orr	r3, r3, #8192
 1635 0008 9360     		str	r3, [r2, #8]
 868:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1636              		.loc 1 868 1 is_stmt 0 view .LVU343
 1637 000a 7047     		bx	lr
 1638              	.L213:
 1639              		.align	2
 1640              	.L212:
 1641 000c 00700040 		.word	1073770496
 1642              		.cfi_endproc
 1643              	.LFE350:
 1645              		.section	.text.HAL_PWREx_DisableUSBStandByModePD,"ax",%progbits
 1646              		.align	1
 1647              		.global	HAL_PWREx_DisableUSBStandByModePD
 1648              		.syntax unified
 1649              		.thumb
 1650              		.thumb_func
 1651              		.fpu fpv4-sp-d16
 1653              	HAL_PWREx_DisableUSBStandByModePD:
 1654              	.LFB351:
 869:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 870:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 871:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Disable the USB Type-C and Power Delivery standby mode
 872:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 873:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 874:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_DisableUSBStandByModePD (void)
 875:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1655              		.loc 1 875 1 is_stmt 1 view -0
 1656              		.cfi_startproc
 1657              		@ args = 0, pretend = 0, frame = 0
 1658              		@ frame_needed = 0, uses_anonymous_args = 0
 1659              		@ link register save eliminated.
 876:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    /* Write 0 immediately after Standby exit when using UCPD,
 877:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****       and before writing any UCPD registers */
 878:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    CLEAR_BIT(PWR->CR3, PWR_CR3_UCPD_STDBY);
 1660              		.loc 1 878 4 view .LVU345
 1661 0000 024A     		ldr	r2, .L215
 1662 0002 9368     		ldr	r3, [r2, #8]
 1663 0004 23F40053 		bic	r3, r3, #8192
 1664 0008 9360     		str	r3, [r2, #8]
 879:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1665              		.loc 1 879 1 is_stmt 0 view .LVU346
 1666 000a 7047     		bx	lr
 1667              	.L216:
 1668              		.align	2
 1669              	.L215:
 1670 000c 00700040 		.word	1073770496
 1671              		.cfi_endproc
 1672              	.LFE351:
 1674              		.section	.text.HAL_PWREx_EnableLowPowerRunMode,"ax",%progbits
 1675              		.align	1
 1676              		.global	HAL_PWREx_EnableLowPowerRunMode
 1677              		.syntax unified
 1678              		.thumb
 1679              		.thumb_func
 1680              		.fpu fpv4-sp-d16
 1682              	HAL_PWREx_EnableLowPowerRunMode:
 1683              	.LFB352:
 880:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR3_UCPD_STDBY */
 881:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 882:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 883:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enter Low-power Run mode
 884:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  In Low-power Run mode, all I/O pins keep the same state as in Run mode.
 885:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When Regulator is set to PWR_LOWPOWERREGULATOR_ON, the user can optionally configure the
 886:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        Flash in power-down monde in setting the RUN_PD bit in FLASH_ACR register.
 887:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        Additionally, the clock frequency must be reduced below 2 MHz.
 888:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        Setting RUN_PD in FLASH_ACR then appropriately reducing the clock frequency must
 889:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        be done before calling HAL_PWREx_EnableLowPowerRunMode() API.
 890:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 891:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 892:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnableLowPowerRunMode(void)
 893:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1684              		.loc 1 893 1 is_stmt 1 view -0
 1685              		.cfi_startproc
 1686              		@ args = 0, pretend = 0, frame = 0
 1687              		@ frame_needed = 0, uses_anonymous_args = 0
 1688              		@ link register save eliminated.
 894:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Set Regulator parameter */
 895:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(PWR->CR1, PWR_CR1_LPR);
 1689              		.loc 1 895 3 view .LVU348
 1690 0000 024A     		ldr	r2, .L218
 1691 0002 1368     		ldr	r3, [r2]
 1692 0004 43F48043 		orr	r3, r3, #16384
 1693 0008 1360     		str	r3, [r2]
 896:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1694              		.loc 1 896 1 is_stmt 0 view .LVU349
 1695 000a 7047     		bx	lr
 1696              	.L219:
 1697              		.align	2
 1698              	.L218:
 1699 000c 00700040 		.word	1073770496
 1700              		.cfi_endproc
 1701              	.LFE352:
 1703              		.section	.text.HAL_PWREx_DisableLowPowerRunMode,"ax",%progbits
 1704              		.align	1
 1705              		.global	HAL_PWREx_DisableLowPowerRunMode
 1706              		.syntax unified
 1707              		.thumb
 1708              		.thumb_func
 1709              		.fpu fpv4-sp-d16
 1711              	HAL_PWREx_DisableLowPowerRunMode:
 1712              	.LFB353:
 897:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 898:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 899:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 900:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Exit Low-power Run mode.
 901:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Before HAL_PWREx_DisableLowPowerRunMode() completion, the function checks that
 902:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        REGLPF has been properly reset (otherwise, HAL_PWREx_DisableLowPowerRunMode
 903:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        returns HAL_TIMEOUT status). The system clock frequency can then be
 904:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        increased above 2 MHz.
 905:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval HAL Status
 906:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 907:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_DisableLowPowerRunMode(void)
 908:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1713              		.loc 1 908 1 is_stmt 1 view -0
 1714              		.cfi_startproc
 1715              		@ args = 0, pretend = 0, frame = 0
 1716              		@ frame_needed = 0, uses_anonymous_args = 0
 1717              		@ link register save eliminated.
 909:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   uint32_t wait_loop_index;
 1718              		.loc 1 909 3 view .LVU351
 910:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 911:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Clear LPR bit */
 912:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(PWR->CR1, PWR_CR1_LPR);
 1719              		.loc 1 912 3 view .LVU352
 1720 0000 0D4B     		ldr	r3, .L229
 913:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 914:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Wait until REGLPF is reset */
 915:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   wait_loop_index = (PWR_FLAG_SETTING_DELAY_US * (SystemCoreClock / 1000000U));
 1721              		.loc 1 915 67 is_stmt 0 view .LVU353
 1722 0002 0E49     		ldr	r1, .L229+4
 912:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1723              		.loc 1 912 3 view .LVU354
 1724 0004 1A68     		ldr	r2, [r3]
 1725 0006 22F48042 		bic	r2, r2, #16384
 1726 000a 1A60     		str	r2, [r3]
 1727              		.loc 1 915 3 is_stmt 1 view .LVU355
 1728              		.loc 1 915 67 is_stmt 0 view .LVU356
 1729 000c 0C4A     		ldr	r2, .L229+8
 1730 000e 1268     		ldr	r2, [r2]
 1731 0010 B2FBF1F1 		udiv	r1, r2, r1
 1732              		.loc 1 915 19 view .LVU357
 1733 0014 3222     		movs	r2, #50
 1734 0016 4A43     		muls	r2, r1, r2
 1735              	.LVL90:
 916:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_REGLPF)) && (wait_loop_index != 0U))
 1736              		.loc 1 916 3 is_stmt 1 view .LVU358
 1737 0018 1946     		mov	r1, r3
 1738              	.L221:
 1739              		.loc 1 916 11 is_stmt 0 view .LVU359
 1740 001a 5869     		ldr	r0, [r3, #20]
 1741              		.loc 1 916 9 view .LVU360
 1742 001c 10F4007F 		tst	r0, #512
 1743 0020 00D0     		beq	.L222
 1744              		.loc 1 916 53 discriminator 1 view .LVU361
 1745 0022 32B9     		cbnz	r2, .L223
 1746              	.L222:
 917:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 918:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     wait_loop_index--;
 919:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 920:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if (HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_REGLPF))
 1747              		.loc 1 920 3 is_stmt 1 view .LVU362
 1748              		.loc 1 920 7 is_stmt 0 view .LVU363
 1749 0024 4B69     		ldr	r3, [r1, #20]
 921:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 922:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     return HAL_TIMEOUT;
 1750              		.loc 1 922 12 view .LVU364
 1751 0026 13F4007F 		tst	r3, #512
 923:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 924:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 925:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   return HAL_OK;
 926:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1752              		.loc 1 926 1 view .LVU365
 1753 002a 14BF     		ite	ne
 1754 002c 0320     		movne	r0, #3
 1755 002e 0020     		moveq	r0, #0
 1756 0030 7047     		bx	lr
 1757              	.L223:
 918:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 1758              		.loc 1 918 5 is_stmt 1 view .LVU366
 918:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 1759              		.loc 1 918 20 is_stmt 0 view .LVU367
 1760 0032 013A     		subs	r2, r2, #1
 1761              	.LVL91:
 918:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 1762              		.loc 1 918 20 view .LVU368
 1763 0034 F1E7     		b	.L221
 1764              	.L230:
 1765 0036 00BF     		.align	2
 1766              	.L229:
 1767 0038 00700040 		.word	1073770496
 1768 003c 40420F00 		.word	1000000
 1769 0040 00000000 		.word	SystemCoreClock
 1770              		.cfi_endproc
 1771              	.LFE353:
 1773              		.section	.text.HAL_PWREx_EnterSTOP0Mode,"ax",%progbits
 1774              		.align	1
 1775              		.global	HAL_PWREx_EnterSTOP0Mode
 1776              		.syntax unified
 1777              		.thumb
 1778              		.thumb_func
 1779              		.fpu fpv4-sp-d16
 1781              	HAL_PWREx_EnterSTOP0Mode:
 1782              	.LVL92:
 1783              	.LFB354:
 927:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 928:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 929:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 930:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enter Stop 0 mode.
 931:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  In Stop 0 mode, main and low voltage regulators are ON.
 932:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  In Stop 0 mode, all I/O pins keep the same state as in Run mode.
 933:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  All clocks in the VCORE domain are stopped; the PLL, the HSI
 934:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        and the HSE oscillators are disabled. Some peripherals with the wakeup capability
 935:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        (I2Cx, USARTx and LPUART) can switch on the HSI to receive a frame, and switch off the H
 936:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        after receiving the frame if it is not a wakeup frame. In this case, the HSI clock is pr
 937:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        only to the peripheral requesting it.
 938:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        SRAM1, SRAM2 and register contents are preserved.
 939:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        The BOR is available.
 940:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When exiting Stop 0 mode by issuing an interrupt or a wakeup event,
 941:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         the HSI RC oscillator is selected as system clock if STOPWUCK bit in RCC_CFGR register
 942:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         is set; the HSI oscillator is selected if STOPWUCK is cleared.
 943:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  By keeping the internal regulator ON during Stop 0 mode, the consumption
 944:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         is higher although the startup time is reduced.
 945:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param STOPEntry  specifies if Stop mode in entered with WFI or WFE instruction.
 946:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *          This parameter can be one of the following values:
 947:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_STOPENTRY_WFI  Enter Stop mode with WFI instruction
 948:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_STOPENTRY_WFE  Enter Stop mode with WFE instruction
 949:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
 950:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
 951:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnterSTOP0Mode(uint8_t STOPEntry)
 952:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1784              		.loc 1 952 1 is_stmt 1 view -0
 1785              		.cfi_startproc
 1786              		@ args = 0, pretend = 0, frame = 0
 1787              		@ frame_needed = 0, uses_anonymous_args = 0
 1788              		@ link register save eliminated.
 953:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Check the parameters */
 954:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_STOP_ENTRY(STOPEntry));
 1789              		.loc 1 954 3 view .LVU370
 955:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 956:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Stop 0 mode with Main Regulator */
 957:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   MODIFY_REG(PWR->CR1, PWR_CR1_LPMS, PWR_CR1_LPMS_STOP0);
 1790              		.loc 1 957 3 view .LVU371
 1791 0000 0A4A     		ldr	r2, .L234
 1792 0002 1368     		ldr	r3, [r2]
 1793 0004 23F00703 		bic	r3, r3, #7
 1794 0008 1360     		str	r3, [r2]
 958:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 959:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Set SLEEPDEEP bit of Cortex System Control Register */
 960:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 1795              		.loc 1 960 3 view .LVU372
 1796 000a 094B     		ldr	r3, .L234+4
 1797 000c 1A69     		ldr	r2, [r3, #16]
 961:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 962:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Select Stop mode entry --------------------------------------------------*/
 963:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if(STOPEntry == PWR_STOPENTRY_WFI)
 1798              		.loc 1 963 5 is_stmt 0 view .LVU373
 1799 000e 0128     		cmp	r0, #1
 960:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1800              		.loc 1 960 3 view .LVU374
 1801 0010 42F00402 		orr	r2, r2, #4
 1802 0014 1A61     		str	r2, [r3, #16]
 1803              		.loc 1 963 3 is_stmt 1 view .LVU375
 1804              		.loc 1 963 5 is_stmt 0 view .LVU376
 1805 0016 05D1     		bne	.L232
 964:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 965:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Request Wait For Interrupt */
 966:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFI();
 1806              		.loc 1 966 5 is_stmt 1 view .LVU377
 1807              		.syntax unified
 1808              	@ 966 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1809 0018 30BF     		wfi
 1810              	@ 0 "" 2
 1811              		.thumb
 1812              		.syntax unified
 1813              	.L233:
 967:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 968:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   else
 969:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 970:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Request Wait For Event */
 971:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __SEV();
 972:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
 973:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
 974:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 975:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 976:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Reset SLEEPDEEP bit of Cortex System Control Register */
 977:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 1814              		.loc 1 977 3 view .LVU378
 1815 001a 1A69     		ldr	r2, [r3, #16]
 1816 001c 22F00402 		bic	r2, r2, #4
 1817 0020 1A61     		str	r2, [r3, #16]
 978:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1818              		.loc 1 978 1 is_stmt 0 view .LVU379
 1819 0022 7047     		bx	lr
 1820              	.L232:
 971:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
 1821              		.loc 1 971 5 is_stmt 1 view .LVU380
 1822              		.syntax unified
 1823              	@ 971 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1824 0024 40BF     		sev
 1825              	@ 0 "" 2
 972:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
 1826              		.loc 1 972 5 view .LVU381
 1827              	@ 972 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1828 0026 20BF     		wfe
 1829              	@ 0 "" 2
 973:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 1830              		.loc 1 973 5 view .LVU382
 1831              	@ 973 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1832 0028 20BF     		wfe
 1833              	@ 0 "" 2
 1834              		.thumb
 1835              		.syntax unified
 1836 002a F6E7     		b	.L233
 1837              	.L235:
 1838              		.align	2
 1839              	.L234:
 1840 002c 00700040 		.word	1073770496
 1841 0030 00ED00E0 		.word	-536810240
 1842              		.cfi_endproc
 1843              	.LFE354:
 1845              		.section	.text.HAL_PWREx_EnterSTOP1Mode,"ax",%progbits
 1846              		.align	1
 1847              		.global	HAL_PWREx_EnterSTOP1Mode
 1848              		.syntax unified
 1849              		.thumb
 1850              		.thumb_func
 1851              		.fpu fpv4-sp-d16
 1853              	HAL_PWREx_EnterSTOP1Mode:
 1854              	.LVL93:
 1855              	.LFB355:
 979:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 980:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 981:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
 982:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enter Stop 1 mode.
 983:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  In Stop 1 mode, only low power voltage regulator is ON.
 984:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  In Stop 1 mode, all I/O pins keep the same state as in Run mode.
 985:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  All clocks in the VCORE domain are stopped; the PLL, the HSI
 986:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        and the HSE oscillators are disabled. Some peripherals with the wakeup capability
 987:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        (I2Cx, USARTx and LPUART) can switch on the HSI to receive a frame, and switch off the H
 988:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        after receiving the frame if it is not a wakeup frame. In this case, the HSI clock is pr
 989:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        only to the peripheral requesting it.
 990:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        SRAM1, SRAM2 and register contents are preserved.
 991:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        The BOR is available.
 992:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  When exiting Stop 1 mode by issuing an interrupt or a wakeup event,
 993:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         the HSI RC oscillator is selected as system clock if STOPWUCK bit in RCC_CFGR register
 994:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *         is set.
 995:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  Due to low power mode, an additional startup delay is incurred when waking up from Stop 
 996:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @param STOPEntry  specifies if Stop mode in entered with WFI or WFE instruction.
 997:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *          This parameter can be one of the following values:
 998:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_STOPENTRY_WFI  Enter Stop mode with WFI instruction
 999:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *            @arg @ref PWR_STOPENTRY_WFE  Enter Stop mode with WFE instruction
1000:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
1001:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
1002:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnterSTOP1Mode(uint8_t STOPEntry)
1003:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1856              		.loc 1 1003 1 view -0
 1857              		.cfi_startproc
 1858              		@ args = 0, pretend = 0, frame = 0
 1859              		@ frame_needed = 0, uses_anonymous_args = 0
 1860              		@ link register save eliminated.
1004:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Check the parameters */
1005:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   assert_param(IS_PWR_STOP_ENTRY(STOPEntry));
 1861              		.loc 1 1005 3 view .LVU384
1006:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1007:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Stop 1 mode with Low-Power Regulator */
1008:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   MODIFY_REG(PWR->CR1, PWR_CR1_LPMS, PWR_CR1_LPMS_STOP1);
 1862              		.loc 1 1008 3 view .LVU385
 1863 0000 0B4A     		ldr	r2, .L239
 1864 0002 1368     		ldr	r3, [r2]
 1865 0004 23F00703 		bic	r3, r3, #7
 1866 0008 43F00103 		orr	r3, r3, #1
 1867 000c 1360     		str	r3, [r2]
1009:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1010:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Set SLEEPDEEP bit of Cortex System Control Register */
1011:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 1868              		.loc 1 1011 3 view .LVU386
 1869 000e 094B     		ldr	r3, .L239+4
 1870 0010 1A69     		ldr	r2, [r3, #16]
1012:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1013:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Select Stop mode entry --------------------------------------------------*/
1014:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if(STOPEntry == PWR_STOPENTRY_WFI)
 1871              		.loc 1 1014 5 is_stmt 0 view .LVU387
 1872 0012 0128     		cmp	r0, #1
1011:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 1873              		.loc 1 1011 3 view .LVU388
 1874 0014 42F00402 		orr	r2, r2, #4
 1875 0018 1A61     		str	r2, [r3, #16]
 1876              		.loc 1 1014 3 is_stmt 1 view .LVU389
 1877              		.loc 1 1014 5 is_stmt 0 view .LVU390
 1878 001a 05D1     		bne	.L237
1015:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
1016:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Request Wait For Interrupt */
1017:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFI();
 1879              		.loc 1 1017 5 is_stmt 1 view .LVU391
 1880              		.syntax unified
 1881              	@ 1017 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1882 001c 30BF     		wfi
 1883              	@ 0 "" 2
 1884              		.thumb
 1885              		.syntax unified
 1886              	.L238:
1018:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
1019:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   else
1020:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
1021:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Request Wait For Event */
1022:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __SEV();
1023:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
1024:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
1025:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
1026:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1027:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Reset SLEEPDEEP bit of Cortex System Control Register */
1028:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   CLEAR_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 1887              		.loc 1 1028 3 view .LVU392
 1888 001e 1A69     		ldr	r2, [r3, #16]
 1889 0020 22F00402 		bic	r2, r2, #4
 1890 0024 1A61     		str	r2, [r3, #16]
1029:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1891              		.loc 1 1029 1 is_stmt 0 view .LVU393
 1892 0026 7047     		bx	lr
 1893              	.L237:
1022:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
 1894              		.loc 1 1022 5 is_stmt 1 view .LVU394
 1895              		.syntax unified
 1896              	@ 1022 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1897 0028 40BF     		sev
 1898              	@ 0 "" 2
1023:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __WFE();
 1899              		.loc 1 1023 5 view .LVU395
 1900              	@ 1023 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1901 002a 20BF     		wfe
 1902              	@ 0 "" 2
1024:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 1903              		.loc 1 1024 5 view .LVU396
 1904              	@ 1024 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1905 002c 20BF     		wfe
 1906              	@ 0 "" 2
 1907              		.thumb
 1908              		.syntax unified
 1909 002e F6E7     		b	.L238
 1910              	.L240:
 1911              		.align	2
 1912              	.L239:
 1913 0030 00700040 		.word	1073770496
 1914 0034 00ED00E0 		.word	-536810240
 1915              		.cfi_endproc
 1916              	.LFE355:
 1918              		.section	.text.HAL_PWREx_EnterSHUTDOWNMode,"ax",%progbits
 1919              		.align	1
 1920              		.global	HAL_PWREx_EnterSHUTDOWNMode
 1921              		.syntax unified
 1922              		.thumb
 1923              		.thumb_func
 1924              		.fpu fpv4-sp-d16
 1926              	HAL_PWREx_EnterSHUTDOWNMode:
 1927              	.LFB356:
1030:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1031:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1032:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1033:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1034:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
1035:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief Enter Shutdown mode.
1036:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  In Shutdown mode, the PLL, the HSI, the LSI and the HSE oscillators are switched
1037:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        off. The voltage regulator is disabled and Vcore domain is powered off.
1038:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        SRAM1, SRAM2 and registers contents are lost except for registers in the Backup domain.
1039:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   *        The BOR is not available.
1040:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note  The I/Os can be configured either with a pull-up or pull-down or can be kept in analog s
1041:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
1042:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
1043:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_EnterSHUTDOWNMode(void)
1044:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1928              		.loc 1 1044 1 view -0
 1929              		.cfi_startproc
 1930              		@ args = 0, pretend = 0, frame = 0
 1931              		@ frame_needed = 0, uses_anonymous_args = 0
 1932              		@ link register save eliminated.
1045:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1046:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Set Shutdown mode */
1047:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   MODIFY_REG(PWR->CR1, PWR_CR1_LPMS, PWR_CR1_LPMS_SHUTDOWN);
 1933              		.loc 1 1047 3 view .LVU398
 1934 0000 064A     		ldr	r2, .L242
 1935 0002 1368     		ldr	r3, [r2]
 1936 0004 23F00703 		bic	r3, r3, #7
 1937 0008 43F00403 		orr	r3, r3, #4
 1938 000c 1360     		str	r3, [r2]
1048:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1049:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Set SLEEPDEEP bit of Cortex System Control Register */
1050:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   SET_BIT(SCB->SCR, ((uint32_t)SCB_SCR_SLEEPDEEP_Msk));
 1939              		.loc 1 1050 3 view .LVU399
 1940 000e 044A     		ldr	r2, .L242+4
 1941 0010 1369     		ldr	r3, [r2, #16]
 1942 0012 43F00403 		orr	r3, r3, #4
 1943 0016 1361     		str	r3, [r2, #16]
1051:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1052:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /* This option is used to ensure that store operations are completed */
1053:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined ( __CC_ARM)
1054:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   __force_stores();
1055:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif
1056:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Request Wait For Interrupt */
1057:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   __WFI();
 1944              		.loc 1 1057 3 view .LVU400
 1945              		.syntax unified
 1946              	@ 1057 "../../..\CubeG4\src\stm32g4xx_hal_pwr_ex.c" 1
 1947 0018 30BF     		wfi
 1948              	@ 0 "" 2
1058:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1949              		.loc 1 1058 1 is_stmt 0 view .LVU401
 1950              		.thumb
 1951              		.syntax unified
 1952 001a 7047     		bx	lr
 1953              	.L243:
 1954              		.align	2
 1955              	.L242:
 1956 001c 00700040 		.word	1073770496
 1957 0020 00ED00E0 		.word	-536810240
 1958              		.cfi_endproc
 1959              	.LFE356:
 1961              		.section	.text.HAL_PWREx_PVM1Callback,"ax",%progbits
 1962              		.align	1
 1963              		.weak	HAL_PWREx_PVM1Callback
 1964              		.syntax unified
 1965              		.thumb
 1966              		.thumb_func
 1967              		.fpu fpv4-sp-d16
 1969              	HAL_PWREx_PVM1Callback:
 1970              	.LFB358:
1059:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1060:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1061:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1062:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1063:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
1064:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief This function handles the PWR PVD/PVMx interrupt request.
1065:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @note This API should be called under the PVD_PVM_IRQHandler().
1066:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
1067:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
1068:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** void HAL_PWREx_PVD_PVM_IRQHandler(void)
1069:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
1070:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Check PWR exti flag */
1071:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if(__HAL_PWR_PVD_EXTI_GET_FLAG() != 0U)
1072:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
1073:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* PWR PVD interrupt user callback */
1074:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     HAL_PWR_PVDCallback();
1075:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1076:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Clear PVD exti pending bit */
1077:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __HAL_PWR_PVD_EXTI_CLEAR_FLAG();
1078:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
1079:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Next, successively check PVMx exti flags */
1080:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR2_PVME1)
1081:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if(__HAL_PWR_PVM1_EXTI_GET_FLAG() != 0U)
1082:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
1083:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* PWR PVM1 interrupt user callback */
1084:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     HAL_PWREx_PVM1Callback();
1085:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1086:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Clear PVM1 exti pending bit */
1087:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __HAL_PWR_PVM1_EXTI_CLEAR_FLAG();
1088:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
1089:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR2_PVME1 */
1090:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR2_PVME2)
1091:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if(__HAL_PWR_PVM2_EXTI_GET_FLAG() != 0U)
1092:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
1093:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* PWR PVM2 interrupt user callback */
1094:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     HAL_PWREx_PVM2Callback();
1095:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1096:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Clear PVM2 exti pending bit */
1097:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __HAL_PWR_PVM2_EXTI_CLEAR_FLAG();
1098:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
1099:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #endif /* PWR_CR2_PVME2 */
1100:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if(__HAL_PWR_PVM3_EXTI_GET_FLAG() != 0U)
1101:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
1102:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* PWR PVM3 interrupt user callback */
1103:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     HAL_PWREx_PVM3Callback();
1104:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1105:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Clear PVM3 exti pending bit */
1106:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __HAL_PWR_PVM3_EXTI_CLEAR_FLAG();
1107:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
1108:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   if(__HAL_PWR_PVM4_EXTI_GET_FLAG() != 0U)
1109:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
1110:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* PWR PVM4 interrupt user callback */
1111:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     HAL_PWREx_PVM4Callback();
1112:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1113:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     /* Clear PVM4 exti pending bit */
1114:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****     __HAL_PWR_PVM4_EXTI_CLEAR_FLAG();
1115:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
1116:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
1117:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1118:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
1119:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** #if defined(PWR_CR2_PVME1)
1120:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** /**
1121:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @brief PWR PVM1 interrupt callback
1122:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   * @retval None
1123:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   */
1124:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** __weak void HAL_PWREx_PVM1Callback(void)
1125:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** {
 1971              		.loc 1 1125 1 is_stmt 1 view -0
 1972              		.cfi_startproc
 1973              		@ args = 0, pretend = 0, frame = 0
 1974              		@ frame_needed = 0, uses_anonymous_args = 0
 1975              		@ link register save eliminated.
1126:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* NOTE : This function should not be modified; when the callback is needed,
1127:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****             HAL_PWREx_PVM1Callback() API can be implemented in the user file
1128:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****    */
1129:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** }
 1976              		.loc 1 1129 1 view .LVU403
 1977 0000 7047     		bx	lr
 1978              		.cfi_endproc
 1979              	.LFE358:
 1981              		.section	.text.HAL_PWREx_PVM2Callback,"ax",%progbits
 1982              		.align	1
 1983              		.weak	HAL_PWREx_PVM2Callback
 1984              		.syntax unified
 1985              		.thumb
 1986              		.thumb_func
 1987              		.fpu fpv4-sp-d16
 1989              	HAL_PWREx_PVM2Callback:
 1990              	.LFB363:
 1991              		.cfi_startproc
 1992              		@ args = 0, pretend = 0, frame = 0
 1993              		@ frame_needed = 0, uses_anonymous_args = 0
 1994              		@ link register save eliminated.
 1995 0000 7047     		bx	lr
 1996              		.cfi_endproc
 1997              	.LFE363:
 1999              		.section	.text.HAL_PWREx_PVM3Callback,"ax",%progbits
 2000              		.align	1
 2001              		.weak	HAL_PWREx_PVM3Callback
 2002              		.syntax unified
 2003              		.thumb
 2004              		.thumb_func
 2005              		.fpu fpv4-sp-d16
 2007              	HAL_PWREx_PVM3Callback:
 2008              	.LFB365:
 2009              		.cfi_startproc
 2010              		@ args = 0, pretend = 0, frame = 0
 2011              		@ frame_needed = 0, uses_anonymous_args = 0
 2012              		@ link register save eliminated.
 2013 0000 7047     		bx	lr
 2014              		.cfi_endproc
 2015              	.LFE365:
 2017              		.section	.text.HAL_PWREx_PVM4Callback,"ax",%progbits
 2018              		.align	1
 2019              		.weak	HAL_PWREx_PVM4Callback
 2020              		.syntax unified
 2021              		.thumb
 2022              		.thumb_func
 2023              		.fpu fpv4-sp-d16
 2025              	HAL_PWREx_PVM4Callback:
 2026              	.LFB367:
 2027              		.cfi_startproc
 2028              		@ args = 0, pretend = 0, frame = 0
 2029              		@ frame_needed = 0, uses_anonymous_args = 0
 2030              		@ link register save eliminated.
 2031 0000 7047     		bx	lr
 2032              		.cfi_endproc
 2033              	.LFE367:
 2035              		.section	.text.HAL_PWREx_PVD_PVM_IRQHandler,"ax",%progbits
 2036              		.align	1
 2037              		.global	HAL_PWREx_PVD_PVM_IRQHandler
 2038              		.syntax unified
 2039              		.thumb
 2040              		.thumb_func
 2041              		.fpu fpv4-sp-d16
 2043              	HAL_PWREx_PVD_PVM_IRQHandler:
 2044              	.LFB357:
1069:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Check PWR exti flag */
 2045              		.loc 1 1069 1 view -0
 2046              		.cfi_startproc
 2047              		@ args = 0, pretend = 0, frame = 0
 2048              		@ frame_needed = 0, uses_anonymous_args = 0
1071:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2049              		.loc 1 1071 3 view .LVU405
1069:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   /* Check PWR exti flag */
 2050              		.loc 1 1069 1 is_stmt 0 view .LVU406
 2051 0000 10B5     		push	{r4, lr}
 2052              		.cfi_def_cfa_offset 8
 2053              		.cfi_offset 4, -8
 2054              		.cfi_offset 14, -4
1071:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2055              		.loc 1 1071 6 view .LVU407
 2056 0002 134C     		ldr	r4, .L269
 2057 0004 6369     		ldr	r3, [r4, #20]
1071:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2058              		.loc 1 1071 5 view .LVU408
 2059 0006 DB03     		lsls	r3, r3, #15
 2060 0008 04D5     		bpl	.L249
1074:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 2061              		.loc 1 1074 5 is_stmt 1 view .LVU409
 2062 000a FFF7FEFF 		bl	HAL_PWR_PVDCallback
 2063              	.LVL94:
1077:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 2064              		.loc 1 1077 5 view .LVU410
 2065 000e 4FF48033 		mov	r3, #65536
 2066 0012 6361     		str	r3, [r4, #20]
 2067              	.L249:
1081:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2068              		.loc 1 1081 3 view .LVU411
1081:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2069              		.loc 1 1081 6 is_stmt 0 view .LVU412
 2070 0014 636B     		ldr	r3, [r4, #52]
1081:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2071              		.loc 1 1081 5 view .LVU413
 2072 0016 1807     		lsls	r0, r3, #28
 2073 0018 03D5     		bpl	.L250
1084:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 2074              		.loc 1 1084 5 is_stmt 1 view .LVU414
 2075 001a FFF7FEFF 		bl	HAL_PWREx_PVM1Callback
 2076              	.LVL95:
1087:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 2077              		.loc 1 1087 5 view .LVU415
 2078 001e 0823     		movs	r3, #8
 2079 0020 6363     		str	r3, [r4, #52]
 2080              	.L250:
1091:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2081              		.loc 1 1091 3 view .LVU416
1091:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2082              		.loc 1 1091 6 is_stmt 0 view .LVU417
 2083 0022 636B     		ldr	r3, [r4, #52]
1091:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2084              		.loc 1 1091 5 view .LVU418
 2085 0024 D906     		lsls	r1, r3, #27
 2086 0026 03D5     		bpl	.L251
1094:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 2087              		.loc 1 1094 5 is_stmt 1 view .LVU419
 2088 0028 FFF7FEFF 		bl	HAL_PWREx_PVM2Callback
 2089              	.LVL96:
1097:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 2090              		.loc 1 1097 5 view .LVU420
 2091 002c 1023     		movs	r3, #16
 2092 002e 6363     		str	r3, [r4, #52]
 2093              	.L251:
1100:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2094              		.loc 1 1100 3 view .LVU421
1100:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2095              		.loc 1 1100 6 is_stmt 0 view .LVU422
 2096 0030 636B     		ldr	r3, [r4, #52]
1100:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2097              		.loc 1 1100 5 view .LVU423
 2098 0032 9A06     		lsls	r2, r3, #26
 2099 0034 03D5     		bpl	.L252
1103:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 2100              		.loc 1 1103 5 is_stmt 1 view .LVU424
 2101 0036 FFF7FEFF 		bl	HAL_PWREx_PVM3Callback
 2102              	.LVL97:
1106:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 2103              		.loc 1 1106 5 view .LVU425
 2104 003a 2023     		movs	r3, #32
 2105 003c 6363     		str	r3, [r4, #52]
 2106              	.L252:
1108:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2107              		.loc 1 1108 3 view .LVU426
1108:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2108              		.loc 1 1108 6 is_stmt 0 view .LVU427
 2109 003e 636B     		ldr	r3, [r4, #52]
1108:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   {
 2110              		.loc 1 1108 5 view .LVU428
 2111 0040 5B06     		lsls	r3, r3, #25
 2112 0042 03D5     		bpl	.L248
1111:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 2113              		.loc 1 1111 5 is_stmt 1 view .LVU429
 2114 0044 FFF7FEFF 		bl	HAL_PWREx_PVM4Callback
 2115              	.LVL98:
1114:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c ****   }
 2116              		.loc 1 1114 5 view .LVU430
 2117 0048 4023     		movs	r3, #64
 2118 004a 6363     		str	r3, [r4, #52]
 2119              	.L248:
1116:../../..\CubeG4\src/stm32g4xx_hal_pwr_ex.c **** 
 2120              		.loc 1 1116 1 is_stmt 0 view .LVU431
 2121 004c 10BD     		pop	{r4, pc}
 2122              	.L270:
 2123 004e 00BF     		.align	2
 2124              	.L269:
 2125 0050 00040140 		.word	1073808384
 2126              		.cfi_endproc
 2127              	.LFE357:
 2129              		.text
 2130              	.Letext0:
 2131              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2132              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2133              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 2134              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 2135              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 2136              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 2137              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 2138              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_pwr_ex.h"
 2139              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
 2140              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_pwr.h"
