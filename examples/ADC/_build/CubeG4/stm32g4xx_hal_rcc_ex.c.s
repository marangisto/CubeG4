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
  13              		.file	"stm32g4xx_hal_rcc_ex.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_RCCEx_PeriphCLKConfig,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_RCCEx_PeriphCLKConfig
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_RCCEx_PeriphCLKConfig:
  27              	.LVL0:
  28              	.LFB325:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_rcc_ex.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @file    stm32g4xx_hal_rcc_ex.c
   4:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief   Extended RCC HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *          functionalities RCC extended peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *           + Extended Peripheral Control functions
   9:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *           + Extended Clock management functions
  10:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *           + Extended Clock Recovery System Control functions
  11:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   ******************************************************************************
  13:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @attention
  14:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *
  15:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  16:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * All rights reserved.</center></h2>
  17:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *
  18:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  19:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * the "License"; You may not use this file except in compliance with the
  20:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * License. You may obtain a copy of the License at:
  21:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *                        opensource.org/licenses/BSD-3-Clause
  22:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *
  23:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   ******************************************************************************
  24:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
  25:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  26:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /* Includes ------------------------------------------------------------------*/
  27:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #include "stm32g4xx_hal.h"
  28:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  29:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @addtogroup STM32G4xx_HAL_Driver
  30:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @{
  31:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
  32:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  33:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @defgroup RCCEx RCCEx
  34:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief RCC Extended HAL module driver
  35:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @{
  36:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
  37:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  38:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #ifdef HAL_RCC_MODULE_ENABLED
  39:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  40:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /* Private typedef -----------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /* Private defines -----------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Private_Constants RCCEx Private Constants
  43:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  * @{
  44:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  */
  45:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #define PLL_TIMEOUT_VALUE        2U                /* 2 ms (minimum Tick + 1) */
  46:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  47:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #define DIVIDER_P_UPDATE          0U
  48:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #define DIVIDER_Q_UPDATE          1U
  49:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #define DIVIDER_R_UPDATE          2U
  50:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  51:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #define __LSCO_CLK_ENABLE()       __HAL_RCC_GPIOA_CLK_ENABLE()
  52:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #define LSCO_GPIO_PORT            GPIOA
  53:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #define LSCO_PIN                  GPIO_PIN_2
  54:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
  55:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @}
  56:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
  57:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  58:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /* Private macros ------------------------------------------------------------*/
  59:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /* Private variables ---------------------------------------------------------*/
  60:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /* Private function prototypes -----------------------------------------------*/
  61:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Private_Functions RCCEx Private Functions
  62:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  * @{
  63:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  */
  64:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  65:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
  66:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @}
  67:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
  68:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  69:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /* Exported functions --------------------------------------------------------*/
  70:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  71:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Exported_Functions RCCEx Exported Functions
  72:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @{
  73:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
  74:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  75:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Exported_Functions_Group1 Extended Peripheral Control functions
  76:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  *  @brief  Extended Peripheral Control functions
  77:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  *
  78:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** @verbatim
  79:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  ===============================================================================
  80:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                 ##### Extended Peripheral Control functions  #####
  81:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  ===============================================================================
  82:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     [..]
  83:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     This subsection provides a set of functions allowing to control the RCC Clocks
  84:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     frequencies.
  85:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     [..]
  86:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     (@) Important note: Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to
  87:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         select the RTC clock source; in this case the Backup domain will be reset in
  88:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         order to modify the RTC Clock source, as consequence RTC registers (including
  89:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         the backup registers) are set to their reset values.
  90:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
  91:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** @endverbatim
  92:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @{
  93:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
  94:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
  95:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Initialize the RCC extended peripherals clocks according to the specified
  96:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         parameters in the RCC_PeriphCLKInitTypeDef.
  97:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @param  PeriphClkInit  pointer to an RCC_PeriphCLKInitTypeDef structure that
  98:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         contains a field PeriphClockSelection which can be a combination of the following value
  99:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_RTC  RTC peripheral clock
 100:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USART1  USART1 peripheral clock
 101:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USART2  USART2 peripheral clock
 102:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USART3  USART3 peripheral clock
 103:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_UART4  UART4 peripheral clock (only for devices with UART4)
 104:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_UART5  UART5 peripheral clock (only for devices with UART5)
 105:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_LPUART1  LPUART1 peripheral clock
 106:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C1  I2C1 peripheral clock
 107:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C2  I2C2 peripheral clock
 108:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C3  I2C3 peripheral clock
 109:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C4  I2C4 peripheral clock (only for devices with I2C4)
 110:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_LPTIM1  LPTIM1 peripheral clock
 111:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_SAI1  SAI1 peripheral clock
 112:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S  I2S peripheral clock
 113:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_FDCAN  FDCAN peripheral clock (only for devices with FDCAN)
 114:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_RNG  RNG peripheral clock
 115:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USB  USB peripheral clock (only for devices with USB)
 116:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_ADC12  ADC1 and ADC2 peripheral clock
 117:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_ADC345  ADC3, ADC4 and ADC5 peripheral clock (only for devic
 118:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_QSPI  QuadSPI peripheral clock (only for devices with QuadSP
 119:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *
 120:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @note   Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to select
 121:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         the RTC clock source: in this case the access to Backup domain is enabled.
 122:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *
 123:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval HAL status
 124:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
 125:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
 126:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
  30              		.loc 1 126 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 8
  33              		@ frame_needed = 0, uses_anonymous_args = 0
 127:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t tmpregister;
  34              		.loc 1 127 3 view .LVU1
 128:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t tickstart;
  35              		.loc 1 128 3 view .LVU2
 129:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   HAL_StatusTypeDef ret = HAL_OK;      /* Intermediate status */
  36              		.loc 1 129 3 view .LVU3
 130:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   HAL_StatusTypeDef status = HAL_OK;   /* Final status */
  37              		.loc 1 130 3 view .LVU4
 131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 132:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check the parameters */
 133:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
  38              		.loc 1 133 3 view .LVU5
 134:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 135:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- RTC clock source configuration ----------------------*/
 136:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if((PeriphClkInit->PeriphClockSelection & RCC_PERIPHCLK_RTC) == RCC_PERIPHCLK_RTC)
  39              		.loc 1 136 3 view .LVU6
 126:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t tmpregister;
  40              		.loc 1 126 1 is_stmt 0 view .LVU7
  41 0000 2DE9F341 		push	{r0, r1, r4, r5, r6, r7, r8, lr}
  42              		.cfi_def_cfa_offset 32
  43              		.cfi_offset 4, -24
  44              		.cfi_offset 5, -20
  45              		.cfi_offset 6, -16
  46              		.cfi_offset 7, -12
  47              		.cfi_offset 8, -8
  48              		.cfi_offset 14, -4
 126:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t tmpregister;
  49              		.loc 1 126 1 view .LVU8
  50 0004 0446     		mov	r4, r0
  51              		.loc 1 136 43 view .LVU9
  52 0006 0068     		ldr	r0, [r0]
  53              	.LVL1:
  54              		.loc 1 136 5 view .LVU10
  55 0008 10F40020 		ands	r0, r0, #524288
  56 000c 39D0     		beq	.L2
  57              	.LBB2:
 137:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 138:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     FlagStatus       pwrclkchanged = RESET;
  58              		.loc 1 138 5 is_stmt 1 view .LVU11
  59              	.LVL2:
 139:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 140:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check for RTC Parameters used to output RTCCLK */
 141:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
  60              		.loc 1 141 5 view .LVU12
 142:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 143:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Enable Power Clock */
 144:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
  61              		.loc 1 144 5 view .LVU13
  62              		.loc 1 144 8 is_stmt 0 view .LVU14
  63 000e 994D     		ldr	r5, .L76
  64 0010 AB6D     		ldr	r3, [r5, #88]
  65              		.loc 1 144 7 view .LVU15
  66 0012 D800     		lsls	r0, r3, #3
  67 0014 27D4     		bmi	.L42
 145:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 146:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PWR_CLK_ENABLE();
  68              		.loc 1 146 7 is_stmt 1 view .LVU16
  69              	.LBB3:
  70              		.loc 1 146 7 view .LVU17
  71              		.loc 1 146 7 view .LVU18
  72 0016 AB6D     		ldr	r3, [r5, #88]
  73 0018 43F08053 		orr	r3, r3, #268435456
  74 001c AB65     		str	r3, [r5, #88]
  75              		.loc 1 146 7 view .LVU19
  76 001e AB6D     		ldr	r3, [r5, #88]
  77 0020 03F08053 		and	r3, r3, #268435456
  78 0024 0193     		str	r3, [sp, #4]
  79              		.loc 1 146 7 view .LVU20
  80 0026 019B     		ldr	r3, [sp, #4]
  81              	.LBE3:
 147:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       pwrclkchanged = SET;
  82              		.loc 1 147 7 view .LVU21
  83              	.LVL3:
  84              		.loc 1 147 21 is_stmt 0 view .LVU22
  85 0028 0127     		movs	r7, #1
  86              	.LVL4:
  87              	.L3:
 148:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 149:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
 150:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Enable write access to Backup domain */
 151:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     SET_BIT(PWR->CR1, PWR_CR1_DBP);
  88              		.loc 1 151 5 is_stmt 1 view .LVU23
  89 002a 934E     		ldr	r6, .L76+4
  90 002c 3368     		ldr	r3, [r6]
  91 002e 43F48073 		orr	r3, r3, #256
  92 0032 3360     		str	r3, [r6]
 152:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 153:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Wait for Backup domain Write protection disable */
 154:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     tickstart = HAL_GetTick();
  93              		.loc 1 154 5 view .LVU24
  94              		.loc 1 154 17 is_stmt 0 view .LVU25
  95 0034 FFF7FEFF 		bl	HAL_GetTick
  96              	.LVL5:
  97 0038 8046     		mov	r8, r0
  98              	.LVL6:
 155:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 156:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     while((PWR->CR1 & PWR_CR1_DBP) == 0U)
  99              		.loc 1 156 5 is_stmt 1 view .LVU26
 100              	.L4:
 101              		.loc 1 156 15 is_stmt 0 view .LVU27
 102 003a 3368     		ldr	r3, [r6]
 103              		.loc 1 156 10 view .LVU28
 104 003c D905     		lsls	r1, r3, #23
 105 003e 14D5     		bpl	.L6
 157:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 158:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 159:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 160:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         ret = HAL_TIMEOUT;
 161:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         break;
 162:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 163:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 164:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 165:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(ret == HAL_OK)
 106              		.loc 1 165 5 is_stmt 1 view .LVU29
 166:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     { 
 167:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Reset the Backup domain only if the RTC Clock source selection is modified from default */
 168:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       tmpregister = READ_BIT(RCC->BDCR, RCC_BDCR_RTCSEL);
 107              		.loc 1 168 7 view .LVU30
 108              		.loc 1 168 21 is_stmt 0 view .LVU31
 109 0040 D5F89030 		ldr	r3, [r5, #144]
 110              	.LVL7:
 169:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
 170:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if((tmpregister != RCC_RTCCLKSOURCE_NONE) && (tmpregister != PeriphClkInit->RTCClockSelection
 111              		.loc 1 170 7 is_stmt 1 view .LVU32
 112              		.loc 1 170 9 is_stmt 0 view .LVU33
 113 0044 13F44073 		ands	r3, r3, #768
 114              	.LVL8:
 115              		.loc 1 170 9 view .LVU34
 116 0048 03D0     		beq	.L9
 117              		.loc 1 170 49 discriminator 1 view .LVU35
 118 004a 226C     		ldr	r2, [r4, #64]
 119 004c 9342     		cmp	r3, r2
 120 004e 40F0EB80 		bne	.L8
 121              	.LVL9:
 122              	.L9:
 171:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 172:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Store the content of BDCR register before the reset of Backup Domain */
 173:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         tmpregister = READ_BIT(RCC->BDCR, ~(RCC_BDCR_RTCSEL));
 174:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* RTC Clock selection can be changed only if the Backup Domain is reset */
 175:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         __HAL_RCC_BACKUPRESET_FORCE();
 176:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         __HAL_RCC_BACKUPRESET_RELEASE();
 177:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Restore the Content of BDCR register */
 178:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         RCC->BDCR = tmpregister;
 179:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 180:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 181:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
 182:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if (HAL_IS_BIT_SET(tmpregister, RCC_BDCR_LSEON))
 183:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 184:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Get Start Tick*/
 185:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         tickstart = HAL_GetTick();
 186:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 187:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Wait till LSE is ready */
 188:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         while(READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 189:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 190:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           if((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 191:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 192:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             ret = HAL_TIMEOUT;
 193:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             break;
 194:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           }
 195:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
 196:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 197:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
 198:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(ret == HAL_OK)
 199:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 200:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Apply new RTC clock source selection */
 201:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
 123              		.loc 1 201 9 is_stmt 1 view .LVU36
 124 0052 D5F89030 		ldr	r3, [r5, #144]
 125 0056 226C     		ldr	r2, [r4, #64]
 126 0058 23F44073 		bic	r3, r3, #768
 127 005c 1343     		orrs	r3, r3, r2
 128 005e C5F89030 		str	r3, [r5, #144]
 129              	.LBE2:
 130:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 130              		.loc 1 130 21 is_stmt 0 view .LVU37
 131 0062 0020     		movs	r0, #0
 132              	.LBB4:
 133 0064 08E0     		b	.L5
 134              	.LVL10:
 135              	.L42:
 138:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 136              		.loc 1 138 22 view .LVU38
 137 0066 0027     		movs	r7, #0
 138 0068 DFE7     		b	.L3
 139              	.LVL11:
 140              	.L6:
 158:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 141              		.loc 1 158 7 is_stmt 1 view .LVU39
 158:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 142              		.loc 1 158 11 is_stmt 0 view .LVU40
 143 006a FFF7FEFF 		bl	HAL_GetTick
 144              	.LVL12:
 158:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 145              		.loc 1 158 25 view .LVU41
 146 006e A0EB0800 		sub	r0, r0, r8
 158:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 147              		.loc 1 158 9 view .LVU42
 148 0072 0228     		cmp	r0, #2
 149 0074 E1D9     		bls	.L4
 150              	.LVL13:
 151              	.L11:
 160:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         break;
 152              		.loc 1 160 13 view .LVU43
 153 0076 0320     		movs	r0, #3
 154              	.L5:
 155              	.LVL14:
 202:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 203:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 204:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 205:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* set overall return value */
 206:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         status = ret;
 207:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 208:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 209:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     else
 210:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 211:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* set overall return value */
 212:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       status = ret;
 213:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 214:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 215:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Restore clock configuration if changed */
 216:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(pwrclkchanged == SET)
 156              		.loc 1 216 5 is_stmt 1 view .LVU44
 157              		.loc 1 216 7 is_stmt 0 view .LVU45
 158 0078 1FB1     		cbz	r7, .L2
 217:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 218:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PWR_CLK_DISABLE();
 159              		.loc 1 218 7 is_stmt 1 view .LVU46
 160 007a AB6D     		ldr	r3, [r5, #88]
 161 007c 23F08053 		bic	r3, r3, #268435456
 162 0080 AB65     		str	r3, [r5, #88]
 163              	.LVL15:
 164              	.L2:
 165              		.loc 1 218 7 is_stmt 0 view .LVU47
 166              	.LBE4:
 219:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 220:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 221:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 222:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- USART1 clock source configuration -------------------*/
 223:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USART1) == RCC_PERIPHCLK_USART1)
 167              		.loc 1 223 3 is_stmt 1 view .LVU48
 168              		.loc 1 223 21 is_stmt 0 view .LVU49
 169 0082 2368     		ldr	r3, [r4]
 170              		.loc 1 223 5 view .LVU50
 171 0084 DE07     		lsls	r6, r3, #31
 172 0086 08D5     		bpl	.L13
 224:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 225:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 226:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_USART1CLKSOURCE(PeriphClkInit->Usart1ClockSelection));
 173              		.loc 1 226 5 is_stmt 1 view .LVU51
 227:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 228:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the USART1 clock source */
 229:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_USART1_CONFIG(PeriphClkInit->Usart1ClockSelection);
 174              		.loc 1 229 5 view .LVU52
 175 0088 7A49     		ldr	r1, .L76
 176 008a 6568     		ldr	r5, [r4, #4]
 177 008c D1F88820 		ldr	r2, [r1, #136]
 178 0090 22F00302 		bic	r2, r2, #3
 179 0094 2A43     		orrs	r2, r2, r5
 180 0096 C1F88820 		str	r2, [r1, #136]
 181              	.L13:
 230:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 231:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 232:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- USART2 clock source configuration -------------------*/
 233:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USART2) == RCC_PERIPHCLK_USART2)
 182              		.loc 1 233 3 view .LVU53
 183              		.loc 1 233 5 is_stmt 0 view .LVU54
 184 009a 9D07     		lsls	r5, r3, #30
 185 009c 08D5     		bpl	.L14
 234:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 235:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 236:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_USART2CLKSOURCE(PeriphClkInit->Usart2ClockSelection));
 186              		.loc 1 236 5 is_stmt 1 view .LVU55
 237:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 238:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the USART2 clock source */
 239:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_USART2_CONFIG(PeriphClkInit->Usart2ClockSelection);
 187              		.loc 1 239 5 view .LVU56
 188 009e 7549     		ldr	r1, .L76
 189 00a0 A568     		ldr	r5, [r4, #8]
 190 00a2 D1F88820 		ldr	r2, [r1, #136]
 191 00a6 22F00C02 		bic	r2, r2, #12
 192 00aa 2A43     		orrs	r2, r2, r5
 193 00ac C1F88820 		str	r2, [r1, #136]
 194              	.L14:
 240:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 241:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 242:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- USART3 clock source configuration -------------------*/
 243:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USART3) == RCC_PERIPHCLK_USART3)
 195              		.loc 1 243 3 view .LVU57
 196              		.loc 1 243 5 is_stmt 0 view .LVU58
 197 00b0 5907     		lsls	r1, r3, #29
 198 00b2 08D5     		bpl	.L15
 244:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 245:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 246:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_USART3CLKSOURCE(PeriphClkInit->Usart3ClockSelection));
 199              		.loc 1 246 5 is_stmt 1 view .LVU59
 247:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 248:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the USART3 clock source */
 249:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_USART3_CONFIG(PeriphClkInit->Usart3ClockSelection);
 200              		.loc 1 249 5 view .LVU60
 201 00b4 6F49     		ldr	r1, .L76
 202 00b6 E568     		ldr	r5, [r4, #12]
 203 00b8 D1F88820 		ldr	r2, [r1, #136]
 204 00bc 22F03002 		bic	r2, r2, #48
 205 00c0 2A43     		orrs	r2, r2, r5
 206 00c2 C1F88820 		str	r2, [r1, #136]
 207              	.L15:
 250:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 251:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 252:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(UART4)
 253:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- UART4 clock source configuration --------------------*/
 254:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_UART4) == RCC_PERIPHCLK_UART4)
 208              		.loc 1 254 3 view .LVU61
 209              		.loc 1 254 5 is_stmt 0 view .LVU62
 210 00c6 1A07     		lsls	r2, r3, #28
 211 00c8 08D5     		bpl	.L16
 255:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 256:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 257:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_UART4CLKSOURCE(PeriphClkInit->Uart4ClockSelection));
 212              		.loc 1 257 5 is_stmt 1 view .LVU63
 258:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 259:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the UART4 clock source */
 260:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_UART4_CONFIG(PeriphClkInit->Uart4ClockSelection);
 213              		.loc 1 260 5 view .LVU64
 214 00ca 6A49     		ldr	r1, .L76
 215 00cc 2569     		ldr	r5, [r4, #16]
 216 00ce D1F88820 		ldr	r2, [r1, #136]
 217 00d2 22F0C002 		bic	r2, r2, #192
 218 00d6 2A43     		orrs	r2, r2, r5
 219 00d8 C1F88820 		str	r2, [r1, #136]
 220              	.L16:
 261:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 262:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* UART4 */
 263:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 264:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(UART5)
 265:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 266:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- UART5 clock source configuration --------------------*/
 267:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_UART5) == RCC_PERIPHCLK_UART5)
 268:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 269:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 270:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_UART5CLKSOURCE(PeriphClkInit->Uart5ClockSelection));
 271:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 272:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the UART5 clock source */
 273:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_UART5_CONFIG(PeriphClkInit->Uart5ClockSelection);
 274:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 275:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 276:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* UART5 */
 277:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 278:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- LPUART1 clock source configuration ------------------*/
 279:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPUART1) == RCC_PERIPHCLK_LPUART1)
 221              		.loc 1 279 3 view .LVU65
 222              		.loc 1 279 5 is_stmt 0 view .LVU66
 223 00dc 9F06     		lsls	r7, r3, #26
 224 00de 08D5     		bpl	.L17
 280:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 281:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 282:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_LPUART1CLKSOURCE(PeriphClkInit->Lpuart1ClockSelection));
 225              		.loc 1 282 5 is_stmt 1 view .LVU67
 283:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 284:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the LPUAR1 clock source */
 285:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_LPUART1_CONFIG(PeriphClkInit->Lpuart1ClockSelection);
 226              		.loc 1 285 5 view .LVU68
 227 00e0 6449     		ldr	r1, .L76
 228 00e2 6569     		ldr	r5, [r4, #20]
 229 00e4 D1F88820 		ldr	r2, [r1, #136]
 230 00e8 22F44062 		bic	r2, r2, #3072
 231 00ec 2A43     		orrs	r2, r2, r5
 232 00ee C1F88820 		str	r2, [r1, #136]
 233              	.L17:
 286:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 287:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 288:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- I2C1 clock source configuration ---------------------*/
 289:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C1) == RCC_PERIPHCLK_I2C1)
 234              		.loc 1 289 3 view .LVU69
 235              		.loc 1 289 5 is_stmt 0 view .LVU70
 236 00f2 5E06     		lsls	r6, r3, #25
 237 00f4 08D5     		bpl	.L18
 290:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 291:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 292:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_I2C1CLKSOURCE(PeriphClkInit->I2c1ClockSelection));
 238              		.loc 1 292 5 is_stmt 1 view .LVU71
 293:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 294:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the I2C1 clock source */
 295:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_I2C1_CONFIG(PeriphClkInit->I2c1ClockSelection);
 239              		.loc 1 295 5 view .LVU72
 240 00f6 5F49     		ldr	r1, .L76
 241 00f8 A569     		ldr	r5, [r4, #24]
 242 00fa D1F88820 		ldr	r2, [r1, #136]
 243 00fe 22F44052 		bic	r2, r2, #12288
 244 0102 2A43     		orrs	r2, r2, r5
 245 0104 C1F88820 		str	r2, [r1, #136]
 246              	.L18:
 296:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 297:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 298:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- I2C2 clock source configuration ---------------------*/
 299:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C2) == RCC_PERIPHCLK_I2C2)
 247              		.loc 1 299 3 view .LVU73
 248              		.loc 1 299 5 is_stmt 0 view .LVU74
 249 0108 1D06     		lsls	r5, r3, #24
 250 010a 08D5     		bpl	.L19
 300:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 301:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 302:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_I2C2CLKSOURCE(PeriphClkInit->I2c2ClockSelection));
 251              		.loc 1 302 5 is_stmt 1 view .LVU75
 303:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 304:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the I2C2 clock source */
 305:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_I2C2_CONFIG(PeriphClkInit->I2c2ClockSelection);
 252              		.loc 1 305 5 view .LVU76
 253 010c 5949     		ldr	r1, .L76
 254 010e E569     		ldr	r5, [r4, #28]
 255 0110 D1F88820 		ldr	r2, [r1, #136]
 256 0114 22F44042 		bic	r2, r2, #49152
 257 0118 2A43     		orrs	r2, r2, r5
 258 011a C1F88820 		str	r2, [r1, #136]
 259              	.L19:
 306:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 307:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 308:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- I2C3 clock source configuration ---------------------*/
 309:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C3) == RCC_PERIPHCLK_I2C3)
 260              		.loc 1 309 3 view .LVU77
 261              		.loc 1 309 5 is_stmt 0 view .LVU78
 262 011e D905     		lsls	r1, r3, #23
 263 0120 08D5     		bpl	.L20
 310:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 311:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 312:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_I2C3CLKSOURCE(PeriphClkInit->I2c3ClockSelection));
 264              		.loc 1 312 5 is_stmt 1 view .LVU79
 313:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 314:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the I2C3 clock source */
 315:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_I2C3_CONFIG(PeriphClkInit->I2c3ClockSelection);
 265              		.loc 1 315 5 view .LVU80
 266 0122 5449     		ldr	r1, .L76
 267 0124 256A     		ldr	r5, [r4, #32]
 268 0126 D1F88820 		ldr	r2, [r1, #136]
 269 012a 22F44032 		bic	r2, r2, #196608
 270 012e 2A43     		orrs	r2, r2, r5
 271 0130 C1F88820 		str	r2, [r1, #136]
 272              	.L20:
 316:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 317:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 318:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(I2C4)  
 319:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 320:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- I2C4 clock source configuration ---------------------*/
 321:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C4) == RCC_PERIPHCLK_I2C4)
 322:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 323:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 324:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_I2C4CLKSOURCE(PeriphClkInit->I2c4ClockSelection));
 325:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 326:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the I2C4 clock source */
 327:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_I2C4_CONFIG(PeriphClkInit->I2c4ClockSelection);
 328:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 329:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 330:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* I2C4 */
 331:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 332:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- LPTIM1 clock source configuration ---------------------*/
 333:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPTIM1) == RCC_PERIPHCLK_LPTIM1)
 273              		.loc 1 333 3 view .LVU81
 274              		.loc 1 333 5 is_stmt 0 view .LVU82
 275 0134 9A05     		lsls	r2, r3, #22
 276 0136 08D5     		bpl	.L21
 334:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 335:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 336:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_LPTIM1CLKSOURCE(PeriphClkInit->Lptim1ClockSelection));
 277              		.loc 1 336 5 is_stmt 1 view .LVU83
 337:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 338:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the LPTIM1 clock source */
 339:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_LPTIM1_CONFIG(PeriphClkInit->Lptim1ClockSelection);
 278              		.loc 1 339 5 view .LVU84
 279 0138 4E49     		ldr	r1, .L76
 280 013a 656A     		ldr	r5, [r4, #36]
 281 013c D1F88820 		ldr	r2, [r1, #136]
 282 0140 22F44022 		bic	r2, r2, #786432
 283 0144 2A43     		orrs	r2, r2, r5
 284 0146 C1F88820 		str	r2, [r1, #136]
 285              	.L21:
 340:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 341:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 342:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- SAI1 clock source configuration ---------------------*/
 343:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI1) == RCC_PERIPHCLK_SAI1)
 286              		.loc 1 343 3 view .LVU85
 287              		.loc 1 343 5 is_stmt 0 view .LVU86
 288 014a 5F05     		lsls	r7, r3, #21
 289 014c 0FD5     		bpl	.L23
 344:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 345:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 346:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_SAI1CLKSOURCE(PeriphClkInit->Sai1ClockSelection));
 290              		.loc 1 346 5 is_stmt 1 view .LVU87
 347:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 348:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the SAI1 interface clock source */
 349:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_SAI1_CONFIG(PeriphClkInit->Sai1ClockSelection);
 291              		.loc 1 349 5 view .LVU88
 292 014e 4949     		ldr	r1, .L76
 293 0150 A56A     		ldr	r5, [r4, #40]
 294 0152 D1F88820 		ldr	r2, [r1, #136]
 295 0156 22F44012 		bic	r2, r2, #3145728
 296 015a 2A43     		orrs	r2, r2, r5
 297 015c C1F88820 		str	r2, [r1, #136]
 350:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 351:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->Sai1ClockSelection == RCC_SAI1CLKSOURCE_PLL)
 298              		.loc 1 351 5 view .LVU89
 299              		.loc 1 351 7 is_stmt 0 view .LVU90
 300 0160 B5F5801F 		cmp	r5, #1048576
 352:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLL48M1CLK output */
 354:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 301              		.loc 1 354 7 is_stmt 1 view .LVU91
 302 0164 02BF     		ittt	eq
 303 0166 CA68     		ldreq	r2, [r1, #12]
 304 0168 42F48012 		orreq	r2, r2, #1048576
 305 016c CA60     		streq	r2, [r1, #12]
 306              	.L23:
 355:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 356:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 357:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 358:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- I2S clock source configuration ---------------------*/
 359:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S) == RCC_PERIPHCLK_I2S)
 307              		.loc 1 359 3 view .LVU92
 308              		.loc 1 359 5 is_stmt 0 view .LVU93
 309 016e 1E05     		lsls	r6, r3, #20
 310 0170 0FD5     		bpl	.L26
 360:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 361:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 362:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_I2SCLKSOURCE(PeriphClkInit->I2sClockSelection));
 311              		.loc 1 362 5 is_stmt 1 view .LVU94
 363:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 364:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the I2S interface clock source */
 365:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_I2S_CONFIG(PeriphClkInit->I2sClockSelection);
 312              		.loc 1 365 5 view .LVU95
 313 0172 4049     		ldr	r1, .L76
 314 0174 E56A     		ldr	r5, [r4, #44]
 315 0176 D1F88820 		ldr	r2, [r1, #136]
 316 017a 22F44002 		bic	r2, r2, #12582912
 317 017e 2A43     		orrs	r2, r2, r5
 318 0180 C1F88820 		str	r2, [r1, #136]
 366:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 367:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->I2sClockSelection == RCC_I2SCLKSOURCE_PLL)
 319              		.loc 1 367 5 view .LVU96
 320              		.loc 1 367 7 is_stmt 0 view .LVU97
 321 0184 B5F5800F 		cmp	r5, #4194304
 368:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 369:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLL48M1CLK output */
 370:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 322              		.loc 1 370 7 is_stmt 1 view .LVU98
 323 0188 02BF     		ittt	eq
 324 018a CA68     		ldreq	r2, [r1, #12]
 325 018c 42F48012 		orreq	r2, r2, #1048576
 326 0190 CA60     		streq	r2, [r1, #12]
 327              	.L26:
 371:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 372:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 373:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 374:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(FDCAN1)
 375:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- FDCAN clock source configuration ---------------------*/
 376:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_FDCAN) == RCC_PERIPHCLK_FDCAN)
 328              		.loc 1 376 3 view .LVU99
 329              		.loc 1 376 5 is_stmt 0 view .LVU100
 330 0192 DD04     		lsls	r5, r3, #19
 331 0194 0FD5     		bpl	.L29
 377:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 378:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 379:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_FDCANCLKSOURCE(PeriphClkInit->FdcanClockSelection));
 332              		.loc 1 379 5 is_stmt 1 view .LVU101
 380:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 381:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the FDCAN interface clock source */
 382:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_FDCAN_CONFIG(PeriphClkInit->FdcanClockSelection);
 333              		.loc 1 382 5 view .LVU102
 334 0196 3749     		ldr	r1, .L76
 335 0198 256B     		ldr	r5, [r4, #48]
 336 019a D1F88820 		ldr	r2, [r1, #136]
 337 019e 22F04072 		bic	r2, r2, #50331648
 338 01a2 2A43     		orrs	r2, r2, r5
 339 01a4 C1F88820 		str	r2, [r1, #136]
 383:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 384:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->FdcanClockSelection == RCC_FDCANCLKSOURCE_PLL)
 340              		.loc 1 384 5 view .LVU103
 341              		.loc 1 384 7 is_stmt 0 view .LVU104
 342 01a8 B5F1807F 		cmp	r5, #16777216
 385:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 386:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLL48M1CLK output */
 387:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 343              		.loc 1 387 7 is_stmt 1 view .LVU105
 344 01ac 02BF     		ittt	eq
 345 01ae CA68     		ldreq	r2, [r1, #12]
 346 01b0 42F48012 		orreq	r2, r2, #1048576
 347 01b4 CA60     		streq	r2, [r1, #12]
 348              	.L29:
 388:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 389:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 390:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* FDCAN1 */
 391:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 392:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(USB)
 393:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 394:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- USB clock source configuration ----------------------*/
 395:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USB) == (RCC_PERIPHCLK_USB))
 349              		.loc 1 395 3 view .LVU106
 350              		.loc 1 395 5 is_stmt 0 view .LVU107
 351 01b6 9904     		lsls	r1, r3, #18
 352 01b8 0FD5     		bpl	.L32
 396:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 397:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_USBCLKSOURCE(PeriphClkInit->UsbClockSelection));
 353              		.loc 1 397 5 is_stmt 1 view .LVU108
 398:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_USB_CONFIG(PeriphClkInit->UsbClockSelection);
 354              		.loc 1 398 5 view .LVU109
 355 01ba 2E49     		ldr	r1, .L76
 356 01bc 656B     		ldr	r5, [r4, #52]
 357 01be D1F88820 		ldr	r2, [r1, #136]
 358 01c2 22F04062 		bic	r2, r2, #201326592
 359 01c6 2A43     		orrs	r2, r2, r5
 360 01c8 C1F88820 		str	r2, [r1, #136]
 399:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 400:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->UsbClockSelection == RCC_USBCLKSOURCE_PLL)
 361              		.loc 1 400 5 view .LVU110
 362              		.loc 1 400 7 is_stmt 0 view .LVU111
 363 01cc B5F1006F 		cmp	r5, #134217728
 401:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 402:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLL48M1CLK output */
 403:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 364              		.loc 1 403 7 is_stmt 1 view .LVU112
 365 01d0 02BF     		ittt	eq
 366 01d2 CA68     		ldreq	r2, [r1, #12]
 367 01d4 42F48012 		orreq	r2, r2, #1048576
 368 01d8 CA60     		streq	r2, [r1, #12]
 369              	.L32:
 404:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 405:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 406:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 407:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* USB */
 408:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 409:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- RNG clock source configuration ----------------------*/
 410:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RNG) == (RCC_PERIPHCLK_RNG))
 370              		.loc 1 410 3 view .LVU113
 371              		.loc 1 410 5 is_stmt 0 view .LVU114
 372 01da 5A04     		lsls	r2, r3, #17
 373 01dc 0FD5     		bpl	.L35
 411:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 412:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_RNGCLKSOURCE(PeriphClkInit->RngClockSelection));
 374              		.loc 1 412 5 is_stmt 1 view .LVU115
 413:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_RNG_CONFIG(PeriphClkInit->RngClockSelection);
 375              		.loc 1 413 5 view .LVU116
 376 01de 2549     		ldr	r1, .L76
 377 01e0 A56B     		ldr	r5, [r4, #56]
 378 01e2 D1F88820 		ldr	r2, [r1, #136]
 379 01e6 22F04062 		bic	r2, r2, #201326592
 380 01ea 2A43     		orrs	r2, r2, r5
 381 01ec C1F88820 		str	r2, [r1, #136]
 414:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 415:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->RngClockSelection == RCC_RNGCLKSOURCE_PLL)
 382              		.loc 1 415 5 view .LVU117
 383              		.loc 1 415 7 is_stmt 0 view .LVU118
 384 01f0 B5F1006F 		cmp	r5, #134217728
 416:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 417:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLL48M1CLK output */
 418:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 385              		.loc 1 418 7 is_stmt 1 view .LVU119
 386 01f4 02BF     		ittt	eq
 387 01f6 CA68     		ldreq	r2, [r1, #12]
 388 01f8 42F48012 		orreq	r2, r2, #1048576
 389 01fc CA60     		streq	r2, [r1, #12]
 390              	.L35:
 419:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 420:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 421:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 422:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- ADC12 clock source configuration ----------------------*/
 423:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_ADC12) == RCC_PERIPHCLK_ADC12)
 391              		.loc 1 423 3 view .LVU120
 392              		.loc 1 423 5 is_stmt 0 view .LVU121
 393 01fe 1B04     		lsls	r3, r3, #16
 394 0200 0FD5     		bpl	.L43
 424:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 425:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 426:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_ADC12CLKSOURCE(PeriphClkInit->Adc12ClockSelection));
 395              		.loc 1 426 5 is_stmt 1 view .LVU122
 427:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 428:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the ADC12 interface clock source */
 429:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_ADC12_CONFIG(PeriphClkInit->Adc12ClockSelection);
 396              		.loc 1 429 5 view .LVU123
 397 0202 1C4A     		ldr	r2, .L76
 398 0204 E16B     		ldr	r1, [r4, #60]
 399 0206 D2F88830 		ldr	r3, [r2, #136]
 400 020a 23F04053 		bic	r3, r3, #805306368
 401 020e 0B43     		orrs	r3, r3, r1
 430:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 431:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->Adc12ClockSelection == RCC_ADC12CLKSOURCE_PLL)
 402              		.loc 1 431 7 is_stmt 0 view .LVU124
 403 0210 B1F1805F 		cmp	r1, #268435456
 429:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 404              		.loc 1 429 5 view .LVU125
 405 0214 C2F88830 		str	r3, [r2, #136]
 406              		.loc 1 431 5 is_stmt 1 view .LVU126
 407              		.loc 1 431 7 is_stmt 0 view .LVU127
 408 0218 03D1     		bne	.L43
 432:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 433:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLLADCCLK output */
 434:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_ADCCLK);
 409              		.loc 1 434 7 is_stmt 1 view .LVU128
 410 021a D368     		ldr	r3, [r2, #12]
 411 021c 43F48033 		orr	r3, r3, #65536
 412 0220 D360     		str	r3, [r2, #12]
 435:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 436:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 437:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   
 438:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(ADC345_COMMON)
 439:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- ADC345 clock source configuration ----------------------*/
 440:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_ADC345) == RCC_PERIPHCLK_ADC345)
 441:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 442:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 443:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_ADC345CLKSOURCE(PeriphClkInit->Adc345ClockSelection));
 444:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 445:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the ADC345 interface clock source */
 446:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_ADC345_CONFIG(PeriphClkInit->Adc345ClockSelection);
 447:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
 448:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->Adc345ClockSelection == RCC_ADC345CLKSOURCE_PLL)
 449:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 450:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLLADCCLK output */
 451:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_ADCCLK);
 452:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 453:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 454:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* ADC345_COMMON */
 455:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 456:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(QUADSPI)
 457:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 458:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /*-------------------------- QuadSPIx clock source configuration ----------------*/
 459:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_QSPI) == RCC_PERIPHCLK_QSPI)
 460:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 461:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check the parameters */
 462:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     assert_param(IS_RCC_QSPICLKSOURCE(PeriphClkInit->QspiClockSelection));
 463:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 464:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Configure the QuadSPI clock source */
 465:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_QSPI_CONFIG(PeriphClkInit->QspiClockSelection);
 466:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 467:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(PeriphClkInit->QspiClockSelection == RCC_QSPICLKSOURCE_PLL)
 468:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 469:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Enable PLL48M1CLK output */
 470:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 471:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 472:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 473:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 474:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* QUADSPI */
 475:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 476:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   return status;
 413              		.loc 1 476 3 view .LVU129
 414              	.L43:
 477:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 415              		.loc 1 477 1 is_stmt 0 view .LVU130
 416 0222 02B0     		add	sp, sp, #8
 417              		.cfi_remember_state
 418              		.cfi_def_cfa_offset 24
 419              		@ sp needed
 420 0224 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 421              	.LVL16:
 422              	.L8:
 423              		.cfi_restore_state
 424              	.LBB5:
 173:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* RTC Clock selection can be changed only if the Backup Domain is reset */
 425              		.loc 1 173 9 is_stmt 1 view .LVU131
 173:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* RTC Clock selection can be changed only if the Backup Domain is reset */
 426              		.loc 1 173 23 is_stmt 0 view .LVU132
 427 0228 D5F89020 		ldr	r2, [r5, #144]
 175:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         __HAL_RCC_BACKUPRESET_RELEASE();
 428              		.loc 1 175 9 view .LVU133
 429 022c D5F89030 		ldr	r3, [r5, #144]
 430              	.LVL17:
 175:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         __HAL_RCC_BACKUPRESET_RELEASE();
 431              		.loc 1 175 9 view .LVU134
 432 0230 43F48033 		orr	r3, r3, #65536
 433 0234 C5F89030 		str	r3, [r5, #144]
 176:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Restore the Content of BDCR register */
 434              		.loc 1 176 9 view .LVU135
 435 0238 D5F89030 		ldr	r3, [r5, #144]
 173:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* RTC Clock selection can be changed only if the Backup Domain is reset */
 436              		.loc 1 173 21 view .LVU136
 437 023c 22F44071 		bic	r1, r2, #768
 438              	.LVL18:
 175:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         __HAL_RCC_BACKUPRESET_RELEASE();
 439              		.loc 1 175 9 is_stmt 1 view .LVU137
 176:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Restore the Content of BDCR register */
 440              		.loc 1 176 9 view .LVU138
 441 0240 23F48033 		bic	r3, r3, #65536
 182:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 442              		.loc 1 182 10 is_stmt 0 view .LVU139
 443 0244 D207     		lsls	r2, r2, #31
 176:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* Restore the Content of BDCR register */
 444              		.loc 1 176 9 view .LVU140
 445 0246 C5F89030 		str	r3, [r5, #144]
 178:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 446              		.loc 1 178 9 is_stmt 1 view .LVU141
 178:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 447              		.loc 1 178 19 is_stmt 0 view .LVU142
 448 024a C5F89010 		str	r1, [r5, #144]
 182:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 449              		.loc 1 182 7 is_stmt 1 view .LVU143
 182:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 450              		.loc 1 182 10 is_stmt 0 view .LVU144
 451 024e 7FF500AF 		bpl	.L9
 185:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 452              		.loc 1 185 9 is_stmt 1 view .LVU145
 185:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 453              		.loc 1 185 21 is_stmt 0 view .LVU146
 454 0252 FFF7FEFF 		bl	HAL_GetTick
 455              	.LVL19:
 190:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 456              		.loc 1 190 13 view .LVU147
 457 0256 41F28838 		movw	r8, #5000
 458              	.LVL20:
 185:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 459              		.loc 1 185 21 view .LVU148
 460 025a 0646     		mov	r6, r0
 461              	.LVL21:
 188:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 462              		.loc 1 188 9 is_stmt 1 view .LVU149
 463              	.L10:
 188:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 464              		.loc 1 188 15 is_stmt 0 view .LVU150
 465 025c D5F89030 		ldr	r3, [r5, #144]
 188:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 466              		.loc 1 188 14 view .LVU151
 467 0260 9B07     		lsls	r3, r3, #30
 468 0262 3FF5F6AE 		bmi	.L9
 190:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 469              		.loc 1 190 11 is_stmt 1 view .LVU152
 190:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 470              		.loc 1 190 15 is_stmt 0 view .LVU153
 471 0266 FFF7FEFF 		bl	HAL_GetTick
 472              	.LVL22:
 190:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 473              		.loc 1 190 29 view .LVU154
 474 026a 801B     		subs	r0, r0, r6
 190:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 475              		.loc 1 190 13 view .LVU155
 476 026c 4045     		cmp	r0, r8
 477 026e F5D9     		bls	.L10
 478 0270 01E7     		b	.L11
 479              	.L77:
 480 0272 00BF     		.align	2
 481              	.L76:
 482 0274 00100240 		.word	1073876992
 483 0278 00700040 		.word	1073770496
 484              	.LBE5:
 485              		.cfi_endproc
 486              	.LFE325:
 488              		.section	.text.HAL_RCCEx_GetPeriphCLKConfig,"ax",%progbits
 489              		.align	1
 490              		.global	HAL_RCCEx_GetPeriphCLKConfig
 491              		.syntax unified
 492              		.thumb
 493              		.thumb_func
 494              		.fpu fpv4-sp-d16
 496              	HAL_RCCEx_GetPeriphCLKConfig:
 497              	.LVL23:
 498              	.LFB326:
 478:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 479:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
 480:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Get the RCC_ClkInitStruct according to the internal RCC configuration registers.
 481:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @param  PeriphClkInit  pointer to an RCC_PeriphCLKInitTypeDef structure that
 482:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         returns the configuration information for the Extended Peripherals
 483:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         clocks(USART1, USART2, USART3, UART4, UART5, LPUART1, I2C1, I2C2, I2C3, I2C4,
 484:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         LPTIM1, SAI1, I2Sx, FDCANx, USB, RNG, ADCx, RTC, QSPI).
 485:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
 486:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
 487:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
 488:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 499              		.loc 1 488 1 is_stmt 1 view -0
 500              		.cfi_startproc
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 489:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Set all possible values for the extended clock type parameter------------*/
 490:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 491:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(STM32G474xx) || defined(STM32G484xx)
 492:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 493:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_USART1  | RCC_PERIPHCLK_USART2 | RCC_PERIPHCL
 494:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_UART5   | \
 495:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPUART1 | RCC_PERIPHCLK_I2C1   | RCC_PERIPHCL
 496:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_I2C4    | \
 497:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPTIM1  | RCC_PERIPHCLK_SAI1   | RCC_PERIPHCL
 498:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RNG     | RCC_PERIPHCLK_USB    | RCC_PERIPHCL
 499:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_QSPI    | \
 500:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RTC;
 501:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 502:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #elif defined(STM32G473xx) || defined(STM32G483xx)
 503:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 504:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_USART1  | RCC_PERIPHCLK_USART2 | RCC_PERIPHCL
 505:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_UART5   | \
 506:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPUART1 | RCC_PERIPHCLK_I2C1   | RCC_PERIPHCL
 507:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_I2C4    | \
 508:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPTIM1  | RCC_PERIPHCLK_SAI1   | RCC_PERIPHCL
 509:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RNG     | RCC_PERIPHCLK_USB    | RCC_PERIPHCL
 510:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_QSPI    | \
 511:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RTC;
 512:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 513:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #elif defined(STM32G471xx)
 514:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 515:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_USART1  | RCC_PERIPHCLK_USART2 | RCC_PERIPHCL
 516:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_UART5   | \
 517:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPUART1 | RCC_PERIPHCLK_I2C1   | RCC_PERIPHCL
 518:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_I2C4    | \
 519:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPTIM1  | RCC_PERIPHCLK_SAI1   | RCC_PERIPHCL
 520:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RNG     | RCC_PERIPHCLK_USB    | RCC_PERIPHCL
 521:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RTC;
 522:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #elif defined(STM32G431xx) || defined(STM32G441xx)
 523:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 524:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_USART1  | RCC_PERIPHCLK_USART2 | RCC_PERIPHCL
 504              		.loc 1 524 3 view .LVU157
 505              		.loc 1 524 39 is_stmt 0 view .LVU158
 506 0000 294B     		ldr	r3, .L79
 507 0002 0360     		str	r3, [r0]
 525:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPUART1 | RCC_PERIPHCLK_I2C1   | RCC_PERIPHCL
 526:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPTIM1  | RCC_PERIPHCLK_SAI1   | RCC_PERIPHCL
 527:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RNG     | RCC_PERIPHCLK_USB    | RCC_PERIPHCL
 528:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RTC;
 529:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #elif defined(STM32GBK1CB)
 530:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 531:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_USART1  | RCC_PERIPHCLK_USART2 | RCC_PERIPHCL
 532:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPUART1 | RCC_PERIPHCLK_I2C1   | RCC_PERIPHCL
 533:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_LPTIM1  | RCC_PERIPHCLK_SAI1   | RCC_PERIPHCL
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RNG     | RCC_PERIPHCLK_USB    | RCC_PERIPHCL
 535:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                                         RCC_PERIPHCLK_RTC;
 536:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 537:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* STM32G431xx */
 538:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 539:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 540:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the USART1 clock source ---------------------------------------------*/
 541:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Usart1ClockSelection  = __HAL_RCC_GET_USART1_SOURCE();
 508              		.loc 1 541 3 is_stmt 1 view .LVU159
 509              		.loc 1 541 42 is_stmt 0 view .LVU160
 510 0004 294B     		ldr	r3, .L79+4
 511 0006 D3F88820 		ldr	r2, [r3, #136]
 512 000a 02F00302 		and	r2, r2, #3
 513              		.loc 1 541 40 view .LVU161
 514 000e 4260     		str	r2, [r0, #4]
 542:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the USART2 clock source ---------------------------------------------*/
 543:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Usart2ClockSelection  = __HAL_RCC_GET_USART2_SOURCE();
 515              		.loc 1 543 3 is_stmt 1 view .LVU162
 516              		.loc 1 543 42 is_stmt 0 view .LVU163
 517 0010 D3F88820 		ldr	r2, [r3, #136]
 518 0014 02F00C02 		and	r2, r2, #12
 519              		.loc 1 543 40 view .LVU164
 520 0018 8260     		str	r2, [r0, #8]
 544:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the USART3 clock source ---------------------------------------------*/
 545:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Usart3ClockSelection  = __HAL_RCC_GET_USART3_SOURCE();
 521              		.loc 1 545 3 is_stmt 1 view .LVU165
 522              		.loc 1 545 42 is_stmt 0 view .LVU166
 523 001a D3F88820 		ldr	r2, [r3, #136]
 524 001e 02F03002 		and	r2, r2, #48
 525              		.loc 1 545 40 view .LVU167
 526 0022 C260     		str	r2, [r0, #12]
 546:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 547:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(UART4)
 548:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the UART4 clock source ----------------------------------------------*/
 549:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Uart4ClockSelection   = __HAL_RCC_GET_UART4_SOURCE();
 527              		.loc 1 549 3 is_stmt 1 view .LVU168
 528              		.loc 1 549 42 is_stmt 0 view .LVU169
 529 0024 D3F88820 		ldr	r2, [r3, #136]
 530 0028 02F0C002 		and	r2, r2, #192
 531              		.loc 1 549 40 view .LVU170
 532 002c 0261     		str	r2, [r0, #16]
 550:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* UART4 */
 551:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 552:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(UART5)
 553:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the UART5 clock source ----------------------------------------------*/
 554:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Uart5ClockSelection   = __HAL_RCC_GET_UART5_SOURCE();
 555:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* UART5 */
 556:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   
 557:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the LPUART1 clock source --------------------------------------------*/
 558:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Lpuart1ClockSelection = __HAL_RCC_GET_LPUART1_SOURCE();
 533              		.loc 1 558 3 is_stmt 1 view .LVU171
 534              		.loc 1 558 42 is_stmt 0 view .LVU172
 535 002e D3F88820 		ldr	r2, [r3, #136]
 536 0032 02F44062 		and	r2, r2, #3072
 537              		.loc 1 558 40 view .LVU173
 538 0036 4261     		str	r2, [r0, #20]
 559:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 560:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the I2C1 clock source -----------------------------------------------*/
 561:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->I2c1ClockSelection    = __HAL_RCC_GET_I2C1_SOURCE();
 539              		.loc 1 561 3 is_stmt 1 view .LVU174
 540              		.loc 1 561 42 is_stmt 0 view .LVU175
 541 0038 D3F88820 		ldr	r2, [r3, #136]
 542 003c 02F44052 		and	r2, r2, #12288
 543              		.loc 1 561 40 view .LVU176
 544 0040 8261     		str	r2, [r0, #24]
 562:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 563:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the I2C2 clock source ----------------------------------------------*/
 564:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->I2c2ClockSelection    = __HAL_RCC_GET_I2C2_SOURCE();
 545              		.loc 1 564 3 is_stmt 1 view .LVU177
 546              		.loc 1 564 42 is_stmt 0 view .LVU178
 547 0042 D3F88820 		ldr	r2, [r3, #136]
 548 0046 02F44042 		and	r2, r2, #49152
 549              		.loc 1 564 40 view .LVU179
 550 004a C261     		str	r2, [r0, #28]
 565:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 566:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the I2C3 clock source -----------------------------------------------*/
 567:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->I2c3ClockSelection    = __HAL_RCC_GET_I2C3_SOURCE();
 551              		.loc 1 567 3 is_stmt 1 view .LVU180
 552              		.loc 1 567 42 is_stmt 0 view .LVU181
 553 004c D3F88820 		ldr	r2, [r3, #136]
 554 0050 02F44032 		and	r2, r2, #196608
 555              		.loc 1 567 40 view .LVU182
 556 0054 0262     		str	r2, [r0, #32]
 568:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 569:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(I2C4)
 570:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the I2C4 clock source -----------------------------------------------*/
 571:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->I2c4ClockSelection    = __HAL_RCC_GET_I2C4_SOURCE();
 572:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* I2C4 */
 573:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 574:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the LPTIM1 clock source ---------------------------------------------*/
 575:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Lptim1ClockSelection  = __HAL_RCC_GET_LPTIM1_SOURCE();
 557              		.loc 1 575 3 is_stmt 1 view .LVU183
 558              		.loc 1 575 42 is_stmt 0 view .LVU184
 559 0056 D3F88820 		ldr	r2, [r3, #136]
 560 005a 02F44022 		and	r2, r2, #786432
 561              		.loc 1 575 40 view .LVU185
 562 005e 4262     		str	r2, [r0, #36]
 576:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 577:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the SAI1 clock source -----------------------------------------------*/
 578:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Sai1ClockSelection    = __HAL_RCC_GET_SAI1_SOURCE();
 563              		.loc 1 578 3 is_stmt 1 view .LVU186
 564              		.loc 1 578 42 is_stmt 0 view .LVU187
 565 0060 D3F88820 		ldr	r2, [r3, #136]
 566 0064 02F44012 		and	r2, r2, #3145728
 567              		.loc 1 578 40 view .LVU188
 568 0068 8262     		str	r2, [r0, #40]
 579:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 580:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the I2S clock source -----------------------------------------------*/
 581:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->I2sClockSelection    = __HAL_RCC_GET_I2S_SOURCE();
 569              		.loc 1 581 3 is_stmt 1 view .LVU189
 570              		.loc 1 581 41 is_stmt 0 view .LVU190
 571 006a D3F88820 		ldr	r2, [r3, #136]
 572 006e 02F44002 		and	r2, r2, #12582912
 573              		.loc 1 581 39 view .LVU191
 574 0072 C262     		str	r2, [r0, #44]
 582:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 583:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(FDCAN1)
 584:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the FDCAN clock source -----------------------------------------------*/
 585:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->FdcanClockSelection    = __HAL_RCC_GET_FDCAN_SOURCE();
 575              		.loc 1 585 3 is_stmt 1 view .LVU192
 576              		.loc 1 585 43 is_stmt 0 view .LVU193
 577 0074 D3F88820 		ldr	r2, [r3, #136]
 578 0078 02F04072 		and	r2, r2, #50331648
 579              		.loc 1 585 41 view .LVU194
 580 007c 0263     		str	r2, [r0, #48]
 586:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* FDCAN1 */
 587:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 588:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(USB)
 589:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the USB clock source ------------------------------------------------*/
 590:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->UsbClockSelection   = __HAL_RCC_GET_USB_SOURCE();
 581              		.loc 1 590 3 is_stmt 1 view .LVU195
 582              		.loc 1 590 40 is_stmt 0 view .LVU196
 583 007e D3F88820 		ldr	r2, [r3, #136]
 584 0082 02F04062 		and	r2, r2, #201326592
 585              		.loc 1 590 38 view .LVU197
 586 0086 4263     		str	r2, [r0, #52]
 591:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* USB */
 592:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 593:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the RNG clock source ------------------------------------------------*/
 594:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->RngClockSelection   = __HAL_RCC_GET_RNG_SOURCE();
 587              		.loc 1 594 3 is_stmt 1 view .LVU198
 588              		.loc 1 594 40 is_stmt 0 view .LVU199
 589 0088 D3F88820 		ldr	r2, [r3, #136]
 590 008c 02F04062 		and	r2, r2, #201326592
 591              		.loc 1 594 38 view .LVU200
 592 0090 8263     		str	r2, [r0, #56]
 595:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 596:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the ADC12 clock source -----------------------------------------------*/
 597:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Adc12ClockSelection     = __HAL_RCC_GET_ADC12_SOURCE();
 593              		.loc 1 597 3 is_stmt 1 view .LVU201
 594              		.loc 1 597 44 is_stmt 0 view .LVU202
 595 0092 D3F88820 		ldr	r2, [r3, #136]
 596 0096 02F04052 		and	r2, r2, #805306368
 597              		.loc 1 597 42 view .LVU203
 598 009a C263     		str	r2, [r0, #60]
 598:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 599:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(ADC345_COMMON)
 600:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the ADC345 clock source ----------------------------------------------*/
 601:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->Adc345ClockSelection     = __HAL_RCC_GET_ADC345_SOURCE();
 602:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* ADC345_COMMON */
 603:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 604:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(QUADSPI)
 605:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the QuadSPIclock source --------------------------------------------*/
 606:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->QspiClockSelection = __HAL_RCC_GET_QSPI_SOURCE();
 607:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* QUADSPI */
 608:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 609:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the RTC clock source ------------------------------------------------*/
 610:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   PeriphClkInit->RTCClockSelection     = __HAL_RCC_GET_RTC_SOURCE();
 599              		.loc 1 610 3 is_stmt 1 view .LVU204
 600              		.loc 1 610 42 is_stmt 0 view .LVU205
 601 009c D3F89030 		ldr	r3, [r3, #144]
 602 00a0 03F44073 		and	r3, r3, #768
 603              		.loc 1 610 40 view .LVU206
 604 00a4 0364     		str	r3, [r0, #64]
 611:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 612:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 605              		.loc 1 612 1 view .LVU207
 606 00a6 7047     		bx	lr
 607              	.L80:
 608              		.align	2
 609              	.L79:
 610 00a8 EFFF0800 		.word	589807
 611 00ac 00100240 		.word	1073876992
 612              		.cfi_endproc
 613              	.LFE326:
 615              		.section	.text.HAL_RCCEx_GetPeriphCLKFreq,"ax",%progbits
 616              		.align	1
 617              		.global	HAL_RCCEx_GetPeriphCLKFreq
 618              		.syntax unified
 619              		.thumb
 620              		.thumb_func
 621              		.fpu fpv4-sp-d16
 623              	HAL_RCCEx_GetPeriphCLKFreq:
 624              	.LVL24:
 625              	.LFB327:
 613:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 614:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
 615:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Return the peripheral clock frequency for peripherals with clock source from PLL
 616:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @note   Return 0 if peripheral clock identifier not managed by this API
 617:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @param  PeriphClk  Peripheral clock identifier
 618:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         This parameter can be one of the following values:
 619:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USART1  USART1 peripheral clock
 620:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USART2  USART2 peripheral clock
 621:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USART3  USART3 peripheral clock
 622:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_UART4  UART4 peripheral clock (only for devices with UART4)
 623:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_UART5  UART5 peripheral clock (only for devices with UART5)
 624:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_LPUART1  LPUART1 peripheral clock
 625:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C1  I2C1 peripheral clock
 626:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C2  I2C2 peripheral clock
 627:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C3  I2C3 peripheral clock
 628:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2C4  I2C4 peripheral clock (only for devices with I2C4)
 629:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_LPTIM1  LPTIM1 peripheral clock
 630:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_SAI1  SAI1 peripheral clock
 631:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_I2S  SPI peripheral clock
 632:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_FDCAN  FDCAN peripheral clock (only for devices with FDCAN)
 633:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_RNG  RNG peripheral clock
 634:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_USB  USB peripheral clock (only for devices with USB)
 635:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_ADC12  ADC1 and ADC2 peripheral clock
 636:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_ADC345  ADC3, ADC4 and ADC5 peripheral clock (only for devic
 637:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_QSPI  QSPI peripheral clock (only for devices with QSPI)
 638:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_PERIPHCLK_RTC  RTC peripheral clock
 639:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval Frequency in Hz
 640:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
 641:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
 642:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 626              		.loc 1 642 1 is_stmt 1 view -0
 627              		.cfi_startproc
 628              		@ args = 0, pretend = 0, frame = 0
 629              		@ frame_needed = 0, uses_anonymous_args = 0
 630              		@ link register save eliminated.
 643:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t frequency = 0U;
 631              		.loc 1 643 3 view .LVU209
 644:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t srcclk;
 632              		.loc 1 644 3 view .LVU210
 645:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t pllvco, plln, pllp;
 633              		.loc 1 645 3 view .LVU211
 646:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 647:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check the parameters */
 648:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_PERIPHCLOCK(PeriphClk));
 634              		.loc 1 648 3 view .LVU212
 649:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 650:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(PeriphClk == RCC_PERIPHCLK_RTC)
 635              		.loc 1 650 3 view .LVU213
 636              		.loc 1 650 5 is_stmt 0 view .LVU214
 637 0000 B0F5002F 		cmp	r0, #524288
 638 0004 C549     		ldr	r1, .L267
 639 0006 1DD1     		bne	.L82
 651:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 652:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Get the current RTC source */
 653:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     srcclk = __HAL_RCC_GET_RTC_SOURCE();
 640              		.loc 1 653 5 is_stmt 1 view .LVU215
 641              		.loc 1 653 14 is_stmt 0 view .LVU216
 642 0008 D1F89030 		ldr	r3, [r1, #144]
 654:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 655:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check if LSE is ready and if RTC clock selection is LSE */
 656:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if ((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY)) && (srcclk == RCC_RTCCLKSOURCE_LSE))
 643              		.loc 1 656 10 view .LVU217
 644 000c D1F89020 		ldr	r2, [r1, #144]
 645              		.loc 1 656 8 view .LVU218
 646 0010 9007     		lsls	r0, r2, #30
 647              	.LVL25:
 653:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 648              		.loc 1 653 12 view .LVU219
 649 0012 03F44073 		and	r3, r3, #768
 650              	.LVL26:
 651              		.loc 1 656 5 is_stmt 1 view .LVU220
 652              		.loc 1 656 8 is_stmt 0 view .LVU221
 653 0016 03D5     		bpl	.L83
 654              		.loc 1 656 54 discriminator 1 view .LVU222
 655 0018 B3F5807F 		cmp	r3, #256
 656 001c 00F0A781 		beq	.L124
 657              	.L83:
 657:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 658:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       frequency = LSE_VALUE;
 659:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 660:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check if LSI is ready and if RTC clock selection is LSI */
 661:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     else if ((HAL_IS_BIT_SET(RCC->CSR, RCC_CSR_LSIRDY)) && (srcclk == RCC_RTCCLKSOURCE_LSI))
 658              		.loc 1 661 10 is_stmt 1 view .LVU223
 659              		.loc 1 661 15 is_stmt 0 view .LVU224
 660 0020 D1F89420 		ldr	r2, [r1, #148]
 661              		.loc 1 661 13 view .LVU225
 662 0024 9207     		lsls	r2, r2, #30
 663 0026 03D5     		bpl	.L85
 664              		.loc 1 661 57 discriminator 1 view .LVU226
 665 0028 B3F5007F 		cmp	r3, #512
 666 002c 00F0A281 		beq	.L152
 667              	.L85:
 662:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 663:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       frequency = LSI_VALUE;
 664:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 665:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check if HSE is ready  and if RTC clock selection is HSI_DIV32*/
 666:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     else if ((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSERDY)) && (srcclk == RCC_RTCCLKSOURCE_HSE_DIV32))
 668              		.loc 1 666 10 is_stmt 1 view .LVU227
 669              		.loc 1 666 15 is_stmt 0 view .LVU228
 670 0030 0868     		ldr	r0, [r1]
 671              		.loc 1 666 13 view .LVU229
 672 0032 10F40030 		ands	r0, r0, #131072
 673 0036 29D0     		beq	.L81
 667:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 668:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       frequency = HSE_VALUE / 32U;
 674              		.loc 1 668 17 discriminator 1 view .LVU230
 675 0038 B948     		ldr	r0, .L267+4
 676 003a B3F5407F 		cmp	r3, #768
 677              	.L255:
 669:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 670:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Clock not enabled for RTC*/
 671:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     else
 672:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 673:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* nothing to do: frequency already initialized to 0 */
 674:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 675:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 676:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   else
 677:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 678:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Other external peripheral clock source than RTC */
 679:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 680:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Compute PLL clock input */
 681:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_HSI)   /* HSI ? */
 682:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 683:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY))
 684:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 685:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         pllvco = HSI_VALUE;
 686:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 687:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 688:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 689:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         pllvco = 0U;
 690:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 691:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 692:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     else if(__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_HSE)   /* HSE ? */
 693:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 694:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSERDY))
 695:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 696:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         pllvco = HSE_VALUE;
 697:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 698:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 699:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 700:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         pllvco = 0U;
 701:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 702:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 703:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     else /* No source */
 704:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 705:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       pllvco = 0U;
 706:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 707:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 708:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* f(PLL Source) / PLLM */
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     pllvco = (pllvco / ((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) + 1U));
 710:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     switch(PeriphClk)
 712:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 713:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 714:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_USART1:
 715:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current USART1 source */
 716:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_USART1_SOURCE();
 717:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 718:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_USART1CLKSOURCE_PCLK2)
 719:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 720:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK2Freq();
 721:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 722:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_USART1CLKSOURCE_SYSCLK)
 723:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 724:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 725:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 726:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_USART1CLKSOURCE_HSI) )
 727:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 728:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 729:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 730:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY)) && (srcclk == RCC_USART1CLKSOURCE_LSE))
 731:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 733:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 734:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for USART1 */
 735:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 736:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 737:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 738:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 739:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 740:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 741:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_USART2:
 742:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current USART2 source */
 743:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_USART2_SOURCE();
 744:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 745:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_USART2CLKSOURCE_PCLK1)
 746:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 747:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 748:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 749:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_USART2CLKSOURCE_SYSCLK)
 750:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 751:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 752:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 753:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_USART2CLKSOURCE_HSI))
 754:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 755:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 756:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 757:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY))  && (srcclk == RCC_USART2CLKSOURCE_LSE))
 758:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 759:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 760:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 761:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for USART2 */
 762:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 763:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 764:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 765:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 766:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 767:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 768:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_USART3:
 769:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current USART3 source */
 770:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_USART3_SOURCE();
 771:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 772:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_USART3CLKSOURCE_PCLK1)
 773:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 774:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 775:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 776:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_USART3CLKSOURCE_SYSCLK)
 777:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 778:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 779:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_USART3CLKSOURCE_HSI))
 781:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 782:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 783:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 784:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY)) && (srcclk == RCC_USART3CLKSOURCE_LSE))
 785:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 786:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 787:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 788:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for USART3 */
 789:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 790:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 791:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 792:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 793:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 794:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 795:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(UART4)
 796:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_UART4:
 797:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current UART4 source */
 798:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_UART4_SOURCE();
 799:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 800:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_UART4CLKSOURCE_PCLK1)
 801:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 802:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 803:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 804:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_UART4CLKSOURCE_SYSCLK)
 805:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 806:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 807:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_UART4CLKSOURCE_HSI))
 809:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 810:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 811:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 812:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY)) && (srcclk == RCC_UART4CLKSOURCE_LSE))
 813:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 814:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 815:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 816:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for UART4 */
 817:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 818:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 819:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 820:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 821:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 822:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* UART4 */
 823:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 824:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(UART5)
 825:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_UART5:
 826:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current UART5 source */
 827:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_UART5_SOURCE();
 828:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 829:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_UART5CLKSOURCE_PCLK1)
 830:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 831:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 832:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 833:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_UART5CLKSOURCE_SYSCLK)
 834:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 835:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 836:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 837:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_UART5CLKSOURCE_HSI))
 838:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 839:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 840:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 841:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY)) && (srcclk == RCC_UART5CLKSOURCE_LSE))
 842:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 843:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 844:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 845:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for UART5 */
 846:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 847:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 848:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 849:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 850:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 851:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* UART5 */
 852:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 853:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_LPUART1:
 854:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current LPUART1 source */
 855:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_LPUART1_SOURCE();
 856:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 857:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_LPUART1CLKSOURCE_PCLK1)
 858:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 859:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 860:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 861:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_LPUART1CLKSOURCE_SYSCLK)
 862:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 863:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 864:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 865:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_LPUART1CLKSOURCE_HSI))
 866:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 867:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 868:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 869:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY)) && (srcclk == RCC_LPUART1CLKSOURCE_LSE))
 870:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 871:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 872:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 873:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for LPUART1 */
 874:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 875:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 876:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 877:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 878:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 879:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 880:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_I2C1:
 881:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current I2C1 source */
 882:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_I2C1_SOURCE();
 883:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 884:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_I2C1CLKSOURCE_PCLK1)
 885:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 886:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 887:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 888:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_I2C1CLKSOURCE_SYSCLK)
 889:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 890:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 891:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 892:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_I2C1CLKSOURCE_HSI))
 893:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 678              		.loc 1 894 19 discriminator 1 view .LVU231
 679 003e 18BF     		it	ne
 680 0040 0020     		movne	r0, #0
 681 0042 7047     		bx	lr
 682              	.LVL27:
 683              	.L82:
 681:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 684              		.loc 1 681 5 is_stmt 1 view .LVU232
 681:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 685              		.loc 1 681 8 is_stmt 0 view .LVU233
 686 0044 CB68     		ldr	r3, [r1, #12]
 687 0046 03F00303 		and	r3, r3, #3
 681:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 688              		.loc 1 681 7 view .LVU234
 689 004a 022B     		cmp	r3, #2
 690 004c 1FD1     		bne	.L86
 683:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 691              		.loc 1 683 7 is_stmt 1 view .LVU235
 683:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 692              		.loc 1 683 10 is_stmt 0 view .LVU236
 693 004e 0B68     		ldr	r3, [r1]
 685:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 694              		.loc 1 685 16 view .LVU237
 695 0050 B44A     		ldr	r2, .L267+8
 696 0052 13F4806F 		tst	r3, #1024
 697              	.L254:
 696:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 698              		.loc 1 696 16 view .LVU238
 699 0056 08BF     		it	eq
 700 0058 0022     		moveq	r2, #0
 701              	.L87:
 702              	.LVL28:
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 703              		.loc 1 709 5 is_stmt 1 view .LVU239
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 704              		.loc 1 709 26 is_stmt 0 view .LVU240
 705 005a CB68     		ldr	r3, [r1, #12]
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 706              		.loc 1 711 5 view .LVU241
 707 005c B0F5807F 		cmp	r0, #256
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 708              		.loc 1 709 67 view .LVU242
 709 0060 C3F30313 		ubfx	r3, r3, #4, #4
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 710              		.loc 1 709 92 view .LVU243
 711 0064 03F10103 		add	r3, r3, #1
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 712              		.loc 1 709 12 view .LVU244
 713 0068 B2FBF3F2 		udiv	r2, r2, r3
 714              	.LVL29:
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 715              		.loc 1 711 5 is_stmt 1 view .LVU245
 716 006c 00F0FF80 		beq	.L88
 717 0070 38D8     		bhi	.L89
 718 0072 0828     		cmp	r0, #8
 719 0074 00F0C580 		beq	.L90
 720 0078 15D8     		bhi	.L91
 721 007a 0228     		cmp	r0, #2
 722 007c 00F09580 		beq	.L92
 723 0080 0428     		cmp	r0, #4
 724 0082 00F0A980 		beq	.L93
 725 0086 0128     		cmp	r0, #1
 726 0088 72D0     		beq	.L94
 727              	.LVL30:
 728              	.L165:
 643:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t srcclk;
 729              		.loc 1 643 12 is_stmt 0 view .LVU246
 730 008a 0020     		movs	r0, #0
 731              	.LVL31:
 732              	.L81:
 895:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 896:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for I2C1 */
 897:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 898:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 899:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 900:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 901:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 902:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 903:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_I2C2:
 904:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current I2C2 source */
 905:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_I2C2_SOURCE();
 906:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 907:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_I2C2CLKSOURCE_PCLK1)
 908:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 909:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 910:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 911:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_I2C2CLKSOURCE_SYSCLK)
 912:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 913:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 914:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 915:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_I2C2CLKSOURCE_HSI))
 916:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 917:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 918:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 919:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for I2C2 */
 920:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 921:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 922:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 923:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 924:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 925:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 926:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_I2C3:
 927:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current I2C3 source */
 928:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_I2C3_SOURCE();
 929:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 930:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_I2C3CLKSOURCE_PCLK1)
 931:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 932:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 933:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 934:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_I2C3CLKSOURCE_SYSCLK)
 935:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 936:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 937:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 938:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_I2C3CLKSOURCE_HSI))
 939:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 940:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 941:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 942:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for I2C3 */
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 944:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 945:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 946:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 947:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 948:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 949:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(I2C4)
 950:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 951:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_I2C4:
 952:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current I2C4 source */
 953:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_I2C4_SOURCE();
 954:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 955:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_I2C4CLKSOURCE_PCLK1)
 956:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 957:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 958:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 959:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_I2C4CLKSOURCE_SYSCLK)
 960:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 961:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
 962:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 963:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_I2C4CLKSOURCE_HSI))
 964:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 965:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 966:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 967:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for I2C4 */
 968:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 969:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 970:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
 971:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 972:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
 973:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 974:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* I2C4 */
 975:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 976:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_LPTIM1:
 977:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current LPTIM1 source */
 978:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_LPTIM1_SOURCE();
 979:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 980:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_LPTIM1CLKSOURCE_PCLK1)
 981:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 982:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
 983:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 984:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CSR, RCC_CSR_LSIRDY)) && (srcclk == RCC_LPTIM1CLKSOURCE_LSI))
 985:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 986:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSI_VALUE;
 987:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 988:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_LPTIM1CLKSOURCE_HSI))
 989:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 990:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
 991:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 992:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if ((HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSERDY)) && (srcclk == RCC_LPTIM1CLKSOURCE_LSE))
 993:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 994:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = LSE_VALUE;
 995:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 996:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for LPTIM1 */
 997:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
 998:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 999:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1000:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1001:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1002:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1003:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_SAI1:
