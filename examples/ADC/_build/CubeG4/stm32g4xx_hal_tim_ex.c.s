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
  13              		.file	"stm32g4xx_hal_tim_ex.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.TIM_CCxNChannelCmd,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	TIM_CCxNChannelCmd:
  26              	.LVL0:
  27              	.LFB390:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_tim_ex.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @file    stm32g4xx_hal_tim_ex.c
   4:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief   TIM HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          functionalities of the Timer Extended peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Time Hall Sensor Interface Initialization
   9:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Time Hall Sensor Interface Start
  10:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Time Complementary signal break and dead time configuration
  11:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Time Master and Slave synchronization configuration
  12:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Time Output Compare/PWM Channel Configuration (for channels 5 and 6)
  13:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Time OCRef clear configuration
  14:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Timer remapping capabilities configuration
  15:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           + Timer encoder index configuration
  16:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   @verbatim
  17:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
  18:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                       ##### TIMER Extended features #####
  19:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
  20:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
  21:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     The Timer Extended features include:
  22:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (#) Complementary outputs with programmable dead-time for :
  23:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         (++) Output Compare
  24:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         (++) PWM generation (Edge and Center-aligned Mode)
  25:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         (++) One-pulse mode output
  26:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (#) Synchronization circuit to control the timer with external signals and to
  27:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         interconnect several timers together.
  28:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (#) Break input to put the timer output signals in reset state or in a known state.
  29:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (#) Supports incremental (quadrature) encoder and hall-sensor circuitry for
  30:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         positioning purposes
  31:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (#) In case of Pulse on compare, configure pulse length and delay
  32:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (#) Encoder index configuration
  33:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  34:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             ##### How to use this driver #####
  35:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
  36:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     [..]
  37:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****      (#) Initialize the TIM low level resources by implementing the following functions
  38:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****          depending on the selected feature:
  39:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****            (++) Hall Sensor output : HAL_TIMEx_HallSensor_MspInit()
  40:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  41:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****      (#) Initialize the TIM low level resources :
  42:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         (##) Enable the TIM interface clock using __HAL_RCC_TIMx_CLK_ENABLE();
  43:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         (##) TIM pins configuration
  44:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             (+++) Enable the clock for the TIM GPIOs using the following function:
  45:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****               __HAL_RCC_GPIOx_CLK_ENABLE();
  46:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             (+++) Configure these TIM pins in Alternate function mode using HAL_GPIO_Init();
  47:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  48:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****      (#) The external Clock can be configured, if needed (the default clock is the
  49:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****          internal clock from the APBx), using the following function:
  50:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****          HAL_TIM_ConfigClockSource, the clock configuration should be done before
  51:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****          any start function.
  52:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  53:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****      (#) Configure the TIM in the desired functioning mode using one of the
  54:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****          initialization function of this driver:
  55:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (++) HAL_TIMEx_HallSensor_Init() and HAL_TIMEx_ConfigCommutEvent(): to use the
  56:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                Timer Hall Sensor Interface and the commutation event with the corresponding
  57:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                Interrupt and DMA request if needed (Note that One Timer is used to interface
  58:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                with the Hall sensor Interface and another Timer should be used to use
  59:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                the commutation event).
  60:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****      (#) In case of Pulse On Compare:
  61:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****            (++) HAL_TIMEx_OC_ConfigPulseOnCompare(): to configure pulse width and prescaler
  62:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  63:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  64:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****      (#) Activate the TIM peripheral using one of the start functions:
  65:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****            (++) Complementary Output Compare : HAL_TIMEx_OCN_Start(), HAL_TIMEx_OCN_Start_DMA(), HA
  66:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****            (++) Complementary PWM generation : HAL_TIMEx_PWMN_Start(), HAL_TIMEx_PWMN_Start_DMA(), 
  67:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****            (++) Complementary One-pulse mode output : HAL_TIMEx_OnePulseN_Start(), HAL_TIMEx_OnePul
  68:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****            (++) Hall Sensor output : HAL_TIMEx_HallSensor_Start(), HAL_TIMEx_HallSensor_Start_DMA()
  69:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  70:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   @endverbatim
  71:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ******************************************************************************
  72:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @attention
  73:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
  74:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  75:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * All rights reserved.</center></h2>
  76:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
  77:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  78:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * the "License"; You may not use this file except in compliance with the
  79:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * License. You may obtain a copy of the License at:
  80:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *                        opensource.org/licenses/BSD-3-Clause
  81:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
  82:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ******************************************************************************
  83:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
  84:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  85:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Includes ------------------------------------------------------------------*/
  86:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #include "stm32g4xx_hal.h"
  87:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  88:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @addtogroup STM32G4xx_HAL_Driver
  89:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
  90:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
  91:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  92:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx TIMEx
  93:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief TIM Extended HAL module driver
  94:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
  95:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
  96:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  97:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #ifdef HAL_TIM_MODULE_ENABLED
  98:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  99:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Private typedef -----------------------------------------------------------*/
 100:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Private define ------------------------------------------------------------*/
 101:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Private constants ---------------------------------------------------------*/
 102:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Private_Constants TIM Extended Private Constants
 103:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
 104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 105:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Timeout for break input rearm */
 106:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #define TIM_BREAKINPUT_REARM_TIMEOUT    5UL /* 5 milliseconds */
 107:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
 109:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 110:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* End of private constants --------------------------------------------------*/
 111:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 112:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Private macro -------------------------------------------------------------*/
 113:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Private variables ---------------------------------------------------------*/
 114:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Private function prototypes -----------------------------------------------*/
 115:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** static void TIM_CCxNChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelNState);
 116:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 117:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Exported functions --------------------------------------------------------*/
 118:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions TIM Extended Exported Functions
 119:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
 120:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 122:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions_Group1 Extended Timer Hall Sensor functions
 123:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief    Timer Hall Sensor functions
 124:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
 125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @verbatim
 126:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
 127:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                       ##### Timer Hall Sensor functions #####
 128:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
 129:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
 130:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     This section provides functions allowing to:
 131:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Initialize and configure TIM HAL Sensor.
 132:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) De-initialize TIM HAL Sensor.
 133:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Hall Sensor Interface.
 134:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Hall Sensor Interface.
 135:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Hall Sensor Interface and enable interrupts.
 136:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Hall Sensor Interface and disable interrupts.
 137:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Hall Sensor Interface and enable DMA transfers.
 138:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Hall Sensor Interface and disable DMA transfers.
 139:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 140:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @endverbatim
 141:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
 142:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 143:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 144:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Initializes the TIM Hall Sensor Interface and initialize the associated handle.
 145:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 146:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  sConfig TIM Hall Sensor configuration structure
 147:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 148:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 149:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_Init(TIM_HandleTypeDef *htim, TIM_HallSensor_InitTypeDef *sC
 150:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 151:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_OC_InitTypeDef OC_Config;
 152:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 153:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the TIM handle allocation */
 154:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (htim == NULL)
 155:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 156:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     return HAL_ERROR;
 157:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 158:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 159:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 160:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
 161:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
 162:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
 163:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
 164:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_IC_POLARITY(sConfig->IC1Polarity));
 165:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC1Prescaler));
 166:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_IC_FILTER(sConfig->IC1Filter));
 167:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 168:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (htim->State == HAL_TIM_STATE_RESET)
 169:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 170:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Allocate lock resource and initialize it */
 171:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Lock = HAL_UNLOCKED;
 172:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 173:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
 174:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Reset interrupt callbacks to legacy week callbacks */
 175:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     TIM_ResetCallback(htim);
 176:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 177:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     if (htim->HallSensor_MspInitCallback == NULL)
 178:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 179:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->HallSensor_MspInitCallback = HAL_TIMEx_HallSensor_MspInit;
 180:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 181:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Init the low level hardware : GPIO, CLOCK, NVIC */
 182:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->HallSensor_MspInitCallback(htim);
 183:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #else
 184:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
 185:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     HAL_TIMEx_HallSensor_MspInit(htim);
 186:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
 187:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 188:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 189:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the TIM state */
 190:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_BUSY;
 191:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 192:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Configure the Time base in the Encoder Mode */
 193:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_Base_SetConfig(htim->Instance, &htim->Init);
 194:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 195:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Configure the Channel 1 as Input Channel to interface with the three Outputs of the  Hall sens
 196:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_TI1_SetConfig(htim->Instance, sConfig->IC1Polarity, TIM_ICSELECTION_TRC, sConfig->IC1Filter);
 197:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 198:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the IC1PSC Bits */
 199:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
 200:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the IC1PSC value */
 201:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CCMR1 |= sConfig->IC1Prescaler;
 202:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 203:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Hall sensor interface (XOR function of the three inputs) */
 204:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_CR2_TI1S;
 205:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 206:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the TIM_TS_TI1F_ED signal as Input trigger for the TIM */
 207:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR &= ~TIM_SMCR_TS;
 208:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR |= TIM_TS_TI1F_ED;
 209:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 210:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Use the TIM_TS_TI1F_ED signal to reset the TIM counter each edge detection */
 211:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR &= ~TIM_SMCR_SMS;
 212:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR |= TIM_SLAVEMODE_RESET;
 213:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 214:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Program channel 2 in PWM 2 mode with the desired Commutation_Delay*/
 215:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCFastMode = TIM_OCFAST_DISABLE;
 216:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCIdleState = TIM_OCIDLESTATE_RESET;
 217:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCMode = TIM_OCMODE_PWM2;
 218:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCNIdleState = TIM_OCNIDLESTATE_RESET;
 219:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCNPolarity = TIM_OCNPOLARITY_HIGH;
 220:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCPolarity = TIM_OCPOLARITY_HIGH;
 221:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.Pulse = sConfig->Commutation_Delay;
 222:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 223:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_OC2_SetConfig(htim->Instance, &OC_Config);
 224:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 225:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select OC2REF as trigger output on TRGO: write the MMS bits in the TIMx_CR2
 226:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     register to 101 */
 227:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 &= ~TIM_CR2_MMS;
 228:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_TRGO_OC2REF;
 229:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 230:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Initialize the TIM state*/
 231:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
 232:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 233:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 234:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 235:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 236:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 237:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  DeInitializes the TIM Hall Sensor interface
 238:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 239:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 240:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 241:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_DeInit(TIM_HandleTypeDef *htim)
 242:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 243:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 244:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INSTANCE(htim->Instance));
 245:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 246:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_BUSY;
 247:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 248:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the TIM Peripheral Clock */
 249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
 250:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 251:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
 252:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (htim->HallSensor_MspDeInitCallback == NULL)
 253:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 254:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->HallSensor_MspDeInitCallback = HAL_TIMEx_HallSensor_MspDeInit;
 255:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 256:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* DeInit the low level hardware */
 257:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->HallSensor_MspDeInitCallback(htim);
 258:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #else
 259:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
 260:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   HAL_TIMEx_HallSensor_MspDeInit(htim);
 261:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
 262:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 263:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change TIM state */
 264:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_RESET;
 265:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 266:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Release Lock */
 267:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
 268:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 269:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 270:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 271:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 272:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 273:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Initializes the TIM Hall Sensor MSP.
 274:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 275:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
 276:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 277:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_HallSensor_MspInit(TIM_HandleTypeDef *htim)
 278:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 279:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
 280:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
 281:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 282:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 283:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_HallSensor_MspInit could be implemented in the user file
 284:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
 285:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 286:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 287:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 288:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  DeInitializes TIM Hall Sensor MSP.
 289:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 290:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
 291:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 292:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_HallSensor_MspDeInit(TIM_HandleTypeDef *htim)
 293:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 294:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
 295:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
 296:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 297:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 298:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_HallSensor_MspDeInit could be implemented in the user file
 299:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
 300:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 301:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 302:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 303:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM Hall Sensor Interface.
 304:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 305:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 306:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 307:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start(TIM_HandleTypeDef *htim)
 308:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 309:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 310:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 311:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 312:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
 313:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 314:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Input Capture channel 1
 315:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, T
 316:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
 317:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 318:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
 319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 320:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 321:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 322:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
 323:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 324:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 325:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 326:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 327:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 328:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 329:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 330:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM Hall sensor Interface.
 331:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 332:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 333:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 334:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop(TIM_HandleTypeDef *htim)
 335:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 336:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 337:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
 338:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 339:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Input Capture channels 1, 2 and 3
 340:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, T
 341:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
 342:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 343:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 344:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
 345:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 346:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 347:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 348:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 349:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 350:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 351:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM Hall Sensor Interface in interrupt mode.
 352:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 353:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 354:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 355:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_IT(TIM_HandleTypeDef *htim)
 356:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 357:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 358:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 359:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 360:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
 361:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 362:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the capture compare Interrupts 1 event */
 363:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
 364:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 365:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Input Capture channel 1
 366:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, T
 367:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
 368:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 369:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
 370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 371:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 372:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 373:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
 374:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 375:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 376:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 377:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 378:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 379:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 380:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 381:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM Hall Sensor Interface in interrupt mode.
 382:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 383:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 384:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 385:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_IT(TIM_HandleTypeDef *htim)
 386:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 387:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 388:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
 389:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 390:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Input Capture channel 1
 391:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, T
 392:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
 393:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 394:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the capture compare Interrupts event */
 395:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
 396:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 397:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 398:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
 399:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 400:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 401:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 402:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 403:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 404:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 405:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM Hall Sensor Interface in DMA mode.
 406:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 407:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  pData The destination Buffer address.
 408:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Length The length of data to be transferred from TIM peripheral to memory.
 409:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 410:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 411:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t
 412:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 413:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 414:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 415:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 416:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
 417:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (htim->State == HAL_TIM_STATE_BUSY)
 419:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 420:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     return HAL_BUSY;
 421:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 422:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   else if (htim->State == HAL_TIM_STATE_READY)
 423:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 424:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     if (((uint32_t)pData == 0U) && (Length > 0U))
 425:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       return HAL_ERROR;
 427:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 428:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     else
 429:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 430:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->State = HAL_TIM_STATE_BUSY;
 431:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 432:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 433:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   else
 434:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 435:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* nothing to do */
 436:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 437:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Input Capture channel 1
 438:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, T
 439:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
 440:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 441:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA Input Capture 1 Callbacks */
 442:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
 443:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
 444:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA error callback */
 445:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
 446:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 447:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the DMA channel for Capture 1*/
 448:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData
 449:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 450:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     return HAL_ERROR;
 451:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 452:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the capture compare 1 Interrupt */
 453:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
 454:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 455:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
 456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 457:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 458:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 459:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
 460:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 461:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 462:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 463:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 464:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 465:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 466:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 467:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM Hall Sensor Interface in DMA mode.
 468:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor Interface handle
 469:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 470:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 471:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_DMA(TIM_HandleTypeDef *htim)
 472:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 473:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 474:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
 475:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 476:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Input Capture channel 1
 477:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, T
 478:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
 479:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 481:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the capture compare Interrupts 1 event */
 482:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
 483:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 484:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
 485:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
 487:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 488:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 489:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 490:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 491:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 492:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 493:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
 494:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 495:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 496:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions_Group2 Extended Timer Complementary Output Compare functions
 497:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *  @brief   Timer Complementary Output Compare functions
 498:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
 499:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @verbatim
 500:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
 501:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****               ##### Timer Complementary Output Compare functions #####
 502:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
 503:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
 504:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     This section provides functions allowing to:
 505:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary Output Compare/PWM.
 506:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary Output Compare/PWM.
 507:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary Output Compare/PWM and enable interrupts.
 508:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary Output Compare/PWM and disable interrupts.
 509:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary Output Compare/PWM and enable DMA transfers.
 510:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary Output Compare/PWM and disable DMA transfers.
 511:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 512:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @endverbatim
 513:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
 514:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 515:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 516:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 517:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM Output Compare signal generation on the complementary
 518:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         output.
 519:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Output Compare handle
 520:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be enabled
 521:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
 522:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
 523:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
 524:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
 525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
 526:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 527:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 528:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OCN_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
 529:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 530:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 532:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 533:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
 534:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 535:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Capture compare channel N */
 536:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
 537:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 538:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
 539:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
 540:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 541:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
 542:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 544:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 545:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
 546:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 547:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 548:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 549:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 550:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 551:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 552:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 553:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM Output Compare signal generation on the complementary
 554:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         output.
 555:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
 556:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be disabled
 557:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
 558:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
 559:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
 560:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
 561:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
 562:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 563:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 564:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OCN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
 565:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 566:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 567:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
 568:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 569:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Capture compare channel N */
 570:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
 571:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 572:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
 573:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
 574:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 575:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
 577:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 578:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 579:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 580:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 581:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 582:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 583:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM Output Compare signal generation in interrupt mode
 584:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         on the complementary output.
 585:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM OC handle
 586:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be enabled
 587:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
 588:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
 589:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
 590:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
 591:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
 592:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 593:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 594:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OCN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
 595:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 596:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 597:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 598:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 599:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
 600:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 601:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
 602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 603:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
 604:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 605:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare interrupt */
 606:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
 607:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 608:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 609:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 610:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
 611:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 612:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare interrupt */
 613:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
 614:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 615:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 616:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 617:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
 618:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 619:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare interrupt */
 620:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
 621:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 622:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 623:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 624:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 625:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
 626:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 627:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare interrupt */
 628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
 629:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 630:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 631:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 632:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
 633:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 634:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 635:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 636:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the TIM Break interrupt */
 637:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_IT(htim, TIM_IT_BREAK);
 638:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 639:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Capture compare channel N */
 640:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
 641:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 642:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
 643:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
 644:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 645:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
 646:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 647:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 648:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 649:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
 650:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 651:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 652:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 653:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 654:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 655:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 656:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 657:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM Output Compare signal generation in interrupt mode
 658:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         on the complementary output.
 659:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Output Compare handle
 660:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be disabled
 661:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
 662:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
 663:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
 664:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
 665:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
 666:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 667:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 668:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
 669:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 670:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpccer;
 671:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 672:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
 673:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 674:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
 675:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 676:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
 677:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 678:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare interrupt */
 679:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
 680:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 681:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 682:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 683:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
 684:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 685:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare interrupt */
 686:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
 687:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 689:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 690:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
 691:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 692:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare interrupt */
 693:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
 694:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 695:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 696:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 697:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
 698:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 699:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare interrupt */
 700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
 701:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 702:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 703:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 704:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
 705:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 706:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 707:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 708:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Capture compare channel N */
 709:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
 710:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 711:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the TIM Break interrupt (only if no more channel is active) */
 712:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpccer = htim->Instance->CCER;
 713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((tmpccer & (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE  | TIM_CCER_CC4NE)) == (uint32_t
 714:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 715:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_DISABLE_IT(htim, TIM_IT_BREAK);
 716:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 717:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 718:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
 719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
 720:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 721:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
 723:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 724:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 725:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 726:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 727:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 728:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 729:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM Output Compare signal generation in DMA mode
 730:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         on the complementary output.
 731:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Output Compare handle
 732:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be enabled
 733:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
 734:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
 735:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
 736:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
 737:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
 738:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  pData The source Buffer address.
 739:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Length The length of data to be transferred from memory to TIM peripheral
 740:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 741:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 742:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OCN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pDat
 743:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 744:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 745:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 746:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 747:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
 748:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (htim->State == HAL_TIM_STATE_BUSY)
 750:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 751:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     return HAL_BUSY;
 752:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 753:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   else if (htim->State == HAL_TIM_STATE_READY)
 754:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     if (((uint32_t)pData == 0U) && (Length > 0U))
 756:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 757:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       return HAL_ERROR;
 758:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 759:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     else
 760:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 761:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->State = HAL_TIM_STATE_BUSY;
 762:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 763:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 764:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   else
 765:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 766:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* nothing to do  */
 767:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 768:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 769:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
 770:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 771:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
 772:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 773:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
 774:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
 775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 776:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 777:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
 778:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
 779:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 780:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
 781:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->
 782:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 783:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
 784:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 785:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare DMA request */
 786:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
 787:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 788:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 789:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 790:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
 791:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 792:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
 793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
 794:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 795:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 796:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
 797:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
 798:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 799:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
 800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->
 801:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 802:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
 803:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 804:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare DMA request */
 805:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
 806:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 807:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 808:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 809:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
 810:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 811:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
 812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
 813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 814:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 815:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
 816:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
 817:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 818:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
 819:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->
 820:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 821:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
 822:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 823:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare DMA request */
 824:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
 825:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 826:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 827:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 828:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
 829:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 830:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
 831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
 832:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 833:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 834:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
 835:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
 836:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 837:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
 838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->
 839:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 840:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
 841:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 842:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Output Compare DMA request */
 843:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
 844:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 845:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 846:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 847:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
 848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 849:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 850:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 851:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Capture compare channel N */
 852:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
 853:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 854:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
 855:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
 856:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 857:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
 858:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 861:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
 862:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 863:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 864:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 865:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 866:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 867:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 868:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 869:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM Output Compare signal generation in DMA mode
 870:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         on the complementary output.
 871:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Output Compare handle
 872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be disabled
 873:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
 874:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
 875:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
 876:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
 877:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
 878:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 879:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 880:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
 881:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 882:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
 884:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 885:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
 886:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 887:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
 888:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 889:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare DMA request */
 890:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
 891:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
 892:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 893:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 894:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 895:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
 896:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 897:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare DMA request */
 898:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
 899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
 900:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 901:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 902:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 903:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
 904:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 905:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare DMA request */
 906:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
 907:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
 908:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 909:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 910:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 911:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
 912:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 913:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Output Compare interrupt */
 914:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
 915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
 916:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 917:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 918:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 919:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
 920:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 921:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 922:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 923:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Capture compare channel N */
 924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
 925:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 926:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
 927:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
 928:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 929:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
 931:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 932:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the htim state */
 933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
 934:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 935:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
 936:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 937:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 938:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 940:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
 941:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 942:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 943:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions_Group3 Extended Timer Complementary PWM functions
 944:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief    Timer Complementary PWM functions
 945:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
 946:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @verbatim
 947:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
 948:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                  ##### Timer Complementary PWM functions #####
 949:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
 950:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
 951:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     This section provides functions allowing to:
 952:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary PWM.
 953:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary PWM.
 954:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary PWM and enable interrupts.
 955:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary PWM and disable interrupts.
 956:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary PWM and enable DMA transfers.
 957:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary PWM and disable DMA transfers.
 958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary Input Capture measurement.
 959:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary Input Capture.
 960:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary Input Capture and enable interrupts.
 961:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary Input Capture and disable interrupts.
 962:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary Input Capture and enable DMA transfers.
 963:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary Input Capture and disable DMA transfers.
 964:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary One Pulse generation.
 965:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary One Pulse.
 966:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary One Pulse and enable interrupts.
 967:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary One Pulse and disable interrupts.
 968:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 969:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @endverbatim
 970:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
 971:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 972:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 973:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
 974:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the PWM signal generation on the complementary output.
 975:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
 976:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be enabled
 977:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
 978:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
 979:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
 980:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
 981:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
 982:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
 983:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
 984:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_PWMN_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
 985:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
 986:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 987:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 988:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 989:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
 990:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 991:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the complementary PWM output  */
 992:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
 993:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 994:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
 995:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
 996:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 997:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
 998:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
 999:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
1000:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1001:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
1002:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1003:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1004:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1005:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1006:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1008:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1009:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the PWM signal generation on the complementary output.
1010:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1011:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be disabled
1012:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1013:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1014:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1015:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
1016:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
1017:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1018:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1019:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
1020:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1021:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1022:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
1023:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1024:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the complementary PWM output  */
1025:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
1026:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1027:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
1028:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
1029:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1030:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
1031:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
1032:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1033:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1034:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1035:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1036:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1037:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1038:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the PWM signal generation in interrupt mode on the
1039:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         complementary output.
1040:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1041:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be disabled
1042:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1043:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1044:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1045:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
1046:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
1047:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1048:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1049:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
1050:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1051:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
1052:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1053:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1054:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
1055:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1056:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
1057:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1058:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
1059:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1060:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 1 interrupt */
1061:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
1062:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1063:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1064:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1065:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
1066:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1067:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 2 interrupt */
1068:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
1069:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1070:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1071:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1072:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
1073:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1074:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 3 interrupt */
1075:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
1076:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1077:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1078:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1079:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
1080:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1081:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 4 interrupt */
1082:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
1083:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1084:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1085:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1086:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
1087:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1088:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1089:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1090:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the TIM Break interrupt */
1091:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_IT(htim, TIM_IT_BREAK);
1092:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1093:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the complementary PWM output  */
1094:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
1095:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1096:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
1097:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
1098:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1099:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
1100:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
1101:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
1102:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1103:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
1104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1105:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1106:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1107:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1109:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1110:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1111:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the PWM signal generation in interrupt mode on the
1112:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         complementary output.
1113:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1114:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be disabled
1115:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1116:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1117:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1118:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
1119:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
1120:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1122:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
1123:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1124:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpccer;
1125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1126:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1127:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
1128:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1129:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
1130:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1131:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
1132:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1133:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 1 interrupt */
1134:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
1135:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1136:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1137:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1138:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
1139:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1140:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 2 interrupt */
1141:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
1142:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1143:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1144:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1145:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
1146:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1147:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 3 interrupt */
1148:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
1149:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1150:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1151:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1152:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
1153:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1154:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 4 interrupt */
1155:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
1156:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1157:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1158:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1159:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
1160:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1161:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1162:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1163:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the complementary PWM output  */
1164:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
1165:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1166:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the TIM Break interrupt (only if no more channel is active) */
1167:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpccer = htim->Instance->CCER;
1168:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((tmpccer & (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE  | TIM_CCER_CC4NE)) == (uint32_t
1169:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1170:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_DISABLE_IT(htim, TIM_IT_BREAK);
1171:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1172:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1173:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
1174:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
1175:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1176:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
1177:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
1178:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1179:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1180:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1181:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1182:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1183:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1184:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM PWM signal generation in DMA mode on the
1185:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         complementary output
1186:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1187:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be enabled
1188:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1189:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1190:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1191:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
1192:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
1193:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  pData The source Buffer address.
1194:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Length The length of data to be transferred from memory to TIM peripheral
1195:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1196:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1197:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pDa
1198:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1199:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
1200:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1201:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1202:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
1203:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1204:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (htim->State == HAL_TIM_STATE_BUSY)
1205:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1206:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     return HAL_BUSY;
1207:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1208:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   else if (htim->State == HAL_TIM_STATE_READY)
1209:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1210:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     if (((uint32_t)pData == 0U) && (Length > 0U))
1211:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1212:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       return HAL_ERROR;
1213:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1214:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     else
1215:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1216:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->State = HAL_TIM_STATE_BUSY;
1217:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1218:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1219:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   else
1220:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1221:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* nothing to do */
1222:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1223:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
1224:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1225:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
1226:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1227:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
1228:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
1229:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
1230:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1231:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
1232:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
1233:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1234:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
1235:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->
1236:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
1237:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
1238:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
1239:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 1 DMA request */
1240:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
1241:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1242:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1243:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1244:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
1245:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1246:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
1247:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
1248:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
1249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1250:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
1251:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
1252:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1253:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
1254:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->
1255:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
1256:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
1257:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
1258:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 2 DMA request */
1259:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
1260:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1261:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1262:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1263:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
1264:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1265:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
1266:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
1267:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
1268:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1269:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
1270:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
1271:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1272:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
1273:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->
1274:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
1275:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
1276:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
1277:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 3 DMA request */
1278:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
1279:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1280:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1281:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1282:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
1283:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1284:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA compare callbacks */
1285:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
1286:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
1287:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1288:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the DMA error callback */
1289:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
1290:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1291:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the DMA channel */
1292:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->
1293:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
1294:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_ERROR;
1295:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
1296:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the TIM Capture/Compare 4 DMA request */
1297:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
1298:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1299:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1300:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1301:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
1302:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1303:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1304:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1305:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the complementary PWM output  */
1306:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
1307:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1308:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
1309:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
1310:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1311:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger 
1312:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
1313:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
1314:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1315:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     __HAL_TIM_ENABLE(htim);
1316:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1317:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1318:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1320:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1321:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1322:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1323:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM PWM signal generation in DMA mode on the complementary
1324:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         output
1325:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1326:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel TIM Channel to be disabled
1327:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1328:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1329:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1330:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
1331:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
1332:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1333:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1334:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
1335:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1336:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1337:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
1338:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1339:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
1340:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1341:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
1342:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1343:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 1 DMA request */
1344:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
1345:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
1346:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1347:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1348:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1349:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
1350:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1351:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 2 DMA request */
1352:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
1353:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
1354:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1355:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1356:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1357:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
1358:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1359:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 3 DMA request */
1360:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
1361:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
1362:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1363:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1364:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1365:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
1366:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1367:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Disable the TIM Capture/Compare 4 DMA request */
1368:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
1369:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
1370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1371:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1372:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1373:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
1374:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
1375:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1376:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1377:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the complementary PWM output */
1378:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
1379:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1380:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
1381:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
1382:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1383:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
1384:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
1385:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1386:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the htim state */
1387:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
1388:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1389:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1390:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1391:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1392:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1393:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1394:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
1395:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1396:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1397:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions_Group4 Extended Timer Complementary One Pulse functions
1398:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief    Timer Complementary One Pulse functions
1399:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1400:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @verbatim
1401:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
1402:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                 ##### Timer Complementary One Pulse functions #####
1403:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
1404:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
1405:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     This section provides functions allowing to:
1406:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary One Pulse generation.
1407:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary One Pulse.
1408:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Start the Complementary One Pulse and enable interrupts.
1409:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Stop the Complementary One Pulse and disable interrupts.
1410:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1411:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @endverbatim
1412:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
1413:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1414:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1415:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1416:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM One Pulse signal generation on the complementary
1417:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         output.
1418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM One Pulse handle
1419:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  OutputChannel TIM Channel to be enabled
1420:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1421:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1422:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1423:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1424:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1425:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
1426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1427:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1428:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
1429:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1430:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the complementary One Pulse output */
1431:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_ENABLE);
1432:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1433:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
1434:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
1435:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1436:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1437:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1438:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1439:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1440:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1441:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM One Pulse signal generation on the complementary
1442:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         output.
1443:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM One Pulse handle
1444:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  OutputChannel TIM Channel to be disabled
1445:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1446:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1447:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1448:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1449:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1450:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
1451:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1452:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1453:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1454:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
1455:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the complementary One Pulse output */
1457:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_DISABLE);
1458:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1459:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
1460:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
1461:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1462:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
1463:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
1464:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1465:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1466:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1467:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1468:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1469:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1470:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Starts the TIM One Pulse signal generation in interrupt mode on the
1471:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         complementary channel.
1472:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM One Pulse handle
1473:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  OutputChannel TIM Channel to be enabled
1474:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1475:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1476:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1477:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1478:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1479:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
1480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1481:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1482:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
1483:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1484:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the TIM Capture/Compare 1 interrupt */
1485:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
1486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1487:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the TIM Capture/Compare 2 interrupt */
1488:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
1489:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1490:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the complementary One Pulse output */
1491:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_ENABLE);
1492:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1493:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Main Output */
1494:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_ENABLE(htim);
1495:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1496:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1497:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1498:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1499:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1500:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1501:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Stops the TIM One Pulse signal generation in interrupt mode on the
1502:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         complementary channel.
1503:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM One Pulse handle
1504:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  OutputChannel TIM Channel to be disabled
1505:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1506:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
1507:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
1508:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1509:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1510:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
1511:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1512:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1513:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
1514:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1515:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the TIM Capture/Compare 1 interrupt */
1516:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
1517:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1518:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the TIM Capture/Compare 2 interrupt */
1519:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
1520:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1521:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the complementary One Pulse output */
1522:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_DISABLE);
1523:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1524:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Main Output */
1525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_MOE_DISABLE(htim);
1526:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1527:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
1528:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE(htim);
1529:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1530:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Return function status */
1531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1532:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1533:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1534:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1535:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
1536:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1537:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1538:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions_Group5 Extended Peripheral Control functions
1539:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief    Peripheral Control functions
1540:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1541:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @verbatim
1542:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
1543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     ##### Peripheral Control functions #####
1544:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
1545:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
1546:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     This section provides functions allowing to:
1547:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Configure the commutation event in case of use of the Hall sensor interface.
1548:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Configure Output channels for OC and PWM mode.
1549:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1550:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Configure Complementary channels, break features and dead time.
1551:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Configure Master synchronization.
1552:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Configure timer remapping capabilities.
1553:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Select timer input source.
1554:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Enable or disable channel grouping.
1555:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Configure Pulse on compare.
1556:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (+) Configure Encoder index.
1557:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1558:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @endverbatim
1559:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
1560:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1561:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1562:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1563:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configure the TIM commutation event sequence.
1564:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  This function is mandatory to use the commutation event in order to
1565:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        update the configuration at each commutation detection on the TRGI input of the Timer,
1566:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        the typical use of this feature is with the use of another Timer(interface Timer)
1567:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        configured in Hall sensor interface, this interface Timer will generate the
1568:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        commutation at its TRGO output (connected to Timer used in this function) each time
1569:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
1570:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1571:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall 
1572:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1573:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
1574:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
1575:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
1576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
1577:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR4: Internal trigger 4 selected   (*)
1578:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR5: Internal trigger 5 selected
1579:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR6: Internal trigger 6 selected
1580:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR7: Internal trigger 7 selected
1581:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR8: Internal trigger 8 selected
1582:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR9: Internal trigger 9 selected   (*)
1583:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR10: Internal trigger 10 selected
1584:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR11: Internal trigger 11 selected
1585:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_NONE: No trigger is needed
1586:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1587:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         (*)  Value not defined in all devices.
1588:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1589:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  CommutationSource the Commutation Event source
1590:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1591:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
1592:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG
1593:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1594:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1595:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
1596:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                               uint32_t  CommutationSource)
1597:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1598:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1599:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
1600:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_INSTANCE(htim->Instance, InputTrigger));
1601:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
1603:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1604:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if defined(TIM5) && defined(TIM20)
1605:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1606:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1607:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR4)  || (InputTrigger == TIM_TS_ITR5) ||
1608:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR6)  || (InputTrigger == TIM_TS_ITR7) ||
1609:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR8)  || (InputTrigger == TIM_TS_ITR9) ||
1610:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
1611:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #elif defined(TIM5)
1612:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1613:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1614:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR4)  || (InputTrigger == TIM_TS_ITR5) ||
1615:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR6)  || (InputTrigger == TIM_TS_ITR7) ||
1616:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR8)  || (InputTrigger == TIM_TS_ITR10) ||
1617:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR11))
1618:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #else
1619:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1620:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1621:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR5)  || (InputTrigger == TIM_TS_ITR6) ||
1622:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR7)  || (InputTrigger == TIM_TS_ITR8) ||
1623:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
1624:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* TIM5 && TIM20 */
1625:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1626:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Select the Input trigger */
1627:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR &= ~TIM_SMCR_TS;
1628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
1629:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1630:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1631:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Capture Compare preload feature */
1632:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_CR2_CCPC;
1633:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
1634:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
1635:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
1636:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1637:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable Commutation Interrupt */
1638:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_IT(htim, TIM_IT_COM);
1639:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1640:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable Commutation DMA request */
1641:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_COM);
1642:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1643:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
1644:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1645:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1646:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1647:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1648:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1649:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configure the TIM commutation event sequence with interrupt.
1650:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  This function is mandatory to use the commutation event in order to
1651:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        update the configuration at each commutation detection on the TRGI input of the Timer,
1652:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        the typical use of this feature is with the use of another Timer(interface Timer)
1653:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        configured in Hall sensor interface, this interface Timer will generate the
1654:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        commutation at its TRGO output (connected to Timer used in this function) each time
1655:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
1656:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1657:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall 
1658:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1659:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
1660:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
1661:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
1662:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
1663:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR4: Internal trigger 4 selected   (*)
1664:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR5: Internal trigger 5 selected
1665:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR6: Internal trigger 6 selected
1666:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR7: Internal trigger 7 selected
1667:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR8: Internal trigger 8 selected
1668:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR9: Internal trigger 9 selected   (*)
1669:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR10: Internal trigger 10 selected
1670:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR11: Internal trigger 11 selected
1671:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_NONE: No trigger is needed
1672:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1673:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         (*)  Value not defined in all devices.
1674:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1675:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  CommutationSource the Commutation Event source
1676:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1677:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
1678:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG
1679:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1680:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1681:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_IT(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
1682:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                                  uint32_t  CommutationSource)
1683:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1684:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1685:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
1686:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_INSTANCE(htim->Instance, InputTrigger));
1687:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
1689:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1690:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if defined(TIM5) && defined(TIM20)
1691:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1692:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1693:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR4)  || (InputTrigger == TIM_TS_ITR5) ||
1694:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR6)  || (InputTrigger == TIM_TS_ITR7) ||
1695:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR8)  || (InputTrigger == TIM_TS_ITR9) ||
1696:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
1697:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #elif defined(TIM5)
1698:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1699:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR4)  || (InputTrigger == TIM_TS_ITR5) ||
1701:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR6)  || (InputTrigger == TIM_TS_ITR7) ||
1702:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR8)  || (InputTrigger == TIM_TS_ITR10) ||
1703:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR11))
1704:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #else
1705:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1706:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1707:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR5)  || (InputTrigger == TIM_TS_ITR6) ||
1708:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR7)  || (InputTrigger == TIM_TS_ITR8) ||
1709:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
1710:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* TIM5 && TIM20 */
1711:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1712:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Select the Input trigger */
1713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR &= ~TIM_SMCR_TS;
1714:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
1715:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1716:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1717:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Capture Compare preload feature */
1718:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_CR2_CCPC;
1719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
1720:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
1721:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
1722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1723:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable Commutation DMA request */
1724:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_COM);
1725:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1726:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Commutation Interrupt */
1727:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_IT(htim, TIM_IT_COM);
1728:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1729:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
1730:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1731:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1732:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1733:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1734:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1735:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configure the TIM commutation event sequence with DMA.
1736:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  This function is mandatory to use the commutation event in order to
1737:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        update the configuration at each commutation detection on the TRGI input of the Timer,
1738:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        the typical use of this feature is with the use of another Timer(interface Timer)
1739:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        configured in Hall sensor interface, this interface Timer will generate the
1740:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        commutation at its TRGO output (connected to Timer used in this function) each time
1741:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
1742:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  The user should configure the DMA in his own software, in This function only the COMDE b
1743:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1744:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall 
1745:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1746:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
1747:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
1748:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
1749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
1750:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR4: Internal trigger 4 selected   (*)
1751:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR5: Internal trigger 5 selected
1752:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR6: Internal trigger 6 selected
1753:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR7: Internal trigger 7 selected
1754:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR8: Internal trigger 8 selected
1755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR9: Internal trigger 9 selected   (*)
1756:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR10: Internal trigger 10 selected
1757:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_ITR11: Internal trigger 11 selected
1758:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TS_NONE: No trigger is needed
1759:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1760:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         (*)  Value not defined in all devices.
1761:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
1762:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  CommutationSource the Commutation Event source
1763:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1764:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
1765:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG
1766:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1767:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1768:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_DMA(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
1769:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                                   uint32_t  CommutationSource)
1770:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1771:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1772:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
1773:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_INSTANCE(htim->Instance, InputTrigger));
1774:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
1776:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1777:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if defined(TIM5) && defined(TIM20)
1778:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1779:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1780:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR4)  || (InputTrigger == TIM_TS_ITR5) ||
1781:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR6)  || (InputTrigger == TIM_TS_ITR7) ||
1782:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR8)  || (InputTrigger == TIM_TS_ITR9) ||
1783:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
1784:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #elif defined(TIM5)
1785:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1786:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1787:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR4)  || (InputTrigger == TIM_TS_ITR5) ||
1788:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR6)  || (InputTrigger == TIM_TS_ITR7) ||
1789:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR8)  || (InputTrigger == TIM_TS_ITR10) ||
1790:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR11))
1791:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #else
1792:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((InputTrigger == TIM_TS_ITR0)  || (InputTrigger == TIM_TS_ITR1) ||
1793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
1794:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR5)  || (InputTrigger == TIM_TS_ITR6) ||
1795:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR7)  || (InputTrigger == TIM_TS_ITR8) ||
1796:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
1797:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* TIM5 && TIM20 */
1798:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1799:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Select the Input trigger */
1800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR &= ~TIM_SMCR_TS;
1801:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
1802:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1803:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1804:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Capture Compare preload feature */
1805:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_CR2_CCPC;
1806:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
1807:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
1808:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
1809:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1810:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Commutation DMA Request */
1811:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA Commutation Callback */
1812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferCpltCallback = TIMEx_DMACommutationCplt;
1813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback = TIMEx_DMACommutationHalfCplt;
1814:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA error callback */
1815:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferErrorCallback = TIM_DMAError;
1816:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1817:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable Commutation Interrupt */
1818:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_DISABLE_IT(htim, TIM_IT_COM);
1819:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1820:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Commutation DMA Request */
1821:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_COM);
1822:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1823:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
1824:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1825:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1826:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1827:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1828:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1829:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configures the TIM in master mode.
1830:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
1831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  sMasterConfig pointer to a TIM_MasterConfigTypeDef structure that
1832:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         contains the selected trigger output (TRGO) and the Master/Slave
1833:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         mode.
1834:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1835:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1836:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim,
1837:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                                         TIM_MasterConfigTypeDef *sMasterConfig)
1838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1839:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpcr2;
1840:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
1841:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1842:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1843:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_SYNCHRO_INSTANCE(htim->Instance));
1844:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_TRGO_SOURCE(sMasterConfig->MasterOutputTrigger));
1845:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_MSM_STATE(sMasterConfig->MasterSlaveMode));
1846:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1847:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check input state */
1848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
1849:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1850:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the handler state */
1851:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_BUSY;
1852:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1853:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Get the TIMx CR2 register value */
1854:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpcr2 = htim->Instance->CR2;
1855:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1856:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Get the TIMx SMCR register value */
1857:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr = htim->Instance->SMCR;
1858:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* If the timer supports ADC synchronization through TRGO2, set the master mode selection 2 */
1860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (IS_TIM_TRGO2_INSTANCE(htim->Instance))
1861:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1862:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Check the parameters */
1863:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     assert_param(IS_TIM_TRGO2_SOURCE(sMasterConfig->MasterOutputTrigger2));
1864:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1865:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Clear the MMS2 bits */
1866:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     tmpcr2 &= ~TIM_CR2_MMS2;
1867:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Select the TRGO2 source*/
1868:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     tmpcr2 |= sMasterConfig->MasterOutputTrigger2;
1869:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1870:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1871:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the MMS Bits */
1872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpcr2 &= ~TIM_CR2_MMS;
1873:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the TRGO source */
1874:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpcr2 |=  sMasterConfig->MasterOutputTrigger;
1875:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1876:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the MSM Bit */
1877:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr &= ~TIM_SMCR_MSM;
1878:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set master mode */
1879:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpsmcr |= sMasterConfig->MasterSlaveMode;
1880:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1881:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Update TIMx CR2 */
1882:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 = tmpcr2;
1883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1884:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Update TIMx SMCR */
1885:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR = tmpsmcr;
1886:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1887:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the htim state */
1888:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
1889:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1890:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
1891:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1892:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1893:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1894:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1895:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1896:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configures the Break feature, dead time, Lock level, OSSI/OSSR State
1897:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         and the AOE(automatic output enable).
1898:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
1899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  sBreakDeadTimeConfig pointer to a TIM_ConfigBreakDeadConfigTypeDef structure that
1900:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         contains the BDTR Register configuration  information for the TIM peripheral.
1901:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   Interrupts can be generated when an active level is detected on the
1902:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         break input, the break 2 input or the system break input. Break
1903:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         interrupt can be enabled by calling the @ref __HAL_TIM_ENABLE_IT macro.
1904:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1905:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1906:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigBreakDeadTime(TIM_HandleTypeDef *htim,
1907:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                                 TIM_BreakDeadTimeConfigTypeDef *sBreakDeadTimeConfi
1908:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1909:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Keep this variable initialized to 0 as it is used to configure BDTR register */
1910:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpbdtr = 0U;
1911:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1912:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
1913:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
1914:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_OSSR_STATE(sBreakDeadTimeConfig->OffStateRunMode));
1915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_OSSI_STATE(sBreakDeadTimeConfig->OffStateIDLEMode));
1916:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_LOCK_LEVEL(sBreakDeadTimeConfig->LockLevel));
1917:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_DEADTIME(sBreakDeadTimeConfig->DeadTime));
1918:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_STATE(sBreakDeadTimeConfig->BreakState));
1919:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_POLARITY(sBreakDeadTimeConfig->BreakPolarity));
1920:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_FILTER(sBreakDeadTimeConfig->BreakFilter));
1921:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_AUTOMATIC_OUTPUT_STATE(sBreakDeadTimeConfig->AutomaticOutput));
1922:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1923:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check input state */
1924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
1925:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1926:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the Lock level, the Break enable Bit and the Polarity, the OSSR State,
1927:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****      the OSSI State, the dead time value and the Automatic Output Enable Bit */
1928:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1929:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the BDTR bits */
1930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_DTG, sBreakDeadTimeConfig->DeadTime);
1931:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_LOCK, sBreakDeadTimeConfig->LockLevel);
1932:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSI, sBreakDeadTimeConfig->OffStateIDLEMode);
1933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSR, sBreakDeadTimeConfig->OffStateRunMode);
1934:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKE, sBreakDeadTimeConfig->BreakState);
1935:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKP, sBreakDeadTimeConfig->BreakPolarity);
1936:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_AOE, sBreakDeadTimeConfig->AutomaticOutput);
1937:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKF, (sBreakDeadTimeConfig->BreakFilter << TIM_BDTR_BKF_Pos));
1938:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (IS_TIM_ADVANCED_INSTANCE(htim->Instance))
1940:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1941:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Check the parameters */
1942:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     assert_param(IS_TIM_BREAK_AFMODE(sBreakDeadTimeConfig->BreakAFMode));
1943:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1944:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Set BREAK AF mode */
1945:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BKBID, sBreakDeadTimeConfig->BreakAFMode);
1946:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1947:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1948:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (IS_TIM_BKIN2_INSTANCE(htim->Instance))
1949:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
1950:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Check the parameters */
1951:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     assert_param(IS_TIM_BREAK2_STATE(sBreakDeadTimeConfig->Break2State));
1952:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     assert_param(IS_TIM_BREAK2_POLARITY(sBreakDeadTimeConfig->Break2Polarity));
1953:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     assert_param(IS_TIM_BREAK_FILTER(sBreakDeadTimeConfig->Break2Filter));
1954:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1955:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Set the BREAK2 input related BDTR bits */
1956:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2F, (sBreakDeadTimeConfig->Break2Filter << TIM_BDTR_BK2F_Pos));
1957:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2E, sBreakDeadTimeConfig->Break2State);
1958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2P, sBreakDeadTimeConfig->Break2Polarity);
1959:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1960:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     if (IS_TIM_ADVANCED_INSTANCE(htim->Instance))
1961:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
1962:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Check the parameters */
1963:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       assert_param(IS_TIM_BREAK2_AFMODE(sBreakDeadTimeConfig->Break2AFMode));
1964:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1965:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set BREAK2 AF mode */
1966:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       MODIFY_REG(tmpbdtr, TIM_BDTR_BK2BID, sBreakDeadTimeConfig->Break2AFMode);
1967:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
1968:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
1969:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1970:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set TIMx_BDTR */
1971:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->BDTR = tmpbdtr;
1972:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1973:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
1974:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1975:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
1976:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
1977:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1978:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
1979:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configures the break input source.
1980:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
1981:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  BreakInput Break input to configure
1982:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
1983:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_BREAKINPUT_BRK: Timer break input
1984:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_BREAKINPUT_BRK2: Timer break 2 input
1985:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  sBreakInputConfig Break input source configuration
1986:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
1987:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
1988:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigBreakInput(TIM_HandleTypeDef *htim,
1989:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                              uint32_t BreakInput,
1990:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                              TIMEx_BreakInputConfigTypeDef *sBreakInputConfig)
1991:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1992:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
1993:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmporx;
1994:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_enable_mask;
1995:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_polarity_mask;
1996:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_enable_bitpos;
1997:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_polarity_bitpos;
1998:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
1999:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2000:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
2001:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUT(BreakInput));
2002:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUTSOURCE(sBreakInputConfig->Source));
2003:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUTSOURCE_STATE(sBreakInputConfig->Enable));
2004:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUTSOURCE_POLARITY(sBreakInputConfig->Polarity));
2005:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2006:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check input state */
2007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
2008:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2009:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (sBreakInputConfig->Source)
2010:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
2011:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_BKIN:
2012:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2013:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKINE;
2014:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKINE_Pos;
2015:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = TIM1_AF1_BKINP;
2016:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = TIM1_AF1_BKINP_Pos;
2017:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2018:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2019:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_COMP1:
2020:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2021:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKCMP1E;
2022:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKCMP1E_Pos;
2023:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = TIM1_AF1_BKCMP1P;
2024:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = TIM1_AF1_BKCMP1P_Pos;
2025:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2026:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2027:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_COMP2:
2028:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2029:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKCMP2E;
2030:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKCMP2E_Pos;
2031:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = TIM1_AF1_BKCMP2P;
2032:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = TIM1_AF1_BKCMP2P_Pos;
2033:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2034:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2035:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_COMP3:
2036:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2037:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKCMP3E;
2038:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKCMP3E_Pos;
2039:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = TIM1_AF1_BKCMP3P;
2040:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = TIM1_AF1_BKCMP3P_Pos;
2041:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2042:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2043:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_COMP4:
2044:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2045:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKCMP4E;
2046:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKCMP4E_Pos;
2047:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = TIM1_AF1_BKCMP4P;
2048:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = TIM1_AF1_BKCMP4P_Pos;
2049:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2050:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2051:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if defined (COMP5)
2052:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_COMP5:
2053:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2054:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKCMP5E;
2055:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKCMP5E_Pos;
2056:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* No palarity bit for this COMP. Variable bkin_polarity_mask keeps its default value 0 */
2057:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = 0U;
2058:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = 0U;
2059:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2060:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2061:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* COMP5 */
2062:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if defined (COMP6)
2063:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_COMP6:
2064:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2065:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKCMP6E;
2066:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKCMP6E_Pos;
2067:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* No palarity bit for this COMP. Variable bkin_polarity_mask keeps its default value 0 */
2068:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = 0U;
2069:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = 0U;
2070:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2071:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2072:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* COMP7 */
2073:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if defined (COMP7)
2074:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUTSOURCE_COMP7:
2075:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2076:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = TIM1_AF1_BKCMP7E;
2077:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = TIM1_AF1_BKCMP7E_Pos;
2078:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* No palarity bit for this COMP. Variable bkin_polarity_mask keeps its default value 0 */
2079:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = 0U;
2080:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = 0U;
2081:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2082:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2083:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* COMP7 */
2084:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2085:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
2086:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2087:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_mask = 0U;
2088:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_mask = 0U;
2089:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_enable_bitpos = 0U;
2090:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       bkin_polarity_bitpos = 0U;
2091:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2092:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2093:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
2094:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2095:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (BreakInput)
2096:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
2097:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUT_BRK:
2098:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2099:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Get the TIMx_AF1 register value */
2100:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx = htim->Instance->AF1;
2101:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2102:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the break input */
2103:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx &= ~bkin_enable_mask;
2104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Enable << bkin_enable_bitpos) & bkin_enable_mask;
2105:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2106:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the break input polarity */
2107:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx &= ~bkin_polarity_mask;
2108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Polarity << bkin_polarity_bitpos) & bkin_polarity_mask;
2109:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2110:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set TIMx_AF1 */
2111:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->Instance->AF1 = tmporx;
2112:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2113:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2114:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUT_BRK2:
2115:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2116:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Get the TIMx_AF2 register value */
2117:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx = htim->Instance->AF2;
2118:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2119:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Enable the break input */
2120:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx &= ~bkin_enable_mask;
2121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Enable << bkin_enable_bitpos) & bkin_enable_mask;
2122:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2123:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set the break input polarity */
2124:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx &= ~bkin_polarity_mask;
2125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Polarity << bkin_polarity_bitpos) & bkin_polarity_mask;
2126:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2127:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Set TIMx_AF2 */
2128:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->Instance->AF2 = tmporx;
2129:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2130:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2131:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
2132:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2133:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
2134:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2135:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
2136:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2137:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2138:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2139:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2140:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2141:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configures the TIMx Remapping input capabilities.
2142:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
2143:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Remap specifies the TIM remapping source.
2144:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM1, the parameter can take one of the following values:
2145:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_GPIO           TIM1 ETR is connected to GPIO
2146:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_COMP1          TIM1 ETR is connected to COMP1 output
2147:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_COMP2          TIM1 ETR is connected to COMP2 output
2148:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_COMP3          TIM1 ETR is connected to COMP3 output
2149:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_COMP4          TIM1 ETR is connected to COMP4 output
2150:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_COMP5          TIM1 ETR is connected to COMP5 output    (*)
2151:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_COMP6          TIM1 ETR is connected to COMP6 output    (*)
2152:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_COMP7          TIM1 ETR is connected to COMP7 output    (*)
2153:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_ADC1_AWD1      TIM1 ETR is connected to ADC1 AWD1
2154:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_ADC1_AWD2      TIM1 ETR is connected to ADC1 AWD2
2155:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_ADC1_AWD3      TIM1 ETR is connected to ADC1 AWD3
2156:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_ADC4_AWD1      TIM1 ETR is connected to ADC4 AWD1       (*)
2157:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_ADC4_AWD2      TIM1 ETR is connected to ADC4 AWD2       (*)
2158:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_ETR_ADC4_AWD3      TIM1 ETR is connected to ADC4 AWD3       (*)
2159:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2160:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM2, the parameter can take one of the following values:
2161:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_GPIO           TIM2 ETR is connected to GPIO
2162:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_COMP1          TIM2 ETR is connected to COMP1 output
2163:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_COMP2          TIM2 ETR is connected to COMP2 output
2164:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_COMP3          TIM2 ETR is connected to COMP3 output
2165:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_COMP4          TIM2 ETR is connected to COMP4 output
2166:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_COMP5          TIM2 ETR is connected to COMP5 output    (*)
2167:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_COMP6          TIM2 ETR is connected to COMP6 output    (*)
2168:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_COMP7          TIM2 ETR is connected to COMP7 output    (*)
2169:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_TIM3_ETR       TIM2 ETR is connected to TIM3 ETR pin
2170:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_TIM4_ETR       TIM2 ETR is connected to TIM4 ETR pin
2171:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_TIM5_ETR       TIM2 ETR is connected to TIM5 ETR pin    (*)
2172:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_ETR_LSE
2173:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2174:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM3, the parameter can take one of the following values:
2175:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_GPIO           TIM3 ETR is connected to GPIO
2176:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_COMP1          TIM3 ETR is connected to COMP1 output
2177:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_COMP2          TIM3 ETR is connected to COMP2 output
2178:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_COMP3          TIM3 ETR is connected to COMP3 output
2179:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_COMP4          TIM3 ETR is connected to COMP4 output
2180:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_COMP5          TIM3 ETR is connected to COMP5 output    (*)
2181:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_COMP6          TIM3 ETR is connected to COMP6 output    (*)
2182:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_COMP7          TIM3 ETR is connected to COMP7 output    (*)
2183:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_TIM2_ETR       TIM3 ETR is connected to TIM2 ETR pin
2184:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_TIM4_ETR       TIM3 ETR is connected to TIM4 ETR pin
2185:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_ADC2_AWD1      TIM3 ETR is connected to ADC2 AWD1
2186:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_ADC2_AWD2      TIM3 ETR is connected to ADC2 AWD2
2187:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_ETR_ADC2_AWD3      TIM3 ETR is connected to ADC2 AWD3
2188:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2189:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM4, the parameter can take one of the following values:
2190:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_GPIO           TIM4 ETR is connected to GPIO
2191:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_COMP1          TIM4 ETR is connected to COMP1 output
2192:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_COMP2          TIM4 ETR is connected to COMP2 output
2193:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_COMP3          TIM4 ETR is connected to COMP3 output
2194:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_COMP4          TIM4 ETR is connected to COMP4 output
2195:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_COMP5          TIM4 ETR is connected to COMP5 output    (*)
2196:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_COMP6          TIM4 ETR is connected to COMP6 output    (*)
2197:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_COMP7          TIM4 ETR is connected to COMP7 output    (*)
2198:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_TIM3_ETR       TIM4 ETR is connected to TIM3 ETR pin
2199:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_ETR_TIM5_ETR       TIM4 ETR is connected to TIM5 ETR pin    (*)
2200:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2201:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM5, the parameter can take one of the following values:       (**)
2202:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_GPIO           TIM5 ETR is connected to GPIO            (*)
2203:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_COMP1          TIM5 ETR is connected to COMP1 output    (*)
2204:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_COMP2          TIM5 ETR is connected to COMP2 output    (*)
2205:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_COMP3          TIM5 ETR is connected to COMP3 output    (*)
2206:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_COMP4          TIM5 ETR is connected to COMP4 output    (*)
2207:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_COMP5          TIM5 ETR is connected to COMP5 output    (*)
2208:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_COMP6          TIM5 ETR is connected to COMP6 output    (*)
2209:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_COMP7          TIM5 ETR is connected to COMP7 output    (*)
2210:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_TIM2_ETR       TIM5 ETR is connected to TIM2 ETR pin    (*)
2211:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_ETR_TIM3_ETR       TIM5 ETR is connected to TIM3 ETR pin    (*)
2212:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2213:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM8, the parameter can take one of the following values:
2214:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_GPIO            TIM8 ETR is connected to GPIO
2215:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_COMP1           TIM8 ETR is connected to COMP1 output
2216:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_COMP2           TIM8 ETR is connected to COMP2 output
2217:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_COMP3           TIM8 ETR is connected to COMP3 output
2218:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_COMP4           TIM8 ETR is connected to COMP4 output
2219:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_COMP5           TIM8 ETR is connected to COMP5 output    (*)
2220:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_COMP6           TIM8 ETR is connected to COMP6 output    (*)
2221:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_COMP7           TIM8 ETR is connected to COMP7 output    (*)
2222:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_ADC2_AWD1       TIM8 ETR is connected to ADC2 AWD1
2223:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_ADC2_AWD2       TIM8 ETR is connected to ADC2 AWD2
2224:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_ADC2_AWD3       TIM8 ETR is connected to ADC2 AWD3
2225:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_ADC3_AWD1       TIM8 ETR is connected to ADC3 AWD1       (*)
2226:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_ADC3_AWD2       TIM8 ETR is connected to ADC3 AWD2       (*)
2227:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_ETR_ADC3_AWD3       TIM8 ETR is connected to ADC3 AWD3       (*)
2228:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2229:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM20, the parameter can take one of the following values:       (**)
2230:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_GPIO            TIM20 ETR is connected to GPIO
2231:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_COMP1           TIM20 ETR is connected to COMP1 output  (*)
2232:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_COMP2           TIM20 ETR is connected to COMP2 output  (*)
2233:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_COMP3           TIM20 ETR is connected to COMP3 output  (*)
2234:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_COMP4           TIM20 ETR is connected to COMP4 output  (*)
2235:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_COMP5           TIM20 ETR is connected to COMP5 output  (*)
2236:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_COMP6           TIM20 ETR is connected to COMP6 output  (*)
2237:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_COMP7           TIM20 ETR is connected to COMP7 output  (*)
2238:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_ADC3_AWD1       TIM20 ETR is connected to ADC3 AWD1     (*)
2239:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_ADC3_AWD2       TIM20 ETR is connected to ADC3 AWD2     (*)
2240:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_ADC3_AWD3       TIM20 ETR is connected to ADC3 AWD3     (*)
2241:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_ADC5_AWD1       TIM20 ETR is connected to ADC5 AWD1     (*)
2242:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_ADC5_AWD2       TIM20 ETR is connected to ADC5 AWD2     (*)
2243:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_ETR_ADC5_AWD3       TIM20 ETR is connected to ADC5 AWD3     (*)
2244:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2245:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         (*)  Value not defined in all devices. \n
2246:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         (**) Register not available in all devices.
2247:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2248:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2250:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_RemapConfig(TIM_HandleTypeDef *htim, uint32_t Remap)
2251:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2252:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check parameters */
2253:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_REMAP_INSTANCE(htim->Instance));
2254:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_REMAP(Remap));
2255:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2256:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
2257:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2258:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(htim->Instance->AF1, TIM1_AF1_ETRSEL_Msk, Remap);
2259:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2260:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
2261:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2262:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2263:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2264:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2265:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2266:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Select the timer input source
2267:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
2268:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel specifies the TIM Channel
2269:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
2270:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TI1 input channel
2271:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TI2 input channel
2272:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TI3 input channel
2273:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TI4 input channel
2274:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  TISelection specifies the timer input source
2275:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM1 this parameter can be one of the following values:
2276:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_TI1_GPIO:                TIM1 TI1 is connected to GPIO
2277:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_TI1_COMP1:               TIM1 TI1 is connected to COMP1 output
2278:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_TI1_COMP2:               TIM1 TI1 is connected to COMP2 output
2279:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_TI1_COMP3:               TIM1 TI1 is connected to COMP3 output
2280:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM1_TI1_COMP4:               TIM1 TI1 is connected to COMP4 output
2281:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2282:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM2 this parameter can be one of the following values:
2283:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI1_GPIO:                TIM2 TI1 is connected to GPIO
2284:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI1_COMP1:               TIM2 TI1 is connected to COMP1 output
2285:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI1_COMP2:               TIM2 TI1 is connected to COMP2 output
2286:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI1_COMP3:               TIM2 TI1 is connected to COMP3 output
2287:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI1_COMP4:               TIM2 TI1 is connected to COMP4 output
2288:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI1_COMP5:               TIM2 TI1 is connected to COMP5 output     (*)
2289:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2290:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI2_GPIO:                TIM1 TI2 is connected to GPIO
2291:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI2_COMP1:               TIM2 TI2 is connected to COMP1 output
2292:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI2_COMP2:               TIM2 TI2 is connected to COMP2 output
2293:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI2_COMP3:               TIM2 TI2 is connected to COMP3 output
2294:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI2_COMP4:               TIM2 TI2 is connected to COMP4 output
2295:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI2_COMP6:               TIM2 TI2 is connected to COMP6 output     (*)
2296:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2297:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI3_GPIO:                TIM2 TI3 is connected to GPIO
2298:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI3_COMP4:               TIM2 TI3 is connected to COMP4 output
2299:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2300:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI4_GPIO:                TIM2 TI4 is connected to GPIO
2301:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI4_COMP1:               TIM2 TI4 is connected to COMP1 output
2302:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM2_TI4_COMP2:               TIM2 TI4 is connected to COMP2 output
2303:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2304:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM3 this parameter can be one of the following values:
2305:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_GPIO:                TIM3 TI1 is connected to GPIO
2306:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_COMP1:               TIM3 TI1 is connected to COMP1 output
2307:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_COMP2:               TIM3 TI1 is connected to COMP2 output
2308:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_COMP3:               TIM3 TI1 is connected to COMP3 output
2309:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_COMP4:               TIM3 TI1 is connected to COMP4 output
2310:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_COMP5:               TIM3 TI1 is connected to COMP5 output     (*)
2311:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_COMP6:               TIM3 TI1 is connected to COMP6 output     (*)
2312:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI1_COMP7:               TIM3 TI1 is connected to COMP7 output     (*)
2313:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2314:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_GPIO:                TIM3 TI2 is connected to GPIO
2315:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_COMP1:               TIM3 TI2 is connected to COMP1 output
2316:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_COMP2:               TIM3 TI2 is connected to COMP2 output
2317:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_COMP3:               TIM3 TI2 is connected to COMP3 output
2318:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_COMP4:               TIM3 TI2 is connected to COMP4 output
2319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_COMP5:               TIM3 TI2 is connected to COMP5 output     (*)
2320:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_COMP6:               TIM3 TI2 is connected to COMP6 output     (*)
2321:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI2_COMP7:               TIM3 TI2 is connected to COMP7 output     (*)
2322:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2323:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI3_GPIO:                TIM3 TI3 is connected to GPIO
2324:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM3_TI3_COMP3:               TIM3 TI3 is connected to COMP3 output
2325:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2326:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM4 this parameter can be one of the following values:
2327:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_GPIO:                TIM4 TI1 is connected to GPIO
2328:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_COMP1:               TIM4 TI1 is connected to COMP1 output
2329:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_COMP2:               TIM4 TI1 is connected to COMP2 output
2330:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_COMP3:               TIM4 TI1 is connected to COMP3 output
2331:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_COMP4:               TIM4 TI1 is connected to COMP4 output
2332:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_COMP5:               TIM4 TI1 is connected to COMP5 output     (*)
2333:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_COMP6:               TIM4 TI1 is connected to COMP6 output     (*)
2334:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI1_COMP7:               TIM4 TI1 is connected to COMP7 output     (*)
2335:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2336:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_GPIO:                TIM4 TI2 is connected to GPIO
2337:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_COMP1:               TIM4 TI2 is connected to COMP1 output
2338:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_COMP2:               TIM4 TI2 is connected to COMP2 output
2339:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_COMP3:               TIM4 TI2 is connected to COMP3 output
2340:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_COMP4:               TIM4 TI2 is connected to COMP4 output
2341:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_COMP5:               TIM4 TI2 is connected to COMP5 output     (*)
2342:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_COMP6:               TIM4 TI2 is connected to COMP6 output     (*)
2343:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI2_COMP7:               TIM4 TI2 is connected to COMP7 output     (*)
2344:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2345:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI3_GPIO:                TIM4 TI3 is connected to GPIO
2346:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI3_COMP5:               TIM4 TI3 is connected to COMP5 output     (*)
2347:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2348:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI4_GPIO:                TIM4 TI4 is connected to GPIO
2349:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM4_TI4_COMP6:               TIM4 TI4 is connected to COMP6 output     (*)
2350:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2351:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM5 this parameter can be one of the following values:    (**)
2352:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_GPIO:                TIM5 TI1 is connected to GPIO
2353:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_LSI:                 TIM5 TI1 is connected to LSI clock        (*)
2354:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_LSE:                 TIM5 TI1 is connected to LSE clock        (*)
2355:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_RTC_WK:              TIM5 TI1 is connected to RTC Wakeup       (*)
2356:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_COMP1:               TIM5 TI1 is connected to COMP1 output     (*)
2357:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_COMP2:               TIM5 TI1 is connected to COMP2 output     (*)
2358:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_COMP3:               TIM5 TI1 is connected to COMP3 output     (*)
2359:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_COMP4:               TIM5 TI1 is connected to COMP4 output     (*)
2360:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_COMP5:               TIM5 TI1 is connected to COMP5 output     (*)
2361:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_COMP6:               TIM5 TI1 is connected to COMP6 output     (*)
2362:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI1_COMP7:               TIM5 TI1 is connected to COMP7 output     (*)
2363:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2364:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_GPIO:                TIM5 TI2 is connected to GPIO
2365:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_COMP1:               TIM5 TI2 is connected to COMP1 output
2366:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_COMP2:               TIM5 TI2 is connected to COMP2 output
2367:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_COMP3:               TIM5 TI2 is connected to COMP3 output
2368:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_COMP4:               TIM5 TI2 is connected to COMP4 output
2369:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_COMP5:               TIM5 TI2 is connected to COMP5 output     (*)
2370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_COMP6:               TIM5 TI2 is connected to COMP6 output     (*)
2371:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM5_TI2_COMP7:               TIM5 TI2 is connected to COMP7 output     (*)
2372:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2373:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM8 this parameter can be one of the following values:
2374:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_TI1_GPIO:                TIM8 TI1 is connected to GPIO
2375:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_TI1_COMP1:               TIM8 TI1 is connected to COMP1 output
2376:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_TI1_COMP2:               TIM8 TI1 is connected to COMP2 output
2377:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_TI1_COMP3:               TIM8 TI1 is connected to COMP3 output
2378:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM8_TI1_COMP4:               TIM8 TI1 is connected to COMP4 output
2379:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2380:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM15 this parameter can be one of the following values:
2381:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI1_GPIO:                TIM15 TI1 is connected to GPIO
2382:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI1_LSE:                 TIM15 TI1 is connected to LSE clock
2383:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI1_COMP1:               TIM15 TI1 is connected to COMP1 output
2384:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI1_COMP2:               TIM15 TI1 is connected to COMP2 output
2385:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI1_COMP5:               TIM15 TI1 is connected to COMP5 output     (
2386:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI1_COMP7:               TIM15 TI1 is connected to COMP7 output     (
2387:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2388:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI2_GPIO:                TIM15 TI2 is connected to GPIO
2389:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI2_COMP2:               TIM15 TI2 is connected to COMP2 output
2390:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI2_COMP3:               TIM15 TI2 is connected to COMP3 output
2391:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI2_COMP6:               TIM15 TI2 is connected to COMP6 output     (
2392:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM15_TI2_COMP7:               TIM15 TI2 is connected to COMP7 output     (
2393:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2394:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM16 this parameter can be one of the following values:
2395:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM16_TI1_GPIO:                TIM16 TI1 is connected to GPIO
2396:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM16_TI1_COMP6:               TIM16 TI1 is connected to COMP6 output     (
2397:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM16_TI1_MCO:                 TIM15 TI1 is connected to MCO output
2398:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM16_TI1_HSE_32:              TIM15 TI1 is connected to HSE div 32
2399:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM16_TI1_RTC_WK:              TIM15 TI1 is connected to RTC wakeup
2400:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM16_TI1_LSE:                 TIM15 TI1 is connected to LSE clock
2401:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM16_TI1_LSI:                 TIM15 TI1 is connected to LSI clock
2402:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2403:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM17 this parameter can be one of the following values:
2404:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM17_TI1_GPIO:                TIM17 TI1 is connected to GPIO
2405:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM17_TI1_COMP5:               TIM17 TI1 is connected to COMP5 output     (
2406:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM17_TI1_MCO:                 TIM17 TI1 is connected to MCO output
2407:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM17_TI1_HSE_32:              TIM17 TI1 is connected to HSE div 32
2408:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM17_TI1_RTC_WK:              TIM17 TI1 is connected to RTC wakeup
2409:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM17_TI1_LSE:                 TIM17 TI1 is connected to LSE clock
2410:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM17_TI1_LSI:                 TIM17 TI1 is connected to LSI clock
2411:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2412:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         For TIM20 this parameter can be one of the following values:    (**)
2413:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_TI1_GPIO:                TIM20 TI1 is connected to GPIO
2414:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_TI1_COMP1:               TIM20 TI1 is connected to COMP1 output     (
2415:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_TI1_COMP2:               TIM20 TI1 is connected to COMP2 output     (
2416:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_TI1_COMP3:               TIM20 TI1 is connected to COMP3 output     (
2417:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_TIM20_TI1_COMP4:               TIM20 TI1 is connected to COMP4 output     (
2418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2419:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         (*)  Value not defined in all devices. \n
2420:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         (**) Register not available in all devices.
2421:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2422:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2423:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2424:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef  HAL_TIMEx_TISelection(TIM_HandleTypeDef *htim, uint32_t TISelection, uint32_t Ch
2425:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
2427:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2428:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check parameters */
2429:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_TISEL_TIX_INSTANCE(htim->Instance, Channel));
2430:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_TISEL(TISelection));
2431:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2432:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
2433:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2434:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (Channel)
2435:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
2436:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_1:
2437:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       MODIFY_REG(htim->Instance->TISEL, TIM_TISEL_TI1SEL, TISelection);
2438:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2439:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* If required, set OR bit to request HSE/32 clock */
2440:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (IS_TIM_HSE32_INSTANCE(htim->Instance))
2441:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
2442:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         SET_BIT(htim->Instance->OR, TIM_OR_HSE32EN);
2443:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
2444:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       else
2445:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
2446:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         CLEAR_BIT(htim->Instance->OR, TIM_OR_HSE32EN);
2447:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
2448:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2449:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_2:
2450:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       MODIFY_REG(htim->Instance->TISEL, TIM_TISEL_TI2SEL, TISelection);
2451:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2452:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_3:
2453:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       MODIFY_REG(htim->Instance->TISEL, TIM_TISEL_TI3SEL, TISelection);
2454:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2455:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
2456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       MODIFY_REG(htim->Instance->TISEL, TIM_TISEL_TI4SEL, TISelection);
2457:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2458:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
2459:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       status = HAL_ERROR;
2460:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2461:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
2462:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2463:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
2464:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2465:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return status;
2466:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2467:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2468:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2469:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Group channel 5 and channel 1, 2 or 3
2470:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
2471:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channels specifies the reference signal(s) the OC5REF is combined with.
2472:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         This parameter can be any combination of the following values:
2473:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         TIM_GROUPCH5_NONE: No effect of OC5REF on OC1REFC, OC2REFC and OC3REFC
2474:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         TIM_GROUPCH5_OC1REFC: OC1REFC is the logical AND of OC1REFC and OC5REF
2475:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         TIM_GROUPCH5_OC2REFC: OC2REFC is the logical AND of OC2REFC and OC5REF
2476:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         TIM_GROUPCH5_OC3REFC: OC3REFC is the logical AND of OC3REFC and OC5REF
2477:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2478:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2479:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_GroupChannel5(TIM_HandleTypeDef *htim, uint32_t Channels)
2480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2481:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check parameters */
2482:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_COMBINED3PHASEPWM_INSTANCE(htim->Instance));
2483:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_GROUPCH5(Channels));
2484:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2485:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Process Locked */
2486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
2487:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2488:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_BUSY;
2489:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2490:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Clear GC5Cx bit fields */
2491:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CCR5 &= ~(TIM_CCR5_GC5C3 | TIM_CCR5_GC5C2 | TIM_CCR5_GC5C1);
2492:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2493:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set GC5Cx bit fields */
2494:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CCR5 |= Channels;
2495:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2496:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the htim state */
2497:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
2498:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2499:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
2500:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2501:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2502:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2503:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2504:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2505:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Disarm the designated break input (when it operates in bidirectional mode).
2506:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
2507:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  BreakInput Break input to disarm
2508:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
2509:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_BREAKINPUT_BRK: Timer break input
2510:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_BREAKINPUT_BRK2: Timer break 2 input
2511:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  The break input can be disarmed only when it is configured in
2512:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        bidirectional mode and when when MOE is reset.
2513:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  Purpose is to be able to have the input voltage back to high-state,
2514:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *        whatever the time constant on the output .
2515:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2516:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2517:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DisarmBreakInput(TIM_HandleTypeDef *htim, uint32_t BreakInput)
2518:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2519:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpbdtr;
2520:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2521:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2522:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ADVANCED_INSTANCE(htim->Instance));
2523:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUT(BreakInput));
2524:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (BreakInput)
2526:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
2527:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUT_BRK:
2528:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2529:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Check initial conditions */
2530:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmpbdtr = READ_REG(htim->Instance->BDTR);
2531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BKBID) == TIM_BDTR_BKBID) &&
2532:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
2533:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
2534:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         /* Break input BRK is disarmed */
2535:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         SET_BIT(htim->Instance->BDTR, TIM_BDTR_BKDSRM);
2536:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
2537:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2538:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2539:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2540:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUT_BRK2:
2541:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2542:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Check initial conditions */
2543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmpbdtr = READ_REG(htim->Instance->BDTR);
2544:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BK2BID) == TIM_BDTR_BK2BID) &&
2545:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
2546:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
2547:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         /* Break input BRK is disarmed */
2548:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         SET_BIT(htim->Instance->BDTR, TIM_BDTR_BK2DSRM);
2549:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
2550:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2551:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2552:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
2553:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2554:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
2555:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2556:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2557:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2558:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2559:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2560:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Arm the designated break input (when it operates in bidirectional mode).
2561:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
2562:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  BreakInput Break input to arm
2563:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
2564:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_BREAKINPUT_BRK: Timer break input
2565:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_BREAKINPUT_BRK2: Timer break 2 input
2566:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  Arming is possible at anytime, even if fault is present.
2567:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note  Break input is automatically armed as soon as MOE bit is set.
2568:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2569:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2570:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ReArmBreakInput(TIM_HandleTypeDef *htim, uint32_t BreakInput)
2571:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2572:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tickstart;
2573:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2574:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2575:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ADVANCED_INSTANCE(htim->Instance));
2576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUT(BreakInput));
2577:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2578:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   switch (BreakInput)
2579:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
2580:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUT_BRK:
2581:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2582:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Check initial conditions */
2583:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (READ_BIT(htim->Instance->BDTR, TIM_BDTR_BKBID) == TIM_BDTR_BKBID)
2584:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
2585:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         /* Break input BRK is re-armed automatically by hardware. Poll to check whether fault condi
2586:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         /* Init tickstart for timeout management */
2587:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         tickstart = HAL_GetTick();
2588:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
2589:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         {
2590:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           if (READ_BIT(htim->Instance->BDTR, TIM_BDTR_BKDSRM) != TIM_BDTR_BKDSRM)
2591:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
2592:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             return HAL_OK;
2593:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           }
2594:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         } while ((HAL_GetTick() - tickstart) <= TIM_BREAKINPUT_REARM_TIMEOUT);
2595:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2596:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_TIMEOUT;
2597:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
2598:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2599:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2600:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2601:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_BREAKINPUT_BRK2:
2602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
2603:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       /* Check initial conditions */
2604:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if (READ_BIT(htim->Instance->BDTR, TIM_BDTR_BK2BID) == TIM_BDTR_BK2BID)
2605:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
2606:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         /* Break input BRK2 is re-armed automatically by hardware. Poll to check whether fault cond
2607:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         /* Init tickstart for timeout management */
2608:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         tickstart = HAL_GetTick();
2609:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
2610:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         {
2611:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           if (READ_BIT(htim->Instance->BDTR, TIM_BDTR_BK2DSRM) != TIM_BDTR_BK2DSRM)
2612:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
2613:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             return HAL_OK;
2614:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           }
2615:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         } while ((HAL_GetTick() - tickstart) <= TIM_BREAKINPUT_REARM_TIMEOUT);
2616:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2617:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         return HAL_TIMEOUT;
2618:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
2619:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2620:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
2621:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
2622:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
2623:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
2624:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2625:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2626:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2627:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2629:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Enable dithering
2630:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2631:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   Main usage is PWM mode
2632:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   This function must be called when timer is stopped or disabled (CEN =0)
2633:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   If dithering is activated, pay attention to ARR, CCRx, CNT interpretation:
2634:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - CNT: only CNT[11:0] holds the non-dithered part for 16b timers (or CNT[26:0] for 32
2635:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - ARR: ARR[15:4] holds the non-dithered part, and ARR[3:0] the dither part for 16b ti
2636:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - CCRx: CCRx[15:4] holds the non-dithered part, and CCRx[3:0] the dither part for 16b
2637:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - ARR and CCRx values are limited to 0xFFEF in dithering mode for 16b timers
2638:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *             (corresponds to 4094 for the integer part and 15 for the dithered part).
2639:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   Macros @ref __HAL_TIM_CALC_PERIOD_DITHER() __HAL_TIM_CALC_DELAY_DITHER()  __HAL_TIM_CAL
2640:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         can be used to calculate period (ARR) and delay (CCRx) value.
2641:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   Enabling dithering, modifies automatically values of registers ARR/CCRx to keep the sam
2642:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         So it may be necessary to read ARR value or CCRx value with macros @ref __HAL_TIM_GET_A
2643:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         and if necessary update Init structure field htim->Init.Period .
2644:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2645:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2646:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DitheringEnable(TIM_HandleTypeDef *htim)
2647:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2648:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2649:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INSTANCE(htim->Instance));
2650:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2651:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   SET_BIT(htim->Instance->CR1, TIM_CR1_DITHEN);
2652:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2653:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2654:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2655:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2656:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Disable dithering
2657:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2658:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   This function must be called when timer is stopped or disabled (CEN =0)
2659:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   If dithering is activated, pay attention to ARR, CCRx, CNT interpretation:
2660:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - CNT: only CNT[11:0] holds the non-dithered part for 16b timers (or CNT[26:0] for 32
2661:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - ARR: ARR[15:4] holds the non-dithered part, and ARR[3:0] the dither part for 16b ti
2662:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - CCRx: CCRx[15:4] holds the non-dithered part, and CCRx[3:0] the dither part for 16b
2663:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *           - ARR and CCRx values are limited to 0xFFEF in dithering mode
2664:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *             (corresponds to 4094 for the integer part and 15 for the dithered part).
2665:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   Disabling dithering, modifies automatically values of registers ARR/CCRx to keep the sa
2666:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         So it may be necessary to read ARR value or CCRx value with macros @ref __HAL_TIM_GET_A
2667:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         and if necessary update Init structure field htim->Init.Period .
2668:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2669:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2670:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DitheringDisable(TIM_HandleTypeDef *htim)
2671:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2672:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2673:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INSTANCE(htim->Instance));
2674:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2675:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   CLEAR_BIT(htim->Instance->CR1, TIM_CR1_DITHEN);
2676:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2677:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2678:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2679:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2680:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Initializes the pulse on compare pulse width and pulse prescaler
2681:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Output Compare handle
2682:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  PulseWidthPrescaler  Pulse width prescaler
2683:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         This parameter can be a number between Min_Data = 0x0 and Max_Data = 0x7
2684:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  PulseWidth  Pulse width
2685:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         This parameter can be a number between Min_Data = 0x00 and Max_Data = 0xFF
2686:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2687:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_OC_ConfigPulseOnCompare(TIM_HandleTypeDef *htim,
2689:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                                     uint32_t PulseWidthPrescaler,
2690:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                                     uint32_t PulseWidth)
2691:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2692:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpecr;
2693:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2694:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2695:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_PULSEONCOMPARE_INSTANCE(htim->Instance));
2696:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_PULSEONCOMPARE_WIDTH(PulseWidth));
2697:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_PULSEONCOMPARE_WIDTHPRESCALER(PulseWidthPrescaler));
2698:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2699:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Process Locked */
2700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
2701:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2702:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the TIM state */
2703:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_BUSY;
2704:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2705:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Get the TIMx ECR register value */
2706:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpecr = htim->Instance->ECR;
2707:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the Pulse width prescaler and the Pulse width */
2708:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpecr &= ~(TIM_ECR_PWPRSC | TIM_ECR_PW);
2709:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the Pulse width prescaler and Pulse width*/
2710:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpecr |= PulseWidthPrescaler << TIM_ECR_PWPRSC_Pos;
2711:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpecr |= PulseWidth << TIM_ECR_PW_Pos;
2712:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Write to TIMx ECR */
2713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->ECR = tmpecr;
2714:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2715:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the TIM state */
2716:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
2717:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2718:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Release Lock */
2719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
2720:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2721:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2723:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2724:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2725:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configure preload source of Slave Mode Selection bitfield (SMS in SMCR register)
2726:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2727:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Source Source of slave mode selection preload
2728:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         This parameter can be one of the following values:
2729:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_SMS_PRELOAD_SOURCE_UPDATE: Timer update event is used as source of Slave Mo
2730:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_SMS_PRELOAD_SOURCE_INDEX: Timer index event is used as source of Slave Mode
2731:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2732:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2733:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigSlaveModePreload(TIM_HandleTypeDef *htim, uint32_t Source)
2734:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2735:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2736:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
2737:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_SLAVE_PRELOAD_SOURCE(Source));
2738:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2739:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(htim->Instance->SMCR, TIM_SMCR_SMSPS, Source);
2740:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2741:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2742:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2743:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2744:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Enable preload of Slave Mode Selection bitfield (SMS in SMCR register)
2745:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2746:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2747:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2748:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_EnableSlaveModePreload(TIM_HandleTypeDef *htim)
2749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2750:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2751:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
2752:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2753:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   SET_BIT(htim->Instance->SMCR, TIM_SMCR_SMSPE);
2754:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2756:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2757:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2758:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Disable preload of Slave Mode Selection bitfield (SMS in SMCR register)
2759:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2760:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2761:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2762:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DisableSlaveModePreload(TIM_HandleTypeDef *htim)
2763:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2764:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2765:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
2766:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2767:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   CLEAR_BIT(htim->Instance->SMCR, TIM_SMCR_SMSPE);
2768:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2769:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2770:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2771:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2772:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Enable deadtime preload
2773:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2774:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2776:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_EnableDeadTimePreload(TIM_HandleTypeDef *htim)
2777:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2778:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2779:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
2780:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2781:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   SET_BIT(htim->Instance->DTR2, TIM_DTR2_DTPE);
2782:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2783:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2784:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2785:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2786:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Disable deadtime preload
2787:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2788:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2789:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2790:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DisableDeadTimePreload(TIM_HandleTypeDef *htim)
2791:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2792:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
2794:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2795:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   CLEAR_BIT(htim->Instance->DTR2, TIM_DTR2_DTPE);
2796:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2797:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2798:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2799:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configure deadtime
2801:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2802:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Deadtime Deadtime value
2803:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   This parameter can be a number between Min_Data = 0x00 and Max_Data = 0xFF
2804:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2805:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2806:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigDeadTime(TIM_HandleTypeDef *htim, uint32_t Deadtime)
2807:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2808:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2809:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
2810:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_DEADTIME(Deadtime));
2811:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(htim->Instance->BDTR, TIM_BDTR_DTG, Deadtime);
2813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2814:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2815:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2816:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2817:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configure asymmetrical deadtime
2818:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2819:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  FallingDeadtime Falling edge deadtime value
2820:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   This parameter can be a number between Min_Data = 0x00 and Max_Data = 0xFF
2821:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2822:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2823:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigAsymmetricalDeadTime(TIM_HandleTypeDef *htim, uint32_t FallingDea
2824:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2825:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2826:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
2827:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_DEADTIME(FallingDeadtime));
2828:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2829:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(htim->Instance->DTR2, TIM_DTR2_DTGF, FallingDeadtime);
2830:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2832:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2833:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2834:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Enable asymmetrical deadtime
2835:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2836:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2837:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_EnableAsymmetricalDeadTime(TIM_HandleTypeDef *htim)
2839:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2840:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2841:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
2842:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2843:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   SET_BIT(htim->Instance->DTR2, TIM_DTR2_DTAE);
2844:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2845:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2846:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2847:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Disable asymmetrical deadtime
2849:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2850:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2851:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2852:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DisableAsymmetricalDeadTime(TIM_HandleTypeDef *htim)
2853:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2854:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2855:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
2856:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2857:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   CLEAR_BIT(htim->Instance->DTR2, TIM_DTR2_DTAE);
2858:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2861:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2862:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Configures the encoder index.
2863:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @note   warning in case of encoder mode clock plus direction
2864:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *                    @ref TIM_ENCODERMODE_CLOCKPLUSDIRECTION_X1 or @ref TIM_ENCODERMODE_CLOCKPLUS
2865:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *         Direction must be set to @ref TIM_ENCODERINDEX_DIRECTION_UP_DOWN
2866:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle.
2867:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  sEncoderIndexConfig Encoder index configuration
2868:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2869:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2870:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_ConfigEncoderIndex(TIM_HandleTypeDef *htim,
2871:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                                                TIMEx_EncoderIndexConfigTypeDef *sEncoderIndexConfig
2872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2873:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2874:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
2875:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_POLARITY(sEncoderIndexConfig->Polarity));
2876:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_PRESCALER(sEncoderIndexConfig->Prescaler));
2877:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_FILTER(sEncoderIndexConfig->Filter));
2878:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(sEncoderIndexConfig->FirstIndexEnable));
2879:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_POSITION(sEncoderIndexConfig->Position));
2880:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_DIRECTION(sEncoderIndexConfig->Direction));
2881:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2882:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Process Locked */
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_LOCK(htim);
2884:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2885:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Configures the TIMx External Trigger (ETR) which is used as Index input */
2886:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_ETR_SetConfig(htim->Instance,
2887:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     sEncoderIndexConfig->Prescaler,
2888:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     sEncoderIndexConfig->Polarity,
2889:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     sEncoderIndexConfig->Filter);
2890:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2891:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Configures the encoder index */
2892:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(htim->Instance->ECR,
2893:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****              TIM_ECR_IDIR_Msk | TIM_ECR_FIDX_Msk | TIM_ECR_IPOS_Msk,
2894:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****              (sEncoderIndexConfig->Direction |
2895:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****               ((sEncoderIndexConfig->FirstIndexEnable == ENABLE) ? (0x1U << TIM_ECR_FIDX_Pos) : 0U)
2896:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****               sEncoderIndexConfig->Position |
2897:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****               TIM_ECR_IE));
2898:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   __HAL_UNLOCK(htim);
2900:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2901:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2902:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2903:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2904:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2905:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Enable encoder index
2906:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2907:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2908:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2909:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_EnableEncoderIndex(TIM_HandleTypeDef *htim)
2910:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2911:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2912:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
2913:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2914:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   SET_BIT(htim->Instance->ECR, TIM_ECR_IE);
2915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2916:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2917:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2918:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2919:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Disable encoder index
2920:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2921:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2922:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2923:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DisableEncoderIndex(TIM_HandleTypeDef *htim)
2924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2925:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2926:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
2927:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2928:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   CLEAR_BIT(htim->Instance->ECR, TIM_ECR_IE);
2929:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2931:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2932:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Enable encoder first index
2934:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2935:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2936:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2937:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_EnableEncoderFirstIndex(TIM_HandleTypeDef *htim)
2938:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2940:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
2941:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2942:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   SET_BIT(htim->Instance->ECR, TIM_ECR_FIDX);
2943:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2944:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2945:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2946:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2947:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Disable encoder first index
2948:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2949:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL status
2950:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2951:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_StatusTypeDef HAL_TIMEx_DisableEncoderFirstIndex(TIM_HandleTypeDef *htim)
2952:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2953:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
2954:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
2955:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2956:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   CLEAR_BIT(htim->Instance->ECR, TIM_ECR_FIDX);
2957:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
2958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2959:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2960:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2961:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
2962:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2963:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2964:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions_Group6 Extended Callbacks functions
2965:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief    Extended Callbacks functions
2966:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
2967:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @verbatim
2968:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
2969:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     ##### Extended Callbacks functions #####
2970:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
2971:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
2972:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     This section provides Extended TIM callback functions:
2973:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Timer Commutation callback
2974:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     (+) Timer Break callback
2975:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2976:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @endverbatim
2977:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
2978:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2979:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2980:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2981:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Hall commutation changed callback in non-blocking mode
2982:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2983:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
2984:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2985:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_CommutCallback(TIM_HandleTypeDef *htim)
2986:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
2987:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
2988:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
2989:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
2990:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2991:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_CommutCallback could be implemented in the user file
2992:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
2993:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
2994:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
2995:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Hall commutation changed half complete callback in non-blocking mode
2996:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
2997:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
2998:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
2999:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_CommutHalfCpltCallback(TIM_HandleTypeDef *htim)
3000:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3001:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
3002:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
3003:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3004:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
3005:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_CommutHalfCpltCallback could be implemented in the user file
3006:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
3007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3008:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3009:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3010:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Hall Break detection callback in non-blocking mode
3011:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
3012:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3013:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3014:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim)
3015:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3016:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
3017:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
3018:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3019:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
3020:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_BreakCallback could be implemented in the user file
3021:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
3022:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3023:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3024:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3025:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Hall Break2 detection callback in non blocking mode
3026:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim: TIM handle
3027:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3028:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3029:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_Break2Callback(TIM_HandleTypeDef *htim)
3030:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3031:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
3032:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
3033:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3034:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
3035:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_Break2Callback could be implemented in the user file
3036:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
3037:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3038:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3039:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3040:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Encoder index callback in non-blocking mode
3041:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
3042:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3043:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3044:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_EncoderIndexCallback(TIM_HandleTypeDef *htim)
3045:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3046:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
3047:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
3048:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3049:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
3050:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_EncoderIndexCallback could be implemented in the user file
3051:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
3052:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3053:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3054:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3055:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Direction change callback in non-blocking mode
3056:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
3057:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3058:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3059:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_DirectionChangeCallback(TIM_HandleTypeDef *htim)
3060:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3061:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
3062:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
3063:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3064:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
3065:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_DirectionChangeCallback could be implemented in the user file
3066:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
3067:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3068:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3069:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3070:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Index error callback in non-blocking mode
3071:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
3072:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3073:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3074:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_IndexErrorCallback(TIM_HandleTypeDef *htim)
3075:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3076:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
3077:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
3078:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3079:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
3080:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_IndexErrorCallback could be implemented in the user file
3081:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
3082:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3083:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3084:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3085:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Transition error callback in non-blocking mode
3086:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM handle
3087:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3088:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3089:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** __weak void HAL_TIMEx_TransitionErrorCallback(TIM_HandleTypeDef *htim)
3090:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3091:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
3092:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   UNUSED(htim);
3093:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3094:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
3095:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****             the HAL_TIMEx_TransitionErrorCallback could be implemented in the user file
3096:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****    */
3097:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3098:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3099:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3100:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
3101:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3102:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3103:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Exported_Functions_Group7 Extended Peripheral State functions
3104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief    Extended Peripheral State functions
3105:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *
3106:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @verbatim
3107:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
3108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                 ##### Extended Peripheral State functions #####
3109:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   ==============================================================================
3110:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   [..]
3111:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     This subsection permits to get in run-time the status of the peripheral
3112:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     and the data flow.
3113:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3114:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** @endverbatim
3115:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
3116:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3117:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3118:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3119:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Return the TIM Hall Sensor interface handle state.
3120:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  htim TIM Hall Sensor handle
3121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval HAL state
3122:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3123:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** HAL_TIM_StateTypeDef HAL_TIMEx_HallSensor_GetState(TIM_HandleTypeDef *htim)
3124:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return htim->State;
3126:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3127:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3128:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3129:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
3130:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3131:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3132:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3133:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @}
3134:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3135:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3136:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /* Private functions ---------------------------------------------------------*/
3137:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /** @defgroup TIMEx_Private_Functions TIMEx Private Functions
3138:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @{
3139:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3140:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3141:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3142:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  TIM DMA Commutation callback.
3143:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  hdma pointer to DMA handle.
3144:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3145:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3146:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** void TIMEx_DMACommutationCplt(DMA_HandleTypeDef *hdma)
3147:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3148:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
3149:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3150:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the htim state */
3151:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
3152:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3153:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
3154:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->CommutationCallback(htim);
3155:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #else
3156:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   HAL_TIMEx_CommutCallback(htim);
3157:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
3158:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3159:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3160:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3161:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  TIM DMA Commutation half complete callback.
3162:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  hdma pointer to DMA handle.
3163:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3164:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3165:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** void TIMEx_DMACommutationHalfCplt(DMA_HandleTypeDef *hdma)
3166:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
3167:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
3168:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3169:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Change the htim state */
3170:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->State = HAL_TIM_STATE_READY;
3171:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3172:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
3173:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->CommutationHalfCpltCallback(htim);
3174:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #else
3175:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   HAL_TIMEx_CommutHalfCpltCallback(htim);
3176:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
3177:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
3178:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3179:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3180:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** /**
3181:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @brief  Enables or disables the TIM Capture Compare Channel xN.
3182:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  TIMx to select the TIM peripheral
3183:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  Channel specifies the TIM Channel
3184:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be one of the following values:
3185:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_1: TIM Channel 1
3186:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_2: TIM Channel 2
3187:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_3: TIM Channel 3
3188:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *            @arg TIM_CHANNEL_4: TIM Channel 4
3189:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @param  ChannelNState specifies the TIM Channel CCxNE bit new state.
3190:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   *          This parameter can be: TIM_CCxN_ENABLE or TIM_CCxN_Disable.
3191:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   * @retval None
3192:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   */
3193:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** static void TIM_CCxNChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelNState)
3194:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** {
  29              		.loc 1 3194 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
3195:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmp;
  33              		.loc 1 3195 3 view .LVU1
3196:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3197:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmp = TIM_CCER_CC1NE << (Channel & 0x1FU); /* 0x1FU = 31 bits max shift */
  34              		.loc 1 3197 3 view .LVU2
3198:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3199:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the CCxNE Bit */
3200:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIMx->CCER &=  ~tmp;
  35              		.loc 1 3200 14 is_stmt 0 view .LVU3
  36 0000 036A     		ldr	r3, [r0, #32]
3197:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  37              		.loc 1 3197 36 view .LVU4
  38 0002 01F01F01 		and	r1, r1, #31
  39              	.LVL1:
  40              		.loc 1 3200 3 is_stmt 1 view .LVU5
3194:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmp;
  41              		.loc 1 3194 1 is_stmt 0 view .LVU6
  42 0006 10B5     		push	{r4, lr}
  43              		.cfi_def_cfa_offset 8
  44              		.cfi_offset 4, -8
  45              		.cfi_offset 14, -4
3197:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  46              		.loc 1 3197 7 view .LVU7
  47 0008 0424     		movs	r4, #4
  48 000a 8C40     		lsls	r4, r4, r1
  49              	.LVL2:
  50              		.loc 1 3200 14 view .LVU8
  51 000c 23EA0403 		bic	r3, r3, r4
  52 0010 0362     		str	r3, [r0, #32]
3201:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
3202:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set or reset the CCxNE Bit */
3203:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIMx->CCER |= (uint32_t)(ChannelNState << (Channel & 0x1FU)); /* 0x1FU = 31 bits max shift */
  53              		.loc 1 3203 3 is_stmt 1 view .LVU9
  54              		.loc 1 3203 14 is_stmt 0 view .LVU10
  55 0012 036A     		ldr	r3, [r0, #32]
  56              		.loc 1 3203 42 view .LVU11
  57 0014 8A40     		lsls	r2, r2, r1
  58              	.LVL3:
  59              		.loc 1 3203 14 view .LVU12
  60 0016 1A43     		orrs	r2, r2, r3
  61 0018 0262     		str	r2, [r0, #32]
3204:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
  62              		.loc 1 3204 1 view .LVU13
  63 001a 10BD     		pop	{r4, pc}
  64              		.loc 1 3204 1 view .LVU14
  65              		.cfi_endproc
  66              	.LFE390:
  68              		.section	.text.HAL_TIMEx_HallSensor_MspInit,"ax",%progbits
  69              		.align	1
  70              		.weak	HAL_TIMEx_HallSensor_MspInit
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  76              	HAL_TIMEx_HallSensor_MspInit:
  77              	.LVL4:
  78              	.LFB327:
 278:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Prevent unused argument(s) compilation warning */
  79              		.loc 1 278 1 is_stmt 1 view -0
  80              		.cfi_startproc
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
 280:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  84              		.loc 1 280 3 view .LVU16
 285:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
  85              		.loc 1 285 1 is_stmt 0 view .LVU17
  86 0000 7047     		bx	lr
  87              		.cfi_endproc
  88              	.LFE327:
  90              		.section	.text.HAL_TIMEx_HallSensor_Init,"ax",%progbits
  91              		.align	1
  92              		.global	HAL_TIMEx_HallSensor_Init
  93              		.syntax unified
  94              		.thumb
  95              		.thumb_func
  96              		.fpu fpv4-sp-d16
  98              	HAL_TIMEx_HallSensor_Init:
  99              	.LVL5:
 100              	.LFB325:
 150:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_OC_InitTypeDef OC_Config;
 101              		.loc 1 150 1 is_stmt 1 view -0
 102              		.cfi_startproc
 103              		@ args = 0, pretend = 0, frame = 32
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 151:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 105              		.loc 1 151 3 view .LVU19
 154:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 106              		.loc 1 154 3 view .LVU20
 150:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_OC_InitTypeDef OC_Config;
 107              		.loc 1 150 1 is_stmt 0 view .LVU21
 108 0000 70B5     		push	{r4, r5, r6, lr}
 109              		.cfi_def_cfa_offset 16
 110              		.cfi_offset 4, -16
 111              		.cfi_offset 5, -12
 112              		.cfi_offset 6, -8
 113              		.cfi_offset 14, -4
 114 0002 0E46     		mov	r6, r1
 115 0004 88B0     		sub	sp, sp, #32
 116              		.cfi_def_cfa_offset 48
 154:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 117              		.loc 1 154 6 view .LVU22
 118 0006 0546     		mov	r5, r0
 119 0008 0028     		cmp	r0, #0
 120 000a 54D0     		beq	.L6
 160:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
 121              		.loc 1 160 3 is_stmt 1 view .LVU23
 161:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
 122              		.loc 1 161 3 view .LVU24
 162:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
 123              		.loc 1 162 3 view .LVU25
 163:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_IC_POLARITY(sConfig->IC1Polarity));
 124              		.loc 1 163 3 view .LVU26
 164:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC1Prescaler));
 125              		.loc 1 164 3 view .LVU27
 165:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_IC_FILTER(sConfig->IC1Filter));
 126              		.loc 1 165 3 view .LVU28
 166:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 127              		.loc 1 166 3 view .LVU29
 168:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 128              		.loc 1 168 3 view .LVU30
 168:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 129              		.loc 1 168 11 is_stmt 0 view .LVU31
 130 000c 90F83D30 		ldrb	r3, [r0, #61]	@ zero_extendqisi2
 168:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 131              		.loc 1 168 6 view .LVU32
 132 0010 03F0FF02 		and	r2, r3, #255
 133 0014 1BB9     		cbnz	r3, .L5
 171:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 134              		.loc 1 171 5 is_stmt 1 view .LVU33
 171:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 135              		.loc 1 171 16 is_stmt 0 view .LVU34
 136 0016 80F83C20 		strb	r2, [r0, #60]
 185:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
 137              		.loc 1 185 5 is_stmt 1 view .LVU35
 138 001a FFF7FEFF 		bl	HAL_TIMEx_HallSensor_MspInit
 139              	.LVL6:
 140              	.L5:
 190:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 141              		.loc 1 190 3 view .LVU36
 190:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 142              		.loc 1 190 15 is_stmt 0 view .LVU37
 143 001e 0223     		movs	r3, #2
 144 0020 85F83D30 		strb	r3, [r5, #61]
 193:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 145              		.loc 1 193 3 is_stmt 1 view .LVU38
 146 0024 291D     		adds	r1, r5, #4
 147 0026 2868     		ldr	r0, [r5]
 148 0028 FFF7FEFF 		bl	TIM_Base_SetConfig
 149              	.LVL7:
 196:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 150              		.loc 1 196 3 view .LVU39
 151 002c B368     		ldr	r3, [r6, #8]
 152 002e 3168     		ldr	r1, [r6]
 153 0030 2868     		ldr	r0, [r5]
 154 0032 0322     		movs	r2, #3
 155 0034 FFF7FEFF 		bl	TIM_TI1_SetConfig
 156              	.LVL8:
 199:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the IC1PSC value */
 157              		.loc 1 199 3 view .LVU40
 199:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the IC1PSC value */
 158              		.loc 1 199 7 is_stmt 0 view .LVU41
 159 0038 2868     		ldr	r0, [r5]
 201:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 160              		.loc 1 201 25 view .LVU42
 161 003a 7268     		ldr	r2, [r6, #4]
 199:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the IC1PSC value */
 162              		.loc 1 199 25 view .LVU43
 163 003c 8369     		ldr	r3, [r0, #24]
 164 003e 23F00C03 		bic	r3, r3, #12
 165 0042 8361     		str	r3, [r0, #24]
 201:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 166              		.loc 1 201 3 is_stmt 1 view .LVU44
 201:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 167              		.loc 1 201 25 is_stmt 0 view .LVU45
 168 0044 8369     		ldr	r3, [r0, #24]
 169 0046 1343     		orrs	r3, r3, r2
 170 0048 8361     		str	r3, [r0, #24]
 204:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 171              		.loc 1 204 3 is_stmt 1 view .LVU46
 204:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 172              		.loc 1 204 23 is_stmt 0 view .LVU47
 173 004a 4368     		ldr	r3, [r0, #4]
 174 004c 43F08003 		orr	r3, r3, #128
 175 0050 4360     		str	r3, [r0, #4]
 207:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR |= TIM_TS_TI1F_ED;
 176              		.loc 1 207 3 is_stmt 1 view .LVU48
 207:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR |= TIM_TS_TI1F_ED;
 177              		.loc 1 207 24 is_stmt 0 view .LVU49
 178 0052 8368     		ldr	r3, [r0, #8]
 179 0054 23F44013 		bic	r3, r3, #3145728
 180 0058 23F07003 		bic	r3, r3, #112
 181 005c 8360     		str	r3, [r0, #8]
 208:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 182              		.loc 1 208 3 is_stmt 1 view .LVU50
 208:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 183              		.loc 1 208 24 is_stmt 0 view .LVU51
 184 005e 8368     		ldr	r3, [r0, #8]
 185 0060 43F04003 		orr	r3, r3, #64
 186 0064 8360     		str	r3, [r0, #8]
 211:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR |= TIM_SLAVEMODE_RESET;
 187              		.loc 1 211 3 is_stmt 1 view .LVU52
 211:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->SMCR |= TIM_SLAVEMODE_RESET;
 188              		.loc 1 211 24 is_stmt 0 view .LVU53
 189 0066 8368     		ldr	r3, [r0, #8]
 190 0068 23F48033 		bic	r3, r3, #65536
 191 006c 23F00703 		bic	r3, r3, #7
 192 0070 8360     		str	r3, [r0, #8]
 212:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 193              		.loc 1 212 3 is_stmt 1 view .LVU54
 212:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 194              		.loc 1 212 24 is_stmt 0 view .LVU55
 195 0072 8368     		ldr	r3, [r0, #8]
 196 0074 43F00403 		orr	r3, r3, #4
 197 0078 8360     		str	r3, [r0, #8]
 215:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCIdleState = TIM_OCIDLESTATE_RESET;
 198              		.loc 1 215 3 is_stmt 1 view .LVU56
 217:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCNIdleState = TIM_OCNIDLESTATE_RESET;
 199              		.loc 1 217 20 is_stmt 0 view .LVU57
 200 007a 7023     		movs	r3, #112
 215:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCIdleState = TIM_OCIDLESTATE_RESET;
 201              		.loc 1 215 24 view .LVU58
 202 007c 0024     		movs	r4, #0
 217:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCNIdleState = TIM_OCNIDLESTATE_RESET;
 203              		.loc 1 217 20 view .LVU59
 204 007e 0193     		str	r3, [sp, #4]
 223:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 205              		.loc 1 223 3 view .LVU60
 206 0080 01A9     		add	r1, sp, #4
 221:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 207              		.loc 1 221 19 view .LVU61
 208 0082 F368     		ldr	r3, [r6, #12]
 209 0084 0293     		str	r3, [sp, #8]
 216:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCMode = TIM_OCMODE_PWM2;
 210              		.loc 1 216 25 view .LVU62
 211 0086 CDE90544 		strd	r4, r4, [sp, #20]
 217:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCNIdleState = TIM_OCNIDLESTATE_RESET;
 212              		.loc 1 217 3 is_stmt 1 view .LVU63
 218:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCNPolarity = TIM_OCNPOLARITY_HIGH;
 213              		.loc 1 218 3 view .LVU64
 218:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCNPolarity = TIM_OCNPOLARITY_HIGH;
 214              		.loc 1 218 26 is_stmt 0 view .LVU65
 215 008a 0794     		str	r4, [sp, #28]
 219:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.OCPolarity = TIM_OCPOLARITY_HIGH;
 216              		.loc 1 219 3 is_stmt 1 view .LVU66
 220:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   OC_Config.Pulse = sConfig->Commutation_Delay;
 217              		.loc 1 220 24 is_stmt 0 view .LVU67
 218 008c CDE90344 		strd	r4, r4, [sp, #12]
 221:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 219              		.loc 1 221 3 is_stmt 1 view .LVU68
 223:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 220              		.loc 1 223 3 view .LVU69
 221 0090 FFF7FEFF 		bl	TIM_OC2_SetConfig
 222              	.LVL9:
 227:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_TRGO_OC2REF;
 223              		.loc 1 227 3 view .LVU70
 227:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_TRGO_OC2REF;
 224              		.loc 1 227 7 is_stmt 0 view .LVU71
 225 0094 2A68     		ldr	r2, [r5]
 227:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= TIM_TRGO_OC2REF;
 226              		.loc 1 227 23 view .LVU72
 227 0096 5368     		ldr	r3, [r2, #4]
 228 0098 23F00073 		bic	r3, r3, #33554432
 229 009c 23F07003 		bic	r3, r3, #112
 230 00a0 5360     		str	r3, [r2, #4]
 228:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 231              		.loc 1 228 3 is_stmt 1 view .LVU73
 228:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 232              		.loc 1 228 23 is_stmt 0 view .LVU74
 233 00a2 5368     		ldr	r3, [r2, #4]
 234 00a4 43F05003 		orr	r3, r3, #80
 235 00a8 5360     		str	r3, [r2, #4]
 231:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 236              		.loc 1 231 3 is_stmt 1 view .LVU75
 231:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 237              		.loc 1 231 15 is_stmt 0 view .LVU76
 238 00aa 0123     		movs	r3, #1
 239 00ac 85F83D30 		strb	r3, [r5, #61]
 233:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 240              		.loc 1 233 3 is_stmt 1 view .LVU77
 233:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 241              		.loc 1 233 10 is_stmt 0 view .LVU78
 242 00b0 2046     		mov	r0, r4
 243              	.L4:
 234:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 244              		.loc 1 234 1 view .LVU79
 245 00b2 08B0     		add	sp, sp, #32
 246              		.cfi_remember_state
 247              		.cfi_def_cfa_offset 16
 248              		@ sp needed
 249 00b4 70BD     		pop	{r4, r5, r6, pc}
 250              	.LVL10:
 251              	.L6:
 252              		.cfi_restore_state
 156:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 253              		.loc 1 156 12 view .LVU80
 254 00b6 0120     		movs	r0, #1
 255              	.LVL11:
 156:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 256              		.loc 1 156 12 view .LVU81
 257 00b8 FBE7     		b	.L4
 258              		.cfi_endproc
 259              	.LFE325:
 261              		.section	.text.HAL_TIMEx_HallSensor_MspDeInit,"ax",%progbits
 262              		.align	1
 263              		.weak	HAL_TIMEx_HallSensor_MspDeInit
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu fpv4-sp-d16
 269              	HAL_TIMEx_HallSensor_MspDeInit:
 270              	.LFB392:
 271              		.cfi_startproc
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275 0000 7047     		bx	lr
 276              		.cfi_endproc
 277              	.LFE392:
 279              		.section	.text.HAL_TIMEx_HallSensor_DeInit,"ax",%progbits
 280              		.align	1
 281              		.global	HAL_TIMEx_HallSensor_DeInit
 282              		.syntax unified
 283              		.thumb
 284              		.thumb_func
 285              		.fpu fpv4-sp-d16
 287              	HAL_TIMEx_HallSensor_DeInit:
 288              	.LVL12:
 289              	.LFB326:
 242:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 290              		.loc 1 242 1 is_stmt 1 view -0
 291              		.cfi_startproc
 292              		@ args = 0, pretend = 0, frame = 0
 293              		@ frame_needed = 0, uses_anonymous_args = 0
 244:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 294              		.loc 1 244 3 view .LVU83
 246:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 295              		.loc 1 246 3 view .LVU84
 246:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 296              		.loc 1 246 15 is_stmt 0 view .LVU85
 297 0000 0223     		movs	r3, #2
 242:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 298              		.loc 1 242 1 view .LVU86
 299 0002 10B5     		push	{r4, lr}
 300              		.cfi_def_cfa_offset 8
 301              		.cfi_offset 4, -8
 302              		.cfi_offset 14, -4
 246:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 303              		.loc 1 246 15 view .LVU87
 304 0004 80F83D30 		strb	r3, [r0, #61]
 249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 305              		.loc 1 249 3 is_stmt 1 view .LVU88
 249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 306              		.loc 1 249 3 view .LVU89
 307 0008 0368     		ldr	r3, [r0]
 308 000a 196A     		ldr	r1, [r3, #32]
 309 000c 41F21112 		movw	r2, #4369
 310 0010 1142     		tst	r1, r2
 242:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 311              		.loc 1 242 1 is_stmt 0 view .LVU90
 312 0012 0446     		mov	r4, r0
 249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 313              		.loc 1 249 3 view .LVU91
 314 0014 08D1     		bne	.L9
 249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 315              		.loc 1 249 3 is_stmt 1 discriminator 1 view .LVU92
 316 0016 196A     		ldr	r1, [r3, #32]
 317 0018 44F24442 		movw	r2, #17476
 318 001c 1142     		tst	r1, r2
 249:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 319              		.loc 1 249 3 discriminator 1 view .LVU93
 320 001e 02BF     		ittt	eq
 321 0020 1A68     		ldreq	r2, [r3]
 322 0022 22F00102 		biceq	r2, r2, #1
 323 0026 1A60     		streq	r2, [r3]
 324              	.L9:
 260:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
 325              		.loc 1 260 3 view .LVU94
 326 0028 2046     		mov	r0, r4
 327              	.LVL13:
 260:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
 328              		.loc 1 260 3 is_stmt 0 view .LVU95
 329 002a FFF7FEFF 		bl	HAL_TIMEx_HallSensor_MspDeInit
 330              	.LVL14:
 264:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 331              		.loc 1 264 3 is_stmt 1 view .LVU96
 264:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 332              		.loc 1 264 15 is_stmt 0 view .LVU97
 333 002e 0020     		movs	r0, #0
 334 0030 84F83D00 		strb	r0, [r4, #61]
 267:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 335              		.loc 1 267 3 is_stmt 1 view .LVU98
 267:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 336              		.loc 1 267 3 view .LVU99
 337 0034 84F83C00 		strb	r0, [r4, #60]
 269:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 338              		.loc 1 269 3 view .LVU100
 270:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 339              		.loc 1 270 1 is_stmt 0 view .LVU101
 340 0038 10BD     		pop	{r4, pc}
 270:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 341              		.loc 1 270 1 view .LVU102
 342              		.cfi_endproc
 343              	.LFE326:
 345              		.section	.text.HAL_TIMEx_HallSensor_Start,"ax",%progbits
 346              		.align	1
 347              		.global	HAL_TIMEx_HallSensor_Start
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 353              	HAL_TIMEx_HallSensor_Start:
 354              	.LVL15:
 355              	.LFB329:
 308:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 356              		.loc 1 308 1 is_stmt 1 view -0
 357              		.cfi_startproc
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 309:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 360              		.loc 1 309 3 view .LVU104
 312:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 361              		.loc 1 312 3 view .LVU105
 316:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 362              		.loc 1 316 3 view .LVU106
 308:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 363              		.loc 1 308 1 is_stmt 0 view .LVU107
 364 0000 10B5     		push	{r4, lr}
 365              		.cfi_def_cfa_offset 8
 366              		.cfi_offset 4, -8
 367              		.cfi_offset 14, -4
 308:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 368              		.loc 1 308 1 view .LVU108
 369 0002 0446     		mov	r4, r0
 316:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 370              		.loc 1 316 3 view .LVU109
 371 0004 0122     		movs	r2, #1
 372 0006 0021     		movs	r1, #0
 373 0008 0068     		ldr	r0, [r0]
 374              	.LVL16:
 316:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 375              		.loc 1 316 3 view .LVU110
 376 000a FFF7FEFF 		bl	TIM_CCxChannelCmd
 377              	.LVL17:
 319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 378              		.loc 1 319 3 is_stmt 1 view .LVU111
 319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 379              		.loc 1 319 17 is_stmt 0 view .LVU112
 380 000e 2268     		ldr	r2, [r4]
 319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 381              		.loc 1 319 11 view .LVU113
 382 0010 064B     		ldr	r3, .L18
 319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 383              		.loc 1 319 27 view .LVU114
 384 0012 9168     		ldr	r1, [r2, #8]
 319:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 385              		.loc 1 319 11 view .LVU115
 386 0014 0B40     		ands	r3, r3, r1
 387              	.LVL18:
 320:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 388              		.loc 1 320 3 is_stmt 1 view .LVU116
 320:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 389              		.loc 1 320 6 is_stmt 0 view .LVU117
 390 0016 062B     		cmp	r3, #6
 391 0018 06D0     		beq	.L11
 320:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 392              		.loc 1 320 7 discriminator 1 view .LVU118
 393 001a B3F5803F 		cmp	r3, #65536
 322:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 394              		.loc 1 322 5 is_stmt 1 discriminator 1 view .LVU119
 395 001e 1EBF     		ittt	ne
 396 0020 1368     		ldrne	r3, [r2]
 397              	.LVL19:
 322:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 398              		.loc 1 322 5 is_stmt 0 discriminator 1 view .LVU120
 399 0022 43F00103 		orrne	r3, r3, #1
 400 0026 1360     		strne	r3, [r2]
 401              	.L11:
 326:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 402              		.loc 1 326 3 is_stmt 1 view .LVU121
 327:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 403              		.loc 1 327 1 is_stmt 0 view .LVU122
 404 0028 0020     		movs	r0, #0
 405 002a 10BD     		pop	{r4, pc}
 406              	.LVL20:
 407              	.L19:
 327:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 408              		.loc 1 327 1 view .LVU123
 409              		.align	2
 410              	.L18:
 411 002c 07000100 		.word	65543
 412              		.cfi_endproc
 413              	.LFE329:
 415              		.section	.text.HAL_TIMEx_HallSensor_Stop,"ax",%progbits
 416              		.align	1
 417              		.global	HAL_TIMEx_HallSensor_Stop
 418              		.syntax unified
 419              		.thumb
 420              		.thumb_func
 421              		.fpu fpv4-sp-d16
 423              	HAL_TIMEx_HallSensor_Stop:
 424              	.LVL21:
 425              	.LFB330:
 335:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 426              		.loc 1 335 1 is_stmt 1 view -0
 427              		.cfi_startproc
 428              		@ args = 0, pretend = 0, frame = 0
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 337:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 430              		.loc 1 337 3 view .LVU125
 341:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 431              		.loc 1 341 3 view .LVU126
 432 0000 0022     		movs	r2, #0
 335:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 433              		.loc 1 335 1 is_stmt 0 view .LVU127
 434 0002 10B5     		push	{r4, lr}
 435              		.cfi_def_cfa_offset 8
 436              		.cfi_offset 4, -8
 437              		.cfi_offset 14, -4
 335:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 438              		.loc 1 335 1 view .LVU128
 439 0004 0446     		mov	r4, r0
 341:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 440              		.loc 1 341 3 view .LVU129
 441 0006 1146     		mov	r1, r2
 442 0008 0068     		ldr	r0, [r0]
 443              	.LVL22:
 341:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 444              		.loc 1 341 3 view .LVU130
 445 000a FFF7FEFF 		bl	TIM_CCxChannelCmd
 446              	.LVL23:
 344:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 447              		.loc 1 344 3 is_stmt 1 view .LVU131
 344:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 448              		.loc 1 344 3 view .LVU132
 449 000e 2368     		ldr	r3, [r4]
 450 0010 196A     		ldr	r1, [r3, #32]
 451 0012 41F21112 		movw	r2, #4369
 452 0016 1142     		tst	r1, r2
 453 0018 08D1     		bne	.L21
 344:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 454              		.loc 1 344 3 discriminator 1 view .LVU133
 455 001a 196A     		ldr	r1, [r3, #32]
 456 001c 44F24442 		movw	r2, #17476
 457 0020 1142     		tst	r1, r2
 344:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 458              		.loc 1 344 3 discriminator 1 view .LVU134
 459 0022 02BF     		ittt	eq
 460 0024 1A68     		ldreq	r2, [r3]
 461 0026 22F00102 		biceq	r2, r2, #1
 462 002a 1A60     		streq	r2, [r3]
 463              	.L21:
 347:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 464              		.loc 1 347 3 view .LVU135
 348:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 465              		.loc 1 348 1 is_stmt 0 view .LVU136
 466 002c 0020     		movs	r0, #0
 467 002e 10BD     		pop	{r4, pc}
 348:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 468              		.loc 1 348 1 view .LVU137
 469              		.cfi_endproc
 470              	.LFE330:
 472              		.section	.text.HAL_TIMEx_HallSensor_Start_IT,"ax",%progbits
 473              		.align	1
 474              		.global	HAL_TIMEx_HallSensor_Start_IT
 475              		.syntax unified
 476              		.thumb
 477              		.thumb_func
 478              		.fpu fpv4-sp-d16
 480              	HAL_TIMEx_HallSensor_Start_IT:
 481              	.LVL24:
 482              	.LFB331:
 356:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 483              		.loc 1 356 1 is_stmt 1 view -0
 484              		.cfi_startproc
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 357:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 487              		.loc 1 357 3 view .LVU139
 360:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 488              		.loc 1 360 3 view .LVU140
 363:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 489              		.loc 1 363 3 view .LVU141
 356:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 490              		.loc 1 356 1 is_stmt 0 view .LVU142
 491 0000 10B5     		push	{r4, lr}
 492              		.cfi_def_cfa_offset 8
 493              		.cfi_offset 4, -8
 494              		.cfi_offset 14, -4
 356:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 495              		.loc 1 356 1 view .LVU143
 496 0002 0446     		mov	r4, r0
 363:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 497              		.loc 1 363 3 view .LVU144
 498 0004 0068     		ldr	r0, [r0]
 499              	.LVL25:
 363:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 500              		.loc 1 363 3 view .LVU145
 501 0006 C368     		ldr	r3, [r0, #12]
 502 0008 43F00203 		orr	r3, r3, #2
 503 000c C360     		str	r3, [r0, #12]
 367:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 504              		.loc 1 367 3 is_stmt 1 view .LVU146
 505 000e 0122     		movs	r2, #1
 506 0010 0021     		movs	r1, #0
 507 0012 FFF7FEFF 		bl	TIM_CCxChannelCmd
 508              	.LVL26:
 370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 509              		.loc 1 370 3 view .LVU147
 370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 510              		.loc 1 370 17 is_stmt 0 view .LVU148
 511 0016 2268     		ldr	r2, [r4]
 370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 512              		.loc 1 370 11 view .LVU149
 513 0018 064B     		ldr	r3, .L30
 370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 514              		.loc 1 370 27 view .LVU150
 515 001a 9168     		ldr	r1, [r2, #8]
 370:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 516              		.loc 1 370 11 view .LVU151
 517 001c 0B40     		ands	r3, r3, r1
 518              	.LVL27:
 371:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 519              		.loc 1 371 3 is_stmt 1 view .LVU152
 371:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 520              		.loc 1 371 6 is_stmt 0 view .LVU153
 521 001e 062B     		cmp	r3, #6
 522 0020 06D0     		beq	.L23
 371:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 523              		.loc 1 371 7 discriminator 1 view .LVU154
 524 0022 B3F5803F 		cmp	r3, #65536
 373:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 525              		.loc 1 373 5 is_stmt 1 discriminator 1 view .LVU155
 526 0026 1EBF     		ittt	ne
 527 0028 1368     		ldrne	r3, [r2]
 528              	.LVL28:
 373:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 529              		.loc 1 373 5 is_stmt 0 discriminator 1 view .LVU156
 530 002a 43F00103 		orrne	r3, r3, #1
 531 002e 1360     		strne	r3, [r2]
 532              	.L23:
 377:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 533              		.loc 1 377 3 is_stmt 1 view .LVU157
 378:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 534              		.loc 1 378 1 is_stmt 0 view .LVU158
 535 0030 0020     		movs	r0, #0
 536 0032 10BD     		pop	{r4, pc}
 537              	.LVL29:
 538              	.L31:
 378:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 539              		.loc 1 378 1 view .LVU159
 540              		.align	2
 541              	.L30:
 542 0034 07000100 		.word	65543
 543              		.cfi_endproc
 544              	.LFE331:
 546              		.section	.text.HAL_TIMEx_HallSensor_Stop_IT,"ax",%progbits
 547              		.align	1
 548              		.global	HAL_TIMEx_HallSensor_Stop_IT
 549              		.syntax unified
 550              		.thumb
 551              		.thumb_func
 552              		.fpu fpv4-sp-d16
 554              	HAL_TIMEx_HallSensor_Stop_IT:
 555              	.LVL30:
 556              	.LFB332:
 386:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 557              		.loc 1 386 1 is_stmt 1 view -0
 558              		.cfi_startproc
 559              		@ args = 0, pretend = 0, frame = 0
 560              		@ frame_needed = 0, uses_anonymous_args = 0
 388:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 561              		.loc 1 388 3 view .LVU161
 392:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 562              		.loc 1 392 3 view .LVU162
 563 0000 0022     		movs	r2, #0
 386:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 564              		.loc 1 386 1 is_stmt 0 view .LVU163
 565 0002 10B5     		push	{r4, lr}
 566              		.cfi_def_cfa_offset 8
 567              		.cfi_offset 4, -8
 568              		.cfi_offset 14, -4
 386:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 569              		.loc 1 386 1 view .LVU164
 570 0004 0446     		mov	r4, r0
 392:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 571              		.loc 1 392 3 view .LVU165
 572 0006 1146     		mov	r1, r2
 573 0008 0068     		ldr	r0, [r0]
 574              	.LVL31:
 392:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 575              		.loc 1 392 3 view .LVU166
 576 000a FFF7FEFF 		bl	TIM_CCxChannelCmd
 577              	.LVL32:
 395:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 578              		.loc 1 395 3 is_stmt 1 view .LVU167
 579 000e 2368     		ldr	r3, [r4]
 580 0010 DA68     		ldr	r2, [r3, #12]
 581 0012 22F00202 		bic	r2, r2, #2
 582 0016 DA60     		str	r2, [r3, #12]
 398:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 583              		.loc 1 398 3 view .LVU168
 398:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 584              		.loc 1 398 3 view .LVU169
 585 0018 196A     		ldr	r1, [r3, #32]
 586 001a 41F21112 		movw	r2, #4369
 587 001e 1142     		tst	r1, r2
 588 0020 08D1     		bne	.L33
 398:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 589              		.loc 1 398 3 discriminator 1 view .LVU170
 590 0022 196A     		ldr	r1, [r3, #32]
 591 0024 44F24442 		movw	r2, #17476
 592 0028 1142     		tst	r1, r2
 398:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 593              		.loc 1 398 3 discriminator 1 view .LVU171
 594 002a 02BF     		ittt	eq
 595 002c 1A68     		ldreq	r2, [r3]
 596 002e 22F00102 		biceq	r2, r2, #1
 597 0032 1A60     		streq	r2, [r3]
 598              	.L33:
 401:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 599              		.loc 1 401 3 view .LVU172
 402:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 600              		.loc 1 402 1 is_stmt 0 view .LVU173
 601 0034 0020     		movs	r0, #0
 602 0036 10BD     		pop	{r4, pc}
 402:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 603              		.loc 1 402 1 view .LVU174
 604              		.cfi_endproc
 605              	.LFE332:
 607              		.section	.text.HAL_TIMEx_HallSensor_Start_DMA,"ax",%progbits
 608              		.align	1
 609              		.global	HAL_TIMEx_HallSensor_Start_DMA
 610              		.syntax unified
 611              		.thumb
 612              		.thumb_func
 613              		.fpu fpv4-sp-d16
 615              	HAL_TIMEx_HallSensor_Start_DMA:
 616              	.LVL33:
 617              	.LFB333:
 412:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 618              		.loc 1 412 1 is_stmt 1 view -0
 619              		.cfi_startproc
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 413:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 622              		.loc 1 413 3 view .LVU176
 416:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 623              		.loc 1 416 3 view .LVU177
 418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 624              		.loc 1 418 3 view .LVU178
 412:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 625              		.loc 1 412 1 is_stmt 0 view .LVU179
 626 0000 70B5     		push	{r4, r5, r6, lr}
 627              		.cfi_def_cfa_offset 16
 628              		.cfi_offset 4, -16
 629              		.cfi_offset 5, -12
 630              		.cfi_offset 6, -8
 631              		.cfi_offset 14, -4
 412:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 632              		.loc 1 412 1 view .LVU180
 633 0002 0446     		mov	r4, r0
 418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 634              		.loc 1 418 11 view .LVU181
 635 0004 90F83D00 		ldrb	r0, [r0, #61]	@ zero_extendqisi2
 636              	.LVL34:
 418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 637              		.loc 1 418 11 view .LVU182
 638 0008 C0B2     		uxtb	r0, r0
 418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 639              		.loc 1 418 6 view .LVU183
 640 000a 0228     		cmp	r0, #2
 412:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 641              		.loc 1 412 1 view .LVU184
 642 000c 0D46     		mov	r5, r1
 643 000e 1646     		mov	r6, r2
 418:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 644              		.loc 1 418 6 view .LVU185
 645 0010 06D0     		beq	.L35
 422:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 646              		.loc 1 422 8 is_stmt 1 view .LVU186
 422:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 647              		.loc 1 422 16 is_stmt 0 view .LVU187
 648 0012 94F83D30 		ldrb	r3, [r4, #61]	@ zero_extendqisi2
 422:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 649              		.loc 1 422 11 view .LVU188
 650 0016 012B     		cmp	r3, #1
 651 0018 06D1     		bne	.L36
 424:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 652              		.loc 1 424 5 is_stmt 1 view .LVU189
 424:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 653              		.loc 1 424 8 is_stmt 0 view .LVU190
 654 001a 11B9     		cbnz	r1, .L37
 424:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 655              		.loc 1 424 33 discriminator 1 view .LVU191
 656 001c 0AB1     		cbz	r2, .L37
 657              	.LVL35:
 658              	.L38:
 426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 659              		.loc 1 426 14 view .LVU192
 660 001e 0120     		movs	r0, #1
 661              	.L35:
 464:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 662              		.loc 1 464 1 view .LVU193
 663 0020 70BD     		pop	{r4, r5, r6, pc}
 664              	.LVL36:
 665              	.L37:
 430:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 666              		.loc 1 430 7 is_stmt 1 view .LVU194
 430:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 667              		.loc 1 430 19 is_stmt 0 view .LVU195
 668 0022 0223     		movs	r3, #2
 669 0024 84F83D30 		strb	r3, [r4, #61]
 670              	.L36:
 436:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Enable the Input Capture channel 1
 671              		.loc 1 436 3 is_stmt 1 view .LVU196
 439:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 672              		.loc 1 439 3 view .LVU197
 673 0028 0122     		movs	r2, #1
 674              	.LVL37:
 439:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 675              		.loc 1 439 3 is_stmt 0 view .LVU198
 676 002a 0021     		movs	r1, #0
 677              	.LVL38:
 439:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 678              		.loc 1 439 3 view .LVU199
 679 002c 2068     		ldr	r0, [r4]
 680 002e FFF7FEFF 		bl	TIM_CCxChannelCmd
 681              	.LVL39:
 442:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
 682              		.loc 1 442 3 is_stmt 1 view .LVU200
 442:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
 683              		.loc 1 442 13 is_stmt 0 view .LVU201
 684 0032 606A     		ldr	r0, [r4, #36]
 442:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
 685              		.loc 1 442 48 view .LVU202
 686 0034 0F4B     		ldr	r3, .L49
 687 0036 C362     		str	r3, [r0, #44]
 443:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA error callback */
 688              		.loc 1 443 3 is_stmt 1 view .LVU203
 448:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 689              		.loc 1 448 62 is_stmt 0 view .LVU204
 690 0038 2168     		ldr	r1, [r4]
 443:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA error callback */
 691              		.loc 1 443 52 view .LVU205
 692 003a 0F4B     		ldr	r3, .L49+4
 693 003c 0363     		str	r3, [r0, #48]
 445:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 694              		.loc 1 445 3 is_stmt 1 view .LVU206
 445:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 695              		.loc 1 445 49 is_stmt 0 view .LVU207
 696 003e 0F4B     		ldr	r3, .L49+8
 697 0040 4363     		str	r3, [r0, #52]
 448:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 698              		.loc 1 448 3 is_stmt 1 view .LVU208
 448:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 699              		.loc 1 448 7 is_stmt 0 view .LVU209
 700 0042 2A46     		mov	r2, r5
 701 0044 3346     		mov	r3, r6
 702 0046 3431     		adds	r1, r1, #52
 703 0048 FFF7FEFF 		bl	HAL_DMA_Start_IT
 704              	.LVL40:
 448:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 705              		.loc 1 448 6 view .LVU210
 706 004c 0028     		cmp	r0, #0
 707 004e E6D1     		bne	.L38
 453:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 708              		.loc 1 453 3 is_stmt 1 view .LVU211
 709 0050 2368     		ldr	r3, [r4]
 710 0052 DA68     		ldr	r2, [r3, #12]
 711 0054 42F40072 		orr	r2, r2, #512
 712 0058 DA60     		str	r2, [r3, #12]
 456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 713              		.loc 1 456 3 view .LVU212
 456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 714              		.loc 1 456 27 is_stmt 0 view .LVU213
 715 005a 9968     		ldr	r1, [r3, #8]
 456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 716              		.loc 1 456 11 view .LVU214
 717 005c 084A     		ldr	r2, .L49+12
 718 005e 0A40     		ands	r2, r2, r1
 719              	.LVL41:
 457:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 720              		.loc 1 457 3 is_stmt 1 view .LVU215
 457:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 721              		.loc 1 457 6 is_stmt 0 view .LVU216
 722 0060 062A     		cmp	r2, #6
 723 0062 DDD0     		beq	.L35
 457:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 724              		.loc 1 457 7 discriminator 1 view .LVU217
 725 0064 B2F5803F 		cmp	r2, #65536
 459:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 726              		.loc 1 459 5 is_stmt 1 discriminator 1 view .LVU218
 727 0068 1EBF     		ittt	ne
 728 006a 1A68     		ldrne	r2, [r3]
 729              	.LVL42:
 459:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 730              		.loc 1 459 5 is_stmt 0 discriminator 1 view .LVU219
 731 006c 42F00102 		orrne	r2, r2, #1
 732 0070 1A60     		strne	r2, [r3]
 733 0072 D5E7     		b	.L35
 734              	.L50:
 735              		.align	2
 736              	.L49:
 737 0074 00000000 		.word	TIM_DMACaptureCplt
 738 0078 00000000 		.word	TIM_DMACaptureHalfCplt
 739 007c 00000000 		.word	TIM_DMAError
 740 0080 07000100 		.word	65543
 741              		.cfi_endproc
 742              	.LFE333:
 744              		.section	.text.HAL_TIMEx_HallSensor_Stop_DMA,"ax",%progbits
 745              		.align	1
 746              		.global	HAL_TIMEx_HallSensor_Stop_DMA
 747              		.syntax unified
 748              		.thumb
 749              		.thumb_func
 750              		.fpu fpv4-sp-d16
 752              	HAL_TIMEx_HallSensor_Stop_DMA:
 753              	.LVL43:
 754              	.LFB334:
 472:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 755              		.loc 1 472 1 is_stmt 1 view -0
 756              		.cfi_startproc
 757              		@ args = 0, pretend = 0, frame = 0
 758              		@ frame_needed = 0, uses_anonymous_args = 0
 474:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 759              		.loc 1 474 3 view .LVU221
 478:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 760              		.loc 1 478 3 view .LVU222
 472:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 761              		.loc 1 472 1 is_stmt 0 view .LVU223
 762 0000 10B5     		push	{r4, lr}
 763              		.cfi_def_cfa_offset 8
 764              		.cfi_offset 4, -8
 765              		.cfi_offset 14, -4
 478:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 766              		.loc 1 478 3 view .LVU224
 767 0002 0022     		movs	r2, #0
 472:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 768              		.loc 1 472 1 view .LVU225
 769 0004 0446     		mov	r4, r0
 478:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 770              		.loc 1 478 3 view .LVU226
 771 0006 1146     		mov	r1, r2
 772 0008 0068     		ldr	r0, [r0]
 773              	.LVL44:
 478:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 774              		.loc 1 478 3 view .LVU227
 775 000a FFF7FEFF 		bl	TIM_CCxChannelCmd
 776              	.LVL45:
 482:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 777              		.loc 1 482 3 is_stmt 1 view .LVU228
 778 000e 2268     		ldr	r2, [r4]
 484:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 779              		.loc 1 484 9 is_stmt 0 view .LVU229
 780 0010 606A     		ldr	r0, [r4, #36]
 482:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 781              		.loc 1 482 3 view .LVU230
 782 0012 D368     		ldr	r3, [r2, #12]
 783 0014 23F40073 		bic	r3, r3, #512
 784 0018 D360     		str	r3, [r2, #12]
 484:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 785              		.loc 1 484 3 is_stmt 1 view .LVU231
 484:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Disable the Peripheral */
 786              		.loc 1 484 9 is_stmt 0 view .LVU232
 787 001a FFF7FEFF 		bl	HAL_DMA_Abort_IT
 788              	.LVL46:
 486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 789              		.loc 1 486 3 is_stmt 1 view .LVU233
 486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 790              		.loc 1 486 3 view .LVU234
 791 001e 2368     		ldr	r3, [r4]
 792 0020 196A     		ldr	r1, [r3, #32]
 793 0022 41F21112 		movw	r2, #4369
 794 0026 1142     		tst	r1, r2
 795 0028 08D1     		bne	.L52
 486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 796              		.loc 1 486 3 discriminator 1 view .LVU235
 797 002a 196A     		ldr	r1, [r3, #32]
 798 002c 44F24442 		movw	r2, #17476
 799 0030 1142     		tst	r1, r2
 486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 800              		.loc 1 486 3 discriminator 1 view .LVU236
 801 0032 02BF     		ittt	eq
 802 0034 1A68     		ldreq	r2, [r3]
 803 0036 22F00102 		biceq	r2, r2, #1
 804 003a 1A60     		streq	r2, [r3]
 805              	.L52:
 489:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 806              		.loc 1 489 3 view .LVU237
 490:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 807              		.loc 1 490 1 is_stmt 0 view .LVU238
 808 003c 0020     		movs	r0, #0
 809 003e 10BD     		pop	{r4, pc}
 490:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 810              		.loc 1 490 1 view .LVU239
 811              		.cfi_endproc
 812              	.LFE334:
 814              		.section	.text.HAL_TIMEx_OCN_Start,"ax",%progbits
 815              		.align	1
 816              		.global	HAL_TIMEx_OCN_Start
 817              		.syntax unified
 818              		.thumb
 819              		.thumb_func
 820              		.fpu fpv4-sp-d16
 822              	HAL_TIMEx_OCN_Start:
 823              	.LVL47:
 824              	.LFB335:
 529:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 825              		.loc 1 529 1 is_stmt 1 view -0
 826              		.cfi_startproc
 827              		@ args = 0, pretend = 0, frame = 0
 828              		@ frame_needed = 0, uses_anonymous_args = 0
 530:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 829              		.loc 1 530 3 view .LVU241
 533:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 830              		.loc 1 533 3 view .LVU242
 536:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 831              		.loc 1 536 3 view .LVU243
 529:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 832              		.loc 1 529 1 is_stmt 0 view .LVU244
 833 0000 10B5     		push	{r4, lr}
 834              		.cfi_def_cfa_offset 8
 835              		.cfi_offset 4, -8
 836              		.cfi_offset 14, -4
 529:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 837              		.loc 1 529 1 view .LVU245
 838 0002 0446     		mov	r4, r0
 536:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 839              		.loc 1 536 3 view .LVU246
 840 0004 0422     		movs	r2, #4
 841 0006 0068     		ldr	r0, [r0]
 842              	.LVL48:
 536:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 843              		.loc 1 536 3 view .LVU247
 844 0008 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 845              	.LVL49:
 539:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 846              		.loc 1 539 3 is_stmt 1 view .LVU248
 847 000c 2368     		ldr	r3, [r4]
 848 000e 5A6C     		ldr	r2, [r3, #68]
 849 0010 42F40042 		orr	r2, r2, #32768
 850 0014 5A64     		str	r2, [r3, #68]
 542:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 851              		.loc 1 542 3 view .LVU249
 542:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 852              		.loc 1 542 27 is_stmt 0 view .LVU250
 853 0016 9968     		ldr	r1, [r3, #8]
 542:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 854              		.loc 1 542 11 view .LVU251
 855 0018 064A     		ldr	r2, .L61
 856 001a 0A40     		ands	r2, r2, r1
 857              	.LVL50:
 543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 858              		.loc 1 543 3 is_stmt 1 view .LVU252
 543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 859              		.loc 1 543 6 is_stmt 0 view .LVU253
 860 001c 062A     		cmp	r2, #6
 861 001e 06D0     		beq	.L54
 543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 862              		.loc 1 543 7 discriminator 1 view .LVU254
 863 0020 B2F5803F 		cmp	r2, #65536
 545:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 864              		.loc 1 545 5 is_stmt 1 discriminator 1 view .LVU255
 865 0024 1EBF     		ittt	ne
 866 0026 1A68     		ldrne	r2, [r3]
 867              	.LVL51:
 545:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 868              		.loc 1 545 5 is_stmt 0 discriminator 1 view .LVU256
 869 0028 42F00102 		orrne	r2, r2, #1
 870 002c 1A60     		strne	r2, [r3]
 871              	.L54:
 549:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 872              		.loc 1 549 3 is_stmt 1 view .LVU257
 550:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 873              		.loc 1 550 1 is_stmt 0 view .LVU258
 874 002e 0020     		movs	r0, #0
 875 0030 10BD     		pop	{r4, pc}
 876              	.LVL52:
 877              	.L62:
 550:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 878              		.loc 1 550 1 view .LVU259
 879 0032 00BF     		.align	2
 880              	.L61:
 881 0034 07000100 		.word	65543
 882              		.cfi_endproc
 883              	.LFE335:
 885              		.section	.text.HAL_TIMEx_OCN_Stop,"ax",%progbits
 886              		.align	1
 887              		.global	HAL_TIMEx_OCN_Stop
 888              		.syntax unified
 889              		.thumb
 890              		.thumb_func
 891              		.fpu fpv4-sp-d16
 893              	HAL_TIMEx_OCN_Stop:
 894              	.LVL53:
 895              	.LFB336:
 565:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 896              		.loc 1 565 1 is_stmt 1 view -0
 897              		.cfi_startproc
 898              		@ args = 0, pretend = 0, frame = 0
 899              		@ frame_needed = 0, uses_anonymous_args = 0
 567:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 900              		.loc 1 567 3 view .LVU261
 570:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 901              		.loc 1 570 3 view .LVU262
 565:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 902              		.loc 1 565 1 is_stmt 0 view .LVU263
 903 0000 10B5     		push	{r4, lr}
 904              		.cfi_def_cfa_offset 8
 905              		.cfi_offset 4, -8
 906              		.cfi_offset 14, -4
 565:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 907              		.loc 1 565 1 view .LVU264
 908 0002 0446     		mov	r4, r0
 570:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 909              		.loc 1 570 3 view .LVU265
 910 0004 0022     		movs	r2, #0
 911 0006 0068     		ldr	r0, [r0]
 912              	.LVL54:
 570:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 913              		.loc 1 570 3 view .LVU266
 914 0008 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 915              	.LVL55:
 573:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 916              		.loc 1 573 3 is_stmt 1 view .LVU267
 573:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 917              		.loc 1 573 3 view .LVU268
 918 000c 2368     		ldr	r3, [r4]
 919 000e 196A     		ldr	r1, [r3, #32]
 920 0010 41F21112 		movw	r2, #4369
 921 0014 1142     		tst	r1, r2
 922 0016 08D1     		bne	.L64
 573:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 923              		.loc 1 573 3 discriminator 1 view .LVU269
 924 0018 196A     		ldr	r1, [r3, #32]
 925 001a 44F24442 		movw	r2, #17476
 926 001e 1142     		tst	r1, r2
 573:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 927              		.loc 1 573 3 discriminator 1 view .LVU270
 928 0020 02BF     		ittt	eq
 929 0022 5A6C     		ldreq	r2, [r3, #68]
 930 0024 22F40042 		biceq	r2, r2, #32768
 931 0028 5A64     		streq	r2, [r3, #68]
 932              	.L64:
 576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 933              		.loc 1 576 3 view .LVU271
 576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 934              		.loc 1 576 3 view .LVU272
 935 002a 196A     		ldr	r1, [r3, #32]
 936 002c 41F21112 		movw	r2, #4369
 937 0030 1142     		tst	r1, r2
 938 0032 08D1     		bne	.L65
 576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 939              		.loc 1 576 3 discriminator 1 view .LVU273
 940 0034 196A     		ldr	r1, [r3, #32]
 941 0036 44F24442 		movw	r2, #17476
 942 003a 1142     		tst	r1, r2
 576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 943              		.loc 1 576 3 discriminator 1 view .LVU274
 944 003c 02BF     		ittt	eq
 945 003e 1A68     		ldreq	r2, [r3]
 946 0040 22F00102 		biceq	r2, r2, #1
 947 0044 1A60     		streq	r2, [r3]
 948              	.L65:
 579:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 949              		.loc 1 579 3 view .LVU275
 580:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 950              		.loc 1 580 1 is_stmt 0 view .LVU276
 951 0046 0020     		movs	r0, #0
 952 0048 10BD     		pop	{r4, pc}
 580:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 953              		.loc 1 580 1 view .LVU277
 954              		.cfi_endproc
 955              	.LFE336:
 957              		.section	.text.HAL_TIMEx_OCN_Start_IT,"ax",%progbits
 958              		.align	1
 959              		.global	HAL_TIMEx_OCN_Start_IT
 960              		.syntax unified
 961              		.thumb
 962              		.thumb_func
 963              		.fpu fpv4-sp-d16
 965              	HAL_TIMEx_OCN_Start_IT:
 966              	.LVL56:
 967              	.LFB337:
 595:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 968              		.loc 1 595 1 is_stmt 1 view -0
 969              		.cfi_startproc
 970              		@ args = 0, pretend = 0, frame = 0
 971              		@ frame_needed = 0, uses_anonymous_args = 0
 596:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 972              		.loc 1 596 3 view .LVU279
 599:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 973              		.loc 1 599 3 view .LVU280
 601:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 974              		.loc 1 601 3 view .LVU281
 595:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 975              		.loc 1 595 1 is_stmt 0 view .LVU282
 976 0000 10B5     		push	{r4, lr}
 977              		.cfi_def_cfa_offset 8
 978              		.cfi_offset 4, -8
 979              		.cfi_offset 14, -4
 595:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 980              		.loc 1 595 1 view .LVU283
 981 0002 0446     		mov	r4, r0
 982 0004 0068     		ldr	r0, [r0]
 983              	.LVL57:
 601:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 984              		.loc 1 601 3 view .LVU284
 985 0006 0C29     		cmp	r1, #12
 986 0008 0CD8     		bhi	.L67
 987 000a DFE801F0 		tbb	[pc, r1]
 988              	.L69:
 989 000e 07       		.byte	(.L72-.L69)/2
 990 000f 0B       		.byte	(.L67-.L69)/2
 991 0010 0B       		.byte	(.L67-.L69)/2
 992 0011 0B       		.byte	(.L67-.L69)/2
 993 0012 25       		.byte	(.L71-.L69)/2
 994 0013 0B       		.byte	(.L67-.L69)/2
 995 0014 0B       		.byte	(.L67-.L69)/2
 996 0015 0B       		.byte	(.L67-.L69)/2
 997 0016 29       		.byte	(.L70-.L69)/2
 998 0017 0B       		.byte	(.L67-.L69)/2
 999 0018 0B       		.byte	(.L67-.L69)/2
 1000 0019 0B       		.byte	(.L67-.L69)/2
 1001 001a 2D       		.byte	(.L68-.L69)/2
 1002 001b 00       		.p2align 1
 1003              	.L72:
 606:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1004              		.loc 1 606 7 is_stmt 1 view .LVU285
 1005 001c C368     		ldr	r3, [r0, #12]
 1006 001e 43F00203 		orr	r3, r3, #2
 1007              	.L80:
 628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1008              		.loc 1 628 7 is_stmt 0 view .LVU286
 1009 0022 C360     		str	r3, [r0, #12]
 629:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 1010              		.loc 1 629 7 is_stmt 1 view .LVU287
 1011              	.L67:
 637:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1012              		.loc 1 637 3 view .LVU288
 1013 0024 C368     		ldr	r3, [r0, #12]
 1014 0026 43F08003 		orr	r3, r3, #128
 1015 002a C360     		str	r3, [r0, #12]
 640:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1016              		.loc 1 640 3 view .LVU289
 1017 002c 0422     		movs	r2, #4
 1018 002e FFF7FEFF 		bl	TIM_CCxNChannelCmd
 1019              	.LVL58:
 643:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1020              		.loc 1 643 3 view .LVU290
 1021 0032 2368     		ldr	r3, [r4]
 1022 0034 5A6C     		ldr	r2, [r3, #68]
 1023 0036 42F40042 		orr	r2, r2, #32768
 1024 003a 5A64     		str	r2, [r3, #68]
 646:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 1025              		.loc 1 646 3 view .LVU291
 646:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 1026              		.loc 1 646 27 is_stmt 0 view .LVU292
 1027 003c 9968     		ldr	r1, [r3, #8]
 646:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 1028              		.loc 1 646 11 view .LVU293
 1029 003e 0C4A     		ldr	r2, .L81
 1030 0040 0A40     		ands	r2, r2, r1
 1031              	.LVL59:
 647:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1032              		.loc 1 647 3 is_stmt 1 view .LVU294
 647:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1033              		.loc 1 647 6 is_stmt 0 view .LVU295
 1034 0042 062A     		cmp	r2, #6
 1035 0044 06D0     		beq	.L73
 647:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1036              		.loc 1 647 7 discriminator 1 view .LVU296
 1037 0046 B2F5803F 		cmp	r2, #65536
 649:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1038              		.loc 1 649 5 is_stmt 1 discriminator 1 view .LVU297
 1039 004a 1EBF     		ittt	ne
 1040 004c 1A68     		ldrne	r2, [r3]
 1041              	.LVL60:
 649:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1042              		.loc 1 649 5 is_stmt 0 discriminator 1 view .LVU298
 1043 004e 42F00102 		orrne	r2, r2, #1
 1044 0052 1A60     		strne	r2, [r3]
 1045              	.L73:
 653:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 1046              		.loc 1 653 3 is_stmt 1 view .LVU299
 654:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1047              		.loc 1 654 1 is_stmt 0 view .LVU300
 1048 0054 0020     		movs	r0, #0
 1049 0056 10BD     		pop	{r4, pc}
 1050              	.LVL61:
 1051              	.L71:
 613:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1052              		.loc 1 613 7 is_stmt 1 view .LVU301
 1053 0058 C368     		ldr	r3, [r0, #12]
 1054 005a 43F00403 		orr	r3, r3, #4
 1055 005e E0E7     		b	.L80
 1056              	.L70:
 620:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1057              		.loc 1 620 7 view .LVU302
 1058 0060 C368     		ldr	r3, [r0, #12]
 1059 0062 43F00803 		orr	r3, r3, #8
 1060 0066 DCE7     		b	.L80
 1061              	.L68:
 628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1062              		.loc 1 628 7 view .LVU303
 1063 0068 C368     		ldr	r3, [r0, #12]
 1064 006a 43F01003 		orr	r3, r3, #16
 1065 006e D8E7     		b	.L80
 1066              	.L82:
 1067              		.align	2
 1068              	.L81:
 1069 0070 07000100 		.word	65543
 1070              		.cfi_endproc
 1071              	.LFE337:
 1073              		.section	.text.HAL_TIMEx_OCN_Stop_IT,"ax",%progbits
 1074              		.align	1
 1075              		.global	HAL_TIMEx_OCN_Stop_IT
 1076              		.syntax unified
 1077              		.thumb
 1078              		.thumb_func
 1079              		.fpu fpv4-sp-d16
 1081              	HAL_TIMEx_OCN_Stop_IT:
 1082              	.LVL62:
 1083              	.LFB338:
 669:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpccer;
 1084              		.loc 1 669 1 view -0
 1085              		.cfi_startproc
 1086              		@ args = 0, pretend = 0, frame = 0
 1087              		@ frame_needed = 0, uses_anonymous_args = 0
 670:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1088              		.loc 1 670 3 view .LVU305
 672:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1089              		.loc 1 672 3 view .LVU306
 674:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1090              		.loc 1 674 3 view .LVU307
 669:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpccer;
 1091              		.loc 1 669 1 is_stmt 0 view .LVU308
 1092 0000 10B5     		push	{r4, lr}
 1093              		.cfi_def_cfa_offset 8
 1094              		.cfi_offset 4, -8
 1095              		.cfi_offset 14, -4
 669:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpccer;
 1096              		.loc 1 669 1 view .LVU309
 1097 0002 0446     		mov	r4, r0
 1098 0004 0068     		ldr	r0, [r0]
 1099              	.LVL63:
 674:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1100              		.loc 1 674 3 view .LVU310
 1101 0006 0C29     		cmp	r1, #12
 1102 0008 0CD8     		bhi	.L84
 1103 000a DFE801F0 		tbb	[pc, r1]
 1104              	.L86:
 1105 000e 07       		.byte	(.L89-.L86)/2
 1106 000f 0B       		.byte	(.L84-.L86)/2
 1107 0010 0B       		.byte	(.L84-.L86)/2
 1108 0011 0B       		.byte	(.L84-.L86)/2
 1109 0012 36       		.byte	(.L88-.L86)/2
 1110 0013 0B       		.byte	(.L84-.L86)/2
 1111 0014 0B       		.byte	(.L84-.L86)/2
 1112 0015 0B       		.byte	(.L84-.L86)/2
 1113 0016 3A       		.byte	(.L87-.L86)/2
 1114 0017 0B       		.byte	(.L84-.L86)/2
 1115 0018 0B       		.byte	(.L84-.L86)/2
 1116 0019 0B       		.byte	(.L84-.L86)/2
 1117 001a 3E       		.byte	(.L85-.L86)/2
 1118 001b 00       		.p2align 1
 1119              	.L89:
 679:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1120              		.loc 1 679 7 is_stmt 1 view .LVU311
 1121 001c C368     		ldr	r3, [r0, #12]
 1122 001e 23F00203 		bic	r3, r3, #2
 1123              	.L93:
 700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1124              		.loc 1 700 7 is_stmt 0 view .LVU312
 1125 0022 C360     		str	r3, [r0, #12]
 701:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 1126              		.loc 1 701 7 is_stmt 1 view .LVU313
 1127              	.L84:
 709:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1128              		.loc 1 709 3 view .LVU314
 1129 0024 0022     		movs	r2, #0
 1130 0026 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 1131              	.LVL64:
 712:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((tmpccer & (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE  | TIM_CCER_CC4NE)) == (uint32_t
 1132              		.loc 1 712 3 view .LVU315
 712:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((tmpccer & (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE  | TIM_CCER_CC4NE)) == (uint32_t
 1133              		.loc 1 712 17 is_stmt 0 view .LVU316
 1134 002a 2368     		ldr	r3, [r4]
 712:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if ((tmpccer & (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE  | TIM_CCER_CC4NE)) == (uint32_t
 1135              		.loc 1 712 11 view .LVU317
 1136 002c 196A     		ldr	r1, [r3, #32]
 1137              	.LVL65:
 713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1138              		.loc 1 713 3 is_stmt 1 view .LVU318
 713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1139              		.loc 1 713 6 is_stmt 0 view .LVU319
 1140 002e 44F24442 		movw	r2, #17476
 1141 0032 1142     		tst	r1, r2
 715:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1142              		.loc 1 715 5 is_stmt 1 view .LVU320
 1143 0034 02BF     		ittt	eq
 1144 0036 DA68     		ldreq	r2, [r3, #12]
 1145 0038 22F08002 		biceq	r2, r2, #128
 1146 003c DA60     		streq	r2, [r3, #12]
 719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1147              		.loc 1 719 3 view .LVU321
 719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1148              		.loc 1 719 3 view .LVU322
 1149 003e 196A     		ldr	r1, [r3, #32]
 1150              	.LVL66:
 719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1151              		.loc 1 719 3 is_stmt 0 view .LVU323
 1152 0040 41F21112 		movw	r2, #4369
 1153 0044 1142     		tst	r1, r2
 1154 0046 08D1     		bne	.L91
 719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1155              		.loc 1 719 3 is_stmt 1 discriminator 1 view .LVU324
 1156 0048 196A     		ldr	r1, [r3, #32]
 1157 004a 44F24442 		movw	r2, #17476
 1158 004e 1142     		tst	r1, r2
 719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1159              		.loc 1 719 3 discriminator 1 view .LVU325
 1160 0050 02BF     		ittt	eq
 1161 0052 5A6C     		ldreq	r2, [r3, #68]
 1162 0054 22F40042 		biceq	r2, r2, #32768
 1163 0058 5A64     		streq	r2, [r3, #68]
 1164              	.L91:
 722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1165              		.loc 1 722 3 view .LVU326
 722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1166              		.loc 1 722 3 view .LVU327
 1167 005a 196A     		ldr	r1, [r3, #32]
 1168 005c 41F21112 		movw	r2, #4369
 1169 0060 1142     		tst	r1, r2
 1170 0062 08D1     		bne	.L92
 722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1171              		.loc 1 722 3 discriminator 1 view .LVU328
 1172 0064 196A     		ldr	r1, [r3, #32]
 1173 0066 44F24442 		movw	r2, #17476
 1174 006a 1142     		tst	r1, r2
 722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1175              		.loc 1 722 3 discriminator 1 view .LVU329
 1176 006c 02BF     		ittt	eq
 1177 006e 1A68     		ldreq	r2, [r3]
 1178 0070 22F00102 		biceq	r2, r2, #1
 1179 0074 1A60     		streq	r2, [r3]
 1180              	.L92:
 725:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 1181              		.loc 1 725 3 view .LVU330
 726:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1182              		.loc 1 726 1 is_stmt 0 view .LVU331
 1183 0076 0020     		movs	r0, #0
 1184 0078 10BD     		pop	{r4, pc}
 1185              	.LVL67:
 1186              	.L88:
 686:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1187              		.loc 1 686 7 is_stmt 1 view .LVU332
 1188 007a C368     		ldr	r3, [r0, #12]
 1189 007c 23F00403 		bic	r3, r3, #4
 1190 0080 CFE7     		b	.L93
 1191              	.L87:
 693:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1192              		.loc 1 693 7 view .LVU333
 1193 0082 C368     		ldr	r3, [r0, #12]
 1194 0084 23F00803 		bic	r3, r3, #8
 1195 0088 CBE7     		b	.L93
 1196              	.L85:
 700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1197              		.loc 1 700 7 view .LVU334
 1198 008a C368     		ldr	r3, [r0, #12]
 1199 008c 23F01003 		bic	r3, r3, #16
 1200 0090 C7E7     		b	.L93
 1201              		.cfi_endproc
 1202              	.LFE338:
 1204              		.section	.text.HAL_TIMEx_OCN_Start_DMA,"ax",%progbits
 1205              		.align	1
 1206              		.global	HAL_TIMEx_OCN_Start_DMA
 1207              		.syntax unified
 1208              		.thumb
 1209              		.thumb_func
 1210              		.fpu fpv4-sp-d16
 1212              	HAL_TIMEx_OCN_Start_DMA:
 1213              	.LVL68:
 1214              	.LFB339:
 743:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 1215              		.loc 1 743 1 view -0
 1216              		.cfi_startproc
 1217              		@ args = 0, pretend = 0, frame = 0
 1218              		@ frame_needed = 0, uses_anonymous_args = 0
 744:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1219              		.loc 1 744 3 view .LVU336
 747:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1220              		.loc 1 747 3 view .LVU337
 749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1221              		.loc 1 749 3 view .LVU338
 743:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 1222              		.loc 1 743 1 is_stmt 0 view .LVU339
 1223 0000 70B5     		push	{r4, r5, r6, lr}
 1224              		.cfi_def_cfa_offset 16
 1225              		.cfi_offset 4, -16
 1226              		.cfi_offset 5, -12
 1227              		.cfi_offset 6, -8
 1228              		.cfi_offset 14, -4
 743:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 1229              		.loc 1 743 1 view .LVU340
 1230 0002 0446     		mov	r4, r0
 749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1231              		.loc 1 749 11 view .LVU341
 1232 0004 90F83D00 		ldrb	r0, [r0, #61]	@ zero_extendqisi2
 1233              	.LVL69:
 749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1234              		.loc 1 749 11 view .LVU342
 1235 0008 C0B2     		uxtb	r0, r0
 749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1236              		.loc 1 749 6 view .LVU343
 1237 000a 0228     		cmp	r0, #2
 743:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 1238              		.loc 1 743 1 view .LVU344
 1239 000c 0D46     		mov	r5, r1
 1240 000e 1146     		mov	r1, r2
 1241              	.LVL70:
 749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1242              		.loc 1 749 6 view .LVU345
 1243 0010 06D0     		beq	.L95
 753:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1244              		.loc 1 753 8 is_stmt 1 view .LVU346
 753:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1245              		.loc 1 753 16 is_stmt 0 view .LVU347
 1246 0012 94F83D20 		ldrb	r2, [r4, #61]	@ zero_extendqisi2
 1247              	.LVL71:
 753:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1248              		.loc 1 753 11 view .LVU348
 1249 0016 012A     		cmp	r2, #1
 1250 0018 06D1     		bne	.L96
 755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 1251              		.loc 1 755 5 is_stmt 1 view .LVU349
 755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 1252              		.loc 1 755 8 is_stmt 0 view .LVU350
 1253 001a 11B9     		cbnz	r1, .L97
 755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 1254              		.loc 1 755 33 discriminator 1 view .LVU351
 1255 001c 0BB1     		cbz	r3, .L97
 1256              	.LVL72:
 1257              	.L104:
 757:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 1258              		.loc 1 757 14 view .LVU352
 1259 001e 0120     		movs	r0, #1
 1260              	.L95:
 866:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1261              		.loc 1 866 1 view .LVU353
 1262 0020 70BD     		pop	{r4, r5, r6, pc}
 1263              	.LVL73:
 1264              	.L97:
 761:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 1265              		.loc 1 761 7 is_stmt 1 view .LVU354
 761:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 1266              		.loc 1 761 19 is_stmt 0 view .LVU355
 1267 0022 0222     		movs	r2, #2
 1268 0024 84F83D20 		strb	r2, [r4, #61]
 1269              	.L96:
 767:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1270              		.loc 1 767 3 is_stmt 1 view .LVU356
 769:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1271              		.loc 1 769 3 view .LVU357
 1272 0028 2268     		ldr	r2, [r4]
 1273 002a 0C2D     		cmp	r5, #12
 1274 002c 19D8     		bhi	.L98
 1275 002e DFE805F0 		tbb	[pc, r5]
 1276              	.L100:
 1277 0032 07       		.byte	(.L103-.L100)/2
 1278 0033 18       		.byte	(.L98-.L100)/2
 1279 0034 18       		.byte	(.L98-.L100)/2
 1280 0035 18       		.byte	(.L98-.L100)/2
 1281 0036 30       		.byte	(.L102-.L100)/2
 1282 0037 18       		.byte	(.L98-.L100)/2
 1283 0038 18       		.byte	(.L98-.L100)/2
 1284 0039 18       		.byte	(.L98-.L100)/2
 1285 003a 41       		.byte	(.L101-.L100)/2
 1286 003b 18       		.byte	(.L98-.L100)/2
 1287 003c 18       		.byte	(.L98-.L100)/2
 1288 003d 18       		.byte	(.L98-.L100)/2
 1289 003e 52       		.byte	(.L99-.L100)/2
 1290 003f 00       		.p2align 1
 1291              	.L103:
 774:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1292              		.loc 1 774 7 view .LVU358
 774:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1293              		.loc 1 774 17 is_stmt 0 view .LVU359
 1294 0040 606A     		ldr	r0, [r4, #36]
 774:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1295              		.loc 1 774 52 view .LVU360
 1296 0042 2D4E     		ldr	r6, .L112
 1297 0044 C662     		str	r6, [r0, #44]
 775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1298              		.loc 1 775 7 is_stmt 1 view .LVU361
 775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1299              		.loc 1 775 56 is_stmt 0 view .LVU362
 1300 0046 2D4E     		ldr	r6, .L112+4
 1301 0048 0663     		str	r6, [r0, #48]
 778:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1302              		.loc 1 778 7 is_stmt 1 view .LVU363
 778:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1303              		.loc 1 778 53 is_stmt 0 view .LVU364
 1304 004a 2D4E     		ldr	r6, .L112+8
 1305 004c 4663     		str	r6, [r0, #52]
 781:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1306              		.loc 1 781 7 is_stmt 1 view .LVU365
 781:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1307              		.loc 1 781 11 is_stmt 0 view .LVU366
 1308 004e 3432     		adds	r2, r2, #52
 1309 0050 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1310              	.LVL74:
 781:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1311              		.loc 1 781 10 view .LVU367
 1312 0054 0028     		cmp	r0, #0
 1313 0056 E2D1     		bne	.L104
 786:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1314              		.loc 1 786 7 is_stmt 1 view .LVU368
 1315 0058 2268     		ldr	r2, [r4]
 1316 005a D368     		ldr	r3, [r2, #12]
 1317 005c 43F40073 		orr	r3, r3, #512
 1318              	.L111:
 843:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1319              		.loc 1 843 7 is_stmt 0 view .LVU369
 1320 0060 D360     		str	r3, [r2, #12]
 844:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 1321              		.loc 1 844 7 is_stmt 1 view .LVU370
 1322              	.L98:
 852:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1323              		.loc 1 852 3 view .LVU371
 1324 0062 0422     		movs	r2, #4
 1325 0064 2946     		mov	r1, r5
 1326 0066 2068     		ldr	r0, [r4]
 1327 0068 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 1328              	.LVL75:
 855:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1329              		.loc 1 855 3 view .LVU372
 1330 006c 2368     		ldr	r3, [r4]
 1331 006e 5A6C     		ldr	r2, [r3, #68]
 1332 0070 42F40042 		orr	r2, r2, #32768
 1333 0074 5A64     		str	r2, [r3, #68]
 858:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 1334              		.loc 1 858 3 view .LVU373
 858:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 1335              		.loc 1 858 27 is_stmt 0 view .LVU374
 1336 0076 9968     		ldr	r1, [r3, #8]
 858:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
 1337              		.loc 1 858 11 view .LVU375
 1338 0078 224A     		ldr	r2, .L112+12
 1339 007a 0A40     		ands	r2, r2, r1
 1340              	.LVL76:
 859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1341              		.loc 1 859 3 is_stmt 1 view .LVU376
 859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1342              		.loc 1 859 6 is_stmt 0 view .LVU377
 1343 007c 062A     		cmp	r2, #6
 1344 007e 06D0     		beq	.L107
 859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1345              		.loc 1 859 7 discriminator 1 view .LVU378
 1346 0080 B2F5803F 		cmp	r2, #65536
 861:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1347              		.loc 1 861 5 is_stmt 1 discriminator 1 view .LVU379
 1348 0084 1EBF     		ittt	ne
 1349 0086 1A68     		ldrne	r2, [r3]
 1350              	.LVL77:
 861:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1351              		.loc 1 861 5 is_stmt 0 discriminator 1 view .LVU380
 1352 0088 42F00102 		orrne	r2, r2, #1
 1353 008c 1A60     		strne	r2, [r3]
 1354              	.L107:
 865:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 1355              		.loc 1 865 10 view .LVU381
 1356 008e 0020     		movs	r0, #0
 1357 0090 C6E7     		b	.L95
 1358              	.LVL78:
 1359              	.L102:
 793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1360              		.loc 1 793 7 is_stmt 1 view .LVU382
 793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1361              		.loc 1 793 17 is_stmt 0 view .LVU383
 1362 0092 A06A     		ldr	r0, [r4, #40]
 793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1363              		.loc 1 793 52 view .LVU384
 1364 0094 184E     		ldr	r6, .L112
 1365 0096 C662     		str	r6, [r0, #44]
 794:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1366              		.loc 1 794 7 is_stmt 1 view .LVU385
 794:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1367              		.loc 1 794 56 is_stmt 0 view .LVU386
 1368 0098 184E     		ldr	r6, .L112+4
 1369 009a 0663     		str	r6, [r0, #48]
 797:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1370              		.loc 1 797 7 is_stmt 1 view .LVU387
 797:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1371              		.loc 1 797 53 is_stmt 0 view .LVU388
 1372 009c 184E     		ldr	r6, .L112+8
 1373 009e 4663     		str	r6, [r0, #52]
 800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1374              		.loc 1 800 7 is_stmt 1 view .LVU389
 800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1375              		.loc 1 800 11 is_stmt 0 view .LVU390
 1376 00a0 3832     		adds	r2, r2, #56
 1377 00a2 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1378              	.LVL79:
 800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1379              		.loc 1 800 10 view .LVU391
 1380 00a6 0028     		cmp	r0, #0
 1381 00a8 B9D1     		bne	.L104
 805:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1382              		.loc 1 805 7 is_stmt 1 view .LVU392
 1383 00aa 2268     		ldr	r2, [r4]
 1384 00ac D368     		ldr	r3, [r2, #12]
 1385 00ae 43F48063 		orr	r3, r3, #1024
 1386 00b2 D5E7     		b	.L111
 1387              	.LVL80:
 1388              	.L101:
 812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1389              		.loc 1 812 7 view .LVU393
 812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1390              		.loc 1 812 17 is_stmt 0 view .LVU394
 1391 00b4 E06A     		ldr	r0, [r4, #44]
 812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1392              		.loc 1 812 52 view .LVU395
 1393 00b6 104E     		ldr	r6, .L112
 1394 00b8 C662     		str	r6, [r0, #44]
 813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1395              		.loc 1 813 7 is_stmt 1 view .LVU396
 813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1396              		.loc 1 813 56 is_stmt 0 view .LVU397
 1397 00ba 104E     		ldr	r6, .L112+4
 1398 00bc 0663     		str	r6, [r0, #48]
 816:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1399              		.loc 1 816 7 is_stmt 1 view .LVU398
 816:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1400              		.loc 1 816 53 is_stmt 0 view .LVU399
 1401 00be 104E     		ldr	r6, .L112+8
 1402 00c0 4663     		str	r6, [r0, #52]
 819:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1403              		.loc 1 819 7 is_stmt 1 view .LVU400
 819:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1404              		.loc 1 819 11 is_stmt 0 view .LVU401
 1405 00c2 3C32     		adds	r2, r2, #60
 1406 00c4 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1407              	.LVL81:
 819:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1408              		.loc 1 819 10 view .LVU402
 1409 00c8 0028     		cmp	r0, #0
 1410 00ca A8D1     		bne	.L104
 824:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1411              		.loc 1 824 7 is_stmt 1 view .LVU403
 1412 00cc 2268     		ldr	r2, [r4]
 1413 00ce D368     		ldr	r3, [r2, #12]
 1414 00d0 43F40063 		orr	r3, r3, #2048
 1415 00d4 C4E7     		b	.L111
 1416              	.LVL82:
 1417              	.L99:
 831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1418              		.loc 1 831 7 view .LVU404
 831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1419              		.loc 1 831 17 is_stmt 0 view .LVU405
 1420 00d6 206B     		ldr	r0, [r4, #48]
 831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
 1421              		.loc 1 831 52 view .LVU406
 1422 00d8 074E     		ldr	r6, .L112
 1423 00da C662     		str	r6, [r0, #44]
 832:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1424              		.loc 1 832 7 is_stmt 1 view .LVU407
 832:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1425              		.loc 1 832 56 is_stmt 0 view .LVU408
 1426 00dc 074E     		ldr	r6, .L112+4
 1427 00de 0663     		str	r6, [r0, #48]
 835:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1428              		.loc 1 835 7 is_stmt 1 view .LVU409
 835:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1429              		.loc 1 835 53 is_stmt 0 view .LVU410
 1430 00e0 074E     		ldr	r6, .L112+8
 1431 00e2 4663     		str	r6, [r0, #52]
 838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1432              		.loc 1 838 7 is_stmt 1 view .LVU411
 838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1433              		.loc 1 838 11 is_stmt 0 view .LVU412
 1434 00e4 4032     		adds	r2, r2, #64
 1435 00e6 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1436              	.LVL83:
 838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 1437              		.loc 1 838 10 view .LVU413
 1438 00ea 0028     		cmp	r0, #0
 1439 00ec 97D1     		bne	.L104
 843:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1440              		.loc 1 843 7 is_stmt 1 view .LVU414
 1441 00ee 2268     		ldr	r2, [r4]
 1442 00f0 D368     		ldr	r3, [r2, #12]
 1443 00f2 43F48053 		orr	r3, r3, #4096
 1444 00f6 B3E7     		b	.L111
 1445              	.L113:
 1446              		.align	2
 1447              	.L112:
 1448 00f8 00000000 		.word	TIM_DMADelayPulseCplt
 1449 00fc 00000000 		.word	TIM_DMADelayPulseHalfCplt
 1450 0100 00000000 		.word	TIM_DMAError
 1451 0104 07000100 		.word	65543
 1452              		.cfi_endproc
 1453              	.LFE339:
 1455              		.section	.text.HAL_TIMEx_OCN_Stop_DMA,"ax",%progbits
 1456              		.align	1
 1457              		.global	HAL_TIMEx_OCN_Stop_DMA
 1458              		.syntax unified
 1459              		.thumb
 1460              		.thumb_func
 1461              		.fpu fpv4-sp-d16
 1463              	HAL_TIMEx_OCN_Stop_DMA:
 1464              	.LVL84:
 1465              	.LFB340:
 881:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1466              		.loc 1 881 1 view -0
 1467              		.cfi_startproc
 1468              		@ args = 0, pretend = 0, frame = 0
 1469              		@ frame_needed = 0, uses_anonymous_args = 0
 883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1470              		.loc 1 883 3 view .LVU416
 885:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1471              		.loc 1 885 3 view .LVU417
 881:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1472              		.loc 1 881 1 is_stmt 0 view .LVU418
 1473 0000 38B5     		push	{r3, r4, r5, lr}
 1474              		.cfi_def_cfa_offset 16
 1475              		.cfi_offset 3, -16
 1476              		.cfi_offset 4, -12
 1477              		.cfi_offset 5, -8
 1478              		.cfi_offset 14, -4
 881:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1479              		.loc 1 881 1 view .LVU419
 1480 0002 0446     		mov	r4, r0
 1481 0004 0D46     		mov	r5, r1
 1482 0006 0368     		ldr	r3, [r0]
 885:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 1483              		.loc 1 885 3 view .LVU420
 1484 0008 0C29     		cmp	r1, #12
 1485 000a 0FD8     		bhi	.L115
 1486 000c DFE801F0 		tbb	[pc, r1]
 1487              	.L117:
 1488 0010 07       		.byte	(.L120-.L117)/2
 1489 0011 0E       		.byte	(.L115-.L117)/2
 1490 0012 0E       		.byte	(.L115-.L117)/2
 1491 0013 0E       		.byte	(.L115-.L117)/2
 1492 0014 35       		.byte	(.L119-.L117)/2
 1493 0015 0E       		.byte	(.L115-.L117)/2
 1494 0016 0E       		.byte	(.L115-.L117)/2
 1495 0017 0E       		.byte	(.L115-.L117)/2
 1496 0018 3B       		.byte	(.L118-.L117)/2
 1497 0019 0E       		.byte	(.L115-.L117)/2
 1498 001a 0E       		.byte	(.L115-.L117)/2
 1499 001b 0E       		.byte	(.L115-.L117)/2
 1500 001c 41       		.byte	(.L116-.L117)/2
 1501 001d 00       		.p2align 1
 1502              	.L120:
 890:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
 1503              		.loc 1 890 7 is_stmt 1 view .LVU421
 1504 001e DA68     		ldr	r2, [r3, #12]
 891:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1505              		.loc 1 891 13 is_stmt 0 view .LVU422
 1506 0020 406A     		ldr	r0, [r0, #36]
 1507              	.LVL85:
 890:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
 1508              		.loc 1 890 7 view .LVU423
 1509 0022 22F40072 		bic	r2, r2, #512
 1510 0026 DA60     		str	r2, [r3, #12]
 891:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1511              		.loc 1 891 7 is_stmt 1 view .LVU424
 1512              	.L123:
 915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1513              		.loc 1 915 13 is_stmt 0 view .LVU425
 1514 0028 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 1515              	.LVL86:
 916:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 1516              		.loc 1 916 7 is_stmt 1 view .LVU426
 1517              	.L115:
 924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1518              		.loc 1 924 3 view .LVU427
 1519 002c 0022     		movs	r2, #0
 1520 002e 2946     		mov	r1, r5
 1521 0030 2068     		ldr	r0, [r4]
 1522 0032 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 1523              	.LVL87:
 927:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1524              		.loc 1 927 3 view .LVU428
 927:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1525              		.loc 1 927 3 view .LVU429
 1526 0036 2368     		ldr	r3, [r4]
 1527 0038 196A     		ldr	r1, [r3, #32]
 1528 003a 41F21112 		movw	r2, #4369
 1529 003e 1142     		tst	r1, r2
 1530 0040 08D1     		bne	.L121
 927:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1531              		.loc 1 927 3 discriminator 1 view .LVU430
 1532 0042 196A     		ldr	r1, [r3, #32]
 1533 0044 44F24442 		movw	r2, #17476
 1534 0048 1142     		tst	r1, r2
 927:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1535              		.loc 1 927 3 discriminator 1 view .LVU431
 1536 004a 02BF     		ittt	eq
 1537 004c 5A6C     		ldreq	r2, [r3, #68]
 1538 004e 22F40042 		biceq	r2, r2, #32768
 1539 0052 5A64     		streq	r2, [r3, #68]
 1540              	.L121:
 930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1541              		.loc 1 930 3 view .LVU432
 930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1542              		.loc 1 930 3 view .LVU433
 1543 0054 196A     		ldr	r1, [r3, #32]
 1544 0056 41F21112 		movw	r2, #4369
 1545 005a 1142     		tst	r1, r2
 1546 005c 08D1     		bne	.L122
 930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1547              		.loc 1 930 3 discriminator 1 view .LVU434
 1548 005e 196A     		ldr	r1, [r3, #32]
 1549 0060 44F24442 		movw	r2, #17476
 1550 0064 1142     		tst	r1, r2
 930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1551              		.loc 1 930 3 discriminator 1 view .LVU435
 1552 0066 02BF     		ittt	eq
 1553 0068 1A68     		ldreq	r2, [r3]
 1554 006a 22F00102 		biceq	r2, r2, #1
 1555 006e 1A60     		streq	r2, [r3]
 1556              	.L122:
 933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1557              		.loc 1 933 3 view .LVU436
 933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1558              		.loc 1 933 15 is_stmt 0 view .LVU437
 1559 0070 0123     		movs	r3, #1
 1560 0072 84F83D30 		strb	r3, [r4, #61]
 936:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 1561              		.loc 1 936 3 is_stmt 1 view .LVU438
 937:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1562              		.loc 1 937 1 is_stmt 0 view .LVU439
 1563 0076 0020     		movs	r0, #0
 1564 0078 38BD     		pop	{r3, r4, r5, pc}
 1565              	.LVL88:
 1566              	.L119:
 898:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
 1567              		.loc 1 898 7 is_stmt 1 view .LVU440
 1568 007a DA68     		ldr	r2, [r3, #12]
 899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1569              		.loc 1 899 13 is_stmt 0 view .LVU441
 1570 007c 806A     		ldr	r0, [r0, #40]
 1571              	.LVL89:
 898:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
 1572              		.loc 1 898 7 view .LVU442
 1573 007e 22F48062 		bic	r2, r2, #1024
 1574 0082 DA60     		str	r2, [r3, #12]
 899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1575              		.loc 1 899 7 is_stmt 1 view .LVU443
 1576 0084 D0E7     		b	.L123
 1577              	.LVL90:
 1578              	.L118:
 906:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
 1579              		.loc 1 906 7 view .LVU444
 1580 0086 DA68     		ldr	r2, [r3, #12]
 907:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1581              		.loc 1 907 13 is_stmt 0 view .LVU445
 1582 0088 C06A     		ldr	r0, [r0, #44]
 1583              	.LVL91:
 906:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
 1584              		.loc 1 906 7 view .LVU446
 1585 008a 22F40062 		bic	r2, r2, #2048
 1586 008e DA60     		str	r2, [r3, #12]
 907:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1587              		.loc 1 907 7 is_stmt 1 view .LVU447
 1588 0090 CAE7     		b	.L123
 1589              	.LVL92:
 1590              	.L116:
 914:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
 1591              		.loc 1 914 7 view .LVU448
 1592 0092 DA68     		ldr	r2, [r3, #12]
 915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1593              		.loc 1 915 13 is_stmt 0 view .LVU449
 1594 0094 006B     		ldr	r0, [r0, #48]
 1595              	.LVL93:
 914:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
 1596              		.loc 1 914 7 view .LVU450
 1597 0096 22F48052 		bic	r2, r2, #4096
 1598 009a DA60     		str	r2, [r3, #12]
 915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 1599              		.loc 1 915 7 is_stmt 1 view .LVU451
 1600 009c C4E7     		b	.L123
 1601              		.cfi_endproc
 1602              	.LFE340:
 1604              		.section	.text.HAL_TIMEx_PWMN_Start,"ax",%progbits
 1605              		.align	1
 1606              		.global	HAL_TIMEx_PWMN_Start
 1607              		.syntax unified
 1608              		.thumb
 1609              		.thumb_func
 1610              		.fpu fpv4-sp-d16
 1612              	HAL_TIMEx_PWMN_Start:
 1613              	.LFB410:
 1614              		.cfi_startproc
 1615              		@ args = 0, pretend = 0, frame = 0
 1616              		@ frame_needed = 0, uses_anonymous_args = 0
 1617              		@ link register save eliminated.
 1618 0000 FFF7FEBF 		b	HAL_TIMEx_OCN_Start
 1619              		.cfi_endproc
 1620              	.LFE410:
 1622              		.section	.text.HAL_TIMEx_PWMN_Stop,"ax",%progbits
 1623              		.align	1
 1624              		.global	HAL_TIMEx_PWMN_Stop
 1625              		.syntax unified
 1626              		.thumb
 1627              		.thumb_func
 1628              		.fpu fpv4-sp-d16
 1630              	HAL_TIMEx_PWMN_Stop:
 1631              	.LFB412:
 1632              		.cfi_startproc
 1633              		@ args = 0, pretend = 0, frame = 0
 1634              		@ frame_needed = 0, uses_anonymous_args = 0
 1635              		@ link register save eliminated.
 1636 0000 FFF7FEBF 		b	HAL_TIMEx_OCN_Stop
 1637              		.cfi_endproc
 1638              	.LFE412:
 1640              		.section	.text.HAL_TIMEx_PWMN_Start_IT,"ax",%progbits
 1641              		.align	1
 1642              		.global	HAL_TIMEx_PWMN_Start_IT
 1643              		.syntax unified
 1644              		.thumb
 1645              		.thumb_func
 1646              		.fpu fpv4-sp-d16
 1648              	HAL_TIMEx_PWMN_Start_IT:
 1649              	.LFB416:
 1650              		.cfi_startproc
 1651              		@ args = 0, pretend = 0, frame = 0
 1652              		@ frame_needed = 0, uses_anonymous_args = 0
 1653              		@ link register save eliminated.
 1654 0000 FFF7FEBF 		b	HAL_TIMEx_OCN_Start_IT
 1655              		.cfi_endproc
 1656              	.LFE416:
 1658              		.section	.text.HAL_TIMEx_PWMN_Stop_IT,"ax",%progbits
 1659              		.align	1
 1660              		.global	HAL_TIMEx_PWMN_Stop_IT
 1661              		.syntax unified
 1662              		.thumb
 1663              		.thumb_func
 1664              		.fpu fpv4-sp-d16
 1666              	HAL_TIMEx_PWMN_Stop_IT:
 1667              	.LFB418:
 1668              		.cfi_startproc
 1669              		@ args = 0, pretend = 0, frame = 0
 1670              		@ frame_needed = 0, uses_anonymous_args = 0
 1671              		@ link register save eliminated.
 1672 0000 FFF7FEBF 		b	HAL_TIMEx_OCN_Stop_IT
 1673              		.cfi_endproc
 1674              	.LFE418:
 1676              		.section	.text.HAL_TIMEx_PWMN_Start_DMA,"ax",%progbits
 1677              		.align	1
 1678              		.global	HAL_TIMEx_PWMN_Start_DMA
 1679              		.syntax unified
 1680              		.thumb
 1681              		.thumb_func
 1682              		.fpu fpv4-sp-d16
 1684              	HAL_TIMEx_PWMN_Start_DMA:
 1685              	.LFB420:
 1686              		.cfi_startproc
 1687              		@ args = 0, pretend = 0, frame = 0
 1688              		@ frame_needed = 0, uses_anonymous_args = 0
 1689              		@ link register save eliminated.
 1690 0000 FFF7FEBF 		b	HAL_TIMEx_OCN_Start_DMA
 1691              		.cfi_endproc
 1692              	.LFE420:
 1694              		.section	.text.HAL_TIMEx_PWMN_Stop_DMA,"ax",%progbits
 1695              		.align	1
 1696              		.global	HAL_TIMEx_PWMN_Stop_DMA
 1697              		.syntax unified
 1698              		.thumb
 1699              		.thumb_func
 1700              		.fpu fpv4-sp-d16
 1702              	HAL_TIMEx_PWMN_Stop_DMA:
 1703              	.LFB422:
 1704              		.cfi_startproc
 1705              		@ args = 0, pretend = 0, frame = 0
 1706              		@ frame_needed = 0, uses_anonymous_args = 0
 1707              		@ link register save eliminated.
 1708 0000 FFF7FEBF 		b	HAL_TIMEx_OCN_Stop_DMA
 1709              		.cfi_endproc
 1710              	.LFE422:
 1712              		.section	.text.HAL_TIMEx_OnePulseN_Start,"ax",%progbits
 1713              		.align	1
 1714              		.global	HAL_TIMEx_OnePulseN_Start
 1715              		.syntax unified
 1716              		.thumb
 1717              		.thumb_func
 1718              		.fpu fpv4-sp-d16
 1720              	HAL_TIMEx_OnePulseN_Start:
 1721              	.LVL94:
 1722              	.LFB347:
1426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1723              		.loc 1 1426 1 view -0
 1724              		.cfi_startproc
 1725              		@ args = 0, pretend = 0, frame = 0
 1726              		@ frame_needed = 0, uses_anonymous_args = 0
1428:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1727              		.loc 1 1428 3 view .LVU453
1431:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1728              		.loc 1 1431 3 view .LVU454
1426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1729              		.loc 1 1426 1 is_stmt 0 view .LVU455
 1730 0000 10B5     		push	{r4, lr}
 1731              		.cfi_def_cfa_offset 8
 1732              		.cfi_offset 4, -8
 1733              		.cfi_offset 14, -4
1426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1734              		.loc 1 1426 1 view .LVU456
 1735 0002 0446     		mov	r4, r0
1431:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1736              		.loc 1 1431 3 view .LVU457
 1737 0004 0422     		movs	r2, #4
 1738 0006 0068     		ldr	r0, [r0]
 1739              	.LVL95:
1431:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1740              		.loc 1 1431 3 view .LVU458
 1741 0008 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 1742              	.LVL96:
1434:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1743              		.loc 1 1434 3 is_stmt 1 view .LVU459
 1744 000c 2268     		ldr	r2, [r4]
 1745 000e 536C     		ldr	r3, [r2, #68]
 1746 0010 43F40043 		orr	r3, r3, #32768
 1747 0014 5364     		str	r3, [r2, #68]
1437:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 1748              		.loc 1 1437 3 view .LVU460
1438:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1749              		.loc 1 1438 1 is_stmt 0 view .LVU461
 1750 0016 0020     		movs	r0, #0
 1751 0018 10BD     		pop	{r4, pc}
1438:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1752              		.loc 1 1438 1 view .LVU462
 1753              		.cfi_endproc
 1754              	.LFE347:
 1756              		.section	.text.HAL_TIMEx_OnePulseN_Stop,"ax",%progbits
 1757              		.align	1
 1758              		.global	HAL_TIMEx_OnePulseN_Stop
 1759              		.syntax unified
 1760              		.thumb
 1761              		.thumb_func
 1762              		.fpu fpv4-sp-d16
 1764              	HAL_TIMEx_OnePulseN_Stop:
 1765              	.LFB414:
 1766              		.cfi_startproc
 1767              		@ args = 0, pretend = 0, frame = 0
 1768              		@ frame_needed = 0, uses_anonymous_args = 0
 1769              		@ link register save eliminated.
 1770 0000 FFF7FEBF 		b	HAL_TIMEx_OCN_Stop
 1771              		.cfi_endproc
 1772              	.LFE414:
 1774              		.section	.text.HAL_TIMEx_OnePulseN_Start_IT,"ax",%progbits
 1775              		.align	1
 1776              		.global	HAL_TIMEx_OnePulseN_Start_IT
 1777              		.syntax unified
 1778              		.thumb
 1779              		.thumb_func
 1780              		.fpu fpv4-sp-d16
 1782              	HAL_TIMEx_OnePulseN_Start_IT:
 1783              	.LVL97:
 1784              	.LFB349:
1480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1785              		.loc 1 1480 1 is_stmt 1 view -0
 1786              		.cfi_startproc
 1787              		@ args = 0, pretend = 0, frame = 0
 1788              		@ frame_needed = 0, uses_anonymous_args = 0
1482:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1789              		.loc 1 1482 3 view .LVU464
1485:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1790              		.loc 1 1485 3 view .LVU465
1480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1791              		.loc 1 1480 1 is_stmt 0 view .LVU466
 1792 0000 10B5     		push	{r4, lr}
 1793              		.cfi_def_cfa_offset 8
 1794              		.cfi_offset 4, -8
 1795              		.cfi_offset 14, -4
1480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1796              		.loc 1 1480 1 view .LVU467
 1797 0002 0446     		mov	r4, r0
1485:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1798              		.loc 1 1485 3 view .LVU468
 1799 0004 0068     		ldr	r0, [r0]
 1800              	.LVL98:
1485:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1801              		.loc 1 1485 3 view .LVU469
 1802 0006 C368     		ldr	r3, [r0, #12]
 1803 0008 43F00203 		orr	r3, r3, #2
 1804 000c C360     		str	r3, [r0, #12]
1488:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1805              		.loc 1 1488 3 is_stmt 1 view .LVU470
 1806 000e C368     		ldr	r3, [r0, #12]
 1807 0010 43F00403 		orr	r3, r3, #4
 1808 0014 C360     		str	r3, [r0, #12]
1491:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1809              		.loc 1 1491 3 view .LVU471
 1810 0016 0422     		movs	r2, #4
 1811 0018 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 1812              	.LVL99:
1494:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1813              		.loc 1 1494 3 view .LVU472
 1814 001c 2268     		ldr	r2, [r4]
 1815 001e 536C     		ldr	r3, [r2, #68]
 1816 0020 43F40043 		orr	r3, r3, #32768
 1817 0024 5364     		str	r3, [r2, #68]
1497:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 1818              		.loc 1 1497 3 view .LVU473
1498:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1819              		.loc 1 1498 1 is_stmt 0 view .LVU474
 1820 0026 0020     		movs	r0, #0
 1821 0028 10BD     		pop	{r4, pc}
1498:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1822              		.loc 1 1498 1 view .LVU475
 1823              		.cfi_endproc
 1824              	.LFE349:
 1826              		.section	.text.HAL_TIMEx_OnePulseN_Stop_IT,"ax",%progbits
 1827              		.align	1
 1828              		.global	HAL_TIMEx_OnePulseN_Stop_IT
 1829              		.syntax unified
 1830              		.thumb
 1831              		.thumb_func
 1832              		.fpu fpv4-sp-d16
 1834              	HAL_TIMEx_OnePulseN_Stop_IT:
 1835              	.LVL100:
 1836              	.LFB350:
1511:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1837              		.loc 1 1511 1 is_stmt 1 view -0
 1838              		.cfi_startproc
 1839              		@ args = 0, pretend = 0, frame = 0
 1840              		@ frame_needed = 0, uses_anonymous_args = 0
1513:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1841              		.loc 1 1513 3 view .LVU477
1516:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1842              		.loc 1 1516 3 view .LVU478
1511:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1843              		.loc 1 1511 1 is_stmt 0 view .LVU479
 1844 0000 10B5     		push	{r4, lr}
 1845              		.cfi_def_cfa_offset 8
 1846              		.cfi_offset 4, -8
 1847              		.cfi_offset 14, -4
1511:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1848              		.loc 1 1511 1 view .LVU480
 1849 0002 0446     		mov	r4, r0
1516:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1850              		.loc 1 1516 3 view .LVU481
 1851 0004 0068     		ldr	r0, [r0]
 1852              	.LVL101:
1516:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1853              		.loc 1 1516 3 view .LVU482
 1854 0006 C368     		ldr	r3, [r0, #12]
 1855 0008 23F00203 		bic	r3, r3, #2
 1856 000c C360     		str	r3, [r0, #12]
1519:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1857              		.loc 1 1519 3 is_stmt 1 view .LVU483
 1858 000e C368     		ldr	r3, [r0, #12]
 1859 0010 23F00403 		bic	r3, r3, #4
 1860 0014 C360     		str	r3, [r0, #12]
1522:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1861              		.loc 1 1522 3 view .LVU484
 1862 0016 0022     		movs	r2, #0
 1863 0018 FFF7FEFF 		bl	TIM_CCxNChannelCmd
 1864              	.LVL102:
1525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1865              		.loc 1 1525 3 view .LVU485
1525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1866              		.loc 1 1525 3 view .LVU486
 1867 001c 2368     		ldr	r3, [r4]
 1868 001e 196A     		ldr	r1, [r3, #32]
 1869 0020 41F21112 		movw	r2, #4369
 1870 0024 1142     		tst	r1, r2
 1871 0026 08D1     		bne	.L134
1525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1872              		.loc 1 1525 3 discriminator 1 view .LVU487
 1873 0028 196A     		ldr	r1, [r3, #32]
 1874 002a 44F24442 		movw	r2, #17476
 1875 002e 1142     		tst	r1, r2
1525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1876              		.loc 1 1525 3 discriminator 1 view .LVU488
 1877 0030 02BF     		ittt	eq
 1878 0032 5A6C     		ldreq	r2, [r3, #68]
 1879 0034 22F40042 		biceq	r2, r2, #32768
 1880 0038 5A64     		streq	r2, [r3, #68]
 1881              	.L134:
1528:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1882              		.loc 1 1528 3 view .LVU489
1528:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1883              		.loc 1 1528 3 view .LVU490
 1884 003a 196A     		ldr	r1, [r3, #32]
 1885 003c 41F21112 		movw	r2, #4369
 1886 0040 1142     		tst	r1, r2
 1887 0042 08D1     		bne	.L135
1528:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1888              		.loc 1 1528 3 discriminator 1 view .LVU491
 1889 0044 196A     		ldr	r1, [r3, #32]
 1890 0046 44F24442 		movw	r2, #17476
 1891 004a 1142     		tst	r1, r2
1528:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1892              		.loc 1 1528 3 discriminator 1 view .LVU492
 1893 004c 02BF     		ittt	eq
 1894 004e 1A68     		ldreq	r2, [r3]
 1895 0050 22F00102 		biceq	r2, r2, #1
 1896 0054 1A60     		streq	r2, [r3]
 1897              	.L135:
1531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 1898              		.loc 1 1531 3 view .LVU493
1532:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1899              		.loc 1 1532 1 is_stmt 0 view .LVU494
 1900 0056 0020     		movs	r0, #0
 1901 0058 10BD     		pop	{r4, pc}
1532:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1902              		.loc 1 1532 1 view .LVU495
 1903              		.cfi_endproc
 1904              	.LFE350:
 1906              		.section	.text.HAL_TIMEx_ConfigCommutEvent,"ax",%progbits
 1907              		.align	1
 1908              		.global	HAL_TIMEx_ConfigCommutEvent
 1909              		.syntax unified
 1910              		.thumb
 1911              		.thumb_func
 1912              		.fpu fpv4-sp-d16
 1914              	HAL_TIMEx_ConfigCommutEvent:
 1915              	.LVL103:
 1916              	.LFB351:
1597:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1917              		.loc 1 1597 1 is_stmt 1 view -0
 1918              		.cfi_startproc
 1919              		@ args = 0, pretend = 0, frame = 0
 1920              		@ frame_needed = 0, uses_anonymous_args = 0
1599:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_INSTANCE(htim->Instance, InputTrigger));
 1921              		.loc 1 1599 3 view .LVU497
1600:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1922              		.loc 1 1600 3 view .LVU498
1602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1923              		.loc 1 1602 3 view .LVU499
1602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1924              		.loc 1 1602 3 view .LVU500
 1925 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1926 0004 012B     		cmp	r3, #1
1597:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 1927              		.loc 1 1597 1 is_stmt 0 view .LVU501
 1928 0006 30B5     		push	{r4, r5, lr}
 1929              		.cfi_def_cfa_offset 12
 1930              		.cfi_offset 4, -12
 1931              		.cfi_offset 5, -8
 1932              		.cfi_offset 14, -4
1602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1933              		.loc 1 1602 3 view .LVU502
 1934 0008 37D0     		beq	.L140
1602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1935              		.loc 1 1602 3 is_stmt 1 discriminator 2 view .LVU503
 1936 000a 0123     		movs	r3, #1
 1937 000c 80F83C30 		strb	r3, [r0, #60]
1619:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
 1938              		.loc 1 1619 3 discriminator 2 view .LVU504
1619:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
 1939              		.loc 1 1619 6 is_stmt 0 discriminator 2 view .LVU505
 1940 0010 31F03003 		bics	r3, r1, #48
 1941 0014 0368     		ldr	r3, [r0]
 1942 0016 0FD0     		beq	.L138
1620:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR5)  || (InputTrigger == TIM_TS_ITR6) ||
 1943              		.loc 1 1620 71 discriminator 1 view .LVU506
 1944 0018 21F02004 		bic	r4, r1, #32
 1945 001c B4F1101F 		cmp	r4, #1048592
 1946 0020 0AD0     		beq	.L138
1621:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR7)  || (InputTrigger == TIM_TS_ITR8) ||
 1947              		.loc 1 1621 38 view .LVU507
 1948 0022 174C     		ldr	r4, .L147
 1949 0024 21F04005 		bic	r5, r1, #64
 1950 0028 A542     		cmp	r5, r4
 1951 002a 05D0     		beq	.L138
1622:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
 1952              		.loc 1 1622 38 view .LVU508
 1953 002c 2034     		adds	r4, r4, #32
 1954 002e A142     		cmp	r1, r4
 1955 0030 02D0     		beq	.L138
1623:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* TIM5 && TIM20 */
 1956              		.loc 1 1623 38 view .LVU509
 1957 0032 3034     		adds	r4, r4, #48
 1958 0034 A142     		cmp	r1, r4
 1959 0036 08D1     		bne	.L139
 1960              	.L138:
1627:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
 1961              		.loc 1 1627 5 is_stmt 1 view .LVU510
1627:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
 1962              		.loc 1 1627 26 is_stmt 0 view .LVU511
 1963 0038 9C68     		ldr	r4, [r3, #8]
 1964 003a 24F44014 		bic	r4, r4, #3145728
 1965 003e 24F07004 		bic	r4, r4, #112
 1966 0042 9C60     		str	r4, [r3, #8]
1628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1967              		.loc 1 1628 5 is_stmt 1 view .LVU512
1628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1968              		.loc 1 1628 26 is_stmt 0 view .LVU513
 1969 0044 9C68     		ldr	r4, [r3, #8]
 1970 0046 2143     		orrs	r1, r1, r4
 1971              	.LVL104:
1628:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 1972              		.loc 1 1628 26 view .LVU514
 1973 0048 9960     		str	r1, [r3, #8]
 1974              	.L139:
1632:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
 1975              		.loc 1 1632 3 is_stmt 1 view .LVU515
1632:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
 1976              		.loc 1 1632 23 is_stmt 0 view .LVU516
 1977 004a 5C68     		ldr	r4, [r3, #4]
 1978 004c 44F00104 		orr	r4, r4, #1
 1979 0050 5C60     		str	r4, [r3, #4]
1634:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
 1980              		.loc 1 1634 3 is_stmt 1 view .LVU517
1634:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
 1981              		.loc 1 1634 23 is_stmt 0 view .LVU518
 1982 0052 5C68     		ldr	r4, [r3, #4]
 1983 0054 24F00404 		bic	r4, r4, #4
 1984 0058 5C60     		str	r4, [r3, #4]
1635:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1985              		.loc 1 1635 3 is_stmt 1 view .LVU519
1635:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1986              		.loc 1 1635 23 is_stmt 0 view .LVU520
 1987 005a 5968     		ldr	r1, [r3, #4]
 1988 005c 1143     		orrs	r1, r1, r2
 1989 005e 5960     		str	r1, [r3, #4]
1638:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1990              		.loc 1 1638 3 is_stmt 1 view .LVU521
 1991 0060 DA68     		ldr	r2, [r3, #12]
 1992              	.LVL105:
1638:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1993              		.loc 1 1638 3 is_stmt 0 view .LVU522
 1994 0062 22F02002 		bic	r2, r2, #32
 1995 0066 DA60     		str	r2, [r3, #12]
1641:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 1996              		.loc 1 1641 3 is_stmt 1 view .LVU523
 1997 0068 DA68     		ldr	r2, [r3, #12]
 1998 006a 22F40052 		bic	r2, r2, #8192
 1999 006e DA60     		str	r2, [r3, #12]
1643:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2000              		.loc 1 1643 3 view .LVU524
1643:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2001              		.loc 1 1643 3 view .LVU525
 2002 0070 0023     		movs	r3, #0
 2003 0072 80F83C30 		strb	r3, [r0, #60]
1645:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2004              		.loc 1 1645 3 view .LVU526
1645:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2005              		.loc 1 1645 10 is_stmt 0 view .LVU527
 2006 0076 1846     		mov	r0, r3
 2007              	.LVL106:
 2008              	.L137:
1646:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2009              		.loc 1 1646 1 view .LVU528
 2010 0078 30BD     		pop	{r4, r5, pc}
 2011              	.LVL107:
 2012              	.L140:
1602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2013              		.loc 1 1602 3 view .LVU529
 2014 007a 0220     		movs	r0, #2
 2015              	.LVL108:
1602:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2016              		.loc 1 1602 3 view .LVU530
 2017 007c FCE7     		b	.L137
 2018              	.L148:
 2019 007e 00BF     		.align	2
 2020              	.L147:
 2021 0080 20001000 		.word	1048608
 2022              		.cfi_endproc
 2023              	.LFE351:
 2025              		.section	.text.HAL_TIMEx_ConfigCommutEvent_IT,"ax",%progbits
 2026              		.align	1
 2027              		.global	HAL_TIMEx_ConfigCommutEvent_IT
 2028              		.syntax unified
 2029              		.thumb
 2030              		.thumb_func
 2031              		.fpu fpv4-sp-d16
 2033              	HAL_TIMEx_ConfigCommutEvent_IT:
 2034              	.LVL109:
 2035              	.LFB352:
1683:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 2036              		.loc 1 1683 1 is_stmt 1 view -0
 2037              		.cfi_startproc
 2038              		@ args = 0, pretend = 0, frame = 0
 2039              		@ frame_needed = 0, uses_anonymous_args = 0
1685:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_INSTANCE(htim->Instance, InputTrigger));
 2040              		.loc 1 1685 3 view .LVU532
1686:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2041              		.loc 1 1686 3 view .LVU533
1688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2042              		.loc 1 1688 3 view .LVU534
1688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2043              		.loc 1 1688 3 view .LVU535
 2044 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2045 0004 012B     		cmp	r3, #1
1683:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 2046              		.loc 1 1683 1 is_stmt 0 view .LVU536
 2047 0006 30B5     		push	{r4, r5, lr}
 2048              		.cfi_def_cfa_offset 12
 2049              		.cfi_offset 4, -12
 2050              		.cfi_offset 5, -8
 2051              		.cfi_offset 14, -4
1688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2052              		.loc 1 1688 3 view .LVU537
 2053 0008 37D0     		beq	.L153
1688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2054              		.loc 1 1688 3 is_stmt 1 discriminator 2 view .LVU538
 2055 000a 0123     		movs	r3, #1
 2056 000c 80F83C30 		strb	r3, [r0, #60]
1705:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
 2057              		.loc 1 1705 3 discriminator 2 view .LVU539
1705:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
 2058              		.loc 1 1705 6 is_stmt 0 discriminator 2 view .LVU540
 2059 0010 31F03003 		bics	r3, r1, #48
 2060 0014 0368     		ldr	r3, [r0]
 2061 0016 0FD0     		beq	.L151
1706:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR5)  || (InputTrigger == TIM_TS_ITR6) ||
 2062              		.loc 1 1706 71 discriminator 1 view .LVU541
 2063 0018 21F02004 		bic	r4, r1, #32
 2064 001c B4F1101F 		cmp	r4, #1048592
 2065 0020 0AD0     		beq	.L151
1707:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR7)  || (InputTrigger == TIM_TS_ITR8) ||
 2066              		.loc 1 1707 38 view .LVU542
 2067 0022 174C     		ldr	r4, .L160
 2068 0024 21F04005 		bic	r5, r1, #64
 2069 0028 A542     		cmp	r5, r4
 2070 002a 05D0     		beq	.L151
1708:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
 2071              		.loc 1 1708 38 view .LVU543
 2072 002c 2034     		adds	r4, r4, #32
 2073 002e A142     		cmp	r1, r4
 2074 0030 02D0     		beq	.L151
1709:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* TIM5 && TIM20 */
 2075              		.loc 1 1709 38 view .LVU544
 2076 0032 3034     		adds	r4, r4, #48
 2077 0034 A142     		cmp	r1, r4
 2078 0036 08D1     		bne	.L152
 2079              	.L151:
1713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
 2080              		.loc 1 1713 5 is_stmt 1 view .LVU545
1713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
 2081              		.loc 1 1713 26 is_stmt 0 view .LVU546
 2082 0038 9C68     		ldr	r4, [r3, #8]
 2083 003a 24F44014 		bic	r4, r4, #3145728
 2084 003e 24F07004 		bic	r4, r4, #112
 2085 0042 9C60     		str	r4, [r3, #8]
1714:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2086              		.loc 1 1714 5 is_stmt 1 view .LVU547
1714:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2087              		.loc 1 1714 26 is_stmt 0 view .LVU548
 2088 0044 9C68     		ldr	r4, [r3, #8]
 2089 0046 2143     		orrs	r1, r1, r4
 2090              	.LVL110:
1714:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2091              		.loc 1 1714 26 view .LVU549
 2092 0048 9960     		str	r1, [r3, #8]
 2093              	.L152:
1718:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
 2094              		.loc 1 1718 3 is_stmt 1 view .LVU550
1718:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
 2095              		.loc 1 1718 23 is_stmt 0 view .LVU551
 2096 004a 5C68     		ldr	r4, [r3, #4]
 2097 004c 44F00104 		orr	r4, r4, #1
 2098 0050 5C60     		str	r4, [r3, #4]
1720:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
 2099              		.loc 1 1720 3 is_stmt 1 view .LVU552
1720:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
 2100              		.loc 1 1720 23 is_stmt 0 view .LVU553
 2101 0052 5C68     		ldr	r4, [r3, #4]
 2102 0054 24F00404 		bic	r4, r4, #4
 2103 0058 5C60     		str	r4, [r3, #4]
1721:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2104              		.loc 1 1721 3 is_stmt 1 view .LVU554
1721:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2105              		.loc 1 1721 23 is_stmt 0 view .LVU555
 2106 005a 5968     		ldr	r1, [r3, #4]
 2107 005c 1143     		orrs	r1, r1, r2
 2108 005e 5960     		str	r1, [r3, #4]
1724:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2109              		.loc 1 1724 3 is_stmt 1 view .LVU556
 2110 0060 DA68     		ldr	r2, [r3, #12]
 2111              	.LVL111:
1724:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2112              		.loc 1 1724 3 is_stmt 0 view .LVU557
 2113 0062 22F40052 		bic	r2, r2, #8192
 2114 0066 DA60     		str	r2, [r3, #12]
1727:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2115              		.loc 1 1727 3 is_stmt 1 view .LVU558
 2116 0068 DA68     		ldr	r2, [r3, #12]
 2117 006a 42F02002 		orr	r2, r2, #32
 2118 006e DA60     		str	r2, [r3, #12]
1729:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2119              		.loc 1 1729 3 view .LVU559
1729:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2120              		.loc 1 1729 3 view .LVU560
 2121 0070 0023     		movs	r3, #0
 2122 0072 80F83C30 		strb	r3, [r0, #60]
1731:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2123              		.loc 1 1731 3 view .LVU561
1731:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2124              		.loc 1 1731 10 is_stmt 0 view .LVU562
 2125 0076 1846     		mov	r0, r3
 2126              	.LVL112:
 2127              	.L150:
1732:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2128              		.loc 1 1732 1 view .LVU563
 2129 0078 30BD     		pop	{r4, r5, pc}
 2130              	.LVL113:
 2131              	.L153:
1688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2132              		.loc 1 1688 3 view .LVU564
 2133 007a 0220     		movs	r0, #2
 2134              	.LVL114:
1688:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2135              		.loc 1 1688 3 view .LVU565
 2136 007c FCE7     		b	.L150
 2137              	.L161:
 2138 007e 00BF     		.align	2
 2139              	.L160:
 2140 0080 20001000 		.word	1048608
 2141              		.cfi_endproc
 2142              	.LFE352:
 2144              		.section	.text.HAL_TIMEx_ConfigCommutEvent_DMA,"ax",%progbits
 2145              		.align	1
 2146              		.global	HAL_TIMEx_ConfigCommutEvent_DMA
 2147              		.syntax unified
 2148              		.thumb
 2149              		.thumb_func
 2150              		.fpu fpv4-sp-d16
 2152              	HAL_TIMEx_ConfigCommutEvent_DMA:
 2153              	.LVL115:
 2154              	.LFB353:
1770:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 2155              		.loc 1 1770 1 is_stmt 1 view -0
 2156              		.cfi_startproc
 2157              		@ args = 0, pretend = 0, frame = 0
 2158              		@ frame_needed = 0, uses_anonymous_args = 0
1772:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_INSTANCE(htim->Instance, InputTrigger));
 2159              		.loc 1 1772 3 view .LVU567
1773:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2160              		.loc 1 1773 3 view .LVU568
1775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2161              		.loc 1 1775 3 view .LVU569
1775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2162              		.loc 1 1775 3 view .LVU570
 2163 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2164 0004 012B     		cmp	r3, #1
1770:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 2165              		.loc 1 1770 1 is_stmt 0 view .LVU571
 2166 0006 30B5     		push	{r4, r5, lr}
 2167              		.cfi_def_cfa_offset 12
 2168              		.cfi_offset 4, -12
 2169              		.cfi_offset 5, -8
 2170              		.cfi_offset 14, -4
1775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2171              		.loc 1 1775 3 view .LVU572
 2172 0008 3ED0     		beq	.L166
1775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2173              		.loc 1 1775 3 is_stmt 1 discriminator 2 view .LVU573
 2174 000a 0123     		movs	r3, #1
 2175 000c 80F83C30 		strb	r3, [r0, #60]
1792:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
 2176              		.loc 1 1792 3 discriminator 2 view .LVU574
1792:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR2)  || (InputTrigger == TIM_TS_ITR3) ||
 2177              		.loc 1 1792 6 is_stmt 0 discriminator 2 view .LVU575
 2178 0010 31F03003 		bics	r3, r1, #48
 2179 0014 0368     		ldr	r3, [r0]
 2180 0016 0FD0     		beq	.L164
1793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR5)  || (InputTrigger == TIM_TS_ITR6) ||
 2181              		.loc 1 1793 71 discriminator 1 view .LVU576
 2182 0018 21F02004 		bic	r4, r1, #32
 2183 001c B4F1101F 		cmp	r4, #1048592
 2184 0020 0AD0     		beq	.L164
1794:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR7)  || (InputTrigger == TIM_TS_ITR8) ||
 2185              		.loc 1 1794 38 view .LVU577
 2186 0022 1A4C     		ldr	r4, .L173
 2187 0024 21F04005 		bic	r5, r1, #64
 2188 0028 A542     		cmp	r5, r4
 2189 002a 05D0     		beq	.L164
1795:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       (InputTrigger == TIM_TS_ITR10) || (InputTrigger == TIM_TS_ITR11))
 2190              		.loc 1 1795 38 view .LVU578
 2191 002c 2034     		adds	r4, r4, #32
 2192 002e A142     		cmp	r1, r4
 2193 0030 02D0     		beq	.L164
1796:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* TIM5 && TIM20 */
 2194              		.loc 1 1796 38 view .LVU579
 2195 0032 3034     		adds	r4, r4, #48
 2196 0034 A142     		cmp	r1, r4
 2197 0036 08D1     		bne	.L165
 2198              	.L164:
1800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
 2199              		.loc 1 1800 5 is_stmt 1 view .LVU580
1800:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     htim->Instance->SMCR |= InputTrigger;
 2200              		.loc 1 1800 26 is_stmt 0 view .LVU581
 2201 0038 9C68     		ldr	r4, [r3, #8]
 2202 003a 24F44014 		bic	r4, r4, #3145728
 2203 003e 24F07004 		bic	r4, r4, #112
 2204 0042 9C60     		str	r4, [r3, #8]
1801:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2205              		.loc 1 1801 5 is_stmt 1 view .LVU582
1801:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2206              		.loc 1 1801 26 is_stmt 0 view .LVU583
 2207 0044 9C68     		ldr	r4, [r3, #8]
 2208 0046 2143     		orrs	r1, r1, r4
 2209              	.LVL116:
1801:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2210              		.loc 1 1801 26 view .LVU584
 2211 0048 9960     		str	r1, [r3, #8]
 2212              	.L165:
1805:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
 2213              		.loc 1 1805 3 is_stmt 1 view .LVU585
1805:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the Commutation event source */
 2214              		.loc 1 1805 23 is_stmt 0 view .LVU586
 2215 004a 5C68     		ldr	r4, [r3, #4]
 2216 004c 44F00104 		orr	r4, r4, #1
 2217 0050 5C60     		str	r4, [r3, #4]
1807:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
 2218              		.loc 1 1807 3 is_stmt 1 view .LVU587
1807:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->Instance->CR2 |= CommutationSource;
 2219              		.loc 1 1807 23 is_stmt 0 view .LVU588
 2220 0052 5C68     		ldr	r4, [r3, #4]
 2221 0054 24F00404 		bic	r4, r4, #4
 2222 0058 5C60     		str	r4, [r3, #4]
1808:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2223              		.loc 1 1808 3 is_stmt 1 view .LVU589
1808:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2224              		.loc 1 1808 23 is_stmt 0 view .LVU590
 2225 005a 5968     		ldr	r1, [r3, #4]
 2226 005c 1143     		orrs	r1, r1, r2
1812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback = TIMEx_DMACommutationHalfCplt;
 2227              		.loc 1 1812 13 view .LVU591
 2228 005e 426B     		ldr	r2, [r0, #52]
 2229              	.LVL117:
1808:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2230              		.loc 1 1808 23 view .LVU592
 2231 0060 5960     		str	r1, [r3, #4]
1812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback = TIMEx_DMACommutationHalfCplt;
 2232              		.loc 1 1812 3 is_stmt 1 view .LVU593
1812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback = TIMEx_DMACommutationHalfCplt;
 2233              		.loc 1 1812 56 is_stmt 0 view .LVU594
 2234 0062 0B49     		ldr	r1, .L173+4
 2235 0064 D162     		str	r1, [r2, #44]
1813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA error callback */
 2236              		.loc 1 1813 3 is_stmt 1 view .LVU595
1813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the DMA error callback */
 2237              		.loc 1 1813 60 is_stmt 0 view .LVU596
 2238 0066 0B49     		ldr	r1, .L173+8
 2239 0068 1163     		str	r1, [r2, #48]
1815:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2240              		.loc 1 1815 3 is_stmt 1 view .LVU597
1815:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2241              		.loc 1 1815 57 is_stmt 0 view .LVU598
 2242 006a 0B49     		ldr	r1, .L173+12
 2243 006c 5163     		str	r1, [r2, #52]
1818:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2244              		.loc 1 1818 3 is_stmt 1 view .LVU599
 2245 006e DA68     		ldr	r2, [r3, #12]
 2246 0070 22F02002 		bic	r2, r2, #32
 2247 0074 DA60     		str	r2, [r3, #12]
1821:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2248              		.loc 1 1821 3 view .LVU600
 2249 0076 DA68     		ldr	r2, [r3, #12]
 2250 0078 42F40052 		orr	r2, r2, #8192
 2251 007c DA60     		str	r2, [r3, #12]
1823:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2252              		.loc 1 1823 3 view .LVU601
1823:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2253              		.loc 1 1823 3 view .LVU602
 2254 007e 0023     		movs	r3, #0
 2255 0080 80F83C30 		strb	r3, [r0, #60]
1825:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2256              		.loc 1 1825 3 view .LVU603
1825:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2257              		.loc 1 1825 10 is_stmt 0 view .LVU604
 2258 0084 1846     		mov	r0, r3
 2259              	.LVL118:
 2260              	.L163:
1826:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2261              		.loc 1 1826 1 view .LVU605
 2262 0086 30BD     		pop	{r4, r5, pc}
 2263              	.LVL119:
 2264              	.L166:
1775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2265              		.loc 1 1775 3 view .LVU606
 2266 0088 0220     		movs	r0, #2
 2267              	.LVL120:
1775:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2268              		.loc 1 1775 3 view .LVU607
 2269 008a FCE7     		b	.L163
 2270              	.L174:
 2271              		.align	2
 2272              	.L173:
 2273 008c 20001000 		.word	1048608
 2274 0090 00000000 		.word	TIMEx_DMACommutationCplt
 2275 0094 00000000 		.word	TIMEx_DMACommutationHalfCplt
 2276 0098 00000000 		.word	TIM_DMAError
 2277              		.cfi_endproc
 2278              	.LFE353:
 2280              		.section	.text.HAL_TIMEx_MasterConfigSynchronization,"ax",%progbits
 2281              		.align	1
 2282              		.global	HAL_TIMEx_MasterConfigSynchronization
 2283              		.syntax unified
 2284              		.thumb
 2285              		.thumb_func
 2286              		.fpu fpv4-sp-d16
 2288              	HAL_TIMEx_MasterConfigSynchronization:
 2289              	.LVL121:
 2290              	.LFB354:
1838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpcr2;
 2291              		.loc 1 1838 1 is_stmt 1 view -0
 2292              		.cfi_startproc
 2293              		@ args = 0, pretend = 0, frame = 0
 2294              		@ frame_needed = 0, uses_anonymous_args = 0
1839:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpsmcr;
 2295              		.loc 1 1839 3 view .LVU609
1840:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2296              		.loc 1 1840 3 view .LVU610
1843:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_TRGO_SOURCE(sMasterConfig->MasterOutputTrigger));
 2297              		.loc 1 1843 3 view .LVU611
1844:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_MSM_STATE(sMasterConfig->MasterSlaveMode));
 2298              		.loc 1 1844 3 view .LVU612
1845:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2299              		.loc 1 1845 3 view .LVU613
1848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2300              		.loc 1 1848 3 view .LVU614
1848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2301              		.loc 1 1848 3 view .LVU615
 2302 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2303 0004 012B     		cmp	r3, #1
1838:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpcr2;
 2304              		.loc 1 1838 1 is_stmt 0 view .LVU616
 2305 0006 30B5     		push	{r4, r5, lr}
 2306              		.cfi_def_cfa_offset 12
 2307              		.cfi_offset 4, -12
 2308              		.cfi_offset 5, -8
 2309              		.cfi_offset 14, -4
 2310 0008 4FF00203 		mov	r3, #2
1848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2311              		.loc 1 1848 3 view .LVU617
 2312 000c 21D0     		beq	.L179
1848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2313              		.loc 1 1848 3 is_stmt 1 discriminator 2 view .LVU618
1851:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2314              		.loc 1 1851 3 discriminator 2 view .LVU619
1854:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2315              		.loc 1 1854 16 is_stmt 0 discriminator 2 view .LVU620
 2316 000e 0268     		ldr	r2, [r0]
1860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2317              		.loc 1 1860 6 discriminator 2 view .LVU621
 2318 0010 114D     		ldr	r5, .L180
1851:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2319              		.loc 1 1851 15 discriminator 2 view .LVU622
 2320 0012 80F83D30 		strb	r3, [r0, #61]
1854:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2321              		.loc 1 1854 3 is_stmt 1 discriminator 2 view .LVU623
1860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2322              		.loc 1 1860 6 is_stmt 0 discriminator 2 view .LVU624
 2323 0016 AA42     		cmp	r2, r5
1854:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2324              		.loc 1 1854 10 discriminator 2 view .LVU625
 2325 0018 5368     		ldr	r3, [r2, #4]
 2326              	.LVL122:
1857:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2327              		.loc 1 1857 3 is_stmt 1 discriminator 2 view .LVU626
1857:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2328              		.loc 1 1857 11 is_stmt 0 discriminator 2 view .LVU627
 2329 001a 9468     		ldr	r4, [r2, #8]
 2330              	.LVL123:
1860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2331              		.loc 1 1860 3 is_stmt 1 discriminator 2 view .LVU628
1860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2332              		.loc 1 1860 6 is_stmt 0 discriminator 2 view .LVU629
 2333 001c 03D0     		beq	.L177
1860:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2334              		.loc 1 1860 7 discriminator 1 view .LVU630
 2335 001e 05F50065 		add	r5, r5, #2048
 2336 0022 AA42     		cmp	r2, r5
 2337 0024 03D1     		bne	.L178
 2338              	.L177:
1863:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2339              		.loc 1 1863 5 is_stmt 1 view .LVU631
1866:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Select the TRGO2 source*/
 2340              		.loc 1 1866 5 view .LVU632
1868:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2341              		.loc 1 1868 12 is_stmt 0 view .LVU633
 2342 0026 4D68     		ldr	r5, [r1, #4]
1866:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     /* Select the TRGO2 source*/
 2343              		.loc 1 1866 12 view .LVU634
 2344 0028 23F47003 		bic	r3, r3, #15728640
 2345              	.LVL124:
1868:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2346              		.loc 1 1868 5 is_stmt 1 view .LVU635
1868:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2347              		.loc 1 1868 12 is_stmt 0 view .LVU636
 2348 002c 2B43     		orrs	r3, r3, r5
 2349              	.LVL125:
 2350              	.L178:
1872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the TRGO source */
 2351              		.loc 1 1872 3 is_stmt 1 view .LVU637
1874:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2352              		.loc 1 1874 10 is_stmt 0 view .LVU638
 2353 002e 0D68     		ldr	r5, [r1]
1879:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2354              		.loc 1 1879 11 view .LVU639
 2355 0030 8968     		ldr	r1, [r1, #8]
 2356              	.LVL126:
1872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the TRGO source */
 2357              		.loc 1 1872 10 view .LVU640
 2358 0032 23F00073 		bic	r3, r3, #33554432
 2359              	.LVL127:
1872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Select the TRGO source */
 2360              		.loc 1 1872 10 view .LVU641
 2361 0036 23F07003 		bic	r3, r3, #112
 2362              	.LVL128:
1874:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2363              		.loc 1 1874 3 is_stmt 1 view .LVU642
1874:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2364              		.loc 1 1874 10 is_stmt 0 view .LVU643
 2365 003a 2B43     		orrs	r3, r3, r5
 2366              	.LVL129:
1877:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set master mode */
 2367              		.loc 1 1877 3 is_stmt 1 view .LVU644
1877:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set master mode */
 2368              		.loc 1 1877 11 is_stmt 0 view .LVU645
 2369 003c 24F08004 		bic	r4, r4, #128
 2370              	.LVL130:
1879:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2371              		.loc 1 1879 3 is_stmt 1 view .LVU646
1882:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2372              		.loc 1 1882 23 is_stmt 0 view .LVU647
 2373 0040 5360     		str	r3, [r2, #4]
1879:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2374              		.loc 1 1879 11 view .LVU648
 2375 0042 0C43     		orrs	r4, r4, r1
 2376              	.LVL131:
1882:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2377              		.loc 1 1882 3 is_stmt 1 view .LVU649
1885:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2378              		.loc 1 1885 3 view .LVU650
1888:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2379              		.loc 1 1888 15 is_stmt 0 view .LVU651
 2380 0044 0123     		movs	r3, #1
 2381              	.LVL132:
1885:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2382              		.loc 1 1885 24 view .LVU652
 2383 0046 9460     		str	r4, [r2, #8]
 2384              	.LVL133:
1888:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2385              		.loc 1 1888 3 is_stmt 1 view .LVU653
1888:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2386              		.loc 1 1888 15 is_stmt 0 view .LVU654
 2387 0048 80F83D30 		strb	r3, [r0, #61]
1890:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2388              		.loc 1 1890 3 is_stmt 1 view .LVU655
1890:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2389              		.loc 1 1890 3 view .LVU656
 2390 004c 0023     		movs	r3, #0
 2391 004e 80F83C30 		strb	r3, [r0, #60]
1892:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2392              		.loc 1 1892 3 view .LVU657
 2393              	.LVL134:
 2394              	.L179:
1848:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2395              		.loc 1 1848 3 is_stmt 0 view .LVU658
 2396 0052 1846     		mov	r0, r3
 2397              	.LVL135:
1893:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2398              		.loc 1 1893 1 view .LVU659
 2399 0054 30BD     		pop	{r4, r5, pc}
 2400              	.L181:
 2401 0056 00BF     		.align	2
 2402              	.L180:
 2403 0058 002C0140 		.word	1073818624
 2404              		.cfi_endproc
 2405              	.LFE354:
 2407              		.section	.text.HAL_TIMEx_ConfigBreakDeadTime,"ax",%progbits
 2408              		.align	1
 2409              		.global	HAL_TIMEx_ConfigBreakDeadTime
 2410              		.syntax unified
 2411              		.thumb
 2412              		.thumb_func
 2413              		.fpu fpv4-sp-d16
 2415              	HAL_TIMEx_ConfigBreakDeadTime:
 2416              	.LVL136:
 2417              	.LFB355:
1908:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Keep this variable initialized to 0 as it is used to configure BDTR register */
 2418              		.loc 1 1908 1 is_stmt 1 view -0
 2419              		.cfi_startproc
 2420              		@ args = 0, pretend = 0, frame = 0
 2421              		@ frame_needed = 0, uses_anonymous_args = 0
1910:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2422              		.loc 1 1910 3 view .LVU661
1913:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_OSSR_STATE(sBreakDeadTimeConfig->OffStateRunMode));
 2423              		.loc 1 1913 3 view .LVU662
1914:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_OSSI_STATE(sBreakDeadTimeConfig->OffStateIDLEMode));
 2424              		.loc 1 1914 3 view .LVU663
1915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_LOCK_LEVEL(sBreakDeadTimeConfig->LockLevel));
 2425              		.loc 1 1915 3 view .LVU664
1916:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_DEADTIME(sBreakDeadTimeConfig->DeadTime));
 2426              		.loc 1 1916 3 view .LVU665
1917:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_STATE(sBreakDeadTimeConfig->BreakState));
 2427              		.loc 1 1917 3 view .LVU666
1918:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_POLARITY(sBreakDeadTimeConfig->BreakPolarity));
 2428              		.loc 1 1918 3 view .LVU667
1919:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAK_FILTER(sBreakDeadTimeConfig->BreakFilter));
 2429              		.loc 1 1919 3 view .LVU668
1920:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_AUTOMATIC_OUTPUT_STATE(sBreakDeadTimeConfig->AutomaticOutput));
 2430              		.loc 1 1920 3 view .LVU669
1921:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2431              		.loc 1 1921 3 view .LVU670
1924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2432              		.loc 1 1924 3 view .LVU671
1924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2433              		.loc 1 1924 3 view .LVU672
 2434 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2435 0004 012B     		cmp	r3, #1
1908:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Keep this variable initialized to 0 as it is used to configure BDTR register */
 2436              		.loc 1 1908 1 is_stmt 0 view .LVU673
 2437 0006 30B5     		push	{r4, r5, lr}
 2438              		.cfi_def_cfa_offset 12
 2439              		.cfi_offset 4, -12
 2440              		.cfi_offset 5, -8
 2441              		.cfi_offset 14, -4
1924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2442              		.loc 1 1924 3 view .LVU674
 2443 0008 4CD0     		beq	.L188
1924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2444              		.loc 1 1924 3 is_stmt 1 discriminator 2 view .LVU675
1930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_LOCK, sBreakDeadTimeConfig->LockLevel);
 2445              		.loc 1 1930 3 discriminator 2 view .LVU676
 2446              	.LVL137:
1931:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSI, sBreakDeadTimeConfig->OffStateIDLEMode);
 2447              		.loc 1 1931 3 discriminator 2 view .LVU677
1932:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSR, sBreakDeadTimeConfig->OffStateRunMode);
 2448              		.loc 1 1932 3 discriminator 2 view .LVU678
1931:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSI, sBreakDeadTimeConfig->OffStateIDLEMode);
 2449              		.loc 1 1931 3 is_stmt 0 discriminator 2 view .LVU679
 2450 000a CB68     		ldr	r3, [r1, #12]
 2451 000c 8A68     		ldr	r2, [r1, #8]
1939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2452              		.loc 1 1939 6 discriminator 2 view .LVU680
 2453 000e 264C     		ldr	r4, .L189
1931:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSI, sBreakDeadTimeConfig->OffStateIDLEMode);
 2454              		.loc 1 1931 3 discriminator 2 view .LVU681
 2455 0010 23F44073 		bic	r3, r3, #768
 2456 0014 1343     		orrs	r3, r3, r2
 2457              	.LVL138:
1932:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSR, sBreakDeadTimeConfig->OffStateRunMode);
 2458              		.loc 1 1932 3 discriminator 2 view .LVU682
 2459 0016 4A68     		ldr	r2, [r1, #4]
 2460 0018 23F48063 		bic	r3, r3, #1024
 2461              	.LVL139:
1933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKE, sBreakDeadTimeConfig->BreakState);
 2462              		.loc 1 1933 3 is_stmt 1 discriminator 2 view .LVU683
1932:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSR, sBreakDeadTimeConfig->OffStateRunMode);
 2463              		.loc 1 1932 3 is_stmt 0 discriminator 2 view .LVU684
 2464 001c 1343     		orrs	r3, r3, r2
 2465              	.LVL140:
1933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKE, sBreakDeadTimeConfig->BreakState);
 2466              		.loc 1 1933 3 discriminator 2 view .LVU685
 2467 001e 0A68     		ldr	r2, [r1]
 2468 0020 23F40063 		bic	r3, r3, #2048
 2469              	.LVL141:
1934:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKP, sBreakDeadTimeConfig->BreakPolarity);
 2470              		.loc 1 1934 3 is_stmt 1 discriminator 2 view .LVU686
1933:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKE, sBreakDeadTimeConfig->BreakState);
 2471              		.loc 1 1933 3 is_stmt 0 discriminator 2 view .LVU687
 2472 0024 1343     		orrs	r3, r3, r2
 2473              	.LVL142:
1934:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKP, sBreakDeadTimeConfig->BreakPolarity);
 2474              		.loc 1 1934 3 discriminator 2 view .LVU688
 2475 0026 0A69     		ldr	r2, [r1, #16]
 2476 0028 23F48053 		bic	r3, r3, #4096
 2477              	.LVL143:
1935:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_AOE, sBreakDeadTimeConfig->AutomaticOutput);
 2478              		.loc 1 1935 3 is_stmt 1 discriminator 2 view .LVU689
1934:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKP, sBreakDeadTimeConfig->BreakPolarity);
 2479              		.loc 1 1934 3 is_stmt 0 discriminator 2 view .LVU690
 2480 002c 1343     		orrs	r3, r3, r2
 2481              	.LVL144:
1935:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_AOE, sBreakDeadTimeConfig->AutomaticOutput);
 2482              		.loc 1 1935 3 discriminator 2 view .LVU691
 2483 002e 4A69     		ldr	r2, [r1, #20]
 2484 0030 23F40053 		bic	r3, r3, #8192
 2485              	.LVL145:
1936:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKF, (sBreakDeadTimeConfig->BreakFilter << TIM_BDTR_BKF_Pos));
 2486              		.loc 1 1936 3 is_stmt 1 discriminator 2 view .LVU692
1935:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_AOE, sBreakDeadTimeConfig->AutomaticOutput);
 2487              		.loc 1 1935 3 is_stmt 0 discriminator 2 view .LVU693
 2488 0034 1343     		orrs	r3, r3, r2
 2489              	.LVL146:
1936:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKF, (sBreakDeadTimeConfig->BreakFilter << TIM_BDTR_BKF_Pos));
 2490              		.loc 1 1936 3 discriminator 2 view .LVU694
 2491 0036 0A6B     		ldr	r2, [r1, #48]
 2492 0038 23F48043 		bic	r3, r3, #16384
 2493              	.LVL147:
1937:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2494              		.loc 1 1937 3 is_stmt 1 discriminator 2 view .LVU695
1936:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   MODIFY_REG(tmpbdtr, TIM_BDTR_BKF, (sBreakDeadTimeConfig->BreakFilter << TIM_BDTR_BKF_Pos));
 2495              		.loc 1 1936 3 is_stmt 0 discriminator 2 view .LVU696
 2496 003c 1343     		orrs	r3, r3, r2
 2497              	.LVL148:
1937:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2498              		.loc 1 1937 3 discriminator 2 view .LVU697
 2499 003e 8A69     		ldr	r2, [r1, #24]
 2500 0040 23F47023 		bic	r3, r3, #983040
 2501              	.LVL149:
1937:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2502              		.loc 1 1937 3 discriminator 2 view .LVU698
 2503 0044 43EA0243 		orr	r3, r3, r2, lsl #16
 2504              	.LVL150:
1939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2505              		.loc 1 1939 3 is_stmt 1 discriminator 2 view .LVU699
1939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2506              		.loc 1 1939 7 is_stmt 0 discriminator 2 view .LVU700
 2507 0048 0268     		ldr	r2, [r0]
1939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2508              		.loc 1 1939 6 discriminator 2 view .LVU701
 2509 004a A242     		cmp	r2, r4
 2510 004c 02D0     		beq	.L184
1939:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2511              		.loc 1 1939 7 discriminator 1 view .LVU702
 2512 004e 174D     		ldr	r5, .L189+4
 2513 0050 AA42     		cmp	r2, r5
 2514 0052 21D1     		bne	.L185
 2515              	.L184:
1942:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2516              		.loc 1 1942 5 is_stmt 1 view .LVU703
1945:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2517              		.loc 1 1945 5 view .LVU704
 2518 0054 CD69     		ldr	r5, [r1, #28]
 2519 0056 23F08053 		bic	r3, r3, #268435456
 2520              	.LVL151:
1948:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2521              		.loc 1 1948 6 is_stmt 0 view .LVU705
 2522 005a A242     		cmp	r2, r4
1945:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   }
 2523              		.loc 1 1945 5 view .LVU706
 2524 005c 43EA0503 		orr	r3, r3, r5
 2525              	.LVL152:
1948:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2526              		.loc 1 1948 3 is_stmt 1 view .LVU707
1948:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2527              		.loc 1 1948 6 is_stmt 0 view .LVU708
 2528 0060 02D0     		beq	.L186
1948:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2529              		.loc 1 1948 7 discriminator 1 view .LVU709
 2530 0062 124C     		ldr	r4, .L189+4
 2531 0064 A242     		cmp	r2, r4
 2532 0066 17D1     		bne	.L185
 2533              	.L186:
1951:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     assert_param(IS_TIM_BREAK2_POLARITY(sBreakDeadTimeConfig->Break2Polarity));
 2534              		.loc 1 1951 5 is_stmt 1 view .LVU710
1952:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     assert_param(IS_TIM_BREAK_FILTER(sBreakDeadTimeConfig->Break2Filter));
 2535              		.loc 1 1952 5 view .LVU711
1953:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2536              		.loc 1 1953 5 view .LVU712
1956:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2E, sBreakDeadTimeConfig->Break2State);
 2537              		.loc 1 1956 5 view .LVU713
 2538 0068 8C6A     		ldr	r4, [r1, #40]
 2539 006a 23F47003 		bic	r3, r3, #15728640
 2540              	.LVL153:
1957:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2P, sBreakDeadTimeConfig->Break2Polarity);
 2541              		.loc 1 1957 5 view .LVU714
1956:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2E, sBreakDeadTimeConfig->Break2State);
 2542              		.loc 1 1956 5 is_stmt 0 view .LVU715
 2543 006e 43EA0453 		orr	r3, r3, r4, lsl #20
 2544              	.LVL154:
1957:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2P, sBreakDeadTimeConfig->Break2Polarity);
 2545              		.loc 1 1957 5 view .LVU716
 2546 0072 0C6A     		ldr	r4, [r1, #32]
 2547 0074 23F08073 		bic	r3, r3, #16777216
 2548              	.LVL155:
1958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2549              		.loc 1 1958 5 is_stmt 1 view .LVU717
1957:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2P, sBreakDeadTimeConfig->Break2Polarity);
 2550              		.loc 1 1957 5 is_stmt 0 view .LVU718
 2551 0078 2343     		orrs	r3, r3, r4
 2552              	.LVL156:
1958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2553              		.loc 1 1958 5 view .LVU719
 2554 007a 4C6A     		ldr	r4, [r1, #36]
 2555 007c 23F00073 		bic	r3, r3, #33554432
 2556              	.LVL157:
1958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2557              		.loc 1 1958 5 view .LVU720
 2558 0080 2343     		orrs	r3, r3, r4
 2559              	.LVL158:
1960:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 2560              		.loc 1 1960 5 is_stmt 1 view .LVU721
1960:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 2561              		.loc 1 1960 8 is_stmt 0 view .LVU722
 2562 0082 094C     		ldr	r4, .L189
 2563 0084 A242     		cmp	r2, r4
 2564 0086 03D0     		beq	.L187
1960:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     {
 2565              		.loc 1 1960 9 discriminator 1 view .LVU723
 2566 0088 04F50064 		add	r4, r4, #2048
 2567 008c A242     		cmp	r2, r4
 2568 008e 03D1     		bne	.L185
 2569              	.L187:
1963:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2570              		.loc 1 1963 7 is_stmt 1 view .LVU724
1966:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 2571              		.loc 1 1966 7 view .LVU725
 2572 0090 C96A     		ldr	r1, [r1, #44]
 2573              	.LVL159:
1966:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 2574              		.loc 1 1966 7 is_stmt 0 view .LVU726
 2575 0092 23F00053 		bic	r3, r3, #536870912
 2576              	.LVL160:
1966:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 2577              		.loc 1 1966 7 view .LVU727
 2578 0096 0B43     		orrs	r3, r3, r1
 2579              	.LVL161:
 2580              	.L185:
1971:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2581              		.loc 1 1971 3 is_stmt 1 view .LVU728
1971:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2582              		.loc 1 1971 24 is_stmt 0 view .LVU729
 2583 0098 5364     		str	r3, [r2, #68]
1973:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2584              		.loc 1 1973 3 is_stmt 1 view .LVU730
1973:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2585              		.loc 1 1973 3 view .LVU731
 2586 009a 0023     		movs	r3, #0
 2587              	.LVL162:
1973:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2588              		.loc 1 1973 3 is_stmt 0 view .LVU732
 2589 009c 80F83C30 		strb	r3, [r0, #60]
1975:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2590              		.loc 1 1975 3 is_stmt 1 view .LVU733
1975:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2591              		.loc 1 1975 10 is_stmt 0 view .LVU734
 2592 00a0 1846     		mov	r0, r3
 2593              	.LVL163:
 2594              	.L183:
1976:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2595              		.loc 1 1976 1 view .LVU735
 2596 00a2 30BD     		pop	{r4, r5, pc}
 2597              	.LVL164:
 2598              	.L188:
1924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2599              		.loc 1 1924 3 view .LVU736
 2600 00a4 0220     		movs	r0, #2
 2601              	.LVL165:
1924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2602              		.loc 1 1924 3 view .LVU737
 2603 00a6 FCE7     		b	.L183
 2604              	.L190:
 2605              		.align	2
 2606              	.L189:
 2607 00a8 002C0140 		.word	1073818624
 2608 00ac 00340140 		.word	1073820672
 2609              		.cfi_endproc
 2610              	.LFE355:
 2612              		.section	.text.HAL_TIMEx_ConfigBreakInput,"ax",%progbits
 2613              		.align	1
 2614              		.global	HAL_TIMEx_ConfigBreakInput
 2615              		.syntax unified
 2616              		.thumb
 2617              		.thumb_func
 2618              		.fpu fpv4-sp-d16
 2620              	HAL_TIMEx_ConfigBreakInput:
 2621              	.LVL166:
 2622              	.LFB356:
1992:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmporx;
 2623              		.loc 1 1992 1 is_stmt 1 view -0
 2624              		.cfi_startproc
 2625              		@ args = 0, pretend = 0, frame = 0
 2626              		@ frame_needed = 0, uses_anonymous_args = 0
1993:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_enable_mask;
 2627              		.loc 1 1993 3 view .LVU739
1994:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_polarity_mask;
 2628              		.loc 1 1994 3 view .LVU740
1995:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_enable_bitpos;
 2629              		.loc 1 1995 3 view .LVU741
1996:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t bkin_polarity_bitpos;
 2630              		.loc 1 1996 3 view .LVU742
1997:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2631              		.loc 1 1997 3 view .LVU743
2000:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUT(BreakInput));
 2632              		.loc 1 2000 3 view .LVU744
2001:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUTSOURCE(sBreakInputConfig->Source));
 2633              		.loc 1 2001 3 view .LVU745
2002:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUTSOURCE_STATE(sBreakInputConfig->Enable));
 2634              		.loc 1 2002 3 view .LVU746
2003:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUTSOURCE_POLARITY(sBreakInputConfig->Polarity));
 2635              		.loc 1 2003 3 view .LVU747
2004:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2636              		.loc 1 2004 3 view .LVU748
2007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2637              		.loc 1 2007 3 view .LVU749
2007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2638              		.loc 1 2007 3 view .LVU750
 2639 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2640 0004 012B     		cmp	r3, #1
1992:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmporx;
 2641              		.loc 1 1992 1 is_stmt 0 view .LVU751
 2642 0006 F0B5     		push	{r4, r5, r6, r7, lr}
 2643              		.cfi_def_cfa_offset 20
 2644              		.cfi_offset 4, -20
 2645              		.cfi_offset 5, -16
 2646              		.cfi_offset 6, -12
 2647              		.cfi_offset 7, -8
 2648              		.cfi_offset 14, -4
2007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2649              		.loc 1 2007 3 view .LVU752
 2650 0008 3ED0     		beq	.L197
2007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2651              		.loc 1 2007 3 is_stmt 1 discriminator 2 view .LVU753
 2652 000a 1668     		ldr	r6, [r2]
 2653 000c 013E     		subs	r6, r6, #1
 2654 000e 0123     		movs	r3, #1
 2655 0010 0F2E     		cmp	r6, #15
 2656 0012 80F83C30 		strb	r3, [r0, #60]
2009:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2657              		.loc 1 2009 3 discriminator 2 view .LVU754
 2658 0016 12D8     		bhi	.L198
 2659 0018 1C4B     		ldr	r3, .L199
 2660 001a 1D4C     		ldr	r4, .L199+4
 2661 001c 13F806C0 		ldrb	ip, [r3, r6]	@ zero_extendqisi2
 2662 0020 1C4B     		ldr	r3, .L199+8
 2663 0022 33F81650 		ldrh	r5, [r3, r6, lsl #1]
 2664 0026 1C4B     		ldr	r3, .L199+12
 2665 0028 9B5D     		ldrb	r3, [r3, r6]	@ zero_extendqisi2
 2666 002a A65D     		ldrb	r6, [r4, r6]	@ zero_extendqisi2
 2667              	.L193:
 2668              	.LVL167:
2095:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2669              		.loc 1 2095 3 view .LVU755
 2670 002c 0129     		cmp	r1, #1
 2671 002e 0BD0     		beq	.L194
 2672 0030 0229     		cmp	r1, #2
 2673 0032 19D0     		beq	.L195
 2674              	.LVL168:
 2675              	.L196:
2135:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2676              		.loc 1 2135 3 view .LVU756
2135:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2677              		.loc 1 2135 3 view .LVU757
 2678 0034 0023     		movs	r3, #0
 2679 0036 80F83C30 		strb	r3, [r0, #60]
2137:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2680              		.loc 1 2137 3 view .LVU758
2137:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2681              		.loc 1 2137 10 is_stmt 0 view .LVU759
 2682 003a 1846     		mov	r0, r3
 2683              	.LVL169:
 2684              	.L192:
2138:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2685              		.loc 1 2138 1 view .LVU760
 2686 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 2687              	.LVL170:
 2688              	.L198:
2009:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2689              		.loc 1 2009 28 view .LVU761
 2690 003e 0026     		movs	r6, #0
 2691 0040 3346     		mov	r3, r6
 2692 0042 3546     		mov	r5, r6
 2693 0044 B446     		mov	ip, r6
 2694 0046 F1E7     		b	.L193
 2695              	.LVL171:
 2696              	.L194:
2100:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2697              		.loc 1 2100 7 is_stmt 1 view .LVU762
2100:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2698              		.loc 1 2100 20 is_stmt 0 view .LVU763
 2699 0048 0768     		ldr	r7, [r0]
2104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2700              		.loc 1 2104 44 view .LVU764
 2701 004a 5468     		ldr	r4, [r2, #4]
2100:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2702              		.loc 1 2100 14 view .LVU765
 2703 004c 396E     		ldr	r1, [r7, #96]
 2704              	.LVL172:
2103:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Enable << bkin_enable_bitpos) & bkin_enable_mask;
 2705              		.loc 1 2103 7 is_stmt 1 view .LVU766
2104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2706              		.loc 1 2104 7 view .LVU767
2108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2707              		.loc 1 2108 46 is_stmt 0 view .LVU768
 2708 004e 9268     		ldr	r2, [r2, #8]
 2709              	.LVL173:
2104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2710              		.loc 1 2104 44 view .LVU769
 2711 0050 04FA03F3 		lsl	r3, r4, r3
 2712              	.LVL174:
2104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2713              		.loc 1 2104 44 view .LVU770
 2714 0054 4B40     		eors	r3, r3, r1
 2715 0056 03EA0C03 		and	r3, r3, ip
2104:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2716              		.loc 1 2104 14 view .LVU771
 2717 005a 4B40     		eors	r3, r3, r1
 2718              	.LVL175:
2107:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Polarity << bkin_polarity_bitpos) & bkin_polarity_mask;
 2719              		.loc 1 2107 7 is_stmt 1 view .LVU772
2108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2720              		.loc 1 2108 7 view .LVU773
2108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2721              		.loc 1 2108 46 is_stmt 0 view .LVU774
 2722 005c B240     		lsls	r2, r2, r6
 2723 005e 5A40     		eors	r2, r2, r3
 2724 0060 2A40     		ands	r2, r2, r5
2108:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2725              		.loc 1 2108 14 view .LVU775
 2726 0062 5340     		eors	r3, r3, r2
 2727              	.LVL176:
2111:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2728              		.loc 1 2111 7 is_stmt 1 view .LVU776
2111:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2729              		.loc 1 2111 27 is_stmt 0 view .LVU777
 2730 0064 3B66     		str	r3, [r7, #96]
2112:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 2731              		.loc 1 2112 7 is_stmt 1 view .LVU778
 2732 0066 E5E7     		b	.L196
 2733              	.LVL177:
 2734              	.L195:
2117:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2735              		.loc 1 2117 7 view .LVU779
2117:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2736              		.loc 1 2117 20 is_stmt 0 view .LVU780
 2737 0068 0768     		ldr	r7, [r0]
2121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2738              		.loc 1 2121 44 view .LVU781
 2739 006a 5168     		ldr	r1, [r2, #4]
 2740              	.LVL178:
2117:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2741              		.loc 1 2117 14 view .LVU782
 2742 006c 7C6E     		ldr	r4, [r7, #100]
 2743              	.LVL179:
2120:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Enable << bkin_enable_bitpos) & bkin_enable_mask;
 2744              		.loc 1 2120 7 is_stmt 1 view .LVU783
2121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2745              		.loc 1 2121 7 view .LVU784
2125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2746              		.loc 1 2125 46 is_stmt 0 view .LVU785
 2747 006e 9268     		ldr	r2, [r2, #8]
 2748              	.LVL180:
2121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2749              		.loc 1 2121 44 view .LVU786
 2750 0070 01FA03F3 		lsl	r3, r1, r3
 2751              	.LVL181:
2121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2752              		.loc 1 2121 44 view .LVU787
 2753 0074 6340     		eors	r3, r3, r4
 2754 0076 03EA0C03 		and	r3, r3, ip
2121:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2755              		.loc 1 2121 14 view .LVU788
 2756 007a 6340     		eors	r3, r3, r4
 2757              	.LVL182:
2124:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       tmporx |= (sBreakInputConfig->Polarity << bkin_polarity_bitpos) & bkin_polarity_mask;
 2758              		.loc 1 2124 7 is_stmt 1 view .LVU789
2125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2759              		.loc 1 2125 7 view .LVU790
2125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2760              		.loc 1 2125 46 is_stmt 0 view .LVU791
 2761 007c B240     		lsls	r2, r2, r6
 2762 007e 5A40     		eors	r2, r2, r3
 2763 0080 2A40     		ands	r2, r2, r5
2125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2764              		.loc 1 2125 14 view .LVU792
 2765 0082 5340     		eors	r3, r3, r2
 2766              	.LVL183:
2128:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2767              		.loc 1 2128 7 is_stmt 1 view .LVU793
2128:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2768              		.loc 1 2128 27 is_stmt 0 view .LVU794
 2769 0084 7B66     		str	r3, [r7, #100]
2129:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     }
 2770              		.loc 1 2129 7 is_stmt 1 view .LVU795
 2771 0086 D5E7     		b	.L196
 2772              	.LVL184:
 2773              	.L197:
2007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2774              		.loc 1 2007 3 is_stmt 0 view .LVU796
 2775 0088 0220     		movs	r0, #2
 2776              	.LVL185:
2007:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2777              		.loc 1 2007 3 view .LVU797
 2778 008a D7E7     		b	.L192
 2779              	.L200:
 2780              		.align	2
 2781              	.L199:
 2782 008c 00000000 		.word	.LANCHOR0
 2783 0090 00000000 		.word	.LANCHOR3
 2784 0094 00000000 		.word	.LANCHOR1
 2785 0098 00000000 		.word	.LANCHOR2
 2786              		.cfi_endproc
 2787              	.LFE356:
 2789              		.section	.text.HAL_TIMEx_RemapConfig,"ax",%progbits
 2790              		.align	1
 2791              		.global	HAL_TIMEx_RemapConfig
 2792              		.syntax unified
 2793              		.thumb
 2794              		.thumb_func
 2795              		.fpu fpv4-sp-d16
 2797              	HAL_TIMEx_RemapConfig:
 2798              	.LVL186:
 2799              	.LFB357:
2251:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check parameters */
 2800              		.loc 1 2251 1 is_stmt 1 view -0
 2801              		.cfi_startproc
 2802              		@ args = 0, pretend = 0, frame = 0
 2803              		@ frame_needed = 0, uses_anonymous_args = 0
 2804              		@ link register save eliminated.
2253:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_REMAP(Remap));
 2805              		.loc 1 2253 3 view .LVU799
2254:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2806              		.loc 1 2254 3 view .LVU800
2256:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2807              		.loc 1 2256 3 view .LVU801
2256:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2808              		.loc 1 2256 3 view .LVU802
 2809 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2810 0004 012B     		cmp	r3, #1
 2811 0006 0AD0     		beq	.L203
2256:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2812              		.loc 1 2256 3 discriminator 2 view .LVU803
2258:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2813              		.loc 1 2258 3 discriminator 2 view .LVU804
 2814 0008 0268     		ldr	r2, [r0]
 2815 000a 136E     		ldr	r3, [r2, #96]
 2816 000c 23F47033 		bic	r3, r3, #245760
 2817 0010 0B43     		orrs	r3, r3, r1
 2818 0012 1366     		str	r3, [r2, #96]
2260:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2819              		.loc 1 2260 3 discriminator 2 view .LVU805
2260:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2820              		.loc 1 2260 3 discriminator 2 view .LVU806
 2821 0014 0023     		movs	r3, #0
 2822 0016 80F83C30 		strb	r3, [r0, #60]
2262:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2823              		.loc 1 2262 3 discriminator 2 view .LVU807
2262:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2824              		.loc 1 2262 10 is_stmt 0 discriminator 2 view .LVU808
 2825 001a 1846     		mov	r0, r3
 2826              	.LVL187:
2262:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2827              		.loc 1 2262 10 discriminator 2 view .LVU809
 2828 001c 7047     		bx	lr
 2829              	.LVL188:
 2830              	.L203:
2256:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2831              		.loc 1 2256 3 view .LVU810
 2832 001e 0220     		movs	r0, #2
 2833              	.LVL189:
2263:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2834              		.loc 1 2263 1 view .LVU811
 2835 0020 7047     		bx	lr
 2836              		.cfi_endproc
 2837              	.LFE357:
 2839              		.section	.text.HAL_TIMEx_TISelection,"ax",%progbits
 2840              		.align	1
 2841              		.global	HAL_TIMEx_TISelection
 2842              		.syntax unified
 2843              		.thumb
 2844              		.thumb_func
 2845              		.fpu fpv4-sp-d16
 2847              	HAL_TIMEx_TISelection:
 2848              	.LVL190:
 2849              	.LFB358:
2425:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 2850              		.loc 1 2425 1 is_stmt 1 view -0
 2851              		.cfi_startproc
 2852              		@ args = 0, pretend = 0, frame = 0
 2853              		@ frame_needed = 0, uses_anonymous_args = 0
 2854              		@ link register save eliminated.
2426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2855              		.loc 1 2426 3 view .LVU813
2429:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_TISEL(TISelection));
 2856              		.loc 1 2429 3 view .LVU814
2430:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2857              		.loc 1 2430 3 view .LVU815
2432:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2858              		.loc 1 2432 3 view .LVU816
2432:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2859              		.loc 1 2432 3 view .LVU817
 2860 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2861 0004 012B     		cmp	r3, #1
 2862 0006 3DD0     		beq	.L214
2432:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2863              		.loc 1 2432 3 discriminator 2 view .LVU818
 2864 0008 0123     		movs	r3, #1
 2865 000a 80F83C30 		strb	r3, [r0, #60]
2434:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 2866              		.loc 1 2434 3 discriminator 2 view .LVU819
 2867 000e 0C2A     		cmp	r2, #12
 2868 0010 36D8     		bhi	.L215
 2869 0012 DFE802F0 		tbb	[pc, r2]
 2870              	.L208:
 2871 0016 07       		.byte	(.L211-.L208)/2
 2872 0017 35       		.byte	(.L215-.L208)/2
 2873 0018 35       		.byte	(.L215-.L208)/2
 2874 0019 35       		.byte	(.L215-.L208)/2
 2875 001a 22       		.byte	(.L210-.L208)/2
 2876 001b 35       		.byte	(.L215-.L208)/2
 2877 001c 35       		.byte	(.L215-.L208)/2
 2878 001d 35       		.byte	(.L215-.L208)/2
 2879 001e 29       		.byte	(.L209-.L208)/2
 2880 001f 35       		.byte	(.L215-.L208)/2
 2881 0020 35       		.byte	(.L215-.L208)/2
 2882 0021 35       		.byte	(.L215-.L208)/2
 2883 0022 2E       		.byte	(.L207-.L208)/2
 2884 0023 00       		.p2align 1
 2885              	.L211:
2437:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2886              		.loc 1 2437 7 view .LVU820
 2887 0024 0368     		ldr	r3, [r0]
 2888 0026 DA6D     		ldr	r2, [r3, #92]
 2889              	.LVL191:
2437:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2890              		.loc 1 2437 7 is_stmt 0 view .LVU821
 2891 0028 22F00F02 		bic	r2, r2, #15
 2892 002c 0A43     		orrs	r2, r2, r1
 2893 002e DA65     		str	r2, [r3, #92]
2440:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 2894              		.loc 1 2440 7 is_stmt 1 view .LVU822
2440:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 2895              		.loc 1 2440 10 is_stmt 0 view .LVU823
 2896 0030 154A     		ldr	r2, .L219
 2897 0032 9342     		cmp	r3, r2
 2898 0034 03D0     		beq	.L212
2440:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 2899              		.loc 1 2440 11 discriminator 1 view .LVU824
 2900 0036 02F58062 		add	r2, r2, #1024
 2901 003a 9342     		cmp	r3, r2
 2902 003c 09D1     		bne	.L213
 2903              	.L212:
2442:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 2904              		.loc 1 2442 9 is_stmt 1 view .LVU825
 2905 003e 9A6E     		ldr	r2, [r3, #104]
 2906 0040 42F00102 		orr	r2, r2, #1
 2907              	.L216:
2446:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 2908              		.loc 1 2446 9 is_stmt 0 view .LVU826
 2909 0044 9A66     		str	r2, [r3, #104]
 2910              	.L217:
2426:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2911              		.loc 1 2426 21 view .LVU827
 2912 0046 0023     		movs	r3, #0
 2913              	.L206:
 2914              	.LVL192:
2463:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2915              		.loc 1 2463 3 is_stmt 1 view .LVU828
2463:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2916              		.loc 1 2463 3 view .LVU829
 2917 0048 0022     		movs	r2, #0
 2918 004a 80F83C20 		strb	r2, [r0, #60]
2465:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 2919              		.loc 1 2465 3 view .LVU830
 2920              	.LVL193:
 2921              	.L205:
2466:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2922              		.loc 1 2466 1 is_stmt 0 view .LVU831
 2923 004e 1846     		mov	r0, r3
 2924              	.LVL194:
2466:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2925              		.loc 1 2466 1 view .LVU832
 2926 0050 7047     		bx	lr
 2927              	.LVL195:
 2928              	.L213:
2446:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 2929              		.loc 1 2446 9 is_stmt 1 view .LVU833
 2930 0052 9A6E     		ldr	r2, [r3, #104]
 2931 0054 22F00102 		bic	r2, r2, #1
 2932 0058 F4E7     		b	.L216
 2933              	.LVL196:
 2934              	.L210:
2450:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2935              		.loc 1 2450 7 view .LVU834
 2936 005a 0368     		ldr	r3, [r0]
 2937 005c DA6D     		ldr	r2, [r3, #92]
 2938              	.LVL197:
2450:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2939              		.loc 1 2450 7 is_stmt 0 view .LVU835
 2940 005e 22F47062 		bic	r2, r2, #3840
 2941              	.L218:
2453:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2942              		.loc 1 2453 7 view .LVU836
 2943 0062 0A43     		orrs	r2, r2, r1
 2944 0064 DA65     		str	r2, [r3, #92]
2454:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     case TIM_CHANNEL_4:
 2945              		.loc 1 2454 7 is_stmt 1 view .LVU837
 2946 0066 EEE7     		b	.L217
 2947              	.LVL198:
 2948              	.L209:
2453:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2949              		.loc 1 2453 7 view .LVU838
 2950 0068 0368     		ldr	r3, [r0]
 2951 006a DA6D     		ldr	r2, [r3, #92]
 2952              	.LVL199:
2453:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2953              		.loc 1 2453 7 is_stmt 0 view .LVU839
 2954 006c 22F47022 		bic	r2, r2, #983040
 2955 0070 F7E7     		b	.L218
 2956              	.LVL200:
 2957              	.L207:
2456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2958              		.loc 1 2456 7 is_stmt 1 view .LVU840
 2959 0072 0268     		ldr	r2, [r0]
 2960              	.LVL201:
2456:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2961              		.loc 1 2456 7 is_stmt 0 view .LVU841
 2962 0074 D36D     		ldr	r3, [r2, #92]
 2963 0076 23F07063 		bic	r3, r3, #251658240
 2964 007a 0B43     		orrs	r3, r3, r1
 2965 007c D365     		str	r3, [r2, #92]
2457:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****     default:
 2966              		.loc 1 2457 7 is_stmt 1 view .LVU842
 2967 007e E2E7     		b	.L217
 2968              	.LVL202:
 2969              	.L215:
2459:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       break;
 2970              		.loc 1 2459 14 is_stmt 0 view .LVU843
 2971 0080 0123     		movs	r3, #1
 2972 0082 E1E7     		b	.L206
 2973              	.L214:
2432:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 2974              		.loc 1 2432 3 view .LVU844
 2975 0084 0223     		movs	r3, #2
 2976 0086 E2E7     		b	.L205
 2977              	.L220:
 2978              		.align	2
 2979              	.L219:
 2980 0088 00440140 		.word	1073824768
 2981              		.cfi_endproc
 2982              	.LFE358:
 2984              		.section	.text.HAL_TIMEx_GroupChannel5,"ax",%progbits
 2985              		.align	1
 2986              		.global	HAL_TIMEx_GroupChannel5
 2987              		.syntax unified
 2988              		.thumb
 2989              		.thumb_func
 2990              		.fpu fpv4-sp-d16
 2992              	HAL_TIMEx_GroupChannel5:
 2993              	.LVL203:
 2994              	.LFB359:
2480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check parameters */
 2995              		.loc 1 2480 1 is_stmt 1 view -0
 2996              		.cfi_startproc
 2997              		@ args = 0, pretend = 0, frame = 0
 2998              		@ frame_needed = 0, uses_anonymous_args = 0
2482:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_GROUPCH5(Channels));
 2999              		.loc 1 2482 3 view .LVU846
2483:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3000              		.loc 1 2483 3 view .LVU847
2486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3001              		.loc 1 2486 3 view .LVU848
2486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3002              		.loc 1 2486 3 view .LVU849
 3003 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 3004 0004 012B     		cmp	r3, #1
2480:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check parameters */
 3005              		.loc 1 2480 1 is_stmt 0 view .LVU850
 3006 0006 10B5     		push	{r4, lr}
 3007              		.cfi_def_cfa_offset 8
 3008              		.cfi_offset 4, -8
 3009              		.cfi_offset 14, -4
 3010 0008 4FF00203 		mov	r3, #2
2486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3011              		.loc 1 2486 3 view .LVU851
 3012 000c 0FD0     		beq	.L223
2486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3013              		.loc 1 2486 3 is_stmt 1 discriminator 2 view .LVU852
2488:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3014              		.loc 1 2488 3 discriminator 2 view .LVU853
2488:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3015              		.loc 1 2488 15 is_stmt 0 discriminator 2 view .LVU854
 3016 000e 80F83D30 		strb	r3, [r0, #61]
2491:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3017              		.loc 1 2491 3 is_stmt 1 discriminator 2 view .LVU855
2491:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3018              		.loc 1 2491 7 is_stmt 0 discriminator 2 view .LVU856
 3019 0012 0368     		ldr	r3, [r0]
2491:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3020              		.loc 1 2491 24 discriminator 2 view .LVU857
 3021 0014 9C6C     		ldr	r4, [r3, #72]
 3022 0016 24F06044 		bic	r4, r4, #-536870912
 3023 001a 9C64     		str	r4, [r3, #72]
2494:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3024              		.loc 1 2494 3 is_stmt 1 discriminator 2 view .LVU858
2494:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3025              		.loc 1 2494 24 is_stmt 0 discriminator 2 view .LVU859
 3026 001c 9A6C     		ldr	r2, [r3, #72]
 3027 001e 0A43     		orrs	r2, r2, r1
 3028 0020 9A64     		str	r2, [r3, #72]
2497:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3029              		.loc 1 2497 3 is_stmt 1 discriminator 2 view .LVU860
2497:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3030              		.loc 1 2497 15 is_stmt 0 discriminator 2 view .LVU861
 3031 0022 0123     		movs	r3, #1
 3032 0024 80F83D30 		strb	r3, [r0, #61]
2499:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3033              		.loc 1 2499 3 is_stmt 1 discriminator 2 view .LVU862
2499:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3034              		.loc 1 2499 3 discriminator 2 view .LVU863
 3035 0028 0023     		movs	r3, #0
 3036 002a 80F83C30 		strb	r3, [r0, #60]
2501:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3037              		.loc 1 2501 3 discriminator 2 view .LVU864
 3038              	.L223:
2486:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3039              		.loc 1 2486 3 is_stmt 0 view .LVU865
 3040 002e 1846     		mov	r0, r3
 3041              	.LVL204:
2502:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3042              		.loc 1 2502 1 view .LVU866
 3043 0030 10BD     		pop	{r4, pc}
 3044              		.cfi_endproc
 3045              	.LFE359:
 3047              		.section	.text.HAL_TIMEx_DisarmBreakInput,"ax",%progbits
 3048              		.align	1
 3049              		.global	HAL_TIMEx_DisarmBreakInput
 3050              		.syntax unified
 3051              		.thumb
 3052              		.thumb_func
 3053              		.fpu fpv4-sp-d16
 3055              	HAL_TIMEx_DisarmBreakInput:
 3056              	.LVL205:
 3057              	.LFB360:
2518:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpbdtr;
 3058              		.loc 1 2518 1 is_stmt 1 view -0
 3059              		.cfi_startproc
 3060              		@ args = 0, pretend = 0, frame = 0
 3061              		@ frame_needed = 0, uses_anonymous_args = 0
 3062              		@ link register save eliminated.
2519:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3063              		.loc 1 2519 3 view .LVU868
2522:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUT(BreakInput));
 3064              		.loc 1 2522 3 view .LVU869
2523:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3065              		.loc 1 2523 3 view .LVU870
2525:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 3066              		.loc 1 2525 3 view .LVU871
 3067 0000 0129     		cmp	r1, #1
 3068 0002 03D0     		beq	.L225
 3069 0004 0229     		cmp	r1, #2
 3070 0006 0DD0     		beq	.L226
 3071              	.LVL206:
 3072              	.L227:
2556:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3073              		.loc 1 2556 3 view .LVU872
2557:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3074              		.loc 1 2557 1 is_stmt 0 view .LVU873
 3075 0008 0020     		movs	r0, #0
 3076              	.LVL207:
2557:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3077              		.loc 1 2557 1 view .LVU874
 3078 000a 7047     		bx	lr
 3079              	.LVL208:
 3080              	.L225:
2530:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BKBID) == TIM_BDTR_BKBID) &&
 3081              		.loc 1 2530 7 is_stmt 1 view .LVU875
2530:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BKBID) == TIM_BDTR_BKBID) &&
 3082              		.loc 1 2530 17 is_stmt 0 view .LVU876
 3083 000c 0368     		ldr	r3, [r0]
2531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3084              		.loc 1 2531 65 view .LVU877
 3085 000e 0B4A     		ldr	r2, .L229
2530:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BKBID) == TIM_BDTR_BKBID) &&
 3086              		.loc 1 2530 15 view .LVU878
 3087 0010 596C     		ldr	r1, [r3, #68]
 3088              	.LVL209:
2531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3089              		.loc 1 2531 7 is_stmt 1 view .LVU879
2531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3090              		.loc 1 2531 65 is_stmt 0 view .LVU880
 3091 0012 0A40     		ands	r2, r2, r1
2531:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3092              		.loc 1 2531 10 view .LVU881
 3093 0014 B2F1805F 		cmp	r2, #268435456
 3094 0018 F6D1     		bne	.L227
2535:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 3095              		.loc 1 2535 9 is_stmt 1 view .LVU882
 3096 001a 5A6C     		ldr	r2, [r3, #68]
 3097 001c 42F08062 		orr	r2, r2, #67108864
 3098              	.L228:
2548:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 3099              		.loc 1 2548 9 is_stmt 0 view .LVU883
 3100 0020 5A64     		str	r2, [r3, #68]
 3101 0022 F1E7     		b	.L227
 3102              	.LVL210:
 3103              	.L226:
2543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BK2BID) == TIM_BDTR_BK2BID) &&
 3104              		.loc 1 2543 7 is_stmt 1 view .LVU884
2543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BK2BID) == TIM_BDTR_BK2BID) &&
 3105              		.loc 1 2543 17 is_stmt 0 view .LVU885
 3106 0024 0368     		ldr	r3, [r0]
2544:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3107              		.loc 1 2544 67 view .LVU886
 3108 0026 064A     		ldr	r2, .L229+4
2543:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       if ((READ_BIT(tmpbdtr, TIM_BDTR_BK2BID) == TIM_BDTR_BK2BID) &&
 3109              		.loc 1 2543 15 view .LVU887
 3110 0028 596C     		ldr	r1, [r3, #68]
 3111              	.LVL211:
2544:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3112              		.loc 1 2544 7 is_stmt 1 view .LVU888
2544:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3113              		.loc 1 2544 67 is_stmt 0 view .LVU889
 3114 002a 0A40     		ands	r2, r2, r1
2544:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           (READ_BIT(tmpbdtr, TIM_BDTR_MOE) == 0U))
 3115              		.loc 1 2544 10 view .LVU890
 3116 002c B2F1005F 		cmp	r2, #536870912
 3117 0030 EAD1     		bne	.L227
2548:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 3118              		.loc 1 2548 9 is_stmt 1 view .LVU891
 3119 0032 5A6C     		ldr	r2, [r3, #68]
 3120 0034 42F00062 		orr	r2, r2, #134217728
 3121 0038 F2E7     		b	.L228
 3122              	.L230:
 3123 003a 00BF     		.align	2
 3124              	.L229:
 3125 003c 00800010 		.word	268468224
 3126 0040 00800020 		.word	536903680
 3127              		.cfi_endproc
 3128              	.LFE360:
 3130              		.section	.text.HAL_TIMEx_ReArmBreakInput,"ax",%progbits
 3131              		.align	1
 3132              		.global	HAL_TIMEx_ReArmBreakInput
 3133              		.syntax unified
 3134              		.thumb
 3135              		.thumb_func
 3136              		.fpu fpv4-sp-d16
 3138              	HAL_TIMEx_ReArmBreakInput:
 3139              	.LVL212:
 3140              	.LFB361:
2571:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tickstart;
 3141              		.loc 1 2571 1 view -0
 3142              		.cfi_startproc
 3143              		@ args = 0, pretend = 0, frame = 0
 3144              		@ frame_needed = 0, uses_anonymous_args = 0
2572:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3145              		.loc 1 2572 3 view .LVU893
2575:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_BREAKINPUT(BreakInput));
 3146              		.loc 1 2575 3 view .LVU894
2576:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3147              		.loc 1 2576 3 view .LVU895
2578:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 3148              		.loc 1 2578 3 view .LVU896
 3149 0000 0129     		cmp	r1, #1
2571:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tickstart;
 3150              		.loc 1 2571 1 is_stmt 0 view .LVU897
 3151 0002 38B5     		push	{r3, r4, r5, lr}
 3152              		.cfi_def_cfa_offset 16
 3153              		.cfi_offset 3, -16
 3154              		.cfi_offset 4, -12
 3155              		.cfi_offset 5, -8
 3156              		.cfi_offset 14, -4
2571:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tickstart;
 3157              		.loc 1 2571 1 view .LVU898
 3158 0004 0446     		mov	r4, r0
2578:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   {
 3159              		.loc 1 2578 3 view .LVU899
 3160 0006 03D0     		beq	.L232
 3161 0008 0229     		cmp	r1, #2
 3162 000a 13D0     		beq	.L233
 3163              	.LVL213:
 3164              	.L236:
2625:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3165              		.loc 1 2625 10 view .LVU900
 3166 000c 0020     		movs	r0, #0
 3167              	.L234:
2626:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3168              		.loc 1 2626 1 view .LVU901
 3169 000e 38BD     		pop	{r3, r4, r5, pc}
 3170              	.LVL214:
 3171              	.L232:
2583:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 3172              		.loc 1 2583 7 is_stmt 1 view .LVU902
2583:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 3173              		.loc 1 2583 11 is_stmt 0 view .LVU903
 3174 0010 0368     		ldr	r3, [r0]
 3175 0012 5B6C     		ldr	r3, [r3, #68]
2583:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 3176              		.loc 1 2583 10 view .LVU904
 3177 0014 D800     		lsls	r0, r3, #3
 3178              	.LVL215:
2583:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 3179              		.loc 1 2583 10 view .LVU905
 3180 0016 F9D5     		bpl	.L236
2587:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
 3181              		.loc 1 2587 9 is_stmt 1 view .LVU906
2587:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
 3182              		.loc 1 2587 21 is_stmt 0 view .LVU907
 3183 0018 FFF7FEFF 		bl	HAL_GetTick
 3184              	.LVL216:
2587:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
 3185              		.loc 1 2587 21 view .LVU908
 3186 001c 0546     		mov	r5, r0
 3187              	.LVL217:
 3188              	.L237:
2588:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         {
 3189              		.loc 1 2588 9 is_stmt 1 view .LVU909
2590:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
 3190              		.loc 1 2590 11 view .LVU910
2590:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
 3191              		.loc 1 2590 15 is_stmt 0 view .LVU911
 3192 001e 2368     		ldr	r3, [r4]
 3193 0020 5B6C     		ldr	r3, [r3, #68]
2590:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
 3194              		.loc 1 2590 14 view .LVU912
 3195 0022 5901     		lsls	r1, r3, #5
 3196 0024 F2D5     		bpl	.L236
2594:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3197              		.loc 1 2594 19 view .LVU913
 3198 0026 FFF7FEFF 		bl	HAL_GetTick
 3199              	.LVL218:
2594:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3200              		.loc 1 2594 33 view .LVU914
 3201 002a 401B     		subs	r0, r0, r5
2594:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3202              		.loc 1 2594 9 view .LVU915
 3203 002c 0528     		cmp	r0, #5
 3204 002e F6D9     		bls	.L237
 3205              	.L239:
2596:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       }
 3206              		.loc 1 2596 16 view .LVU916
 3207 0030 0320     		movs	r0, #3
 3208 0032 ECE7     		b	.L234
 3209              	.LVL219:
 3210              	.L233:
2604:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 3211              		.loc 1 2604 7 is_stmt 1 view .LVU917
2604:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 3212              		.loc 1 2604 11 is_stmt 0 view .LVU918
 3213 0034 0368     		ldr	r3, [r0]
 3214 0036 5B6C     		ldr	r3, [r3, #68]
2604:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****       {
 3215              		.loc 1 2604 10 view .LVU919
 3216 0038 9A00     		lsls	r2, r3, #2
 3217 003a E7D5     		bpl	.L236
2608:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
 3218              		.loc 1 2608 9 is_stmt 1 view .LVU920
2608:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
 3219              		.loc 1 2608 21 is_stmt 0 view .LVU921
 3220 003c FFF7FEFF 		bl	HAL_GetTick
 3221              	.LVL220:
2608:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         do
 3222              		.loc 1 2608 21 view .LVU922
 3223 0040 0546     		mov	r5, r0
 3224              	.LVL221:
 3225              	.L238:
2609:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****         {
 3226              		.loc 1 2609 9 is_stmt 1 view .LVU923
2611:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
 3227              		.loc 1 2611 11 view .LVU924
2611:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
 3228              		.loc 1 2611 15 is_stmt 0 view .LVU925
 3229 0042 2368     		ldr	r3, [r4]
 3230 0044 5B6C     		ldr	r3, [r3, #68]
2611:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****           {
 3231              		.loc 1 2611 14 view .LVU926
 3232 0046 1B01     		lsls	r3, r3, #4
 3233 0048 E0D5     		bpl	.L236
2615:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3234              		.loc 1 2615 19 view .LVU927
 3235 004a FFF7FEFF 		bl	HAL_GetTick
 3236              	.LVL222:
2615:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3237              		.loc 1 2615 33 view .LVU928
 3238 004e 401B     		subs	r0, r0, r5
2615:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3239              		.loc 1 2615 9 view .LVU929
 3240 0050 0528     		cmp	r0, #5
 3241 0052 F6D9     		bls	.L238
 3242 0054 ECE7     		b	.L239
 3243              		.cfi_endproc
 3244              	.LFE361:
 3246              		.section	.text.HAL_TIMEx_DitheringEnable,"ax",%progbits
 3247              		.align	1
 3248              		.global	HAL_TIMEx_DitheringEnable
 3249              		.syntax unified
 3250              		.thumb
 3251              		.thumb_func
 3252              		.fpu fpv4-sp-d16
 3254              	HAL_TIMEx_DitheringEnable:
 3255              	.LVL223:
 3256              	.LFB362:
2647:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3257              		.loc 1 2647 1 is_stmt 1 view -0
 3258              		.cfi_startproc
 3259              		@ args = 0, pretend = 0, frame = 0
 3260              		@ frame_needed = 0, uses_anonymous_args = 0
 3261              		@ link register save eliminated.
2649:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3262              		.loc 1 2649 3 view .LVU931
2651:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3263              		.loc 1 2651 3 view .LVU932
 3264 0000 0268     		ldr	r2, [r0]
 3265 0002 1368     		ldr	r3, [r2]
 3266 0004 43F48053 		orr	r3, r3, #4096
 3267 0008 1360     		str	r3, [r2]
2652:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3268              		.loc 1 2652 3 view .LVU933
2653:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3269              		.loc 1 2653 1 is_stmt 0 view .LVU934
 3270 000a 0020     		movs	r0, #0
 3271              	.LVL224:
2653:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3272              		.loc 1 2653 1 view .LVU935
 3273 000c 7047     		bx	lr
 3274              		.cfi_endproc
 3275              	.LFE362:
 3277              		.section	.text.HAL_TIMEx_DitheringDisable,"ax",%progbits
 3278              		.align	1
 3279              		.global	HAL_TIMEx_DitheringDisable
 3280              		.syntax unified
 3281              		.thumb
 3282              		.thumb_func
 3283              		.fpu fpv4-sp-d16
 3285              	HAL_TIMEx_DitheringDisable:
 3286              	.LVL225:
 3287              	.LFB363:
2671:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3288              		.loc 1 2671 1 is_stmt 1 view -0
 3289              		.cfi_startproc
 3290              		@ args = 0, pretend = 0, frame = 0
 3291              		@ frame_needed = 0, uses_anonymous_args = 0
 3292              		@ link register save eliminated.
2673:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3293              		.loc 1 2673 3 view .LVU937
2675:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3294              		.loc 1 2675 3 view .LVU938
 3295 0000 0268     		ldr	r2, [r0]
 3296 0002 1368     		ldr	r3, [r2]
 3297 0004 23F48053 		bic	r3, r3, #4096
 3298 0008 1360     		str	r3, [r2]
2676:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3299              		.loc 1 2676 3 view .LVU939
2677:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3300              		.loc 1 2677 1 is_stmt 0 view .LVU940
 3301 000a 0020     		movs	r0, #0
 3302              	.LVL226:
2677:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3303              		.loc 1 2677 1 view .LVU941
 3304 000c 7047     		bx	lr
 3305              		.cfi_endproc
 3306              	.LFE363:
 3308              		.section	.text.HAL_TIMEx_OC_ConfigPulseOnCompare,"ax",%progbits
 3309              		.align	1
 3310              		.global	HAL_TIMEx_OC_ConfigPulseOnCompare
 3311              		.syntax unified
 3312              		.thumb
 3313              		.thumb_func
 3314              		.fpu fpv4-sp-d16
 3316              	HAL_TIMEx_OC_ConfigPulseOnCompare:
 3317              	.LVL227:
 3318              	.LFB364:
2691:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpecr;
 3319              		.loc 1 2691 1 is_stmt 1 view -0
 3320              		.cfi_startproc
 3321              		@ args = 0, pretend = 0, frame = 0
 3322              		@ frame_needed = 0, uses_anonymous_args = 0
2692:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3323              		.loc 1 2692 3 view .LVU943
2695:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_PULSEONCOMPARE_WIDTH(PulseWidth));
 3324              		.loc 1 2695 3 view .LVU944
2696:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_PULSEONCOMPARE_WIDTHPRESCALER(PulseWidthPrescaler));
 3325              		.loc 1 2696 3 view .LVU945
2697:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3326              		.loc 1 2697 3 view .LVU946
2700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3327              		.loc 1 2700 3 view .LVU947
2700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3328              		.loc 1 2700 3 view .LVU948
 3329 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 3330 0004 012B     		cmp	r3, #1
2691:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   uint32_t tmpecr;
 3331              		.loc 1 2691 1 is_stmt 0 view .LVU949
 3332 0006 10B5     		push	{r4, lr}
 3333              		.cfi_def_cfa_offset 8
 3334              		.cfi_offset 4, -8
 3335              		.cfi_offset 14, -4
 3336 0008 4FF00203 		mov	r3, #2
2700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3337              		.loc 1 2700 3 view .LVU950
 3338 000c 12D0     		beq	.L255
2700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3339              		.loc 1 2700 3 is_stmt 1 discriminator 2 view .LVU951
2703:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3340              		.loc 1 2703 3 discriminator 2 view .LVU952
2706:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the Pulse width prescaler and the Pulse width */
 3341              		.loc 1 2706 16 is_stmt 0 discriminator 2 view .LVU953
 3342 000e 0468     		ldr	r4, [r0]
2703:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3343              		.loc 1 2703 15 discriminator 2 view .LVU954
 3344 0010 80F83D30 		strb	r3, [r0, #61]
2706:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the Pulse width prescaler and the Pulse width */
 3345              		.loc 1 2706 3 is_stmt 1 discriminator 2 view .LVU955
2706:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Reset the Pulse width prescaler and the Pulse width */
 3346              		.loc 1 2706 10 is_stmt 0 discriminator 2 view .LVU956
 3347 0014 A36D     		ldr	r3, [r4, #88]
 3348              	.LVL228:
2708:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the Pulse width prescaler and Pulse width*/
 3349              		.loc 1 2708 3 is_stmt 1 discriminator 2 view .LVU957
2711:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Write to TIMx ECR */
 3350              		.loc 1 2711 24 is_stmt 0 discriminator 2 view .LVU958
 3351 0016 1204     		lsls	r2, r2, #16
 3352              	.LVL229:
2708:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the Pulse width prescaler and Pulse width*/
 3353              		.loc 1 2708 10 discriminator 2 view .LVU959
 3354 0018 23F0FF63 		bic	r3, r3, #133693440
 3355              	.LVL230:
2708:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Set the Pulse width prescaler and Pulse width*/
 3356              		.loc 1 2708 10 discriminator 2 view .LVU960
 3357 001c 23F4E023 		bic	r3, r3, #458752
 3358              	.LVL231:
2710:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   tmpecr |= PulseWidth << TIM_ECR_PW_Pos;
 3359              		.loc 1 2710 3 is_stmt 1 discriminator 2 view .LVU961
2711:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Write to TIMx ECR */
 3360              		.loc 1 2711 3 discriminator 2 view .LVU962
2711:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Write to TIMx ECR */
 3361              		.loc 1 2711 10 is_stmt 0 discriminator 2 view .LVU963
 3362 0020 42EA0162 		orr	r2, r2, r1, lsl #24
 3363 0024 1A43     		orrs	r2, r2, r3
 3364              	.LVL232:
2713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3365              		.loc 1 2713 3 is_stmt 1 discriminator 2 view .LVU964
2716:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3366              		.loc 1 2716 15 is_stmt 0 discriminator 2 view .LVU965
 3367 0026 0123     		movs	r3, #1
2713:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3368              		.loc 1 2713 23 discriminator 2 view .LVU966
 3369 0028 A265     		str	r2, [r4, #88]
2716:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3370              		.loc 1 2716 3 is_stmt 1 discriminator 2 view .LVU967
2716:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3371              		.loc 1 2716 15 is_stmt 0 discriminator 2 view .LVU968
 3372 002a 80F83D30 		strb	r3, [r0, #61]
2719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3373              		.loc 1 2719 3 is_stmt 1 discriminator 2 view .LVU969
2719:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3374              		.loc 1 2719 3 discriminator 2 view .LVU970
 3375 002e 0023     		movs	r3, #0
 3376 0030 80F83C30 		strb	r3, [r0, #60]
2721:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3377              		.loc 1 2721 3 discriminator 2 view .LVU971
 3378              	.LVL233:
 3379              	.L255:
2700:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3380              		.loc 1 2700 3 is_stmt 0 view .LVU972
 3381 0034 1846     		mov	r0, r3
 3382              	.LVL234:
2722:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3383              		.loc 1 2722 1 view .LVU973
 3384 0036 10BD     		pop	{r4, pc}
 3385              		.cfi_endproc
 3386              	.LFE364:
 3388              		.section	.text.HAL_TIMEx_ConfigSlaveModePreload,"ax",%progbits
 3389              		.align	1
 3390              		.global	HAL_TIMEx_ConfigSlaveModePreload
 3391              		.syntax unified
 3392              		.thumb
 3393              		.thumb_func
 3394              		.fpu fpv4-sp-d16
 3396              	HAL_TIMEx_ConfigSlaveModePreload:
 3397              	.LVL235:
 3398              	.LFB365:
2734:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3399              		.loc 1 2734 1 is_stmt 1 view -0
 3400              		.cfi_startproc
 3401              		@ args = 0, pretend = 0, frame = 0
 3402              		@ frame_needed = 0, uses_anonymous_args = 0
 3403              		@ link register save eliminated.
2736:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_SLAVE_PRELOAD_SOURCE(Source));
 3404              		.loc 1 2736 3 view .LVU975
2737:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3405              		.loc 1 2737 3 view .LVU976
2739:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3406              		.loc 1 2739 3 view .LVU977
 3407 0000 0268     		ldr	r2, [r0]
 3408 0002 9368     		ldr	r3, [r2, #8]
 3409 0004 23F00073 		bic	r3, r3, #33554432
 3410 0008 1943     		orrs	r1, r1, r3
 3411              	.LVL236:
2739:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3412              		.loc 1 2739 3 is_stmt 0 view .LVU978
 3413 000a 9160     		str	r1, [r2, #8]
2740:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3414              		.loc 1 2740 3 is_stmt 1 view .LVU979
2741:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3415              		.loc 1 2741 1 is_stmt 0 view .LVU980
 3416 000c 0020     		movs	r0, #0
 3417              	.LVL237:
2741:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3418              		.loc 1 2741 1 view .LVU981
 3419 000e 7047     		bx	lr
 3420              		.cfi_endproc
 3421              	.LFE365:
 3423              		.section	.text.HAL_TIMEx_EnableSlaveModePreload,"ax",%progbits
 3424              		.align	1
 3425              		.global	HAL_TIMEx_EnableSlaveModePreload
 3426              		.syntax unified
 3427              		.thumb
 3428              		.thumb_func
 3429              		.fpu fpv4-sp-d16
 3431              	HAL_TIMEx_EnableSlaveModePreload:
 3432              	.LVL238:
 3433              	.LFB366:
2749:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3434              		.loc 1 2749 1 is_stmt 1 view -0
 3435              		.cfi_startproc
 3436              		@ args = 0, pretend = 0, frame = 0
 3437              		@ frame_needed = 0, uses_anonymous_args = 0
 3438              		@ link register save eliminated.
2751:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3439              		.loc 1 2751 3 view .LVU983
2753:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3440              		.loc 1 2753 3 view .LVU984
 3441 0000 0268     		ldr	r2, [r0]
 3442 0002 9368     		ldr	r3, [r2, #8]
 3443 0004 43F08073 		orr	r3, r3, #16777216
 3444 0008 9360     		str	r3, [r2, #8]
2754:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3445              		.loc 1 2754 3 view .LVU985
2755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3446              		.loc 1 2755 1 is_stmt 0 view .LVU986
 3447 000a 0020     		movs	r0, #0
 3448              	.LVL239:
2755:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3449              		.loc 1 2755 1 view .LVU987
 3450 000c 7047     		bx	lr
 3451              		.cfi_endproc
 3452              	.LFE366:
 3454              		.section	.text.HAL_TIMEx_DisableSlaveModePreload,"ax",%progbits
 3455              		.align	1
 3456              		.global	HAL_TIMEx_DisableSlaveModePreload
 3457              		.syntax unified
 3458              		.thumb
 3459              		.thumb_func
 3460              		.fpu fpv4-sp-d16
 3462              	HAL_TIMEx_DisableSlaveModePreload:
 3463              	.LVL240:
 3464              	.LFB367:
2763:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3465              		.loc 1 2763 1 is_stmt 1 view -0
 3466              		.cfi_startproc
 3467              		@ args = 0, pretend = 0, frame = 0
 3468              		@ frame_needed = 0, uses_anonymous_args = 0
 3469              		@ link register save eliminated.
2765:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3470              		.loc 1 2765 3 view .LVU989
2767:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3471              		.loc 1 2767 3 view .LVU990
 3472 0000 0268     		ldr	r2, [r0]
 3473 0002 9368     		ldr	r3, [r2, #8]
 3474 0004 23F08073 		bic	r3, r3, #16777216
 3475 0008 9360     		str	r3, [r2, #8]
2768:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3476              		.loc 1 2768 3 view .LVU991
2769:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3477              		.loc 1 2769 1 is_stmt 0 view .LVU992
 3478 000a 0020     		movs	r0, #0
 3479              	.LVL241:
2769:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3480              		.loc 1 2769 1 view .LVU993
 3481 000c 7047     		bx	lr
 3482              		.cfi_endproc
 3483              	.LFE367:
 3485              		.section	.text.HAL_TIMEx_EnableDeadTimePreload,"ax",%progbits
 3486              		.align	1
 3487              		.global	HAL_TIMEx_EnableDeadTimePreload
 3488              		.syntax unified
 3489              		.thumb
 3490              		.thumb_func
 3491              		.fpu fpv4-sp-d16
 3493              	HAL_TIMEx_EnableDeadTimePreload:
 3494              	.LVL242:
 3495              	.LFB368:
2777:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3496              		.loc 1 2777 1 is_stmt 1 view -0
 3497              		.cfi_startproc
 3498              		@ args = 0, pretend = 0, frame = 0
 3499              		@ frame_needed = 0, uses_anonymous_args = 0
 3500              		@ link register save eliminated.
2779:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3501              		.loc 1 2779 3 view .LVU995
2781:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3502              		.loc 1 2781 3 view .LVU996
 3503 0000 0268     		ldr	r2, [r0]
 3504 0002 536D     		ldr	r3, [r2, #84]
 3505 0004 43F40033 		orr	r3, r3, #131072
 3506 0008 5365     		str	r3, [r2, #84]
2782:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3507              		.loc 1 2782 3 view .LVU997
2783:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3508              		.loc 1 2783 1 is_stmt 0 view .LVU998
 3509 000a 0020     		movs	r0, #0
 3510              	.LVL243:
2783:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3511              		.loc 1 2783 1 view .LVU999
 3512 000c 7047     		bx	lr
 3513              		.cfi_endproc
 3514              	.LFE368:
 3516              		.section	.text.HAL_TIMEx_DisableDeadTimePreload,"ax",%progbits
 3517              		.align	1
 3518              		.global	HAL_TIMEx_DisableDeadTimePreload
 3519              		.syntax unified
 3520              		.thumb
 3521              		.thumb_func
 3522              		.fpu fpv4-sp-d16
 3524              	HAL_TIMEx_DisableDeadTimePreload:
 3525              	.LVL244:
 3526              	.LFB369:
2791:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3527              		.loc 1 2791 1 is_stmt 1 view -0
 3528              		.cfi_startproc
 3529              		@ args = 0, pretend = 0, frame = 0
 3530              		@ frame_needed = 0, uses_anonymous_args = 0
 3531              		@ link register save eliminated.
2793:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3532              		.loc 1 2793 3 view .LVU1001
2795:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3533              		.loc 1 2795 3 view .LVU1002
 3534 0000 0268     		ldr	r2, [r0]
 3535 0002 536D     		ldr	r3, [r2, #84]
 3536 0004 23F40033 		bic	r3, r3, #131072
 3537 0008 5365     		str	r3, [r2, #84]
2796:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3538              		.loc 1 2796 3 view .LVU1003
2797:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3539              		.loc 1 2797 1 is_stmt 0 view .LVU1004
 3540 000a 0020     		movs	r0, #0
 3541              	.LVL245:
2797:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3542              		.loc 1 2797 1 view .LVU1005
 3543 000c 7047     		bx	lr
 3544              		.cfi_endproc
 3545              	.LFE369:
 3547              		.section	.text.HAL_TIMEx_ConfigDeadTime,"ax",%progbits
 3548              		.align	1
 3549              		.global	HAL_TIMEx_ConfigDeadTime
 3550              		.syntax unified
 3551              		.thumb
 3552              		.thumb_func
 3553              		.fpu fpv4-sp-d16
 3555              	HAL_TIMEx_ConfigDeadTime:
 3556              	.LVL246:
 3557              	.LFB370:
2807:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3558              		.loc 1 2807 1 is_stmt 1 view -0
 3559              		.cfi_startproc
 3560              		@ args = 0, pretend = 0, frame = 0
 3561              		@ frame_needed = 0, uses_anonymous_args = 0
 3562              		@ link register save eliminated.
2809:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_DEADTIME(Deadtime));
 3563              		.loc 1 2809 3 view .LVU1007
2810:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3564              		.loc 1 2810 3 view .LVU1008
2812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3565              		.loc 1 2812 3 view .LVU1009
 3566 0000 0268     		ldr	r2, [r0]
 3567 0002 536C     		ldr	r3, [r2, #68]
 3568 0004 23F0FF03 		bic	r3, r3, #255
 3569 0008 1943     		orrs	r1, r1, r3
 3570              	.LVL247:
2812:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3571              		.loc 1 2812 3 is_stmt 0 view .LVU1010
 3572 000a 5164     		str	r1, [r2, #68]
2813:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3573              		.loc 1 2813 3 is_stmt 1 view .LVU1011
2814:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3574              		.loc 1 2814 1 is_stmt 0 view .LVU1012
 3575 000c 0020     		movs	r0, #0
 3576              	.LVL248:
2814:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3577              		.loc 1 2814 1 view .LVU1013
 3578 000e 7047     		bx	lr
 3579              		.cfi_endproc
 3580              	.LFE370:
 3582              		.section	.text.HAL_TIMEx_ConfigAsymmetricalDeadTime,"ax",%progbits
 3583              		.align	1
 3584              		.global	HAL_TIMEx_ConfigAsymmetricalDeadTime
 3585              		.syntax unified
 3586              		.thumb
 3587              		.thumb_func
 3588              		.fpu fpv4-sp-d16
 3590              	HAL_TIMEx_ConfigAsymmetricalDeadTime:
 3591              	.LVL249:
 3592              	.LFB371:
2824:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3593              		.loc 1 2824 1 is_stmt 1 view -0
 3594              		.cfi_startproc
 3595              		@ args = 0, pretend = 0, frame = 0
 3596              		@ frame_needed = 0, uses_anonymous_args = 0
 3597              		@ link register save eliminated.
2826:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_DEADTIME(FallingDeadtime));
 3598              		.loc 1 2826 3 view .LVU1015
2827:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3599              		.loc 1 2827 3 view .LVU1016
2829:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3600              		.loc 1 2829 3 view .LVU1017
 3601 0000 0268     		ldr	r2, [r0]
 3602 0002 536D     		ldr	r3, [r2, #84]
 3603 0004 23F0FF03 		bic	r3, r3, #255
 3604 0008 1943     		orrs	r1, r1, r3
 3605              	.LVL250:
2829:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3606              		.loc 1 2829 3 is_stmt 0 view .LVU1018
 3607 000a 5165     		str	r1, [r2, #84]
2830:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3608              		.loc 1 2830 3 is_stmt 1 view .LVU1019
2831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3609              		.loc 1 2831 1 is_stmt 0 view .LVU1020
 3610 000c 0020     		movs	r0, #0
 3611              	.LVL251:
2831:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3612              		.loc 1 2831 1 view .LVU1021
 3613 000e 7047     		bx	lr
 3614              		.cfi_endproc
 3615              	.LFE371:
 3617              		.section	.text.HAL_TIMEx_EnableAsymmetricalDeadTime,"ax",%progbits
 3618              		.align	1
 3619              		.global	HAL_TIMEx_EnableAsymmetricalDeadTime
 3620              		.syntax unified
 3621              		.thumb
 3622              		.thumb_func
 3623              		.fpu fpv4-sp-d16
 3625              	HAL_TIMEx_EnableAsymmetricalDeadTime:
 3626              	.LVL252:
 3627              	.LFB372:
2839:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3628              		.loc 1 2839 1 is_stmt 1 view -0
 3629              		.cfi_startproc
 3630              		@ args = 0, pretend = 0, frame = 0
 3631              		@ frame_needed = 0, uses_anonymous_args = 0
 3632              		@ link register save eliminated.
2841:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3633              		.loc 1 2841 3 view .LVU1023
2843:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3634              		.loc 1 2843 3 view .LVU1024
 3635 0000 0268     		ldr	r2, [r0]
 3636 0002 536D     		ldr	r3, [r2, #84]
 3637 0004 43F48033 		orr	r3, r3, #65536
 3638 0008 5365     		str	r3, [r2, #84]
2844:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3639              		.loc 1 2844 3 view .LVU1025
2845:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3640              		.loc 1 2845 1 is_stmt 0 view .LVU1026
 3641 000a 0020     		movs	r0, #0
 3642              	.LVL253:
2845:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3643              		.loc 1 2845 1 view .LVU1027
 3644 000c 7047     		bx	lr
 3645              		.cfi_endproc
 3646              	.LFE372:
 3648              		.section	.text.HAL_TIMEx_DisableAsymmetricalDeadTime,"ax",%progbits
 3649              		.align	1
 3650              		.global	HAL_TIMEx_DisableAsymmetricalDeadTime
 3651              		.syntax unified
 3652              		.thumb
 3653              		.thumb_func
 3654              		.fpu fpv4-sp-d16
 3656              	HAL_TIMEx_DisableAsymmetricalDeadTime:
 3657              	.LVL254:
 3658              	.LFB373:
2853:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3659              		.loc 1 2853 1 is_stmt 1 view -0
 3660              		.cfi_startproc
 3661              		@ args = 0, pretend = 0, frame = 0
 3662              		@ frame_needed = 0, uses_anonymous_args = 0
 3663              		@ link register save eliminated.
2855:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3664              		.loc 1 2855 3 view .LVU1029
2857:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3665              		.loc 1 2857 3 view .LVU1030
 3666 0000 0268     		ldr	r2, [r0]
 3667 0002 536D     		ldr	r3, [r2, #84]
 3668 0004 23F48033 		bic	r3, r3, #65536
 3669 0008 5365     		str	r3, [r2, #84]
2858:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3670              		.loc 1 2858 3 view .LVU1031
2859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3671              		.loc 1 2859 1 is_stmt 0 view .LVU1032
 3672 000a 0020     		movs	r0, #0
 3673              	.LVL255:
2859:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3674              		.loc 1 2859 1 view .LVU1033
 3675 000c 7047     		bx	lr
 3676              		.cfi_endproc
 3677              	.LFE373:
 3679              		.section	.text.HAL_TIMEx_ConfigEncoderIndex,"ax",%progbits
 3680              		.align	1
 3681              		.global	HAL_TIMEx_ConfigEncoderIndex
 3682              		.syntax unified
 3683              		.thumb
 3684              		.thumb_func
 3685              		.fpu fpv4-sp-d16
 3687              	HAL_TIMEx_ConfigEncoderIndex:
 3688              	.LVL256:
 3689              	.LFB374:
2872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3690              		.loc 1 2872 1 is_stmt 1 view -0
 3691              		.cfi_startproc
 3692              		@ args = 0, pretend = 0, frame = 0
 3693              		@ frame_needed = 0, uses_anonymous_args = 0
2874:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_POLARITY(sEncoderIndexConfig->Polarity));
 3694              		.loc 1 2874 3 view .LVU1035
2875:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_PRESCALER(sEncoderIndexConfig->Prescaler));
 3695              		.loc 1 2875 3 view .LVU1036
2876:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_FILTER(sEncoderIndexConfig->Filter));
 3696              		.loc 1 2876 3 view .LVU1037
2877:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(sEncoderIndexConfig->FirstIndexEnable));
 3697              		.loc 1 2877 3 view .LVU1038
2878:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_POSITION(sEncoderIndexConfig->Position));
 3698              		.loc 1 2878 3 view .LVU1039
2879:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   assert_param(IS_TIM_ENCODERINDEX_DIRECTION(sEncoderIndexConfig->Direction));
 3699              		.loc 1 2879 3 view .LVU1040
2880:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3700              		.loc 1 2880 3 view .LVU1041
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3701              		.loc 1 2883 3 view .LVU1042
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3702              		.loc 1 2883 3 view .LVU1043
2872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3703              		.loc 1 2872 1 is_stmt 0 view .LVU1044
 3704 0000 38B5     		push	{r3, r4, r5, lr}
 3705              		.cfi_def_cfa_offset 16
 3706              		.cfi_offset 3, -16
 3707              		.cfi_offset 4, -12
 3708              		.cfi_offset 5, -8
 3709              		.cfi_offset 14, -4
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3710              		.loc 1 2883 3 view .LVU1045
 3711 0002 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 3712 0006 012B     		cmp	r3, #1
2872:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3713              		.loc 1 2872 1 view .LVU1046
 3714 0008 0546     		mov	r5, r0
 3715 000a 0C46     		mov	r4, r1
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3716              		.loc 1 2883 3 view .LVU1047
 3717 000c 1DD0     		beq	.L268
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3718              		.loc 1 2883 3 is_stmt 1 discriminator 2 view .LVU1048
 3719 000e 0123     		movs	r3, #1
 3720 0010 80F83C30 		strb	r3, [r0, #60]
2886:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     sEncoderIndexConfig->Prescaler,
 3721              		.loc 1 2886 3 discriminator 2 view .LVU1049
 3722 0014 8B68     		ldr	r3, [r1, #8]
 3723 0016 0068     		ldr	r0, [r0]
 3724              	.LVL257:
2886:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     sEncoderIndexConfig->Prescaler,
 3725              		.loc 1 2886 3 is_stmt 0 discriminator 2 view .LVU1050
 3726 0018 D1E90021 		ldrd	r2, r1, [r1]
 3727              	.LVL258:
2886:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****                     sEncoderIndexConfig->Prescaler,
 3728              		.loc 1 2886 3 discriminator 2 view .LVU1051
 3729 001c FFF7FEFF 		bl	TIM_ETR_SetConfig
 3730              	.LVL259:
2892:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****              TIM_ECR_IDIR_Msk | TIM_ECR_FIDX_Msk | TIM_ECR_IPOS_Msk,
 3731              		.loc 1 2892 3 is_stmt 1 discriminator 2 view .LVU1052
 3732 0020 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 3733 0022 2968     		ldr	r1, [r5]
 3734 0024 6369     		ldr	r3, [r4, #20]
 3735 0026 2469     		ldr	r4, [r4, #16]
 3736              	.LVL260:
2892:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****              TIM_ECR_IDIR_Msk | TIM_ECR_FIDX_Msk | TIM_ECR_IPOS_Msk,
 3737              		.loc 1 2892 3 is_stmt 0 discriminator 2 view .LVU1053
 3738 0028 8A6D     		ldr	r2, [r1, #88]
 3739 002a 0128     		cmp	r0, #1
 3740 002c 0CBF     		ite	eq
 3741 002e 2020     		moveq	r0, #32
 3742 0030 0020     		movne	r0, #0
 3743 0032 2343     		orrs	r3, r3, r4
 3744 0034 0343     		orrs	r3, r3, r0
 3745 0036 22F0E602 		bic	r2, r2, #230
 3746 003a 1343     		orrs	r3, r3, r2
 3747 003c 43F00103 		orr	r3, r3, #1
2899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3748              		.loc 1 2899 3 discriminator 2 view .LVU1054
 3749 0040 0020     		movs	r0, #0
2892:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****              TIM_ECR_IDIR_Msk | TIM_ECR_FIDX_Msk | TIM_ECR_IPOS_Msk,
 3750              		.loc 1 2892 3 discriminator 2 view .LVU1055
 3751 0042 8B65     		str	r3, [r1, #88]
2899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3752              		.loc 1 2899 3 is_stmt 1 discriminator 2 view .LVU1056
2899:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3753              		.loc 1 2899 3 discriminator 2 view .LVU1057
 3754 0044 85F83C00 		strb	r0, [r5, #60]
2901:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3755              		.loc 1 2901 3 discriminator 2 view .LVU1058
 3756              	.L266:
2902:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3757              		.loc 1 2902 1 is_stmt 0 view .LVU1059
 3758 0048 38BD     		pop	{r3, r4, r5, pc}
 3759              	.LVL261:
 3760              	.L268:
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3761              		.loc 1 2883 3 view .LVU1060
 3762 004a 0220     		movs	r0, #2
 3763              	.LVL262:
2883:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3764              		.loc 1 2883 3 view .LVU1061
 3765 004c FCE7     		b	.L266
 3766              		.cfi_endproc
 3767              	.LFE374:
 3769              		.section	.text.HAL_TIMEx_EnableEncoderIndex,"ax",%progbits
 3770              		.align	1
 3771              		.global	HAL_TIMEx_EnableEncoderIndex
 3772              		.syntax unified
 3773              		.thumb
 3774              		.thumb_func
 3775              		.fpu fpv4-sp-d16
 3777              	HAL_TIMEx_EnableEncoderIndex:
 3778              	.LVL263:
 3779              	.LFB375:
2910:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3780              		.loc 1 2910 1 is_stmt 1 view -0
 3781              		.cfi_startproc
 3782              		@ args = 0, pretend = 0, frame = 0
 3783              		@ frame_needed = 0, uses_anonymous_args = 0
 3784              		@ link register save eliminated.
2912:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3785              		.loc 1 2912 3 view .LVU1063
2914:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3786              		.loc 1 2914 3 view .LVU1064
 3787 0000 0268     		ldr	r2, [r0]
 3788 0002 936D     		ldr	r3, [r2, #88]
 3789 0004 43F00103 		orr	r3, r3, #1
 3790 0008 9365     		str	r3, [r2, #88]
2915:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3791              		.loc 1 2915 3 view .LVU1065
2916:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3792              		.loc 1 2916 1 is_stmt 0 view .LVU1066
 3793 000a 0020     		movs	r0, #0
 3794              	.LVL264:
2916:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3795              		.loc 1 2916 1 view .LVU1067
 3796 000c 7047     		bx	lr
 3797              		.cfi_endproc
 3798              	.LFE375:
 3800              		.section	.text.HAL_TIMEx_DisableEncoderIndex,"ax",%progbits
 3801              		.align	1
 3802              		.global	HAL_TIMEx_DisableEncoderIndex
 3803              		.syntax unified
 3804              		.thumb
 3805              		.thumb_func
 3806              		.fpu fpv4-sp-d16
 3808              	HAL_TIMEx_DisableEncoderIndex:
 3809              	.LVL265:
 3810              	.LFB376:
2924:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3811              		.loc 1 2924 1 is_stmt 1 view -0
 3812              		.cfi_startproc
 3813              		@ args = 0, pretend = 0, frame = 0
 3814              		@ frame_needed = 0, uses_anonymous_args = 0
 3815              		@ link register save eliminated.
2926:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3816              		.loc 1 2926 3 view .LVU1069
2928:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3817              		.loc 1 2928 3 view .LVU1070
 3818 0000 0268     		ldr	r2, [r0]
 3819 0002 936D     		ldr	r3, [r2, #88]
 3820 0004 23F00103 		bic	r3, r3, #1
 3821 0008 9365     		str	r3, [r2, #88]
2929:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3822              		.loc 1 2929 3 view .LVU1071
2930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3823              		.loc 1 2930 1 is_stmt 0 view .LVU1072
 3824 000a 0020     		movs	r0, #0
 3825              	.LVL266:
2930:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3826              		.loc 1 2930 1 view .LVU1073
 3827 000c 7047     		bx	lr
 3828              		.cfi_endproc
 3829              	.LFE376:
 3831              		.section	.text.HAL_TIMEx_EnableEncoderFirstIndex,"ax",%progbits
 3832              		.align	1
 3833              		.global	HAL_TIMEx_EnableEncoderFirstIndex
 3834              		.syntax unified
 3835              		.thumb
 3836              		.thumb_func
 3837              		.fpu fpv4-sp-d16
 3839              	HAL_TIMEx_EnableEncoderFirstIndex:
 3840              	.LVL267:
 3841              	.LFB377:
2938:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3842              		.loc 1 2938 1 is_stmt 1 view -0
 3843              		.cfi_startproc
 3844              		@ args = 0, pretend = 0, frame = 0
 3845              		@ frame_needed = 0, uses_anonymous_args = 0
 3846              		@ link register save eliminated.
2940:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3847              		.loc 1 2940 3 view .LVU1075
2942:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3848              		.loc 1 2942 3 view .LVU1076
 3849 0000 0268     		ldr	r2, [r0]
 3850 0002 936D     		ldr	r3, [r2, #88]
 3851 0004 43F02003 		orr	r3, r3, #32
 3852 0008 9365     		str	r3, [r2, #88]
2943:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3853              		.loc 1 2943 3 view .LVU1077
2944:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3854              		.loc 1 2944 1 is_stmt 0 view .LVU1078
 3855 000a 0020     		movs	r0, #0
 3856              	.LVL268:
2944:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3857              		.loc 1 2944 1 view .LVU1079
 3858 000c 7047     		bx	lr
 3859              		.cfi_endproc
 3860              	.LFE377:
 3862              		.section	.text.HAL_TIMEx_DisableEncoderFirstIndex,"ax",%progbits
 3863              		.align	1
 3864              		.global	HAL_TIMEx_DisableEncoderFirstIndex
 3865              		.syntax unified
 3866              		.thumb
 3867              		.thumb_func
 3868              		.fpu fpv4-sp-d16
 3870              	HAL_TIMEx_DisableEncoderFirstIndex:
 3871              	.LVL269:
 3872              	.LFB378:
2952:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   /* Check the parameters */
 3873              		.loc 1 2952 1 is_stmt 1 view -0
 3874              		.cfi_startproc
 3875              		@ args = 0, pretend = 0, frame = 0
 3876              		@ frame_needed = 0, uses_anonymous_args = 0
 3877              		@ link register save eliminated.
2954:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3878              		.loc 1 2954 3 view .LVU1081
2956:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return HAL_OK;
 3879              		.loc 1 2956 3 view .LVU1082
 3880 0000 0268     		ldr	r2, [r0]
 3881 0002 936D     		ldr	r3, [r2, #88]
 3882 0004 23F02003 		bic	r3, r3, #32
 3883 0008 9365     		str	r3, [r2, #88]
2957:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 3884              		.loc 1 2957 3 view .LVU1083
2958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3885              		.loc 1 2958 1 is_stmt 0 view .LVU1084
 3886 000a 0020     		movs	r0, #0
 3887              	.LVL270:
2958:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3888              		.loc 1 2958 1 view .LVU1085
 3889 000c 7047     		bx	lr
 3890              		.cfi_endproc
 3891              	.LFE378:
 3893              		.section	.text.HAL_TIMEx_CommutCallback,"ax",%progbits
 3894              		.align	1
 3895              		.weak	HAL_TIMEx_CommutCallback
 3896              		.syntax unified
 3897              		.thumb
 3898              		.thumb_func
 3899              		.fpu fpv4-sp-d16
 3901              	HAL_TIMEx_CommutCallback:
 3902              	.LFB394:
 3903              		.cfi_startproc
 3904              		@ args = 0, pretend = 0, frame = 0
 3905              		@ frame_needed = 0, uses_anonymous_args = 0
 3906              		@ link register save eliminated.
 3907 0000 7047     		bx	lr
 3908              		.cfi_endproc
 3909              	.LFE394:
 3911              		.section	.text.TIMEx_DMACommutationCplt,"ax",%progbits
 3912              		.align	1
 3913              		.global	TIMEx_DMACommutationCplt
 3914              		.syntax unified
 3915              		.thumb
 3916              		.thumb_func
 3917              		.fpu fpv4-sp-d16
 3919              	TIMEx_DMACommutationCplt:
 3920              	.LVL271:
 3921              	.LFB388:
3147:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
 3922              		.loc 1 3147 1 is_stmt 1 view -0
 3923              		.cfi_startproc
 3924              		@ args = 0, pretend = 0, frame = 0
 3925              		@ frame_needed = 0, uses_anonymous_args = 0
3148:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3926              		.loc 1 3148 3 view .LVU1087
3147:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
 3927              		.loc 1 3147 1 is_stmt 0 view .LVU1088
 3928 0000 08B5     		push	{r3, lr}
 3929              		.cfi_def_cfa_offset 8
 3930              		.cfi_offset 3, -8
 3931              		.cfi_offset 14, -4
3148:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3932              		.loc 1 3148 22 view .LVU1089
 3933 0002 806A     		ldr	r0, [r0, #40]
 3934              	.LVL272:
3151:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3935              		.loc 1 3151 3 is_stmt 1 view .LVU1090
3151:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3936              		.loc 1 3151 15 is_stmt 0 view .LVU1091
 3937 0004 0123     		movs	r3, #1
 3938 0006 80F83D30 		strb	r3, [r0, #61]
3156:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
 3939              		.loc 1 3156 3 is_stmt 1 view .LVU1092
 3940 000a FFF7FEFF 		bl	HAL_TIMEx_CommutCallback
 3941              	.LVL273:
3158:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3942              		.loc 1 3158 1 is_stmt 0 view .LVU1093
 3943 000e 08BD     		pop	{r3, pc}
 3944              		.cfi_endproc
 3945              	.LFE388:
 3947              		.section	.text.HAL_TIMEx_CommutHalfCpltCallback,"ax",%progbits
 3948              		.align	1
 3949              		.weak	HAL_TIMEx_CommutHalfCpltCallback
 3950              		.syntax unified
 3951              		.thumb
 3952              		.thumb_func
 3953              		.fpu fpv4-sp-d16
 3955              	HAL_TIMEx_CommutHalfCpltCallback:
 3956              	.LFB396:
 3957              		.cfi_startproc
 3958              		@ args = 0, pretend = 0, frame = 0
 3959              		@ frame_needed = 0, uses_anonymous_args = 0
 3960              		@ link register save eliminated.
 3961 0000 7047     		bx	lr
 3962              		.cfi_endproc
 3963              	.LFE396:
 3965              		.section	.text.TIMEx_DMACommutationHalfCplt,"ax",%progbits
 3966              		.align	1
 3967              		.global	TIMEx_DMACommutationHalfCplt
 3968              		.syntax unified
 3969              		.thumb
 3970              		.thumb_func
 3971              		.fpu fpv4-sp-d16
 3973              	TIMEx_DMACommutationHalfCplt:
 3974              	.LVL274:
 3975              	.LFB389:
3166:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
 3976              		.loc 1 3166 1 is_stmt 1 view -0
 3977              		.cfi_startproc
 3978              		@ args = 0, pretend = 0, frame = 0
 3979              		@ frame_needed = 0, uses_anonymous_args = 0
3167:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3980              		.loc 1 3167 3 view .LVU1095
3166:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
 3981              		.loc 1 3166 1 is_stmt 0 view .LVU1096
 3982 0000 08B5     		push	{r3, lr}
 3983              		.cfi_def_cfa_offset 8
 3984              		.cfi_offset 3, -8
 3985              		.cfi_offset 14, -4
3167:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3986              		.loc 1 3167 22 view .LVU1097
 3987 0002 806A     		ldr	r0, [r0, #40]
 3988              	.LVL275:
3170:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3989              		.loc 1 3170 3 is_stmt 1 view .LVU1098
3170:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3990              		.loc 1 3170 15 is_stmt 0 view .LVU1099
 3991 0004 0123     		movs	r3, #1
 3992 0006 80F83D30 		strb	r3, [r0, #61]
3175:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
 3993              		.loc 1 3175 3 is_stmt 1 view .LVU1100
 3994 000a FFF7FEFF 		bl	HAL_TIMEx_CommutHalfCpltCallback
 3995              	.LVL276:
3177:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 3996              		.loc 1 3177 1 is_stmt 0 view .LVU1101
 3997 000e 08BD     		pop	{r3, pc}
 3998              		.cfi_endproc
 3999              	.LFE389:
 4001              		.section	.text.HAL_TIMEx_BreakCallback,"ax",%progbits
 4002              		.align	1
 4003              		.weak	HAL_TIMEx_BreakCallback
 4004              		.syntax unified
 4005              		.thumb
 4006              		.thumb_func
 4007              		.fpu fpv4-sp-d16
 4009              	HAL_TIMEx_BreakCallback:
 4010              	.LFB398:
 4011              		.cfi_startproc
 4012              		@ args = 0, pretend = 0, frame = 0
 4013              		@ frame_needed = 0, uses_anonymous_args = 0
 4014              		@ link register save eliminated.
 4015 0000 7047     		bx	lr
 4016              		.cfi_endproc
 4017              	.LFE398:
 4019              		.section	.text.HAL_TIMEx_Break2Callback,"ax",%progbits
 4020              		.align	1
 4021              		.weak	HAL_TIMEx_Break2Callback
 4022              		.syntax unified
 4023              		.thumb
 4024              		.thumb_func
 4025              		.fpu fpv4-sp-d16
 4027              	HAL_TIMEx_Break2Callback:
 4028              	.LFB400:
 4029              		.cfi_startproc
 4030              		@ args = 0, pretend = 0, frame = 0
 4031              		@ frame_needed = 0, uses_anonymous_args = 0
 4032              		@ link register save eliminated.
 4033 0000 7047     		bx	lr
 4034              		.cfi_endproc
 4035              	.LFE400:
 4037              		.section	.text.HAL_TIMEx_EncoderIndexCallback,"ax",%progbits
 4038              		.align	1
 4039              		.weak	HAL_TIMEx_EncoderIndexCallback
 4040              		.syntax unified
 4041              		.thumb
 4042              		.thumb_func
 4043              		.fpu fpv4-sp-d16
 4045              	HAL_TIMEx_EncoderIndexCallback:
 4046              	.LFB402:
 4047              		.cfi_startproc
 4048              		@ args = 0, pretend = 0, frame = 0
 4049              		@ frame_needed = 0, uses_anonymous_args = 0
 4050              		@ link register save eliminated.
 4051 0000 7047     		bx	lr
 4052              		.cfi_endproc
 4053              	.LFE402:
 4055              		.section	.text.HAL_TIMEx_DirectionChangeCallback,"ax",%progbits
 4056              		.align	1
 4057              		.weak	HAL_TIMEx_DirectionChangeCallback
 4058              		.syntax unified
 4059              		.thumb
 4060              		.thumb_func
 4061              		.fpu fpv4-sp-d16
 4063              	HAL_TIMEx_DirectionChangeCallback:
 4064              	.LFB404:
 4065              		.cfi_startproc
 4066              		@ args = 0, pretend = 0, frame = 0
 4067              		@ frame_needed = 0, uses_anonymous_args = 0
 4068              		@ link register save eliminated.
 4069 0000 7047     		bx	lr
 4070              		.cfi_endproc
 4071              	.LFE404:
 4073              		.section	.text.HAL_TIMEx_IndexErrorCallback,"ax",%progbits
 4074              		.align	1
 4075              		.weak	HAL_TIMEx_IndexErrorCallback
 4076              		.syntax unified
 4077              		.thumb
 4078              		.thumb_func
 4079              		.fpu fpv4-sp-d16
 4081              	HAL_TIMEx_IndexErrorCallback:
 4082              	.LFB406:
 4083              		.cfi_startproc
 4084              		@ args = 0, pretend = 0, frame = 0
 4085              		@ frame_needed = 0, uses_anonymous_args = 0
 4086              		@ link register save eliminated.
 4087 0000 7047     		bx	lr
 4088              		.cfi_endproc
 4089              	.LFE406:
 4091              		.section	.text.HAL_TIMEx_TransitionErrorCallback,"ax",%progbits
 4092              		.align	1
 4093              		.weak	HAL_TIMEx_TransitionErrorCallback
 4094              		.syntax unified
 4095              		.thumb
 4096              		.thumb_func
 4097              		.fpu fpv4-sp-d16
 4099              	HAL_TIMEx_TransitionErrorCallback:
 4100              	.LFB408:
 4101              		.cfi_startproc
 4102              		@ args = 0, pretend = 0, frame = 0
 4103              		@ frame_needed = 0, uses_anonymous_args = 0
 4104              		@ link register save eliminated.
 4105 0000 7047     		bx	lr
 4106              		.cfi_endproc
 4107              	.LFE408:
 4109              		.section	.text.HAL_TIMEx_HallSensor_GetState,"ax",%progbits
 4110              		.align	1
 4111              		.global	HAL_TIMEx_HallSensor_GetState
 4112              		.syntax unified
 4113              		.thumb
 4114              		.thumb_func
 4115              		.fpu fpv4-sp-d16
 4117              	HAL_TIMEx_HallSensor_GetState:
 4118              	.LVL277:
 4119              	.LFB387:
3124:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c ****   return htim->State;
 4120              		.loc 1 3124 1 is_stmt 1 view -0
 4121              		.cfi_startproc
 4122              		@ args = 0, pretend = 0, frame = 0
 4123              		@ frame_needed = 0, uses_anonymous_args = 0
 4124              		@ link register save eliminated.
3125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 4125              		.loc 1 3125 3 view .LVU1103
3125:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** }
 4126              		.loc 1 3125 14 is_stmt 0 view .LVU1104
 4127 0000 90F83D00 		ldrb	r0, [r0, #61]	@ zero_extendqisi2
 4128              	.LVL278:
3126:../../..\CubeG4\src/stm32g4xx_hal_tim_ex.c **** 
 4129              		.loc 1 3126 1 view .LVU1105
 4130 0004 7047     		bx	lr
 4131              		.cfi_endproc
 4132              	.LFE387:
 4134              		.section	.rodata.CSWTCH.10,"a"
 4135              		.set	.LANCHOR0,. + 0
 4138              	CSWTCH.10:
 4139 0000 01       		.byte	1
 4140 0001 02       		.byte	2
 4141 0002 00       		.byte	0
 4142 0003 04       		.byte	4
 4143 0004 00       		.byte	0
 4144 0005 00       		.byte	0
 4145 0006 00       		.byte	0
 4146 0007 08       		.byte	8
 4147 0008 00       		.byte	0
 4148 0009 00       		.byte	0
 4149 000a 00       		.byte	0
 4150 000b 00       		.byte	0
 4151 000c 00       		.byte	0
 4152 000d 00       		.byte	0
 4153 000e 00       		.byte	0
 4154 000f 10       		.byte	16
 4155              		.section	.rodata.CSWTCH.11,"a"
 4156              		.align	1
 4157              		.set	.LANCHOR1,. + 0
 4160              	CSWTCH.11:
 4161 0000 0002     		.short	512
 4162 0002 0004     		.short	1024
 4163 0004 0000     		.short	0
 4164 0006 0008     		.short	2048
 4165 0008 0000     		.short	0
 4166 000a 0000     		.short	0
 4167 000c 0000     		.short	0
 4168 000e 0010     		.short	4096
 4169 0010 0000     		.short	0
 4170 0012 0000     		.short	0
 4171 0014 0000     		.short	0
 4172 0016 0000     		.short	0
 4173 0018 0000     		.short	0
 4174 001a 0000     		.short	0
 4175 001c 0000     		.short	0
 4176 001e 0020     		.short	8192
 4177              		.section	.rodata.CSWTCH.12,"a"
 4178              		.set	.LANCHOR2,. + 0
 4181              	CSWTCH.12:
 4182 0000 00       		.byte	0
 4183 0001 01       		.byte	1
 4184 0002 00       		.byte	0
 4185 0003 02       		.byte	2
 4186 0004 00       		.byte	0
 4187 0005 00       		.byte	0
 4188 0006 00       		.byte	0
 4189 0007 03       		.byte	3
 4190 0008 00       		.byte	0
 4191 0009 00       		.byte	0
 4192 000a 00       		.byte	0
 4193 000b 00       		.byte	0
 4194 000c 00       		.byte	0
 4195 000d 00       		.byte	0
 4196 000e 00       		.byte	0
 4197 000f 04       		.byte	4
 4198              		.section	.rodata.CSWTCH.13,"a"
 4199              		.set	.LANCHOR3,. + 0
 4202              	CSWTCH.13:
 4203 0000 09       		.byte	9
 4204 0001 0A       		.byte	10
 4205 0002 00       		.byte	0
 4206 0003 0B       		.byte	11
 4207 0004 00       		.byte	0
 4208 0005 00       		.byte	0
 4209 0006 00       		.byte	0
 4210 0007 0C       		.byte	12
 4211 0008 00       		.byte	0
 4212 0009 00       		.byte	0
 4213 000a 00       		.byte	0
 4214 000b 00       		.byte	0
 4215 000c 00       		.byte	0
 4216 000d 00       		.byte	0
 4217 000e 00       		.byte	0
 4218 000f 0D       		.byte	13
 4219              		.text
 4220              	.Letext0:
 4221              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 4222              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 4223              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 4224              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 4225              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 4226              		.file 7 "../../..\\CubeG4\\include/stm32g4xx.h"
 4227              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 4228              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_dma.h"
 4229              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 4230              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_tim.h"
 4231              		.file 12 "../../..\\CubeG4\\include/stm32g4xx_hal_tim_ex.h"
 4232              		.file 13 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
