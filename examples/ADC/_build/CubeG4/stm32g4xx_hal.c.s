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
  13              		.file	"stm32g4xx_hal.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_MspInit,"ax",%progbits
  18              		.align	1
  19              		.weak	HAL_MspInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_MspInit:
  27              	.LFB327:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal.c"
   1:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @file    stm32g4xx_hal.c
   4:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief   HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal.c ****   *          This is the common part of the HAL initialization
   7:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
   8:../../..\CubeG4\src/stm32g4xx_hal.c ****   @verbatim
   9:../../..\CubeG4\src/stm32g4xx_hal.c ****   ==============================================================================
  10:../../..\CubeG4\src/stm32g4xx_hal.c ****                      ##### How to use this driver #####
  11:../../..\CubeG4\src/stm32g4xx_hal.c ****   ==============================================================================
  12:../../..\CubeG4\src/stm32g4xx_hal.c ****     [..]
  13:../../..\CubeG4\src/stm32g4xx_hal.c ****     The common HAL driver contains a set of generic and common APIs that can be
  14:../../..\CubeG4\src/stm32g4xx_hal.c ****     used by the PPP peripheral drivers and the user to start using the HAL.
  15:../../..\CubeG4\src/stm32g4xx_hal.c ****     [..]
  16:../../..\CubeG4\src/stm32g4xx_hal.c ****     The HAL contains two APIs' categories:
  17:../../..\CubeG4\src/stm32g4xx_hal.c ****          (+) Common HAL APIs
  18:../../..\CubeG4\src/stm32g4xx_hal.c ****          (+) Services HAL APIs
  19:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  20:../../..\CubeG4\src/stm32g4xx_hal.c ****   @endverbatim
  21:../../..\CubeG4\src/stm32g4xx_hal.c ****   ******************************************************************************
  22:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @attention
  23:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
  24:../../..\CubeG4\src/stm32g4xx_hal.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  25:../../..\CubeG4\src/stm32g4xx_hal.c ****   * All rights reserved.</center></h2>
  26:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
  27:../../..\CubeG4\src/stm32g4xx_hal.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  28:../../..\CubeG4\src/stm32g4xx_hal.c ****   * the "License"; You may not use this file except in compliance with the
  29:../../..\CubeG4\src/stm32g4xx_hal.c ****   * License. You may obtain a copy of the License at:
  30:../../..\CubeG4\src/stm32g4xx_hal.c ****   *                        opensource.org/licenses/BSD-3-Clause
  31:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
  32:../../..\CubeG4\src/stm32g4xx_hal.c ****   ******************************************************************************
  33:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
  34:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  35:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Includes ------------------------------------------------------------------*/
  36:../../..\CubeG4\src/stm32g4xx_hal.c **** #include "stm32g4xx_hal.h"
  37:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  38:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @addtogroup STM32G4xx_HAL_Driver
  39:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
  40:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
  41:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  42:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @defgroup HAL HAL
  43:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief HAL module driver
  44:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
  45:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
  46:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  47:../../..\CubeG4\src/stm32g4xx_hal.c **** #ifdef HAL_MODULE_ENABLED
  48:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  49:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Private typedef -----------------------------------------------------------*/
  50:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Private define ------------------------------------------------------------*/
  51:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
  52:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief STM32G4xx HAL Driver version number $VERSION$
  53:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
  54:../../..\CubeG4\src/stm32g4xx_hal.c **** #define __STM32G4xx_HAL_VERSION_MAIN   (0x01U) /*!< [31:24] main version */
  55:../../..\CubeG4\src/stm32g4xx_hal.c **** #define __STM32G4xx_HAL_VERSION_SUB1   (0x01U) /*!< [23:16] sub1 version */
  56:../../..\CubeG4\src/stm32g4xx_hal.c **** #define __STM32G4xx_HAL_VERSION_SUB2   (0x00U) /*!< [15:8]  sub2 version */
  57:../../..\CubeG4\src/stm32g4xx_hal.c **** #define __STM32G4xx_HAL_VERSION_RC     (0x00U) /*!< [7:0]  release candidate */
  58:../../..\CubeG4\src/stm32g4xx_hal.c **** #define __STM32G4xx_HAL_VERSION         ((__STM32G4xx_HAL_VERSION_MAIN << 24U)\
  59:../../..\CubeG4\src/stm32g4xx_hal.c ****                                          |(__STM32G4xx_HAL_VERSION_SUB1 << 16U)\
  60:../../..\CubeG4\src/stm32g4xx_hal.c ****                                          |(__STM32G4xx_HAL_VERSION_SUB2 << 8U )\
  61:../../..\CubeG4\src/stm32g4xx_hal.c ****                                          |(__STM32G4xx_HAL_VERSION_RC))
  62:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  63:../../..\CubeG4\src/stm32g4xx_hal.c **** #if defined(VREFBUF)
  64:../../..\CubeG4\src/stm32g4xx_hal.c **** #define VREFBUF_TIMEOUT_VALUE     10U   /* 10 ms */
  65:../../..\CubeG4\src/stm32g4xx_hal.c **** #endif /* VREFBUF */
  66:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  67:../../..\CubeG4\src/stm32g4xx_hal.c **** /* ------------ SYSCFG registers bit address in the alias region ------------ */
  68:../../..\CubeG4\src/stm32g4xx_hal.c **** #define SYSCFG_OFFSET             (SYSCFG_BASE - PERIPH_BASE)
  69:../../..\CubeG4\src/stm32g4xx_hal.c **** /* ---  MEMRMP Register ---*/
  70:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Alias word address of FB_MODE bit */
  71:../../..\CubeG4\src/stm32g4xx_hal.c **** #define MEMRMP_OFFSET           SYSCFG_OFFSET
  72:../../..\CubeG4\src/stm32g4xx_hal.c **** #define FB_MODE_BitNumber       ((uint8_t)0x8)
  73:../../..\CubeG4\src/stm32g4xx_hal.c **** #define FB_MODE_BB              (PERIPH_BB_BASE + (MEMRMP_OFFSET * 32) + (FB_MODE_BitNumber * 4))
  74:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  75:../../..\CubeG4\src/stm32g4xx_hal.c **** /* --- GPC Register ---*/
  76:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Alias word address of CCMER bit */
  77:../../..\CubeG4\src/stm32g4xx_hal.c **** #define SCSR_OFFSET             (SYSCFG_OFFSET + 0x18)
  78:../../..\CubeG4\src/stm32g4xx_hal.c **** #define CCMER_BitNumber         ((uint8_t)0x0)
  79:../../..\CubeG4\src/stm32g4xx_hal.c **** #define SCSR_CCMER_BB           (PERIPH_BB_BASE + (SCSR_OFFSET * 32) + (CCMER_BitNumber * 4))
  80:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  81:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Private macro -------------------------------------------------------------*/
  82:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Exported variables ---------------------------------------------------------*/
  83:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @defgroup HAL_Exported_Variables HAL Exported Variables
  84:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
  85:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
  86:../../..\CubeG4\src/stm32g4xx_hal.c **** __IO uint32_t uwTick;
  87:../../..\CubeG4\src/stm32g4xx_hal.c **** uint32_t uwTickPrio = (1UL << __NVIC_PRIO_BITS); /* Invalid PRIO */
  88:../../..\CubeG4\src/stm32g4xx_hal.c **** uint32_t uwTickFreq = HAL_TICK_FREQ_DEFAULT;  /* 1KHz */
  89:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
  90:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @}
  91:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
  92:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  93:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Private function prototypes -----------------------------------------------*/
  94:../../..\CubeG4\src/stm32g4xx_hal.c **** /* Exported functions --------------------------------------------------------*/
  95:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  96:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @defgroup HAL_Exported_Functions HAL Exported Functions
  97:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
  98:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
  99:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 100:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group1 Initialization and de-initialization Functions
 101:../../..\CubeG4\src/stm32g4xx_hal.c ****   *  @brief    HAL Initialization and de-initialization functions
 102:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 103:../../..\CubeG4\src/stm32g4xx_hal.c **** @verbatim
 104:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 105:../../..\CubeG4\src/stm32g4xx_hal.c ****               ##### Initialization and Configuration functions #####
 106:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 107:../../..\CubeG4\src/stm32g4xx_hal.c ****     [..]  This section provides functions allowing to:
 108:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Initialize the Flash interface the NVIC allocation and initial time base
 109:../../..\CubeG4\src/stm32g4xx_hal.c ****           clock configuration.
 110:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) De-Initialize common part of the HAL.
 111:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Configure the time base source to have 1ms time base with a dedicated
 112:../../..\CubeG4\src/stm32g4xx_hal.c ****           Tick interrupt priority.
 113:../../..\CubeG4\src/stm32g4xx_hal.c ****         (++) SysTick timer is used by default as source of time base, but user
 114:../../..\CubeG4\src/stm32g4xx_hal.c ****              can eventually implement his proper time base source (a general purpose
 115:../../..\CubeG4\src/stm32g4xx_hal.c ****              timer for example or other time source), keeping in mind that Time base
 116:../../..\CubeG4\src/stm32g4xx_hal.c ****              duration should be kept 1ms since PPP_TIMEOUT_VALUEs are defined and
 117:../../..\CubeG4\src/stm32g4xx_hal.c ****              handled in milliseconds basis.
 118:../../..\CubeG4\src/stm32g4xx_hal.c ****         (++) Time base configuration function (HAL_InitTick ()) is called automatically
 119:../../..\CubeG4\src/stm32g4xx_hal.c ****              at the beginning of the program after reset by HAL_Init() or at any time
 120:../../..\CubeG4\src/stm32g4xx_hal.c ****              when clock is configured, by HAL_RCC_ClockConfig().
 121:../../..\CubeG4\src/stm32g4xx_hal.c ****         (++) Source of time base is configured  to generate interrupts at regular
 122:../../..\CubeG4\src/stm32g4xx_hal.c ****              time intervals. Care must be taken if HAL_Delay() is called from a
 123:../../..\CubeG4\src/stm32g4xx_hal.c ****              peripheral ISR process, the Tick interrupt line must have higher priority
 124:../../..\CubeG4\src/stm32g4xx_hal.c ****             (numerically lower) than the peripheral interrupt. Otherwise the caller
 125:../../..\CubeG4\src/stm32g4xx_hal.c ****             ISR process will be blocked.
 126:../../..\CubeG4\src/stm32g4xx_hal.c ****        (++) functions affecting time base configurations are declared as __weak
 127:../../..\CubeG4\src/stm32g4xx_hal.c ****              to make  override possible  in case of other  implementations in user file.
 128:../../..\CubeG4\src/stm32g4xx_hal.c **** @endverbatim
 129:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
 130:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 131:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 132:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 133:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  This function is used to configure the Flash prefetch, the Instruction and Data caches,
 134:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         the time base source, NVIC and any required global low level hardware
 135:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         by calling the HAL_MspInit() callback function to be optionally defined in user file
 136:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         stm32g4xx_hal_msp.c.
 137:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 138:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   HAL_Init() function is called at the beginning of program after reset and before
 139:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         the clock configuration.
 140:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 141:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   In the default implementation the System Timer (Systick) is used as source of time base
 142:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         The Systick configuration is based on HSI clock, as HSI is the clock
 143:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         used after a system Reset and the NVIC configuration is set to Priority group 4.
 144:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         Once done, time base tick starts incrementing: the tick variable counter is incremented
 145:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         each 1ms in the SysTick_Handler() interrupt handler.
 146:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 147:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval HAL status
 148:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 149:../../..\CubeG4\src/stm32g4xx_hal.c **** HAL_StatusTypeDef HAL_Init(void)
 150:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 151:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef  status = HAL_OK;
 152:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Configure Flash prefetch, Instruction cache, Data cache */
 153:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Default configuration at reset is:                      */
 154:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* - Prefetch disabled                                     */
 155:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* - Instruction cache enabled                             */
 156:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* - Data cache enabled                                    */
 157:../../..\CubeG4\src/stm32g4xx_hal.c **** #if (INSTRUCTION_CACHE_ENABLE == 0U)
 158:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_FLASH_INSTRUCTION_CACHE_DISABLE();
 159:../../..\CubeG4\src/stm32g4xx_hal.c **** #endif /* INSTRUCTION_CACHE_ENABLE */
 160:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 161:../../..\CubeG4\src/stm32g4xx_hal.c **** #if (DATA_CACHE_ENABLE == 0U)
 162:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_FLASH_DATA_CACHE_DISABLE();
 163:../../..\CubeG4\src/stm32g4xx_hal.c **** #endif /* DATA_CACHE_ENABLE */
 164:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 165:../../..\CubeG4\src/stm32g4xx_hal.c **** #if (PREFETCH_ENABLE != 0U)
 166:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 167:../../..\CubeG4\src/stm32g4xx_hal.c **** #endif /* PREFETCH_ENABLE */
 168:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 169:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Set Interrupt Group Priority */
 170:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 171:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 172:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Use SysTick as time base source and configure 1ms tick (default clock after Reset is HSI) */
 173:../../..\CubeG4\src/stm32g4xx_hal.c ****   if (HAL_InitTick(TICK_INT_PRIORITY) != HAL_OK)
 174:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 175:../../..\CubeG4\src/stm32g4xx_hal.c ****     status = HAL_ERROR;
 176:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 177:../../..\CubeG4\src/stm32g4xx_hal.c ****   else
 178:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 179:../../..\CubeG4\src/stm32g4xx_hal.c ****     /* Init the low level hardware */
 180:../../..\CubeG4\src/stm32g4xx_hal.c ****     HAL_MspInit();
 181:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 182:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 183:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Return function status */
 184:../../..\CubeG4\src/stm32g4xx_hal.c ****   return status;
 185:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 186:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 187:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 188:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 189:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  This function de-initializes common part of the HAL and stops the source of time base.
 190:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   This function is optional.
 191:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval HAL status
 192:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 193:../../..\CubeG4\src/stm32g4xx_hal.c **** HAL_StatusTypeDef HAL_DeInit(void)
 194:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 195:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Reset of all peripherals */
 196:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB1_FORCE_RESET();
 197:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
 198:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 199:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB2_FORCE_RESET();
 200:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB2_RELEASE_RESET();
 201:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 202:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB1_FORCE_RESET();
 203:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB1_RELEASE_RESET();
 204:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 205:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB2_FORCE_RESET();
 206:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB2_RELEASE_RESET();
 207:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 208:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB3_FORCE_RESET();
 209:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB3_RELEASE_RESET();
 210:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 211:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* De-Init the low level hardware */
 212:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_MspDeInit();
 213:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 214:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Return function status */
 215:../../..\CubeG4\src/stm32g4xx_hal.c ****   return HAL_OK;
 216:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 217:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 218:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 219:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Initialize the MSP.
 220:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 221:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 222:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak void HAL_MspInit(void)
 223:../../..\CubeG4\src/stm32g4xx_hal.c **** {
  29              		.loc 1 223 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
 224:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 225:../../..\CubeG4\src/stm32g4xx_hal.c ****             the HAL_MspInit could be implemented in the user file
 226:../../..\CubeG4\src/stm32g4xx_hal.c ****    */
 227:../../..\CubeG4\src/stm32g4xx_hal.c **** }
  34              		.loc 1 227 1 view .LVU1
  35 0000 7047     		bx	lr
  36              		.cfi_endproc
  37              	.LFE327:
  39              		.section	.text.HAL_MspDeInit,"ax",%progbits
  40              		.align	1
  41              		.weak	HAL_MspDeInit
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  47              	HAL_MspDeInit:
  48              	.LFB362:
  49              		.cfi_startproc
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 7047     		bx	lr
  54              		.cfi_endproc
  55              	.LFE362:
  57              		.section	.text.HAL_DeInit,"ax",%progbits
  58              		.align	1
  59              		.global	HAL_DeInit
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv4-sp-d16
  65              	HAL_DeInit:
  66              	.LFB326:
 194:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Reset of all peripherals */
  67              		.loc 1 194 1 view -0
  68              		.cfi_startproc
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
 196:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
  71              		.loc 1 196 3 view .LVU3
 194:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Reset of all peripherals */
  72              		.loc 1 194 1 is_stmt 0 view .LVU4
  73 0000 10B5     		push	{r4, lr}
  74              		.cfi_def_cfa_offset 8
  75              		.cfi_offset 4, -8
  76              		.cfi_offset 14, -4
 196:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
  77              		.loc 1 196 3 view .LVU5
  78 0002 094B     		ldr	r3, .L4
  79 0004 4FF0FF32 		mov	r2, #-1
 197:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  80              		.loc 1 197 3 view .LVU6
  81 0008 0024     		movs	r4, #0
 196:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
  82              		.loc 1 196 3 view .LVU7
  83 000a 9A63     		str	r2, [r3, #56]
 197:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  84              		.loc 1 197 3 is_stmt 1 view .LVU8
  85 000c 9C63     		str	r4, [r3, #56]
 199:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_APB2_RELEASE_RESET();
  86              		.loc 1 199 3 view .LVU9
  87 000e 1A64     		str	r2, [r3, #64]
 200:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  88              		.loc 1 200 3 view .LVU10
  89 0010 1C64     		str	r4, [r3, #64]
 202:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB1_RELEASE_RESET();
  90              		.loc 1 202 3 view .LVU11
  91 0012 9A62     		str	r2, [r3, #40]
 203:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  92              		.loc 1 203 3 view .LVU12
  93 0014 9C62     		str	r4, [r3, #40]
 205:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB2_RELEASE_RESET();
  94              		.loc 1 205 3 view .LVU13
  95 0016 DA62     		str	r2, [r3, #44]
 206:../../..\CubeG4\src/stm32g4xx_hal.c **** 
  96              		.loc 1 206 3 view .LVU14
  97 0018 DC62     		str	r4, [r3, #44]
 208:../../..\CubeG4\src/stm32g4xx_hal.c ****   __HAL_RCC_AHB3_RELEASE_RESET();
  98              		.loc 1 208 3 view .LVU15
  99 001a 1A63     		str	r2, [r3, #48]
 209:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 100              		.loc 1 209 3 view .LVU16
 101 001c 1C63     		str	r4, [r3, #48]
 212:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 102              		.loc 1 212 3 view .LVU17
 103 001e FFF7FEFF 		bl	HAL_MspDeInit
 104              	.LVL0:
 215:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 105              		.loc 1 215 3 view .LVU18
 216:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 106              		.loc 1 216 1 is_stmt 0 view .LVU19
 107 0022 2046     		mov	r0, r4
 108 0024 10BD     		pop	{r4, pc}
 109              	.L5:
 110 0026 00BF     		.align	2
 111              	.L4:
 112 0028 00100240 		.word	1073876992
 113              		.cfi_endproc
 114              	.LFE326:
 116              		.section	.text.HAL_InitTick,"ax",%progbits
 117              		.align	1
 118              		.weak	HAL_InitTick
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 124              	HAL_InitTick:
 125              	.LVL1:
 126              	.LFB329:
 228:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 229:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 230:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  DeInitializes the MSP.
 231:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 232:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 233:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak void HAL_MspDeInit(void)
 234:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 235:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 236:../../..\CubeG4\src/stm32g4xx_hal.c ****             the HAL_MspDeInit could be implemented in the user file
 237:../../..\CubeG4\src/stm32g4xx_hal.c ****    */
 238:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 239:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 240:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 241:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief This function configures the source of the time base:
 242:../../..\CubeG4\src/stm32g4xx_hal.c ****   *        The time source is configured to have 1ms time base with a dedicated
 243:../../..\CubeG4\src/stm32g4xx_hal.c ****   *        Tick interrupt priority.
 244:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note This function is called  automatically at the beginning of program after
 245:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       reset by HAL_Init() or at any time when clock is reconfigured  by HAL_RCC_ClockConfig().
 246:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note In the default implementation, SysTick timer is the source of time base.
 247:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       It is used to generate interrupts at regular time intervals.
 248:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       Care must be taken if HAL_Delay() is called from a peripheral ISR process,
 249:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       The SysTick interrupt must have higher priority (numerically lower)
 250:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       than the peripheral interrupt. Otherwise the caller ISR process will be blocked.
 251:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       The function is declared as __weak  to be overwritten  in case of other
 252:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       implementation  in user file.
 253:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @param TickPriority: Tick interrupt priority.
 254:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval HAL status
 255:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 256:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
 257:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 127              		.loc 1 257 1 is_stmt 1 view -0
 128              		.cfi_startproc
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 258:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef  status = HAL_OK;
 131              		.loc 1 258 3 view .LVU21
 259:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 260:../../..\CubeG4\src/stm32g4xx_hal.c ****   if (uwTickFreq != 0U)
 132              		.loc 1 260 3 view .LVU22
 257:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef  status = HAL_OK;
 133              		.loc 1 257 1 is_stmt 0 view .LVU23
 134 0000 38B5     		push	{r3, r4, r5, lr}
 135              		.cfi_def_cfa_offset 16
 136              		.cfi_offset 3, -16
 137              		.cfi_offset 4, -12
 138              		.cfi_offset 5, -8
 139              		.cfi_offset 14, -4
 140              		.loc 1 260 18 view .LVU24
 141 0002 0F4B     		ldr	r3, .L10
 257:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef  status = HAL_OK;
 142              		.loc 1 257 1 view .LVU25
 143 0004 0546     		mov	r5, r0
 144              		.loc 1 260 18 view .LVU26
 145 0006 1868     		ldr	r0, [r3]
 146              	.LVL2:
 147              		.loc 1 260 6 view .LVU27
 148 0008 08B9     		cbnz	r0, .L7
 149              	.L9:
 261:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 262:../../..\CubeG4\src/stm32g4xx_hal.c ****     /* Configure the SysTick to have interrupt in 1ms time basis*/
 263:../../..\CubeG4\src/stm32g4xx_hal.c ****     if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) == 0U)
 264:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 265:../../..\CubeG4\src/stm32g4xx_hal.c ****       /* Configure the SysTick IRQ priority */
 266:../../..\CubeG4\src/stm32g4xx_hal.c ****       if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 267:../../..\CubeG4\src/stm32g4xx_hal.c ****       {
 268:../../..\CubeG4\src/stm32g4xx_hal.c ****         HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 269:../../..\CubeG4\src/stm32g4xx_hal.c ****         uwTickPrio = TickPriority;
 270:../../..\CubeG4\src/stm32g4xx_hal.c ****       }
 271:../../..\CubeG4\src/stm32g4xx_hal.c ****       else
 272:../../..\CubeG4\src/stm32g4xx_hal.c ****       {
 273:../../..\CubeG4\src/stm32g4xx_hal.c ****         status = HAL_ERROR;
 274:../../..\CubeG4\src/stm32g4xx_hal.c ****       }
 275:../../..\CubeG4\src/stm32g4xx_hal.c ****     }
 276:../../..\CubeG4\src/stm32g4xx_hal.c ****     else
 277:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 278:../../..\CubeG4\src/stm32g4xx_hal.c ****       status = HAL_ERROR;
 279:../../..\CubeG4\src/stm32g4xx_hal.c ****     }
 280:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 281:../../..\CubeG4\src/stm32g4xx_hal.c ****   else
 282:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 283:../../..\CubeG4\src/stm32g4xx_hal.c ****     status = HAL_ERROR;
 150              		.loc 1 283 12 view .LVU28
 151 000a 0120     		movs	r0, #1
 152              	.L8:
 153              	.LVL3:
 284:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 285:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 286:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Return function status */
 287:../../..\CubeG4\src/stm32g4xx_hal.c ****   return status;
 154              		.loc 1 287 3 is_stmt 1 view .LVU29
 288:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 155              		.loc 1 288 1 is_stmt 0 view .LVU30
 156 000c 38BD     		pop	{r3, r4, r5, pc}
 157              	.LVL4:
 158              	.L7:
 263:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 159              		.loc 1 263 5 is_stmt 1 view .LVU31
 263:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 160              		.loc 1 263 9 is_stmt 0 view .LVU32
 161 000e 0D4A     		ldr	r2, .L10+4
 263:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 162              		.loc 1 263 53 view .LVU33
 163 0010 4FF47A73 		mov	r3, #1000
 164 0014 B3FBF0F3 		udiv	r3, r3, r0
 263:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 165              		.loc 1 263 9 view .LVU34
 166 0018 1068     		ldr	r0, [r2]
 167 001a B0FBF3F0 		udiv	r0, r0, r3
 168 001e FFF7FEFF 		bl	HAL_SYSTICK_Config
 169              	.LVL5:
 263:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 170              		.loc 1 263 8 view .LVU35
 171 0022 0446     		mov	r4, r0
 172 0024 0028     		cmp	r0, #0
 173 0026 F0D1     		bne	.L9
 266:../../..\CubeG4\src/stm32g4xx_hal.c ****       {
 174              		.loc 1 266 7 is_stmt 1 view .LVU36
 266:../../..\CubeG4\src/stm32g4xx_hal.c ****       {
 175              		.loc 1 266 10 is_stmt 0 view .LVU37
 176 0028 0F2D     		cmp	r5, #15
 177 002a EED8     		bhi	.L9
 178              	.LVL6:
 179              	.LBB4:
 180              	.LBI4:
 256:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 181              		.loc 1 256 26 is_stmt 1 view .LVU38
 182              	.LBB5:
 268:../../..\CubeG4\src/stm32g4xx_hal.c ****         uwTickPrio = TickPriority;
 183              		.loc 1 268 9 view .LVU39
 184 002c 0246     		mov	r2, r0
 185 002e 2946     		mov	r1, r5
 186 0030 4FF0FF30 		mov	r0, #-1
 187 0034 FFF7FEFF 		bl	HAL_NVIC_SetPriority
 188              	.LVL7:
 269:../../..\CubeG4\src/stm32g4xx_hal.c ****       }
 189              		.loc 1 269 9 view .LVU40
 269:../../..\CubeG4\src/stm32g4xx_hal.c ****       }
 190              		.loc 1 269 20 is_stmt 0 view .LVU41
 191 0038 034B     		ldr	r3, .L10+8
 192 003a 2046     		mov	r0, r4
 193 003c 1D60     		str	r5, [r3]
 194              	.LVL8:
 287:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 195              		.loc 1 287 3 is_stmt 1 view .LVU42
 287:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 196              		.loc 1 287 3 is_stmt 0 view .LVU43
 197 003e E5E7     		b	.L8
 198              	.L11:
 199              		.align	2
 200              	.L10:
 201 0040 00000000 		.word	.LANCHOR0
 202 0044 00000000 		.word	SystemCoreClock
 203 0048 00000000 		.word	.LANCHOR1
 204              	.LBE5:
 205              	.LBE4:
 206              		.cfi_endproc
 207              	.LFE329:
 209              		.section	.text.HAL_Init,"ax",%progbits
 210              		.align	1
 211              		.global	HAL_Init
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu fpv4-sp-d16
 217              	HAL_Init:
 218              	.LFB325:
 150:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef  status = HAL_OK;
 219              		.loc 1 150 1 is_stmt 1 view -0
 220              		.cfi_startproc
 221              		@ args = 0, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 151:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Configure Flash prefetch, Instruction cache, Data cache */
 223              		.loc 1 151 3 view .LVU45
 224              	.LVL9:
 170:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 225              		.loc 1 170 3 view .LVU46
 150:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef  status = HAL_OK;
 226              		.loc 1 150 1 is_stmt 0 view .LVU47
 227 0000 10B5     		push	{r4, lr}
 228              		.cfi_def_cfa_offset 8
 229              		.cfi_offset 4, -8
 230              		.cfi_offset 14, -4
 170:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 231              		.loc 1 170 3 view .LVU48
 232 0002 0320     		movs	r0, #3
 233 0004 FFF7FEFF 		bl	HAL_NVIC_SetPriorityGrouping
 234              	.LVL10:
 173:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 235              		.loc 1 173 3 is_stmt 1 view .LVU49
 173:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 236              		.loc 1 173 7 is_stmt 0 view .LVU50
 237 0008 0020     		movs	r0, #0
 238 000a FFF7FEFF 		bl	HAL_InitTick
 239              	.LVL11:
 173:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 240              		.loc 1 173 6 view .LVU51
 241 000e 0446     		mov	r4, r0
 242 0010 18B9     		cbnz	r0, .L14
 180:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 243              		.loc 1 180 5 is_stmt 1 view .LVU52
 244 0012 FFF7FEFF 		bl	HAL_MspInit
 245              	.LVL12:
 246              	.L13:
 184:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 247              		.loc 1 184 3 view .LVU53
 186:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 248              		.loc 1 186 1 is_stmt 0 view .LVU54
 249 0016 2046     		mov	r0, r4
 250 0018 10BD     		pop	{r4, pc}
 251              	.LVL13:
 252              	.L14:
 175:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 253              		.loc 1 175 12 view .LVU55
 254 001a 0124     		movs	r4, #1
 255 001c FBE7     		b	.L13
 256              		.cfi_endproc
 257              	.LFE325:
 259              		.section	.text.HAL_IncTick,"ax",%progbits
 260              		.align	1
 261              		.weak	HAL_IncTick
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 267              	HAL_IncTick:
 268              	.LFB330:
 289:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 290:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 291:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @}
 292:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 293:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 294:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group2 HAL Control functions
 295:../../..\CubeG4\src/stm32g4xx_hal.c ****   *  @brief    HAL Control functions
 296:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 297:../../..\CubeG4\src/stm32g4xx_hal.c **** @verbatim
 298:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 299:../../..\CubeG4\src/stm32g4xx_hal.c ****                       ##### HAL Control functions #####
 300:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 301:../../..\CubeG4\src/stm32g4xx_hal.c ****     [..]  This section provides functions allowing to:
 302:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Provide a tick value in millisecond
 303:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Provide a blocking delay in millisecond
 304:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Suspend the time base source interrupt
 305:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Resume the time base source interrupt
 306:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Get the HAL API driver version
 307:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Get the device identifier
 308:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Get the device revision identifier
 309:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 310:../../..\CubeG4\src/stm32g4xx_hal.c **** @endverbatim
 311:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
 312:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 313:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 314:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 315:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief This function is called to increment a global variable "uwTick"
 316:../../..\CubeG4\src/stm32g4xx_hal.c ****   *        used as application time base.
 317:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note In the default implementation, this variable is incremented each 1ms
 318:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       in SysTick ISR.
 319:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 320:../../..\CubeG4\src/stm32g4xx_hal.c ****   *      implementations in user file.
 321:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 322:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 323:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak void HAL_IncTick(void)
 324:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 269              		.loc 1 324 1 is_stmt 1 view -0
 270              		.cfi_startproc
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273              		@ link register save eliminated.
 325:../../..\CubeG4\src/stm32g4xx_hal.c ****   uwTick += uwTickFreq;
 274              		.loc 1 325 3 view .LVU57
 275              		.loc 1 325 10 is_stmt 0 view .LVU58
 276 0000 034A     		ldr	r2, .L16
 277 0002 0449     		ldr	r1, .L16+4
 278 0004 1368     		ldr	r3, [r2]
 279 0006 0968     		ldr	r1, [r1]
 280 0008 0B44     		add	r3, r3, r1
 281 000a 1360     		str	r3, [r2]
 326:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 282              		.loc 1 326 1 view .LVU59
 283 000c 7047     		bx	lr
 284              	.L17:
 285 000e 00BF     		.align	2
 286              	.L16:
 287 0010 00000000 		.word	uwTick
 288 0014 00000000 		.word	.LANCHOR0
 289              		.cfi_endproc
 290              	.LFE330:
 292              		.section	.text.HAL_GetTick,"ax",%progbits
 293              		.align	1
 294              		.weak	HAL_GetTick
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu fpv4-sp-d16
 300              	HAL_GetTick:
 301              	.LFB331:
 327:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 328:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 329:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Provides a tick value in millisecond.
 330:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 331:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       implementations in user file.
 332:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval tick value
 333:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 334:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak uint32_t HAL_GetTick(void)
 335:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 302              		.loc 1 335 1 is_stmt 1 view -0
 303              		.cfi_startproc
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 0, uses_anonymous_args = 0
 306              		@ link register save eliminated.
 336:../../..\CubeG4\src/stm32g4xx_hal.c ****   return uwTick;
 307              		.loc 1 336 3 view .LVU61
 308              		.loc 1 336 10 is_stmt 0 view .LVU62
 309 0000 014B     		ldr	r3, .L19
 310 0002 1868     		ldr	r0, [r3]
 337:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 311              		.loc 1 337 1 view .LVU63
 312 0004 7047     		bx	lr
 313              	.L20:
 314 0006 00BF     		.align	2
 315              	.L19:
 316 0008 00000000 		.word	uwTick
 317              		.cfi_endproc
 318              	.LFE331:
 320              		.section	.text.HAL_GetTickPrio,"ax",%progbits
 321              		.align	1
 322              		.global	HAL_GetTickPrio
 323              		.syntax unified
 324              		.thumb
 325              		.thumb_func
 326              		.fpu fpv4-sp-d16
 328              	HAL_GetTickPrio:
 329              	.LFB332:
 338:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 339:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 340:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief This function returns a tick priority.
 341:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval tick priority
 342:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 343:../../..\CubeG4\src/stm32g4xx_hal.c **** uint32_t HAL_GetTickPrio(void)
 344:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 330              		.loc 1 344 1 is_stmt 1 view -0
 331              		.cfi_startproc
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334              		@ link register save eliminated.
 345:../../..\CubeG4\src/stm32g4xx_hal.c ****   return uwTickPrio;
 335              		.loc 1 345 3 view .LVU65
 346:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 336              		.loc 1 346 1 is_stmt 0 view .LVU66
 337 0000 014B     		ldr	r3, .L22
 338 0002 1868     		ldr	r0, [r3]
 339 0004 7047     		bx	lr
 340              	.L23:
 341 0006 00BF     		.align	2
 342              	.L22:
 343 0008 00000000 		.word	.LANCHOR1
 344              		.cfi_endproc
 345              	.LFE332:
 347              		.section	.text.HAL_SetTickFreq,"ax",%progbits
 348              		.align	1
 349              		.global	HAL_SetTickFreq
 350              		.syntax unified
 351              		.thumb
 352              		.thumb_func
 353              		.fpu fpv4-sp-d16
 355              	HAL_SetTickFreq:
 356              	.LVL14:
 357              	.LFB333:
 347:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 348:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 349:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Set new tick Freq.
 350:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval status
 351:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 352:../../..\CubeG4\src/stm32g4xx_hal.c **** HAL_StatusTypeDef HAL_SetTickFreq(uint32_t Freq)
 353:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 358              		.loc 1 353 1 is_stmt 1 view -0
 359              		.cfi_startproc
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 354:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef status  = HAL_OK;
 362              		.loc 1 354 3 view .LVU68
 355:../../..\CubeG4\src/stm32g4xx_hal.c ****   assert_param(IS_TICKFREQ(Freq));
 363              		.loc 1 355 3 view .LVU69
 356:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 357:../../..\CubeG4\src/stm32g4xx_hal.c ****   if (uwTickFreq != Freq)
 364              		.loc 1 357 3 view .LVU70
 353:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef status  = HAL_OK;
 365              		.loc 1 353 1 is_stmt 0 view .LVU71
 366 0000 38B5     		push	{r3, r4, r5, lr}
 367              		.cfi_def_cfa_offset 16
 368              		.cfi_offset 3, -16
 369              		.cfi_offset 4, -12
 370              		.cfi_offset 5, -8
 371              		.cfi_offset 14, -4
 372              		.loc 1 357 18 view .LVU72
 373 0002 074C     		ldr	r4, .L27
 374              		.loc 1 357 6 view .LVU73
 375 0004 2368     		ldr	r3, [r4]
 376 0006 8342     		cmp	r3, r0
 353:../../..\CubeG4\src/stm32g4xx_hal.c ****   HAL_StatusTypeDef status  = HAL_OK;
 377              		.loc 1 353 1 view .LVU74
 378 0008 0546     		mov	r5, r0
 379              		.loc 1 357 6 view .LVU75
 380 000a 06D0     		beq	.L26
 358:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 359:../../..\CubeG4\src/stm32g4xx_hal.c ****     /* Apply the new tick Freq  */
 360:../../..\CubeG4\src/stm32g4xx_hal.c ****     status = HAL_InitTick(uwTickPrio);
 381              		.loc 1 360 5 is_stmt 1 view .LVU76
 382              		.loc 1 360 14 is_stmt 0 view .LVU77
 383 000c 054B     		ldr	r3, .L27+4
 384 000e 1868     		ldr	r0, [r3]
 385              	.LVL15:
 386              		.loc 1 360 14 view .LVU78
 387 0010 FFF7FEFF 		bl	HAL_InitTick
 388              	.LVL16:
 361:../../..\CubeG4\src/stm32g4xx_hal.c ****     if (status == HAL_OK)
 389              		.loc 1 361 5 is_stmt 1 view .LVU79
 390              		.loc 1 361 8 is_stmt 0 view .LVU80
 391 0014 00B9     		cbnz	r0, .L25
 362:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 363:../../..\CubeG4\src/stm32g4xx_hal.c ****       uwTickFreq = Freq;
 392              		.loc 1 363 7 is_stmt 1 view .LVU81
 393              		.loc 1 363 18 is_stmt 0 view .LVU82
 394 0016 2560     		str	r5, [r4]
 395              	.LVL17:
 396              	.L25:
 364:../../..\CubeG4\src/stm32g4xx_hal.c ****     }
 365:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 366:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 367:../../..\CubeG4\src/stm32g4xx_hal.c ****   return status;
 397              		.loc 1 367 3 is_stmt 1 view .LVU83
 368:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 398              		.loc 1 368 1 is_stmt 0 view .LVU84
 399 0018 38BD     		pop	{r3, r4, r5, pc}
 400              	.LVL18:
 401              	.L26:
 354:../../..\CubeG4\src/stm32g4xx_hal.c ****   assert_param(IS_TICKFREQ(Freq));
 402              		.loc 1 354 21 view .LVU85
 403 001a 0020     		movs	r0, #0
 404              	.LVL19:
 354:../../..\CubeG4\src/stm32g4xx_hal.c ****   assert_param(IS_TICKFREQ(Freq));
 405              		.loc 1 354 21 view .LVU86
 406 001c FCE7     		b	.L25
 407              	.L28:
 408 001e 00BF     		.align	2
 409              	.L27:
 410 0020 00000000 		.word	.LANCHOR0
 411 0024 00000000 		.word	.LANCHOR1
 412              		.cfi_endproc
 413              	.LFE333:
 415              		.section	.text.HAL_GetTickFreq,"ax",%progbits
 416              		.align	1
 417              		.global	HAL_GetTickFreq
 418              		.syntax unified
 419              		.thumb
 420              		.thumb_func
 421              		.fpu fpv4-sp-d16
 423              	HAL_GetTickFreq:
 424              	.LFB334:
 369:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 370:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 371:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Returns tick frequency.
 372:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval tick period in Hz
 373:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 374:../../..\CubeG4\src/stm32g4xx_hal.c **** uint32_t HAL_GetTickFreq(void)
 375:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 425              		.loc 1 375 1 is_stmt 1 view -0
 426              		.cfi_startproc
 427              		@ args = 0, pretend = 0, frame = 0
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429              		@ link register save eliminated.
 376:../../..\CubeG4\src/stm32g4xx_hal.c ****   return uwTickFreq;
 430              		.loc 1 376 3 view .LVU88
 377:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 431              		.loc 1 377 1 is_stmt 0 view .LVU89
 432 0000 014B     		ldr	r3, .L30
 433 0002 1868     		ldr	r0, [r3]
 434 0004 7047     		bx	lr
 435              	.L31:
 436 0006 00BF     		.align	2
 437              	.L30:
 438 0008 00000000 		.word	.LANCHOR0
 439              		.cfi_endproc
 440              	.LFE334:
 442              		.section	.text.HAL_Delay,"ax",%progbits
 443              		.align	1
 444              		.weak	HAL_Delay
 445              		.syntax unified
 446              		.thumb
 447              		.thumb_func
 448              		.fpu fpv4-sp-d16
 450              	HAL_Delay:
 451              	.LVL20:
 452              	.LFB335:
 378:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 379:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 380:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief This function provides minimum delay (in milliseconds) based
 381:../../..\CubeG4\src/stm32g4xx_hal.c ****   *        on variable incremented.
 382:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base.
 383:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       It is used to generate interrupts at regular time intervals where uwTick
 384:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       is incremented.
 385:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 386:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       implementations in user file.
 387:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @param Delay specifies the delay time length, in milliseconds.
 388:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 389:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 390:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak void HAL_Delay(uint32_t Delay)
 391:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 453              		.loc 1 391 1 is_stmt 1 view -0
 454              		.cfi_startproc
 455              		@ args = 0, pretend = 0, frame = 0
 456              		@ frame_needed = 0, uses_anonymous_args = 0
 392:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t tickstart = HAL_GetTick();
 457              		.loc 1 392 3 view .LVU91
 391:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t tickstart = HAL_GetTick();
 458              		.loc 1 391 1 is_stmt 0 view .LVU92
 459 0000 38B5     		push	{r3, r4, r5, lr}
 460              		.cfi_def_cfa_offset 16
 461              		.cfi_offset 3, -16
 462              		.cfi_offset 4, -12
 463              		.cfi_offset 5, -8
 464              		.cfi_offset 14, -4
 391:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t tickstart = HAL_GetTick();
 465              		.loc 1 391 1 view .LVU93
 466 0002 0446     		mov	r4, r0
 467              		.loc 1 392 24 view .LVU94
 468 0004 FFF7FEFF 		bl	HAL_GetTick
 469              	.LVL21:
 393:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t wait = Delay;
 394:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 395:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Add a freq to guarantee minimum wait */
 396:../../..\CubeG4\src/stm32g4xx_hal.c ****   if (wait < HAL_MAX_DELAY)
 470              		.loc 1 396 6 view .LVU95
 471 0008 631C     		adds	r3, r4, #1
 397:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 398:../../..\CubeG4\src/stm32g4xx_hal.c ****     wait += (uint32_t)(uwTickFreq);
 472              		.loc 1 398 13 view .LVU96
 473 000a 1CBF     		itt	ne
 474 000c 054B     		ldrne	r3, .L39
 475              		.loc 1 398 10 view .LVU97
 476 000e 1B68     		ldrne	r3, [r3]
 392:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t wait = Delay;
 477              		.loc 1 392 24 view .LVU98
 478 0010 0546     		mov	r5, r0
 479              	.LVL22:
 393:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t wait = Delay;
 480              		.loc 1 393 3 is_stmt 1 view .LVU99
 396:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 481              		.loc 1 396 3 view .LVU100
 482              		.loc 1 398 5 view .LVU101
 483              		.loc 1 398 10 is_stmt 0 view .LVU102
 484 0012 18BF     		it	ne
 485 0014 E418     		addne	r4, r4, r3
 486              	.LVL23:
 487              	.L34:
 399:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 400:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 401:../../..\CubeG4\src/stm32g4xx_hal.c ****   while ((HAL_GetTick() - tickstart) < wait)
 402:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 403:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 488              		.loc 1 403 3 is_stmt 1 discriminator 1 view .LVU103
 401:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 489              		.loc 1 401 11 is_stmt 0 discriminator 1 view .LVU104
 490 0016 FFF7FEFF 		bl	HAL_GetTick
 491              	.LVL24:
 401:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 492              		.loc 1 401 25 discriminator 1 view .LVU105
 493 001a 401B     		subs	r0, r0, r5
 401:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 494              		.loc 1 401 9 discriminator 1 view .LVU106
 495 001c A042     		cmp	r0, r4
 496 001e FAD3     		bcc	.L34
 404:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 497              		.loc 1 404 1 view .LVU107
 498 0020 38BD     		pop	{r3, r4, r5, pc}
 499              	.LVL25:
 500              	.L40:
 501              		.loc 1 404 1 view .LVU108
 502 0022 00BF     		.align	2
 503              	.L39:
 504 0024 00000000 		.word	.LANCHOR0
 505              		.cfi_endproc
 506              	.LFE335:
 508              		.section	.text.HAL_SuspendTick,"ax",%progbits
 509              		.align	1
 510              		.weak	HAL_SuspendTick
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
 514              		.fpu fpv4-sp-d16
 516              	HAL_SuspendTick:
 517              	.LFB336:
 405:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 406:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 407:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Suspends Tick increment.
 408:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base. It is
 409:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       used to generate interrupts at regular time intervals. Once HAL_SuspendTick()
 410:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       is called, the SysTick interrupt will be disabled and so Tick increment
 411:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       is suspended.
 412:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 413:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       implementations in user file.
 414:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 415:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 416:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak void HAL_SuspendTick(void)
 417:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 518              		.loc 1 417 1 is_stmt 1 view -0
 519              		.cfi_startproc
 520              		@ args = 0, pretend = 0, frame = 0
 521              		@ frame_needed = 0, uses_anonymous_args = 0
 522              		@ link register save eliminated.
 418:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Disable SysTick Interrupt */
 419:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(SysTick->CTRL, SysTick_CTRL_TICKINT_Msk);
 523              		.loc 1 419 3 view .LVU110
 524 0000 024A     		ldr	r2, .L42
 525 0002 1368     		ldr	r3, [r2]
 526 0004 23F00203 		bic	r3, r3, #2
 527 0008 1360     		str	r3, [r2]
 420:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 528              		.loc 1 420 1 is_stmt 0 view .LVU111
 529 000a 7047     		bx	lr
 530              	.L43:
 531              		.align	2
 532              	.L42:
 533 000c 10E000E0 		.word	-536813552
 534              		.cfi_endproc
 535              	.LFE336:
 537              		.section	.text.HAL_ResumeTick,"ax",%progbits
 538              		.align	1
 539              		.weak	HAL_ResumeTick
 540              		.syntax unified
 541              		.thumb
 542              		.thumb_func
 543              		.fpu fpv4-sp-d16
 545              	HAL_ResumeTick:
 546              	.LFB337:
 421:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 422:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 423:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Resume Tick increment.
 424:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base. It is
 425:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       used to generate interrupts at regular time intervals. Once HAL_ResumeTick()
 426:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       is called, the SysTick interrupt will be enabled and so Tick increment
 427:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       is resumed.
 428:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 429:../../..\CubeG4\src/stm32g4xx_hal.c ****   *       implementations in user file.
 430:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 431:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 432:../../..\CubeG4\src/stm32g4xx_hal.c **** __weak void HAL_ResumeTick(void)
 433:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 547              		.loc 1 433 1 is_stmt 1 view -0
 548              		.cfi_startproc
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551              		@ link register save eliminated.
 434:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Enable SysTick Interrupt */
 435:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(SysTick->CTRL, SysTick_CTRL_TICKINT_Msk);
 552              		.loc 1 435 3 view .LVU113
 553 0000 024A     		ldr	r2, .L45
 554 0002 1368     		ldr	r3, [r2]
 555 0004 43F00203 		orr	r3, r3, #2
 556 0008 1360     		str	r3, [r2]
 436:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 557              		.loc 1 436 1 is_stmt 0 view .LVU114
 558 000a 7047     		bx	lr
 559              	.L46:
 560              		.align	2
 561              	.L45:
 562 000c 10E000E0 		.word	-536813552
 563              		.cfi_endproc
 564              	.LFE337:
 566              		.section	.text.HAL_GetHalVersion,"ax",%progbits
 567              		.align	1
 568              		.global	HAL_GetHalVersion
 569              		.syntax unified
 570              		.thumb
 571              		.thumb_func
 572              		.fpu fpv4-sp-d16
 574              	HAL_GetHalVersion:
 575              	.LFB338:
 437:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 438:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 439:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Returns the HAL revision.
 440:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval version : 0xXYZR (8bits for each decimal, R for RC)
 441:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 442:../../..\CubeG4\src/stm32g4xx_hal.c **** uint32_t HAL_GetHalVersion(void)
 443:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 576              		.loc 1 443 1 is_stmt 1 view -0
 577              		.cfi_startproc
 578              		@ args = 0, pretend = 0, frame = 0
 579              		@ frame_needed = 0, uses_anonymous_args = 0
 580              		@ link register save eliminated.
 444:../../..\CubeG4\src/stm32g4xx_hal.c ****   return __STM32G4xx_HAL_VERSION;
 581              		.loc 1 444 3 view .LVU116
 445:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 582              		.loc 1 445 1 is_stmt 0 view .LVU117
 583 0000 0048     		ldr	r0, .L48
 584 0002 7047     		bx	lr
 585              	.L49:
 586              		.align	2
 587              	.L48:
 588 0004 00000101 		.word	16842752
 589              		.cfi_endproc
 590              	.LFE338:
 592              		.section	.text.HAL_GetREVID,"ax",%progbits
 593              		.align	1
 594              		.global	HAL_GetREVID
 595              		.syntax unified
 596              		.thumb
 597              		.thumb_func
 598              		.fpu fpv4-sp-d16
 600              	HAL_GetREVID:
 601              	.LFB339:
 446:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 447:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 448:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Returns the device revision identifier.
 449:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval Device revision identifier
 450:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 451:../../..\CubeG4\src/stm32g4xx_hal.c **** uint32_t HAL_GetREVID(void)
 452:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 602              		.loc 1 452 1 is_stmt 1 view -0
 603              		.cfi_startproc
 604              		@ args = 0, pretend = 0, frame = 0
 605              		@ frame_needed = 0, uses_anonymous_args = 0
 606              		@ link register save eliminated.
 453:../../..\CubeG4\src/stm32g4xx_hal.c ****   return ((DBGMCU->IDCODE & DBGMCU_IDCODE_REV_ID) >> 16U);
 607              		.loc 1 453 3 view .LVU119
 608              		.loc 1 453 18 is_stmt 0 view .LVU120
 609 0000 014B     		ldr	r3, .L51
 610 0002 1868     		ldr	r0, [r3]
 454:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 611              		.loc 1 454 1 view .LVU121
 612 0004 000C     		lsrs	r0, r0, #16
 613 0006 7047     		bx	lr
 614              	.L52:
 615              		.align	2
 616              	.L51:
 617 0008 002004E0 		.word	-536600576
 618              		.cfi_endproc
 619              	.LFE339:
 621              		.section	.text.HAL_GetDEVID,"ax",%progbits
 622              		.align	1
 623              		.global	HAL_GetDEVID
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu fpv4-sp-d16
 629              	HAL_GetDEVID:
 630              	.LFB340:
 455:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 456:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 457:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Returns the device identifier.
 458:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval Device identifier
 459:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 460:../../..\CubeG4\src/stm32g4xx_hal.c **** uint32_t HAL_GetDEVID(void)
 461:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 631              		.loc 1 461 1 is_stmt 1 view -0
 632              		.cfi_startproc
 633              		@ args = 0, pretend = 0, frame = 0
 634              		@ frame_needed = 0, uses_anonymous_args = 0
 635              		@ link register save eliminated.
 462:../../..\CubeG4\src/stm32g4xx_hal.c ****   return (DBGMCU->IDCODE & DBGMCU_IDCODE_DEV_ID);
 636              		.loc 1 462 3 view .LVU123
 637              		.loc 1 462 17 is_stmt 0 view .LVU124
 638 0000 024B     		ldr	r3, .L54
 639 0002 1868     		ldr	r0, [r3]
 463:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 640              		.loc 1 463 1 view .LVU125
 641 0004 C0F30B00 		ubfx	r0, r0, #0, #12
 642 0008 7047     		bx	lr
 643              	.L55:
 644 000a 00BF     		.align	2
 645              	.L54:
 646 000c 002004E0 		.word	-536600576
 647              		.cfi_endproc
 648              	.LFE340:
 650              		.section	.text.HAL_DBGMCU_EnableDBGSleepMode,"ax",%progbits
 651              		.align	1
 652              		.global	HAL_DBGMCU_EnableDBGSleepMode
 653              		.syntax unified
 654              		.thumb
 655              		.thumb_func
 656              		.fpu fpv4-sp-d16
 658              	HAL_DBGMCU_EnableDBGSleepMode:
 659              	.LFB341:
 464:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 465:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 466:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @}
 467:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 468:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 469:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group3 HAL Debug functions
 470:../../..\CubeG4\src/stm32g4xx_hal.c ****   *  @brief    HAL Debug functions
 471:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 472:../../..\CubeG4\src/stm32g4xx_hal.c **** @verbatim
 473:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 474:../../..\CubeG4\src/stm32g4xx_hal.c ****                       ##### HAL Debug functions #####
 475:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 476:../../..\CubeG4\src/stm32g4xx_hal.c ****     [..]  This section provides functions allowing to:
 477:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Enable/Disable Debug module during SLEEP mode
 478:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Enable/Disable Debug module during STOP0/STOP1/STOP2 modes
 479:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Enable/Disable Debug module during STANDBY mode
 480:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 481:../../..\CubeG4\src/stm32g4xx_hal.c **** @endverbatim
 482:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
 483:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 484:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 485:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 486:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Enable the Debug Module during SLEEP mode.
 487:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 488:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 489:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_DBGMCU_EnableDBGSleepMode(void)
 490:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 660              		.loc 1 490 1 is_stmt 1 view -0
 661              		.cfi_startproc
 662              		@ args = 0, pretend = 0, frame = 0
 663              		@ frame_needed = 0, uses_anonymous_args = 0
 664              		@ link register save eliminated.
 491:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 665              		.loc 1 491 3 view .LVU127
 666 0000 024A     		ldr	r2, .L57
 667 0002 5368     		ldr	r3, [r2, #4]
 668 0004 43F00103 		orr	r3, r3, #1
 669 0008 5360     		str	r3, [r2, #4]
 492:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 670              		.loc 1 492 1 is_stmt 0 view .LVU128
 671 000a 7047     		bx	lr
 672              	.L58:
 673              		.align	2
 674              	.L57:
 675 000c 002004E0 		.word	-536600576
 676              		.cfi_endproc
 677              	.LFE341:
 679              		.section	.text.HAL_DBGMCU_DisableDBGSleepMode,"ax",%progbits
 680              		.align	1
 681              		.global	HAL_DBGMCU_DisableDBGSleepMode
 682              		.syntax unified
 683              		.thumb
 684              		.thumb_func
 685              		.fpu fpv4-sp-d16
 687              	HAL_DBGMCU_DisableDBGSleepMode:
 688              	.LFB342:
 493:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 494:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 495:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Disable the Debug Module during SLEEP mode.
 496:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 497:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 498:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_DBGMCU_DisableDBGSleepMode(void)
 499:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 689              		.loc 1 499 1 is_stmt 1 view -0
 690              		.cfi_startproc
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693              		@ link register save eliminated.
 500:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 694              		.loc 1 500 3 view .LVU130
 695 0000 024A     		ldr	r2, .L60
 696 0002 5368     		ldr	r3, [r2, #4]
 697 0004 23F00103 		bic	r3, r3, #1
 698 0008 5360     		str	r3, [r2, #4]
 501:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 699              		.loc 1 501 1 is_stmt 0 view .LVU131
 700 000a 7047     		bx	lr
 701              	.L61:
 702              		.align	2
 703              	.L60:
 704 000c 002004E0 		.word	-536600576
 705              		.cfi_endproc
 706              	.LFE342:
 708              		.section	.text.HAL_DBGMCU_EnableDBGStopMode,"ax",%progbits
 709              		.align	1
 710              		.global	HAL_DBGMCU_EnableDBGStopMode
 711              		.syntax unified
 712              		.thumb
 713              		.thumb_func
 714              		.fpu fpv4-sp-d16
 716              	HAL_DBGMCU_EnableDBGStopMode:
 717              	.LFB343:
 502:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 503:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 504:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Enable the Debug Module during STOP0/STOP1/STOP2 modes.
 505:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 506:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 507:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_DBGMCU_EnableDBGStopMode(void)
 508:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 718              		.loc 1 508 1 is_stmt 1 view -0
 719              		.cfi_startproc
 720              		@ args = 0, pretend = 0, frame = 0
 721              		@ frame_needed = 0, uses_anonymous_args = 0
 722              		@ link register save eliminated.
 509:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 723              		.loc 1 509 3 view .LVU133
 724 0000 024A     		ldr	r2, .L63
 725 0002 5368     		ldr	r3, [r2, #4]
 726 0004 43F00203 		orr	r3, r3, #2
 727 0008 5360     		str	r3, [r2, #4]
 510:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 728              		.loc 1 510 1 is_stmt 0 view .LVU134
 729 000a 7047     		bx	lr
 730              	.L64:
 731              		.align	2
 732              	.L63:
 733 000c 002004E0 		.word	-536600576
 734              		.cfi_endproc
 735              	.LFE343:
 737              		.section	.text.HAL_DBGMCU_DisableDBGStopMode,"ax",%progbits
 738              		.align	1
 739              		.global	HAL_DBGMCU_DisableDBGStopMode
 740              		.syntax unified
 741              		.thumb
 742              		.thumb_func
 743              		.fpu fpv4-sp-d16
 745              	HAL_DBGMCU_DisableDBGStopMode:
 746              	.LFB344:
 511:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 512:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 513:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Disable the Debug Module during STOP0/STOP1/STOP2 modes.
 514:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 515:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 516:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_DBGMCU_DisableDBGStopMode(void)
 517:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 747              		.loc 1 517 1 is_stmt 1 view -0
 748              		.cfi_startproc
 749              		@ args = 0, pretend = 0, frame = 0
 750              		@ frame_needed = 0, uses_anonymous_args = 0
 751              		@ link register save eliminated.
 518:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 752              		.loc 1 518 3 view .LVU136
 753 0000 024A     		ldr	r2, .L66
 754 0002 5368     		ldr	r3, [r2, #4]
 755 0004 23F00203 		bic	r3, r3, #2
 756 0008 5360     		str	r3, [r2, #4]
 519:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 757              		.loc 1 519 1 is_stmt 0 view .LVU137
 758 000a 7047     		bx	lr
 759              	.L67:
 760              		.align	2
 761              	.L66:
 762 000c 002004E0 		.word	-536600576
 763              		.cfi_endproc
 764              	.LFE344:
 766              		.section	.text.HAL_DBGMCU_EnableDBGStandbyMode,"ax",%progbits
 767              		.align	1
 768              		.global	HAL_DBGMCU_EnableDBGStandbyMode
 769              		.syntax unified
 770              		.thumb
 771              		.thumb_func
 772              		.fpu fpv4-sp-d16
 774              	HAL_DBGMCU_EnableDBGStandbyMode:
 775              	.LFB345:
 520:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 521:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 522:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Enable the Debug Module during STANDBY mode.
 523:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 524:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 525:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_DBGMCU_EnableDBGStandbyMode(void)
 526:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 776              		.loc 1 526 1 is_stmt 1 view -0
 777              		.cfi_startproc
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780              		@ link register save eliminated.
 527:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 781              		.loc 1 527 3 view .LVU139
 782 0000 024A     		ldr	r2, .L69
 783 0002 5368     		ldr	r3, [r2, #4]
 784 0004 43F00403 		orr	r3, r3, #4
 785 0008 5360     		str	r3, [r2, #4]
 528:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 786              		.loc 1 528 1 is_stmt 0 view .LVU140
 787 000a 7047     		bx	lr
 788              	.L70:
 789              		.align	2
 790              	.L69:
 791 000c 002004E0 		.word	-536600576
 792              		.cfi_endproc
 793              	.LFE345:
 795              		.section	.text.HAL_DBGMCU_DisableDBGStandbyMode,"ax",%progbits
 796              		.align	1
 797              		.global	HAL_DBGMCU_DisableDBGStandbyMode
 798              		.syntax unified
 799              		.thumb
 800              		.thumb_func
 801              		.fpu fpv4-sp-d16
 803              	HAL_DBGMCU_DisableDBGStandbyMode:
 804              	.LFB346:
 529:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 530:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 531:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Disable the Debug Module during STANDBY mode.
 532:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 533:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 534:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_DBGMCU_DisableDBGStandbyMode(void)
 535:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 805              		.loc 1 535 1 is_stmt 1 view -0
 806              		.cfi_startproc
 807              		@ args = 0, pretend = 0, frame = 0
 808              		@ frame_needed = 0, uses_anonymous_args = 0
 809              		@ link register save eliminated.
 536:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 810              		.loc 1 536 3 view .LVU142
 811 0000 024A     		ldr	r2, .L72
 812 0002 5368     		ldr	r3, [r2, #4]
 813 0004 23F00403 		bic	r3, r3, #4
 814 0008 5360     		str	r3, [r2, #4]
 537:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 815              		.loc 1 537 1 is_stmt 0 view .LVU143
 816 000a 7047     		bx	lr
 817              	.L73:
 818              		.align	2
 819              	.L72:
 820 000c 002004E0 		.word	-536600576
 821              		.cfi_endproc
 822              	.LFE346:
 824              		.section	.text.HAL_SYSCFG_CCMSRAMErase,"ax",%progbits
 825              		.align	1
 826              		.global	HAL_SYSCFG_CCMSRAMErase
 827              		.syntax unified
 828              		.thumb
 829              		.thumb_func
 830              		.fpu fpv4-sp-d16
 832              	HAL_SYSCFG_CCMSRAMErase:
 833              	.LFB347:
 538:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 539:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 540:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @}
 541:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 542:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 543:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group4 HAL SYSCFG configuration functions
 544:../../..\CubeG4\src/stm32g4xx_hal.c ****   *  @brief    HAL SYSCFG configuration functions
 545:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 546:../../..\CubeG4\src/stm32g4xx_hal.c **** @verbatim
 547:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 548:../../..\CubeG4\src/stm32g4xx_hal.c ****                       ##### HAL SYSCFG configuration functions #####
 549:../../..\CubeG4\src/stm32g4xx_hal.c ****  ===============================================================================
 550:../../..\CubeG4\src/stm32g4xx_hal.c ****     [..]  This section provides functions allowing to:
 551:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Start a hardware CCMSRAM erase operation
 552:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Enable/Disable the Internal FLASH Bank Swapping
 553:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Configure the Voltage reference buffer
 554:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Enable/Disable the Voltage reference buffer
 555:../../..\CubeG4\src/stm32g4xx_hal.c ****       (+) Enable/Disable the I/O analog switch voltage booster
 556:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 557:../../..\CubeG4\src/stm32g4xx_hal.c **** @endverbatim
 558:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @{
 559:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 560:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 561:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 562:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Start a hardware CCMSRAM erase operation.
 563:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   As long as CCMSRAM is not erased the CCMER bit will be set.
 564:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         This bit is automatically reset at the end of the CCMSRAM erase operation.
 565:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 566:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 567:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_CCMSRAMErase(void)
 568:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 834              		.loc 1 568 1 is_stmt 1 view -0
 835              		.cfi_startproc
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838              		@ link register save eliminated.
 569:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* unlock the write protection of the CCMER bit */
 570:../../..\CubeG4\src/stm32g4xx_hal.c ****   SYSCFG->SKR = 0xCA;
 839              		.loc 1 570 3 view .LVU145
 840              		.loc 1 570 15 is_stmt 0 view .LVU146
 841 0000 044B     		ldr	r3, .L75
 842 0002 CA22     		movs	r2, #202
 843 0004 5A62     		str	r2, [r3, #36]
 571:../../..\CubeG4\src/stm32g4xx_hal.c ****   SYSCFG->SKR = 0x53;
 844              		.loc 1 571 3 is_stmt 1 view .LVU147
 845              		.loc 1 571 15 is_stmt 0 view .LVU148
 846 0006 5322     		movs	r2, #83
 847 0008 5A62     		str	r2, [r3, #36]
 572:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Starts a hardware CCMSRAM erase operation*/
 573:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(SYSCFG->SCSR, SYSCFG_SCSR_CCMER);
 848              		.loc 1 573 3 is_stmt 1 view .LVU149
 849 000a 9A69     		ldr	r2, [r3, #24]
 850 000c 42F00102 		orr	r2, r2, #1
 851 0010 9A61     		str	r2, [r3, #24]
 574:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 852              		.loc 1 574 1 is_stmt 0 view .LVU150
 853 0012 7047     		bx	lr
 854              	.L76:
 855              		.align	2
 856              	.L75:
 857 0014 00000140 		.word	1073807360
 858              		.cfi_endproc
 859              	.LFE347:
 861              		.section	.text.HAL_SYSCFG_EnableMemorySwappingBank,"ax",%progbits
 862              		.align	1
 863              		.global	HAL_SYSCFG_EnableMemorySwappingBank
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu fpv4-sp-d16
 869              	HAL_SYSCFG_EnableMemorySwappingBank:
 870              	.LFB348:
 575:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 576:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 577:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Enable the Internal FLASH Bank Swapping.
 578:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 579:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   This function can be used only for STM32G4xx devices.
 580:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 581:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   Flash Bank2 mapped at 0x08000000 (and aliased @0x00000000)
 582:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         and Flash Bank1 mapped at 0x08040000 (and aliased at 0x00040000)
 583:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 584:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 585:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 586:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_EnableMemorySwappingBank(void)
 587:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 871              		.loc 1 587 1 is_stmt 1 view -0
 872              		.cfi_startproc
 873              		@ args = 0, pretend = 0, frame = 0
 874              		@ frame_needed = 0, uses_anonymous_args = 0
 875              		@ link register save eliminated.
 588:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_FB_MODE);
 876              		.loc 1 588 3 view .LVU152
 877 0000 024A     		ldr	r2, .L78
 878 0002 1368     		ldr	r3, [r2]
 879 0004 43F48073 		orr	r3, r3, #256
 880 0008 1360     		str	r3, [r2]
 589:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 881              		.loc 1 589 1 is_stmt 0 view .LVU153
 882 000a 7047     		bx	lr
 883              	.L79:
 884              		.align	2
 885              	.L78:
 886 000c 00000140 		.word	1073807360
 887              		.cfi_endproc
 888              	.LFE348:
 890              		.section	.text.HAL_SYSCFG_DisableMemorySwappingBank,"ax",%progbits
 891              		.align	1
 892              		.global	HAL_SYSCFG_DisableMemorySwappingBank
 893              		.syntax unified
 894              		.thumb
 895              		.thumb_func
 896              		.fpu fpv4-sp-d16
 898              	HAL_SYSCFG_DisableMemorySwappingBank:
 899              	.LFB349:
 590:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 591:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 592:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Disable the Internal FLASH Bank Swapping.
 593:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 594:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   This function can be used only for STM32G4xx devices.
 595:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 596:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   The default state : Flash Bank1 mapped at 0x08000000 (and aliased @0x0000 0000)
 597:../../..\CubeG4\src/stm32g4xx_hal.c ****   *         and Flash Bank2 mapped at 0x08040000 (and aliased at 0x00040000)
 598:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 599:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 600:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 601:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_DisableMemorySwappingBank(void)
 602:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 900              		.loc 1 602 1 is_stmt 1 view -0
 901              		.cfi_startproc
 902              		@ args = 0, pretend = 0, frame = 0
 903              		@ frame_needed = 0, uses_anonymous_args = 0
 904              		@ link register save eliminated.
 603:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_FB_MODE);
 905              		.loc 1 603 3 view .LVU155
 906 0000 024A     		ldr	r2, .L81
 907 0002 1368     		ldr	r3, [r2]
 908 0004 23F48073 		bic	r3, r3, #256
 909 0008 1360     		str	r3, [r2]
 604:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 910              		.loc 1 604 1 is_stmt 0 view .LVU156
 911 000a 7047     		bx	lr
 912              	.L82:
 913              		.align	2
 914              	.L81:
 915 000c 00000140 		.word	1073807360
 916              		.cfi_endproc
 917              	.LFE349:
 919              		.section	.text.HAL_SYSCFG_VREFBUF_VoltageScalingConfig,"ax",%progbits
 920              		.align	1
 921              		.global	HAL_SYSCFG_VREFBUF_VoltageScalingConfig
 922              		.syntax unified
 923              		.thumb
 924              		.thumb_func
 925              		.fpu fpv4-sp-d16
 927              	HAL_SYSCFG_VREFBUF_VoltageScalingConfig:
 928              	.LVL26:
 929              	.LFB350:
 605:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 606:../../..\CubeG4\src/stm32g4xx_hal.c **** #if defined(VREFBUF)
 607:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 608:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Configure the internal voltage reference buffer voltage scale.
 609:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @param  VoltageScaling: specifies the output voltage to achieve
 610:../../..\CubeG4\src/stm32g4xx_hal.c ****   *          This parameter can be one of the following values:
 611:../../..\CubeG4\src/stm32g4xx_hal.c ****   *            @arg SYSCFG_VREFBUF_VOLTAGE_SCALE0: VREFBUF_OUT around 2.048 V.
 612:../../..\CubeG4\src/stm32g4xx_hal.c ****   *                                                This requires VDDA equal to or higher than 2.4 V
 613:../../..\CubeG4\src/stm32g4xx_hal.c ****   *            @arg SYSCFG_VREFBUF_VOLTAGE_SCALE1: VREFBUF_OUT around 2.5 V.
 614:../../..\CubeG4\src/stm32g4xx_hal.c ****   *                                                This requires VDDA equal to or higher than 2.8 V
 615:../../..\CubeG4\src/stm32g4xx_hal.c ****   *            @arg SYSCFG_VREFBUF_VOLTAGE_SCALE2: VREFBUF_OUT around 2.9 V.
 616:../../..\CubeG4\src/stm32g4xx_hal.c ****   *                                                This requires VDDA equal to or higher than 3.15 
 617:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 618:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 619:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_VREFBUF_VoltageScalingConfig(uint32_t VoltageScaling)
 620:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 930              		.loc 1 620 1 is_stmt 1 view -0
 931              		.cfi_startproc
 932              		@ args = 0, pretend = 0, frame = 0
 933              		@ frame_needed = 0, uses_anonymous_args = 0
 934              		@ link register save eliminated.
 621:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Check the parameters */
 622:../../..\CubeG4\src/stm32g4xx_hal.c ****   assert_param(IS_SYSCFG_VREFBUF_VOLTAGE_SCALE(VoltageScaling));
 935              		.loc 1 622 3 view .LVU158
 623:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 624:../../..\CubeG4\src/stm32g4xx_hal.c ****   MODIFY_REG(VREFBUF->CSR, VREFBUF_CSR_VRS, VoltageScaling);
 936              		.loc 1 624 3 view .LVU159
 937 0000 034A     		ldr	r2, .L84
 938 0002 1368     		ldr	r3, [r2]
 939 0004 23F03003 		bic	r3, r3, #48
 940 0008 1843     		orrs	r0, r0, r3
 941              	.LVL27:
 942              		.loc 1 624 3 is_stmt 0 view .LVU160
 943 000a 1060     		str	r0, [r2]
 625:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 944              		.loc 1 625 1 view .LVU161
 945 000c 7047     		bx	lr
 946              	.L85:
 947 000e 00BF     		.align	2
 948              	.L84:
 949 0010 30000140 		.word	1073807408
 950              		.cfi_endproc
 951              	.LFE350:
 953              		.section	.text.HAL_SYSCFG_VREFBUF_HighImpedanceConfig,"ax",%progbits
 954              		.align	1
 955              		.global	HAL_SYSCFG_VREFBUF_HighImpedanceConfig
 956              		.syntax unified
 957              		.thumb
 958              		.thumb_func
 959              		.fpu fpv4-sp-d16
 961              	HAL_SYSCFG_VREFBUF_HighImpedanceConfig:
 962              	.LVL28:
 963              	.LFB351:
 626:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 627:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 628:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Configure the internal voltage reference buffer high impedance mode.
 629:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @param  Mode: specifies the high impedance mode
 630:../../..\CubeG4\src/stm32g4xx_hal.c ****   *          This parameter can be one of the following values:
 631:../../..\CubeG4\src/stm32g4xx_hal.c ****   *            @arg SYSCFG_VREFBUF_HIGH_IMPEDANCE_DISABLE: VREF+ pin is internally connect to VREFI
 632:../../..\CubeG4\src/stm32g4xx_hal.c ****   *            @arg SYSCFG_VREFBUF_HIGH_IMPEDANCE_ENABLE: VREF+ pin is high impedance.
 633:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 634:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 635:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_VREFBUF_HighImpedanceConfig(uint32_t Mode)
 636:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 964              		.loc 1 636 1 is_stmt 1 view -0
 965              		.cfi_startproc
 966              		@ args = 0, pretend = 0, frame = 0
 967              		@ frame_needed = 0, uses_anonymous_args = 0
 968              		@ link register save eliminated.
 637:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Check the parameters */
 638:../../..\CubeG4\src/stm32g4xx_hal.c ****   assert_param(IS_SYSCFG_VREFBUF_HIGH_IMPEDANCE(Mode));
 969              		.loc 1 638 3 view .LVU163
 639:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 640:../../..\CubeG4\src/stm32g4xx_hal.c ****   MODIFY_REG(VREFBUF->CSR, VREFBUF_CSR_HIZ, Mode);
 970              		.loc 1 640 3 view .LVU164
 971 0000 034A     		ldr	r2, .L87
 972 0002 1368     		ldr	r3, [r2]
 973 0004 23F00203 		bic	r3, r3, #2
 974 0008 1843     		orrs	r0, r0, r3
 975              	.LVL29:
 976              		.loc 1 640 3 is_stmt 0 view .LVU165
 977 000a 1060     		str	r0, [r2]
 641:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 978              		.loc 1 641 1 view .LVU166
 979 000c 7047     		bx	lr
 980              	.L88:
 981 000e 00BF     		.align	2
 982              	.L87:
 983 0010 30000140 		.word	1073807408
 984              		.cfi_endproc
 985              	.LFE351:
 987              		.section	.text.HAL_SYSCFG_VREFBUF_TrimmingConfig,"ax",%progbits
 988              		.align	1
 989              		.global	HAL_SYSCFG_VREFBUF_TrimmingConfig
 990              		.syntax unified
 991              		.thumb
 992              		.thumb_func
 993              		.fpu fpv4-sp-d16
 995              	HAL_SYSCFG_VREFBUF_TrimmingConfig:
 996              	.LVL30:
 997              	.LFB352:
 642:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 643:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 644:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief Tune the Internal Voltage Reference buffer (VREFBUF).
 645:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @param TrimmingValue specifies trimming code for VREFBUF calibration
 646:../../..\CubeG4\src/stm32g4xx_hal.c ****   *        This parameter can be a number between Min_Data = 0x00 and Max_Data = 0x3F
 647:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 648:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 649:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_VREFBUF_TrimmingConfig(uint32_t TrimmingValue)
 650:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 998              		.loc 1 650 1 is_stmt 1 view -0
 999              		.cfi_startproc
 1000              		@ args = 0, pretend = 0, frame = 0
 1001              		@ frame_needed = 0, uses_anonymous_args = 0
 1002              		@ link register save eliminated.
 651:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Check the parameters */
 652:../../..\CubeG4\src/stm32g4xx_hal.c ****   assert_param(IS_SYSCFG_VREFBUF_TRIMMING(TrimmingValue));
 1003              		.loc 1 652 3 view .LVU168
 653:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 654:../../..\CubeG4\src/stm32g4xx_hal.c ****   MODIFY_REG(VREFBUF->CCR, VREFBUF_CCR_TRIM, TrimmingValue);
 1004              		.loc 1 654 3 view .LVU169
 1005 0000 034A     		ldr	r2, .L90
 1006 0002 5368     		ldr	r3, [r2, #4]
 1007 0004 23F03F03 		bic	r3, r3, #63
 1008 0008 1843     		orrs	r0, r0, r3
 1009              	.LVL31:
 1010              		.loc 1 654 3 is_stmt 0 view .LVU170
 1011 000a 5060     		str	r0, [r2, #4]
 655:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1012              		.loc 1 655 1 view .LVU171
 1013 000c 7047     		bx	lr
 1014              	.L91:
 1015 000e 00BF     		.align	2
 1016              	.L90:
 1017 0010 30000140 		.word	1073807408
 1018              		.cfi_endproc
 1019              	.LFE352:
 1021              		.section	.text.HAL_SYSCFG_EnableVREFBUF,"ax",%progbits
 1022              		.align	1
 1023              		.global	HAL_SYSCFG_EnableVREFBUF
 1024              		.syntax unified
 1025              		.thumb
 1026              		.thumb_func
 1027              		.fpu fpv4-sp-d16
 1029              	HAL_SYSCFG_EnableVREFBUF:
 1030              	.LFB353:
 656:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 657:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 658:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Enable the Internal Voltage Reference buffer (VREFBUF).
 659:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval HAL_OK/HAL_TIMEOUT
 660:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 661:../../..\CubeG4\src/stm32g4xx_hal.c **** HAL_StatusTypeDef HAL_SYSCFG_EnableVREFBUF(void)
 662:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 1031              		.loc 1 662 1 is_stmt 1 view -0
 1032              		.cfi_startproc
 1033              		@ args = 0, pretend = 0, frame = 0
 1034              		@ frame_needed = 0, uses_anonymous_args = 0
 663:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t tickstart;
 1035              		.loc 1 663 3 view .LVU173
 664:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 665:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(VREFBUF->CSR, VREFBUF_CSR_ENVR);
 1036              		.loc 1 665 3 view .LVU174
 662:../../..\CubeG4\src/stm32g4xx_hal.c ****   uint32_t tickstart;
 1037              		.loc 1 662 1 is_stmt 0 view .LVU175
 1038 0000 38B5     		push	{r3, r4, r5, lr}
 1039              		.cfi_def_cfa_offset 16
 1040              		.cfi_offset 3, -16
 1041              		.cfi_offset 4, -12
 1042              		.cfi_offset 5, -8
 1043              		.cfi_offset 14, -4
 1044              		.loc 1 665 3 view .LVU176
 1045 0002 0A4C     		ldr	r4, .L97
 1046 0004 2368     		ldr	r3, [r4]
 1047 0006 43F00103 		orr	r3, r3, #1
 1048 000a 2360     		str	r3, [r4]
 666:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 667:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Get Start Tick*/
 668:../../..\CubeG4\src/stm32g4xx_hal.c ****   tickstart = HAL_GetTick();
 1049              		.loc 1 668 3 is_stmt 1 view .LVU177
 1050              		.loc 1 668 15 is_stmt 0 view .LVU178
 1051 000c FFF7FEFF 		bl	HAL_GetTick
 1052              	.LVL32:
 1053 0010 0546     		mov	r5, r0
 1054              	.LVL33:
 669:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 670:../../..\CubeG4\src/stm32g4xx_hal.c ****   /* Wait for VRR bit  */
 671:../../..\CubeG4\src/stm32g4xx_hal.c ****   while (READ_BIT(VREFBUF->CSR, VREFBUF_CSR_VRR) == 0x00U)
 1055              		.loc 1 671 3 is_stmt 1 view .LVU179
 1056              	.L93:
 1057              		.loc 1 671 10 is_stmt 0 view .LVU180
 1058 0012 2368     		ldr	r3, [r4]
 1059              		.loc 1 671 9 view .LVU181
 1060 0014 1B07     		lsls	r3, r3, #28
 1061 0016 01D5     		bpl	.L95
 672:../../..\CubeG4\src/stm32g4xx_hal.c ****   {
 673:../../..\CubeG4\src/stm32g4xx_hal.c ****     if ((HAL_GetTick() - tickstart) > VREFBUF_TIMEOUT_VALUE)
 674:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 675:../../..\CubeG4\src/stm32g4xx_hal.c ****       return HAL_TIMEOUT;
 676:../../..\CubeG4\src/stm32g4xx_hal.c ****     }
 677:../../..\CubeG4\src/stm32g4xx_hal.c ****   }
 678:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 679:../../..\CubeG4\src/stm32g4xx_hal.c ****   return HAL_OK;
 1062              		.loc 1 679 10 view .LVU182
 1063 0018 0020     		movs	r0, #0
 1064              	.L94:
 680:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1065              		.loc 1 680 1 view .LVU183
 1066 001a 38BD     		pop	{r3, r4, r5, pc}
 1067              	.LVL34:
 1068              	.L95:
 673:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 1069              		.loc 1 673 5 is_stmt 1 view .LVU184
 673:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 1070              		.loc 1 673 10 is_stmt 0 view .LVU185
 1071 001c FFF7FEFF 		bl	HAL_GetTick
 1072              	.LVL35:
 673:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 1073              		.loc 1 673 24 view .LVU186
 1074 0020 401B     		subs	r0, r0, r5
 673:../../..\CubeG4\src/stm32g4xx_hal.c ****     {
 1075              		.loc 1 673 8 view .LVU187
 1076 0022 0A28     		cmp	r0, #10
 1077 0024 F5D9     		bls	.L93
 675:../../..\CubeG4\src/stm32g4xx_hal.c ****     }
 1078              		.loc 1 675 14 view .LVU188
 1079 0026 0320     		movs	r0, #3
 1080 0028 F7E7     		b	.L94
 1081              	.L98:
 1082 002a 00BF     		.align	2
 1083              	.L97:
 1084 002c 30000140 		.word	1073807408
 1085              		.cfi_endproc
 1086              	.LFE353:
 1088              		.section	.text.HAL_SYSCFG_DisableVREFBUF,"ax",%progbits
 1089              		.align	1
 1090              		.global	HAL_SYSCFG_DisableVREFBUF
 1091              		.syntax unified
 1092              		.thumb
 1093              		.thumb_func
 1094              		.fpu fpv4-sp-d16
 1096              	HAL_SYSCFG_DisableVREFBUF:
 1097              	.LFB354:
 681:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 682:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 683:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Disable the Internal Voltage Reference buffer (VREFBUF).
 684:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 685:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 686:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 687:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_DisableVREFBUF(void)
 688:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 1098              		.loc 1 688 1 is_stmt 1 view -0
 1099              		.cfi_startproc
 1100              		@ args = 0, pretend = 0, frame = 0
 1101              		@ frame_needed = 0, uses_anonymous_args = 0
 1102              		@ link register save eliminated.
 689:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(VREFBUF->CSR, VREFBUF_CSR_ENVR);
 1103              		.loc 1 689 3 view .LVU190
 1104 0000 024A     		ldr	r2, .L100
 1105 0002 1368     		ldr	r3, [r2]
 1106 0004 23F00103 		bic	r3, r3, #1
 1107 0008 1360     		str	r3, [r2]
 690:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1108              		.loc 1 690 1 is_stmt 0 view .LVU191
 1109 000a 7047     		bx	lr
 1110              	.L101:
 1111              		.align	2
 1112              	.L100:
 1113 000c 30000140 		.word	1073807408
 1114              		.cfi_endproc
 1115              	.LFE354:
 1117              		.section	.text.HAL_SYSCFG_EnableIOSwitchBooster,"ax",%progbits
 1118              		.align	1
 1119              		.global	HAL_SYSCFG_EnableIOSwitchBooster
 1120              		.syntax unified
 1121              		.thumb
 1122              		.thumb_func
 1123              		.fpu fpv4-sp-d16
 1125              	HAL_SYSCFG_EnableIOSwitchBooster:
 1126              	.LFB355:
 691:../../..\CubeG4\src/stm32g4xx_hal.c **** #endif /* VREFBUF */
 692:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 693:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 694:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Enable the I/O analog switch voltage booster
 695:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 696:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 697:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 698:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_EnableIOSwitchBooster(void)
 699:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 1127              		.loc 1 699 1 is_stmt 1 view -0
 1128              		.cfi_startproc
 1129              		@ args = 0, pretend = 0, frame = 0
 1130              		@ frame_needed = 0, uses_anonymous_args = 0
 1131              		@ link register save eliminated.
 700:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_BOOSTEN);
 1132              		.loc 1 700 3 view .LVU193
 1133 0000 024A     		ldr	r2, .L103
 1134 0002 5368     		ldr	r3, [r2, #4]
 1135 0004 43F48073 		orr	r3, r3, #256
 1136 0008 5360     		str	r3, [r2, #4]
 701:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1137              		.loc 1 701 1 is_stmt 0 view .LVU194
 1138 000a 7047     		bx	lr
 1139              	.L104:
 1140              		.align	2
 1141              	.L103:
 1142 000c 00000140 		.word	1073807360
 1143              		.cfi_endproc
 1144              	.LFE355:
 1146              		.section	.text.HAL_SYSCFG_DisableIOSwitchBooster,"ax",%progbits
 1147              		.align	1
 1148              		.global	HAL_SYSCFG_DisableIOSwitchBooster
 1149              		.syntax unified
 1150              		.thumb
 1151              		.thumb_func
 1152              		.fpu fpv4-sp-d16
 1154              	HAL_SYSCFG_DisableIOSwitchBooster:
 1155              	.LFB356:
 702:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 703:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 704:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Disable the I/O analog switch voltage booster
 705:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 706:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 707:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 708:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_DisableIOSwitchBooster(void)
 709:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 1156              		.loc 1 709 1 is_stmt 1 view -0
 1157              		.cfi_startproc
 1158              		@ args = 0, pretend = 0, frame = 0
 1159              		@ frame_needed = 0, uses_anonymous_args = 0
 1160              		@ link register save eliminated.
 710:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_BOOSTEN);
 1161              		.loc 1 710 3 view .LVU196
 1162 0000 024A     		ldr	r2, .L106
 1163 0002 5368     		ldr	r3, [r2, #4]
 1164 0004 23F48073 		bic	r3, r3, #256
 1165 0008 5360     		str	r3, [r2, #4]
 711:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1166              		.loc 1 711 1 is_stmt 0 view .LVU197
 1167 000a 7047     		bx	lr
 1168              	.L107:
 1169              		.align	2
 1170              	.L106:
 1171 000c 00000140 		.word	1073807360
 1172              		.cfi_endproc
 1173              	.LFE356:
 1175              		.section	.text.HAL_SYSCFG_EnableIOSwitchVDD,"ax",%progbits
 1176              		.align	1
 1177              		.global	HAL_SYSCFG_EnableIOSwitchVDD
 1178              		.syntax unified
 1179              		.thumb
 1180              		.thumb_func
 1181              		.fpu fpv4-sp-d16
 1183              	HAL_SYSCFG_EnableIOSwitchVDD:
 1184              	.LFB357:
 712:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 713:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 714:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Enable the I/O analog switch voltage by VDD
 715:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 716:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 717:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 718:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_EnableIOSwitchVDD(void)
 719:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 1185              		.loc 1 719 1 is_stmt 1 view -0
 1186              		.cfi_startproc
 1187              		@ args = 0, pretend = 0, frame = 0
 1188              		@ frame_needed = 0, uses_anonymous_args = 0
 1189              		@ link register save eliminated.
 720:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_ANASWVDD);
 1190              		.loc 1 720 3 view .LVU199
 1191 0000 024A     		ldr	r2, .L109
 1192 0002 5368     		ldr	r3, [r2, #4]
 1193 0004 43F40073 		orr	r3, r3, #512
 1194 0008 5360     		str	r3, [r2, #4]
 721:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1195              		.loc 1 721 1 is_stmt 0 view .LVU200
 1196 000a 7047     		bx	lr
 1197              	.L110:
 1198              		.align	2
 1199              	.L109:
 1200 000c 00000140 		.word	1073807360
 1201              		.cfi_endproc
 1202              	.LFE357:
 1204              		.section	.text.HAL_SYSCFG_DisableIOSwitchVDD,"ax",%progbits
 1205              		.align	1
 1206              		.global	HAL_SYSCFG_DisableIOSwitchVDD
 1207              		.syntax unified
 1208              		.thumb
 1209              		.thumb_func
 1210              		.fpu fpv4-sp-d16
 1212              	HAL_SYSCFG_DisableIOSwitchVDD:
 1213              	.LFB358:
 722:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 723:../../..\CubeG4\src/stm32g4xx_hal.c **** /**
 724:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @brief  Disable the I/O analog switch voltage by VDD
 725:../../..\CubeG4\src/stm32g4xx_hal.c ****   *
 726:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 727:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 728:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_DisableIOSwitchVDD(void)
 729:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 1214              		.loc 1 729 1 is_stmt 1 view -0
 1215              		.cfi_startproc
 1216              		@ args = 0, pretend = 0, frame = 0
 1217              		@ frame_needed = 0, uses_anonymous_args = 0
 1218              		@ link register save eliminated.
 730:../../..\CubeG4\src/stm32g4xx_hal.c ****   CLEAR_BIT(SYSCFG->CFGR1, SYSCFG_CFGR1_ANASWVDD);
 1219              		.loc 1 730 3 view .LVU202
 1220 0000 024A     		ldr	r2, .L112
 1221 0002 5368     		ldr	r3, [r2, #4]
 1222 0004 23F40073 		bic	r3, r3, #512
 1223 0008 5360     		str	r3, [r2, #4]
 731:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1224              		.loc 1 731 1 is_stmt 0 view .LVU203
 1225 000a 7047     		bx	lr
 1226              	.L113:
 1227              		.align	2
 1228              	.L112:
 1229 000c 00000140 		.word	1073807360
 1230              		.cfi_endproc
 1231              	.LFE358:
 1233              		.section	.text.HAL_SYSCFG_CCMSRAM_WriteProtectionEnable,"ax",%progbits
 1234              		.align	1
 1235              		.global	HAL_SYSCFG_CCMSRAM_WriteProtectionEnable
 1236              		.syntax unified
 1237              		.thumb
 1238              		.thumb_func
 1239              		.fpu fpv4-sp-d16
 1241              	HAL_SYSCFG_CCMSRAM_WriteProtectionEnable:
 1242              	.LVL36:
 1243              	.LFB359:
 732:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 733:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 734:../../..\CubeG4\src/stm32g4xx_hal.c **** /** @brief  CCMSRAM page write protection enable
 735:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @param Page: This parameter is a long 32bit value and can be a value of @ref SYSCFG_CCMSRAMWRP
 736:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @note   write protection can only be disabled by a system reset
 737:../../..\CubeG4\src/stm32g4xx_hal.c ****   * @retval None
 738:../../..\CubeG4\src/stm32g4xx_hal.c ****   */
 739:../../..\CubeG4\src/stm32g4xx_hal.c **** void HAL_SYSCFG_CCMSRAM_WriteProtectionEnable(uint32_t Page)
 740:../../..\CubeG4\src/stm32g4xx_hal.c **** {
 1244              		.loc 1 740 1 is_stmt 1 view -0
 1245              		.cfi_startproc
 1246              		@ args = 0, pretend = 0, frame = 0
 1247              		@ frame_needed = 0, uses_anonymous_args = 0
 1248              		@ link register save eliminated.
 741:../../..\CubeG4\src/stm32g4xx_hal.c ****   assert_param(IS_SYSCFG_CCMSRAMWRP_PAGE(Page));
 1249              		.loc 1 741 3 view .LVU205
 742:../../..\CubeG4\src/stm32g4xx_hal.c **** 
 743:../../..\CubeG4\src/stm32g4xx_hal.c ****   SET_BIT(SYSCFG->SWPR, (uint32_t)(Page));
 1250              		.loc 1 743 3 view .LVU206
 1251 0000 024A     		ldr	r2, .L115
 1252 0002 136A     		ldr	r3, [r2, #32]
 1253 0004 1843     		orrs	r0, r0, r3
 1254              	.LVL37:
 1255              		.loc 1 743 3 is_stmt 0 view .LVU207
 1256 0006 1062     		str	r0, [r2, #32]
 744:../../..\CubeG4\src/stm32g4xx_hal.c **** }
 1257              		.loc 1 744 1 view .LVU208
 1258 0008 7047     		bx	lr
 1259              	.L116:
 1260 000a 00BF     		.align	2
 1261              	.L115:
 1262 000c 00000140 		.word	1073807360
 1263              		.cfi_endproc
 1264              	.LFE359:
 1266              		.global	uwTickFreq
 1267              		.global	uwTickPrio
 1268              		.comm	uwTick,4,4
 1269              		.section	.data.uwTickFreq,"aw"
 1270              		.align	2
 1271              		.set	.LANCHOR0,. + 0
 1274              	uwTickFreq:
 1275 0000 01000000 		.word	1
 1276              		.section	.data.uwTickPrio,"aw"
 1277              		.align	2
 1278              		.set	.LANCHOR1,. + 0
 1281              	uwTickPrio:
 1282 0000 10000000 		.word	16
 1283              		.text
 1284              	.Letext0:
 1285              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1286              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1287              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 1288              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 1289              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 1290              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 1291              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 1292              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
 1293              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_cortex.h"