1004:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current SAI1 source */
1005:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_SAI1_SOURCE();
1006:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1007:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_SAI1CLKSOURCE_SYSCLK)
1008:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1009:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
1010:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1011:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_SAI1CLKSOURCE_PLL)
1012:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1013:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         if(__HAL_RCC_GET_PLLCLKOUT_CONFIG(RCC_PLL_48M1CLK) != 0U)
1014:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
1015:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           /* f(PLLQ) = f(VCO input) * PLLN / PLLQ */
1016:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1017:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_
1018:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
1019:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1020:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_SAI1CLKSOURCE_EXT)
1021:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1022:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* External clock used.*/
1023:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = EXTERNAL_CLOCK_VALUE;
1024:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1025:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_SAI1CLKSOURCE_HSI))
1026:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1027:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
1028:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1029:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for SAI1 */
1030:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
1031:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1032:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1033:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1034:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1035:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1036:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_I2S:
1037:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current I2Sx source */
1038:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_I2S_SOURCE();
1039:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1040:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_I2SCLKSOURCE_SYSCLK)
1041:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1042:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
1043:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1044:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_I2SCLKSOURCE_PLL)
1045:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1046:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         if(__HAL_RCC_GET_PLLCLKOUT_CONFIG(RCC_PLL_48M1CLK) != 0U)
1047:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
1048:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           /* f(PLLQ) = f(VCO input) * PLLN / PLLQ */
1049:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1050:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_
1051:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
1052:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1053:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_I2SCLKSOURCE_EXT)
1054:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1055:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* External clock used.*/
1056:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = EXTERNAL_CLOCK_VALUE;
1057:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }      
1058:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSIRDY)) && (srcclk == RCC_I2SCLKSOURCE_HSI))
1059:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1060:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
1061:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1062:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for I2S */
1063:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
1064:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1065:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1066:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1067:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1068:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1069:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(FDCAN1)
1070:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_FDCAN:
1071:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current FDCANx source */
1072:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_FDCAN_SOURCE();
1073:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1074:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_FDCANCLKSOURCE_PCLK1)
1075:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1076:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetPCLK1Freq();
1077:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1078:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_FDCANCLKSOURCE_HSE)
1079:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1080:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSE_VALUE;
1081:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1082:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_FDCANCLKSOURCE_PLL)
1083:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1084:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         if(__HAL_RCC_GET_PLLCLKOUT_CONFIG(RCC_PLL_48M1CLK) != 0U)
1085:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
1086:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           /* f(PLLQ) = f(VCO input) * PLLN / PLLQ */
1087:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1088:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_
1089:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
1090:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1091:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for FDCAN */
1092:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
1093:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1094:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1095:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1096:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1097:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* FDCAN1 */
1098:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
1099:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(USB)
1100:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     
1101:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_USB:
1102:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current USB source */
1103:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_USB_SOURCE();
1104:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
1105:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_USBCLKSOURCE_PLL)  /* PLL ? */
1106:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1107:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* f(PLLQ) = f(VCO input) * PLLN / PLLQ */
1108:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1109:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PL
1110:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1111:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if((HAL_IS_BIT_SET(RCC->CRRCR, RCC_CRRCR_HSI48RDY)) && (srcclk == RCC_USBCLKSOURCE_HSI48
1112:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1113:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI48_VALUE;
1114:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1115:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else /* No clock source */
1116:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1117:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1118:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1119:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1120:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
1121:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* USB */
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1123:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_RNG:
1124:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current RNG source */
1125:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_RNG_SOURCE();
1126:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1127:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_RNGCLKSOURCE_PLL)  /* PLL ? */
1128:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1129:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* f(PLLQ) = f(VCO input) * PLLN / PLLQ */
1130:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PL
1132:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1133:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if( (HAL_IS_BIT_SET(RCC->CRRCR, RCC_CRRCR_HSI48RDY)) && (srcclk == RCC_RNGCLKSOURCE_HSI4
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1135:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI48_VALUE;
1136:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1137:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else /* No clock source */
1138:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1139:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1140:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1141:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1142:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1143:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_ADC12:
1144:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current ADC12 source */
1145:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_ADC12_SOURCE();
1146:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
1147:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_ADC12CLKSOURCE_PLL)
1148:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1149:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         if(__HAL_RCC_GET_PLLCLKOUT_CONFIG(RCC_PLL_ADCCLK) != 0U)
1150:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
1151:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           /* f(PLLP) = f(VCO input) * PLLN / PLLP */
1152:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1153:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           pllp = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_Pos;
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           if(pllp == 0U)
1155:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
1156:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             if(READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLP) != 0U)
1157:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             {
1158:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               pllp = 17U;
1159:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             }
1160:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             else
1161:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             {
1162:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               pllp = 7U;
1163:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             }
1164:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           }
1165:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           frequency = (pllvco * plln) / pllp;
1166:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
1167:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1168:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_ADC12CLKSOURCE_SYSCLK)
1169:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1170:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
1171:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1172:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for ADC12 */
1173:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
1174:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1175:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1176:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1177:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1178:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1179:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(ADC345_COMMON)
1180:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_ADC345:
1181:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current ADC345 source */
1182:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_ADC345_SOURCE();
1183:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
1184:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_ADC345CLKSOURCE_PLL)
1185:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1186:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         if(__HAL_RCC_GET_PLLCLKOUT_CONFIG(RCC_PLL_ADCCLK) != 0U)
1187:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
1188:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           /* f(PLLP) = f(VCO input) * PLLN / PLLP */
1189:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1190:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           pllp = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_Pos;
1191:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           if(pllp == 0U)
1192:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
1193:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             if(READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLP) != 0U)
1194:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             {
1195:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               pllp = 17U;
1196:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             }
1197:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             else
1198:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             {
1199:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               pllp = 7U;
1200:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             }
1201:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           }
1202:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           frequency = (pllvco * plln) / pllp;
1203:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
1204:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1205:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_ADC345CLKSOURCE_SYSCLK)
1206:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1207:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
1208:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1209:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clock not enabled for ADC345 */
1210:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else
1211:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1212:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1213:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1214:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1215:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* ADC345_COMMON */
1216:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1217:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(QUADSPI)
1218:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1219:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     case RCC_PERIPHCLK_QSPI:
1220:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Get the current QSPI source */
1221:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       srcclk = __HAL_RCC_GET_QSPI_SOURCE();
1222:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
1223:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(srcclk == RCC_QSPICLKSOURCE_PLL)  /* PLL ? */
1224:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* f(PLLQ) = f(VCO input) * PLLN / PLLQ */
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         plln = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1227:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PL
1228:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1229:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_QSPICLKSOURCE_HSI)
1230:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1231:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HSI_VALUE;
1232:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }      
1233:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else if(srcclk == RCC_QSPICLKSOURCE_SYSCLK)
1234:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1235:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = HAL_RCC_GetSysClockFreq();
1236:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1237:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       else /* No clock source */
1238:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1239:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         /* nothing to do: frequency already initialized to 0 */
1240:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1241:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1242:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1243:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #endif /* QUADSPI */
1244:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1245:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     default:
1246:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       break;
1247:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1248:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1249:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1250:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   return(frequency);
1251:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 733              		.loc 1 1251 1 view .LVU247
 734 008c 7047     		bx	lr
 735              	.LVL32:
 736              	.L86:
 692:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 737              		.loc 1 692 10 is_stmt 1 view .LVU248
 692:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 738              		.loc 1 692 13 is_stmt 0 view .LVU249
 739 008e CB68     		ldr	r3, [r1, #12]
 740 0090 03F00303 		and	r3, r3, #3
 692:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 741              		.loc 1 692 12 view .LVU250
 742 0094 032B     		cmp	r3, #3
 743 0096 04D1     		bne	.L129
 694:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 744              		.loc 1 694 7 is_stmt 1 view .LVU251
 694:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 745              		.loc 1 694 10 is_stmt 0 view .LVU252
 746 0098 0B68     		ldr	r3, [r1]
 696:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 747              		.loc 1 696 16 view .LVU253
 748 009a A34A     		ldr	r2, .L267+12
 749 009c 13F4003F 		tst	r3, #131072
 750 00a0 D9E7     		b	.L254
 751              	.L129:
 689:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 752              		.loc 1 689 16 view .LVU254
 753 00a2 0022     		movs	r2, #0
 754 00a4 D9E7     		b	.L87
 755              	.LVL33:
 756              	.L91:
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 757              		.loc 1 711 5 view .LVU255
 758 00a6 4028     		cmp	r0, #64
 759 00a8 00F0C080 		beq	.L95
 760 00ac 8028     		cmp	r0, #128
 761 00ae 00F0CE80 		beq	.L96
 762 00b2 2028     		cmp	r0, #32
 763 00b4 E9D1     		bne	.L165
 855:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 764              		.loc 1 855 7 is_stmt 1 view .LVU256
 855:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 765              		.loc 1 855 16 is_stmt 0 view .LVU257
 766 00b6 D1F88830 		ldr	r3, [r1, #136]
 767              	.LVL34:
 857:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 768              		.loc 1 857 7 is_stmt 1 view .LVU258
 857:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 769              		.loc 1 857 9 is_stmt 0 view .LVU259
 770 00ba 13F44063 		ands	r3, r3, #3072
 771              	.LVL35:
 857:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 772              		.loc 1 857 9 view .LVU260
 773 00be 79D0     		beq	.L112
 861:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 774              		.loc 1 861 12 is_stmt 1 view .LVU261
 861:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 775              		.loc 1 861 14 is_stmt 0 view .LVU262
 776 00c0 B3F5806F 		cmp	r3, #1024
 777 00c4 5DD0     		beq	.L110
 865:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 778              		.loc 1 865 12 is_stmt 1 view .LVU263
 865:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 779              		.loc 1 865 16 is_stmt 0 view .LVU264
 780 00c6 0A68     		ldr	r2, [r1]
 781              	.LVL36:
 865:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 782              		.loc 1 865 14 view .LVU265
 783 00c8 5005     		lsls	r0, r2, #21
 784              	.LVL37:
 865:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 785              		.loc 1 865 14 view .LVU266
 786 00ca 03D5     		bpl	.L115
 865:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 787              		.loc 1 865 56 discriminator 1 view .LVU267
 788 00cc B3F5006F 		cmp	r3, #2048
 789 00d0 00F05381 		beq	.L153
 790              	.L115:
 869:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 791              		.loc 1 869 12 is_stmt 1 view .LVU268
 869:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 792              		.loc 1 869 16 is_stmt 0 view .LVU269
 793 00d4 D1F89000 		ldr	r0, [r1, #144]
 869:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 794              		.loc 1 869 14 view .LVU270
 795 00d8 10F00200 		ands	r0, r0, #2
 796 00dc D6D0     		beq	.L81
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 797              		.loc 1 732 19 discriminator 1 view .LVU271
 798 00de B3F5406F 		cmp	r3, #3072
 799 00e2 5DE0     		b	.L256
 800              	.LVL38:
 801              	.L89:
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 802              		.loc 1 711 5 view .LVU272
 803 00e4 B0F5805F 		cmp	r0, #4096
 804 00e8 00F00981 		beq	.L98
 805 00ec 26D8     		bhi	.L99
 806 00ee B0F5806F 		cmp	r0, #1024
 807 00f2 00F0CC80 		beq	.L100
 808 00f6 B0F5006F 		cmp	r0, #2048
 809 00fa 00F0ED80 		beq	.L101
 810 00fe B0F5007F 		cmp	r0, #512
 811 0102 C2D1     		bne	.L165
 978:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 812              		.loc 1 978 7 is_stmt 1 view .LVU273
 978:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 813              		.loc 1 978 16 is_stmt 0 view .LVU274
 814 0104 D1F88830 		ldr	r3, [r1, #136]
 815              	.LVL39:
 980:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 816              		.loc 1 980 7 is_stmt 1 view .LVU275
 980:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 817              		.loc 1 980 9 is_stmt 0 view .LVU276
 818 0108 13F44023 		ands	r3, r3, #786432
 819              	.LVL40:
 980:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 820              		.loc 1 980 9 view .LVU277
 821 010c 52D0     		beq	.L112
 984:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 822              		.loc 1 984 12 is_stmt 1 view .LVU278
 984:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 823              		.loc 1 984 16 is_stmt 0 view .LVU279
 824 010e D1F89420 		ldr	r2, [r1, #148]
 825              	.LVL41:
 984:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 826              		.loc 1 984 14 view .LVU280
 827 0112 9207     		lsls	r2, r2, #30
 828 0114 03D5     		bpl	.L116
 984:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 829              		.loc 1 984 58 discriminator 1 view .LVU281
 830 0116 B3F5802F 		cmp	r3, #262144
 831 011a 00F02B81 		beq	.L152
 832              	.L116:
 988:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 833              		.loc 1 988 12 is_stmt 1 view .LVU282
 988:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 834              		.loc 1 988 16 is_stmt 0 view .LVU283
 835 011e 0A68     		ldr	r2, [r1]
 988:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 836              		.loc 1 988 14 view .LVU284
 837 0120 5005     		lsls	r0, r2, #21
 838              	.LVL42:
 988:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 839              		.loc 1 988 14 view .LVU285
 840 0122 03D5     		bpl	.L117
 988:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 841              		.loc 1 988 56 discriminator 1 view .LVU286
 842 0124 B3F5002F 		cmp	r3, #524288
 843 0128 00F02781 		beq	.L153
 844              	.L117:
 992:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 845              		.loc 1 992 12 is_stmt 1 view .LVU287
 992:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 846              		.loc 1 992 17 is_stmt 0 view .LVU288
 847 012c D1F89000 		ldr	r0, [r1, #144]
 992:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 848              		.loc 1 992 15 view .LVU289
 849 0130 10F00200 		ands	r0, r0, #2
 850 0134 AAD0     		beq	.L81
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 851              		.loc 1 732 19 discriminator 1 view .LVU290
 852 0136 B3F5402F 		cmp	r3, #786432
 853 013a 31E0     		b	.L256
 854              	.LVL43:
 855              	.L99:
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 856              		.loc 1 711 5 view .LVU291
 857 013c B0F5804F 		cmp	r0, #16384
 858 0140 06D0     		beq	.L103
 859 0142 B0F5004F 		cmp	r0, #32768
 860 0146 00F0F380 		beq	.L104
 861 014a B0F5005F 		cmp	r0, #8192
 862 014e 9CD1     		bne	.L165
 863              	.L103:
1125:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 864              		.loc 1 1125 7 is_stmt 1 view .LVU292
1125:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 865              		.loc 1 1125 16 is_stmt 0 view .LVU293
 866 0150 D1F88830 		ldr	r3, [r1, #136]
1125:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 867              		.loc 1 1125 14 view .LVU294
 868 0154 03F04063 		and	r3, r3, #201326592
 869              	.LVL44:
1127:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 870              		.loc 1 1127 7 is_stmt 1 view .LVU295
1127:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 871              		.loc 1 1127 9 is_stmt 0 view .LVU296
 872 0158 B3F1006F 		cmp	r3, #134217728
 873 015c 00F0A580 		beq	.L261
1133:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 874              		.loc 1 1133 12 is_stmt 1 view .LVU297
1133:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 875              		.loc 1 1133 17 is_stmt 0 view .LVU298
 876 0160 D1F89800 		ldr	r0, [r1, #152]
 877              	.LVL45:
1133:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 878              		.loc 1 1133 14 view .LVU299
 879 0164 10F00200 		ands	r0, r0, #2
 880 0168 90D0     		beq	.L81
1113:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 881              		.loc 1 1113 19 discriminator 1 view .LVU300
 882 016a 002B     		cmp	r3, #0
 883 016c 6F48     		ldr	r0, .L267+16
 884 016e 66E7     		b	.L255
 885              	.LVL46:
 886              	.L94:
 716:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 887              		.loc 1 716 7 is_stmt 1 view .LVU301
 716:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 888              		.loc 1 716 16 is_stmt 0 view .LVU302
 889 0170 D1F88830 		ldr	r3, [r1, #136]
 890              	.LVL47:
 718:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 891              		.loc 1 718 7 is_stmt 1 view .LVU303
 718:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 892              		.loc 1 718 9 is_stmt 0 view .LVU304
 893 0174 13F00303 		ands	r3, r3, #3
 894              	.LVL48:
 718:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 895              		.loc 1 718 9 view .LVU305
 896 0178 01D1     		bne	.L106
 720:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 897              		.loc 1 720 9 is_stmt 1 view .LVU306
 720:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 898              		.loc 1 720 21 is_stmt 0 view .LVU307
 899 017a FFF7FEBF 		b	HAL_RCC_GetPCLK2Freq
 900              	.LVL49:
 901              	.L106:
 722:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 902              		.loc 1 722 12 is_stmt 1 view .LVU308
 722:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 903              		.loc 1 722 14 is_stmt 0 view .LVU309
 904 017e 012B     		cmp	r3, #1
 905 0180 01D1     		bne	.L107
 906              	.L110:
 724:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 907              		.loc 1 724 9 is_stmt 1 view .LVU310
 724:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 908              		.loc 1 724 21 is_stmt 0 view .LVU311
 909 0182 FFF7FEBF 		b	HAL_RCC_GetSysClockFreq
 910              	.LVL50:
 911              	.L107:
 726:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 912              		.loc 1 726 12 is_stmt 1 view .LVU312
 726:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 913              		.loc 1 726 16 is_stmt 0 view .LVU313
 914 0186 0A68     		ldr	r2, [r1]
 915              	.LVL51:
 726:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 916              		.loc 1 726 14 view .LVU314
 917 0188 5005     		lsls	r0, r2, #21
 918              	.LVL52:
 726:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 919              		.loc 1 726 14 view .LVU315
 920 018a 02D5     		bpl	.L108
 726:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 921              		.loc 1 726 56 discriminator 1 view .LVU316
 922 018c 022B     		cmp	r3, #2
 923 018e 00F0F480 		beq	.L153
 924              	.L108:
 730:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 925              		.loc 1 730 12 is_stmt 1 view .LVU317
 730:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 926              		.loc 1 730 16 is_stmt 0 view .LVU318
 927 0192 D1F89000 		ldr	r0, [r1, #144]
 730:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 928              		.loc 1 730 14 view .LVU319
 929 0196 10F00200 		ands	r0, r0, #2
 930 019a 3FF477AF 		beq	.L81
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 931              		.loc 1 732 19 discriminator 1 view .LVU320
 932 019e 032B     		cmp	r3, #3
 933              	.L256:
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 934              		.loc 1 732 19 discriminator 1 view .LVU321
 935 01a0 14BF     		ite	ne
 936 01a2 0020     		movne	r0, #0
 937 01a4 4FF40040 		moveq	r0, #32768
 938 01a8 7047     		bx	lr
 939              	.LVL53:
 940              	.L92:
 743:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 941              		.loc 1 743 7 is_stmt 1 view .LVU322
 743:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 942              		.loc 1 743 16 is_stmt 0 view .LVU323
 943 01aa D1F88830 		ldr	r3, [r1, #136]
 944              	.LVL54:
 745:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 945              		.loc 1 745 7 is_stmt 1 view .LVU324
 745:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 946              		.loc 1 745 9 is_stmt 0 view .LVU325
 947 01ae 13F00C03 		ands	r3, r3, #12
 948              	.LVL55:
 745:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 949              		.loc 1 745 9 view .LVU326
 950 01b2 01D1     		bne	.L109
 951              	.L112:
 747:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 952              		.loc 1 747 9 is_stmt 1 view .LVU327
 747:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 953              		.loc 1 747 21 is_stmt 0 view .LVU328
 954 01b4 FFF7FEBF 		b	HAL_RCC_GetPCLK1Freq
 955              	.LVL56:
 956              	.L109:
 749:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 957              		.loc 1 749 12 is_stmt 1 view .LVU329
 749:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 958              		.loc 1 749 14 is_stmt 0 view .LVU330
 959 01b8 042B     		cmp	r3, #4
 960 01ba E2D0     		beq	.L110
 753:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 961              		.loc 1 753 12 is_stmt 1 view .LVU331
 753:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 962              		.loc 1 753 16 is_stmt 0 view .LVU332
 963 01bc 0A68     		ldr	r2, [r1]
 964              	.LVL57:
 753:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 965              		.loc 1 753 14 view .LVU333
 966 01be 5205     		lsls	r2, r2, #21
 967 01c0 02D5     		bpl	.L111
 753:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 968              		.loc 1 753 56 discriminator 1 view .LVU334
 969 01c2 082B     		cmp	r3, #8
 970 01c4 00F0D980 		beq	.L153
 971              	.L111:
 757:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 972              		.loc 1 757 12 is_stmt 1 view .LVU335
 757:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 973              		.loc 1 757 16 is_stmt 0 view .LVU336
 974 01c8 D1F89000 		ldr	r0, [r1, #144]
 975              	.LVL58:
 757:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 976              		.loc 1 757 14 view .LVU337
 977 01cc 10F00200 		ands	r0, r0, #2
 978 01d0 3FF45CAF 		beq	.L81
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 979              		.loc 1 732 19 discriminator 1 view .LVU338
 980 01d4 0C2B     		cmp	r3, #12
 981 01d6 E3E7     		b	.L256
 982              	.LVL59:
 983              	.L93:
 770:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 984              		.loc 1 770 7 is_stmt 1 view .LVU339
 770:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 985              		.loc 1 770 16 is_stmt 0 view .LVU340
 986 01d8 D1F88830 		ldr	r3, [r1, #136]
 987              	.LVL60:
 772:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 988              		.loc 1 772 7 is_stmt 1 view .LVU341
 772:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 989              		.loc 1 772 9 is_stmt 0 view .LVU342
 990 01dc 13F03003 		ands	r3, r3, #48
 991              	.LVL61:
 772:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 992              		.loc 1 772 9 view .LVU343
 993 01e0 E8D0     		beq	.L112
 776:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 994              		.loc 1 776 12 is_stmt 1 view .LVU344
 776:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 995              		.loc 1 776 14 is_stmt 0 view .LVU345
 996 01e2 102B     		cmp	r3, #16
 997 01e4 CDD0     		beq	.L110
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 998              		.loc 1 780 12 is_stmt 1 view .LVU346
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 999              		.loc 1 780 16 is_stmt 0 view .LVU347
 1000 01e6 0A68     		ldr	r2, [r1]
 1001              	.LVL62:
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1002              		.loc 1 780 14 view .LVU348
 1003 01e8 5005     		lsls	r0, r2, #21
 1004              	.LVL63:
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1005              		.loc 1 780 14 view .LVU349
 1006 01ea 02D5     		bpl	.L113
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1007              		.loc 1 780 56 discriminator 1 view .LVU350
 1008 01ec 202B     		cmp	r3, #32
 1009 01ee 00F0C480 		beq	.L153
 1010              	.L113:
 784:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1011              		.loc 1 784 12 is_stmt 1 view .LVU351
 784:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1012              		.loc 1 784 16 is_stmt 0 view .LVU352
 1013 01f2 D1F89000 		ldr	r0, [r1, #144]
 784:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1014              		.loc 1 784 14 view .LVU353
 1015 01f6 10F00200 		ands	r0, r0, #2
 1016 01fa 3FF447AF 		beq	.L81
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1017              		.loc 1 732 19 discriminator 1 view .LVU354
 1018 01fe 302B     		cmp	r3, #48
 1019 0200 CEE7     		b	.L256
 1020              	.LVL64:
 1021              	.L90:
 798:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1022              		.loc 1 798 7 is_stmt 1 view .LVU355
 798:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1023              		.loc 1 798 16 is_stmt 0 view .LVU356
 1024 0202 D1F88830 		ldr	r3, [r1, #136]
 1025              	.LVL65:
 800:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1026              		.loc 1 800 7 is_stmt 1 view .LVU357
 800:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1027              		.loc 1 800 9 is_stmt 0 view .LVU358
 1028 0206 13F0C003 		ands	r3, r3, #192
 1029              	.LVL66:
 800:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1030              		.loc 1 800 9 view .LVU359
 1031 020a D3D0     		beq	.L112
 804:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1032              		.loc 1 804 12 is_stmt 1 view .LVU360
 804:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1033              		.loc 1 804 14 is_stmt 0 view .LVU361
 1034 020c 402B     		cmp	r3, #64
 1035 020e B8D0     		beq	.L110
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1036              		.loc 1 808 12 is_stmt 1 view .LVU362
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1037              		.loc 1 808 16 is_stmt 0 view .LVU363
 1038 0210 0A68     		ldr	r2, [r1]
 1039              	.LVL67:
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1040              		.loc 1 808 14 view .LVU364
 1041 0212 5205     		lsls	r2, r2, #21
 1042 0214 02D5     		bpl	.L114
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1043              		.loc 1 808 56 discriminator 1 view .LVU365
 1044 0216 802B     		cmp	r3, #128
 1045 0218 00F0AF80 		beq	.L153
 1046              	.L114:
 812:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1047              		.loc 1 812 12 is_stmt 1 view .LVU366
 812:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1048              		.loc 1 812 16 is_stmt 0 view .LVU367
 1049 021c D1F89000 		ldr	r0, [r1, #144]
 1050              	.LVL68:
 812:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1051              		.loc 1 812 14 view .LVU368
 1052 0220 10F00200 		ands	r0, r0, #2
 1053 0224 3FF432AF 		beq	.L81
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1054              		.loc 1 732 19 discriminator 1 view .LVU369
 1055 0228 C02B     		cmp	r3, #192
 1056 022a B9E7     		b	.L256
 1057              	.LVL69:
 1058              	.L95:
 882:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1059              		.loc 1 882 7 is_stmt 1 view .LVU370
 882:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1060              		.loc 1 882 16 is_stmt 0 view .LVU371
 1061 022c D1F88830 		ldr	r3, [r1, #136]
 1062              	.LVL70:
 884:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1063              		.loc 1 884 7 is_stmt 1 view .LVU372
 884:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1064              		.loc 1 884 9 is_stmt 0 view .LVU373
 1065 0230 13F44053 		ands	r3, r3, #12288
 1066              	.LVL71:
 884:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1067              		.loc 1 884 9 view .LVU374
 1068 0234 BED0     		beq	.L112
 888:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1069              		.loc 1 888 12 is_stmt 1 view .LVU375
 888:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1070              		.loc 1 888 14 is_stmt 0 view .LVU376
 1071 0236 B3F5805F 		cmp	r3, #4096
 1072 023a A2D0     		beq	.L110
 892:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1073              		.loc 1 892 12 is_stmt 1 view .LVU377
 892:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1074              		.loc 1 892 16 is_stmt 0 view .LVU378
 1075 023c 0868     		ldr	r0, [r1]
 1076              	.LVL72:
 892:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1077              		.loc 1 892 14 view .LVU379
 1078 023e 10F48060 		ands	r0, r0, #1024
 1079 0242 3FF423AF 		beq	.L81
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1080              		.loc 1 894 19 discriminator 1 view .LVU380
 1081 0246 B3F5005F 		cmp	r3, #8192
 1082              	.LVL73:
 1083              	.L258:
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1084              		.loc 1 894 19 discriminator 1 view .LVU381
 1085 024a 3648     		ldr	r0, .L267+8
 1086 024c F7E6     		b	.L255
 1087              	.LVL74:
 1088              	.L96:
 905:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1089              		.loc 1 905 7 is_stmt 1 view .LVU382
 905:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1090              		.loc 1 905 16 is_stmt 0 view .LVU383
 1091 024e D1F88830 		ldr	r3, [r1, #136]
 1092              	.LVL75:
 907:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1093              		.loc 1 907 7 is_stmt 1 view .LVU384
 907:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1094              		.loc 1 907 9 is_stmt 0 view .LVU385
 1095 0252 13F44043 		ands	r3, r3, #49152
 1096              	.LVL76:
 907:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1097              		.loc 1 907 9 view .LVU386
 1098 0256 ADD0     		beq	.L112
 911:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1099              		.loc 1 911 12 is_stmt 1 view .LVU387
 911:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1100              		.loc 1 911 14 is_stmt 0 view .LVU388
 1101 0258 B3F5804F 		cmp	r3, #16384
 1102 025c 91D0     		beq	.L110
 915:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1103              		.loc 1 915 12 is_stmt 1 view .LVU389
 915:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1104              		.loc 1 915 16 is_stmt 0 view .LVU390
 1105 025e 0868     		ldr	r0, [r1]
 1106              	.LVL77:
 915:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1107              		.loc 1 915 14 view .LVU391
 1108 0260 10F48060 		ands	r0, r0, #1024
 1109 0264 3FF412AF 		beq	.L81
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1110              		.loc 1 894 19 discriminator 1 view .LVU392
 1111 0268 B3F5004F 		cmp	r3, #32768
 1112 026c EDE7     		b	.L258
 1113              	.LVL78:
 1114              	.L88:
 928:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1115              		.loc 1 928 7 is_stmt 1 view .LVU393
 928:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1116              		.loc 1 928 16 is_stmt 0 view .LVU394
 1117 026e D1F88830 		ldr	r3, [r1, #136]
 1118              	.LVL79:
 930:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1119              		.loc 1 930 7 is_stmt 1 view .LVU395
 930:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1120              		.loc 1 930 9 is_stmt 0 view .LVU396
 1121 0272 13F44033 		ands	r3, r3, #196608
 1122              	.LVL80:
 930:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1123              		.loc 1 930 9 view .LVU397
 1124 0276 9DD0     		beq	.L112
 934:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1125              		.loc 1 934 12 is_stmt 1 view .LVU398
 934:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1126              		.loc 1 934 14 is_stmt 0 view .LVU399
 1127 0278 B3F5803F 		cmp	r3, #65536
 1128 027c 81D0     		beq	.L110
 938:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1129              		.loc 1 938 12 is_stmt 1 view .LVU400
 938:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1130              		.loc 1 938 16 is_stmt 0 view .LVU401
 1131 027e 0868     		ldr	r0, [r1]
 1132              	.LVL81:
 938:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1133              		.loc 1 938 14 view .LVU402
 1134 0280 10F48060 		ands	r0, r0, #1024
 1135 0284 3FF402AF 		beq	.L81
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1136              		.loc 1 894 19 discriminator 1 view .LVU403
 1137 0288 B3F5003F 		cmp	r3, #131072
 1138 028c DDE7     		b	.L258
 1139              	.LVL82:
 1140              	.L100:
1005:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1141              		.loc 1 1005 7 is_stmt 1 view .LVU404
1005:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1142              		.loc 1 1005 16 is_stmt 0 view .LVU405
 1143 028e D1F88830 		ldr	r3, [r1, #136]
 1144              	.LVL83:
1007:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1145              		.loc 1 1007 7 is_stmt 1 view .LVU406
1007:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1146              		.loc 1 1007 9 is_stmt 0 view .LVU407
 1147 0292 13F44013 		ands	r3, r3, #3145728
 1148              	.LVL84:
1007:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1149              		.loc 1 1007 9 view .LVU408
 1150 0296 3FF474AF 		beq	.L110
1011:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1151              		.loc 1 1011 12 is_stmt 1 view .LVU409
1011:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1152              		.loc 1 1011 14 is_stmt 0 view .LVU410
 1153 029a B3F5801F 		cmp	r3, #1048576
 1154 029e 10D1     		bne	.L118
 1155              	.L266:
1084:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 1156              		.loc 1 1084 9 is_stmt 1 view .LVU411
1084:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 1157              		.loc 1 1084 12 is_stmt 0 view .LVU412
 1158 02a0 C868     		ldr	r0, [r1, #12]
 1159              	.LVL85:
1084:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 1160              		.loc 1 1084 11 view .LVU413
 1161 02a2 10F48010 		ands	r0, r0, #1048576
 1162 02a6 3FF4F1AE 		beq	.L81
 1163              	.L261:
1130:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PL
 1164              		.loc 1 1130 9 is_stmt 1 view .LVU414
1130:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PL
 1165              		.loc 1 1130 16 is_stmt 0 view .LVU415
 1166 02aa C868     		ldr	r0, [r1, #12]
 1167              	.LVL86:
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1168              		.loc 1 1131 9 is_stmt 1 view .LVU416
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1169              		.loc 1 1131 42 is_stmt 0 view .LVU417
 1170 02ac CB68     		ldr	r3, [r1, #12]
 1171              	.LVL87:
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1172              		.loc 1 1131 83 view .LVU418
 1173 02ae C3F34153 		ubfx	r3, r3, #21, #2
1130:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         frequency = (pllvco * plln) / (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PL
 1174              		.loc 1 1130 14 view .LVU419
 1175 02b2 C0F30620 		ubfx	r0, r0, #8, #7
 1176              	.LVL88:
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1177              		.loc 1 1131 108 view .LVU420
 1178 02b6 0133     		adds	r3, r3, #1
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1179              		.loc 1 1131 29 view .LVU421
 1180 02b8 5043     		muls	r0, r2, r0
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1181              		.loc 1 1131 114 view .LVU422
 1182 02ba 5B00     		lsls	r3, r3, #1
 1183              	.L257:
1165:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
 1184              		.loc 1 1165 21 view .LVU423
 1185 02bc B0FBF3F0 		udiv	r0, r0, r3
 1186              	.LVL89:
1165:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
 1187              		.loc 1 1165 21 view .LVU424
 1188 02c0 7047     		bx	lr
 1189              	.LVL90:
 1190              	.L118:
1020:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1191              		.loc 1 1020 12 is_stmt 1 view .LVU425
1020:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1192              		.loc 1 1020 14 is_stmt 0 view .LVU426
 1193 02c2 B3F5001F 		cmp	r3, #2097152
 1194 02c6 5AD0     		beq	.L161
1025:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1195              		.loc 1 1025 12 is_stmt 1 view .LVU427
1025:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1196              		.loc 1 1025 16 is_stmt 0 view .LVU428
 1197 02c8 0868     		ldr	r0, [r1]
 1198              	.LVL91:
1025:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1199              		.loc 1 1025 14 view .LVU429
 1200 02ca 10F48060 		ands	r0, r0, #1024
 1201 02ce 3FF4DDAE 		beq	.L81
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1202              		.loc 1 894 19 discriminator 1 view .LVU430
 1203 02d2 B3F5401F 		cmp	r3, #3145728
 1204 02d6 B8E7     		b	.L258
 1205              	.LVL92:
 1206              	.L101:
1038:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1207              		.loc 1 1038 7 is_stmt 1 view .LVU431
1038:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1208              		.loc 1 1038 16 is_stmt 0 view .LVU432
 1209 02d8 D1F88830 		ldr	r3, [r1, #136]
 1210              	.LVL93:
1040:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1211              		.loc 1 1040 7 is_stmt 1 view .LVU433
1040:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1212              		.loc 1 1040 9 is_stmt 0 view .LVU434
 1213 02dc 13F44003 		ands	r3, r3, #12582912
 1214              	.LVL94:
1040:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1215              		.loc 1 1040 9 view .LVU435
 1216 02e0 3FF44FAF 		beq	.L110
1044:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1217              		.loc 1 1044 12 is_stmt 1 view .LVU436
1044:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1218              		.loc 1 1044 14 is_stmt 0 view .LVU437
 1219 02e4 B3F5800F 		cmp	r3, #4194304
 1220 02e8 DAD0     		beq	.L266
1053:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1221              		.loc 1 1053 12 is_stmt 1 view .LVU438
1053:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1222              		.loc 1 1053 14 is_stmt 0 view .LVU439
 1223 02ea B3F5000F 		cmp	r3, #8388608
 1224 02ee 46D0     		beq	.L161
1058:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1225              		.loc 1 1058 12 is_stmt 1 view .LVU440
1058:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1226              		.loc 1 1058 16 is_stmt 0 view .LVU441
 1227 02f0 0A68     		ldr	r2, [r1]
 1228              	.LVL95:
1058:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1229              		.loc 1 1058 14 view .LVU442
 1230 02f2 5205     		lsls	r2, r2, #21
 1231 02f4 7FF5C9AE 		bpl	.L165
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1232              		.loc 1 894 19 discriminator 1 view .LVU443
 1233 02f8 B3F5400F 		cmp	r3, #12582912
 1234 02fc A5E7     		b	.L258
 1235              	.LVL96:
 1236              	.L98:
1072:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1237              		.loc 1 1072 7 is_stmt 1 view .LVU444
1072:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1238              		.loc 1 1072 16 is_stmt 0 view .LVU445
 1239 02fe D1F88830 		ldr	r3, [r1, #136]
1072:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1240              		.loc 1 1072 14 view .LVU446
 1241 0302 03F04073 		and	r3, r3, #50331648
 1242              	.LVL97:
1074:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1243              		.loc 1 1074 7 is_stmt 1 view .LVU447
1074:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1244              		.loc 1 1074 9 is_stmt 0 view .LVU448
 1245 0306 B3F1007F 		cmp	r3, #33554432
 1246 030a 3FF453AF 		beq	.L112
1078:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1247              		.loc 1 1078 12 is_stmt 1 view .LVU449
1078:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1248              		.loc 1 1078 14 is_stmt 0 view .LVU450
 1249 030e 002B     		cmp	r3, #0
 1250 0310 37D0     		beq	.L164
1082:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1251              		.loc 1 1082 12 is_stmt 1 view .LVU451
1082:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1252              		.loc 1 1082 14 is_stmt 0 view .LVU452
 1253 0312 B3F1807F 		cmp	r3, #16777216
 1254 0316 7FF4B8AE 		bne	.L165
 1255 031a C1E7     		b	.L266
 1256              	.L268:
 1257              		.align	2
 1258              	.L267:
 1259 031c 00100240 		.word	1073876992
 1260 0320 B0710B00 		.word	750000
 1261 0324 0024F400 		.word	16000000
 1262 0328 00366E01 		.word	24000000
 1263 032c 006CDC02 		.word	48000000
 1264              	.LVL98:
 1265              	.L104:
1145:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
 1266              		.loc 1 1145 7 is_stmt 1 view .LVU453
1145:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
 1267              		.loc 1 1145 16 is_stmt 0 view .LVU454
 1268 0330 D1F88830 		ldr	r3, [r1, #136]
1145:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       
 1269              		.loc 1 1145 14 view .LVU455
 1270 0334 03F04053 		and	r3, r3, #805306368
 1271              	.LVL99:
1147:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1272              		.loc 1 1147 7 is_stmt 1 view .LVU456
1147:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1273              		.loc 1 1147 9 is_stmt 0 view .LVU457
 1274 0338 B3F1805F 		cmp	r3, #268435456
 1275 033c 12D1     		bne	.L122
1149:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 1276              		.loc 1 1149 9 is_stmt 1 view .LVU458
1149:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 1277              		.loc 1 1149 12 is_stmt 0 view .LVU459
 1278 033e C868     		ldr	r0, [r1, #12]
 1279              	.LVL100:
1149:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         {
 1280              		.loc 1 1149 11 view .LVU460
 1281 0340 10F48030 		ands	r0, r0, #65536
 1282 0344 3FF4A2AE 		beq	.L81
1152:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           pllp = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_Pos;
 1283              		.loc 1 1152 11 is_stmt 1 view .LVU461
1152:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           pllp = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_Pos;
 1284              		.loc 1 1152 18 is_stmt 0 view .LVU462
 1285 0348 C868     		ldr	r0, [r1, #12]
1153:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           if(pllp == 0U)
 1286              		.loc 1 1153 18 view .LVU463
 1287 034a CB68     		ldr	r3, [r1, #12]
 1288              	.LVL101:
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 1289              		.loc 1 1154 13 view .LVU464
 1290 034c DB0E     		lsrs	r3, r3, #27
1152:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           pllp = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_Pos;
 1291              		.loc 1 1152 16 view .LVU465
 1292 034e C0F30620 		ubfx	r0, r0, #8, #7
 1293              	.LVL102:
1153:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           if(pllp == 0U)
 1294              		.loc 1 1153 11 is_stmt 1 view .LVU466
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 1295              		.loc 1 1154 11 view .LVU467
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           {
 1296              		.loc 1 1154 13 is_stmt 0 view .LVU468
 1297 0352 05D1     		bne	.L123
1156:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             {
 1298              		.loc 1 1156 13 is_stmt 1 view .LVU469
1156:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             {
 1299              		.loc 1 1156 16 is_stmt 0 view .LVU470
 1300 0354 CB68     		ldr	r3, [r1, #12]
1162:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             }
 1301              		.loc 1 1162 20 view .LVU471
 1302 0356 13F4003F 		tst	r3, #131072
 1303 035a 14BF     		ite	ne
 1304 035c 1123     		movne	r3, #17
 1305 035e 0723     		moveq	r3, #7
 1306              	.L123:
 1307              	.LVL103:
1165:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
 1308              		.loc 1 1165 11 is_stmt 1 view .LVU472
1165:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
 1309              		.loc 1 1165 31 is_stmt 0 view .LVU473
 1310 0360 5043     		muls	r0, r2, r0
 1311              	.LVL104:
1165:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         }
 1312              		.loc 1 1165 31 view .LVU474
 1313 0362 ABE7     		b	.L257
 1314              	.LVL105:
 1315              	.L122:
1168:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1316              		.loc 1 1168 12 is_stmt 1 view .LVU475
1168:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 1317              		.loc 1 1168 14 is_stmt 0 view .LVU476
 1318 0364 B3F1005F 		cmp	r3, #536870912
 1319 0368 7FF48FAE 		bne	.L165
 1320 036c 09E7     		b	.L110
 1321              	.LVL106:
 1322              	.L124:
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1323              		.loc 1 732 19 view .LVU477
 1324 036e 4FF40040 		mov	r0, #32768
 1325 0372 7047     		bx	lr
 1326              	.L152:
 986:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1327              		.loc 1 986 19 view .LVU478
 1328 0374 4FF4FA40 		mov	r0, #32000
 1329 0378 7047     		bx	lr
 1330              	.L153:
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1331              		.loc 1 894 19 view .LVU479
 1332 037a 0348     		ldr	r0, .L269
 1333 037c 7047     		bx	lr
 1334              	.LVL107:
 1335              	.L161:
1023:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1336              		.loc 1 1023 19 view .LVU480
 1337 037e 0348     		ldr	r0, .L269+4
 1338              	.LVL108:
1023:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1339              		.loc 1 1023 19 view .LVU481
 1340 0380 7047     		bx	lr
 1341              	.LVL109:
 1342              	.L164:
1080:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1343              		.loc 1 1080 19 view .LVU482
 1344 0382 0348     		ldr	r0, .L269+8
 1345              	.LVL110:
1080:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1346              		.loc 1 1080 19 view .LVU483
 1347 0384 7047     		bx	lr
 1348              	.L270:
 1349 0386 00BF     		.align	2
 1350              	.L269:
 1351 0388 0024F400 		.word	16000000
 1352 038c 0080BB00 		.word	12288000
 1353 0390 00366E01 		.word	24000000
 1354              		.cfi_endproc
 1355              	.LFE327:
 1357              		.section	.text.HAL_RCCEx_EnableLSECSS,"ax",%progbits
 1358              		.align	1
 1359              		.global	HAL_RCCEx_EnableLSECSS
 1360              		.syntax unified
 1361              		.thumb
 1362              		.thumb_func
 1363              		.fpu fpv4-sp-d16
 1365              	HAL_RCCEx_EnableLSECSS:
 1366              	.LFB328:
1252:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1253:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1254:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @}
1255:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1256:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1257:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Exported_Functions_Group2 Extended Clock management functions
1258:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  *  @brief  Extended Clock management functions
1259:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  *
1260:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** @verbatim
1261:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  ===============================================================================
1262:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                 ##### Extended clock management functions  #####
1263:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  ===============================================================================
1264:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     [..]
1265:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     This subsection provides a set of functions allowing to control the
1266:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     activation or deactivation of LSE CSS,
1267:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     Low speed clock output and clock after wake-up from STOP mode.
1268:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** @endverbatim
1269:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @{
1270:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1271:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1272:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1273:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Enable the LSE Clock Security System.
1274:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @note   Prior to enable the LSE Clock Security System, LSE oscillator is to be enabled
1275:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         with HAL_RCC_OscConfig() and the LSE oscillator clock is to be selected as RTC
1276:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         clock with HAL_RCCEx_PeriphCLKConfig().
1277:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1278:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1279:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_EnableLSECSS(void)
1280:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1367              		.loc 1 1280 1 is_stmt 1 view -0
 1368              		.cfi_startproc
 1369              		@ args = 0, pretend = 0, frame = 0
 1370              		@ frame_needed = 0, uses_anonymous_args = 0
 1371              		@ link register save eliminated.
1281:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSECSSON) ;
 1372              		.loc 1 1281 3 view .LVU485
 1373 0000 034A     		ldr	r2, .L272
 1374 0002 D2F89030 		ldr	r3, [r2, #144]
 1375 0006 43F02003 		orr	r3, r3, #32
 1376 000a C2F89030 		str	r3, [r2, #144]
1282:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1377              		.loc 1 1282 1 is_stmt 0 view .LVU486
 1378 000e 7047     		bx	lr
 1379              	.L273:
 1380              		.align	2
 1381              	.L272:
 1382 0010 00100240 		.word	1073876992
 1383              		.cfi_endproc
 1384              	.LFE328:
 1386              		.section	.text.HAL_RCCEx_DisableLSECSS,"ax",%progbits
 1387              		.align	1
 1388              		.global	HAL_RCCEx_DisableLSECSS
 1389              		.syntax unified
 1390              		.thumb
 1391              		.thumb_func
 1392              		.fpu fpv4-sp-d16
 1394              	HAL_RCCEx_DisableLSECSS:
 1395              	.LFB329:
1283:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1284:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1285:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Disable the LSE Clock Security System.
1286:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @note   LSE Clock Security System can only be disabled after a LSE failure detection.
1287:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1288:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1289:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_DisableLSECSS(void)
1290:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1396              		.loc 1 1290 1 is_stmt 1 view -0
 1397              		.cfi_startproc
 1398              		@ args = 0, pretend = 0, frame = 0
 1399              		@ frame_needed = 0, uses_anonymous_args = 0
 1400              		@ link register save eliminated.
1291:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSECSSON) ;
 1401              		.loc 1 1291 3 view .LVU488
 1402 0000 054B     		ldr	r3, .L275
 1403 0002 D3F89020 		ldr	r2, [r3, #144]
 1404 0006 22F02002 		bic	r2, r2, #32
 1405 000a C3F89020 		str	r2, [r3, #144]
1292:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1293:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Disable LSE CSS IT if any */
1294:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   __HAL_RCC_DISABLE_IT(RCC_IT_LSECSS);
 1406              		.loc 1 1294 3 view .LVU489
 1407 000e 9A69     		ldr	r2, [r3, #24]
 1408 0010 22F40072 		bic	r2, r2, #512
 1409 0014 9A61     		str	r2, [r3, #24]
1295:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1410              		.loc 1 1295 1 is_stmt 0 view .LVU490
 1411 0016 7047     		bx	lr
 1412              	.L276:
 1413              		.align	2
 1414              	.L275:
 1415 0018 00100240 		.word	1073876992
 1416              		.cfi_endproc
 1417              	.LFE329:
 1419              		.section	.text.HAL_RCCEx_EnableLSECSS_IT,"ax",%progbits
 1420              		.align	1
 1421              		.global	HAL_RCCEx_EnableLSECSS_IT
 1422              		.syntax unified
 1423              		.thumb
 1424              		.thumb_func
 1425              		.fpu fpv4-sp-d16
 1427              	HAL_RCCEx_EnableLSECSS_IT:
 1428              	.LFB330:
1296:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1297:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1298:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Enable the LSE Clock Security System Interrupt & corresponding EXTI line.
1299:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @note   LSE Clock Security System Interrupt is mapped on RTC EXTI line 19
1300:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1301:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1302:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_EnableLSECSS_IT(void)
1303:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1429              		.loc 1 1303 1 is_stmt 1 view -0
 1430              		.cfi_startproc
 1431              		@ args = 0, pretend = 0, frame = 0
 1432              		@ frame_needed = 0, uses_anonymous_args = 0
 1433              		@ link register save eliminated.
1304:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Enable LSE CSS */
1305:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSECSSON) ;
 1434              		.loc 1 1305 3 view .LVU492
 1435 0000 0A4B     		ldr	r3, .L278
 1436 0002 D3F89020 		ldr	r2, [r3, #144]
 1437 0006 42F02002 		orr	r2, r2, #32
 1438 000a C3F89020 		str	r2, [r3, #144]
1306:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1307:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Enable LSE CSS IT */
1308:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   __HAL_RCC_ENABLE_IT(RCC_IT_LSECSS);
 1439              		.loc 1 1308 3 view .LVU493
 1440 000e 9A69     		ldr	r2, [r3, #24]
 1441 0010 42F40072 		orr	r2, r2, #512
 1442 0014 9A61     		str	r2, [r3, #24]
1309:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1310:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Enable IT on EXTI Line 19 */
1311:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   __HAL_RCC_LSECSS_EXTI_ENABLE_IT();
 1443              		.loc 1 1311 3 view .LVU494
 1444 0016 A3F58633 		sub	r3, r3, #68608
 1445 001a 1A68     		ldr	r2, [r3]
 1446 001c 42F40022 		orr	r2, r2, #524288
 1447 0020 1A60     		str	r2, [r3]
1312:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   __HAL_RCC_LSECSS_EXTI_ENABLE_RISING_EDGE();
 1448              		.loc 1 1312 3 view .LVU495
 1449 0022 9A68     		ldr	r2, [r3, #8]
 1450 0024 42F40022 		orr	r2, r2, #524288
 1451 0028 9A60     		str	r2, [r3, #8]
1313:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1452              		.loc 1 1313 1 is_stmt 0 view .LVU496
 1453 002a 7047     		bx	lr
 1454              	.L279:
 1455              		.align	2
 1456              	.L278:
 1457 002c 00100240 		.word	1073876992
 1458              		.cfi_endproc
 1459              	.LFE330:
 1461              		.section	.text.HAL_RCCEx_LSECSS_Callback,"ax",%progbits
 1462              		.align	1
 1463              		.weak	HAL_RCCEx_LSECSS_Callback
 1464              		.syntax unified
 1465              		.thumb
 1466              		.thumb_func
 1467              		.fpu fpv4-sp-d16
 1469              	HAL_RCCEx_LSECSS_Callback:
 1470              	.LFB332:
1314:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1315:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1316:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief Handle the RCC LSE Clock Security System interrupt request.
1317:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1318:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1319:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_LSECSS_IRQHandler(void)
1320:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
1321:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check RCC LSE CSSF flag  */
1322:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(__HAL_RCC_GET_IT(RCC_IT_LSECSS))
1323:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1324:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* RCC LSE Clock Security System interrupt user callback */
1325:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_RCCEx_LSECSS_Callback();
1326:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1327:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Clear RCC LSE CSS pending bit */
1328:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_CLEAR_IT(RCC_IT_LSECSS);
1329:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1330:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
1331:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1332:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1333:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  RCCEx LSE Clock Security System interrupt callback.
1334:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval none
1335:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1336:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** __weak void HAL_RCCEx_LSECSS_Callback(void)
1337:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1471              		.loc 1 1337 1 is_stmt 1 view -0
 1472              		.cfi_startproc
 1473              		@ args = 0, pretend = 0, frame = 0
 1474              		@ frame_needed = 0, uses_anonymous_args = 0
 1475              		@ link register save eliminated.
1338:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1339:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             the @ref HAL_RCCEx_LSECSS_Callback should be implemented in the user file
1340:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****    */
1341:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1476              		.loc 1 1341 1 view .LVU498
 1477 0000 7047     		bx	lr
 1478              		.cfi_endproc
 1479              	.LFE332:
 1481              		.section	.text.HAL_RCCEx_LSECSS_IRQHandler,"ax",%progbits
 1482              		.align	1
 1483              		.global	HAL_RCCEx_LSECSS_IRQHandler
 1484              		.syntax unified
 1485              		.thumb
 1486              		.thumb_func
 1487              		.fpu fpv4-sp-d16
 1489              	HAL_RCCEx_LSECSS_IRQHandler:
 1490              	.LFB331:
1320:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check RCC LSE CSSF flag  */
 1491              		.loc 1 1320 1 view -0
 1492              		.cfi_startproc
 1493              		@ args = 0, pretend = 0, frame = 0
 1494              		@ frame_needed = 0, uses_anonymous_args = 0
1322:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 1495              		.loc 1 1322 3 view .LVU500
1320:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check RCC LSE CSSF flag  */
 1496              		.loc 1 1320 1 is_stmt 0 view .LVU501
 1497 0000 10B5     		push	{r4, lr}
 1498              		.cfi_def_cfa_offset 8
 1499              		.cfi_offset 4, -8
 1500              		.cfi_offset 14, -4
1322:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 1501              		.loc 1 1322 6 view .LVU502
 1502 0002 054C     		ldr	r4, .L286
 1503 0004 E369     		ldr	r3, [r4, #28]
1322:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 1504              		.loc 1 1322 5 view .LVU503
 1505 0006 9B05     		lsls	r3, r3, #22
 1506 0008 04D5     		bpl	.L281
1325:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1507              		.loc 1 1325 5 is_stmt 1 view .LVU504
 1508 000a FFF7FEFF 		bl	HAL_RCCEx_LSECSS_Callback
 1509              	.LVL111:
1328:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 1510              		.loc 1 1328 5 view .LVU505
 1511 000e 4FF40073 		mov	r3, #512
 1512 0012 2362     		str	r3, [r4, #32]
 1513              	.L281:
1330:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1514              		.loc 1 1330 1 is_stmt 0 view .LVU506
 1515 0014 10BD     		pop	{r4, pc}
 1516              	.L287:
 1517 0016 00BF     		.align	2
 1518              	.L286:
 1519 0018 00100240 		.word	1073876992
 1520              		.cfi_endproc
 1521              	.LFE331:
 1523              		.section	.text.HAL_RCCEx_EnableLSCO,"ax",%progbits
 1524              		.align	1
 1525              		.global	HAL_RCCEx_EnableLSCO
 1526              		.syntax unified
 1527              		.thumb
 1528              		.thumb_func
 1529              		.fpu fpv4-sp-d16
 1531              	HAL_RCCEx_EnableLSCO:
 1532              	.LVL112:
 1533              	.LFB333:
1342:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1343:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1344:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Select the Low Speed clock source to output on LSCO pin (PA2).
1345:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @param  LSCOSource  specifies the Low Speed clock source to output.
1346:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *          This parameter can be one of the following values:
1347:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_LSCOSOURCE_LSI  LSI clock selected as LSCO source
1348:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *            @arg @ref RCC_LSCOSOURCE_LSE  LSE clock selected as LSCO source
1349:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1350:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1351:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_EnableLSCO(uint32_t LSCOSource)
1352:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1534              		.loc 1 1352 1 is_stmt 1 view -0
 1535              		.cfi_startproc
 1536              		@ args = 0, pretend = 0, frame = 32
 1537              		@ frame_needed = 0, uses_anonymous_args = 0
1353:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1538              		.loc 1 1353 3 view .LVU508
1354:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   FlagStatus       pwrclkchanged = RESET;
 1539              		.loc 1 1354 3 view .LVU509
1355:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   FlagStatus       backupchanged = RESET;
 1540              		.loc 1 1355 3 view .LVU510
1356:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1357:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check the parameters */
1358:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_LSCOSOURCE(LSCOSource));
 1541              		.loc 1 1358 3 view .LVU511
1359:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1360:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* LSCO Pin Clock Enable */
1361:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   __LSCO_CLK_ENABLE();
 1542              		.loc 1 1361 3 view .LVU512
 1543              	.LBB6:
 1544              		.loc 1 1361 3 view .LVU513
 1545              		.loc 1 1361 3 view .LVU514
 1546              	.LBE6:
1352:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1547              		.loc 1 1352 1 is_stmt 0 view .LVU515
 1548 0000 70B5     		push	{r4, r5, r6, lr}
 1549              		.cfi_def_cfa_offset 16
 1550              		.cfi_offset 4, -16
 1551              		.cfi_offset 5, -12
 1552              		.cfi_offset 6, -8
 1553              		.cfi_offset 14, -4
 1554              	.LBB7:
 1555              		.loc 1 1361 3 view .LVU516
 1556 0002 214C     		ldr	r4, .L295
 1557 0004 E36C     		ldr	r3, [r4, #76]
 1558 0006 43F00103 		orr	r3, r3, #1
 1559 000a E364     		str	r3, [r4, #76]
 1560              		.loc 1 1361 3 is_stmt 1 view .LVU517
 1561 000c E36C     		ldr	r3, [r4, #76]
 1562              	.LBE7:
1352:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1563              		.loc 1 1352 1 is_stmt 0 view .LVU518
 1564 000e 88B0     		sub	sp, sp, #32
 1565              		.cfi_def_cfa_offset 48
 1566              	.LBB8:
 1567              		.loc 1 1361 3 view .LVU519
 1568 0010 03F00103 		and	r3, r3, #1
 1569 0014 0193     		str	r3, [sp, #4]
 1570              		.loc 1 1361 3 is_stmt 1 view .LVU520
 1571 0016 019B     		ldr	r3, [sp, #4]
 1572              	.LBE8:
1362:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1363:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Configue the LSCO pin in analog mode */
1364:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitStruct.Pin = LSCO_PIN;
 1573              		.loc 1 1364 3 view .LVU521
1365:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
 1574              		.loc 1 1365 24 is_stmt 0 view .LVU522
 1575 0018 0422     		movs	r2, #4
 1576 001a 0323     		movs	r3, #3
 1577 001c CDE90323 		strd	r2, r3, [sp, #12]
1366:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
 1578              		.loc 1 1366 3 is_stmt 1 view .LVU523
1367:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
1368:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   HAL_GPIO_Init(LSCO_GPIO_PORT, &GPIO_InitStruct);
 1579              		.loc 1 1368 3 is_stmt 0 view .LVU524
 1580 0020 03A9     		add	r1, sp, #12
1367:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 1581              		.loc 1 1367 24 view .LVU525
 1582 0022 0223     		movs	r3, #2
1352:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1583              		.loc 1 1352 1 view .LVU526
 1584 0024 0646     		mov	r6, r0
1367:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 1585              		.loc 1 1367 24 view .LVU527
 1586 0026 0025     		movs	r5, #0
 1587              		.loc 1 1368 3 view .LVU528
 1588 0028 4FF09040 		mov	r0, #1207959552
 1589              	.LVL113:
1367:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 1590              		.loc 1 1367 24 view .LVU529
 1591 002c CDE90553 		strd	r5, r3, [sp, #20]
 1592              		.loc 1 1368 3 is_stmt 1 view .LVU530
 1593 0030 FFF7FEFF 		bl	HAL_GPIO_Init
 1594              	.LVL114:
1369:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1370:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Update LSCOSEL clock source in Backup Domain control register */
1371:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 1595              		.loc 1 1371 3 view .LVU531
 1596              		.loc 1 1371 6 is_stmt 0 view .LVU532
 1597 0034 A36D     		ldr	r3, [r4, #88]
 1598              		.loc 1 1371 5 view .LVU533
 1599 0036 D900     		lsls	r1, r3, #3
 1600 0038 09D4     		bmi	.L289
1372:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1373:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_PWR_CLK_ENABLE();
 1601              		.loc 1 1373 5 is_stmt 1 view .LVU534
 1602              	.LBB9:
 1603              		.loc 1 1373 5 view .LVU535
 1604              		.loc 1 1373 5 view .LVU536
 1605 003a A36D     		ldr	r3, [r4, #88]
 1606 003c 43F08053 		orr	r3, r3, #268435456
 1607 0040 A365     		str	r3, [r4, #88]
 1608              		.loc 1 1373 5 view .LVU537
 1609 0042 A36D     		ldr	r3, [r4, #88]
 1610 0044 03F08053 		and	r3, r3, #268435456
 1611 0048 0293     		str	r3, [sp, #8]
 1612              		.loc 1 1373 5 view .LVU538
 1613 004a 029B     		ldr	r3, [sp, #8]
 1614              	.LBE9:
1374:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     pwrclkchanged = SET;
 1615              		.loc 1 1374 5 view .LVU539
 1616              	.LVL115:
 1617              		.loc 1 1374 19 is_stmt 0 view .LVU540
 1618 004c 0125     		movs	r5, #1
 1619              	.LVL116:
 1620              	.L289:
1375:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1376:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 1621              		.loc 1 1376 3 is_stmt 1 view .LVU541
 1622              		.loc 1 1376 6 is_stmt 0 view .LVU542
 1623 004e 0F4B     		ldr	r3, .L295+4
 1624 0050 1B68     		ldr	r3, [r3]
 1625              		.loc 1 1376 5 view .LVU543
 1626 0052 DB05     		lsls	r3, r3, #23
 1627 0054 15D4     		bmi	.L294
1377:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1378:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_PWR_EnableBkUpAccess();
 1628              		.loc 1 1378 5 is_stmt 1 view .LVU544
 1629 0056 FFF7FEFF 		bl	HAL_PWR_EnableBkUpAccess
 1630              	.LVL117:
1379:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     backupchanged = SET;
 1631              		.loc 1 1379 5 view .LVU545
 1632              		.loc 1 1379 19 is_stmt 0 view .LVU546
 1633 005a 0123     		movs	r3, #1
 1634              	.LVL118:
 1635              	.L290:
1380:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1381:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1382:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   MODIFY_REG(RCC->BDCR, RCC_BDCR_LSCOSEL | RCC_BDCR_LSCOEN, LSCOSource | RCC_BDCR_LSCOEN);
 1636              		.loc 1 1382 3 is_stmt 1 view .LVU547
 1637 005c D4F89000 		ldr	r0, [r4, #144]
 1638 0060 20F04070 		bic	r0, r0, #50331648
 1639 0064 3043     		orrs	r0, r0, r6
 1640 0066 40F08070 		orr	r0, r0, #16777216
 1641 006a C4F89000 		str	r0, [r4, #144]
1383:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1384:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(backupchanged == SET)
 1642              		.loc 1 1384 3 view .LVU548
 1643              		.loc 1 1384 5 is_stmt 0 view .LVU549
 1644 006e 0BB1     		cbz	r3, .L291
 1645              	.LVL119:
1385:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1386:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_PWR_DisableBkUpAccess();
 1646              		.loc 1 1386 5 is_stmt 1 view .LVU550
 1647 0070 FFF7FEFF 		bl	HAL_PWR_DisableBkUpAccess
 1648              	.LVL120:
 1649              	.L291:
1387:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1388:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(pwrclkchanged == SET)
 1650              		.loc 1 1388 3 view .LVU551
 1651              		.loc 1 1388 5 is_stmt 0 view .LVU552
 1652 0074 1DB1     		cbz	r5, .L288
1389:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1390:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_PWR_CLK_DISABLE();
 1653              		.loc 1 1390 5 is_stmt 1 view .LVU553
 1654 0076 A36D     		ldr	r3, [r4, #88]
 1655 0078 23F08053 		bic	r3, r3, #268435456
 1656 007c A365     		str	r3, [r4, #88]
 1657              	.L288:
1391:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1392:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1658              		.loc 1 1392 1 is_stmt 0 view .LVU554
 1659 007e 08B0     		add	sp, sp, #32
 1660              		.cfi_remember_state
 1661              		.cfi_def_cfa_offset 16
 1662              		@ sp needed
 1663 0080 70BD     		pop	{r4, r5, r6, pc}
 1664              	.LVL121:
 1665              	.L294:
 1666              		.cfi_restore_state
1355:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1667              		.loc 1 1355 20 view .LVU555
 1668 0082 0023     		movs	r3, #0
 1669 0084 EAE7     		b	.L290
 1670              	.L296:
 1671 0086 00BF     		.align	2
 1672              	.L295:
 1673 0088 00100240 		.word	1073876992
 1674 008c 00700040 		.word	1073770496
 1675              		.cfi_endproc
 1676              	.LFE333:
 1678              		.section	.text.HAL_RCCEx_DisableLSCO,"ax",%progbits
 1679              		.align	1
 1680              		.global	HAL_RCCEx_DisableLSCO
 1681              		.syntax unified
 1682              		.thumb
 1683              		.thumb_func
 1684              		.fpu fpv4-sp-d16
 1686              	HAL_RCCEx_DisableLSCO:
 1687              	.LFB334:
1393:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1394:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1395:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Disable the Low Speed clock output.
1396:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1397:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1398:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_DisableLSCO(void)
1399:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1688              		.loc 1 1399 1 is_stmt 1 view -0
 1689              		.cfi_startproc
 1690              		@ args = 0, pretend = 0, frame = 8
 1691              		@ frame_needed = 0, uses_anonymous_args = 0
1400:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   FlagStatus       pwrclkchanged = RESET;
 1692              		.loc 1 1400 3 view .LVU557
 1693              	.LVL122:
1401:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   FlagStatus       backupchanged = RESET;
 1694              		.loc 1 1401 3 view .LVU558
1402:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1403:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Update LSCOEN bit in Backup Domain control register */
1404:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 1695              		.loc 1 1404 3 view .LVU559
1399:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   FlagStatus       pwrclkchanged = RESET;
 1696              		.loc 1 1399 1 is_stmt 0 view .LVU560
 1697 0000 37B5     		push	{r0, r1, r2, r4, r5, lr}
 1698              		.cfi_def_cfa_offset 24
 1699              		.cfi_offset 4, -12
 1700              		.cfi_offset 5, -8
 1701              		.cfi_offset 14, -4
 1702              		.loc 1 1404 6 view .LVU561
 1703 0002 144C     		ldr	r4, .L304
 1704 0004 A36D     		ldr	r3, [r4, #88]
 1705              		.loc 1 1404 5 view .LVU562
 1706 0006 DA00     		lsls	r2, r3, #3
 1707 0008 20D4     		bmi	.L302
1405:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1406:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_PWR_CLK_ENABLE();
 1708              		.loc 1 1406 5 is_stmt 1 view .LVU563
 1709              	.LBB10:
 1710              		.loc 1 1406 5 view .LVU564
 1711              		.loc 1 1406 5 view .LVU565
 1712 000a A36D     		ldr	r3, [r4, #88]
 1713 000c 43F08053 		orr	r3, r3, #268435456
 1714 0010 A365     		str	r3, [r4, #88]
 1715              		.loc 1 1406 5 view .LVU566
 1716 0012 A36D     		ldr	r3, [r4, #88]
 1717 0014 03F08053 		and	r3, r3, #268435456
 1718 0018 0193     		str	r3, [sp, #4]
 1719              		.loc 1 1406 5 view .LVU567
 1720 001a 019B     		ldr	r3, [sp, #4]
 1721              	.LBE10:
1407:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     pwrclkchanged = SET;
 1722              		.loc 1 1407 5 view .LVU568
 1723              	.LVL123:
 1724              		.loc 1 1407 19 is_stmt 0 view .LVU569
 1725 001c 0125     		movs	r5, #1
 1726              	.LVL124:
 1727              	.L298:
1408:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1409:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 1728              		.loc 1 1409 3 is_stmt 1 view .LVU570
 1729              		.loc 1 1409 6 is_stmt 0 view .LVU571
 1730 001e 0E4B     		ldr	r3, .L304+4
 1731 0020 1B68     		ldr	r3, [r3]
 1732              		.loc 1 1409 5 view .LVU572
 1733 0022 DB05     		lsls	r3, r3, #23
 1734 0024 14D4     		bmi	.L303
1410:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1411:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Enable access to the backup domain */
1412:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_PWR_EnableBkUpAccess();
 1735              		.loc 1 1412 5 is_stmt 1 view .LVU573
 1736 0026 FFF7FEFF 		bl	HAL_PWR_EnableBkUpAccess
 1737              	.LVL125:
1413:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     backupchanged = SET;
 1738              		.loc 1 1413 5 view .LVU574
 1739              		.loc 1 1413 19 is_stmt 0 view .LVU575
 1740 002a 0122     		movs	r2, #1
 1741              	.LVL126:
 1742              	.L299:
1414:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1415:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1416:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSCOEN);
 1743              		.loc 1 1416 3 is_stmt 1 view .LVU576
 1744 002c D4F89030 		ldr	r3, [r4, #144]
 1745 0030 23F08073 		bic	r3, r3, #16777216
 1746 0034 C4F89030 		str	r3, [r4, #144]
1417:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1418:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Restore previous configuration */
1419:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(backupchanged == SET)
 1747              		.loc 1 1419 3 view .LVU577
 1748              		.loc 1 1419 5 is_stmt 0 view .LVU578
 1749 0038 0AB1     		cbz	r2, .L300
 1750              	.LVL127:
1420:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1421:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Disable access to the backup domain */
1422:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_PWR_DisableBkUpAccess();
 1751              		.loc 1 1422 5 is_stmt 1 view .LVU579
 1752 003a FFF7FEFF 		bl	HAL_PWR_DisableBkUpAccess
 1753              	.LVL128:
 1754              	.L300:
1423:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1424:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(pwrclkchanged == SET)
 1755              		.loc 1 1424 3 view .LVU580
 1756              		.loc 1 1424 5 is_stmt 0 view .LVU581
 1757 003e 1DB1     		cbz	r5, .L297
1425:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1426:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     __HAL_RCC_PWR_CLK_DISABLE();
 1758              		.loc 1 1426 5 is_stmt 1 view .LVU582
 1759 0040 A36D     		ldr	r3, [r4, #88]
 1760 0042 23F08053 		bic	r3, r3, #268435456
 1761 0046 A365     		str	r3, [r4, #88]
 1762              	.L297:
1427:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1428:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1763              		.loc 1 1428 1 is_stmt 0 view .LVU583
 1764 0048 03B0     		add	sp, sp, #12
 1765              		.cfi_remember_state
 1766              		.cfi_def_cfa_offset 12
 1767              		@ sp needed
 1768 004a 30BD     		pop	{r4, r5, pc}
 1769              	.LVL129:
 1770              	.L302:
 1771              		.cfi_restore_state
1400:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   FlagStatus       backupchanged = RESET;
 1772              		.loc 1 1400 20 view .LVU584
 1773 004c 0025     		movs	r5, #0
 1774 004e E6E7     		b	.L298
 1775              	.LVL130:
 1776              	.L303:
1401:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1777              		.loc 1 1401 20 view .LVU585
 1778 0050 0022     		movs	r2, #0
 1779 0052 EBE7     		b	.L299
 1780              	.L305:
 1781              		.align	2
 1782              	.L304:
 1783 0054 00100240 		.word	1073876992
 1784 0058 00700040 		.word	1073770496
 1785              		.cfi_endproc
 1786              	.LFE334:
 1788              		.section	.text.HAL_RCCEx_CRSConfig,"ax",%progbits
 1789              		.align	1
 1790              		.global	HAL_RCCEx_CRSConfig
 1791              		.syntax unified
 1792              		.thumb
 1793              		.thumb_func
 1794              		.fpu fpv4-sp-d16
 1796              	HAL_RCCEx_CRSConfig:
 1797              	.LVL131:
 1798              	.LFB335:
1429:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1430:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1431:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1432:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @}
1433:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1434:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1435:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** #if defined(CRS)
1436:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1437:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /** @defgroup RCCEx_Exported_Functions_Group3 Extended Clock Recovery System Control functions
1438:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  *  @brief  Extended Clock Recovery System Control functions
1439:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  *
1440:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** @verbatim
1441:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  ===============================================================================
1442:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                 ##### Extended Clock Recovery System Control functions  #####
1443:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  ===============================================================================
1444:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     [..]
1445:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       For devices with Clock Recovery System feature (CRS), RCC Extention HAL driver can be used as
1446:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1447:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       (#) In System clock config, HSI48 needs to be enabled
1448:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1449:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       (#) Enable CRS clock in IP MSP init which will use CRS functions
1450:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1451:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       (#) Call CRS functions as follows:
1452:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           (##) Prepare synchronization configuration necessary for HSI48 calibration
1453:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (+++) Default values can be set for frequency Error Measurement (reload and error lim
1454:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                         and also HSI48 oscillator smooth trimming.
1455:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (+++) Macro __HAL_RCC_CRS_RELOADVALUE_CALCULATE can be also used to calculate
1456:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                         directly reload value with target and sychronization frequencies values
1457:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           (##) Call function HAL_RCCEx_CRSConfig which
1458:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (+++) Resets CRS registers to their default values.
1459:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (+++) Configures CRS registers with synchronization configuration
1460:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (+++) Enables automatic calibration and frequency error counter feature
1461:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            Note: When using USB LPM (Link Power Management) and the device is in Sleep mode, the
1462:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            periodic USB SOF will not be generated by the host. No SYNC signal will therefore be
1463:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            provided to the CRS to calibrate the HSI48 on the run. To guarantee the required clock
1464:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            precision after waking up from Sleep mode, the LSE or reference clock on the GPIOs
1465:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            should be used as SYNC signal.
1466:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1467:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           (##) A polling function is provided to wait for complete synchronization
1468:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (+++) Call function HAL_RCCEx_CRSWaitSynchronization()
1469:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (+++) According to CRS status, user can decide to adjust again the calibration or con
1470:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                         application if synchronization is OK
1471:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1472:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       (#) User can retrieve information related to synchronization in calling function
1473:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             HAL_RCCEx_CRSGetSynchronizationInfo()
1474:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1475:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       (#) Regarding synchronization status and synchronization information, user can try a new cali
1476:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            in changing synchronization configuration and call again HAL_RCCEx_CRSConfig.
1477:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            Note: When the SYNC event is detected during the downcounting phase (before reaching the
1478:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            it means that the actual frequency is lower than the target (and so, that the TRIM value
1479:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            incremented), while when it is detected during the upcounting phase it means that the ac
1480:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****            is higher (and that the TRIM value should be decremented).
1481:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1482:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       (#) In interrupt mode, user can resort to the available macros (__HAL_RCC_CRS_XXX_IT). Interr
1483:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           through CRS Handler (CRS_IRQn/CRS_IRQHandler)
1484:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (++) Call function HAL_RCCEx_CRSConfig()
1485:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (++) Enable CRS_IRQn (thanks to NVIC functions)
1486:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (++) Enable CRS interrupt (__HAL_RCC_CRS_ENABLE_IT)
1487:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****               (++) Implement CRS status management in the following user callbacks called from
1488:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                    HAL_RCCEx_CRS_IRQHandler():
1489:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                    (+++) HAL_RCCEx_CRS_SyncOkCallback()
1490:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                    (+++) HAL_RCCEx_CRS_SyncWarnCallback()
1491:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                    (+++) HAL_RCCEx_CRS_ExpectedSyncCallback()
1492:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****                    (+++) HAL_RCCEx_CRS_ErrorCallback()
1493:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1494:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       (#) To force a SYNC EVENT, user can use the function HAL_RCCEx_CRSSoftwareSynchronizationGene
1495:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****           This function can be called before calling HAL_RCCEx_CRSConfig (for instance in Systick h
1496:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1497:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** @endverbatim
1498:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  * @{
1499:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****  */
1500:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1501:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1502:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Start automatic synchronization for polling mode
1503:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @param  pInit Pointer on RCC_CRSInitTypeDef structure
1504:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1505:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1506:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_CRSConfig(RCC_CRSInitTypeDef *pInit)
1507:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1799              		.loc 1 1507 1 is_stmt 1 view -0
 1800              		.cfi_startproc
 1801              		@ args = 0, pretend = 0, frame = 0
 1802              		@ frame_needed = 0, uses_anonymous_args = 0
 1803              		@ link register save eliminated.
1508:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t value;
 1804              		.loc 1 1508 3 view .LVU587
1509:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1510:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check the parameters */
1511:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_CRS_SYNC_DIV(pInit->Prescaler));
 1805              		.loc 1 1511 3 view .LVU588
1512:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_CRS_SYNC_SOURCE(pInit->Source));
 1806              		.loc 1 1512 3 view .LVU589
1513:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_CRS_SYNC_POLARITY(pInit->Polarity));
 1807              		.loc 1 1513 3 view .LVU590
1514:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_CRS_RELOADVALUE(pInit->ReloadValue));
 1808              		.loc 1 1514 3 view .LVU591
1515:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_CRS_ERRORLIMIT(pInit->ErrorLimitValue));
 1809              		.loc 1 1515 3 view .LVU592
1516:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(IS_RCC_CRS_HSI48CALIBRATION(pInit->HSI48CalibrationValue));
 1810              		.loc 1 1516 3 view .LVU593
1517:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1518:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* CONFIGURATION */
1519:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1520:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Before configuration, reset CRS registers to their default values*/
1521:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   __HAL_RCC_CRS_FORCE_RESET();
 1811              		.loc 1 1521 3 view .LVU594
 1812 0000 104B     		ldr	r3, .L307
 1813 0002 9A6B     		ldr	r2, [r3, #56]
 1814 0004 42F48072 		orr	r2, r2, #256
 1815 0008 9A63     		str	r2, [r3, #56]
1522:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   __HAL_RCC_CRS_RELEASE_RESET();
 1816              		.loc 1 1522 3 view .LVU595
 1817 000a 9A6B     		ldr	r2, [r3, #56]
 1818 000c 22F48072 		bic	r2, r2, #256
 1819 0010 9A63     		str	r2, [r3, #56]
1523:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1524:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Set the SYNCDIV[2:0] bits according to Prescaler value */
1525:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Set the SYNCSRC[1:0] bits according to Source value */
1526:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Set the SYNCSPOL bit according to Polarity value */
1527:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   value = (pInit->Prescaler | pInit->Source | pInit->Polarity);
 1820              		.loc 1 1527 3 view .LVU596
 1821              		.loc 1 1527 29 is_stmt 0 view .LVU597
 1822 0012 D0E90032 		ldrd	r3, r2, [r0]
 1823 0016 1343     		orrs	r3, r3, r2
 1824              		.loc 1 1527 9 view .LVU598
 1825 0018 8268     		ldr	r2, [r0, #8]
 1826 001a 1343     		orrs	r3, r3, r2
 1827              	.LVL132:
1528:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Set the RELOAD[15:0] bits according to ReloadValue value */
1529:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   value |= pInit->ReloadValue;
 1828              		.loc 1 1529 3 is_stmt 1 view .LVU599
 1829              		.loc 1 1529 9 is_stmt 0 view .LVU600
 1830 001c C268     		ldr	r2, [r0, #12]
 1831 001e 1343     		orrs	r3, r3, r2
 1832              	.LVL133:
1530:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Set the FELIM[7:0] bits according to ErrorLimitValue value */
1531:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   value |= (pInit->ErrorLimitValue << CRS_CFGR_FELIM_Pos);
 1833              		.loc 1 1531 3 is_stmt 1 view .LVU601
 1834              		.loc 1 1531 36 is_stmt 0 view .LVU602
 1835 0020 0269     		ldr	r2, [r0, #16]
 1836              		.loc 1 1531 9 view .LVU603
 1837 0022 43EA0243 		orr	r3, r3, r2, lsl #16
 1838              	.LVL134:
1532:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   WRITE_REG(CRS->CFGR, value);
 1839              		.loc 1 1532 3 is_stmt 1 view .LVU604
 1840 0026 084A     		ldr	r2, .L307+4
 1841 0028 5360     		str	r3, [r2, #4]
1533:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1534:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Adjust HSI48 oscillator smooth trimming */
1535:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Set the TRIM[6:0] bits according to RCC_CRS_HSI48CalibrationValue value */
1536:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   MODIFY_REG(CRS->CR, CRS_CR_TRIM, (pInit->HSI48CalibrationValue << CRS_CR_TRIM_Pos));
 1842              		.loc 1 1536 3 view .LVU605
 1843 002a 1368     		ldr	r3, [r2]
 1844              	.LVL135:
 1845              		.loc 1 1536 3 is_stmt 0 view .LVU606
 1846 002c 4169     		ldr	r1, [r0, #20]
 1847 002e 23F4FE43 		bic	r3, r3, #32512
 1848 0032 43EA0123 		orr	r3, r3, r1, lsl #8
 1849 0036 1360     		str	r3, [r2]
 1850              	.LVL136:
1537:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1538:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* START AUTOMATIC SYNCHRONIZATION*/
1539:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1540:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Enable Automatic trimming & Frequency error counter */
1541:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   SET_BIT(CRS->CR, CRS_CR_AUTOTRIMEN | CRS_CR_CEN);
 1851              		.loc 1 1541 3 is_stmt 1 view .LVU607
 1852 0038 1368     		ldr	r3, [r2]
 1853 003a 43F06003 		orr	r3, r3, #96
 1854 003e 1360     		str	r3, [r2]
1542:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1855              		.loc 1 1542 1 is_stmt 0 view .LVU608
 1856 0040 7047     		bx	lr
 1857              	.L308:
 1858 0042 00BF     		.align	2
 1859              	.L307:
 1860 0044 00100240 		.word	1073876992
 1861 0048 00200040 		.word	1073750016
 1862              		.cfi_endproc
 1863              	.LFE335:
 1865              		.section	.text.HAL_RCCEx_CRSSoftwareSynchronizationGenerate,"ax",%progbits
 1866              		.align	1
 1867              		.global	HAL_RCCEx_CRSSoftwareSynchronizationGenerate
 1868              		.syntax unified
 1869              		.thumb
 1870              		.thumb_func
 1871              		.fpu fpv4-sp-d16
 1873              	HAL_RCCEx_CRSSoftwareSynchronizationGenerate:
 1874              	.LFB336:
1543:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1544:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1545:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Generate the software synchronization event
1546:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1547:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1548:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_CRSSoftwareSynchronizationGenerate(void)
1549:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1875              		.loc 1 1549 1 is_stmt 1 view -0
 1876              		.cfi_startproc
 1877              		@ args = 0, pretend = 0, frame = 0
 1878              		@ frame_needed = 0, uses_anonymous_args = 0
 1879              		@ link register save eliminated.
1550:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   SET_BIT(CRS->CR, CRS_CR_SWSYNC);
 1880              		.loc 1 1550 3 view .LVU610
 1881 0000 024A     		ldr	r2, .L310
 1882 0002 1368     		ldr	r3, [r2]
 1883 0004 43F08003 		orr	r3, r3, #128
 1884 0008 1360     		str	r3, [r2]
1551:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1885              		.loc 1 1551 1 is_stmt 0 view .LVU611
 1886 000a 7047     		bx	lr
 1887              	.L311:
 1888              		.align	2
 1889              	.L310:
 1890 000c 00200040 		.word	1073750016
 1891              		.cfi_endproc
 1892              	.LFE336:
 1894              		.section	.text.HAL_RCCEx_CRSGetSynchronizationInfo,"ax",%progbits
 1895              		.align	1
 1896              		.global	HAL_RCCEx_CRSGetSynchronizationInfo
 1897              		.syntax unified
 1898              		.thumb
 1899              		.thumb_func
 1900              		.fpu fpv4-sp-d16
 1902              	HAL_RCCEx_CRSGetSynchronizationInfo:
 1903              	.LVL137:
 1904              	.LFB337:
1552:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1553:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1554:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  Return synchronization info
1555:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @param  pSynchroInfo Pointer on RCC_CRSSynchroInfoTypeDef structure
1556:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1557:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1558:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_CRSGetSynchronizationInfo(RCC_CRSSynchroInfoTypeDef *pSynchroInfo)
1559:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1905              		.loc 1 1559 1 is_stmt 1 view -0
 1906              		.cfi_startproc
 1907              		@ args = 0, pretend = 0, frame = 0
 1908              		@ frame_needed = 0, uses_anonymous_args = 0
 1909              		@ link register save eliminated.
1560:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check the parameter */
1561:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   assert_param(pSynchroInfo != (void *)NULL);
 1910              		.loc 1 1561 3 view .LVU613
1562:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1563:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get the reload value */
1564:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   pSynchroInfo->ReloadValue = (READ_BIT(CRS->CFGR, CRS_CFGR_RELOAD));
 1911              		.loc 1 1564 3 view .LVU614
 1912              		.loc 1 1564 32 is_stmt 0 view .LVU615
 1913 0000 074B     		ldr	r3, .L313
 1914 0002 5A68     		ldr	r2, [r3, #4]
 1915 0004 92B2     		uxth	r2, r2
 1916              		.loc 1 1564 29 view .LVU616
 1917 0006 0260     		str	r2, [r0]
1565:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1566:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get HSI48 oscillator smooth trimming */
1567:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   pSynchroInfo->HSI48CalibrationValue = (READ_BIT(CRS->CR, CRS_CR_TRIM) >> CRS_CR_TRIM_Pos);
 1918              		.loc 1 1567 3 is_stmt 1 view .LVU617
 1919              		.loc 1 1567 42 is_stmt 0 view .LVU618
 1920 0008 1A68     		ldr	r2, [r3]
 1921              		.loc 1 1567 73 view .LVU619
 1922 000a C2F30622 		ubfx	r2, r2, #8, #7
 1923              		.loc 1 1567 39 view .LVU620
 1924 000e 4260     		str	r2, [r0, #4]
1568:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1569:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get Frequency error capture */
1570:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   pSynchroInfo->FreqErrorCapture = (READ_BIT(CRS->ISR, CRS_ISR_FECAP) >> CRS_ISR_FECAP_Pos);
 1925              		.loc 1 1570 3 is_stmt 1 view .LVU621
 1926              		.loc 1 1570 37 is_stmt 0 view .LVU622
 1927 0010 9A68     		ldr	r2, [r3, #8]
 1928              		.loc 1 1570 71 view .LVU623
 1929 0012 120C     		lsrs	r2, r2, #16
 1930              		.loc 1 1570 34 view .LVU624
 1931 0014 8260     		str	r2, [r0, #8]
1571:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1572:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get Frequency error direction */
1573:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   pSynchroInfo->FreqErrorDirection = (READ_BIT(CRS->ISR, CRS_ISR_FEDIR));
 1932              		.loc 1 1573 3 is_stmt 1 view .LVU625
 1933              		.loc 1 1573 39 is_stmt 0 view .LVU626
 1934 0016 9B68     		ldr	r3, [r3, #8]
 1935 0018 03F40043 		and	r3, r3, #32768
 1936              		.loc 1 1573 36 view .LVU627
 1937 001c C360     		str	r3, [r0, #12]
1574:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 1938              		.loc 1 1574 1 view .LVU628
 1939 001e 7047     		bx	lr
 1940              	.L314:
 1941              		.align	2
 1942              	.L313:
 1943 0020 00200040 		.word	1073750016
 1944              		.cfi_endproc
 1945              	.LFE337:
 1947              		.section	.text.HAL_RCCEx_CRSWaitSynchronization,"ax",%progbits
 1948              		.align	1
 1949              		.global	HAL_RCCEx_CRSWaitSynchronization
 1950              		.syntax unified
 1951              		.thumb
 1952              		.thumb_func
 1953              		.fpu fpv4-sp-d16
 1955              	HAL_RCCEx_CRSWaitSynchronization:
 1956              	.LVL138:
 1957              	.LFB338:
1575:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1576:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1577:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** * @brief Wait for CRS Synchronization status.
1578:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** * @param Timeout  Duration of the timeout
1579:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** * @note  Timeout is based on the maximum time to receive a SYNC event based on synchronization
1580:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *        frequency.
1581:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** * @note    If Timeout set to HAL_MAX_DELAY, HAL_TIMEOUT will be never returned.
1582:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** * @retval Combination of Synchronization status
1583:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *          This parameter can be a combination of the following values:
1584:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *            @arg @ref RCC_CRS_TIMEOUT
1585:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *            @arg @ref RCC_CRS_SYNCOK
1586:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *            @arg @ref RCC_CRS_SYNCWARN
1587:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *            @arg @ref RCC_CRS_SYNCERR
1588:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *            @arg @ref RCC_CRS_SYNCMISS
1589:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** *            @arg @ref RCC_CRS_TRIMOVF
1590:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** */
1591:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** uint32_t HAL_RCCEx_CRSWaitSynchronization(uint32_t Timeout)
1592:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 1958              		.loc 1 1592 1 is_stmt 1 view -0
 1959              		.cfi_startproc
 1960              		@ args = 0, pretend = 0, frame = 0
 1961              		@ frame_needed = 0, uses_anonymous_args = 0
1593:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t crsstatus = RCC_CRS_NONE;
 1962              		.loc 1 1593 3 view .LVU630
1594:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t tickstart;
 1963              		.loc 1 1594 3 view .LVU631
1595:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1596:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get timeout */
1597:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   tickstart = HAL_GetTick();
 1964              		.loc 1 1597 3 view .LVU632
1592:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t crsstatus = RCC_CRS_NONE;
 1965              		.loc 1 1592 1 is_stmt 0 view .LVU633
 1966 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1967              		.cfi_def_cfa_offset 24
 1968              		.cfi_offset 4, -24
 1969              		.cfi_offset 5, -20
 1970              		.cfi_offset 6, -16
 1971              		.cfi_offset 7, -12
 1972              		.cfi_offset 8, -8
 1973              		.cfi_offset 14, -4
1592:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t crsstatus = RCC_CRS_NONE;
 1974              		.loc 1 1592 1 view .LVU634
 1975 0004 0646     		mov	r6, r0
 1976              		.loc 1 1597 15 view .LVU635
 1977 0006 FFF7FEFF 		bl	HAL_GetTick
 1978              	.LVL139:
1598:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1599:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Wait for CRS flag or timeout detection */
1600:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   do
1601:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1602:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(Timeout != HAL_MAX_DELAY)
1603:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1604:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if(((HAL_GetTick() - tickstart) > Timeout) || (Timeout == 0U))
1605:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1606:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         crsstatus = RCC_CRS_TIMEOUT;
1607:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1608:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1609:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check CRS SYNCOK flag  */
1610:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_CRS_GET_FLAG(RCC_CRS_FLAG_SYNCOK))
 1979              		.loc 1 1610 8 view .LVU636
 1980 000a 214C     		ldr	r4, .L347
1597:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1981              		.loc 1 1597 15 view .LVU637
 1982 000c 0746     		mov	r7, r0
 1983              	.LVL140:
1597:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 1984              		.loc 1 1597 15 view .LVU638
 1985 000e 2546     		mov	r5, r4
1611:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1612:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* CRS SYNC event OK */
1613:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       crsstatus |= RCC_CRS_SYNCOK;
1614:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1615:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clear CRS SYNC event OK bit */
1616:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_CRS_CLEAR_FLAG(RCC_CRS_FLAG_SYNCOK);
 1986              		.loc 1 1616 7 view .LVU639
 1987 0010 4FF00108 		mov	r8, #1
 1988              	.LVL141:
 1989              	.L325:
1600:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 1990              		.loc 1 1600 3 is_stmt 1 view .LVU640
1602:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 1991              		.loc 1 1602 5 view .LVU641
1602:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 1992              		.loc 1 1602 7 is_stmt 0 view .LVU642
 1993 0014 701C     		adds	r0, r6, #1
 1994 0016 31D1     		bne	.L316
 1995              	.L318:
1606:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 1996              		.loc 1 1606 19 view .LVU643
 1997 0018 0020     		movs	r0, #0
 1998              	.L317:
 1999              	.LVL142:
1610:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 2000              		.loc 1 1610 5 is_stmt 1 view .LVU644
1610:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 2001              		.loc 1 1610 8 is_stmt 0 view .LVU645
 2002 001a A368     		ldr	r3, [r4, #8]
1610:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 2003              		.loc 1 1610 7 view .LVU646
 2004 001c D907     		lsls	r1, r3, #31
1613:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2005              		.loc 1 1613 7 is_stmt 1 view .LVU647
 2006              		.loc 1 1616 7 is_stmt 0 view .LVU648
 2007 001e 48BF     		it	mi
 2008 0020 C4F80C80 		strmi	r8, [r4, #12]
1617:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1618:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1619:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check CRS SYNCWARN flag  */
1620:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_CRS_GET_FLAG(RCC_CRS_FLAG_SYNCWARN))
 2009              		.loc 1 1620 8 view .LVU649
 2010 0024 AB68     		ldr	r3, [r5, #8]
1613:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2011              		.loc 1 1613 17 view .LVU650
 2012 0026 48BF     		it	mi
 2013 0028 40F00200 		orrmi	r0, r0, #2
 2014              	.LVL143:
1616:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2015              		.loc 1 1616 7 is_stmt 1 view .LVU651
1616:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2016              		.loc 1 1616 7 view .LVU652
1616:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2017              		.loc 1 1616 7 view .LVU653
 2018              		.loc 1 1620 5 view .LVU654
 2019              		.loc 1 1620 7 is_stmt 0 view .LVU655
 2020 002c 9A07     		lsls	r2, r3, #30
1621:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1622:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* CRS SYNC warning */
1623:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       crsstatus |= RCC_CRS_SYNCWARN;
 2021              		.loc 1 1623 7 is_stmt 1 view .LVU656
1624:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1625:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clear CRS SYNCWARN bit */
1626:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_CRS_CLEAR_FLAG(RCC_CRS_FLAG_SYNCWARN);
 2022              		.loc 1 1626 7 is_stmt 0 view .LVU657
 2023 002e 44BF     		itt	mi
 2024 0030 0223     		movmi	r3, #2
 2025 0032 EB60     		strmi	r3, [r5, #12]
1627:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1628:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1629:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check CRS TRIM overflow flag  */
1630:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_CRS_GET_FLAG(RCC_CRS_FLAG_TRIMOVF))
 2026              		.loc 1 1630 8 view .LVU658
 2027 0034 A368     		ldr	r3, [r4, #8]
1623:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2028              		.loc 1 1623 17 view .LVU659
 2029 0036 48BF     		it	mi
 2030 0038 40F00400 		orrmi	r0, r0, #4
 2031              	.LVL144:
1626:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2032              		.loc 1 1626 7 is_stmt 1 view .LVU660
1626:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2033              		.loc 1 1626 7 view .LVU661
1626:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2034              		.loc 1 1626 7 view .LVU662
 2035              		.loc 1 1630 5 view .LVU663
 2036              		.loc 1 1630 7 is_stmt 0 view .LVU664
 2037 003c 5B05     		lsls	r3, r3, #21
1631:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1632:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* CRS SYNC Error */
1633:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       crsstatus |= RCC_CRS_TRIMOVF;
 2038              		.loc 1 1633 7 is_stmt 1 view .LVU665
1634:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1635:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clear CRS Error bit */
1636:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_CRS_CLEAR_FLAG(RCC_CRS_FLAG_TRIMOVF);
 2039              		.loc 1 1636 7 is_stmt 0 view .LVU666
 2040 003e 44BF     		itt	mi
 2041 0040 0423     		movmi	r3, #4
 2042 0042 E360     		strmi	r3, [r4, #12]
1637:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1638:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1639:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check CRS Error flag  */
1640:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_CRS_GET_FLAG(RCC_CRS_FLAG_SYNCERR))
 2043              		.loc 1 1640 8 view .LVU667
 2044 0044 AB68     		ldr	r3, [r5, #8]
1633:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2045              		.loc 1 1633 17 view .LVU668
 2046 0046 48BF     		it	mi
 2047 0048 40F02000 		orrmi	r0, r0, #32
 2048              	.LVL145:
1636:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2049              		.loc 1 1636 7 is_stmt 1 view .LVU669
1636:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2050              		.loc 1 1636 7 view .LVU670
1636:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2051              		.loc 1 1636 7 view .LVU671
 2052              		.loc 1 1640 5 view .LVU672
 2053              		.loc 1 1640 7 is_stmt 0 view .LVU673
 2054 004c D905     		lsls	r1, r3, #23
1641:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1642:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* CRS SYNC Error */
1643:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       crsstatus |= RCC_CRS_SYNCERR;
 2055              		.loc 1 1643 7 is_stmt 1 view .LVU674
1644:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1645:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clear CRS Error bit */
1646:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_CRS_CLEAR_FLAG(RCC_CRS_FLAG_SYNCERR);
 2056              		.loc 1 1646 7 is_stmt 0 view .LVU675
 2057 004e 44BF     		itt	mi
 2058 0050 0423     		movmi	r3, #4
 2059 0052 EB60     		strmi	r3, [r5, #12]
1647:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1648:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1649:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check CRS SYNC Missed flag  */
1650:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_CRS_GET_FLAG(RCC_CRS_FLAG_SYNCMISS))
 2060              		.loc 1 1650 8 view .LVU676
 2061 0054 A368     		ldr	r3, [r4, #8]
1643:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2062              		.loc 1 1643 17 view .LVU677
 2063 0056 48BF     		it	mi
 2064 0058 40F00800 		orrmi	r0, r0, #8
 2065              	.LVL146:
1646:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2066              		.loc 1 1646 7 is_stmt 1 view .LVU678
1646:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2067              		.loc 1 1646 7 view .LVU679
1646:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2068              		.loc 1 1646 7 view .LVU680
 2069              		.loc 1 1650 5 view .LVU681
 2070              		.loc 1 1650 7 is_stmt 0 view .LVU682
 2071 005c 9A05     		lsls	r2, r3, #22
1651:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1652:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* CRS SYNC Missed */
1653:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       crsstatus |= RCC_CRS_SYNCMISS;
 2072              		.loc 1 1653 7 is_stmt 1 view .LVU683
1654:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1655:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clear CRS SYNC Missed bit */
1656:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_CRS_CLEAR_FLAG(RCC_CRS_FLAG_SYNCMISS);
 2073              		.loc 1 1656 7 is_stmt 0 view .LVU684
 2074 005e 44BF     		itt	mi
 2075 0060 0423     		movmi	r3, #4
 2076 0062 E360     		strmi	r3, [r4, #12]
1657:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1658:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1659:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Check CRS Expected SYNC flag  */
1660:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(__HAL_RCC_CRS_GET_FLAG(RCC_CRS_FLAG_ESYNC))
 2077              		.loc 1 1660 8 view .LVU685
 2078 0064 AB68     		ldr	r3, [r5, #8]
1653:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2079              		.loc 1 1653 17 view .LVU686
 2080 0066 48BF     		it	mi
 2081 0068 40F01000 		orrmi	r0, r0, #16
 2082              	.LVL147:
1656:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2083              		.loc 1 1656 7 is_stmt 1 view .LVU687
1656:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2084              		.loc 1 1656 7 view .LVU688
1656:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2085              		.loc 1 1656 7 view .LVU689
 2086              		.loc 1 1660 5 view .LVU690
 2087              		.loc 1 1660 7 is_stmt 0 view .LVU691
 2088 006c 1B07     		lsls	r3, r3, #28
1661:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1662:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* frequency error counter reached a zero value */
1663:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       __HAL_RCC_CRS_CLEAR_FLAG(RCC_CRS_FLAG_ESYNC);
 2089              		.loc 1 1663 7 is_stmt 1 view .LVU692
 2090              		.loc 1 1663 7 view .LVU693
 2091              		.loc 1 1663 7 view .LVU694
 2092 006e 44BF     		itt	mi
 2093 0070 0823     		movmi	r3, #8
 2094 0072 EB60     		strmi	r3, [r5, #12]
1664:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1665:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   } while(RCC_CRS_NONE == crsstatus);
 2095              		.loc 1 1665 3 is_stmt 0 view .LVU695
 2096 0074 0028     		cmp	r0, #0
 2097 0076 CDD0     		beq	.L325
1666:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1667:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   return crsstatus;
1668:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 2098              		.loc 1 1668 1 view .LVU696
 2099 0078 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2100              	.LVL148:
 2101              	.L316:
1604:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2102              		.loc 1 1604 7 is_stmt 1 view .LVU697
1604:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2103              		.loc 1 1604 12 is_stmt 0 view .LVU698
 2104 007c FFF7FEFF 		bl	HAL_GetTick
 2105              	.LVL149:
1604:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2106              		.loc 1 1604 26 view .LVU699
 2107 0080 C01B     		subs	r0, r0, r7
1604:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2108              		.loc 1 1604 9 view .LVU700
 2109 0082 B042     		cmp	r0, r6
 2110 0084 01D8     		bhi	.L326
1604:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2111              		.loc 1 1604 50 discriminator 1 view .LVU701
 2112 0086 002E     		cmp	r6, #0
 2113 0088 C6D1     		bne	.L318
 2114              	.L326:
1606:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 2115              		.loc 1 1606 19 view .LVU702
 2116 008a 0120     		movs	r0, #1
 2117 008c C5E7     		b	.L317
 2118              	.L348:
 2119 008e 00BF     		.align	2
 2120              	.L347:
 2121 0090 00200040 		.word	1073750016
 2122              		.cfi_endproc
 2123              	.LFE338:
 2125              		.section	.text.HAL_RCCEx_CRS_SyncOkCallback,"ax",%progbits
 2126              		.align	1
 2127              		.weak	HAL_RCCEx_CRS_SyncOkCallback
 2128              		.syntax unified
 2129              		.thumb
 2130              		.thumb_func
 2131              		.fpu fpv4-sp-d16
 2133              	HAL_RCCEx_CRS_SyncOkCallback:
 2134              	.LFB345:
 2135              		.cfi_startproc
 2136              		@ args = 0, pretend = 0, frame = 0
 2137              		@ frame_needed = 0, uses_anonymous_args = 0
 2138              		@ link register save eliminated.
 2139 0000 7047     		bx	lr
 2140              		.cfi_endproc
 2141              	.LFE345:
 2143              		.section	.text.HAL_RCCEx_CRS_SyncWarnCallback,"ax",%progbits
 2144              		.align	1
 2145              		.weak	HAL_RCCEx_CRS_SyncWarnCallback
 2146              		.syntax unified
 2147              		.thumb
 2148              		.thumb_func
 2149              		.fpu fpv4-sp-d16
 2151              	HAL_RCCEx_CRS_SyncWarnCallback:
 2152              	.LFB347:
 2153              		.cfi_startproc
 2154              		@ args = 0, pretend = 0, frame = 0
 2155              		@ frame_needed = 0, uses_anonymous_args = 0
 2156              		@ link register save eliminated.
 2157 0000 7047     		bx	lr
 2158              		.cfi_endproc
 2159              	.LFE347:
 2161              		.section	.text.HAL_RCCEx_CRS_ExpectedSyncCallback,"ax",%progbits
 2162              		.align	1
 2163              		.weak	HAL_RCCEx_CRS_ExpectedSyncCallback
 2164              		.syntax unified
 2165              		.thumb
 2166              		.thumb_func
 2167              		.fpu fpv4-sp-d16
 2169              	HAL_RCCEx_CRS_ExpectedSyncCallback:
 2170              	.LFB349:
 2171              		.cfi_startproc
 2172              		@ args = 0, pretend = 0, frame = 0
 2173              		@ frame_needed = 0, uses_anonymous_args = 0
 2174              		@ link register save eliminated.
 2175 0000 7047     		bx	lr
 2176              		.cfi_endproc
 2177              	.LFE349:
 2179              		.section	.text.HAL_RCCEx_CRS_ErrorCallback,"ax",%progbits
 2180              		.align	1
 2181              		.weak	HAL_RCCEx_CRS_ErrorCallback
 2182              		.syntax unified
 2183              		.thumb
 2184              		.thumb_func
 2185              		.fpu fpv4-sp-d16
 2187              	HAL_RCCEx_CRS_ErrorCallback:
 2188              	.LVL150:
 2189              	.LFB343:
1669:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1670:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1671:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief Handle the Clock Recovery System interrupt request.
1672:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval None
1673:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1674:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** void HAL_RCCEx_CRS_IRQHandler(void)
1675:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
1676:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t crserror = RCC_CRS_NONE;
1677:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get current IT flags and IT sources values */
1678:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t itflags = READ_REG(CRS->ISR);
1679:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t itsources = READ_REG(CRS->CR);
1680:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1681:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check CRS SYNCOK flag  */
1682:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   if(((itflags & RCC_CRS_FLAG_SYNCOK) != 0U) && ((itsources & RCC_CRS_IT_SYNCOK) != 0U))
1683:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1684:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Clear CRS SYNC event OK flag */
1685:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     WRITE_REG(CRS->ICR, CRS_ICR_SYNCOKC);
1686:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1687:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* user callback */
1688:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_RCCEx_CRS_SyncOkCallback();
1689:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1690:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check CRS SYNCWARN flag  */
1691:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   else if(((itflags & RCC_CRS_FLAG_SYNCWARN) != 0U) && ((itsources & RCC_CRS_IT_SYNCWARN) != 0U))
1692:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1693:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* Clear CRS SYNCWARN flag */
1694:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     WRITE_REG(CRS->ICR, CRS_ICR_SYNCWARNC);
1695:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1696:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* user callback */
1697:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_RCCEx_CRS_SyncWarnCallback();
1698:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1699:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check CRS Expected SYNC flag  */
1700:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   else if(((itflags & RCC_CRS_FLAG_ESYNC) != 0U) && ((itsources & RCC_CRS_IT_ESYNC) != 0U))
1701:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1702:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* frequency error counter reached a zero value */
1703:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     WRITE_REG(CRS->ICR, CRS_ICR_ESYNCC);
1704:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1705:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     /* user callback */
1706:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     HAL_RCCEx_CRS_ExpectedSyncCallback();
1707:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1708:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Check CRS Error flags  */
1709:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   else
1710:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
1711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     if(((itflags & RCC_CRS_FLAG_ERR) != 0U) && ((itsources & RCC_CRS_IT_ERR) != 0U))
1712:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
1713:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if((itflags & RCC_CRS_FLAG_SYNCERR) != 0U)
1714:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1715:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         crserror |= RCC_CRS_SYNCERR;
1716:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1717:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if((itflags & RCC_CRS_FLAG_SYNCMISS) != 0U)
1718:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1719:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         crserror |= RCC_CRS_SYNCMISS;
1720:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1721:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       if((itflags & RCC_CRS_FLAG_TRIMOVF) != 0U)
1722:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
1723:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****         crserror |= RCC_CRS_TRIMOVF;
1724:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
1725:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1726:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* Clear CRS Error flags */
1727:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       WRITE_REG(CRS->ICR, CRS_ICR_ERRC);
1728:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1729:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       /* user error callback */
1730:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       HAL_RCCEx_CRS_ErrorCallback(crserror);
1731:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
1732:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
1733:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
1734:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1735:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1736:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  RCCEx Clock Recovery System SYNCOK interrupt callback.
1737:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval none
1738:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1739:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** __weak void HAL_RCCEx_CRS_SyncOkCallback(void)
1740:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
1741:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1742:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             the @ref HAL_RCCEx_CRS_SyncOkCallback should be implemented in the user file
1743:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****    */
1744:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
1745:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1746:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1747:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  RCCEx Clock Recovery System SYNCWARN interrupt callback.
1748:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval none
1749:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1750:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** __weak void HAL_RCCEx_CRS_SyncWarnCallback(void)
1751:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
1752:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1753:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             the @ref HAL_RCCEx_CRS_SyncWarnCallback should be implemented in the user file
1754:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****    */
1755:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
1756:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1757:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1758:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  RCCEx Clock Recovery System Expected SYNC interrupt callback.
1759:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval none
1760:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1761:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** __weak void HAL_RCCEx_CRS_ExpectedSyncCallback(void)
1762:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
1763:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1764:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             the @ref HAL_RCCEx_CRS_ExpectedSyncCallback should be implemented in the user file
1765:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****    */
1766:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
1767:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1768:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** /**
1769:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @brief  RCCEx Clock Recovery System Error interrupt callback.
1770:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @param  Error Combination of Error status.
1771:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *         This parameter can be a combination of the following values:
1772:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *           @arg @ref RCC_CRS_SYNCERR
1773:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *           @arg @ref RCC_CRS_SYNCMISS
1774:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   *           @arg @ref RCC_CRS_TRIMOVF
1775:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   * @retval none
1776:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   */
1777:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** __weak void HAL_RCCEx_CRS_ErrorCallback(uint32_t Error)
1778:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** {
 2190              		.loc 1 1778 1 is_stmt 1 view -0
 2191              		.cfi_startproc
 2192              		@ args = 0, pretend = 0, frame = 0
 2193              		@ frame_needed = 0, uses_anonymous_args = 0
 2194              		@ link register save eliminated.
1779:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Prevent unused argument(s) compilation warning */
1780:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   UNUSED(Error);
 2195              		.loc 1 1780 3 view .LVU704
1781:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
1782:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1783:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****             the @ref HAL_RCCEx_CRS_ErrorCallback should be implemented in the user file
1784:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****    */
1785:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** }
 2196              		.loc 1 1785 1 is_stmt 0 view .LVU705
 2197 0000 7047     		bx	lr
 2198              		.cfi_endproc
 2199              	.LFE343:
 2201              		.section	.text.HAL_RCCEx_CRS_IRQHandler,"ax",%progbits
 2202              		.align	1
 2203              		.global	HAL_RCCEx_CRS_IRQHandler
 2204              		.syntax unified
 2205              		.thumb
 2206              		.thumb_func
 2207              		.fpu fpv4-sp-d16
 2209              	HAL_RCCEx_CRS_IRQHandler:
 2210              	.LFB339:
1675:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t crserror = RCC_CRS_NONE;
 2211              		.loc 1 1675 1 is_stmt 1 view -0
 2212              		.cfi_startproc
 2213              		@ args = 0, pretend = 0, frame = 0
 2214              		@ frame_needed = 0, uses_anonymous_args = 0
1676:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   /* Get current IT flags and IT sources values */
 2215              		.loc 1 1676 3 view .LVU707
 2216              	.LVL151:
1678:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t itsources = READ_REG(CRS->CR);
 2217              		.loc 1 1678 3 view .LVU708
1678:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t itsources = READ_REG(CRS->CR);
 2218              		.loc 1 1678 12 is_stmt 0 view .LVU709
 2219 0000 1D49     		ldr	r1, .L392
1675:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t crserror = RCC_CRS_NONE;
 2220              		.loc 1 1675 1 view .LVU710
 2221 0002 08B5     		push	{r3, lr}
 2222              		.cfi_def_cfa_offset 8
 2223              		.cfi_offset 3, -8
 2224              		.cfi_offset 14, -4
1678:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   uint32_t itsources = READ_REG(CRS->CR);
 2225              		.loc 1 1678 12 view .LVU711
 2226 0004 8B68     		ldr	r3, [r1, #8]
 2227              	.LVL152:
1679:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2228              		.loc 1 1679 3 is_stmt 1 view .LVU712
1679:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2229              		.loc 1 1679 12 is_stmt 0 view .LVU713
 2230 0006 0A68     		ldr	r2, [r1]
 2231              	.LVL153:
1682:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2232              		.loc 1 1682 3 is_stmt 1 view .LVU714
1682:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2233              		.loc 1 1682 5 is_stmt 0 view .LVU715
 2234 0008 13F0010F 		tst	r3, #1
 2235 000c 07D0     		beq	.L354
1682:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2236              		.loc 1 1682 46 discriminator 1 view .LVU716
 2237 000e 12F0010F 		tst	r2, #1
 2238 0012 04D0     		beq	.L354
1685:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2239              		.loc 1 1685 5 is_stmt 1 view .LVU717
 2240 0014 0123     		movs	r3, #1
 2241              	.LVL154:
1685:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2242              		.loc 1 1685 5 is_stmt 0 view .LVU718
 2243 0016 CB60     		str	r3, [r1, #12]
1688:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 2244              		.loc 1 1688 5 is_stmt 1 view .LVU719
 2245 0018 FFF7FEFF 		bl	HAL_RCCEx_CRS_SyncOkCallback
 2246              	.LVL155:
 2247              	.L353:
1733:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2248              		.loc 1 1733 1 is_stmt 0 view .LVU720
 2249 001c 08BD     		pop	{r3, pc}
 2250              	.LVL156:
 2251              	.L354:
1691:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2252              		.loc 1 1691 8 is_stmt 1 view .LVU721
1691:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2253              		.loc 1 1691 10 is_stmt 0 view .LVU722
 2254 001e 9907     		lsls	r1, r3, #30
 2255 0020 07D5     		bpl	.L356
1691:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2256              		.loc 1 1691 53 discriminator 1 view .LVU723
 2257 0022 9107     		lsls	r1, r2, #30
 2258 0024 05D5     		bpl	.L356
1694:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2259              		.loc 1 1694 5 is_stmt 1 view .LVU724
 2260 0026 144B     		ldr	r3, .L392
 2261              	.LVL157:
1694:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2262              		.loc 1 1694 5 is_stmt 0 view .LVU725
 2263 0028 0222     		movs	r2, #2
 2264              	.LVL158:
1694:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2265              		.loc 1 1694 5 view .LVU726
 2266 002a DA60     		str	r2, [r3, #12]
1697:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 2267              		.loc 1 1697 5 is_stmt 1 view .LVU727
 2268 002c FFF7FEFF 		bl	HAL_RCCEx_CRS_SyncWarnCallback
 2269              	.LVL159:
 2270 0030 F4E7     		b	.L353
 2271              	.LVL160:
 2272              	.L356:
1700:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2273              		.loc 1 1700 8 view .LVU728
1700:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2274              		.loc 1 1700 10 is_stmt 0 view .LVU729
 2275 0032 1907     		lsls	r1, r3, #28
 2276 0034 07D5     		bpl	.L357
1700:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   {
 2277              		.loc 1 1700 50 discriminator 1 view .LVU730
 2278 0036 1107     		lsls	r1, r2, #28
 2279 0038 05D5     		bpl	.L357
1703:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2280              		.loc 1 1703 5 is_stmt 1 view .LVU731
 2281 003a 0F4B     		ldr	r3, .L392
 2282              	.LVL161:
1703:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2283              		.loc 1 1703 5 is_stmt 0 view .LVU732
 2284 003c 0822     		movs	r2, #8
 2285              	.LVL162:
1703:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2286              		.loc 1 1703 5 view .LVU733
 2287 003e DA60     		str	r2, [r3, #12]
1706:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****   }
 2288              		.loc 1 1706 5 is_stmt 1 view .LVU734
 2289 0040 FFF7FEFF 		bl	HAL_RCCEx_CRS_ExpectedSyncCallback
 2290              	.LVL163:
 2291 0044 EAE7     		b	.L353
 2292              	.LVL164:
 2293              	.L357:
1711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 2294              		.loc 1 1711 5 view .LVU735
1711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 2295              		.loc 1 1711 7 is_stmt 0 view .LVU736
 2296 0046 5907     		lsls	r1, r3, #29
 2297 0048 E8D5     		bpl	.L353
1711:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     {
 2298              		.loc 1 1711 45 discriminator 1 view .LVU737
 2299 004a 5107     		lsls	r1, r2, #29
 2300 004c E6D5     		bpl	.L353
1713:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2301              		.loc 1 1713 7 is_stmt 1 view .LVU738
1715:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 2302              		.loc 1 1715 18 is_stmt 0 view .LVU739
 2303 004e 13F4807F 		tst	r3, #256
 2304 0052 0CBF     		ite	eq
 2305 0054 0020     		moveq	r0, #0
 2306 0056 0820     		movne	r0, #8
 2307              	.LVL165:
1717:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2308              		.loc 1 1717 7 is_stmt 1 view .LVU740
1717:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2309              		.loc 1 1717 9 is_stmt 0 view .LVU741
 2310 0058 9A05     		lsls	r2, r3, #22
 2311              	.LVL166:
1719:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 2312              		.loc 1 1719 9 is_stmt 1 view .LVU742
1719:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 2313              		.loc 1 1719 18 is_stmt 0 view .LVU743
 2314 005a 48BF     		it	mi
 2315 005c 40F01000 		orrmi	r0, r0, #16
 2316              	.LVL167:
1721:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2317              		.loc 1 1721 7 is_stmt 1 view .LVU744
1721:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       {
 2318              		.loc 1 1721 9 is_stmt 0 view .LVU745
 2319 0060 5B05     		lsls	r3, r3, #21
 2320              	.LVL168:
1723:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 2321              		.loc 1 1723 9 is_stmt 1 view .LVU746
1727:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2322              		.loc 1 1727 7 is_stmt 0 view .LVU747
 2323 0062 054B     		ldr	r3, .L392
 2324 0064 4FF00402 		mov	r2, #4
1723:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****       }
 2325              		.loc 1 1723 18 view .LVU748
 2326 0068 48BF     		it	mi
 2327 006a 40F02000 		orrmi	r0, r0, #32
 2328              	.LVL169:
1727:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2329              		.loc 1 1727 7 is_stmt 1 view .LVU749
 2330 006e DA60     		str	r2, [r3, #12]
1730:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c ****     }
 2331              		.loc 1 1730 7 view .LVU750
 2332 0070 FFF7FEFF 		bl	HAL_RCCEx_CRS_ErrorCallback
 2333              	.LVL170:
1733:../../..\CubeG4\src/stm32g4xx_hal_rcc_ex.c **** 
 2334              		.loc 1 1733 1 is_stmt 0 view .LVU751
 2335 0074 D2E7     		b	.L353
 2336              	.L393:
 2337 0076 00BF     		.align	2
 2338              	.L392:
 2339 0078 00200040 		.word	1073750016
 2340              		.cfi_endproc
 2341              	.LFE339:
 2343              		.text
 2344              	.Letext0:
 2345              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2346              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2347              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 2348              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 2349              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 2350              		.file 7 "../../..\\CubeG4\\include/stm32g4xx.h"
 2351              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 2352              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_rcc_ex.h"
 2353              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_gpio.h"
 2354              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 2355              		.file 12 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
 2356              		.file 13 "../../..\\CubeG4\\include/stm32g4xx_hal_pwr.h"
 2357              		.file 14 "../../..\\CubeG4\\include/stm32g4xx_hal_rcc.h"
