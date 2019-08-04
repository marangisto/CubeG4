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
  13              		.file	"stm32g4xx_hal_rcc.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_RCC_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_RCC_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_RCC_DeInit:
  27              	.LFB325:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_rcc.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @file    stm32g4xx_hal_rcc.c
   4:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief   RCC HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *          functionalities of the Reset and Clock Control (RCC) peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *           + Initialization and de-initialization functions
   9:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *           + Peripheral Control functions
  10:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   @verbatim
  12:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   ==============================================================================
  13:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                       ##### RCC specific features #####
  14:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   ==============================================================================
  15:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     [..]
  16:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       After reset the device is running from High Speed Internal oscillator
  17:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (16 MHz) with Flash 0 wait state. Flash prefetch buffer, D-Cache
  18:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       and I-Cache are disabled, and all peripherals are off except internal
  19:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       SRAM, Flash and JTAG.
  20:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  21:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) There is no prescaler on High speed (AHBs) and Low speed (APBs) busses:
  22:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           all peripherals mapped on these busses are running at HSI speed.
  23:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) The clock for all peripherals is switched off, except the SRAM and FLASH.
  24:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) All GPIOs are in analog mode, except the JTAG pins which
  25:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           are assigned to be used for debug purpose.
  26:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  27:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     [..]
  28:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       Once the device started from reset, the user application has to:
  29:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) Configure the clock source to be used to drive the System clock
  30:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           (if the application needs higher frequency/performance)
  31:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) Configure the System clock frequency and Flash settings
  32:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) Configure the AHB and APB busses prescalers
  33:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) Enable the clock for the peripheral(s) to be used
  34:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (+) Configure the clock source(s) for peripherals which clocks are not
  35:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           derived from the System clock (USB, RNG, USART, LPUART, FDCAN, some TIMERs,
  36:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           UCPD, I2S, I2C, LPTIM, ADC, QSPI)
  37:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  38:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   @endverbatim
  39:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   ******************************************************************************
  40:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @attention
  41:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
  42:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  43:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * All rights reserved.</center></h2>
  44:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
  45:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  46:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * the "License"; You may not use this file except in compliance with the
  47:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * License. You may obtain a copy of the License at:
  48:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *                        opensource.org/licenses/BSD-3-Clause
  49:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
  50:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   ******************************************************************************
  51:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
  52:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  53:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Includes ------------------------------------------------------------------*/
  54:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #include "stm32g4xx_hal.h"
  55:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  56:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @addtogroup STM32G4xx_HAL_Driver
  57:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
  58:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
  59:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  60:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @defgroup RCC RCC
  61:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief RCC HAL module driver
  62:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
  63:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
  64:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  65:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #ifdef HAL_RCC_MODULE_ENABLED
  66:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  67:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Private typedef -----------------------------------------------------------*/
  68:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Private define ------------------------------------------------------------*/
  69:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @defgroup RCC_Private_Constants RCC Private Constants
  70:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  * @{
  71:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  */
  72:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define HSE_TIMEOUT_VALUE          HSE_STARTUP_TIMEOUT
  73:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define HSI_TIMEOUT_VALUE          2U                /* 2 ms (minimum Tick + 1) */
  74:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define LSI_TIMEOUT_VALUE          2U                /* 2 ms (minimum Tick + 1) */
  75:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define HSI48_TIMEOUT_VALUE        2U                /* 2 ms (minimum Tick + 1) */
  76:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define PLL_TIMEOUT_VALUE          2U                /* 2 ms (minimum Tick + 1) */
  77:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define CLOCKSWITCH_TIMEOUT_VALUE  5000U             /* 5 s    */
  78:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
  79:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @}
  80:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
  81:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  82:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Private macro -------------------------------------------------------------*/
  83:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @defgroup RCC_Private_Macros RCC Private Macros
  84:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
  85:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
  86:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define MCO1_CLK_ENABLE()   __HAL_RCC_GPIOA_CLK_ENABLE()
  87:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define MCO1_GPIO_PORT        GPIOA
  88:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define MCO1_PIN              GPIO_PIN_8
  89:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  90:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** #define RCC_PLL_OSCSOURCE_CONFIG(__HAL_RCC_PLLSOURCE__) \
  91:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             (MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC, (__HAL_RCC_PLLSOURCE__)))
  92:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
  93:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @}
  94:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
  95:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  96:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Private variables ---------------------------------------------------------*/
  97:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  98:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Private function prototypes -----------------------------------------------*/
  99:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @defgroup RCC_Private_Functions RCC Private Functions
 100:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
 101:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 102:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** static uint32_t          RCC_GetSysClockFreqFromPLLSource(void);
 103:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
 104:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @}
 105:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 106:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 107:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Exported functions --------------------------------------------------------*/
 108:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 109:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions RCC Exported Functions
 110:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
 111:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 112:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 113:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions_Group1 Initialization and de-initialization functions
 114:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *  @brief    Initialization and Configuration functions
 115:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
 116:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   @verbatim
 117:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  ===============================================================================
 118:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            ##### Initialization and de-initialization functions #####
 119:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  ===============================================================================
 120:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     [..]
 121:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       This section provides functions allowing to configure the internal and external oscillators
 122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       (HSE, HSI, LSE, LSI, PLL, CSS and MCO) and the System busses clocks (SYSCLK, AHB, APB1
 123:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****        and APB2).
 124:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 125:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     [..] Internal/external clock and PLL configuration
 126:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) HSI (high-speed internal): 16 MHz factory-trimmed RC used directly or through
 127:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              the PLL as System clock source.
 128:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 129:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) LSI (low-speed internal): 32 KHz low consumption RC used as IWDG and/or RTC
 130:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              clock source.
 131:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 132:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) HSE (high-speed external): 4 to 48 MHz crystal oscillator used directly or
 133:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              through the PLL as System clock source. Can be used also optionally as RTC clock sourc
 134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 135:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) LSE (low-speed external): 32.768 KHz oscillator used optionally as RTC clock source.
 136:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 137:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) PLL (clocked by HSI, HSE) providing up to three independent output clocks:
 138:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            (++) The first output is used to generate the high speed system clock (up to 170 MHz).
 139:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            (++) The second output is used to generate the clock for the USB (48 MHz),
 140:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 the QSPI (<= 48 MHz), the FDCAN, the SAI and the I2S.
 141:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            (++) The third output is used to generate a clock for ADC
 142:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 143:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) CSS (Clock security system): once enabled, if a HSE clock failure occurs
 144:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             (HSE used directly or through PLL as System clock source), the System clock
 145:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              is automatically switched to HSI and an interrupt is generated if enabled.
 146:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              The interrupt is linked to the Cortex-M4 NMI (Non-Maskable Interrupt)
 147:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              exception vector.
 148:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 149:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) MCO (microcontroller clock output): used to output LSI, HSI, LSE, HSE,
 150:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              main PLL clock, system clock or RC48 clock (through a configurable prescaler) on PA8 p
 151:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 152:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     [..] System, AHB and APB busses clocks configuration
 153:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) Several clock sources can be used to drive the System clock (SYSCLK): HSI,
 154:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              HSE and main PLL.
 155:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              The AHB clock (HCLK) is derived from System clock through configurable
 156:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              prescaler and used to clock the CPU, memory and peripherals mapped
 157:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              on AHB bus (DMA, GPIO...). APB1 (PCLK1) and APB2 (PCLK2) clocks are derived
 158:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              from AHB clock through configurable prescalers and used to clock
 159:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              the peripherals mapped on these busses. You can use
 160:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              "HAL_RCC_GetSysClockFreq()" function to retrieve the frequencies of these clocks.
 161:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 162:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          -@- All the peripheral clocks are derived from the System clock (SYSCLK) except:
 163:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 164:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            (+@) RTC: the RTC clock can be derived either from the LSI, LSE or HSE clock
 165:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 divided by 2 to 31.
 166:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 You have to use __HAL_RCC_RTC_ENABLE() and HAL_RCCEx_PeriphCLKConfig() function
 167:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 to configure this clock.
 168:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            (+@) USB FS and RNG: USB FS requires a frequency equal to 48 MHz
 169:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 to work correctly, while the RNG peripheral requires a frequency
 170:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 equal or lower than to 48 MHz. This clock is derived of the main PLL
 171:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 through PLLQ divider. You have to enable the peripheral clock and use
 172:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                 HAL_RCCEx_PeriphCLKConfig() function to configure this clock.
 173:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            (+@) IWDG clock which is always the LSI clock.
 174:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 175:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 176:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (+) The maximum frequency of the SYSCLK, HCLK, PCLK1 and PCLK2 is 170 MHz.
 177:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              The clock source frequency should be adapted depending on the device voltage range
 178:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****              as listed in the Reference Manual "Clock source frequency versus voltage scaling" chap
 179:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 180:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   @endverbatim
 181:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 182:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            Table 1. HCLK clock frequency for STM32G4xx devices
 183:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            +--------------------------------------------------------+
 184:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            | Latency         |     HCLK clock frequency (MHz)       |
 185:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |                 |--------------------------------------|
 186:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |                 |  voltage range 1  | voltage range 2  |
 187:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |                 |       1.2 V       |     1.0 V        |
 188:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 189:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |0WS(1 CPU cycles)|   0 < HCLK <= 20  |  0 < HCLK <= 8   |
 190:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 191:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |1WS(2 CPU cycles)|  20 < HCLK <= 40  |  8 < HCLK <= 16  |
 192:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 193:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |2WS(3 CPU cycles)|  40 < HCLK <= 60  | 16 < HCLK <= 26  |
 194:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 195:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |3WS(4 CPU cycles)|  60 < HCLK <= 80  | 16 < HCLK <= 26  |
 196:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 197:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |4WS(5 CPU cycles)|  80 < HCLK <= 100 | 16 < HCLK <= 26  |
 198:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 199:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |5WS(6 CPU cycles)| 100 < HCLK <= 120 | 16 < HCLK <= 26  |
 200:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 201:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |6WS(7 CPU cycles)| 120 < HCLK <= 140 | 16 < HCLK <= 26  |
 202:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 203:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |7WS(8 CPU cycles)| 140 < HCLK <= 160 | 16 < HCLK <= 26  |
 204:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |-----------------|-------------------|------------------|
 205:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            |8WS(9 CPU cycles)| 160 < HCLK <= 170 | 16 < HCLK <= 26  |
 206:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****            +--------------------------------------------------------+
 207:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 208:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
 209:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 210:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 211:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
 212:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Reset the RCC clock configuration to the default reset state.
 213:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The default reset state of the clock configuration is given below:
 214:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - HSI ON and used as system clock source
 215:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - HSE, PLL OFF
 216:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - AHB, APB1 and APB2 prescaler set to 1.
 217:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - CSS, MCO1 OFF
 218:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - All interrupts disabled
 219:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - All interrupt and reset flags cleared
 220:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   This function doesn't modify the configuration of the
 221:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - Peripheral clocks
 222:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            - LSI, LSE and RTC clocks
 223:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval HAL status
 224:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_DeInit(void)
 226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
  29              		.loc 1 226 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
 227:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
  33              		.loc 1 227 3 view .LVU1
 228:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 229:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get Start Tick*/
 230:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   tickstart = HAL_GetTick();
  34              		.loc 1 230 3 view .LVU2
 226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
  35              		.loc 1 226 1 is_stmt 0 view .LVU3
  36 0000 70B5     		push	{r4, r5, r6, lr}
  37              		.cfi_def_cfa_offset 16
  38              		.cfi_offset 4, -16
  39              		.cfi_offset 5, -12
  40              		.cfi_offset 6, -8
  41              		.cfi_offset 14, -4
 231:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 232:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Set HSION bit to the reset value */
 233:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SET_BIT(RCC->CR, RCC_CR_HSION);
  42              		.loc 1 233 3 view .LVU4
  43 0002 294C     		ldr	r4, .L12
 230:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  44              		.loc 1 230 15 view .LVU5
  45 0004 FFF7FEFF 		bl	HAL_GetTick
  46              	.LVL0:
  47              		.loc 1 233 3 view .LVU6
  48 0008 2368     		ldr	r3, [r4]
  49 000a 43F48073 		orr	r3, r3, #256
 230:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  50              		.loc 1 230 15 view .LVU7
  51 000e 0546     		mov	r5, r0
  52              	.LVL1:
  53              		.loc 1 233 3 is_stmt 1 view .LVU8
  54 0010 2360     		str	r3, [r4]
 234:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 235:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Wait till HSI is ready */
 236:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == 0U)
  55              		.loc 1 236 3 view .LVU9
  56              	.LVL2:
  57              	.L2:
  58              		.loc 1 236 10 is_stmt 0 view .LVU10
  59 0012 2368     		ldr	r3, [r4]
  60              		.loc 1 236 9 view .LVU11
  61 0014 5B05     		lsls	r3, r3, #21
  62 0016 31D5     		bpl	.L4
 237:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 238:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 239:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 240:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       return HAL_TIMEOUT;
 241:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 242:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 243:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 244:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  /* Set HSITRIM[6:0] bits to the reset value */
 245:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SET_BIT(RCC->ICSCR, RCC_HSICALIBRATION_DEFAULT << RCC_ICSCR_HSITRIM_Pos);
  63              		.loc 1 245 3 is_stmt 1 view .LVU12
  64 0018 6368     		ldr	r3, [r4, #4]
  65 001a 43F08043 		orr	r3, r3, #1073741824
  66 001e 6360     		str	r3, [r4, #4]
 246:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 247:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get Start Tick*/
 248:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   tickstart = HAL_GetTick();
  67              		.loc 1 248 3 view .LVU13
  68              		.loc 1 248 15 is_stmt 0 view .LVU14
  69 0020 FFF7FEFF 		bl	HAL_GetTick
  70              	.LVL3:
 249:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 250:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Reset CFGR register (HSI is selected as system clock source) */
 251:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC->CFGR = 0x00000001u;
  71              		.loc 1 251 13 view .LVU15
  72 0024 0123     		movs	r3, #1
 248:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
  73              		.loc 1 248 15 view .LVU16
  74 0026 0546     		mov	r5, r0
  75              	.LVL4:
  76              		.loc 1 251 3 is_stmt 1 view .LVU17
  77              		.loc 1 251 13 is_stmt 0 view .LVU18
  78 0028 A360     		str	r3, [r4, #8]
 252:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 253:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Wait till HSI is ready */
 254:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   while (READ_BIT(RCC->CFGR, RCC_CFGR_SWS) != RCC_CFGR_SWS_HSI)
  79              		.loc 1 254 3 is_stmt 1 view .LVU19
 255:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 256:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
  80              		.loc 1 256 8 is_stmt 0 view .LVU20
  81 002a 41F28836 		movw	r6, #5000
  82              	.LVL5:
  83              	.L5:
 254:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
  84              		.loc 1 254 10 view .LVU21
  85 002e A368     		ldr	r3, [r4, #8]
  86 0030 03F00C03 		and	r3, r3, #12
 254:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
  87              		.loc 1 254 9 view .LVU22
  88 0034 042B     		cmp	r3, #4
  89 0036 29D1     		bne	.L7
 257:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 258:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       return HAL_TIMEOUT;
 259:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 260:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 261:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 262:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Update the SystemCoreClock global variable */
 263:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SystemCoreClock = HSI_VALUE;
  90              		.loc 1 263 3 is_stmt 1 view .LVU23
  91              		.loc 1 263 19 is_stmt 0 view .LVU24
  92 0038 1C4B     		ldr	r3, .L12+4
  93 003a 1D4A     		ldr	r2, .L12+8
  94 003c 1A60     		str	r2, [r3]
 264:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 265:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Adapt Systick interrupt period */
 266:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (HAL_InitTick(uwTickPrio) != HAL_OK)
  95              		.loc 1 266 3 is_stmt 1 view .LVU25
  96              		.loc 1 266 7 is_stmt 0 view .LVU26
  97 003e 1D4B     		ldr	r3, .L12+12
  98 0040 1868     		ldr	r0, [r3]
  99 0042 FFF7FEFF 		bl	HAL_InitTick
 100              	.LVL6:
 101              		.loc 1 266 6 view .LVU27
 102 0046 0546     		mov	r5, r0
 103              	.LVL7:
 104              		.loc 1 266 6 view .LVU28
 105 0048 60BB     		cbnz	r0, .L10
 267:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 268:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     return HAL_ERROR;
 269:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 270:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 271:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Clear CR register in 2 steps: first to clear HSEON in case bypass was enabled */
 272:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC->CR = RCC_CR_HSION;
 106              		.loc 1 272 3 is_stmt 1 view .LVU29
 107              		.loc 1 272 11 is_stmt 0 view .LVU30
 108 004a 4FF48073 		mov	r3, #256
 109 004e 2360     		str	r3, [r4]
 273:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 274:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Then again to HSEBYP in case bypass was enabled */
 275:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC->CR = RCC_CR_HSION;
 110              		.loc 1 275 3 is_stmt 1 view .LVU31
 111              		.loc 1 275 11 is_stmt 0 view .LVU32
 112 0050 2360     		str	r3, [r4]
 276:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 277:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get Start Tick*/
 278:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   tickstart = HAL_GetTick();
 113              		.loc 1 278 3 is_stmt 1 view .LVU33
 114              		.loc 1 278 15 is_stmt 0 view .LVU34
 115 0052 FFF7FEFF 		bl	HAL_GetTick
 116              	.LVL8:
 117 0056 0646     		mov	r6, r0
 118              	.LVL9:
 279:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 280:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Wait till PLL is OFF */
 281:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 119              		.loc 1 281 3 is_stmt 1 view .LVU35
 120              	.L8:
 121              		.loc 1 281 10 is_stmt 0 view .LVU36
 122 0058 2368     		ldr	r3, [r4]
 123              		.loc 1 281 9 view .LVU37
 124 005a 13F00073 		ands	r3, r3, #33554432
 125 005e 1BD1     		bne	.L9
 282:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 283:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 284:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 285:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       return HAL_TIMEOUT;
 286:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 287:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 288:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 289:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* once PLL is OFF, reset PLLCFGR register to default value */
 290:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC->PLLCFGR = RCC_PLLCFGR_PLLN_4;
 126              		.loc 1 290 3 is_stmt 1 view .LVU38
 127              		.loc 1 290 16 is_stmt 0 view .LVU39
 128 0060 4FF48052 		mov	r2, #4096
 129 0064 E260     		str	r2, [r4, #12]
 291:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 292:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Disable all interrupts */
 293:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   CLEAR_REG(RCC->CIER);
 130              		.loc 1 293 3 is_stmt 1 view .LVU40
 131 0066 A361     		str	r3, [r4, #24]
 294:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 295:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Clear all interrupt flags */
 296:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   WRITE_REG(RCC->CICR, 0xFFFFFFFFU);
 132              		.loc 1 296 3 view .LVU41
 133 0068 4FF0FF33 		mov	r3, #-1
 134 006c 2362     		str	r3, [r4, #32]
 297:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 298:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Clear all reset flags */
 299:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SET_BIT(RCC->CSR, RCC_CSR_RMVF);
 135              		.loc 1 299 3 view .LVU42
 136 006e D4F89430 		ldr	r3, [r4, #148]
 137 0072 43F40003 		orr	r3, r3, #8388608
 138 0076 C4F89430 		str	r3, [r4, #148]
 300:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 301:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return HAL_OK;
 139              		.loc 1 301 3 view .LVU43
 140              		.loc 1 301 10 is_stmt 0 view .LVU44
 141 007a 05E0     		b	.L3
 142              	.LVL10:
 143              	.L4:
 238:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 144              		.loc 1 238 5 is_stmt 1 view .LVU45
 238:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 145              		.loc 1 238 10 is_stmt 0 view .LVU46
 146 007c FFF7FEFF 		bl	HAL_GetTick
 147              	.LVL11:
 238:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 148              		.loc 1 238 24 view .LVU47
 149 0080 401B     		subs	r0, r0, r5
 238:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 150              		.loc 1 238 8 view .LVU48
 151 0082 0228     		cmp	r0, #2
 152 0084 C5D9     		bls	.L2
 153              	.LVL12:
 154              	.L6:
 240:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 155              		.loc 1 240 14 view .LVU49
 156 0086 0325     		movs	r5, #3
 157              	.L3:
 302:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 158              		.loc 1 302 1 view .LVU50
 159 0088 2846     		mov	r0, r5
 160 008a 70BD     		pop	{r4, r5, r6, pc}
 161              	.LVL13:
 162              	.L7:
 256:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 163              		.loc 1 256 5 is_stmt 1 view .LVU51
 256:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 164              		.loc 1 256 10 is_stmt 0 view .LVU52
 165 008c FFF7FEFF 		bl	HAL_GetTick
 166              	.LVL14:
 256:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 167              		.loc 1 256 24 view .LVU53
 168 0090 401B     		subs	r0, r0, r5
 256:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 169              		.loc 1 256 8 view .LVU54
 170 0092 B042     		cmp	r0, r6
 171 0094 CBD9     		bls	.L5
 172 0096 F6E7     		b	.L6
 173              	.LVL15:
 174              	.L9:
 283:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 175              		.loc 1 283 5 is_stmt 1 view .LVU55
 283:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 176              		.loc 1 283 10 is_stmt 0 view .LVU56
 177 0098 FFF7FEFF 		bl	HAL_GetTick
 178              	.LVL16:
 283:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 179              		.loc 1 283 24 view .LVU57
 180 009c 801B     		subs	r0, r0, r6
 283:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 181              		.loc 1 283 8 view .LVU58
 182 009e 0228     		cmp	r0, #2
 183 00a0 DAD9     		bls	.L8
 184 00a2 F0E7     		b	.L6
 185              	.LVL17:
 186              	.L10:
 268:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 187              		.loc 1 268 12 view .LVU59
 188 00a4 0125     		movs	r5, #1
 189 00a6 EFE7     		b	.L3
 190              	.L13:
 191              		.align	2
 192              	.L12:
 193 00a8 00100240 		.word	1073876992
 194 00ac 00000000 		.word	SystemCoreClock
 195 00b0 0024F400 		.word	16000000
 196 00b4 00000000 		.word	uwTickPrio
 197              		.cfi_endproc
 198              	.LFE325:
 200              		.section	.text.HAL_RCC_OscConfig,"ax",%progbits
 201              		.align	1
 202              		.global	HAL_RCC_OscConfig
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 208              	HAL_RCC_OscConfig:
 209              	.LVL18:
 210              	.LFB326:
 303:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 304:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
 305:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Initialize the RCC Oscillators according to the specified parameters in the
 306:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         RCC_OscInitTypeDef.
 307:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  RCC_OscInitStruct  pointer to an RCC_OscInitTypeDef structure that
 308:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         contains the configuration information for the RCC Oscillators.
 309:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The PLL is not disabled when used as system clock.
 310:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   Transitions LSE Bypass to LSE On and LSE On to LSE Bypass are not
 311:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         supported by this macro. User should request a transition to LSE Off
 312:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         first and then LSE On or LSE Bypass.
 313:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   Transition HSE Bypass to HSE On and HSE On to HSE Bypass are not
 314:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         supported by this macro. User should request a transition to HSE Off
 315:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         first and then HSE On or HSE Bypass.
 316:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval HAL status
 317:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 318:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
 319:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
 211              		.loc 1 319 1 is_stmt 1 view -0
 212              		.cfi_startproc
 213              		@ args = 0, pretend = 0, frame = 8
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 320:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
 215              		.loc 1 320 3 view .LVU61
 321:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t temp_sysclksrc;
 216              		.loc 1 321 3 view .LVU62
 322:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t temp_pllckcfg;
 217              		.loc 1 322 3 view .LVU63
 323:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 324:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check Null pointer */
 325:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (RCC_OscInitStruct == NULL)
 218              		.loc 1 325 3 view .LVU64
 319:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
 219              		.loc 1 319 1 is_stmt 0 view .LVU65
 220 0000 2DE9F341 		push	{r0, r1, r4, r5, r6, r7, r8, lr}
 221              		.cfi_def_cfa_offset 32
 222              		.cfi_offset 4, -24
 223              		.cfi_offset 5, -20
 224              		.cfi_offset 6, -16
 225              		.cfi_offset 7, -12
 226              		.cfi_offset 8, -8
 227              		.cfi_offset 14, -4
 228              		.loc 1 325 6 view .LVU66
 229 0004 0446     		mov	r4, r0
 230 0006 08B9     		cbnz	r0, .L15
 231              	.LVL19:
 232              	.L93:
 326:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 327:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     return HAL_ERROR;
 328:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 329:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 330:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
 331:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
 332:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 333:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*------------------------------- HSE Configuration ------------------------*/
 334:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 335:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 336:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the parameters */
 337:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
 338:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 339:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_sysclksrc = __HAL_RCC_GET_SYSCLK_SOURCE();
 340:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 341:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 342:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* When the HSE is used as system clock or clock source for PLL in these cases it is not allowe
 343:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (((temp_sysclksrc == RCC_CFGR_SWS_PLL) && (temp_pllckcfg == RCC_PLLSOURCE_HSE)) || (temp_sys
 344:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 345:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if ((READ_BIT(RCC->CR, RCC_CR_HSERDY) != 0U) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 346:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 347:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         return HAL_ERROR;
 348:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 349:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 350:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     else
 351:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 352:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Set the new HSE configuration ---------------------------------------*/
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 354:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 355:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Check the HSE State */
 356:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if (RCC_OscInitStruct->HSEState != RCC_HSE_OFF)
 357:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 358:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Get Start Tick*/
 359:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 360:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 361:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Wait till HSE is ready */
 362:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         while (READ_BIT(RCC->CR, RCC_CR_HSERDY) == 0U)
 363:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 364:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 365:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 366:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             return HAL_TIMEOUT;
 367:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 368:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 369:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 370:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       else
 371:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 372:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Get Start Tick*/
 373:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 374:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 375:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Wait till HSE is disabled */
 376:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         while (READ_BIT(RCC->CR, RCC_CR_HSERDY) != 0U)
 377:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 378:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 379:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 380:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             return HAL_TIMEOUT;
 381:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 382:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 383:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 384:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 385:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 386:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*----------------------------- HSI Configuration --------------------------*/
 387:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 388:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 389:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the parameters */
 390:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
 391:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_HSI_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));
 392:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 393:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock *
 394:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_sysclksrc = __HAL_RCC_GET_SYSCLK_SOURCE();
 395:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 396:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (((temp_sysclksrc == RCC_CFGR_SWS_PLL) && (temp_pllckcfg == RCC_PLLSOURCE_HSI)) || (temp_sys
 397:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 398:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* When HSI is used as system clock it will not be disabled */
 399:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if ((READ_BIT(RCC->CR, RCC_CR_HSIRDY) != 0U) && (RCC_OscInitStruct->HSIState == RCC_HSI_OFF))
 400:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 401:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         return HAL_ERROR;
 402:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 403:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Otherwise, just the calibration is allowed */
 404:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       else
 405:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 406:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
 407:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 408:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 409:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Adapt Systick interrupt period */
 410:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if (HAL_InitTick(uwTickPrio) != HAL_OK)
 411:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 412:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_ERROR;
 413:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 414:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 415:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 416:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     else
 417:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 418:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Check the HSI State */
 419:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if (RCC_OscInitStruct->HSIState != RCC_HSI_OFF)
 420:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 421:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Enable the Internal High Speed oscillator (HSI). */
 422:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_HSI_ENABLE();
 423:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 424:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Get Start Tick*/
 425:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 426:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 427:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Wait till HSI is ready */
 428:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == 0U)
 429:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 430:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 431:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 432:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             return HAL_TIMEOUT;
 433:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 434:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 435:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 436:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
 437:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 438:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 439:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       else
 440:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 441:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Disable the Internal High Speed oscillator (HSI). */
 442:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_HSI_DISABLE();
 443:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 444:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Get Start Tick*/
 445:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 446:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 447:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Wait till HSI is disabled */
 448:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) != 0U)
 449:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 450:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 451:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 452:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             return HAL_TIMEOUT;
 453:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 454:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 455:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 456:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 457:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 458:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*------------------------------ LSI Configuration -------------------------*/
 459:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 460:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 461:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the parameters */
 462:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));
 463:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 464:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the LSI State */
 465:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if(RCC_OscInitStruct->LSIState != RCC_LSI_OFF)
 466:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 467:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Enable the Internal Low Speed oscillator (LSI). */
 468:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       __HAL_RCC_LSI_ENABLE();
 469:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 470:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Get Start Tick*/
 471:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 472:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 473:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Wait till LSI is ready */
 474:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       while (READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) == 0U)
 475:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 476:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if ((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 477:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 478:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_TIMEOUT;
 479:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 480:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 481:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 482:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     else
 483:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 484:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Disable the Internal Low Speed oscillator (LSI). */
 485:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       __HAL_RCC_LSI_DISABLE();
 486:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 487:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Get Start Tick*/
 488:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 489:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 490:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Wait till LSI is disabled */
 491:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       while(READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) != 0U)
 492:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 493:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 494:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 495:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_TIMEOUT;
 496:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 497:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 498:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 499:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 500:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*------------------------------ LSE Configuration -------------------------*/
 501:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 502:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 503:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     FlagStatus       pwrclkchanged = RESET;
 504:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 505:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the parameters */
 506:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));
 507:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 508:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Update LSE configuration in Backup Domain control register    */
 509:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Requires to enable write access to Backup Domain if necessary */
 510:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (__HAL_RCC_PWR_IS_CLK_DISABLED() != 0U)
 511:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 512:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       __HAL_RCC_PWR_CLK_ENABLE();
 513:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pwrclkchanged = SET;
 514:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 515:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 516:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 517:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 518:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Enable write access to Backup domain */
 519:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       SET_BIT(PWR->CR1, PWR_CR1_DBP);
 520:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 521:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Wait for Backup domain Write protection disable */
 522:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 523:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 524:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       while (HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 525:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 526:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if ((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 527:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 528:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_TIMEOUT;
 529:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 530:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 531:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 532:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 533:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Set the new LSE configuration -----------------------------------------*/
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 535:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 536:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the LSE State */
 537:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (RCC_OscInitStruct->LSEState != RCC_LSE_OFF)
 538:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 539:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Get Start Tick*/
 540:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 541:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 542:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Wait till LSE is ready */
 543:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 544:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 545:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 546:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 547:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_TIMEOUT;
 548:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 549:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 550:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 551:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     else
 552:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 553:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Get Start Tick*/
 554:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 555:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 556:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Wait till LSE is disabled */
 557:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) != 0U)
 558:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 559:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 560:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 561:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_TIMEOUT;
 562:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 563:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 564:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 565:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 566:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Restore clock configuration if changed */
 567:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (pwrclkchanged == SET)
 568:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 569:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       __HAL_RCC_PWR_CLK_DISABLE();
 570:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 571:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 572:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 573:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*------------------------------ HSI48 Configuration -----------------------*/
 574:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI48) == RCC_OSCILLATORTYPE_HSI48)
 575:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 576:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the parameters */
 577:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_HSI48(RCC_OscInitStruct->HSI48State));
 578:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 579:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check the HSI48 State */
 580:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if(RCC_OscInitStruct->HSI48State != RCC_HSI48_OFF)
 581:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 582:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Enable the Internal Low Speed oscillator (HSI48). */
 583:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       __HAL_RCC_HSI48_ENABLE();
 584:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 585:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Get Start Tick*/
 586:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 587:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 588:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Wait till HSI48 is ready */
 589:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       while(READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) == 0U)
 590:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 591:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart) > HSI48_TIMEOUT_VALUE)
 592:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 593:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_TIMEOUT;
 594:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 595:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 596:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 597:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     else
 598:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 599:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Disable the Internal Low Speed oscillator (HSI48). */
 600:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       __HAL_RCC_HSI48_DISABLE();
 601:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 602:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Get Start Tick*/
 603:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 604:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 605:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Wait till HSI48 is disabled */
 606:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       while(READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) != 0U)
 607:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 608:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart) > HSI48_TIMEOUT_VALUE)
 609:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 610:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_TIMEOUT;
 611:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 612:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 613:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 614:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 615:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 616:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*-------------------------------- PLL Configuration -----------------------*/
 617:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
 618:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
 619:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 620:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (RCC_OscInitStruct->PLL.PLLState != RCC_PLL_NONE)
 621:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 622:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check if the PLL is used as system clock or not */
 623:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
 624:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 625:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if (RCC_OscInitStruct->PLL.PLLState == RCC_PLL_ON)
 626:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 627:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Check the parameters */
 628:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLSOURCE(RCC_OscInitStruct->PLL.PLLSource));
 629:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLM_VALUE(RCC_OscInitStruct->PLL.PLLM));
 630:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
 631:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
 632:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));
 633:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLR_VALUE(RCC_OscInitStruct->PLL.PLLR));
 634:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 635:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Disable the main PLL. */
 636:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_PLL_DISABLE();
 637:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 638:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Get Start Tick*/
 639:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 640:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 641:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Wait till PLL is ready */
 642:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 643:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 644:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 645:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 646:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             return HAL_TIMEOUT;
 647:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 648:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 649:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 650:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Configure the main PLL clock source, multiplication and division factors. */
 651:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
 652:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 653:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLN,
 654:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLP,
 655:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLQ,
 656:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLR);
 657:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 658:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Enable the main PLL. */
 659:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_PLL_ENABLE();
 660:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 661:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Enable PLL System Clock output. */
 662:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_SYSCLK);
 663:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 664:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Get Start Tick*/
 665:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 666:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 667:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Wait till PLL is ready */
 668:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == 0U)
 669:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 670:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 671:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 672:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             return HAL_TIMEOUT;
 673:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 674:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 675:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 676:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       else
 677:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 678:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Disable the main PLL. */
 679:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_PLL_DISABLE();
 680:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 681:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Disable all PLL outputs to save power if no PLLs on */
 682:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC, RCC_PLLSOURCE_NONE);
 683:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_PLLCLKOUT_DISABLE(RCC_PLL_SYSCLK | RCC_PLL_48M1CLK | RCC_PLL_ADCCLK);
 684:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 685:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Get Start Tick*/
 686:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 687:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 688:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Wait till PLL is disabled */
 689:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 690:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 691:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 692:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 693:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             return HAL_TIMEOUT;
 694:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 695:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 696:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 697:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 698:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     else
 699:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 700:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Check if there is a request to disable the PLL used as System clock source */
 701:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 702:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 703:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         return HAL_ERROR;
 233              		.loc 1 703 16 view .LVU67
 234 0008 0120     		movs	r0, #1
 235 000a 3FE0     		b	.L113
 236              	.LVL20:
 237              	.L15:
 331:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 238              		.loc 1 331 3 is_stmt 1 view .LVU68
 334:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 239              		.loc 1 334 3 view .LVU69
 334:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 240              		.loc 1 334 44 is_stmt 0 view .LVU70
 241 000c 0368     		ldr	r3, [r0]
 334:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 242              		.loc 1 334 6 view .LVU71
 243 000e DF07     		lsls	r7, r3, #31
 244 0010 14D4     		bmi	.L17
 245              	.LVL21:
 246              	.L23:
 387:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 247              		.loc 1 387 3 is_stmt 1 view .LVU72
 387:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 248              		.loc 1 387 44 is_stmt 0 view .LVU73
 249 0012 2368     		ldr	r3, [r4]
 387:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 250              		.loc 1 387 6 view .LVU74
 251 0014 9E07     		lsls	r6, r3, #30
 252 0016 5AD4     		bmi	.L18
 253              	.L34:
 459:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 254              		.loc 1 459 3 is_stmt 1 view .LVU75
 459:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 255              		.loc 1 459 44 is_stmt 0 view .LVU76
 256 0018 2368     		ldr	r3, [r4]
 459:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 257              		.loc 1 459 6 view .LVU77
 258 001a 1E07     		lsls	r6, r3, #28
 259 001c 00F1A380 		bmi	.L44
 260              	.L50:
 501:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 261              		.loc 1 501 3 is_stmt 1 view .LVU78
 501:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 262              		.loc 1 501 44 is_stmt 0 view .LVU79
 263 0020 2368     		ldr	r3, [r4]
 501:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 264              		.loc 1 501 6 view .LVU80
 265 0022 5D07     		lsls	r5, r3, #29
 266 0024 00F1CA80 		bmi	.L45
 267              	.L53:
 574:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 268              		.loc 1 574 3 is_stmt 1 view .LVU81
 574:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 269              		.loc 1 574 43 is_stmt 0 view .LVU82
 270 0028 2368     		ldr	r3, [r4]
 574:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 271              		.loc 1 574 5 view .LVU83
 272 002a 9B06     		lsls	r3, r3, #26
 273 002c 00F13381 		bmi	.L69
 274              	.L75:
 618:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 275              		.loc 1 618 3 is_stmt 1 view .LVU84
 620:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 276              		.loc 1 620 3 view .LVU85
 620:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 277              		.loc 1 620 29 is_stmt 0 view .LVU86
 278 0030 E069     		ldr	r0, [r4, #28]
 620:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 279              		.loc 1 620 6 view .LVU87
 280 0032 0028     		cmp	r0, #0
 281 0034 40F06081 		bne	.L70
 282              	.LVL22:
 283              	.L71:
 704:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 705:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       else
 706:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 707:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Do not return HAL_ERROR if request repeats the current configuration */
 708:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       temp_pllckcfg = RCC->PLLCFGR;
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if((READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 710:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLM) != (((RCC_OscInitStruct->PLL.PLLM) - 1U) << RCC
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLN) != ((RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFG
 712:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLPDIV) != ((RCC_OscInitStruct->PLL.PLLP) << RCC_PLL
 713:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLQ) != ((((RCC_OscInitStruct->PLL.PLLQ) >> 1U) - 1U
 714:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLR) != ((((RCC_OscInitStruct->PLL.PLLR) >> 1U) - 1U
 715:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 716:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         return HAL_ERROR;
 717:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 718:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 719:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 720:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 721:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 722:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return HAL_OK;
 284              		.loc 1 722 10 view .LVU88
 285 0038 0020     		movs	r0, #0
 286 003a 27E0     		b	.L113
 287              	.LVL23:
 288              	.L17:
 337:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 289              		.loc 1 337 5 is_stmt 1 view .LVU89
 339:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 290              		.loc 1 339 5 view .LVU90
 339:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 291              		.loc 1 339 22 is_stmt 0 view .LVU91
 292 003c AB4D     		ldr	r5, .L122
 293 003e AB68     		ldr	r3, [r5, #8]
 340:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 294              		.loc 1 340 21 view .LVU92
 295 0040 EA68     		ldr	r2, [r5, #12]
 339:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 296              		.loc 1 339 20 view .LVU93
 297 0042 03F00C03 		and	r3, r3, #12
 298              	.LVL24:
 340:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 299              		.loc 1 340 5 is_stmt 1 view .LVU94
 343:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 300              		.loc 1 343 5 view .LVU95
 343:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 301              		.loc 1 343 8 is_stmt 0 view .LVU96
 302 0046 0C2B     		cmp	r3, #12
 303 0048 0AD1     		bne	.L20
 340:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 304              		.loc 1 340 19 discriminator 1 view .LVU97
 305 004a 02F00303 		and	r3, r2, #3
 306              	.LVL25:
 343:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 307              		.loc 1 343 47 discriminator 1 view .LVU98
 308 004e 032B     		cmp	r3, #3
 309              	.LVL26:
 310              	.L117:
 343:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 311              		.loc 1 343 88 discriminator 3 view .LVU99
 312 0050 08D1     		bne	.L22
 345:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 313              		.loc 1 345 7 is_stmt 1 view .LVU100
 345:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 314              		.loc 1 345 12 is_stmt 0 view .LVU101
 315 0052 2B68     		ldr	r3, [r5]
 345:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 316              		.loc 1 345 10 view .LVU102
 317 0054 9D03     		lsls	r5, r3, #14
 318 0056 DCD5     		bpl	.L23
 345:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 319              		.loc 1 345 52 discriminator 1 view .LVU103
 320 0058 6368     		ldr	r3, [r4, #4]
 321 005a 002B     		cmp	r3, #0
 322 005c D9D1     		bne	.L23
 323 005e D3E7     		b	.L93
 324              	.LVL27:
 325              	.L20:
 343:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 326              		.loc 1 343 88 discriminator 3 view .LVU104
 327 0060 082B     		cmp	r3, #8
 328 0062 F5E7     		b	.L117
 329              	.LVL28:
 330              	.L22:
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 331              		.loc 1 353 7 is_stmt 1 view .LVU105
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 332              		.loc 1 353 7 view .LVU106
 333 0064 6368     		ldr	r3, [r4, #4]
 334 0066 B3F5803F 		cmp	r3, #65536
 335 006a 12D1     		bne	.L25
 336              	.L118:
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 337              		.loc 1 353 7 discriminator 3 view .LVU107
 338 006c 2B68     		ldr	r3, [r5]
 339 006e 43F48033 		orr	r3, r3, #65536
 340 0072 2B60     		str	r3, [r5]
 356:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 341              		.loc 1 356 7 discriminator 3 view .LVU108
 342              	.LVL29:
 343              	.L26:
 359:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 344              		.loc 1 359 9 view .LVU109
 359:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 345              		.loc 1 359 21 is_stmt 0 view .LVU110
 346 0074 FFF7FEFF 		bl	HAL_GetTick
 347              	.LVL30:
 359:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 348              		.loc 1 359 21 view .LVU111
 349 0078 0646     		mov	r6, r0
 350              	.LVL31:
 362:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 351              		.loc 1 362 9 is_stmt 1 view .LVU112
 352              	.L29:
 362:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 353              		.loc 1 362 16 is_stmt 0 view .LVU113
 354 007a 2B68     		ldr	r3, [r5]
 362:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 355              		.loc 1 362 15 view .LVU114
 356 007c 9803     		lsls	r0, r3, #14
 357 007e C8D4     		bmi	.L23
 364:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 358              		.loc 1 364 11 is_stmt 1 view .LVU115
 364:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 359              		.loc 1 364 16 is_stmt 0 view .LVU116
 360 0080 FFF7FEFF 		bl	HAL_GetTick
 361              	.LVL32:
 364:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 362              		.loc 1 364 30 view .LVU117
 363 0084 801B     		subs	r0, r0, r6
 364:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 364              		.loc 1 364 14 view .LVU118
 365 0086 6428     		cmp	r0, #100
 366 0088 F7D9     		bls	.L29
 367              	.LVL33:
 368              	.L32:
 366:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           }
 369              		.loc 1 366 20 view .LVU119
 370 008a 0320     		movs	r0, #3
 371              	.L113:
 723:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 372              		.loc 1 723 1 view .LVU120
 373 008c 02B0     		add	sp, sp, #8
 374              		.cfi_remember_state
 375              		.cfi_def_cfa_offset 24
 376              		@ sp needed
 377 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 378              	.LVL34:
 379              	.L25:
 380              		.cfi_restore_state
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 381              		.loc 1 353 7 is_stmt 1 discriminator 2 view .LVU121
 382 0092 B3F5A02F 		cmp	r3, #327680
 383 0096 04D1     		bne	.L27
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 384              		.loc 1 353 7 discriminator 3 view .LVU122
 385 0098 2B68     		ldr	r3, [r5]
 386 009a 43F48023 		orr	r3, r3, #262144
 387 009e 2B60     		str	r3, [r5]
 388 00a0 E4E7     		b	.L118
 389              	.L27:
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 390              		.loc 1 353 7 discriminator 4 view .LVU123
 391 00a2 2A68     		ldr	r2, [r5]
 392              	.LVL35:
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 393              		.loc 1 353 7 is_stmt 0 discriminator 4 view .LVU124
 394 00a4 22F48032 		bic	r2, r2, #65536
 395 00a8 2A60     		str	r2, [r5]
 353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 396              		.loc 1 353 7 is_stmt 1 discriminator 4 view .LVU125
 397 00aa 2A68     		ldr	r2, [r5]
 398 00ac 22F48022 		bic	r2, r2, #262144
 399 00b0 2A60     		str	r2, [r5]
 356:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 400              		.loc 1 356 7 discriminator 4 view .LVU126
 356:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 401              		.loc 1 356 10 is_stmt 0 discriminator 4 view .LVU127
 402 00b2 002B     		cmp	r3, #0
 403 00b4 DED1     		bne	.L26
 373:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 404              		.loc 1 373 9 is_stmt 1 view .LVU128
 373:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 405              		.loc 1 373 21 is_stmt 0 view .LVU129
 406 00b6 FFF7FEFF 		bl	HAL_GetTick
 407              	.LVL36:
 373:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 408              		.loc 1 373 21 view .LVU130
 409 00ba 0646     		mov	r6, r0
 410              	.LVL37:
 376:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 411              		.loc 1 376 9 is_stmt 1 view .LVU131
 412              	.L31:
 376:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 413              		.loc 1 376 16 is_stmt 0 view .LVU132
 414 00bc 2B68     		ldr	r3, [r5]
 376:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 415              		.loc 1 376 15 view .LVU133
 416 00be 9903     		lsls	r1, r3, #14
 417 00c0 A7D5     		bpl	.L23
 378:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 418              		.loc 1 378 11 is_stmt 1 view .LVU134
 378:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 419              		.loc 1 378 16 is_stmt 0 view .LVU135
 420 00c2 FFF7FEFF 		bl	HAL_GetTick
 421              	.LVL38:
 378:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 422              		.loc 1 378 30 view .LVU136
 423 00c6 801B     		subs	r0, r0, r6
 378:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 424              		.loc 1 378 14 view .LVU137
 425 00c8 6428     		cmp	r0, #100
 426 00ca F7D9     		bls	.L31
 427 00cc DDE7     		b	.L32
 428              	.LVL39:
 429              	.L18:
 390:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_HSI_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));
 430              		.loc 1 390 5 is_stmt 1 view .LVU138
 391:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 431              		.loc 1 391 5 view .LVU139
 394:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 432              		.loc 1 394 5 view .LVU140
 394:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 433              		.loc 1 394 22 is_stmt 0 view .LVU141
 434 00ce 874D     		ldr	r5, .L122
 435 00d0 AB68     		ldr	r3, [r5, #8]
 395:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (((temp_sysclksrc == RCC_CFGR_SWS_PLL) && (temp_pllckcfg == RCC_PLLSOURCE_HSI)) || (temp_sys
 436              		.loc 1 395 21 view .LVU142
 437 00d2 EA68     		ldr	r2, [r5, #12]
 394:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     temp_pllckcfg = __HAL_RCC_GET_PLL_OSCSOURCE();
 438              		.loc 1 394 20 view .LVU143
 439 00d4 03F00C03 		and	r3, r3, #12
 440              	.LVL40:
 395:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (((temp_sysclksrc == RCC_CFGR_SWS_PLL) && (temp_pllckcfg == RCC_PLLSOURCE_HSI)) || (temp_sys
 441              		.loc 1 395 5 is_stmt 1 view .LVU144
 396:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 442              		.loc 1 396 5 view .LVU145
 396:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 443              		.loc 1 396 8 is_stmt 0 view .LVU146
 444 00d8 0C2B     		cmp	r3, #12
 445 00da 17D1     		bne	.L35
 395:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (((temp_sysclksrc == RCC_CFGR_SWS_PLL) && (temp_pllckcfg == RCC_PLLSOURCE_HSI)) || (temp_sys
 446              		.loc 1 395 19 discriminator 1 view .LVU147
 447 00dc 02F00303 		and	r3, r2, #3
 448              	.LVL41:
 396:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 449              		.loc 1 396 47 discriminator 1 view .LVU148
 450 00e0 022B     		cmp	r3, #2
 451              	.LVL42:
 452              	.L120:
 396:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 453              		.loc 1 396 88 discriminator 3 view .LVU149
 454 00e2 15D1     		bne	.L37
 399:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 455              		.loc 1 399 7 is_stmt 1 view .LVU150
 399:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 456              		.loc 1 399 12 is_stmt 0 view .LVU151
 457 00e4 2B68     		ldr	r3, [r5]
 399:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 458              		.loc 1 399 10 view .LVU152
 459 00e6 5A05     		lsls	r2, r3, #21
 460              	.LVL43:
 399:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 461              		.loc 1 399 10 view .LVU153
 462 00e8 02D5     		bpl	.L38
 399:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 463              		.loc 1 399 52 discriminator 1 view .LVU154
 464 00ea E368     		ldr	r3, [r4, #12]
 465 00ec 002B     		cmp	r3, #0
 466 00ee 8BD0     		beq	.L93
 467              	.L38:
 407:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 468              		.loc 1 407 9 is_stmt 1 view .LVU155
 469 00f0 6B68     		ldr	r3, [r5, #4]
 470 00f2 2269     		ldr	r2, [r4, #16]
 471 00f4 23F0FE43 		bic	r3, r3, #2130706432
 472 00f8 43EA0263 		orr	r3, r3, r2, lsl #24
 473 00fc 6B60     		str	r3, [r5, #4]
 410:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 474              		.loc 1 410 9 view .LVU156
 410:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 475              		.loc 1 410 13 is_stmt 0 view .LVU157
 476 00fe 7C4B     		ldr	r3, .L122+4
 477 0100 1868     		ldr	r0, [r3]
 478 0102 FFF7FEFF 		bl	HAL_InitTick
 479              	.LVL44:
 410:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 480              		.loc 1 410 12 view .LVU158
 481 0106 0028     		cmp	r0, #0
 482 0108 86D0     		beq	.L34
 483 010a 7DE7     		b	.L93
 484              	.LVL45:
 485              	.L35:
 396:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 486              		.loc 1 396 88 discriminator 3 view .LVU159
 487 010c 042B     		cmp	r3, #4
 488 010e E8E7     		b	.L120
 489              	.LVL46:
 490              	.L37:
 419:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 491              		.loc 1 419 7 is_stmt 1 view .LVU160
 419:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 492              		.loc 1 419 10 is_stmt 0 view .LVU161
 493 0110 E368     		ldr	r3, [r4, #12]
 494 0112 BBB1     		cbz	r3, .L39
 422:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 495              		.loc 1 422 9 is_stmt 1 view .LVU162
 496 0114 2B68     		ldr	r3, [r5]
 497 0116 43F48073 		orr	r3, r3, #256
 498 011a 2B60     		str	r3, [r5]
 425:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 499              		.loc 1 425 9 view .LVU163
 425:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 500              		.loc 1 425 21 is_stmt 0 view .LVU164
 501 011c FFF7FEFF 		bl	HAL_GetTick
 502              	.LVL47:
 425:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 503              		.loc 1 425 21 view .LVU165
 504 0120 0646     		mov	r6, r0
 505              	.LVL48:
 428:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 506              		.loc 1 428 9 is_stmt 1 view .LVU166
 507              	.L40:
 428:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 508              		.loc 1 428 16 is_stmt 0 view .LVU167
 509 0122 2B68     		ldr	r3, [r5]
 428:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 510              		.loc 1 428 15 view .LVU168
 511 0124 5B05     		lsls	r3, r3, #21
 512 0126 07D5     		bpl	.L41
 437:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 513              		.loc 1 437 9 is_stmt 1 view .LVU169
 514 0128 6B68     		ldr	r3, [r5, #4]
 515 012a 2269     		ldr	r2, [r4, #16]
 516 012c 23F0FE43 		bic	r3, r3, #2130706432
 517 0130 43EA0263 		orr	r3, r3, r2, lsl #24
 518 0134 6B60     		str	r3, [r5, #4]
 519 0136 6FE7     		b	.L34
 520              	.L41:
 430:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 521              		.loc 1 430 11 view .LVU170
 430:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 522              		.loc 1 430 16 is_stmt 0 view .LVU171
 523 0138 FFF7FEFF 		bl	HAL_GetTick
 524              	.LVL49:
 430:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 525              		.loc 1 430 30 view .LVU172
 526 013c 801B     		subs	r0, r0, r6
 430:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 527              		.loc 1 430 14 view .LVU173
 528 013e 0228     		cmp	r0, #2
 529 0140 EFD9     		bls	.L40
 530 0142 A2E7     		b	.L32
 531              	.LVL50:
 532              	.L39:
 442:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 533              		.loc 1 442 9 is_stmt 1 view .LVU174
 534 0144 2B68     		ldr	r3, [r5]
 535 0146 23F48073 		bic	r3, r3, #256
 536 014a 2B60     		str	r3, [r5]
 445:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 537              		.loc 1 445 9 view .LVU175
 445:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 538              		.loc 1 445 21 is_stmt 0 view .LVU176
 539 014c FFF7FEFF 		bl	HAL_GetTick
 540              	.LVL51:
 445:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 541              		.loc 1 445 21 view .LVU177
 542 0150 0646     		mov	r6, r0
 543              	.LVL52:
 448:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 544              		.loc 1 448 9 is_stmt 1 view .LVU178
 545              	.L42:
 448:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 546              		.loc 1 448 16 is_stmt 0 view .LVU179
 547 0152 2B68     		ldr	r3, [r5]
 448:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 548              		.loc 1 448 15 view .LVU180
 549 0154 5F05     		lsls	r7, r3, #21
 550 0156 7FF55FAF 		bpl	.L34
 450:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 551              		.loc 1 450 11 is_stmt 1 view .LVU181
 450:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 552              		.loc 1 450 16 is_stmt 0 view .LVU182
 553 015a FFF7FEFF 		bl	HAL_GetTick
 554              	.LVL53:
 450:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 555              		.loc 1 450 30 view .LVU183
 556 015e 801B     		subs	r0, r0, r6
 450:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 557              		.loc 1 450 14 view .LVU184
 558 0160 0228     		cmp	r0, #2
 559 0162 F6D9     		bls	.L42
 560 0164 91E7     		b	.L32
 561              	.LVL54:
 562              	.L44:
 462:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 563              		.loc 1 462 5 is_stmt 1 view .LVU185
 465:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 564              		.loc 1 465 5 view .LVU186
 465:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 565              		.loc 1 465 7 is_stmt 0 view .LVU187
 566 0166 6369     		ldr	r3, [r4, #20]
 567 0168 604D     		ldr	r5, .L122
 568 016a 9BB1     		cbz	r3, .L47
 468:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 569              		.loc 1 468 7 is_stmt 1 view .LVU188
 570 016c D5F89430 		ldr	r3, [r5, #148]
 571 0170 43F00103 		orr	r3, r3, #1
 572 0174 C5F89430 		str	r3, [r5, #148]
 471:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 573              		.loc 1 471 7 view .LVU189
 471:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 574              		.loc 1 471 19 is_stmt 0 view .LVU190
 575 0178 FFF7FEFF 		bl	HAL_GetTick
 576              	.LVL55:
 577 017c 0646     		mov	r6, r0
 578              	.LVL56:
 474:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 579              		.loc 1 474 7 is_stmt 1 view .LVU191
 580              	.L48:
 474:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 581              		.loc 1 474 14 is_stmt 0 view .LVU192
 582 017e D5F89430 		ldr	r3, [r5, #148]
 474:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 583              		.loc 1 474 13 view .LVU193
 584 0182 9807     		lsls	r0, r3, #30
 585 0184 3FF54CAF 		bmi	.L50
 476:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 586              		.loc 1 476 9 is_stmt 1 view .LVU194
 476:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 587              		.loc 1 476 14 is_stmt 0 view .LVU195
 588 0188 FFF7FEFF 		bl	HAL_GetTick
 589              	.LVL57:
 476:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 590              		.loc 1 476 28 view .LVU196
 591 018c 801B     		subs	r0, r0, r6
 476:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 592              		.loc 1 476 12 view .LVU197
 593 018e 0228     		cmp	r0, #2
 594 0190 F5D9     		bls	.L48
 595 0192 7AE7     		b	.L32
 596              	.LVL58:
 597              	.L47:
 485:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 598              		.loc 1 485 7 is_stmt 1 view .LVU198
 599 0194 D5F89430 		ldr	r3, [r5, #148]
 600 0198 23F00103 		bic	r3, r3, #1
 601 019c C5F89430 		str	r3, [r5, #148]
 488:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 602              		.loc 1 488 7 view .LVU199
 488:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 603              		.loc 1 488 19 is_stmt 0 view .LVU200
 604 01a0 FFF7FEFF 		bl	HAL_GetTick
 605              	.LVL59:
 606 01a4 0646     		mov	r6, r0
 607              	.LVL60:
 491:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 608              		.loc 1 491 7 is_stmt 1 view .LVU201
 609              	.L51:
 491:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 610              		.loc 1 491 13 is_stmt 0 view .LVU202
 611 01a6 D5F89430 		ldr	r3, [r5, #148]
 491:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 612              		.loc 1 491 12 view .LVU203
 613 01aa 9907     		lsls	r1, r3, #30
 614 01ac 7FF538AF 		bpl	.L50
 493:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 615              		.loc 1 493 9 is_stmt 1 view .LVU204
 493:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 616              		.loc 1 493 13 is_stmt 0 view .LVU205
 617 01b0 FFF7FEFF 		bl	HAL_GetTick
 618              	.LVL61:
 493:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 619              		.loc 1 493 27 view .LVU206
 620 01b4 801B     		subs	r0, r0, r6
 493:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 621              		.loc 1 493 11 view .LVU207
 622 01b6 0228     		cmp	r0, #2
 623 01b8 F5D9     		bls	.L51
 624 01ba 66E7     		b	.L32
 625              	.LVL62:
 626              	.L45:
 627              	.LBB6:
 503:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 628              		.loc 1 503 5 is_stmt 1 view .LVU208
 506:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 629              		.loc 1 506 5 view .LVU209
 510:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 630              		.loc 1 510 5 view .LVU210
 510:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 631              		.loc 1 510 9 is_stmt 0 view .LVU211
 632 01bc 4B4D     		ldr	r5, .L122
 633 01be AB6D     		ldr	r3, [r5, #88]
 510:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 634              		.loc 1 510 41 view .LVU212
 635 01c0 DA00     		lsls	r2, r3, #3
 636 01c2 1CD4     		bmi	.L87
 512:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pwrclkchanged = SET;
 637              		.loc 1 512 7 is_stmt 1 view .LVU213
 638              	.LBB7:
 512:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pwrclkchanged = SET;
 639              		.loc 1 512 7 view .LVU214
 512:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pwrclkchanged = SET;
 640              		.loc 1 512 7 view .LVU215
 641 01c4 AB6D     		ldr	r3, [r5, #88]
 642 01c6 43F08053 		orr	r3, r3, #268435456
 643 01ca AB65     		str	r3, [r5, #88]
 512:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pwrclkchanged = SET;
 644              		.loc 1 512 7 view .LVU216
 645 01cc AB6D     		ldr	r3, [r5, #88]
 646 01ce 03F08053 		and	r3, r3, #268435456
 647 01d2 0193     		str	r3, [sp, #4]
 512:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pwrclkchanged = SET;
 648              		.loc 1 512 7 view .LVU217
 649 01d4 019B     		ldr	r3, [sp, #4]
 650              	.LBE7:
 513:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 651              		.loc 1 513 7 view .LVU218
 652              	.LVL63:
 513:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 653              		.loc 1 513 21 is_stmt 0 view .LVU219
 654 01d6 0127     		movs	r7, #1
 655              	.LVL64:
 656              	.L54:
 516:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 657              		.loc 1 516 5 is_stmt 1 view .LVU220
 516:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 658              		.loc 1 516 9 is_stmt 0 view .LVU221
 659 01d8 464E     		ldr	r6, .L122+8
 660 01da 3368     		ldr	r3, [r6]
 516:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 661              		.loc 1 516 8 view .LVU222
 662 01dc DB05     		lsls	r3, r3, #23
 663 01de 10D5     		bpl	.L55
 664              	.L60:
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 665              		.loc 1 534 5 is_stmt 1 view .LVU223
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 666              		.loc 1 534 5 view .LVU224
 667 01e0 A368     		ldr	r3, [r4, #8]
 668 01e2 012B     		cmp	r3, #1
 669 01e4 1ED1     		bne	.L114
 670              	.L121:
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 671              		.loc 1 534 5 discriminator 3 view .LVU225
 672 01e6 D5F89030 		ldr	r3, [r5, #144]
 673 01ea 43F00103 		orr	r3, r3, #1
 674 01ee C5F89030 		str	r3, [r5, #144]
 675              	.L61:
 537:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 676              		.loc 1 537 5 view .LVU226
 540:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 677              		.loc 1 540 7 view .LVU227
 540:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 678              		.loc 1 540 19 is_stmt 0 view .LVU228
 679 01f2 FFF7FEFF 		bl	HAL_GetTick
 680              	.LVL65:
 545:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 681              		.loc 1 545 11 view .LVU229
 682 01f6 41F28836 		movw	r6, #5000
 540:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 683              		.loc 1 540 19 view .LVU230
 684 01fa 8046     		mov	r8, r0
 685              	.LVL66:
 543:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 686              		.loc 1 543 7 is_stmt 1 view .LVU231
 543:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 687              		.loc 1 543 13 is_stmt 0 view .LVU232
 688 01fc 3FE0     		b	.L86
 689              	.LVL67:
 690              	.L87:
 503:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 691              		.loc 1 503 22 view .LVU233
 692 01fe 0027     		movs	r7, #0
 693 0200 EAE7     		b	.L54
 694              	.LVL68:
 695              	.L55:
 519:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 696              		.loc 1 519 7 is_stmt 1 view .LVU234
 697 0202 3368     		ldr	r3, [r6]
 698 0204 43F48073 		orr	r3, r3, #256
 699 0208 3360     		str	r3, [r6]
 522:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 700              		.loc 1 522 7 view .LVU235
 522:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 701              		.loc 1 522 19 is_stmt 0 view .LVU236
 702 020a FFF7FEFF 		bl	HAL_GetTick
 703              	.LVL69:
 704 020e 8046     		mov	r8, r0
 705              	.LVL70:
 524:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 706              		.loc 1 524 7 is_stmt 1 view .LVU237
 707              	.L58:
 524:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 708              		.loc 1 524 14 is_stmt 0 view .LVU238
 709 0210 3368     		ldr	r3, [r6]
 524:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 710              		.loc 1 524 13 view .LVU239
 711 0212 D805     		lsls	r0, r3, #23
 712 0214 E4D4     		bmi	.L60
 526:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 713              		.loc 1 526 9 is_stmt 1 view .LVU240
 526:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 714              		.loc 1 526 14 is_stmt 0 view .LVU241
 715 0216 FFF7FEFF 		bl	HAL_GetTick
 716              	.LVL71:
 526:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 717              		.loc 1 526 28 view .LVU242
 718 021a A0EB0800 		sub	r0, r0, r8
 526:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 719              		.loc 1 526 12 view .LVU243
 720 021e 0228     		cmp	r0, #2
 721 0220 F6D9     		bls	.L58
 722 0222 32E7     		b	.L32
 723              	.LVL72:
 724              	.L114:
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 725              		.loc 1 534 5 is_stmt 1 discriminator 2 view .LVU244
 726 0224 052B     		cmp	r3, #5
 727 0226 06D1     		bne	.L62
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 728              		.loc 1 534 5 discriminator 3 view .LVU245
 729 0228 D5F89030 		ldr	r3, [r5, #144]
 730 022c 43F00403 		orr	r3, r3, #4
 731 0230 C5F89030 		str	r3, [r5, #144]
 732 0234 D7E7     		b	.L121
 733              	.L62:
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 734              		.loc 1 534 5 discriminator 4 view .LVU246
 735 0236 D5F89020 		ldr	r2, [r5, #144]
 736 023a 22F00102 		bic	r2, r2, #1
 737 023e C5F89020 		str	r2, [r5, #144]
 534:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 738              		.loc 1 534 5 discriminator 4 view .LVU247
 739 0242 D5F89020 		ldr	r2, [r5, #144]
 740 0246 22F00402 		bic	r2, r2, #4
 741 024a C5F89020 		str	r2, [r5, #144]
 537:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 742              		.loc 1 537 5 discriminator 4 view .LVU248
 537:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 743              		.loc 1 537 8 is_stmt 0 discriminator 4 view .LVU249
 744 024e 002B     		cmp	r3, #0
 745 0250 CFD1     		bne	.L61
 554:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 746              		.loc 1 554 7 is_stmt 1 view .LVU250
 554:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 747              		.loc 1 554 19 is_stmt 0 view .LVU251
 748 0252 FFF7FEFF 		bl	HAL_GetTick
 749              	.LVL73:
 559:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 750              		.loc 1 559 11 view .LVU252
 751 0256 41F28838 		movw	r8, #5000
 554:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 752              		.loc 1 554 19 view .LVU253
 753 025a 0646     		mov	r6, r0
 754              	.LVL74:
 557:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 755              		.loc 1 557 7 is_stmt 1 view .LVU254
 756              	.L66:
 557:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 757              		.loc 1 557 14 is_stmt 0 view .LVU255
 758 025c D5F89030 		ldr	r3, [r5, #144]
 557:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 759              		.loc 1 557 13 view .LVU256
 760 0260 9A07     		lsls	r2, r3, #30
 761 0262 10D5     		bpl	.L68
 559:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 762              		.loc 1 559 9 is_stmt 1 view .LVU257
 559:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 763              		.loc 1 559 13 is_stmt 0 view .LVU258
 764 0264 FFF7FEFF 		bl	HAL_GetTick
 765              	.LVL75:
 559:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 766              		.loc 1 559 27 view .LVU259
 767 0268 801B     		subs	r0, r0, r6
 559:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 768              		.loc 1 559 11 view .LVU260
 769 026a 4045     		cmp	r0, r8
 770 026c F6D9     		bls	.L66
 771 026e 0CE7     		b	.L32
 772              	.LVL76:
 773              	.L64:
 545:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 774              		.loc 1 545 9 is_stmt 1 view .LVU261
 545:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 775              		.loc 1 545 13 is_stmt 0 view .LVU262
 776 0270 FFF7FEFF 		bl	HAL_GetTick
 777              	.LVL77:
 545:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 778              		.loc 1 545 27 view .LVU263
 779 0274 A0EB0800 		sub	r0, r0, r8
 545:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 780              		.loc 1 545 11 view .LVU264
 781 0278 B042     		cmp	r0, r6
 782 027a 3FF606AF 		bhi	.L32
 783              	.L86:
 543:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 784              		.loc 1 543 14 view .LVU265
 785 027e D5F89030 		ldr	r3, [r5, #144]
 543:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 786              		.loc 1 543 13 view .LVU266
 787 0282 9907     		lsls	r1, r3, #30
 788 0284 F4D5     		bpl	.L64
 789              	.LVL78:
 790              	.L68:
 567:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 791              		.loc 1 567 5 is_stmt 1 view .LVU267
 567:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 792              		.loc 1 567 8 is_stmt 0 view .LVU268
 793 0286 002F     		cmp	r7, #0
 794 0288 3FF4CEAE 		beq	.L53
 569:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 795              		.loc 1 569 7 is_stmt 1 view .LVU269
 796 028c AB6D     		ldr	r3, [r5, #88]
 797 028e 23F08053 		bic	r3, r3, #268435456
 798 0292 AB65     		str	r3, [r5, #88]
 799 0294 C8E6     		b	.L53
 800              	.LVL79:
 801              	.L69:
 569:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 802              		.loc 1 569 7 is_stmt 0 view .LVU270
 803              	.LBE6:
 577:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 804              		.loc 1 577 5 is_stmt 1 view .LVU271
 580:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 805              		.loc 1 580 5 view .LVU272
 580:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 806              		.loc 1 580 7 is_stmt 0 view .LVU273
 807 0296 A369     		ldr	r3, [r4, #24]
 808 0298 144D     		ldr	r5, .L122
 809 029a 9BB1     		cbz	r3, .L72
 583:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 810              		.loc 1 583 7 is_stmt 1 view .LVU274
 811 029c D5F89830 		ldr	r3, [r5, #152]
 812 02a0 43F00103 		orr	r3, r3, #1
 813 02a4 C5F89830 		str	r3, [r5, #152]
 586:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 814              		.loc 1 586 7 view .LVU275
 586:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 815              		.loc 1 586 19 is_stmt 0 view .LVU276
 816 02a8 FFF7FEFF 		bl	HAL_GetTick
 817              	.LVL80:
 818 02ac 0646     		mov	r6, r0
 819              	.LVL81:
 589:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 820              		.loc 1 589 7 is_stmt 1 view .LVU277
 821              	.L73:
 589:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 822              		.loc 1 589 13 is_stmt 0 view .LVU278
 823 02ae D5F89830 		ldr	r3, [r5, #152]
 589:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 824              		.loc 1 589 12 view .LVU279
 825 02b2 9F07     		lsls	r7, r3, #30
 826 02b4 3FF5BCAE 		bmi	.L75
 591:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 827              		.loc 1 591 9 is_stmt 1 view .LVU280
 591:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 828              		.loc 1 591 13 is_stmt 0 view .LVU281
 829 02b8 FFF7FEFF 		bl	HAL_GetTick
 830              	.LVL82:
 591:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 831              		.loc 1 591 27 view .LVU282
 832 02bc 801B     		subs	r0, r0, r6
 591:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 833              		.loc 1 591 11 view .LVU283
 834 02be 0228     		cmp	r0, #2
 835 02c0 F5D9     		bls	.L73
 836 02c2 E2E6     		b	.L32
 837              	.LVL83:
 838              	.L72:
 600:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 839              		.loc 1 600 7 is_stmt 1 view .LVU284
 840 02c4 D5F89830 		ldr	r3, [r5, #152]
 841 02c8 23F00103 		bic	r3, r3, #1
 842 02cc C5F89830 		str	r3, [r5, #152]
 603:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 843              		.loc 1 603 7 view .LVU285
 603:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 844              		.loc 1 603 19 is_stmt 0 view .LVU286
 845 02d0 FFF7FEFF 		bl	HAL_GetTick
 846              	.LVL84:
 847 02d4 0646     		mov	r6, r0
 848              	.LVL85:
 606:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 849              		.loc 1 606 7 is_stmt 1 view .LVU287
 850              	.L76:
 606:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 851              		.loc 1 606 13 is_stmt 0 view .LVU288
 852 02d6 D5F89830 		ldr	r3, [r5, #152]
 606:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 853              		.loc 1 606 12 view .LVU289
 854 02da 9807     		lsls	r0, r3, #30
 855 02dc 7FF5A8AE 		bpl	.L75
 608:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 856              		.loc 1 608 9 is_stmt 1 view .LVU290
 608:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 857              		.loc 1 608 13 is_stmt 0 view .LVU291
 858 02e0 FFF7FEFF 		bl	HAL_GetTick
 859              	.LVL86:
 608:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 860              		.loc 1 608 27 view .LVU292
 861 02e4 801B     		subs	r0, r0, r6
 608:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 862              		.loc 1 608 11 view .LVU293
 863 02e6 0228     		cmp	r0, #2
 864 02e8 F5D9     		bls	.L76
 865 02ea CEE6     		b	.L32
 866              	.L123:
 867              		.align	2
 868              	.L122:
 869 02ec 00100240 		.word	1073876992
 870 02f0 00000000 		.word	uwTickPrio
 871 02f4 00700040 		.word	1073770496
 872              	.LVL87:
 873              	.L70:
 623:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 874              		.loc 1 623 5 is_stmt 1 view .LVU294
 623:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 875              		.loc 1 623 9 is_stmt 0 view .LVU295
 876 02f8 494B     		ldr	r3, .L124
 877 02fa 9A68     		ldr	r2, [r3, #8]
 878 02fc 02F00C02 		and	r2, r2, #12
 623:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 879              		.loc 1 623 8 view .LVU296
 880 0300 0C2A     		cmp	r2, #12
 881 0302 1D46     		mov	r5, r3
 882 0304 57D0     		beq	.L78
 625:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 883              		.loc 1 625 7 is_stmt 1 view .LVU297
 636:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 884              		.loc 1 636 9 is_stmt 0 view .LVU298
 885 0306 1B68     		ldr	r3, [r3]
 625:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 886              		.loc 1 625 10 view .LVU299
 887 0308 0228     		cmp	r0, #2
 636:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 888              		.loc 1 636 9 view .LVU300
 889 030a 23F08073 		bic	r3, r3, #16777216
 890 030e 2B60     		str	r3, [r5]
 625:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 891              		.loc 1 625 10 view .LVU301
 892 0310 3AD1     		bne	.L79
 628:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLM_VALUE(RCC_OscInitStruct->PLL.PLLM));
 893              		.loc 1 628 9 is_stmt 1 view .LVU302
 629:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
 894              		.loc 1 629 9 view .LVU303
 630:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
 895              		.loc 1 630 9 view .LVU304
 631:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));
 896              		.loc 1 631 9 view .LVU305
 632:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         assert_param(IS_RCC_PLLR_VALUE(RCC_OscInitStruct->PLL.PLLR));
 897              		.loc 1 632 9 view .LVU306
 633:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 898              		.loc 1 633 9 view .LVU307
 636:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 899              		.loc 1 636 9 view .LVU308
 639:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 900              		.loc 1 639 9 view .LVU309
 639:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 901              		.loc 1 639 21 is_stmt 0 view .LVU310
 902 0312 FFF7FEFF 		bl	HAL_GetTick
 903              	.LVL88:
 904 0316 0646     		mov	r6, r0
 905              	.LVL89:
 642:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 906              		.loc 1 642 9 is_stmt 1 view .LVU311
 907              	.L80:
 642:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 908              		.loc 1 642 16 is_stmt 0 view .LVU312
 909 0318 2B68     		ldr	r3, [r5]
 642:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 910              		.loc 1 642 15 view .LVU313
 911 031a 9901     		lsls	r1, r3, #6
 912 031c 2ED4     		bmi	.L81
 651:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 913              		.loc 1 651 9 is_stmt 1 view .LVU314
 914 031e EA68     		ldr	r2, [r5, #12]
 915 0320 404B     		ldr	r3, .L124+4
 916 0322 1340     		ands	r3, r3, r2
 917 0324 226A     		ldr	r2, [r4, #32]
 918 0326 1343     		orrs	r3, r3, r2
 919 0328 A26A     		ldr	r2, [r4, #40]
 920 032a 43EA0223 		orr	r3, r3, r2, lsl #8
 921 032e E26A     		ldr	r2, [r4, #44]
 922 0330 43EAC263 		orr	r3, r3, r2, lsl #27
 923 0334 626A     		ldr	r2, [r4, #36]
 924 0336 013A     		subs	r2, r2, #1
 925 0338 43EA0213 		orr	r3, r3, r2, lsl #4
 926 033c 226B     		ldr	r2, [r4, #48]
 927 033e 5208     		lsrs	r2, r2, #1
 928 0340 013A     		subs	r2, r2, #1
 929 0342 43EA4253 		orr	r3, r3, r2, lsl #21
 930 0346 626B     		ldr	r2, [r4, #52]
 931 0348 5208     		lsrs	r2, r2, #1
 932 034a 013A     		subs	r2, r2, #1
 933 034c 43EA4263 		orr	r3, r3, r2, lsl #25
 934 0350 EB60     		str	r3, [r5, #12]
 659:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 935              		.loc 1 659 9 view .LVU315
 936 0352 2B68     		ldr	r3, [r5]
 937 0354 43F08073 		orr	r3, r3, #16777216
 938 0358 2B60     		str	r3, [r5]
 662:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 939              		.loc 1 662 10 view .LVU316
 940 035a EB68     		ldr	r3, [r5, #12]
 941 035c 43F08073 		orr	r3, r3, #16777216
 942 0360 EB60     		str	r3, [r5, #12]
 665:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 943              		.loc 1 665 9 view .LVU317
 665:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 944              		.loc 1 665 21 is_stmt 0 view .LVU318
 945 0362 FFF7FEFF 		bl	HAL_GetTick
 946              	.LVL90:
 947 0366 0446     		mov	r4, r0
 948              	.LVL91:
 668:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 949              		.loc 1 668 9 is_stmt 1 view .LVU319
 950              	.L82:
 668:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 951              		.loc 1 668 16 is_stmt 0 view .LVU320
 952 0368 2B68     		ldr	r3, [r5]
 668:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 953              		.loc 1 668 15 view .LVU321
 954 036a 9A01     		lsls	r2, r3, #6
 955 036c 3FF564AE 		bmi	.L71
 670:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 956              		.loc 1 670 11 is_stmt 1 view .LVU322
 670:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 957              		.loc 1 670 16 is_stmt 0 view .LVU323
 958 0370 FFF7FEFF 		bl	HAL_GetTick
 959              	.LVL92:
 670:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 960              		.loc 1 670 30 view .LVU324
 961 0374 001B     		subs	r0, r0, r4
 670:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 962              		.loc 1 670 14 view .LVU325
 963 0376 0228     		cmp	r0, #2
 964 0378 F6D9     		bls	.L82
 965 037a 86E6     		b	.L32
 966              	.LVL93:
 967              	.L81:
 644:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 968              		.loc 1 644 11 is_stmt 1 view .LVU326
 644:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 969              		.loc 1 644 16 is_stmt 0 view .LVU327
 970 037c FFF7FEFF 		bl	HAL_GetTick
 971              	.LVL94:
 644:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 972              		.loc 1 644 30 view .LVU328
 973 0380 801B     		subs	r0, r0, r6
 644:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 974              		.loc 1 644 14 view .LVU329
 975 0382 0228     		cmp	r0, #2
 976 0384 C8D9     		bls	.L80
 977 0386 80E6     		b	.L32
 978              	.LVL95:
 979              	.L79:
 679:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 980              		.loc 1 679 9 is_stmt 1 view .LVU330
 682:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         __HAL_RCC_PLLCLKOUT_DISABLE(RCC_PLL_SYSCLK | RCC_PLL_48M1CLK | RCC_PLL_ADCCLK);
 981              		.loc 1 682 11 view .LVU331
 982 0388 EB68     		ldr	r3, [r5, #12]
 983 038a 23F00303 		bic	r3, r3, #3
 984 038e EB60     		str	r3, [r5, #12]
 683:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 985              		.loc 1 683 9 view .LVU332
 986 0390 EB68     		ldr	r3, [r5, #12]
 987 0392 23F08873 		bic	r3, r3, #17825792
 988 0396 23F48033 		bic	r3, r3, #65536
 989 039a EB60     		str	r3, [r5, #12]
 686:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 990              		.loc 1 686 9 view .LVU333
 686:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 991              		.loc 1 686 21 is_stmt 0 view .LVU334
 992 039c FFF7FEFF 		bl	HAL_GetTick
 993              	.LVL96:
 994 03a0 0446     		mov	r4, r0
 995              	.LVL97:
 689:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 996              		.loc 1 689 9 is_stmt 1 view .LVU335
 997              	.L84:
 689:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 998              		.loc 1 689 16 is_stmt 0 view .LVU336
 999 03a2 2B68     		ldr	r3, [r5]
 689:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 1000              		.loc 1 689 15 view .LVU337
 1001 03a4 9B01     		lsls	r3, r3, #6
 1002 03a6 7FF547AE 		bpl	.L71
 691:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 1003              		.loc 1 691 11 is_stmt 1 view .LVU338
 691:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 1004              		.loc 1 691 16 is_stmt 0 view .LVU339
 1005 03aa FFF7FEFF 		bl	HAL_GetTick
 1006              	.LVL98:
 691:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 1007              		.loc 1 691 30 view .LVU340
 1008 03ae 001B     		subs	r0, r0, r4
 691:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           {
 1009              		.loc 1 691 14 view .LVU341
 1010 03b0 0228     		cmp	r0, #2
 1011 03b2 F6D9     		bls	.L84
 1012 03b4 69E6     		b	.L32
 1013              	.LVL99:
 1014              	.L78:
 701:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1015              		.loc 1 701 7 is_stmt 1 view .LVU342
 701:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1016              		.loc 1 701 9 is_stmt 0 view .LVU343
 1017 03b6 0128     		cmp	r0, #1
 1018 03b8 3FF468AE 		beq	.L113
 708:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if((READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 1019              		.loc 1 708 7 is_stmt 1 view .LVU344
 708:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if((READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 1020              		.loc 1 708 21 is_stmt 0 view .LVU345
 1021 03bc DB68     		ldr	r3, [r3, #12]
 1022              	.LVL100:
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLM) != (((RCC_OscInitStruct->PLL.PLLM) - 1U) << RCC
 1023              		.loc 1 709 7 is_stmt 1 view .LVU346
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLM) != (((RCC_OscInitStruct->PLL.PLLM) - 1U) << RCC
 1024              		.loc 1 709 9 is_stmt 0 view .LVU347
 1025 03be 226A     		ldr	r2, [r4, #32]
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLM) != (((RCC_OscInitStruct->PLL.PLLM) - 1U) << RCC
 1026              		.loc 1 709 11 view .LVU348
 1027 03c0 03F00301 		and	r1, r3, #3
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLM) != (((RCC_OscInitStruct->PLL.PLLM) - 1U) << RCC
 1028              		.loc 1 709 9 view .LVU349
 1029 03c4 9142     		cmp	r1, r2
 1030 03c6 7FF41FAE 		bne	.L93
 710:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLN) != ((RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFG
 1031              		.loc 1 710 88 discriminator 1 view .LVU350
 1032 03ca 616A     		ldr	r1, [r4, #36]
 710:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLN) != ((RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFG
 1033              		.loc 1 710 11 discriminator 1 view .LVU351
 1034 03cc 03F0F002 		and	r2, r3, #240
 710:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLN) != ((RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFG
 1035              		.loc 1 710 88 discriminator 1 view .LVU352
 1036 03d0 0139     		subs	r1, r1, #1
 709:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLM) != (((RCC_OscInitStruct->PLL.PLLM) - 1U) << RCC
 1037              		.loc 1 709 92 discriminator 1 view .LVU353
 1038 03d2 B2EB011F 		cmp	r2, r1, lsl #4
 1039 03d6 7FF417AE 		bne	.L93
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLPDIV) != ((RCC_OscInitStruct->PLL.PLLP) << RCC_PLL
 1040              		.loc 1 711 87 view .LVU354
 1041 03da A16A     		ldr	r1, [r4, #40]
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLPDIV) != ((RCC_OscInitStruct->PLL.PLLP) << RCC_PLL
 1042              		.loc 1 711 11 view .LVU355
 1043 03dc 03F4FE42 		and	r2, r3, #32512
 710:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLN) != ((RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFG
 1044              		.loc 1 710 120 view .LVU356
 1045 03e0 B2EB012F 		cmp	r2, r1, lsl #8
 1046 03e4 7FF410AE 		bne	.L93
 712:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLQ) != ((((RCC_OscInitStruct->PLL.PLLQ) >> 1U) - 1U
 1047              		.loc 1 712 90 view .LVU357
 1048 03e8 E16A     		ldr	r1, [r4, #44]
 712:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLQ) != ((((RCC_OscInitStruct->PLL.PLLQ) >> 1U) - 1U
 1049              		.loc 1 712 11 view .LVU358
 1050 03ea 03F07842 		and	r2, r3, #-134217728
 711:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLPDIV) != ((RCC_OscInitStruct->PLL.PLLP) << RCC_PLL
 1051              		.loc 1 711 113 view .LVU359
 1052 03ee B2EBC16F 		cmp	r2, r1, lsl #27
 1053 03f2 7FF409AE 		bne	.L93
 713:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLR) != ((((RCC_OscInitStruct->PLL.PLLR) >> 1U) - 1U
 1054              		.loc 1 713 89 view .LVU360
 1055 03f6 226B     		ldr	r2, [r4, #48]
 1056 03f8 5208     		lsrs	r2, r2, #1
 713:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLR) != ((((RCC_OscInitStruct->PLL.PLLR) >> 1U) - 1U
 1057              		.loc 1 713 11 view .LVU361
 1058 03fa 03F4C001 		and	r1, r3, #6291456
 713:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLR) != ((((RCC_OscInitStruct->PLL.PLLR) >> 1U) - 1U
 1059              		.loc 1 713 96 view .LVU362
 1060 03fe 013A     		subs	r2, r2, #1
 712:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLQ) != ((((RCC_OscInitStruct->PLL.PLLQ) >> 1U) - 1U
 1061              		.loc 1 712 119 view .LVU363
 1062 0400 B1EB425F 		cmp	r1, r2, lsl #21
 1063 0404 7FF400AE 		bne	.L93
 714:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1064              		.loc 1 714 89 view .LVU364
 1065 0408 626B     		ldr	r2, [r4, #52]
 1066 040a 5208     		lsrs	r2, r2, #1
 714:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1067              		.loc 1 714 96 view .LVU365
 1068 040c 013A     		subs	r2, r2, #1
 714:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1069              		.loc 1 714 11 view .LVU366
 1070 040e 03F0C063 		and	r3, r3, #100663296
 1071              	.LVL101:
 713:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****          (READ_BIT(temp_pllckcfg, RCC_PLLCFGR_PLLR) != ((((RCC_OscInitStruct->PLL.PLLR) >> 1U) - 1U
 1072              		.loc 1 713 128 view .LVU367
 1073 0412 B3EB426F 		cmp	r3, r2, lsl #25
 703:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 1074              		.loc 1 703 16 view .LVU368
 1075 0416 14BF     		ite	ne
 1076 0418 0120     		movne	r0, #1
 1077 041a 0020     		moveq	r0, #0
 1078 041c 36E6     		b	.L113
 1079              	.L125:
 1080 041e 00BF     		.align	2
 1081              	.L124:
 1082 0420 00100240 		.word	1073876992
 1083 0424 0C809F01 		.word	27230220
 1084              		.cfi_endproc
 1085              	.LFE326:
 1087              		.section	.text.HAL_RCC_MCOConfig,"ax",%progbits
 1088              		.align	1
 1089              		.global	HAL_RCC_MCOConfig
 1090              		.syntax unified
 1091              		.thumb
 1092              		.thumb_func
 1093              		.fpu fpv4-sp-d16
 1095              	HAL_RCC_MCOConfig:
 1096              	.LVL102:
 1097              	.LFB328:
 724:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 725:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
 726:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Initialize the CPU, AHB and APB busses clocks according to the specified
 727:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         parameters in the RCC_ClkInitStruct.
 728:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  RCC_ClkInitStruct  pointer to an RCC_OscInitTypeDef structure that
 729:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         contains the configuration information for the RCC peripheral.
 730:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  FLatency  FLASH Latency
 731:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 732:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_0   FLASH 0 Latency cycle
 733:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_1   FLASH 1 Latency cycle
 734:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_2   FLASH 2 Latency cycles
 735:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_3   FLASH 3 Latency cycles
 736:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_4   FLASH 4 Latency cycles
 737:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_5   FLASH 5 Latency cycles
 738:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_6   FLASH 6 Latency cycles
 739:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_7   FLASH 7 Latency cycles
 740:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_8   FLASH 8 Latency cycles
 741:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_9   FLASH 9 Latency cycles
 742:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_10  FLASH 10 Latency cycles
 743:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_11  FLASH 11 Latency cycles
 744:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_12  FLASH 12 Latency cycles
 745:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_13  FLASH 13 Latency cycles
 746:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_14  FLASH 14 Latency cycles
 747:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg FLASH_LATENCY_15  FLASH 15 Latency cycles
 748:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
 749:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
 750:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         and updated by HAL_RCC_GetHCLKFreq() function called within this function
 751:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
 752:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The HSI is used by default as system clock source after
 753:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         startup from Reset, wake-up from STANDBY mode. After restart from Reset,
 754:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         the HSI frequency is set to its default value 16 MHz.
 755:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
 756:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The HSI can be selected as system clock source after
 757:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         from STOP modes or in case of failure of the HSE used directly or indirectly
 758:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         as system clock (if the Clock Security System CSS is enabled).
 759:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
 760:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   A switch from one clock source to another occurs only if the target
 761:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         clock source is ready (clock stable after startup delay or PLL locked).
 762:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         If a clock source which is not yet ready is selected, the switch will
 763:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         occur when the clock source is ready.
 764:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
 765:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   You can use HAL_RCC_GetClockConfig() function to know which clock is
 766:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         currently used as system clock source.
 767:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
 768:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   Depending on the device voltage range, the software has to set correctly
 769:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
 770:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         (for more details refer to section above "Initialization/de-initialization functions")
 771:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
 772:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 773:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
 774:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
 775:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
 776:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t pllfreq;
 777:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t hpre = RCC_SYSCLK_DIV1;
 778:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 779:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check Null pointer */
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (RCC_ClkInitStruct == NULL)
 781:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 782:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     return HAL_ERROR;
 783:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 784:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 785:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
 786:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_RCC_CLOCKTYPE(RCC_ClkInitStruct->ClockType));
 787:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_FLASH_LATENCY(FLatency));
 788:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 789:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
 790:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     must be correctly programmed according to the frequency of the CPU clock
 791:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     (HCLK) and the supply voltage of the device. */
 792:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 793:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Increasing the number of wait states because of higher CPU frequency */
 794:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (FLatency > __HAL_FLASH_GET_LATENCY())
 795:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 796:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
 797:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     __HAL_FLASH_SET_LATENCY(FLatency);
 798:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 799:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check that the new number of wait states is taken into account to access the Flash
 800:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     memory by reading the FLASH_ACR register */
 801:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (__HAL_FLASH_GET_LATENCY() != FLatency)
 802:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 803:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       return HAL_ERROR;
 804:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 805:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 806:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 807:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*------------------------- SYSCLK Configuration ---------------------------*/
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 809:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 810:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));
 811:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 812:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* PLL is selected as System Clock Source */
 813:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 814:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 815:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Check the PLL ready flag */
 816:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == 0U)
 817:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 818:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         return HAL_ERROR;
 819:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 820:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Undershoot management when selection PLL as SYSCLK source and frequency above 80Mhz */
 821:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Compute target PLL output frequency */
 822:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pllfreq = RCC_GetSysClockFreqFromPLLSource();
 823:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 824:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Intermediate step with HCLK prescaler 2 necessary before to go over 80Mhz */
 825:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if(pllfreq > 80000000U)
 826:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 827:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if (((READ_BIT(RCC->CFGR, RCC_CFGR_HPRE) == RCC_SYSCLK_DIV1)) ||
 828:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             (((((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK) &&
 829:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****               (RCC_ClkInitStruct->AHBCLKDivider == RCC_SYSCLK_DIV1))))
 830:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 831:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_SYSCLK_DIV2);
 832:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           hpre = RCC_SYSCLK_DIV2;
 833:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 834:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 835:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 836:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     else
 837:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 838:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* HSE is selected as System Clock Source */
 839:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 840:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 841:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Check the HSE ready flag */
 842:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if(READ_BIT(RCC->CR, RCC_CR_HSERDY) == 0U)
 843:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 844:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_ERROR;
 845:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 846:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 847:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* HSI is selected as System Clock Source */
 848:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       else
 849:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 850:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         /* Check the HSI ready flag */
 851:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         if(READ_BIT(RCC->CR, RCC_CR_HSIRDY) == 0U)
 852:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 853:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****           return HAL_ERROR;
 854:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         }
 855:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 856:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Overshoot management when going down from PLL as SYSCLK source and frequency above 80Mhz *
 857:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pllfreq = HAL_RCC_GetSysClockFreq();
 858:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 859:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       /* Intermediate step with HCLK prescaler 2 necessary before to go under 80Mhz */
 860:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if(pllfreq > 80000000U)
 861:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 862:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_SYSCLK_DIV2);
 863:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         hpre = RCC_SYSCLK_DIV2;
 864:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 865:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 866:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 867:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 868:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_SW, RCC_ClkInitStruct->SYSCLKSource);
 869:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 870:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Get Start Tick*/
 871:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     tickstart = HAL_GetTick();
 872:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 873:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 874:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 875:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 876:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 877:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         return HAL_TIMEOUT;
 878:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 879:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 880:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 881:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 882:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*-------------------------- HCLK Configuration --------------------------*/
 883:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 884:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 885:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Set the highest APB divider in order to ensure that we do not go through
 886:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****        a non-spec phase whatever we decrease or increase HCLK. */
 887:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 888:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 889:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 890:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 891:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 892:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 893:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, RCC_HCLK_DIV16);
 894:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 895:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 896:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Set the new HCLK clock divider */
 897:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
 898:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 899:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 900:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
 901:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 902:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Is intermediate HCLK prescaler 2 applied internally, complete with HCLK prescaler 1 */
 903:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     if(hpre == RCC_SYSCLK_DIV2)
 904:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 905:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_SYSCLK_DIV1);
 906:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 907:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 908:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 909:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Decreasing the number of wait states because of lower CPU frequency */
 910:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (FLatency < __HAL_FLASH_GET_LATENCY())
 911:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 912:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
 913:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     __HAL_FLASH_SET_LATENCY(FLatency);
 914:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 915:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Check that the new number of wait states is taken into account to access the Flash
 916:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     memory by polling the FLASH_ACR register */
 917:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     tickstart = HAL_GetTick();
 918:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 919:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     while (__HAL_FLASH_GET_LATENCY() != FLatency)
 920:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 921:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 922:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 923:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         return HAL_TIMEOUT;
 924:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 925:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 926:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 927:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 928:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*-------------------------- PCLK1 Configuration ---------------------------*/
 929:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 930:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 931:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
 932:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 933:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 934:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 935:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /*-------------------------- PCLK2 Configuration ---------------------------*/
 936:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 937:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 938:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
 939:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 940:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 941:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 942:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Update the SystemCoreClock global variable */
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SystemCoreClock = HAL_RCC_GetSysClockFreq() >> (AHBPrescTable[READ_BIT(RCC->CFGR, RCC_CFGR_HPRE) 
 944:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 945:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Configure the source of time base considering new system clocks settings*/
 946:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return HAL_InitTick(uwTickPrio);
 947:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 948:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 949:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
 950:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @}
 951:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 952:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 953:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions_Group2 Peripheral Control functions
 954:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  *  @brief   RCC clocks control functions
 955:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  *
 956:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** @verbatim
 957:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  ===============================================================================
 958:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                       ##### Peripheral Control functions #####
 959:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****  ===============================================================================
 960:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     [..]
 961:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     This subsection provides a set of functions allowing to:
 962:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 963:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     (+) Ouput clock to MCO pin.
 964:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     (+) Retrieve current clock frequencies.
 965:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     (+) Enable the Clock Security System.
 966:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 967:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** @endverbatim
 968:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
 969:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 970:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 971:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
 972:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Select the clock source to output on MCO pin(PA8).
 973:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   PA8 should be configured in alternate function mode.
 974:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  RCC_MCOx  specifies the output direction for the clock source.
 975:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *          For STM32G4xx family this parameter can have only one value:
 976:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1  Clock source to output on MCO1 pin(PA8).
 977:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  RCC_MCOSource  specifies the clock source to output.
 978:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 979:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_NOCLOCK  MCO output disabled, no clock on MCO
 980:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_SYSCLK  system  clock selected as MCO source
 981:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_HSI  HSI clock selected as MCO source
 982:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_HSE  HSE clock selected as MCO sourcee
 983:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_PLLCLK  main PLL clock selected as MCO source
 984:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_LSI  LSI clock selected as MCO source
 985:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_LSE  LSE clock selected as MCO source
 986:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCO1SOURCE_HSI48  HSI48 clock selected as MCO source for devices with 
 987:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  RCC_MCODiv  specifies the MCO prescaler.
 988:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 989:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCODIV_1  no division applied to MCO clock
 990:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCODIV_2  division by 2 applied to MCO clock
 991:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCODIV_4  division by 4 applied to MCO clock
 992:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCODIV_8  division by 8 applied to MCO clock
 993:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *            @arg @ref RCC_MCODIV_16  division by 16 applied to MCO clock
 994:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
 995:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
 996:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv)
 997:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
 1098              		.loc 1 997 1 is_stmt 1 view -0
 1099              		.cfi_startproc
 1100              		@ args = 0, pretend = 0, frame = 24
 1101              		@ frame_needed = 0, uses_anonymous_args = 0
 998:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1102              		.loc 1 998 3 view .LVU370
 999:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1000:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
1001:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_RCC_MCO(RCC_MCOx));
 1103              		.loc 1 1001 3 view .LVU371
1002:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_RCC_MCODIV(RCC_MCODiv));
 1104              		.loc 1 1002 3 view .LVU372
1003:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_RCC_MCO1SOURCE(RCC_MCOSource));
 1105              		.loc 1 1003 3 view .LVU373
1004:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1005:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Prevent unused argument(s) compilation warning if no assert_param check */
1006:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   UNUSED(RCC_MCOx);
 1106              		.loc 1 1006 3 view .LVU374
1007:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1008:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* MCO Clock Enable */
1009:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   MCO1_CLK_ENABLE();
 1107              		.loc 1 1009 3 view .LVU375
 1108              	.LBB8:
 1109              		.loc 1 1009 3 view .LVU376
 1110              		.loc 1 1009 3 view .LVU377
 1111              	.LBE8:
 997:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1112              		.loc 1 997 1 is_stmt 0 view .LVU378
 1113 0000 70B5     		push	{r4, r5, r6, lr}
 1114              		.cfi_def_cfa_offset 16
 1115              		.cfi_offset 4, -16
 1116              		.cfi_offset 5, -12
 1117              		.cfi_offset 6, -8
 1118              		.cfi_offset 14, -4
 1119              	.LBB9:
 1120              		.loc 1 1009 3 view .LVU379
 1121 0002 124C     		ldr	r4, .L127
 1122              	.LBE9:
 997:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1123              		.loc 1 997 1 view .LVU380
 1124 0004 0D46     		mov	r5, r1
 1125              	.LBB10:
 1126              		.loc 1 1009 3 view .LVU381
 1127 0006 E16C     		ldr	r1, [r4, #76]
 1128              	.LVL103:
 1129              		.loc 1 1009 3 view .LVU382
 1130 0008 41F00101 		orr	r1, r1, #1
 1131 000c E164     		str	r1, [r4, #76]
 1132              		.loc 1 1009 3 is_stmt 1 view .LVU383
 1133 000e E16C     		ldr	r1, [r4, #76]
 1134              	.LBE10:
 997:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1135              		.loc 1 997 1 is_stmt 0 view .LVU384
 1136 0010 86B0     		sub	sp, sp, #24
 1137              		.cfi_def_cfa_offset 40
 1138              	.LBB11:
 1139              		.loc 1 1009 3 view .LVU385
 1140 0012 01F00101 		and	r1, r1, #1
 1141 0016 0091     		str	r1, [sp]
 1142              		.loc 1 1009 3 is_stmt 1 view .LVU386
 1143              	.LBE11:
 997:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 1144              		.loc 1 997 1 is_stmt 0 view .LVU387
 1145 0018 1646     		mov	r6, r2
 1146              	.LBB12:
 1147              		.loc 1 1009 3 view .LVU388
 1148 001a 009B     		ldr	r3, [sp]
 1149              	.LBE12:
1010:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1011:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Configue the MCO1 pin in alternate function mode */
1012:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitStruct.Pin = MCO1_PIN;
 1150              		.loc 1 1012 3 is_stmt 1 view .LVU389
1013:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 1151              		.loc 1 1013 24 is_stmt 0 view .LVU390
 1152 001c 4FF48072 		mov	r2, #256
 1153              	.LVL104:
 1154              		.loc 1 1013 24 view .LVU391
 1155 0020 0223     		movs	r3, #2
 1156 0022 CDE90123 		strd	r2, r3, [sp, #4]
1014:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 1157              		.loc 1 1014 3 is_stmt 1 view .LVU392
1015:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 1158              		.loc 1 1015 24 is_stmt 0 view .LVU393
 1159 0026 0021     		movs	r1, #0
 1160 0028 0323     		movs	r3, #3
 1161 002a CDE90313 		strd	r1, r3, [sp, #12]
1016:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   GPIO_InitStruct.Alternate = GPIO_AF0_MCO;
 1162              		.loc 1 1016 3 is_stmt 1 view .LVU394
 1163              		.loc 1 1016 29 is_stmt 0 view .LVU395
 1164 002e 0591     		str	r1, [sp, #20]
1017:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   HAL_GPIO_Init(MCO1_GPIO_PORT, &GPIO_InitStruct);
 1165              		.loc 1 1017 3 is_stmt 1 view .LVU396
 1166 0030 4FF09040 		mov	r0, #1207959552
 1167              	.LVL105:
 1168              		.loc 1 1017 3 is_stmt 0 view .LVU397
 1169 0034 01A9     		add	r1, sp, #4
 1170 0036 FFF7FEFF 		bl	HAL_GPIO_Init
 1171              	.LVL106:
1018:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1019:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Mask MCOSEL[] and MCOPRE[] bits then set MCO1 clock source and prescaler */
1020:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   MODIFY_REG(RCC->CFGR, (RCC_CFGR_MCOSEL | RCC_CFGR_MCOPRE), (RCC_MCOSource | RCC_MCODiv));
 1172              		.loc 1 1020 3 is_stmt 1 view .LVU398
 1173 003a A368     		ldr	r3, [r4, #8]
 1174 003c 23F0FE43 		bic	r3, r3, #2130706432
 1175 0040 3343     		orrs	r3, r3, r6
 1176 0042 2B43     		orrs	r3, r3, r5
 1177 0044 A360     		str	r3, [r4, #8]
1021:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1178              		.loc 1 1021 1 is_stmt 0 view .LVU399
 1179 0046 06B0     		add	sp, sp, #24
 1180              		.cfi_def_cfa_offset 16
 1181              		@ sp needed
 1182 0048 70BD     		pop	{r4, r5, r6, pc}
 1183              	.LVL107:
 1184              	.L128:
 1185              		.loc 1 1021 1 view .LVU400
 1186 004a 00BF     		.align	2
 1187              	.L127:
 1188 004c 00100240 		.word	1073876992
 1189              		.cfi_endproc
 1190              	.LFE328:
 1192              		.section	.text.HAL_RCC_GetSysClockFreq,"ax",%progbits
 1193              		.align	1
 1194              		.global	HAL_RCC_GetSysClockFreq
 1195              		.syntax unified
 1196              		.thumb
 1197              		.thumb_func
 1198              		.fpu fpv4-sp-d16
 1200              	HAL_RCC_GetSysClockFreq:
 1201              	.LFB329:
1022:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1023:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1024:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Return the SYSCLK frequency.
1025:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
1026:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The system frequency computed by this function is not the real
1027:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         frequency in the chip. It is calculated based on the predefined
1028:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         constant and the selected clock source:
1029:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note     If SYSCLK source is HSI, function returns values based on HSI_VALUE(*)
1030:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note     If SYSCLK source is HSE, function returns values based on HSE_VALUE(**)
1031:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note     If SYSCLK source is PLL, function returns values based on HSE_VALUE(**),
1032:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *           HSI_VALUE(*) Value multiplied/divided by the PLL factors.
1033:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note     (*) HSI_VALUE is a constant defined in stm32g4xx_hal_conf.h file (default value
1034:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *               16 MHz) but the real value may vary depending on the variations
1035:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *               in voltage and temperature.
1036:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note     (**) HSE_VALUE is a constant defined in stm32g4xx_hal_conf.h file (default value
1037:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *                8 MHz), user has to ensure that HSE_VALUE is same as the real
1038:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *                frequency of the crystal used. Otherwise, this function may
1039:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *                have wrong result.
1040:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
1041:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The result of this function could be not correct when using fractional
1042:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         value for HSE crystal.
1043:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
1044:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   This function can be used by the user application to compute the
1045:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         baudrate for the communication peripherals or configure other parameters.
1046:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
1047:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   Each time SYSCLK changes, this function must be called to update the
1048:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         right SYSCLK value. Otherwise, any configuration based on this function will be incorre
1049:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
1050:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
1051:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval SYSCLK frequency
1052:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1053:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** uint32_t HAL_RCC_GetSysClockFreq(void)
1054:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
 1202              		.loc 1 1054 1 is_stmt 1 view -0
 1203              		.cfi_startproc
 1204              		@ args = 0, pretend = 0, frame = 0
 1205              		@ frame_needed = 0, uses_anonymous_args = 0
 1206              		@ link register save eliminated.
1055:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t pllvco, pllsource, pllr, pllm;
 1207              		.loc 1 1055 3 view .LVU402
1056:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t sysclockfreq;
 1208              		.loc 1 1056 3 view .LVU403
1057:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1058:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if (__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI)
 1209              		.loc 1 1058 3 view .LVU404
 1210              		.loc 1 1058 7 is_stmt 0 view .LVU405
 1211 0000 184B     		ldr	r3, .L137
 1212 0002 9A68     		ldr	r2, [r3, #8]
 1213 0004 02F00C02 		and	r2, r2, #12
 1214              		.loc 1 1058 6 view .LVU406
 1215 0008 042A     		cmp	r2, #4
 1216 000a 25D0     		beq	.L133
1059:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1060:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* HSI used as system clock source */
1061:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     sysclockfreq = HSI_VALUE;
1062:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1063:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else if (__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE)
 1217              		.loc 1 1063 8 is_stmt 1 view .LVU407
 1218              		.loc 1 1063 12 is_stmt 0 view .LVU408
 1219 000c 9A68     		ldr	r2, [r3, #8]
 1220 000e 02F00C02 		and	r2, r2, #12
 1221              		.loc 1 1063 11 view .LVU409
 1222 0012 082A     		cmp	r2, #8
 1223 0014 22D0     		beq	.L134
1064:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1065:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* HSE used as system clock source */
1066:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     sysclockfreq = HSE_VALUE;
1067:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1068:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else if (__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL)
 1224              		.loc 1 1068 8 is_stmt 1 view .LVU410
 1225              		.loc 1 1068 12 is_stmt 0 view .LVU411
 1226 0016 9A68     		ldr	r2, [r3, #8]
 1227 0018 02F00C02 		and	r2, r2, #12
 1228              		.loc 1 1068 11 view .LVU412
 1229 001c 0C2A     		cmp	r2, #12
 1230 001e 1FD1     		bne	.L135
 1231              	.LBB15:
 1232              	.LBI15:
1053:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
 1233              		.loc 1 1053 10 is_stmt 1 view .LVU413
 1234              	.LBB16:
1069:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1070:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* PLL used as system clock  source */
1071:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1072:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* PLL_VCO = ((HSE_VALUE or HSI_VALUE)/ PLLM) * PLLN
1073:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     SYSCLK = PLL_VCO / PLLR
1074:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     */
1075:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     pllsource = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC);
 1235              		.loc 1 1075 5 view .LVU414
 1236              		.loc 1 1075 17 is_stmt 0 view .LVU415
 1237 0020 D968     		ldr	r1, [r3, #12]
 1238              	.LVL108:
1076:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     pllm = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) + 1U ;
 1239              		.loc 1 1076 5 is_stmt 1 view .LVU416
 1240              		.loc 1 1076 13 is_stmt 0 view .LVU417
 1241 0022 D868     		ldr	r0, [r3, #12]
1075:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     pllm = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) + 1U ;
 1242              		.loc 1 1075 15 view .LVU418
 1243 0024 01F00301 		and	r1, r1, #3
 1244              	.LVL109:
1077:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1078:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     switch (pllsource)
 1245              		.loc 1 1078 5 view .LVU419
 1246 0028 0329     		cmp	r1, #3
1079:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
1080:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     case RCC_PLLSOURCE_HSE:  /* HSE used as PLL clock source */
1081:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pllvco = (HSE_VALUE / pllm) * (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_P
1082:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
1083:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1084:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     case RCC_PLLSOURCE_HSI:  /* HSI used as PLL clock source */
1085:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     default:
1086:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       pllvco = (HSI_VALUE / pllm) * (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_P
 1247              		.loc 1 1086 38 view .LVU420
 1248 002a D968     		ldr	r1, [r3, #12]
 1249              	.LVL110:
1087:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
1088:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
1089:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     pllr = ((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos) + 1U ) * 2U;
 1250              		.loc 1 1089 14 view .LVU421
 1251 002c DB68     		ldr	r3, [r3, #12]
 1252              		.loc 1 1089 55 view .LVU422
 1253 002e C3F34163 		ubfx	r3, r3, #25, #2
1076:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1254              		.loc 1 1076 54 view .LVU423
 1255 0032 C0F30310 		ubfx	r0, r0, #4, #4
1086:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
 1256              		.loc 1 1086 79 view .LVU424
 1257 0036 C1F30621 		ubfx	r1, r1, #8, #7
 1258              		.loc 1 1089 87 view .LVU425
 1259 003a 03F10103 		add	r3, r3, #1
1076:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1260              		.loc 1 1076 10 view .LVU426
 1261 003e 00F10102 		add	r2, r0, #1
 1262              	.LVL111:
1078:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1263              		.loc 1 1078 5 is_stmt 1 view .LVU427
1081:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
 1264              		.loc 1 1081 7 view .LVU428
 1265              		.loc 1 1089 10 is_stmt 0 view .LVU429
 1266 0042 4FEA4303 		lsl	r3, r3, #1
1081:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
 1267              		.loc 1 1081 27 view .LVU430
 1268 0046 0CBF     		ite	eq
 1269 0048 0748     		ldreq	r0, .L137+4
1086:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
 1270              		.loc 1 1086 7 is_stmt 1 view .LVU431
1086:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
 1271              		.loc 1 1086 27 is_stmt 0 view .LVU432
 1272 004a 0848     		ldrne	r0, .L137+8
 1273 004c B0FBF2F0 		udiv	r0, r0, r2
1086:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       break;
 1274              		.loc 1 1086 14 view .LVU433
 1275 0050 4843     		muls	r0, r1, r0
 1276              	.LVL112:
1087:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 1277              		.loc 1 1087 7 is_stmt 1 view .LVU434
 1278              		.loc 1 1089 5 view .LVU435
1090:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     sysclockfreq = pllvco/pllr;
 1279              		.loc 1 1090 5 view .LVU436
 1280              		.loc 1 1090 18 is_stmt 0 view .LVU437
 1281 0052 B0FBF3F0 		udiv	r0, r0, r3
 1282              	.LVL113:
1091:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1092:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
1093:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1094:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     sysclockfreq = 0U;
1095:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1096:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1097:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return sysclockfreq;
 1283              		.loc 1 1097 3 is_stmt 1 view .LVU438
 1284              		.loc 1 1097 3 is_stmt 0 view .LVU439
 1285 0056 7047     		bx	lr
 1286              	.L133:
 1287              	.LBE16:
 1288              	.LBE15:
1061:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1289              		.loc 1 1061 18 view .LVU440
 1290 0058 0448     		ldr	r0, .L137+8
 1291 005a 7047     		bx	lr
 1292              	.L134:
1066:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1293              		.loc 1 1066 18 view .LVU441
 1294 005c 0248     		ldr	r0, .L137+4
 1295 005e 7047     		bx	lr
 1296              	.L135:
1094:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1297              		.loc 1 1094 18 view .LVU442
 1298 0060 0020     		movs	r0, #0
 1299              	.LVL114:
 1300              		.loc 1 1097 3 is_stmt 1 view .LVU443
1098:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1301              		.loc 1 1098 1 is_stmt 0 view .LVU444
 1302 0062 7047     		bx	lr
 1303              	.L138:
 1304              		.align	2
 1305              	.L137:
 1306 0064 00100240 		.word	1073876992
 1307 0068 00366E01 		.word	24000000
 1308 006c 0024F400 		.word	16000000
 1309              		.cfi_endproc
 1310              	.LFE329:
 1312              		.section	.text.HAL_RCC_ClockConfig,"ax",%progbits
 1313              		.align	1
 1314              		.global	HAL_RCC_ClockConfig
 1315              		.syntax unified
 1316              		.thumb
 1317              		.thumb_func
 1318              		.fpu fpv4-sp-d16
 1320              	HAL_RCC_ClockConfig:
 1321              	.LVL115:
 1322              	.LFB327:
 774:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
 1323              		.loc 1 774 1 is_stmt 1 view -0
 1324              		.cfi_startproc
 1325              		@ args = 0, pretend = 0, frame = 0
 1326              		@ frame_needed = 0, uses_anonymous_args = 0
 775:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t pllfreq;
 1327              		.loc 1 775 3 view .LVU446
 776:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t hpre = RCC_SYSCLK_DIV1;
 1328              		.loc 1 776 3 view .LVU447
 777:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1329              		.loc 1 777 3 view .LVU448
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1330              		.loc 1 780 3 view .LVU449
 774:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
 1331              		.loc 1 774 1 is_stmt 0 view .LVU450
 1332 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1333              		.cfi_def_cfa_offset 32
 1334              		.cfi_offset 3, -32
 1335              		.cfi_offset 4, -28
 1336              		.cfi_offset 5, -24
 1337              		.cfi_offset 6, -20
 1338              		.cfi_offset 7, -16
 1339              		.cfi_offset 8, -12
 1340              		.cfi_offset 9, -8
 1341              		.cfi_offset 14, -4
 774:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t tickstart;
 1342              		.loc 1 774 1 view .LVU451
 1343 0004 0D46     		mov	r5, r1
 780:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1344              		.loc 1 780 6 view .LVU452
 1345 0006 0646     		mov	r6, r0
 1346 0008 10B9     		cbnz	r0, .L140
 1347              	.LVL116:
 1348              	.L145:
 782:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1349              		.loc 1 782 12 view .LVU453
 1350 000a 0120     		movs	r0, #1
 1351              	.LVL117:
 1352              	.L141:
 947:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1353              		.loc 1 947 1 view .LVU454
 1354 000c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1355              	.LVL118:
 1356              	.L140:
 786:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(IS_FLASH_LATENCY(FLatency));
 1357              		.loc 1 786 3 is_stmt 1 view .LVU455
 787:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1358              		.loc 1 787 3 view .LVU456
 794:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1359              		.loc 1 794 3 view .LVU457
 794:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1360              		.loc 1 794 18 is_stmt 0 view .LVU458
 1361 0010 6D4A     		ldr	r2, .L199
 1362 0012 1368     		ldr	r3, [r2]
 1363 0014 03F00F03 		and	r3, r3, #15
 794:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1364              		.loc 1 794 6 view .LVU459
 1365 0018 8B42     		cmp	r3, r1
 1366 001a 45D3     		bcc	.L142
 1367              	.L146:
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1368              		.loc 1 808 3 is_stmt 1 view .LVU460
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1369              		.loc 1 808 25 is_stmt 0 view .LVU461
 1370 001c 3168     		ldr	r1, [r6]
 1371              	.LVL119:
 808:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1372              		.loc 1 808 5 view .LVU462
 1373 001e 11F00107 		ands	r7, r1, #1
 1374 0022 4CD1     		bne	.L143
 1375              	.LVL120:
 1376              	.L144:
 883:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1377              		.loc 1 883 3 is_stmt 1 view .LVU463
 883:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1378              		.loc 1 883 26 is_stmt 0 view .LVU464
 1379 0024 3268     		ldr	r2, [r6]
 883:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1380              		.loc 1 883 6 view .LVU465
 1381 0026 9107     		lsls	r1, r2, #30
 1382 0028 40F1A880 		bpl	.L158
 887:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1383              		.loc 1 887 5 is_stmt 1 view .LVU466
 1384 002c 674B     		ldr	r3, .L199+4
 889:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 1385              		.loc 1 889 7 view .LVU467
 887:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1386              		.loc 1 887 8 is_stmt 0 view .LVU468
 1387 002e 12F0040F 		tst	r2, #4
 889:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 1388              		.loc 1 889 7 view .LVU469
 1389 0032 1EBF     		ittt	ne
 1390 0034 9968     		ldrne	r1, [r3, #8]
 1391 0036 41F4E061 		orrne	r1, r1, #1792
 1392 003a 9960     		strne	r1, [r3, #8]
 891:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1393              		.loc 1 891 5 is_stmt 1 view .LVU470
 891:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1394              		.loc 1 891 8 is_stmt 0 view .LVU471
 1395 003c 1207     		lsls	r2, r2, #28
 893:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 1396              		.loc 1 893 7 is_stmt 1 view .LVU472
 1397 003e 41BF     		itttt	mi
 1398 0040 9A68     		ldrmi	r2, [r3, #8]
 1399 0042 22F47C52 		bicmi	r2, r2, #16128
 1400 0046 42F4E062 		orrmi	r2, r2, #1792
 1401 004a 9A60     		strmi	r2, [r3, #8]
 897:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 1402              		.loc 1 897 5 view .LVU473
 898:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1403              		.loc 1 898 5 view .LVU474
 1404 004c 9A68     		ldr	r2, [r3, #8]
 1405 004e B168     		ldr	r1, [r6, #8]
 1406 0050 22F0F002 		bic	r2, r2, #240
 1407 0054 0A43     		orrs	r2, r2, r1
 1408 0056 9A60     		str	r2, [r3, #8]
 1409              	.L161:
 910:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1410              		.loc 1 910 3 view .LVU475
 910:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1411              		.loc 1 910 18 is_stmt 0 view .LVU476
 1412 0058 5B4C     		ldr	r4, .L199
 1413 005a 2368     		ldr	r3, [r4]
 1414 005c 03F00F03 		and	r3, r3, #15
 910:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1415              		.loc 1 910 6 view .LVU477
 1416 0060 AB42     		cmp	r3, r5
 1417 0062 00F29480 		bhi	.L162
 1418              	.LVL121:
 1419              	.L168:
 929:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1420              		.loc 1 929 3 is_stmt 1 view .LVU478
 929:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1421              		.loc 1 929 26 is_stmt 0 view .LVU479
 1422 0066 3268     		ldr	r2, [r6]
 1423 0068 584C     		ldr	r4, .L199+4
 929:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1424              		.loc 1 929 6 view .LVU480
 1425 006a 12F0040F 		tst	r2, #4
 1426 006e 40F0A480 		bne	.L163
 1427              	.L164:
 936:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1428              		.loc 1 936 3 is_stmt 1 view .LVU481
 936:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1429              		.loc 1 936 5 is_stmt 0 view .LVU482
 1430 0072 1307     		lsls	r3, r2, #28
 1431 0074 06D5     		bpl	.L169
 938:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 1432              		.loc 1 938 5 is_stmt 1 view .LVU483
 939:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1433              		.loc 1 939 5 view .LVU484
 1434 0076 A368     		ldr	r3, [r4, #8]
 1435 0078 3269     		ldr	r2, [r6, #16]
 1436 007a 23F46053 		bic	r3, r3, #14336
 1437 007e 43EAC203 		orr	r3, r3, r2, lsl #3
 1438 0082 A360     		str	r3, [r4, #8]
 1439              	.L169:
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1440              		.loc 1 943 3 view .LVU485
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1441              		.loc 1 943 21 is_stmt 0 view .LVU486
 1442 0084 FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 1443              	.LVL122:
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1444              		.loc 1 943 65 view .LVU487
 1445 0088 A368     		ldr	r3, [r4, #8]
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1446              		.loc 1 943 122 view .LVU488
 1447 008a 514A     		ldr	r2, .L199+8
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1448              		.loc 1 943 100 view .LVU489
 1449 008c C3F30313 		ubfx	r3, r3, #4, #4
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1450              		.loc 1 943 122 view .LVU490
 1451 0090 D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 1452 0092 03F01F03 		and	r3, r3, #31
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1453              		.loc 1 943 47 view .LVU491
 1454 0096 D840     		lsrs	r0, r0, r3
 943:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1455              		.loc 1 943 19 view .LVU492
 1456 0098 4E4B     		ldr	r3, .L199+12
 1457 009a 1860     		str	r0, [r3]
 946:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1458              		.loc 1 946 3 is_stmt 1 view .LVU493
 946:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1459              		.loc 1 946 10 is_stmt 0 view .LVU494
 1460 009c 4E4B     		ldr	r3, .L199+16
 1461 009e 1868     		ldr	r0, [r3]
 947:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1462              		.loc 1 947 1 view .LVU495
 1463 00a0 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 1464              		.cfi_remember_state
 1465              		.cfi_restore 14
 1466              		.cfi_restore 9
 1467              		.cfi_restore 8
 1468              		.cfi_restore 7
 1469              		.cfi_restore 6
 1470              		.cfi_restore 5
 1471              		.cfi_restore 4
 1472              		.cfi_restore 3
 1473              		.cfi_def_cfa_offset 0
 1474              	.LVL123:
 946:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1475              		.loc 1 946 10 view .LVU496
 1476 00a4 FFF7FEBF 		b	HAL_InitTick
 1477              	.LVL124:
 1478              	.L142:
 1479              		.cfi_restore_state
 797:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1480              		.loc 1 797 5 is_stmt 1 view .LVU497
 1481 00a8 1368     		ldr	r3, [r2]
 1482 00aa 23F00F03 		bic	r3, r3, #15
 1483 00ae 0B43     		orrs	r3, r3, r1
 1484 00b0 1360     		str	r3, [r2]
 801:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1485              		.loc 1 801 5 view .LVU498
 801:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1486              		.loc 1 801 9 is_stmt 0 view .LVU499
 1487 00b2 1368     		ldr	r3, [r2]
 1488 00b4 03F00F03 		and	r3, r3, #15
 801:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1489              		.loc 1 801 8 view .LVU500
 1490 00b8 8B42     		cmp	r3, r1
 1491 00ba A6D1     		bne	.L145
 1492 00bc AEE7     		b	.L146
 1493              	.LVL125:
 1494              	.L143:
 810:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1495              		.loc 1 810 5 is_stmt 1 view .LVU501
 813:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1496              		.loc 1 813 5 view .LVU502
 813:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1497              		.loc 1 813 26 is_stmt 0 view .LVU503
 1498 00be 7368     		ldr	r3, [r6, #4]
 1499 00c0 424C     		ldr	r4, .L199+4
 813:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1500              		.loc 1 813 8 view .LVU504
 1501 00c2 032B     		cmp	r3, #3
 1502 00c4 4AD1     		bne	.L147
 816:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1503              		.loc 1 816 7 is_stmt 1 view .LVU505
 816:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1504              		.loc 1 816 11 is_stmt 0 view .LVU506
 1505 00c6 2368     		ldr	r3, [r4]
 816:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1506              		.loc 1 816 10 view .LVU507
 1507 00c8 9F01     		lsls	r7, r3, #6
 1508 00ca 9ED5     		bpl	.L145
 822:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1509              		.loc 1 822 7 is_stmt 1 view .LVU508
 1510              	.LBB19:
 1511              	.LBI19:
1099:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1100:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1101:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Return the HCLK frequency.
1102:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   Each time HCLK changes, this function must be called to update the
1103:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         right HCLK value. Otherwise, any configuration based on this function will be incorrect
1104:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *
1105:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency.
1106:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval HCLK frequency in Hz
1107:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1108:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** uint32_t HAL_RCC_GetHCLKFreq(void)
1109:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1110:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return SystemCoreClock;
1111:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1112:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1113:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1114:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Return the PCLK1 frequency.
1115:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   Each time PCLK1 changes, this function must be called to update the
1116:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrec
1117:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval PCLK1 frequency in Hz
1118:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1119:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** uint32_t HAL_RCC_GetPCLK1Freq(void)
1120:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1121:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return (HAL_RCC_GetHCLKFreq() >> (APBPrescTable[READ_BIT(RCC->CFGR, RCC_CFGR_PPRE1) >> RCC_CFGR_P
1123:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1124:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1125:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1126:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Return the PCLK2 frequency.
1127:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   Each time PCLK2 changes, this function must be called to update the
1128:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrec
1129:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval PCLK2 frequency in Hz
1130:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1131:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** uint32_t HAL_RCC_GetPCLK2Freq(void)
1132:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1133:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return (HAL_RCC_GetHCLKFreq()>> (APBPrescTable[READ_BIT(RCC->CFGR, RCC_CFGR_PPRE2) >> RCC_CFGR_PP
1135:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1136:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1137:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1138:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Configure the RCC_OscInitStruct according to the internal
1139:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         RCC configuration registers.
1140:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  RCC_OscInitStruct  pointer to an RCC_OscInitTypeDef structure that
1141:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         will be configured.
1142:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
1143:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1144:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
1145:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1146:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
1147:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(RCC_OscInitStruct != (void *)NULL);
1148:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1149:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Set all possible values for the Oscillator type parameter ---------------*/
1150:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->OscillatorType = RCC_OSCILLATORTYPE_HSE | RCC_OSCILLATORTYPE_HSI | \
1151:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                                       RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI | RCC_OSCILLA
1152:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1153:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the HSE configuration -----------------------------------------------*/
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(READ_BIT(RCC->CR, RCC_CR_HSEBYP) == RCC_CR_HSEBYP)
1155:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1156:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_BYPASS;
1157:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1158:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else if(READ_BIT(RCC->CR, RCC_CR_HSEON) == RCC_CR_HSEON)
1159:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1160:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_ON;
1161:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1162:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
1163:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1164:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_OFF;
1165:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1166:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1167:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the HSI configuration -----------------------------------------------*/
1168:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(READ_BIT(RCC->CR, RCC_CR_HSION) == RCC_CR_HSION)
1169:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1170:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->HSIState = RCC_HSI_ON;
1171:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1172:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
1173:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1174:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->HSIState = RCC_HSI_OFF;
1175:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1176:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1177:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->HSICalibrationValue = READ_BIT(RCC->ICSCR, RCC_ICSCR_HSITRIM) >> RCC_ICSCR_HSI
1178:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1179:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the LSE configuration -----------------------------------------------*/
1180:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(READ_BIT(RCC->BDCR, RCC_BDCR_LSEBYP) == RCC_BDCR_LSEBYP)
1181:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1182:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_BYPASS;
1183:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1184:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else if(READ_BIT(RCC->BDCR, RCC_BDCR_LSEON) == RCC_BDCR_LSEON)
1185:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1186:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_ON;
1187:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1188:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
1189:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1190:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_OFF;
1191:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1192:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1193:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the LSI configuration -----------------------------------------------*/
1194:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(READ_BIT(RCC->CSR, RCC_CSR_LSION) == RCC_CSR_LSION)
1195:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1196:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->LSIState = RCC_LSI_ON;
1197:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1198:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
1199:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1200:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->LSIState = RCC_LSI_OFF;
1201:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1202:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1203:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the HSI48 configuration ---------------------------------------------*/
1204:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48ON) == RCC_CRRCR_HSI48ON)
1205:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1206:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->HSI48State = RCC_HSI48_ON;
1207:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1208:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
1209:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1210:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->HSI48State = RCC_HSI48_OFF;
1211:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1212:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1213:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the PLL configuration -----------------------------------------------*/
1214:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(READ_BIT(RCC->CR, RCC_CR_PLLON) == RCC_CR_PLLON)
1215:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1216:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_ON;
1217:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1218:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   else
1219:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1220:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_OFF;
1221:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1222:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLSource = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC);
1223:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLM = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) 
1224:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLN = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLQ = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PLLQ_Pos
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLR = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos
1227:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_
1228:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1229:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1230:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1231:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Configure the RCC_ClkInitStruct according to the internal
1232:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         RCC configuration registers.
1233:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  RCC_ClkInitStruct  pointer to an RCC_ClkInitTypeDef structure that
1234:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         will be configured.
1235:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @param  pFLatency  Pointer on the Flash Latency.
1236:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
1237:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1238:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t *pFLatency)
1239:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1240:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
1241:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(RCC_ClkInitStruct != (void  *)NULL);
1242:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(pFLatency != (void *)NULL);
1243:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1244:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Set all possible values for the Clock type parameter --------------------*/
1245:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_ClkInitStruct->ClockType = RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | 
1246:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1247:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the SYSCLK configuration --------------------------------------------*/
1248:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_ClkInitStruct->SYSCLKSource = READ_BIT(RCC->CFGR, RCC_CFGR_SW);
1249:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1250:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the HCLK configuration ----------------------------------------------*/
1251:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_ClkInitStruct->AHBCLKDivider = READ_BIT(RCC->CFGR, RCC_CFGR_HPRE);
1252:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1253:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the APB1 configuration ----------------------------------------------*/
1254:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_ClkInitStruct->APB1CLKDivider = READ_BIT(RCC->CFGR, RCC_CFGR_PPRE1);
1255:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1256:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the APB2 configuration ----------------------------------------------*/
1257:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_ClkInitStruct->APB2CLKDivider = (READ_BIT(RCC->CFGR, RCC_CFGR_PPRE2) >> 3U);
1258:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1259:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get the Flash Wait State (Latency) configuration ------------------------*/
1260:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *pFLatency = __HAL_FLASH_GET_LATENCY();
1261:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1262:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1263:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1264:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Enable the Clock Security System.
1265:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   If a failure is detected on the HSE oscillator clock, this oscillator
1266:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         is automatically disabled and an interrupt is generated to inform the
1267:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         software about the failure (Clock Security System Interrupt, CSSI),
1268:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         allowing the MCU to perform rescue operations. The CSSI is linked to
1269:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         the Cortex-M4 NMI (Non-Maskable Interrupt) exception vector.
1270:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The Clock Security System can only be cleared by reset.
1271:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
1272:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1273:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** void HAL_RCC_EnableCSS(void)
1274:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1275:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SET_BIT(RCC->CR, RCC_CR_CSSON) ;
1276:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1277:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1278:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1279:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Enable the LSE Clock Security System.
1280:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   If a failure is detected on the external 32 kHz oscillator,
1281:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         the LSE clock is no longer supplied to the RTC but no hardware action
1282:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         is made to the registers. If enabled, an interrupt will be generated
1283:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   *         and handle through @ref RCCEx_EXTI_LINE_LSECSS
1284:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The Clock Security System can only be cleared by reset or after a LSE failure detection
1285:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
1286:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1287:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** void HAL_RCC_EnableLSECSS(void)
1288:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1289:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSECSSON) ;
1290:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1291:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1292:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1293:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Disable the LSE Clock Security System.
1294:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   After LSE failure detection, the software must disable LSECSSON
1295:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note   The Clock Security System can only be cleared by reset otherwise.
1296:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
1297:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1298:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** void HAL_RCC_DisableLSECSS(void)
1299:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1300:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSECSSON) ;
1301:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1302:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1303:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1304:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief Handle the RCC Clock Security System interrupt request.
1305:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @note This API should be called under the NMI_Handler().
1306:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval None
1307:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1308:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** void HAL_RCC_NMI_IRQHandler(void)
1309:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1310:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check RCC CSSF interrupt flag  */
1311:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   if(__HAL_RCC_GET_IT(RCC_IT_CSS))
1312:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1313:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* RCC Clock Security System interrupt user callback */
1314:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     HAL_RCC_CSSCallback();
1315:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1316:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     /* Clear RCC CSS pending bit */
1317:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     __HAL_RCC_CLEAR_IT(RCC_IT_CSS);
1318:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1319:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1320:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1321:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1322:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  RCC Clock Security System interrupt callback.
1323:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval none
1324:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1325:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** __weak void HAL_RCC_CSSCallback(void)
1326:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1327:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1328:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             the HAL_RCC_CSSCallback should be implemented in the user file
1329:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****    */
1330:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
1331:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1332:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1333:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @}
1334:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1335:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1336:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1337:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @}
1338:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1339:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1340:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /* Private function prototypes -----------------------------------------------*/
1341:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /** @addtogroup RCC_Private_Functions
1342:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @{
1343:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1344:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1345:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** /**
1346:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @brief  Compute SYSCLK frequency based on PLL SYSCLK source.
1347:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   * @retval SYSCLK frequency
1348:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   */
1349:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** static uint32_t RCC_GetSysClockFreqFromPLLSource(void)
 1512              		.loc 1 1349 17 view .LVU509
 1513              	.LBB20:
1350:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
1351:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t pllvco, pllsource, pllr, pllm;
 1514              		.loc 1 1351 3 view .LVU510
1352:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   uint32_t sysclockfreq;
 1515              		.loc 1 1352 3 view .LVU511
1353:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1354:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* PLL_VCO = (HSE_VALUE or HSI_VALUE/ PLLM) * PLLN
1355:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****      SYSCLK = PLL_VCO / PLLR
1356:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****    */
1357:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   pllsource = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC);
 1516              		.loc 1 1357 3 view .LVU512
 1517              		.loc 1 1357 15 is_stmt 0 view .LVU513
 1518 00cc E068     		ldr	r0, [r4, #12]
 1519              	.LVL126:
1358:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   pllm = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) + 1U ;
 1520              		.loc 1 1358 3 is_stmt 1 view .LVU514
 1521              		.loc 1 1358 11 is_stmt 0 view .LVU515
 1522 00ce E368     		ldr	r3, [r4, #12]
 1523              		.loc 1 1358 52 view .LVU516
 1524 00d0 C3F30313 		ubfx	r3, r3, #4, #4
 1525              		.loc 1 1358 8 view .LVU517
 1526 00d4 5A1C     		adds	r2, r3, #1
 1527              	.LVL127:
1359:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1360:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   switch (pllsource)
 1528              		.loc 1 1360 3 is_stmt 1 view .LVU518
1357:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   pllm = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) + 1U ;
 1529              		.loc 1 1357 13 is_stmt 0 view .LVU519
 1530 00d6 00F00303 		and	r3, r0, #3
 1531              	.LVL128:
 1532              		.loc 1 1360 3 view .LVU520
 1533 00da 032B     		cmp	r3, #3
1361:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
1362:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   case RCC_PLLSOURCE_HSE:  /* HSE used as PLL clock source */
1363:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     pllvco = (HSE_VALUE / pllm) * (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos
 1534              		.loc 1 1363 5 is_stmt 1 view .LVU521
1364:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     break;
1365:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1366:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   case RCC_PLLSOURCE_HSI:  /* HSI used as PLL clock source */
1367:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   default:
1368:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     pllvco = (HSI_VALUE / pllm) * (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos
 1535              		.loc 1 1368 36 is_stmt 0 view .LVU522
 1536 00dc E068     		ldr	r0, [r4, #12]
1363:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     break;
 1537              		.loc 1 1363 25 view .LVU523
 1538 00de 0CBF     		ite	eq
 1539 00e0 3E4B     		ldreq	r3, .L199+20
 1540              	.LVL129:
 1541              		.loc 1 1368 5 is_stmt 1 view .LVU524
 1542              		.loc 1 1368 25 is_stmt 0 view .LVU525
 1543 00e2 3F4B     		ldrne	r3, .L199+24
 1544 00e4 B3FBF2F3 		udiv	r3, r3, r2
1369:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     break;
1370:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
1371:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1372:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   pllr = ((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos) + 1U ) * 2U;
 1545              		.loc 1 1372 12 view .LVU526
 1546 00e8 E268     		ldr	r2, [r4, #12]
 1547              	.LVL130:
 1548              		.loc 1 1372 53 view .LVU527
 1549 00ea C2F34162 		ubfx	r2, r2, #25, #2
1368:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     break;
 1550              		.loc 1 1368 77 view .LVU528
 1551 00ee C0F30620 		ubfx	r0, r0, #8, #7
 1552              		.loc 1 1372 85 view .LVU529
 1553 00f2 0132     		adds	r2, r2, #1
 1554              		.loc 1 1372 8 view .LVU530
 1555 00f4 5200     		lsls	r2, r2, #1
1368:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     break;
 1556              		.loc 1 1368 12 view .LVU531
 1557 00f6 4343     		muls	r3, r0, r3
 1558              	.LVL131:
1369:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     break;
 1559              		.loc 1 1369 5 is_stmt 1 view .LVU532
 1560              		.loc 1 1372 3 view .LVU533
1373:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   sysclockfreq = pllvco/pllr;
 1561              		.loc 1 1373 3 view .LVU534
1374:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
1375:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return sysclockfreq;
 1562              		.loc 1 1375 3 view .LVU535
 1563              		.loc 1 1375 3 is_stmt 0 view .LVU536
 1564              	.LBE20:
 1565              	.LBE19:
 825:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1566              		.loc 1 825 7 is_stmt 1 view .LVU537
 1567              	.LBB22:
 1568              	.LBB21:
1373:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   sysclockfreq = pllvco/pllr;
 1569              		.loc 1 1373 16 is_stmt 0 view .LVU538
 1570 00f8 B3FBF2F3 		udiv	r3, r3, r2
1373:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   sysclockfreq = pllvco/pllr;
 1571              		.loc 1 1373 16 view .LVU539
 1572              	.LBE21:
 1573              	.LBE22:
 825:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1574              		.loc 1 825 9 view .LVU540
 1575 00fc 394A     		ldr	r2, .L199+28
 1576 00fe 9342     		cmp	r3, r2
 825:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1577              		.loc 1 825 9 view .LVU541
 1578 0100 1BD8     		bhi	.L150
 1579              	.L153:
 777:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1580              		.loc 1 777 12 view .LVU542
 1581 0102 0027     		movs	r7, #0
 1582              	.LVL132:
 1583              	.L151:
 868:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1584              		.loc 1 868 5 is_stmt 1 view .LVU543
 1585 0104 A368     		ldr	r3, [r4, #8]
 1586 0106 7268     		ldr	r2, [r6, #4]
 1587 0108 23F00303 		bic	r3, r3, #3
 1588 010c 1343     		orrs	r3, r3, r2
 1589 010e A360     		str	r3, [r4, #8]
 871:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1590              		.loc 1 871 5 view .LVU544
 871:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1591              		.loc 1 871 17 is_stmt 0 view .LVU545
 1592 0110 FFF7FEFF 		bl	HAL_GetTick
 1593              	.LVL133:
 875:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1594              		.loc 1 875 10 view .LVU546
 1595 0114 41F28839 		movw	r9, #5000
 871:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1596              		.loc 1 871 17 view .LVU547
 1597 0118 8046     		mov	r8, r0
 1598              	.LVL134:
 873:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1599              		.loc 1 873 5 is_stmt 1 view .LVU548
 1600              	.L156:
 873:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1601              		.loc 1 873 12 is_stmt 0 view .LVU549
 1602 011a A368     		ldr	r3, [r4, #8]
 873:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1603              		.loc 1 873 78 view .LVU550
 1604 011c 7268     		ldr	r2, [r6, #4]
 873:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1605              		.loc 1 873 12 view .LVU551
 1606 011e 03F00C03 		and	r3, r3, #12
 873:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1607              		.loc 1 873 11 view .LVU552
 1608 0122 B3EB820F 		cmp	r3, r2, lsl #2
 1609 0126 3FF47DAF 		beq	.L144
 875:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1610              		.loc 1 875 7 is_stmt 1 view .LVU553
 875:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1611              		.loc 1 875 12 is_stmt 0 view .LVU554
 1612 012a FFF7FEFF 		bl	HAL_GetTick
 1613              	.LVL135:
 875:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1614              		.loc 1 875 26 view .LVU555
 1615 012e A0EB0800 		sub	r0, r0, r8
 875:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1616              		.loc 1 875 10 view .LVU556
 1617 0132 4845     		cmp	r0, r9
 1618 0134 F1D9     		bls	.L156
 1619              	.LVL136:
 1620              	.L166:
 877:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 1621              		.loc 1 877 16 view .LVU557
 1622 0136 0320     		movs	r0, #3
 1623 0138 68E7     		b	.L141
 1624              	.LVL137:
 1625              	.L150:
 827:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             (((((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK) &&
 1626              		.loc 1 827 9 is_stmt 1 view .LVU558
 827:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             (((((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK) &&
 1627              		.loc 1 827 15 is_stmt 0 view .LVU559
 1628 013a A368     		ldr	r3, [r4, #8]
 827:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             (((((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK) &&
 1629              		.loc 1 827 12 view .LVU560
 1630 013c 13F0F00F 		tst	r3, #240
 1631 0140 04D0     		beq	.L198
 827:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****             (((((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK) &&
 1632              		.loc 1 827 71 discriminator 1 view .LVU561
 1633 0142 8807     		lsls	r0, r1, #30
 1634 0144 DDD5     		bpl	.L153
 828:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****               (RCC_ClkInitStruct->AHBCLKDivider == RCC_SYSCLK_DIV1))))
 1635              		.loc 1 828 93 view .LVU562
 1636 0146 B368     		ldr	r3, [r6, #8]
 1637 0148 002B     		cmp	r3, #0
 1638 014a DAD1     		bne	.L153
 1639              	.L198:
 862:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         hpre = RCC_SYSCLK_DIV2;
 1640              		.loc 1 862 9 is_stmt 1 view .LVU563
 1641 014c A368     		ldr	r3, [r4, #8]
 1642 014e 23F0F003 		bic	r3, r3, #240
 1643 0152 43F08003 		orr	r3, r3, #128
 1644 0156 A360     		str	r3, [r4, #8]
 863:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 1645              		.loc 1 863 9 view .LVU564
 1646              	.LVL138:
 863:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       }
 1647              		.loc 1 863 14 is_stmt 0 view .LVU565
 1648 0158 8027     		movs	r7, #128
 1649 015a D3E7     		b	.L151
 1650              	.LVL139:
 1651              	.L147:
 839:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1652              		.loc 1 839 7 is_stmt 1 view .LVU566
 839:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1653              		.loc 1 839 10 is_stmt 0 view .LVU567
 1654 015c 022B     		cmp	r3, #2
 842:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 1655              		.loc 1 842 12 view .LVU568
 1656 015e 2368     		ldr	r3, [r4]
 839:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1657              		.loc 1 839 10 view .LVU569
 1658 0160 09D1     		bne	.L154
 842:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 1659              		.loc 1 842 9 is_stmt 1 view .LVU570
 842:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 1660              		.loc 1 842 11 is_stmt 0 view .LVU571
 1661 0162 13F4003F 		tst	r3, #131072
 1662              	.L196:
 851:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 1663              		.loc 1 851 11 view .LVU572
 1664 0166 3FF450AF 		beq	.L145
 857:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1665              		.loc 1 857 7 is_stmt 1 view .LVU573
 857:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1666              		.loc 1 857 17 is_stmt 0 view .LVU574
 1667 016a FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 1668              	.LVL140:
 860:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1669              		.loc 1 860 7 is_stmt 1 view .LVU575
 860:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1670              		.loc 1 860 9 is_stmt 0 view .LVU576
 1671 016e 1D4B     		ldr	r3, .L199+28
 1672 0170 9842     		cmp	r0, r3
 1673 0172 C6D9     		bls	.L153
 1674 0174 EAE7     		b	.L198
 1675              	.LVL141:
 1676              	.L154:
 851:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 1677              		.loc 1 851 9 is_stmt 1 view .LVU577
 851:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****         {
 1678              		.loc 1 851 11 is_stmt 0 view .LVU578
 1679 0176 13F4806F 		tst	r3, #1024
 1680 017a F4E7     		b	.L196
 1681              	.LVL142:
 1682              	.L158:
 903:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1683              		.loc 1 903 5 is_stmt 1 view .LVU579
 903:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1684              		.loc 1 903 7 is_stmt 0 view .LVU580
 1685 017c 002F     		cmp	r7, #0
 1686 017e 3FF46BAF 		beq	.L161
 905:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     }
 1687              		.loc 1 905 7 is_stmt 1 view .LVU581
 1688 0182 124A     		ldr	r2, .L199+4
 1689 0184 9368     		ldr	r3, [r2, #8]
 1690 0186 23F0F003 		bic	r3, r3, #240
 1691 018a 9360     		str	r3, [r2, #8]
 1692 018c 64E7     		b	.L161
 1693              	.L162:
 913:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1694              		.loc 1 913 5 view .LVU582
 1695 018e 2368     		ldr	r3, [r4]
 1696 0190 23F00F03 		bic	r3, r3, #15
 1697 0194 2B43     		orrs	r3, r3, r5
 1698 0196 2360     		str	r3, [r4]
 917:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1699              		.loc 1 917 5 view .LVU583
 917:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1700              		.loc 1 917 17 is_stmt 0 view .LVU584
 1701 0198 FFF7FEFF 		bl	HAL_GetTick
 1702              	.LVL143:
 921:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1703              		.loc 1 921 10 view .LVU585
 1704 019c 41F28838 		movw	r8, #5000
 917:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1705              		.loc 1 917 17 view .LVU586
 1706 01a0 0746     		mov	r7, r0
 1707              	.LVL144:
 919:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1708              		.loc 1 919 5 is_stmt 1 view .LVU587
 1709              	.L165:
 919:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1710              		.loc 1 919 12 is_stmt 0 view .LVU588
 1711 01a2 2368     		ldr	r3, [r4]
 1712 01a4 03F00F03 		and	r3, r3, #15
 919:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     {
 1713              		.loc 1 919 11 view .LVU589
 1714 01a8 AB42     		cmp	r3, r5
 1715 01aa 3FF45CAF 		beq	.L168
 921:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1716              		.loc 1 921 7 is_stmt 1 view .LVU590
 921:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1717              		.loc 1 921 12 is_stmt 0 view .LVU591
 1718 01ae FFF7FEFF 		bl	HAL_GetTick
 1719              	.LVL145:
 921:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1720              		.loc 1 921 26 view .LVU592
 1721 01b2 C01B     		subs	r0, r0, r7
 921:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****       {
 1722              		.loc 1 921 10 view .LVU593
 1723 01b4 4045     		cmp	r0, r8
 1724 01b6 F4D9     		bls	.L165
 1725 01b8 BDE7     		b	.L166
 1726              	.LVL146:
 1727              	.L163:
 931:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 1728              		.loc 1 931 5 is_stmt 1 view .LVU594
 932:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1729              		.loc 1 932 5 view .LVU595
 1730 01ba A368     		ldr	r3, [r4, #8]
 1731 01bc F168     		ldr	r1, [r6, #12]
 1732 01be 23F4E063 		bic	r3, r3, #1792
 1733 01c2 0B43     		orrs	r3, r3, r1
 1734 01c4 A360     		str	r3, [r4, #8]
 1735 01c6 54E7     		b	.L164
 1736              	.L200:
 1737              		.align	2
 1738              	.L199:
 1739 01c8 00200240 		.word	1073881088
 1740 01cc 00100240 		.word	1073876992
 1741 01d0 00000000 		.word	AHBPrescTable
 1742 01d4 00000000 		.word	SystemCoreClock
 1743 01d8 00000000 		.word	uwTickPrio
 1744 01dc 00366E01 		.word	24000000
 1745 01e0 0024F400 		.word	16000000
 1746 01e4 00B4C404 		.word	80000000
 1747              		.cfi_endproc
 1748              	.LFE327:
 1750              		.section	.text.HAL_RCC_GetHCLKFreq,"ax",%progbits
 1751              		.align	1
 1752              		.global	HAL_RCC_GetHCLKFreq
 1753              		.syntax unified
 1754              		.thumb
 1755              		.thumb_func
 1756              		.fpu fpv4-sp-d16
 1758              	HAL_RCC_GetHCLKFreq:
 1759              	.LFB330:
1109:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   return SystemCoreClock;
 1760              		.loc 1 1109 1 view -0
 1761              		.cfi_startproc
 1762              		@ args = 0, pretend = 0, frame = 0
 1763              		@ frame_needed = 0, uses_anonymous_args = 0
 1764              		@ link register save eliminated.
1110:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1765              		.loc 1 1110 3 view .LVU597
1111:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1766              		.loc 1 1111 1 is_stmt 0 view .LVU598
 1767 0000 014B     		ldr	r3, .L202
 1768 0002 1868     		ldr	r0, [r3]
 1769 0004 7047     		bx	lr
 1770              	.L203:
 1771 0006 00BF     		.align	2
 1772              	.L202:
 1773 0008 00000000 		.word	SystemCoreClock
 1774              		.cfi_endproc
 1775              	.LFE330:
 1777              		.section	.text.HAL_RCC_GetPCLK1Freq,"ax",%progbits
 1778              		.align	1
 1779              		.global	HAL_RCC_GetPCLK1Freq
 1780              		.syntax unified
 1781              		.thumb
 1782              		.thumb_func
 1783              		.fpu fpv4-sp-d16
 1785              	HAL_RCC_GetPCLK1Freq:
 1786              	.LFB331:
1120:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
 1787              		.loc 1 1120 1 is_stmt 1 view -0
 1788              		.cfi_startproc
 1789              		@ args = 0, pretend = 0, frame = 0
 1790              		@ frame_needed = 0, uses_anonymous_args = 0
 1791              		@ link register save eliminated.
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1792              		.loc 1 1122 3 view .LVU600
 1793              	.LBB23:
 1794              	.LBI23:
1108:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
 1795              		.loc 1 1108 10 view .LVU601
 1796              	.LBB24:
1110:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1797              		.loc 1 1110 3 view .LVU602
 1798              	.LBE24:
 1799              	.LBE23:
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1800              		.loc 1 1122 51 is_stmt 0 view .LVU603
 1801 0000 054B     		ldr	r3, .L205
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1802              		.loc 1 1122 110 view .LVU604
 1803 0002 064A     		ldr	r2, .L205+4
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1804              		.loc 1 1122 51 view .LVU605
 1805 0004 9B68     		ldr	r3, [r3, #8]
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1806              		.loc 1 1122 87 view .LVU606
 1807 0006 C3F30223 		ubfx	r3, r3, #8, #3
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1808              		.loc 1 1122 110 view .LVU607
 1809 000a D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1810              		.loc 1 1122 33 view .LVU608
 1811 000c 044A     		ldr	r2, .L205+8
 1812 000e 1068     		ldr	r0, [r2]
1122:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1813              		.loc 1 1122 110 view .LVU609
 1814 0010 03F01F03 		and	r3, r3, #31
1123:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1815              		.loc 1 1123 1 view .LVU610
 1816 0014 D840     		lsrs	r0, r0, r3
 1817 0016 7047     		bx	lr
 1818              	.L206:
 1819              		.align	2
 1820              	.L205:
 1821 0018 00100240 		.word	1073876992
 1822 001c 00000000 		.word	APBPrescTable
 1823 0020 00000000 		.word	SystemCoreClock
 1824              		.cfi_endproc
 1825              	.LFE331:
 1827              		.section	.text.HAL_RCC_GetPCLK2Freq,"ax",%progbits
 1828              		.align	1
 1829              		.global	HAL_RCC_GetPCLK2Freq
 1830              		.syntax unified
 1831              		.thumb
 1832              		.thumb_func
 1833              		.fpu fpv4-sp-d16
 1835              	HAL_RCC_GetPCLK2Freq:
 1836              	.LFB332:
1132:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
 1837              		.loc 1 1132 1 is_stmt 1 view -0
 1838              		.cfi_startproc
 1839              		@ args = 0, pretend = 0, frame = 0
 1840              		@ frame_needed = 0, uses_anonymous_args = 0
 1841              		@ link register save eliminated.
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1842              		.loc 1 1134 3 view .LVU612
 1843              	.LBB25:
 1844              	.LBI25:
1108:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** {
 1845              		.loc 1 1108 10 view .LVU613
 1846              	.LBB26:
1110:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1847              		.loc 1 1110 3 view .LVU614
 1848              	.LBE26:
 1849              	.LBE25:
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1850              		.loc 1 1134 50 is_stmt 0 view .LVU615
 1851 0000 054B     		ldr	r3, .L208
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1852              		.loc 1 1134 109 view .LVU616
 1853 0002 064A     		ldr	r2, .L208+4
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1854              		.loc 1 1134 50 view .LVU617
 1855 0004 9B68     		ldr	r3, [r3, #8]
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1856              		.loc 1 1134 86 view .LVU618
 1857 0006 C3F3C223 		ubfx	r3, r3, #11, #3
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1858              		.loc 1 1134 109 view .LVU619
 1859 000a D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1860              		.loc 1 1134 32 view .LVU620
 1861 000c 044A     		ldr	r2, .L208+8
 1862 000e 1068     		ldr	r0, [r2]
1134:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 1863              		.loc 1 1134 109 view .LVU621
 1864 0010 03F01F03 		and	r3, r3, #31
1135:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1865              		.loc 1 1135 1 view .LVU622
 1866 0014 D840     		lsrs	r0, r0, r3
 1867 0016 7047     		bx	lr
 1868              	.L209:
 1869              		.align	2
 1870              	.L208:
 1871 0018 00100240 		.word	1073876992
 1872 001c 00000000 		.word	APBPrescTable
 1873 0020 00000000 		.word	SystemCoreClock
 1874              		.cfi_endproc
 1875              	.LFE332:
 1877              		.section	.text.HAL_RCC_GetOscConfig,"ax",%progbits
 1878              		.align	1
 1879              		.global	HAL_RCC_GetOscConfig
 1880              		.syntax unified
 1881              		.thumb
 1882              		.thumb_func
 1883              		.fpu fpv4-sp-d16
 1885              	HAL_RCC_GetOscConfig:
 1886              	.LVL147:
 1887              	.LFB333:
1145:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
 1888              		.loc 1 1145 1 is_stmt 1 view -0
 1889              		.cfi_startproc
 1890              		@ args = 0, pretend = 0, frame = 0
 1891              		@ frame_needed = 0, uses_anonymous_args = 0
 1892              		@ link register save eliminated.
1147:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1893              		.loc 1 1147 3 view .LVU624
1150:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                                       RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI | RCC_OSCILLA
 1894              		.loc 1 1150 3 view .LVU625
1150:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****                                       RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI | RCC_OSCILLA
 1895              		.loc 1 1150 37 is_stmt 0 view .LVU626
 1896 0000 2F23     		movs	r3, #47
 1897 0002 0360     		str	r3, [r0]
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1898              		.loc 1 1154 3 is_stmt 1 view .LVU627
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1899              		.loc 1 1154 6 is_stmt 0 view .LVU628
 1900 0004 284B     		ldr	r3, .L221
 1901 0006 1A68     		ldr	r2, [r3]
1154:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1902              		.loc 1 1154 5 view .LVU629
 1903 0008 5103     		lsls	r1, r2, #13
 1904 000a 3ED5     		bpl	.L211
1156:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1905              		.loc 1 1156 5 is_stmt 1 view .LVU630
1156:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1906              		.loc 1 1156 33 is_stmt 0 view .LVU631
 1907 000c 4FF4A022 		mov	r2, #327680
 1908              	.L213:
1164:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1909              		.loc 1 1164 5 is_stmt 1 view .LVU632
1164:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1910              		.loc 1 1164 33 is_stmt 0 view .LVU633
 1911 0010 4260     		str	r2, [r0, #4]
1168:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1912              		.loc 1 1168 3 is_stmt 1 view .LVU634
1168:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1913              		.loc 1 1168 6 is_stmt 0 view .LVU635
 1914 0012 1A68     		ldr	r2, [r3]
1174:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1915              		.loc 1 1174 33 view .LVU636
 1916 0014 02F48072 		and	r2, r2, #256
 1917 0018 C260     		str	r2, [r0, #12]
1177:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1918              		.loc 1 1177 3 is_stmt 1 view .LVU637
1177:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1919              		.loc 1 1177 44 is_stmt 0 view .LVU638
 1920 001a 5A68     		ldr	r2, [r3, #4]
1177:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1921              		.loc 1 1177 84 view .LVU639
 1922 001c C2F30662 		ubfx	r2, r2, #24, #7
1177:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 1923              		.loc 1 1177 42 view .LVU640
 1924 0020 0261     		str	r2, [r0, #16]
1180:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1925              		.loc 1 1180 3 is_stmt 1 view .LVU641
1180:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1926              		.loc 1 1180 6 is_stmt 0 view .LVU642
 1927 0022 D3F89020 		ldr	r2, [r3, #144]
1180:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1928              		.loc 1 1180 5 view .LVU643
 1929 0026 5207     		lsls	r2, r2, #29
 1930 0028 36D5     		bpl	.L215
1182:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1931              		.loc 1 1182 5 is_stmt 1 view .LVU644
1182:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1932              		.loc 1 1182 33 is_stmt 0 view .LVU645
 1933 002a 0522     		movs	r2, #5
 1934              	.L217:
1190:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1935              		.loc 1 1190 5 is_stmt 1 view .LVU646
1190:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1936              		.loc 1 1190 33 is_stmt 0 view .LVU647
 1937 002c 8260     		str	r2, [r0, #8]
1194:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1938              		.loc 1 1194 3 is_stmt 1 view .LVU648
1194:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1939              		.loc 1 1194 6 is_stmt 0 view .LVU649
 1940 002e D3F89420 		ldr	r2, [r3, #148]
 1941 0032 02F00102 		and	r2, r2, #1
 1942 0036 4261     		str	r2, [r0, #20]
1204:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1943              		.loc 1 1204 3 is_stmt 1 view .LVU650
1204:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1944              		.loc 1 1204 6 is_stmt 0 view .LVU651
 1945 0038 D3F89820 		ldr	r2, [r3, #152]
 1946 003c 02F00102 		and	r2, r2, #1
 1947 0040 8261     		str	r2, [r0, #24]
1214:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1948              		.loc 1 1214 3 is_stmt 1 view .LVU652
1214:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 1949              		.loc 1 1214 6 is_stmt 0 view .LVU653
 1950 0042 1A68     		ldr	r2, [r3]
1220:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 1951              		.loc 1 1220 37 view .LVU654
 1952 0044 12F0807F 		tst	r2, #16777216
 1953 0048 14BF     		ite	ne
 1954 004a 0222     		movne	r2, #2
 1955 004c 0122     		moveq	r2, #1
 1956 004e C261     		str	r2, [r0, #28]
1222:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLM = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) 
 1957              		.loc 1 1222 3 is_stmt 1 view .LVU655
1222:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLM = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) 
 1958              		.loc 1 1222 38 is_stmt 0 view .LVU656
 1959 0050 DA68     		ldr	r2, [r3, #12]
 1960 0052 02F00302 		and	r2, r2, #3
1222:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLM = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) 
 1961              		.loc 1 1222 36 view .LVU657
 1962 0056 0262     		str	r2, [r0, #32]
1223:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLN = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
 1963              		.loc 1 1223 3 is_stmt 1 view .LVU658
1223:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLN = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
 1964              		.loc 1 1223 34 is_stmt 0 view .LVU659
 1965 0058 DA68     		ldr	r2, [r3, #12]
1223:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLN = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
 1966              		.loc 1 1223 75 view .LVU660
 1967 005a C2F30312 		ubfx	r2, r2, #4, #4
1223:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLN = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
 1968              		.loc 1 1223 100 view .LVU661
 1969 005e 0132     		adds	r2, r2, #1
1223:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLN = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos;
 1970              		.loc 1 1223 31 view .LVU662
 1971 0060 4262     		str	r2, [r0, #36]
1224:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLQ = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PLLQ_Pos
 1972              		.loc 1 1224 3 is_stmt 1 view .LVU663
1224:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLQ = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PLLQ_Pos
 1973              		.loc 1 1224 33 is_stmt 0 view .LVU664
 1974 0062 DA68     		ldr	r2, [r3, #12]
1224:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLQ = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PLLQ_Pos
 1975              		.loc 1 1224 74 view .LVU665
 1976 0064 C2F30622 		ubfx	r2, r2, #8, #7
1224:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLQ = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PLLQ_Pos
 1977              		.loc 1 1224 31 view .LVU666
 1978 0068 8262     		str	r2, [r0, #40]
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLR = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos
 1979              		.loc 1 1225 3 is_stmt 1 view .LVU667
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLR = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos
 1980              		.loc 1 1225 36 is_stmt 0 view .LVU668
 1981 006a DA68     		ldr	r2, [r3, #12]
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLR = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos
 1982              		.loc 1 1225 77 view .LVU669
 1983 006c C2F34152 		ubfx	r2, r2, #21, #2
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLR = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos
 1984              		.loc 1 1225 102 view .LVU670
 1985 0070 0132     		adds	r2, r2, #1
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLR = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos
 1986              		.loc 1 1225 108 view .LVU671
 1987 0072 5200     		lsls	r2, r2, #1
1225:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLR = (((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos
 1988              		.loc 1 1225 31 view .LVU672
 1989 0074 0263     		str	r2, [r0, #48]
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_
 1990              		.loc 1 1226 3 is_stmt 1 view .LVU673
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_
 1991              		.loc 1 1226 36 is_stmt 0 view .LVU674
 1992 0076 DA68     		ldr	r2, [r3, #12]
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_
 1993              		.loc 1 1226 77 view .LVU675
 1994 0078 C2F34162 		ubfx	r2, r2, #25, #2
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_
 1995              		.loc 1 1226 102 view .LVU676
 1996 007c 0132     		adds	r2, r2, #1
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_
 1997              		.loc 1 1226 108 view .LVU677
 1998 007e 5200     		lsls	r2, r2, #1
1226:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLPDIV) >> RCC_PLLCFGR_PLLPDIV_
 1999              		.loc 1 1226 31 view .LVU678
 2000 0080 4263     		str	r2, [r0, #52]
1227:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2001              		.loc 1 1227 3 is_stmt 1 view .LVU679
1227:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2002              		.loc 1 1227 33 is_stmt 0 view .LVU680
 2003 0082 DB68     		ldr	r3, [r3, #12]
1227:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2004              		.loc 1 1227 77 view .LVU681
 2005 0084 DB0E     		lsrs	r3, r3, #27
1227:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2006              		.loc 1 1227 31 view .LVU682
 2007 0086 C362     		str	r3, [r0, #44]
1228:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2008              		.loc 1 1228 1 view .LVU683
 2009 0088 7047     		bx	lr
 2010              	.L211:
1158:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2011              		.loc 1 1158 8 is_stmt 1 view .LVU684
1158:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2012              		.loc 1 1158 11 is_stmt 0 view .LVU685
 2013 008a 1A68     		ldr	r2, [r3]
1158:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2014              		.loc 1 1158 10 view .LVU686
 2015 008c 12F48032 		ands	r2, r2, #65536
1160:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 2016              		.loc 1 1160 5 is_stmt 1 view .LVU687
1160:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 2017              		.loc 1 1160 33 is_stmt 0 view .LVU688
 2018 0090 18BF     		it	ne
 2019 0092 4FF48032 		movne	r2, #65536
 2020 0096 BBE7     		b	.L213
 2021              	.L215:
1184:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2022              		.loc 1 1184 8 is_stmt 1 view .LVU689
1184:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2023              		.loc 1 1184 11 is_stmt 0 view .LVU690
 2024 0098 D3F89020 		ldr	r2, [r3, #144]
1184:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2025              		.loc 1 1184 10 view .LVU691
 2026 009c 12F00102 		ands	r2, r2, #1
1186:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 2027              		.loc 1 1186 5 is_stmt 1 view .LVU692
1186:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 2028              		.loc 1 1186 33 is_stmt 0 view .LVU693
 2029 00a0 18BF     		it	ne
 2030 00a2 0122     		movne	r2, #1
 2031 00a4 C2E7     		b	.L217
 2032              	.L222:
 2033 00a6 00BF     		.align	2
 2034              	.L221:
 2035 00a8 00100240 		.word	1073876992
 2036              		.cfi_endproc
 2037              	.LFE333:
 2039              		.section	.text.HAL_RCC_GetClockConfig,"ax",%progbits
 2040              		.align	1
 2041              		.global	HAL_RCC_GetClockConfig
 2042              		.syntax unified
 2043              		.thumb
 2044              		.thumb_func
 2045              		.fpu fpv4-sp-d16
 2047              	HAL_RCC_GetClockConfig:
 2048              	.LVL148:
 2049              	.LFB334:
1239:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check the parameters */
 2050              		.loc 1 1239 1 is_stmt 1 view -0
 2051              		.cfi_startproc
 2052              		@ args = 0, pretend = 0, frame = 0
 2053              		@ frame_needed = 0, uses_anonymous_args = 0
 2054              		@ link register save eliminated.
1241:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   assert_param(pFLatency != (void *)NULL);
 2055              		.loc 1 1241 3 view .LVU695
1242:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2056              		.loc 1 1242 3 view .LVU696
1245:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2057              		.loc 1 1245 3 view .LVU697
1245:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2058              		.loc 1 1245 32 is_stmt 0 view .LVU698
 2059 0000 0F23     		movs	r3, #15
 2060 0002 0360     		str	r3, [r0]
1248:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2061              		.loc 1 1248 3 is_stmt 1 view .LVU699
1248:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2062              		.loc 1 1248 37 is_stmt 0 view .LVU700
 2063 0004 0B4B     		ldr	r3, .L224
 2064 0006 9A68     		ldr	r2, [r3, #8]
 2065 0008 02F00302 		and	r2, r2, #3
1248:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2066              		.loc 1 1248 35 view .LVU701
 2067 000c 4260     		str	r2, [r0, #4]
1251:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2068              		.loc 1 1251 3 is_stmt 1 view .LVU702
1251:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2069              		.loc 1 1251 38 is_stmt 0 view .LVU703
 2070 000e 9A68     		ldr	r2, [r3, #8]
 2071 0010 02F0F002 		and	r2, r2, #240
1251:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2072              		.loc 1 1251 36 view .LVU704
 2073 0014 8260     		str	r2, [r0, #8]
1254:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2074              		.loc 1 1254 3 is_stmt 1 view .LVU705
1254:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2075              		.loc 1 1254 39 is_stmt 0 view .LVU706
 2076 0016 9A68     		ldr	r2, [r3, #8]
 2077 0018 02F4E062 		and	r2, r2, #1792
1254:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2078              		.loc 1 1254 37 view .LVU707
 2079 001c C260     		str	r2, [r0, #12]
1257:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2080              		.loc 1 1257 3 is_stmt 1 view .LVU708
1257:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2081              		.loc 1 1257 40 is_stmt 0 view .LVU709
 2082 001e 9B68     		ldr	r3, [r3, #8]
1257:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2083              		.loc 1 1257 76 view .LVU710
 2084 0020 DB08     		lsrs	r3, r3, #3
 2085 0022 03F4E063 		and	r3, r3, #1792
1257:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2086              		.loc 1 1257 37 view .LVU711
 2087 0026 0361     		str	r3, [r0, #16]
1260:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2088              		.loc 1 1260 3 is_stmt 1 view .LVU712
1260:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2089              		.loc 1 1260 16 is_stmt 0 view .LVU713
 2090 0028 034B     		ldr	r3, .L224+4
 2091 002a 1B68     		ldr	r3, [r3]
 2092 002c 03F00F03 		and	r3, r3, #15
1260:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2093              		.loc 1 1260 14 view .LVU714
 2094 0030 0B60     		str	r3, [r1]
1261:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2095              		.loc 1 1261 1 view .LVU715
 2096 0032 7047     		bx	lr
 2097              	.L225:
 2098              		.align	2
 2099              	.L224:
 2100 0034 00100240 		.word	1073876992
 2101 0038 00200240 		.word	1073881088
 2102              		.cfi_endproc
 2103              	.LFE334:
 2105              		.section	.text.HAL_RCC_EnableCSS,"ax",%progbits
 2106              		.align	1
 2107              		.global	HAL_RCC_EnableCSS
 2108              		.syntax unified
 2109              		.thumb
 2110              		.thumb_func
 2111              		.fpu fpv4-sp-d16
 2113              	HAL_RCC_EnableCSS:
 2114              	.LFB335:
1274:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SET_BIT(RCC->CR, RCC_CR_CSSON) ;
 2115              		.loc 1 1274 1 is_stmt 1 view -0
 2116              		.cfi_startproc
 2117              		@ args = 0, pretend = 0, frame = 0
 2118              		@ frame_needed = 0, uses_anonymous_args = 0
 2119              		@ link register save eliminated.
1275:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2120              		.loc 1 1275 3 view .LVU717
 2121 0000 024A     		ldr	r2, .L227
 2122 0002 1368     		ldr	r3, [r2]
 2123 0004 43F40023 		orr	r3, r3, #524288
 2124 0008 1360     		str	r3, [r2]
1276:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2125              		.loc 1 1276 1 is_stmt 0 view .LVU718
 2126 000a 7047     		bx	lr
 2127              	.L228:
 2128              		.align	2
 2129              	.L227:
 2130 000c 00100240 		.word	1073876992
 2131              		.cfi_endproc
 2132              	.LFE335:
 2134              		.section	.text.HAL_RCC_EnableLSECSS,"ax",%progbits
 2135              		.align	1
 2136              		.global	HAL_RCC_EnableLSECSS
 2137              		.syntax unified
 2138              		.thumb
 2139              		.thumb_func
 2140              		.fpu fpv4-sp-d16
 2142              	HAL_RCC_EnableLSECSS:
 2143              	.LFB336:
1288:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSECSSON) ;
 2144              		.loc 1 1288 1 is_stmt 1 view -0
 2145              		.cfi_startproc
 2146              		@ args = 0, pretend = 0, frame = 0
 2147              		@ frame_needed = 0, uses_anonymous_args = 0
 2148              		@ link register save eliminated.
1289:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2149              		.loc 1 1289 3 view .LVU720
 2150 0000 034A     		ldr	r2, .L230
 2151 0002 D2F89030 		ldr	r3, [r2, #144]
 2152 0006 43F02003 		orr	r3, r3, #32
 2153 000a C2F89030 		str	r3, [r2, #144]
1290:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2154              		.loc 1 1290 1 is_stmt 0 view .LVU721
 2155 000e 7047     		bx	lr
 2156              	.L231:
 2157              		.align	2
 2158              	.L230:
 2159 0010 00100240 		.word	1073876992
 2160              		.cfi_endproc
 2161              	.LFE336:
 2163              		.section	.text.HAL_RCC_DisableLSECSS,"ax",%progbits
 2164              		.align	1
 2165              		.global	HAL_RCC_DisableLSECSS
 2166              		.syntax unified
 2167              		.thumb
 2168              		.thumb_func
 2169              		.fpu fpv4-sp-d16
 2171              	HAL_RCC_DisableLSECSS:
 2172              	.LFB337:
1299:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSECSSON) ;
 2173              		.loc 1 1299 1 is_stmt 1 view -0
 2174              		.cfi_startproc
 2175              		@ args = 0, pretend = 0, frame = 0
 2176              		@ frame_needed = 0, uses_anonymous_args = 0
 2177              		@ link register save eliminated.
1300:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** }
 2178              		.loc 1 1300 3 view .LVU723
 2179 0000 034A     		ldr	r2, .L233
 2180 0002 D2F89030 		ldr	r3, [r2, #144]
 2181 0006 23F02003 		bic	r3, r3, #32
 2182 000a C2F89030 		str	r3, [r2, #144]
1301:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2183              		.loc 1 1301 1 is_stmt 0 view .LVU724
 2184 000e 7047     		bx	lr
 2185              	.L234:
 2186              		.align	2
 2187              	.L233:
 2188 0010 00100240 		.word	1073876992
 2189              		.cfi_endproc
 2190              	.LFE337:
 2192              		.section	.text.HAL_RCC_CSSCallback,"ax",%progbits
 2193              		.align	1
 2194              		.weak	HAL_RCC_CSSCallback
 2195              		.syntax unified
 2196              		.thumb
 2197              		.thumb_func
 2198              		.fpu fpv4-sp-d16
 2200              	HAL_RCC_CSSCallback:
 2201              	.LFB339:
1326:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 2202              		.loc 1 1326 1 is_stmt 1 view -0
 2203              		.cfi_startproc
 2204              		@ args = 0, pretend = 0, frame = 0
 2205              		@ frame_needed = 0, uses_anonymous_args = 0
 2206              		@ link register save eliminated.
1330:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2207              		.loc 1 1330 1 view .LVU726
 2208 0000 7047     		bx	lr
 2209              		.cfi_endproc
 2210              	.LFE339:
 2212              		.section	.text.HAL_RCC_NMI_IRQHandler,"ax",%progbits
 2213              		.align	1
 2214              		.global	HAL_RCC_NMI_IRQHandler
 2215              		.syntax unified
 2216              		.thumb
 2217              		.thumb_func
 2218              		.fpu fpv4-sp-d16
 2220              	HAL_RCC_NMI_IRQHandler:
 2221              	.LFB338:
1309:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check RCC CSSF interrupt flag  */
 2222              		.loc 1 1309 1 view -0
 2223              		.cfi_startproc
 2224              		@ args = 0, pretend = 0, frame = 0
 2225              		@ frame_needed = 0, uses_anonymous_args = 0
1311:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2226              		.loc 1 1311 3 view .LVU728
1309:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   /* Check RCC CSSF interrupt flag  */
 2227              		.loc 1 1309 1 is_stmt 0 view .LVU729
 2228 0000 10B5     		push	{r4, lr}
 2229              		.cfi_def_cfa_offset 8
 2230              		.cfi_offset 4, -8
 2231              		.cfi_offset 14, -4
1311:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2232              		.loc 1 1311 6 view .LVU730
 2233 0002 054C     		ldr	r4, .L241
 2234 0004 E369     		ldr	r3, [r4, #28]
1311:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   {
 2235              		.loc 1 1311 5 view .LVU731
 2236 0006 DB05     		lsls	r3, r3, #23
 2237 0008 04D5     		bpl	.L236
1314:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2238              		.loc 1 1314 5 is_stmt 1 view .LVU732
 2239 000a FFF7FEFF 		bl	HAL_RCC_CSSCallback
 2240              	.LVL149:
1317:../../..\CubeG4\src/stm32g4xx_hal_rcc.c ****   }
 2241              		.loc 1 1317 5 view .LVU733
 2242 000e 4FF48073 		mov	r3, #256
 2243 0012 2362     		str	r3, [r4, #32]
 2244              	.L236:
1319:../../..\CubeG4\src/stm32g4xx_hal_rcc.c **** 
 2245              		.loc 1 1319 1 is_stmt 0 view .LVU734
 2246 0014 10BD     		pop	{r4, pc}
 2247              	.L242:
 2248 0016 00BF     		.align	2
 2249              	.L241:
 2250 0018 00100240 		.word	1073876992
 2251              		.cfi_endproc
 2252              	.LFE338:
 2254              		.text
 2255              	.Letext0:
 2256              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2257              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2258              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 2259              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 2260              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 2261              		.file 7 "../../..\\CubeG4\\include/stm32g4xx.h"
 2262              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 2263              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_rcc.h"
 2264              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_gpio.h"
 2265              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 2266              		.file 12 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
