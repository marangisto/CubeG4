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
  13              		.file	"stm32g4xx_hal_gpio.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_GPIO_Init,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_GPIO_Init
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_GPIO_Init:
  27              	.LVL0:
  28              	.LFB325:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_gpio.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @file    stm32g4xx_hal_gpio.c
   4:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief   GPIO HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *          functionalities of the General Purpose Input/Output (GPIO) peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *           + Initialization and de-initialization functions
   9:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *           + IO operation functions
  10:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   @verbatim
  12:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   ==============================================================================
  13:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****                     ##### GPIO Peripheral features #####
  14:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   ==============================================================================
  15:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   [..]
  16:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (+) Each port bit of the general-purpose I/O (GPIO) ports can be individually
  17:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         configured by software in several modes:
  18:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) Input mode
  19:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) Analog mode
  20:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) Output mode
  21:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) Alternate function mode
  22:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) External interrupt/event lines
  23:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  24:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (+) During and just after reset, the alternate functions and external interrupt
  25:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         lines are not active and the I/O ports are configured in input floating mode.
  26:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  27:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (+) All GPIO pins have weak internal pull-up and pull-down resistors, which can be
  28:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         activated or not.
  29:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  30:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (+) In Output or Alternate mode, each IO can be configured on open-drain or push-pull
  31:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         type and the IO speed can be selected depending on the VDD value.
  32:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  33:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (+) The microcontroller IO pins are connected to onboard peripherals/modules through a
  34:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         multiplexer that allows only one peripheral alternate function (AF) connected
  35:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****        to an IO pin at a time. In this way, there can be no conflict between peripherals
  36:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****        sharing the same IO pin.
  37:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  38:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (+) All ports have external interrupt/event capability. To use external interrupt
  39:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         lines, the port must be configured in input mode. All available GPIO pins are
  40:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         connected to the 16 external interrupt/event lines from EXTI0 to EXTI15.
  41:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  42:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (+) The external interrupt/event controller consists of up to 44 edge detectors
  43:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (16 lines are connected to GPIO) for generating event/interrupt requests (each
  44:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         input line can be independently configured to select the type (interrupt or event)
  45:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         and the corresponding trigger event (rising or falling or both). Each line can
  46:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         also be masked independently.
  47:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  48:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****                      ##### How to use this driver #####
  49:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   ==============================================================================
  50:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   [..]
  51:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) Enable the GPIO AHB clock using the following function: __HAL_RCC_GPIOx_CLK_ENABLE().
  52:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  53:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) Configure the GPIO pin(s) using HAL_GPIO_Init().
  54:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) Configure the IO mode using "Mode" member from GPIO_InitTypeDef structure
  55:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) Activate Pull-up, Pull-down resistor using "Pull" member from GPIO_InitTypeDef
  56:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****              structure.
  57:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) In case of Output or alternate function mode selection: the speed is
  58:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****              configured through "Speed" member from GPIO_InitTypeDef structure.
  59:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) In alternate mode is selection, the alternate function connected to the IO
  60:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****              is configured through "Alternate" member from GPIO_InitTypeDef structure.
  61:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) Analog mode is required when a pin is to be used as ADC channel
  62:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****              or DAC output.
  63:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (++) In case of external interrupt/event selection the "Mode" member from
  64:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****              GPIO_InitTypeDef structure select the type (interrupt or event) and
  65:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****              the corresponding trigger event (rising or falling or both).
  66:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  67:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) In case of external interrupt/event mode selection, configure NVIC IRQ priority
  68:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         mapped to the EXTI line using HAL_NVIC_SetPriority() and enable it using
  69:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         HAL_NVIC_EnableIRQ().
  70:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  71:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) To get the level of a pin configured in input mode use HAL_GPIO_ReadPin().
  72:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  73:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) To set/reset the level of a pin configured in output mode use
  74:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         HAL_GPIO_WritePin()/HAL_GPIO_TogglePin().
  75:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  76:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****    (#) To lock pin configuration until next reset use HAL_GPIO_LockPin().
  77:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  78:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) During and just after reset, the alternate functions are not
  79:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         active and the GPIO pins are configured in input floating mode (except JTAG
  80:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         pins).
  81:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  82:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) The LSE oscillator pins OSC32_IN and OSC32_OUT can be used as general purpose
  83:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         (PC14 and PC15, respectively) when the LSE oscillator is off. The LSE has
  84:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         priority over the GPIO function.
  85:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  86:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     (#) The HSE oscillator pins OSC_IN/OSC_OUT can be used as
  87:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         general purpose PF0 and PF1, respectively, when the HSE oscillator is off.
  88:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         The HSE has priority over the GPIO function.
  89:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  90:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   @endverbatim
  91:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   ******************************************************************************
  92:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @attention
  93:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
  94:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  95:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * All rights reserved.</center></h2>
  96:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
  97:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  98:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * the "License"; You may not use this file except in compliance with the
  99:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * License. You may obtain a copy of the License at:
 100:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *                        opensource.org/licenses/BSD-3-Clause
 101:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
 102:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   ******************************************************************************
 103:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 104:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 105:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /* Includes ------------------------------------------------------------------*/
 106:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #include "stm32g4xx_hal.h"
 107:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 108:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /** @addtogroup STM32G4xx_HAL_Driver
 109:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @{
 110:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 111:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 112:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /** @addtogroup GPIO
 113:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @{
 114:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /** MISRA C:2012 deviation rule has been granted for following rules:
 116:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * Rule-12.2 - Medium: RHS argument is in interval [0,INF] which is out of
 117:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * range of the shift operator in following API :
 118:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * HAL_GPIO_Init
 119:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * HAL_GPIO_DeInit
 120:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 121:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 122:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #ifdef HAL_GPIO_MODULE_ENABLED
 123:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 124:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /* Private typedef -----------------------------------------------------------*/
 125:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /* Private defines ------------------------------------------------------------*/
 126:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /** @defgroup GPIO_Private_Constants GPIO Private Constants
 127:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @{
 128:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 129:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define GPIO_MODE             (0x00000003U)
 130:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define EXTI_MODE             (0x10000000U)
 131:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define GPIO_MODE_IT          (0x00010000U)
 132:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define GPIO_MODE_EVT         (0x00020000U)
 133:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define RISING_EDGE           (0x00100000U)
 134:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define FALLING_EDGE          (0x00200000U)
 135:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define GPIO_OUTPUT_TYPE      (0x00000010U)
 136:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 137:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** #define GPIO_NUMBER           (16U)
 138:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 139:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @}
 140:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 141:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 142:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /* Private macros ------------------------------------------------------------*/
 143:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /* Private variables ---------------------------------------------------------*/
 144:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /* Private function prototypes -----------------------------------------------*/
 145:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /* Exported functions --------------------------------------------------------*/
 146:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 147:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /** @addtogroup GPIO_Exported_Functions
 148:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @{
 149:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 150:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 151:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /** @defgroup GPIO_Exported_Functions_Group1 Initialization/de-initialization functions
 152:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *  @brief    Initialization and Configuration functions
 153:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
 154:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** @verbatim
 155:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****  ===============================================================================
 156:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****               ##### Initialization and de-initialization functions #####
 157:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****  ===============================================================================
 158:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 159:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** @endverbatim
 160:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @{
 161:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 162:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 163:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 164:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  Initialize the GPIOx peripheral according to the specified parameters in the GPIO_Init.
 165:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIOx where x can be (A..G) to select the GPIO peripheral for STM32G4xx family
 166:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
 167:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         the configuration information for the specified GPIO peripheral.
 168:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval None
 169:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 170:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
 171:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
  30              		.loc 1 171 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 16
  33              		@ frame_needed = 0, uses_anonymous_args = 0
 172:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t position = 0x00U;
  34              		.loc 1 172 3 view .LVU1
 173:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t iocurrent;
  35              		.loc 1 173 3 view .LVU2
 174:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t temp;
  36              		.loc 1 174 3 view .LVU3
 175:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 176:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Check the parameters */
 177:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
  37              		.loc 1 177 3 view .LVU4
 178:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  38              		.loc 1 178 3 view .LVU5
 179:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
  39              		.loc 1 179 3 view .LVU6
 180:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PULL(GPIO_Init->Pull));
  40              		.loc 1 180 3 view .LVU7
 181:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 182:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Configure the port pins */
 183:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   while (((GPIO_Init->Pin) >> position) != 0U)
  41              		.loc 1 183 3 view .LVU8
 171:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t position = 0x00U;
  42              		.loc 1 171 1 is_stmt 0 view .LVU9
  43 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  44              		.cfi_def_cfa_offset 36
  45              		.cfi_offset 4, -36
  46              		.cfi_offset 5, -32
  47              		.cfi_offset 6, -28
  48              		.cfi_offset 7, -24
  49              		.cfi_offset 8, -20
  50              		.cfi_offset 9, -16
  51              		.cfi_offset 10, -12
  52              		.cfi_offset 11, -8
  53              		.cfi_offset 14, -4
 184:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 185:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     /* Get current io position */
 186:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     iocurrent = (GPIO_Init->Pin) & (1UL << position);
 187:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 188:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     if (iocurrent != 0x00u)
 189:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
 190:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /*--------------------- GPIO Mode Configuration ------------------------*/
 191:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* In case of Alternate function mode selection */
 192:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if ((GPIO_Init->Mode == GPIO_MODE_AF_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 193:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 194:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Check the Alternate function parameters */
 195:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         assert_param(IS_GPIO_AF_INSTANCE(GPIOx));
 196:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
 197:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 198:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Configure Alternate function mapped with the current IO */
 199:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = GPIOx->AFR[position >> 3U];
 200:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(0xFU << ((position & 0x07U) * 4U));
 201:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 202:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->AFR[position >> 3U] = temp;
 203:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 204:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 205:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
 206:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp = GPIOx->MODER;
 207:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 208:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 209:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->MODER = temp;
 210:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 211:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* In case of Output or Alternate function mode selection */
 212:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 213:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 214:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 215:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Check the Speed parameter */
 216:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
 217:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Configure the IO Speed */
 218:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = GPIOx->OSPEEDR;
 219:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 220:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_Init->Speed << (position * 2U));
 221:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OSPEEDR = temp;
 222:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 223:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Configure the IO Output Type */
 224:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = GPIOx->OTYPER;
 225:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(GPIO_OTYPER_OT0 << position) ;
 226:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 227:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OTYPER = temp;
 228:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 229:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 230:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Activate the Pull-up or Pull down resistor for the current IO */
 231:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp = GPIOx->PUPDR;
 232:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 233:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Pull) << (position * 2U));
 234:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->PUPDR = temp;
 235:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 236:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /*--------------------- EXTI Mode Configuration ------------------------*/
 237:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Configure the External Interrupt or event for the current IO */
 238:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if ((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 239:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 240:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Enable SYSCFG Clock */
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         __HAL_RCC_SYSCFG_CLK_ENABLE();
 242:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 243:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = SYSCFG->EXTICR[position >> 2U];
 244:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(0x0FUL << (4U * (position & 0x03U)));
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U)));
 246:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 247:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 248:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Clear EXTI line configuration */
 249:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = EXTI->IMR1;
  54              		.loc 1 249 14 view .LVU10
  55 0004 644A     		ldr	r2, .L27
 183:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
  56              		.loc 1 183 21 view .LVU11
  57 0006 D1F80080 		ldr	r8, [r1]
  58              	.LBB2:
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  59              		.loc 1 241 9 view .LVU12
  60 000a DFF89491 		ldr	r9, .L27+8
  61              	.LBE2:
 171:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t position = 0x00U;
  62              		.loc 1 171 1 view .LVU13
  63 000e 85B0     		sub	sp, sp, #20
  64              		.cfi_def_cfa_offset 56
 172:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t iocurrent;
  65              		.loc 1 172 12 view .LVU14
  66 0010 0023     		movs	r3, #0
  67              	.LVL1:
  68              	.L2:
 183:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
  69              		.loc 1 183 9 view .LVU15
  70 0012 38FA03F4 		lsrs	r4, r8, r3
  71 0016 02D1     		bne	.L17
 250:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 251:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 252:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 253:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           temp |= iocurrent;
 254:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 255:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->IMR1 = temp;
 256:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 257:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = EXTI->EMR1;
 258:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 259:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 260:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 261:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           temp |= iocurrent;
 262:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 263:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->EMR1 = temp;
 264:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 265:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Clear Rising Falling edge configuration */
 266:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = EXTI->RTSR1;
 267:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 268:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 269:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 270:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           temp |= iocurrent;
 271:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 272:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->RTSR1 = temp;
 273:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 274:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp = EXTI->FTSR1;
 275:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 276:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 277:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 278:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           temp |= iocurrent;
 279:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 280:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->FTSR1 = temp;
 281:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 282:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     }
 283:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 284:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     position++;
 285:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 286:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
  72              		.loc 1 286 1 view .LVU16
  73 0018 05B0     		add	sp, sp, #20
  74              		.cfi_remember_state
  75              		.cfi_def_cfa_offset 36
  76              		@ sp needed
  77 001a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  78              	.L17:
  79              		.cfi_restore_state
 186:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  80              		.loc 1 186 5 is_stmt 1 view .LVU17
  81              	.LVL2:
 188:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
  82              		.loc 1 188 5 view .LVU18
 186:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  83              		.loc 1 186 41 is_stmt 0 view .LVU19
  84 001e 0124     		movs	r4, #1
  85 0020 9C40     		lsls	r4, r4, r3
 188:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
  86              		.loc 1 188 8 view .LVU20
  87 0022 14EA0806 		ands	r6, r4, r8
 186:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
  88              		.loc 1 186 41 view .LVU21
  89 0026 0194     		str	r4, [sp, #4]
  90              	.LVL3:
 188:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
  91              		.loc 1 188 8 view .LVU22
  92 0028 00F0AA80 		beq	.L4
 192:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
  93              		.loc 1 192 7 is_stmt 1 view .LVU23
 192:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
  94              		.loc 1 192 21 is_stmt 0 view .LVU24
  95 002c 4C68     		ldr	r4, [r1, #4]
 192:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
  96              		.loc 1 192 10 view .LVU25
  97 002e 24F0100A 		bic	r10, r4, #16
  98 0032 BAF1020F 		cmp	r10, #2
  99 0036 16D1     		bne	.L5
 195:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
 100              		.loc 1 195 9 is_stmt 1 view .LVU26
 196:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 101              		.loc 1 196 9 view .LVU27
 199:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(0xFU << ((position & 0x07U) * 4U));
 102              		.loc 1 199 9 view .LVU28
 199:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(0xFU << ((position & 0x07U) * 4U));
 103              		.loc 1 199 36 is_stmt 0 view .LVU29
 104 0038 4FEAD30E 		lsr	lr, r3, #3
 105 003c 00EB8E0E 		add	lr, r0, lr, lsl #2
 200:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 106              		.loc 1 200 38 view .LVU30
 107 0040 03F0070B 		and	fp, r3, #7
 199:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(0xFU << ((position & 0x07U) * 4U));
 108              		.loc 1 199 14 view .LVU31
 109 0044 DEF82050 		ldr	r5, [lr, #32]
 110              	.LVL4:
 200:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 111              		.loc 1 200 9 is_stmt 1 view .LVU32
 200:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 112              		.loc 1 200 47 is_stmt 0 view .LVU33
 113 0048 4FEA8B0B 		lsl	fp, fp, #2
 200:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 114              		.loc 1 200 24 view .LVU34
 115 004c 4FF00F0C 		mov	ip, #15
 116 0050 0CFA0BFC 		lsl	ip, ip, fp
 200:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 117              		.loc 1 200 14 view .LVU35
 118 0054 25EA0C0C 		bic	ip, r5, ip
 119              	.LVL5:
 201:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->AFR[position >> 3U] = temp;
 120              		.loc 1 201 9 is_stmt 1 view .LVU36
 201:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->AFR[position >> 3U] = temp;
 121              		.loc 1 201 41 is_stmt 0 view .LVU37
 122 0058 0D69     		ldr	r5, [r1, #16]
 123 005a 05FA0BF5 		lsl	r5, r5, fp
 201:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->AFR[position >> 3U] = temp;
 124              		.loc 1 201 14 view .LVU38
 125 005e 45EA0C05 		orr	r5, r5, ip
 126              	.LVL6:
 202:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 127              		.loc 1 202 9 is_stmt 1 view .LVU39
 202:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 128              		.loc 1 202 36 is_stmt 0 view .LVU40
 129 0062 CEF82050 		str	r5, [lr, #32]
 130              	.LVL7:
 131              	.L5:
 206:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 132              		.loc 1 206 7 is_stmt 1 view .LVU41
 133 0066 4FEA430E 		lsl	lr, r3, #1
 207:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 134              		.loc 1 207 34 is_stmt 0 view .LVU42
 135 006a 0325     		movs	r5, #3
 206:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 136              		.loc 1 206 12 view .LVU43
 137 006c D0F800B0 		ldr	fp, [r0]
 138              	.LVL8:
 207:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 139              		.loc 1 207 7 is_stmt 1 view .LVU44
 207:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 140              		.loc 1 207 34 is_stmt 0 view .LVU45
 141 0070 05FA0EF5 		lsl	r5, r5, lr
 207:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 142              		.loc 1 207 15 view .LVU46
 143 0074 ED43     		mvns	r5, r5
 208:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->MODER = temp;
 144              		.loc 1 208 33 view .LVU47
 145 0076 04F0030C 		and	ip, r4, #3
 207:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 146              		.loc 1 207 12 view .LVU48
 147 007a 05EA0B0B 		and	fp, r5, fp
 148              	.LVL9:
 208:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->MODER = temp;
 149              		.loc 1 208 7 is_stmt 1 view .LVU49
 208:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->MODER = temp;
 150              		.loc 1 208 46 is_stmt 0 view .LVU50
 151 007e 0CFA0EFC 		lsl	ip, ip, lr
 212:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 152              		.loc 1 212 10 view .LVU51
 153 0082 0AF1FF3A 		add	r10, r10, #-1
 208:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->MODER = temp;
 154              		.loc 1 208 12 view .LVU52
 155 0086 4CEA0B0C 		orr	ip, ip, fp
 156              	.LVL10:
 209:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 157              		.loc 1 209 7 is_stmt 1 view .LVU53
 212:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 158              		.loc 1 212 10 is_stmt 0 view .LVU54
 159 008a BAF1010F 		cmp	r10, #1
 209:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 160              		.loc 1 209 20 view .LVU55
 161 008e C0F800C0 		str	ip, [r0]
 212:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 162              		.loc 1 212 7 is_stmt 1 view .LVU56
 212:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 163              		.loc 1 212 10 is_stmt 0 view .LVU57
 164 0092 16D8     		bhi	.L6
 216:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Configure the IO Speed */
 165              		.loc 1 216 9 is_stmt 1 view .LVU58
 218:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 166              		.loc 1 218 9 view .LVU59
 218:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 167              		.loc 1 218 14 is_stmt 0 view .LVU60
 168 0094 D0F808C0 		ldr	ip, [r0, #8]
 169              	.LVL11:
 219:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_Init->Speed << (position * 2U));
 170              		.loc 1 219 9 is_stmt 1 view .LVU61
 220:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OSPEEDR = temp;
 171              		.loc 1 220 35 is_stmt 0 view .LVU62
 172 0098 CF68     		ldr	r7, [r1, #12]
 219:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_Init->Speed << (position * 2U));
 173              		.loc 1 219 14 view .LVU63
 174 009a 05EA0C0C 		and	ip, r5, ip
 175              	.LVL12:
 220:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OSPEEDR = temp;
 176              		.loc 1 220 9 is_stmt 1 view .LVU64
 220:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OSPEEDR = temp;
 177              		.loc 1 220 35 is_stmt 0 view .LVU65
 178 009e 07FA0EFA 		lsl	r10, r7, lr
 220:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OSPEEDR = temp;
 179              		.loc 1 220 14 view .LVU66
 180 00a2 4AEA0C0C 		orr	ip, r10, ip
 181              	.LVL13:
 221:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 182              		.loc 1 221 9 is_stmt 1 view .LVU67
 221:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 183              		.loc 1 221 24 is_stmt 0 view .LVU68
 184 00a6 C0F808C0 		str	ip, [r0, #8]
 224:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(GPIO_OTYPER_OT0 << position) ;
 185              		.loc 1 224 9 is_stmt 1 view .LVU69
 224:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(GPIO_OTYPER_OT0 << position) ;
 186              		.loc 1 224 14 is_stmt 0 view .LVU70
 187 00aa D0F804C0 		ldr	ip, [r0, #4]
 188              	.LVL14:
 225:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 189              		.loc 1 225 9 is_stmt 1 view .LVU71
 225:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 190              		.loc 1 225 14 is_stmt 0 view .LVU72
 191 00ae 019F     		ldr	r7, [sp, #4]
 192 00b0 2CEA0707 		bic	r7, ip, r7
 193              	.LVL15:
 226:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OTYPER = temp;
 194              		.loc 1 226 9 is_stmt 1 view .LVU73
 226:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OTYPER = temp;
 195              		.loc 1 226 56 is_stmt 0 view .LVU74
 196 00b4 C4F3001C 		ubfx	ip, r4, #4, #1
 226:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OTYPER = temp;
 197              		.loc 1 226 63 view .LVU75
 198 00b8 0CFA03FC 		lsl	ip, ip, r3
 226:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         GPIOx->OTYPER = temp;
 199              		.loc 1 226 14 view .LVU76
 200 00bc 4CEA0707 		orr	r7, ip, r7
 201              	.LVL16:
 227:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 202              		.loc 1 227 9 is_stmt 1 view .LVU77
 227:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 203              		.loc 1 227 23 is_stmt 0 view .LVU78
 204 00c0 4760     		str	r7, [r0, #4]
 205              	.LVL17:
 206              	.L6:
 231:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 207              		.loc 1 231 7 is_stmt 1 view .LVU79
 231:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 208              		.loc 1 231 12 is_stmt 0 view .LVU80
 209 00c2 C768     		ldr	r7, [r0, #12]
 210              	.LVL18:
 232:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Pull) << (position * 2U));
 211              		.loc 1 232 7 is_stmt 1 view .LVU81
 232:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       temp |= ((GPIO_Init->Pull) << (position * 2U));
 212              		.loc 1 232 12 is_stmt 0 view .LVU82
 213 00c4 3D40     		ands	r5, r5, r7
 214              	.LVL19:
 233:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->PUPDR = temp;
 215              		.loc 1 233 7 is_stmt 1 view .LVU83
 233:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->PUPDR = temp;
 216              		.loc 1 233 34 is_stmt 0 view .LVU84
 217 00c6 8F68     		ldr	r7, [r1, #8]
 218 00c8 07FA0EF7 		lsl	r7, r7, lr
 233:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->PUPDR = temp;
 219              		.loc 1 233 12 view .LVU85
 220 00cc 3D43     		orrs	r5, r5, r7
 221              	.LVL20:
 234:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 222              		.loc 1 234 7 is_stmt 1 view .LVU86
 234:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 223              		.loc 1 234 20 is_stmt 0 view .LVU87
 224 00ce C560     		str	r5, [r0, #12]
 238:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 225              		.loc 1 238 7 is_stmt 1 view .LVU88
 238:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 226              		.loc 1 238 10 is_stmt 0 view .LVU89
 227 00d0 E500     		lsls	r5, r4, #3
 228              	.LVL21:
 238:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 229              		.loc 1 238 10 view .LVU90
 230 00d2 55D5     		bpl	.L4
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 231              		.loc 1 241 9 is_stmt 1 view .LVU91
 232              	.LBB3:
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 233              		.loc 1 241 9 view .LVU92
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 234              		.loc 1 241 9 view .LVU93
 235 00d4 D9F86050 		ldr	r5, [r9, #96]
 236 00d8 45F00105 		orr	r5, r5, #1
 237 00dc C9F86050 		str	r5, [r9, #96]
 238              	.LVL22:
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 239              		.loc 1 241 9 view .LVU94
 240 00e0 D9F86050 		ldr	r5, [r9, #96]
 241 00e4 23F00307 		bic	r7, r3, #3
 242 00e8 07F18047 		add	r7, r7, #1073741824
 243 00ec 05F00105 		and	r5, r5, #1
 244 00f0 07F58037 		add	r7, r7, #65536
 245 00f4 0395     		str	r5, [sp, #12]
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 246              		.loc 1 241 9 view .LVU95
 247              	.LBE3:
 244:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U)));
 248              		.loc 1 244 45 is_stmt 0 view .LVU96
 249 00f6 03F0030E 		and	lr, r3, #3
 250              	.LBB4:
 241:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 251              		.loc 1 241 9 view .LVU97
 252 00fa 039D     		ldr	r5, [sp, #12]
 253              	.LBE4:
 243:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(0x0FUL << (4U * (position & 0x03U)));
 254              		.loc 1 243 9 is_stmt 1 view .LVU98
 243:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(0x0FUL << (4U * (position & 0x03U)));
 255              		.loc 1 243 14 is_stmt 0 view .LVU99
 256 00fc BD68     		ldr	r5, [r7, #8]
 257              	.LVL23:
 244:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U)));
 258              		.loc 1 244 9 is_stmt 1 view .LVU100
 244:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U)));
 259              		.loc 1 244 33 is_stmt 0 view .LVU101
 260 00fe 4FEA8E0E 		lsl	lr, lr, #2
 244:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U)));
 261              		.loc 1 244 26 view .LVU102
 262 0102 4FF00F0C 		mov	ip, #15
 263 0106 0CFA0EFC 		lsl	ip, ip, lr
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 264              		.loc 1 245 18 view .LVU103
 265 010a B0F1904F 		cmp	r0, #1207959552
 244:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp |= (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U)));
 266              		.loc 1 244 14 view .LVU104
 267 010e 25EA0C0C 		bic	ip, r5, ip
 268              	.LVL24:
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 269              		.loc 1 245 9 is_stmt 1 view .LVU105
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 270              		.loc 1 245 18 is_stmt 0 view .LVU106
 271 0112 37D0     		beq	.L18
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 272              		.loc 1 245 18 discriminator 1 view .LVU107
 273 0114 214D     		ldr	r5, .L27+4
 274 0116 A842     		cmp	r0, r5
 275 0118 36D0     		beq	.L19
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 276              		.loc 1 245 18 discriminator 3 view .LVU108
 277 011a 05F58065 		add	r5, r5, #1024
 278 011e A842     		cmp	r0, r5
 279 0120 34D0     		beq	.L20
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 280              		.loc 1 245 18 discriminator 5 view .LVU109
 281 0122 05F58065 		add	r5, r5, #1024
 282 0126 A842     		cmp	r0, r5
 283 0128 32D0     		beq	.L21
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 284              		.loc 1 245 18 discriminator 7 view .LVU110
 285 012a 05F58065 		add	r5, r5, #1024
 286 012e A842     		cmp	r0, r5
 287 0130 30D0     		beq	.L22
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 288              		.loc 1 245 18 discriminator 9 view .LVU111
 289 0132 05F58065 		add	r5, r5, #1024
 290 0136 A842     		cmp	r0, r5
 291 0138 0CBF     		ite	eq
 292 013a 0525     		moveq	r5, #5
 293 013c 0625     		movne	r5, #6
 294              	.L8:
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 295              		.loc 1 245 40 discriminator 24 view .LVU112
 296 013e 05FA0EF5 		lsl	r5, r5, lr
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 297              		.loc 1 245 14 discriminator 24 view .LVU113
 298 0142 45EA0C05 		orr	r5, r5, ip
 299              	.LVL25:
 246:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 300              		.loc 1 246 9 is_stmt 1 discriminator 24 view .LVU114
 246:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 301              		.loc 1 246 40 is_stmt 0 discriminator 24 view .LVU115
 302 0146 BD60     		str	r5, [r7, #8]
 249:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 303              		.loc 1 249 9 is_stmt 1 discriminator 24 view .LVU116
 249:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 304              		.loc 1 249 14 is_stmt 0 discriminator 24 view .LVU117
 305 0148 1568     		ldr	r5, [r2]
 306              	.LVL26:
 250:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 307              		.loc 1 250 9 is_stmt 1 discriminator 24 view .LVU118
 250:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 308              		.loc 1 250 17 is_stmt 0 discriminator 24 view .LVU119
 309 014a F743     		mvns	r7, r6
 310              	.LVL27:
 251:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 311              		.loc 1 251 9 is_stmt 1 discriminator 24 view .LVU120
 251:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 312              		.loc 1 251 12 is_stmt 0 discriminator 24 view .LVU121
 313 014c 14F4803F 		tst	r4, #65536
 250:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 314              		.loc 1 250 14 discriminator 24 view .LVU122
 315 0150 0CBF     		ite	eq
 316 0152 3D40     		andeq	r5, r5, r7
 317              	.LVL28:
 253:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 318              		.loc 1 253 11 is_stmt 1 discriminator 24 view .LVU123
 253:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 319              		.loc 1 253 16 is_stmt 0 discriminator 24 view .LVU124
 320 0154 3543     		orrne	r5, r5, r6
 321              	.LVL29:
 255:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 322              		.loc 1 255 9 is_stmt 1 discriminator 24 view .LVU125
 255:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 323              		.loc 1 255 20 is_stmt 0 discriminator 24 view .LVU126
 324 0156 1560     		str	r5, [r2]
 257:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 325              		.loc 1 257 9 is_stmt 1 discriminator 24 view .LVU127
 257:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 326              		.loc 1 257 14 is_stmt 0 discriminator 24 view .LVU128
 327 0158 5568     		ldr	r5, [r2, #4]
 328              	.LVL30:
 258:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 329              		.loc 1 258 9 is_stmt 1 discriminator 24 view .LVU129
 259:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 330              		.loc 1 259 9 discriminator 24 view .LVU130
 259:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 331              		.loc 1 259 12 is_stmt 0 discriminator 24 view .LVU131
 332 015a 14F4003F 		tst	r4, #131072
 258:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 333              		.loc 1 258 14 discriminator 24 view .LVU132
 334 015e 0CBF     		ite	eq
 335 0160 3D40     		andeq	r5, r5, r7
 336              	.LVL31:
 261:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 337              		.loc 1 261 11 is_stmt 1 discriminator 24 view .LVU133
 261:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 338              		.loc 1 261 16 is_stmt 0 discriminator 24 view .LVU134
 339 0162 3543     		orrne	r5, r5, r6
 340              	.LVL32:
 263:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 341              		.loc 1 263 9 is_stmt 1 discriminator 24 view .LVU135
 263:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 342              		.loc 1 263 20 is_stmt 0 discriminator 24 view .LVU136
 343 0164 5560     		str	r5, [r2, #4]
 266:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 344              		.loc 1 266 9 is_stmt 1 discriminator 24 view .LVU137
 266:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 345              		.loc 1 266 14 is_stmt 0 discriminator 24 view .LVU138
 346 0166 9568     		ldr	r5, [r2, #8]
 347              	.LVL33:
 267:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 348              		.loc 1 267 9 is_stmt 1 discriminator 24 view .LVU139
 268:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 349              		.loc 1 268 9 discriminator 24 view .LVU140
 268:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 350              		.loc 1 268 12 is_stmt 0 discriminator 24 view .LVU141
 351 0168 14F4801F 		tst	r4, #1048576
 267:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 352              		.loc 1 267 14 discriminator 24 view .LVU142
 353 016c 0CBF     		ite	eq
 354 016e 3D40     		andeq	r5, r5, r7
 355              	.LVL34:
 270:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 356              		.loc 1 270 11 is_stmt 1 discriminator 24 view .LVU143
 270:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 357              		.loc 1 270 16 is_stmt 0 discriminator 24 view .LVU144
 358 0170 3543     		orrne	r5, r5, r6
 359              	.LVL35:
 272:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 360              		.loc 1 272 9 is_stmt 1 discriminator 24 view .LVU145
 272:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 361              		.loc 1 272 21 is_stmt 0 discriminator 24 view .LVU146
 362 0172 9560     		str	r5, [r2, #8]
 274:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 363              		.loc 1 274 9 is_stmt 1 discriminator 24 view .LVU147
 274:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         temp &= ~(iocurrent);
 364              		.loc 1 274 14 is_stmt 0 discriminator 24 view .LVU148
 365 0174 D568     		ldr	r5, [r2, #12]
 366              	.LVL36:
 275:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 367              		.loc 1 275 9 is_stmt 1 discriminator 24 view .LVU149
 276:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 368              		.loc 1 276 9 discriminator 24 view .LVU150
 276:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         {
 369              		.loc 1 276 12 is_stmt 0 discriminator 24 view .LVU151
 370 0176 A402     		lsls	r4, r4, #10
 275:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         if ((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 371              		.loc 1 275 14 discriminator 24 view .LVU152
 372 0178 54BF     		ite	pl
 373 017a 3D40     		andpl	r5, r5, r7
 374              	.LVL37:
 278:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 375              		.loc 1 278 11 is_stmt 1 discriminator 24 view .LVU153
 278:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         }
 376              		.loc 1 278 16 is_stmt 0 discriminator 24 view .LVU154
 377 017c 3543     		orrmi	r5, r5, r6
 378              	.LVL38:
 280:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 379              		.loc 1 280 9 is_stmt 1 discriminator 24 view .LVU155
 280:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 380              		.loc 1 280 21 is_stmt 0 discriminator 24 view .LVU156
 381 017e D560     		str	r5, [r2, #12]
 382              	.LVL39:
 383              	.L4:
 284:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 384              		.loc 1 284 5 is_stmt 1 view .LVU157
 284:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 385              		.loc 1 284 13 is_stmt 0 view .LVU158
 386 0180 0133     		adds	r3, r3, #1
 387              	.LVL40:
 284:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 388              		.loc 1 284 13 view .LVU159
 389 0182 46E7     		b	.L2
 390              	.LVL41:
 391              	.L18:
 245:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] = temp;
 392              		.loc 1 245 18 view .LVU160
 393 0184 0025     		movs	r5, #0
 394 0186 DAE7     		b	.L8
 395              	.L19:
 396 0188 0125     		movs	r5, #1
 397 018a D8E7     		b	.L8
 398              	.L20:
 399 018c 0225     		movs	r5, #2
 400 018e D6E7     		b	.L8
 401              	.L21:
 402 0190 0325     		movs	r5, #3
 403 0192 D4E7     		b	.L8
 404              	.L22:
 405 0194 0425     		movs	r5, #4
 406 0196 D2E7     		b	.L8
 407              	.L28:
 408              		.align	2
 409              	.L27:
 410 0198 00040140 		.word	1073808384
 411 019c 00040048 		.word	1207960576
 412 01a0 00100240 		.word	1073876992
 413              		.cfi_endproc
 414              	.LFE325:
 416              		.section	.text.HAL_GPIO_DeInit,"ax",%progbits
 417              		.align	1
 418              		.global	HAL_GPIO_DeInit
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu fpv4-sp-d16
 424              	HAL_GPIO_DeInit:
 425              	.LVL42:
 426              	.LFB326:
 287:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 288:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 289:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  De-initialize the GPIOx peripheral registers to their default reset values.
 290:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIOx where x can be (A..G) to select the GPIO peripheral for STM32G4xx family
 291:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Pin specifies the port bit to be written.
 292:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         This parameter can be any combination of GPIO_PIN_x where x can be (0..15).
 293:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval None
 294:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 295:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** void HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin)
 296:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
 427              		.loc 1 296 1 is_stmt 1 view -0
 428              		.cfi_startproc
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 297:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t position = 0x00U;
 431              		.loc 1 297 3 view .LVU162
 298:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t iocurrent;
 432              		.loc 1 298 3 view .LVU163
 299:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t tmp;
 433              		.loc 1 299 3 view .LVU164
 300:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 301:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Check the parameters */
 302:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
 434              		.loc 1 302 3 view .LVU165
 303:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 435              		.loc 1 303 3 view .LVU166
 304:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 305:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Configure the port pins */
 306:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   while ((GPIO_Pin >> position) != 0U)
 436              		.loc 1 306 3 view .LVU167
 307:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 308:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     /* Get current io position */
 309:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     iocurrent = (GPIO_Pin) & (1UL << position);
 310:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 311:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     if (iocurrent != 0x00u)
 312:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
 313:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /*------------------------- EXTI Mode Configuration --------------------*/
 314:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Clear the External Interrupt or Event for the current IO */
 315:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 316:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       tmp = SYSCFG->EXTICR[position >> 2U];
 317:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       tmp &= (0x0FUL << (4U * (position & 0x03U)));
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 319:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 320:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Clear EXTI line configuration */
 321:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->IMR1 &= ~(iocurrent);
 437              		.loc 1 321 20 is_stmt 0 view .LVU168
 438 0000 3B4A     		ldr	r2, .L44
 296:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t position = 0x00U;
 439              		.loc 1 296 1 view .LVU169
 440 0002 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 441              		.cfi_def_cfa_offset 36
 442              		.cfi_offset 4, -36
 443              		.cfi_offset 5, -32
 444              		.cfi_offset 6, -28
 445              		.cfi_offset 7, -24
 446              		.cfi_offset 8, -20
 447              		.cfi_offset 9, -16
 448              		.cfi_offset 10, -12
 449              		.cfi_offset 11, -8
 450              		.cfi_offset 14, -4
 297:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   uint32_t iocurrent;
 451              		.loc 1 297 12 view .LVU170
 452 0006 0023     		movs	r3, #0
 309:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 453              		.loc 1 309 35 view .LVU171
 454 0008 4FF0010A 		mov	r10, #1
 317:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 455              		.loc 1 317 22 view .LVU172
 456 000c 4FF00F08 		mov	r8, #15
 322:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->EMR1 &= ~(iocurrent);
 323:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 324:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         /* Clear Rising Falling edge configuration */
 325:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->RTSR1 &= ~(iocurrent);
 326:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->FTSR1 &= ~(iocurrent);
 327:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 328:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         tmp = 0x0FUL << (4U * (position & 0x03U));
 329:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] &= ~tmp;
 330:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 331:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 332:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /*------------------------- GPIO Mode Configuration --------------------*/
 333:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Configure IO in Analog Mode */
 334:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->MODER |= (GPIO_MODER_MODE0 << (position * 2u));
 457              		.loc 1 334 41 view .LVU173
 458 0010 4FF0030B 		mov	fp, #3
 459              	.LVL43:
 460              	.L30:
 306:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 461              		.loc 1 306 9 view .LVU174
 462 0014 31FA03F4 		lsrs	r4, r1, r3
 463 0018 01D1     		bne	.L34
 335:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 336:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Configure the default Alternate Function in current IO */
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->AFR[position >> 3u] &= ~(0xFu << ((position & 0x07u) * 4u)) ;
 338:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 339:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Configure the default value for IO Speed */
 340:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->OSPEEDR &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2u));
 341:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 342:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Configure the default value IO Output Type */
 343:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->OTYPER  &= ~(GPIO_OTYPER_OT0 << position) ;
 344:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 345:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       /* Deactivate the Pull-up and Pull-down resistor for the current IO */
 346:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       GPIOx->PUPDR &= ~(GPIO_PUPDR_PUPD0 << (position * 2u));
 347:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     }
 348:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 349:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     position++;
 350:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 351:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
 464              		.loc 1 351 1 view .LVU175
 465 001a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 466              	.L34:
 309:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 467              		.loc 1 309 5 is_stmt 1 view .LVU176
 309:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 468              		.loc 1 309 35 is_stmt 0 view .LVU177
 469 001e 0AFA03FC 		lsl	ip, r10, r3
 470              	.LVL44:
 311:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
 471              		.loc 1 311 5 is_stmt 1 view .LVU178
 311:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
 472              		.loc 1 311 8 is_stmt 0 view .LVU179
 473 0022 1CEA0104 		ands	r4, ip, r1
 474              	.LVL45:
 311:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     {
 475              		.loc 1 311 8 view .LVU180
 476 0026 56D0     		beq	.L31
 316:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       tmp &= (0x0FUL << (4U * (position & 0x03U)));
 477              		.loc 1 316 7 is_stmt 1 view .LVU181
 478 0028 23F00306 		bic	r6, r3, #3
 479 002c 06F18046 		add	r6, r6, #1073741824
 480 0030 06F58036 		add	r6, r6, #65536
 317:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 481              		.loc 1 317 41 is_stmt 0 view .LVU182
 482 0034 03F00307 		and	r7, r3, #3
 316:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       tmp &= (0x0FUL << (4U * (position & 0x03U)));
 483              		.loc 1 316 11 view .LVU183
 484 0038 B568     		ldr	r5, [r6, #8]
 485              	.LVL46:
 317:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 486              		.loc 1 317 7 is_stmt 1 view .LVU184
 317:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 487              		.loc 1 317 29 is_stmt 0 view .LVU185
 488 003a BF00     		lsls	r7, r7, #2
 317:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 489              		.loc 1 317 22 view .LVU186
 490 003c 08FA07F9 		lsl	r9, r8, r7
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 491              		.loc 1 318 19 view .LVU187
 492 0040 B0F1904F 		cmp	r0, #1207959552
 317:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       if (tmp == (GPIO_GET_INDEX(GPIOx) << (4U * (position & 0x03U))))
 493              		.loc 1 317 11 view .LVU188
 494 0044 09EA050E 		and	lr, r9, r5
 495              	.LVL47:
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 496              		.loc 1 318 7 is_stmt 1 view .LVU189
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 497              		.loc 1 318 19 is_stmt 0 view .LVU190
 498 0048 47D0     		beq	.L35
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 499              		.loc 1 318 19 discriminator 1 view .LVU191
 500 004a 2A4D     		ldr	r5, .L44+4
 501 004c A842     		cmp	r0, r5
 502 004e 46D0     		beq	.L36
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 503              		.loc 1 318 19 discriminator 3 view .LVU192
 504 0050 05F58065 		add	r5, r5, #1024
 505 0054 A842     		cmp	r0, r5
 506 0056 44D0     		beq	.L37
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 507              		.loc 1 318 19 discriminator 5 view .LVU193
 508 0058 05F58065 		add	r5, r5, #1024
 509 005c A842     		cmp	r0, r5
 510 005e 42D0     		beq	.L38
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 511              		.loc 1 318 19 discriminator 7 view .LVU194
 512 0060 05F58065 		add	r5, r5, #1024
 513 0064 A842     		cmp	r0, r5
 514 0066 40D0     		beq	.L39
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 515              		.loc 1 318 19 discriminator 9 view .LVU195
 516 0068 05F58065 		add	r5, r5, #1024
 517 006c A842     		cmp	r0, r5
 518 006e 0CBF     		ite	eq
 519 0070 0525     		moveq	r5, #5
 520 0072 0625     		movne	r5, #6
 521              	.L32:
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 522              		.loc 1 318 41 discriminator 24 view .LVU196
 523 0074 BD40     		lsls	r5, r5, r7
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 524              		.loc 1 318 10 discriminator 24 view .LVU197
 525 0076 7545     		cmp	r5, lr
 526 0078 10D1     		bne	.L33
 321:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->EMR1 &= ~(iocurrent);
 527              		.loc 1 321 9 is_stmt 1 view .LVU198
 321:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->EMR1 &= ~(iocurrent);
 528              		.loc 1 321 20 is_stmt 0 view .LVU199
 529 007a 1568     		ldr	r5, [r2]
 321:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->EMR1 &= ~(iocurrent);
 530              		.loc 1 321 23 view .LVU200
 531 007c E443     		mvns	r4, r4
 532              	.LVL48:
 321:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->EMR1 &= ~(iocurrent);
 533              		.loc 1 321 20 view .LVU201
 534 007e 2540     		ands	r5, r5, r4
 535 0080 1560     		str	r5, [r2]
 322:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 536              		.loc 1 322 9 is_stmt 1 view .LVU202
 322:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 537              		.loc 1 322 20 is_stmt 0 view .LVU203
 538 0082 5568     		ldr	r5, [r2, #4]
 539 0084 2540     		ands	r5, r5, r4
 540 0086 5560     		str	r5, [r2, #4]
 325:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->FTSR1 &= ~(iocurrent);
 541              		.loc 1 325 9 is_stmt 1 view .LVU204
 325:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         EXTI->FTSR1 &= ~(iocurrent);
 542              		.loc 1 325 21 is_stmt 0 view .LVU205
 543 0088 9568     		ldr	r5, [r2, #8]
 544 008a 2540     		ands	r5, r5, r4
 545 008c 9560     		str	r5, [r2, #8]
 326:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 546              		.loc 1 326 9 is_stmt 1 view .LVU206
 326:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 547              		.loc 1 326 21 is_stmt 0 view .LVU207
 548 008e D568     		ldr	r5, [r2, #12]
 549 0090 2C40     		ands	r4, r4, r5
 550              	.LVL49:
 326:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 551              		.loc 1 326 21 view .LVU208
 552 0092 D460     		str	r4, [r2, #12]
 328:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2U] &= ~tmp;
 553              		.loc 1 328 9 is_stmt 1 view .LVU209
 554              	.LVL50:
 329:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 555              		.loc 1 329 9 view .LVU210
 329:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       }
 556              		.loc 1 329 40 is_stmt 0 view .LVU211
 557 0094 B468     		ldr	r4, [r6, #8]
 558 0096 24EA0904 		bic	r4, r4, r9
 559 009a B460     		str	r4, [r6, #8]
 560              	.LVL51:
 561              	.L33:
 334:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 562              		.loc 1 334 7 is_stmt 1 view .LVU212
 334:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 563              		.loc 1 334 20 is_stmt 0 view .LVU213
 564 009c 0568     		ldr	r5, [r0]
 334:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 565              		.loc 1 334 41 view .LVU214
 566 009e 5C00     		lsls	r4, r3, #1
 567 00a0 0BFA04F4 		lsl	r4, fp, r4
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 568              		.loc 1 337 34 view .LVU215
 569 00a4 DE08     		lsrs	r6, r3, #3
 334:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 570              		.loc 1 334 20 view .LVU216
 571 00a6 2543     		orrs	r5, r5, r4
 572 00a8 00EB8606 		add	r6, r0, r6, lsl #2
 573 00ac 0560     		str	r5, [r0]
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 574              		.loc 1 337 7 is_stmt 1 view .LVU217
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 575              		.loc 1 337 58 is_stmt 0 view .LVU218
 576 00ae 03F00705 		and	r5, r3, #7
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 577              		.loc 1 337 34 view .LVU219
 578 00b2 376A     		ldr	r7, [r6, #32]
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 579              		.loc 1 337 67 view .LVU220
 580 00b4 AD00     		lsls	r5, r5, #2
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 581              		.loc 1 337 44 view .LVU221
 582 00b6 08FA05F5 		lsl	r5, r8, r5
 337:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 583              		.loc 1 337 34 view .LVU222
 584 00ba 27EA0505 		bic	r5, r7, r5
 585 00be 3562     		str	r5, [r6, #32]
 340:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 586              		.loc 1 340 7 is_stmt 1 view .LVU223
 340:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 587              		.loc 1 340 22 is_stmt 0 view .LVU224
 588 00c0 8568     		ldr	r5, [r0, #8]
 340:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 589              		.loc 1 340 25 view .LVU225
 590 00c2 E443     		mvns	r4, r4
 340:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 591              		.loc 1 340 22 view .LVU226
 592 00c4 2540     		ands	r5, r5, r4
 593 00c6 8560     		str	r5, [r0, #8]
 343:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 594              		.loc 1 343 7 is_stmt 1 view .LVU227
 343:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 595              		.loc 1 343 22 is_stmt 0 view .LVU228
 596 00c8 4568     		ldr	r5, [r0, #4]
 597 00ca 25EA0C05 		bic	r5, r5, ip
 598 00ce 4560     		str	r5, [r0, #4]
 346:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     }
 599              		.loc 1 346 7 is_stmt 1 view .LVU229
 346:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     }
 600              		.loc 1 346 20 is_stmt 0 view .LVU230
 601 00d0 C568     		ldr	r5, [r0, #12]
 602 00d2 2C40     		ands	r4, r4, r5
 603 00d4 C460     		str	r4, [r0, #12]
 604              	.L31:
 349:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 605              		.loc 1 349 5 is_stmt 1 view .LVU231
 349:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 606              		.loc 1 349 13 is_stmt 0 view .LVU232
 607 00d6 0133     		adds	r3, r3, #1
 608              	.LVL52:
 349:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 609              		.loc 1 349 13 view .LVU233
 610 00d8 9CE7     		b	.L30
 611              	.LVL53:
 612              	.L35:
 318:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****       {
 613              		.loc 1 318 19 view .LVU234
 614 00da 0025     		movs	r5, #0
 615 00dc CAE7     		b	.L32
 616              	.L36:
 617 00de 0125     		movs	r5, #1
 618 00e0 C8E7     		b	.L32
 619              	.L37:
 620 00e2 0225     		movs	r5, #2
 621 00e4 C6E7     		b	.L32
 622              	.L38:
 623 00e6 0325     		movs	r5, #3
 624 00e8 C4E7     		b	.L32
 625              	.L39:
 626 00ea 0425     		movs	r5, #4
 627 00ec C2E7     		b	.L32
 628              	.L45:
 629 00ee 00BF     		.align	2
 630              	.L44:
 631 00f0 00040140 		.word	1073808384
 632 00f4 00040048 		.word	1207960576
 633              		.cfi_endproc
 634              	.LFE326:
 636              		.section	.text.HAL_GPIO_ReadPin,"ax",%progbits
 637              		.align	1
 638              		.global	HAL_GPIO_ReadPin
 639              		.syntax unified
 640              		.thumb
 641              		.thumb_func
 642              		.fpu fpv4-sp-d16
 644              	HAL_GPIO_ReadPin:
 645              	.LVL54:
 646              	.LFB327:
 352:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 353:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 354:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @}
 355:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 356:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 357:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /** @addtogroup GPIO_Exported_Functions_Group2
 358:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *  @brief GPIO Read, Write, Toggle, Lock and EXTI management functions.
 359:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
 360:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** @verbatim
 361:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****  ===============================================================================
 362:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****                        ##### IO operation functions #####
 363:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****  ===============================================================================
 364:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 365:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** @endverbatim
 366:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @{
 367:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 368:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 369:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 370:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  Read the specified input port pin.
 371:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIOx where x can be (A..G) to select the GPIO peripheral for STM32G4xx family
 372:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Pin specifies the port bit to read.
 373:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         This parameter can be any combination of GPIO_PIN_x where x can be (0..15).
 374:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval The input port pin value.
 375:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 376:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
 377:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
 647              		.loc 1 377 1 is_stmt 1 view -0
 648              		.cfi_startproc
 649              		@ args = 0, pretend = 0, frame = 0
 650              		@ frame_needed = 0, uses_anonymous_args = 0
 651              		@ link register save eliminated.
 378:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   GPIO_PinState bitstatus;
 652              		.loc 1 378 3 view .LVU236
 379:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 380:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Check the parameters */
 381:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 653              		.loc 1 381 3 view .LVU237
 382:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 383:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   if ((GPIOx->IDR & GPIO_Pin) != 0x00U)
 654              		.loc 1 383 3 view .LVU238
 655              		.loc 1 383 13 is_stmt 0 view .LVU239
 656 0000 0369     		ldr	r3, [r0, #16]
 657              	.LVL55:
 384:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 385:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     bitstatus = GPIO_PIN_SET;
 386:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 387:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   else
 388:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 389:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     bitstatus = GPIO_PIN_RESET;
 390:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 391:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   return bitstatus;
 658              		.loc 1 391 3 is_stmt 1 view .LVU240
 383:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 659              		.loc 1 383 6 is_stmt 0 view .LVU241
 660 0002 1942     		tst	r1, r3
 392:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
 661              		.loc 1 392 1 view .LVU242
 662 0004 14BF     		ite	ne
 663 0006 0120     		movne	r0, #1
 664              	.LVL56:
 665              		.loc 1 392 1 view .LVU243
 666 0008 0020     		moveq	r0, #0
 667 000a 7047     		bx	lr
 668              		.cfi_endproc
 669              	.LFE327:
 671              		.section	.text.HAL_GPIO_WritePin,"ax",%progbits
 672              		.align	1
 673              		.global	HAL_GPIO_WritePin
 674              		.syntax unified
 675              		.thumb
 676              		.thumb_func
 677              		.fpu fpv4-sp-d16
 679              	HAL_GPIO_WritePin:
 680              	.LVL57:
 681              	.LFB328:
 393:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 394:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 395:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  Set or clear the selected data port bit.
 396:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
 397:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @note   This function uses GPIOx_BSRR and GPIOx_BRR registers to allow atomic read/modify
 398:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         accesses. In this way, there is no risk of an IRQ occurring between
 399:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         the read and the modify access.
 400:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *
 401:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIOx where x can be (A..G) to select the GPIO peripheral for STM32G4xx family
 402:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Pin specifies the port bit to be written.
 403:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         This parameter can be any combination of GPIO_PIN_x where x can be (0..15).
 404:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  PinState specifies the value to be written to the selected bit.
 405:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         This parameter can be one of the GPIO_PinState enum values:
 406:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *            @arg GPIO_PIN_RESET: to clear the port pin
 407:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *            @arg GPIO_PIN_SET: to set the port pin
 408:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval None
 409:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 410:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
 411:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
 682              		.loc 1 411 1 is_stmt 1 view -0
 683              		.cfi_startproc
 684              		@ args = 0, pretend = 0, frame = 0
 685              		@ frame_needed = 0, uses_anonymous_args = 0
 686              		@ link register save eliminated.
 412:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Check the parameters */
 413:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 687              		.loc 1 413 3 view .LVU245
 414:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN_ACTION(PinState));
 688              		.loc 1 414 3 view .LVU246
 415:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 416:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   if (PinState != GPIO_PIN_RESET)
 689              		.loc 1 416 3 view .LVU247
 690              		.loc 1 416 6 is_stmt 0 view .LVU248
 691 0000 0AB1     		cbz	r2, .L48
 417:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 418:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     GPIOx->BSRR = (uint32_t)GPIO_Pin;
 692              		.loc 1 418 5 is_stmt 1 view .LVU249
 693              		.loc 1 418 17 is_stmt 0 view .LVU250
 694 0002 8161     		str	r1, [r0, #24]
 695 0004 7047     		bx	lr
 696              	.L48:
 419:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 420:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   else
 421:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 422:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     GPIOx->BRR = (uint32_t)GPIO_Pin;
 697              		.loc 1 422 5 is_stmt 1 view .LVU251
 698              		.loc 1 422 16 is_stmt 0 view .LVU252
 699 0006 8162     		str	r1, [r0, #40]
 423:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 424:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
 700              		.loc 1 424 1 view .LVU253
 701 0008 7047     		bx	lr
 702              		.cfi_endproc
 703              	.LFE328:
 705              		.section	.text.HAL_GPIO_TogglePin,"ax",%progbits
 706              		.align	1
 707              		.global	HAL_GPIO_TogglePin
 708              		.syntax unified
 709              		.thumb
 710              		.thumb_func
 711              		.fpu fpv4-sp-d16
 713              	HAL_GPIO_TogglePin:
 714              	.LVL58:
 715              	.LFB329:
 425:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 426:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 427:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  Toggle the specified GPIO pin.
 428:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIOx where x can be (A..G) to select the GPIO peripheral for STM32G4xx family
 429:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Pin specifies the pin to be toggled.
 430:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         This parameter can be any combination of GPIO_PIN_x where x can be (0..15).
 431:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval None
 432:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 433:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
 434:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
 716              		.loc 1 434 1 is_stmt 1 view -0
 717              		.cfi_startproc
 718              		@ args = 0, pretend = 0, frame = 0
 719              		@ frame_needed = 0, uses_anonymous_args = 0
 720              		@ link register save eliminated.
 435:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Check the parameters */
 436:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 721              		.loc 1 436 3 view .LVU255
 437:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 438:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   if ((GPIOx->ODR & GPIO_Pin) != 0x00u)
 722              		.loc 1 438 3 view .LVU256
 723              		.loc 1 438 13 is_stmt 0 view .LVU257
 724 0000 4369     		ldr	r3, [r0, #20]
 725              		.loc 1 438 6 view .LVU258
 726 0002 0B42     		tst	r3, r1
 439:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 440:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     GPIOx->BRR = (uint32_t)GPIO_Pin;
 727              		.loc 1 440 5 is_stmt 1 view .LVU259
 728              		.loc 1 440 16 is_stmt 0 view .LVU260
 729 0004 14BF     		ite	ne
 730 0006 8162     		strne	r1, [r0, #40]
 441:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 442:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   else
 443:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 444:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     GPIOx->BSRR = (uint32_t)GPIO_Pin;
 731              		.loc 1 444 5 is_stmt 1 view .LVU261
 732              		.loc 1 444 17 is_stmt 0 view .LVU262
 733 0008 8161     		streq	r1, [r0, #24]
 445:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 446:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
 734              		.loc 1 446 1 view .LVU263
 735 000a 7047     		bx	lr
 736              		.cfi_endproc
 737              	.LFE329:
 739              		.section	.text.HAL_GPIO_LockPin,"ax",%progbits
 740              		.align	1
 741              		.global	HAL_GPIO_LockPin
 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu fpv4-sp-d16
 747              	HAL_GPIO_LockPin:
 748              	.LVL59:
 749              	.LFB330:
 447:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 448:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 449:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  Lock GPIO Pins configuration registers.
 450:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @note   The locked registers are GPIOx_MODER, GPIOx_OTYPER, GPIOx_OSPEEDR,
 451:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         GPIOx_PUPDR, GPIOx_AFRL and GPIOx_AFRH.
 452:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @note   The configuration of the locked GPIO pins can no longer be modified
 453:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         until the next reset.
 454:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIOx where x can be (A..G) to select the GPIO peripheral for STM32G4xx family
 455:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Pin specifies the port bits to be locked.
 456:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   *         This parameter can be any combination of GPIO_Pin_x where x can be (0..15).
 457:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval None
 458:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 459:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
 460:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
 750              		.loc 1 460 1 is_stmt 1 view -0
 751              		.cfi_startproc
 752              		@ args = 0, pretend = 0, frame = 8
 753              		@ frame_needed = 0, uses_anonymous_args = 0
 754              		@ link register save eliminated.
 461:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   __IO uint32_t tmp = GPIO_LCKR_LCKK;
 755              		.loc 1 461 3 view .LVU265
 460:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   __IO uint32_t tmp = GPIO_LCKR_LCKK;
 756              		.loc 1 460 1 is_stmt 0 view .LVU266
 757 0000 82B0     		sub	sp, sp, #8
 758              		.cfi_def_cfa_offset 8
 759              		.loc 1 461 17 view .LVU267
 760 0002 4FF48033 		mov	r3, #65536
 761 0006 0193     		str	r3, [sp, #4]
 462:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 463:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Check the parameters */
 464:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_LOCK_INSTANCE(GPIOx));
 762              		.loc 1 464 3 is_stmt 1 view .LVU268
 465:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 763              		.loc 1 465 3 view .LVU269
 466:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 467:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Apply lock key write sequence */
 468:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   tmp |= GPIO_Pin;
 764              		.loc 1 468 3 view .LVU270
 765              		.loc 1 468 7 is_stmt 0 view .LVU271
 766 0008 019B     		ldr	r3, [sp, #4]
 767 000a 0B43     		orrs	r3, r3, r1
 768 000c 0193     		str	r3, [sp, #4]
 469:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
 470:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   GPIOx->LCKR = tmp;
 769              		.loc 1 470 3 is_stmt 1 view .LVU272
 770              		.loc 1 470 15 is_stmt 0 view .LVU273
 771 000e 019B     		ldr	r3, [sp, #4]
 772 0010 C361     		str	r3, [r0, #28]
 471:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Reset LCKx bit(s): LCKK='0' + LCK[15-0] */
 472:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   GPIOx->LCKR = GPIO_Pin;
 773              		.loc 1 472 3 is_stmt 1 view .LVU274
 774              		.loc 1 472 15 is_stmt 0 view .LVU275
 775 0012 C161     		str	r1, [r0, #28]
 473:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
 474:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   GPIOx->LCKR = tmp;
 776              		.loc 1 474 3 is_stmt 1 view .LVU276
 777              		.loc 1 474 15 is_stmt 0 view .LVU277
 778 0014 019B     		ldr	r3, [sp, #4]
 779 0016 C361     		str	r3, [r0, #28]
 475:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Read LCKK register. This read is mandatory to complete key lock sequence */
 476:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   tmp = GPIOx->LCKR;
 780              		.loc 1 476 3 is_stmt 1 view .LVU278
 781              		.loc 1 476 14 is_stmt 0 view .LVU279
 782 0018 C369     		ldr	r3, [r0, #28]
 783              		.loc 1 476 7 view .LVU280
 784 001a 0193     		str	r3, [sp, #4]
 477:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 478:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* read again in order to confirm lock is active */
 479:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   if ((GPIOx->LCKR & GPIO_LCKR_LCKK) != 0x00u)
 785              		.loc 1 479 3 is_stmt 1 view .LVU281
 786              		.loc 1 479 13 is_stmt 0 view .LVU282
 787 001c C069     		ldr	r0, [r0, #28]
 788              	.LVL60:
 789              		.loc 1 479 6 view .LVU283
 790 001e 80F48030 		eor	r0, r0, #65536
 480:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 481:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     return HAL_OK;
 482:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 483:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   else
 484:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 485:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     return HAL_ERROR;
 486:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 487:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
 791              		.loc 1 487 1 view .LVU284
 792 0022 C0F30040 		ubfx	r0, r0, #16, #1
 793 0026 02B0     		add	sp, sp, #8
 794              		.cfi_def_cfa_offset 0
 795              		@ sp needed
 796 0028 7047     		bx	lr
 797              		.cfi_endproc
 798              	.LFE330:
 800              		.section	.text.HAL_GPIO_EXTI_Callback,"ax",%progbits
 801              		.align	1
 802              		.weak	HAL_GPIO_EXTI_Callback
 803              		.syntax unified
 804              		.thumb
 805              		.thumb_func
 806              		.fpu fpv4-sp-d16
 808              	HAL_GPIO_EXTI_Callback:
 809              	.LVL61:
 810              	.LFB332:
 488:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 489:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 490:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  Handle EXTI interrupt request.
 491:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Pin Specifies the port pin connected to corresponding EXTI line.
 492:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval None
 493:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 494:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin)
 495:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
 496:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* EXTI line interrupt detected */
 497:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   if (__HAL_GPIO_EXTI_GET_IT(GPIO_Pin) != 0x00u)
 498:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 499:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     __HAL_GPIO_EXTI_CLEAR_IT(GPIO_Pin);
 500:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     HAL_GPIO_EXTI_Callback(GPIO_Pin);
 501:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 502:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
 503:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 504:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** /**
 505:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @brief  EXTI line detection callback.
 506:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @param  GPIO_Pin: Specifies the port pin connected to corresponding EXTI line.
 507:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   * @retval None
 508:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   */
 509:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** __weak void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
 510:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** {
 811              		.loc 1 510 1 is_stmt 1 view -0
 812              		.cfi_startproc
 813              		@ args = 0, pretend = 0, frame = 0
 814              		@ frame_needed = 0, uses_anonymous_args = 0
 815              		@ link register save eliminated.
 511:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* Prevent unused argument(s) compilation warning */
 512:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   UNUSED(GPIO_Pin);
 816              		.loc 1 512 3 view .LVU286
 513:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 514:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* NOTE: This function should not be modified, when the callback is needed,
 515:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****            the HAL_GPIO_EXTI_Callback could be implemented in the user file
 516:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****    */
 517:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** }
 817              		.loc 1 517 1 is_stmt 0 view .LVU287
 818 0000 7047     		bx	lr
 819              		.cfi_endproc
 820              	.LFE332:
 822              		.section	.text.HAL_GPIO_EXTI_IRQHandler,"ax",%progbits
 823              		.align	1
 824              		.global	HAL_GPIO_EXTI_IRQHandler
 825              		.syntax unified
 826              		.thumb
 827              		.thumb_func
 828              		.fpu fpv4-sp-d16
 830              	HAL_GPIO_EXTI_IRQHandler:
 831              	.LVL62:
 832              	.LFB331:
 495:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* EXTI line interrupt detected */
 833              		.loc 1 495 1 is_stmt 1 view -0
 834              		.cfi_startproc
 835              		@ args = 0, pretend = 0, frame = 0
 836              		@ frame_needed = 0, uses_anonymous_args = 0
 497:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 837              		.loc 1 497 3 view .LVU289
 495:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   /* EXTI line interrupt detected */
 838              		.loc 1 495 1 is_stmt 0 view .LVU290
 839 0000 08B5     		push	{r3, lr}
 840              		.cfi_def_cfa_offset 8
 841              		.cfi_offset 3, -8
 842              		.cfi_offset 14, -4
 497:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 843              		.loc 1 497 7 view .LVU291
 844 0002 044B     		ldr	r3, .L60
 845 0004 5969     		ldr	r1, [r3, #20]
 497:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   {
 846              		.loc 1 497 6 view .LVU292
 847 0006 0142     		tst	r1, r0
 848 0008 02D0     		beq	.L55
 499:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****     HAL_GPIO_EXTI_Callback(GPIO_Pin);
 849              		.loc 1 499 5 is_stmt 1 view .LVU293
 850 000a 5861     		str	r0, [r3, #20]
 500:../../..\CubeG4\src/stm32g4xx_hal_gpio.c ****   }
 851              		.loc 1 500 5 view .LVU294
 852 000c FFF7FEFF 		bl	HAL_GPIO_EXTI_Callback
 853              	.LVL63:
 854              	.L55:
 502:../../..\CubeG4\src/stm32g4xx_hal_gpio.c **** 
 855              		.loc 1 502 1 is_stmt 0 view .LVU295
 856 0010 08BD     		pop	{r3, pc}
 857              	.L61:
 858 0012 00BF     		.align	2
 859              	.L60:
 860 0014 00040140 		.word	1073808384
 861              		.cfi_endproc
 862              	.LFE331:
 864              		.text
 865              	.Letext0:
 866              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 867              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 868              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 869              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 870              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 871              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 872              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_gpio.h"
 873              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 874              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
