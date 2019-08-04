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
  13              		.file	"stm32g4xx_hal_uart_ex.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.UARTEx_SetNbDataToProcess,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	UARTEx_SetNbDataToProcess:
  26              	.LVL0:
  27              	.LFB338:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_uart_ex.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @file    stm32g4xx_hal_uart_ex.c
   4:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief   Extended UART HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          This file provides firmware functions to manage the following extended
   7:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          functionalities of the Universal Asynchronous Receiver Transmitter Peripheral (UART).
   8:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *           + Initialization and de-initialization functions
   9:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *           + Peripheral Control functions
  10:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   @verbatim
  13:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   ==============================================================================
  14:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****                ##### UART peripheral extended features  #####
  15:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   ==============================================================================
  16:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  17:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     (#) Declare a UART_HandleTypeDef handle structure.
  18:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  19:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     (#) For the UART RS485 Driver Enable mode, initialize the UART registers
  20:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         by calling the HAL_RS485Ex_Init() API.
  21:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  22:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     (#) FIFO mode enabling/disabling and RX/TX FIFO threshold programming.
  23:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  24:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         -@- When UART operates in FIFO mode, FIFO mode must be enabled prior
  25:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****             starting RX/TX transfers. Also RX/TX FIFO thresholds must be
  26:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****             configured prior starting RX/TX transfers.
  27:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  28:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   @endverbatim
  29:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   ******************************************************************************
  30:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @attention
  31:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
  32:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  33:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * All rights reserved.</center></h2>
  34:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
  35:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  36:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * the "License"; You may not use this file except in compliance with the
  37:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * License. You may obtain a copy of the License at:
  38:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *                        opensource.org/licenses/BSD-3-Clause
  39:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
  40:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   ******************************************************************************
  41:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  42:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  43:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* Includes ------------------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #include "stm32g4xx_hal.h"
  45:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  46:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @addtogroup STM32G4xx_HAL_Driver
  47:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
  48:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  49:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  50:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @defgroup UARTEx UARTEx
  51:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief UART Extended HAL module driver
  52:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
  53:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  54:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  55:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #ifdef HAL_UART_MODULE_ENABLED
  56:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  57:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* Private typedef -----------------------------------------------------------*/
  58:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* Private define ------------------------------------------------------------*/
  59:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @defgroup UARTEX_Private_Constants UARTEx Private Constants
  60:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
  61:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  62:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* UART RX FIFO depth */
  63:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #define RX_FIFO_DEPTH 8U
  64:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  65:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* UART TX FIFO depth */
  66:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #define TX_FIFO_DEPTH 8U
  67:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
  68:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @}
  69:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  70:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  71:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* Private macros ------------------------------------------------------------*/
  72:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* Private variables ---------------------------------------------------------*/
  73:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* Private function prototypes -----------------------------------------------*/
  74:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @defgroup UARTEx_Private_Functions UARTEx Private Functions
  75:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
  76:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  77:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** static void UARTEx_Wakeup_AddressConfig(UART_HandleTypeDef *huart, UART_WakeUpTypeDef WakeUpSelecti
  78:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** static void UARTEx_SetNbDataToProcess(UART_HandleTypeDef *huart);
  79:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
  80:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @}
  81:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  82:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  83:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /* Exported functions --------------------------------------------------------*/
  84:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  85:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @defgroup UARTEx_Exported_Functions  UARTEx Exported Functions
  86:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
  87:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
  88:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
  89:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @defgroup UARTEx_Exported_Functions_Group1 Initialization and de-initialization functions
  90:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief    Extended Initialization and Configuration Functions
  91:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
  92:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** @verbatim
  93:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** ===============================================================================
  94:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****             ##### Initialization and Configuration functions #####
  95:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****  ===============================================================================
  96:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     [..]
  97:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     This subsection provides a set of functions allowing to initialize the USARTx or the UARTy
  98:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     in asynchronous mode.
  99:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****       (+) For the asynchronous mode the parameters below can be configured:
 100:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) Baud Rate
 101:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) Word Length
 102:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) Stop Bit
 103:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) Parity: If the parity is enabled, then the MSB bit of the data written
 104:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****              in the data register is transmitted but is changed by the parity bit.
 105:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) Hardware flow control
 106:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) Receiver/transmitter modes
 107:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) Over Sampling Method
 108:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) One-Bit Sampling Method
 109:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****       (+) For the asynchronous mode, the following advanced features can be configured as well:
 110:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) TX and/or RX pin level inversion
 111:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) data logical level inversion
 112:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) RX and TX pins swap
 113:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) RX overrun detection disabling
 114:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) DMA disabling on RX error
 115:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) MSB first on communication line
 116:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (++) auto Baud rate detection
 117:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     [..]
 118:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     The HAL_RS485Ex_Init() API follows the UART RS485 mode configuration
 119:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      procedures (details for the procedures are available in reference manual).
 120:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 121:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** @endverbatim
 122:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 123:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   Depending on the frame length defined by the M1 and M0 bits (7-bit,
 124:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   8-bit or 9-bit), the possible UART formats are listed in the
 125:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   following table.
 126:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 127:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     Table 1. UART frame format.
 128:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     +-----------------------------------------------------------------------+
 129:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |  M1 bit |  M0 bit |  PCE bit  |             UART frame                |
 130:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |---------|---------|-----------|---------------------------------------|
 131:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |    0    |    0    |    0      |    | SB |    8 bit data   | STB |     |
 132:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |---------|---------|-----------|---------------------------------------|
 133:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |    0    |    0    |    1      |    | SB | 7 bit data | PB | STB |     |
 134:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |---------|---------|-----------|---------------------------------------|
 135:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |    0    |    1    |    0      |    | SB |    9 bit data   | STB |     |
 136:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |---------|---------|-----------|---------------------------------------|
 137:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |    0    |    1    |    1      |    | SB | 8 bit data | PB | STB |     |
 138:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |---------|---------|-----------|---------------------------------------|
 139:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |    1    |    0    |    0      |    | SB |    7 bit data   | STB |     |
 140:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |---------|---------|-----------|---------------------------------------|
 141:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     |    1    |    0    |    1      |    | SB | 6 bit data | PB | STB |     |
 142:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     +-----------------------------------------------------------------------+
 143:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 144:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
 145:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 146:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 147:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 148:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief Initialize the RS485 Driver enable feature according to the specified
 149:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *         parameters in the UART_InitTypeDef and creates the associated handle.
 150:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart            UART handle.
 151:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param Polarity         Select the driver enable polarity.
 152:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          This parameter can be one of the following values:
 153:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          @arg @ref UART_DE_POLARITY_HIGH DE signal is active high
 154:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          @arg @ref UART_DE_POLARITY_LOW  DE signal is active low
 155:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param AssertionTime    Driver Enable assertion time:
 156:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       5-bit value defining the time between the activation of the DE (Driver Enable)
 157:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       signal and the beginning of the start bit. It is expressed in sample time
 158:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       units (1/8 or 1/16 bit time, depending on the oversampling rate)
 159:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param DeassertionTime  Driver Enable deassertion time:
 160:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       5-bit value defining the time between the end of the last stop bit, in a
 161:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       transmitted message, and the de-activation of the DE (Driver Enable) signal.
 162:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       It is expressed in sample time units (1/8 or 1/16 bit time, depending on the
 163:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       oversampling rate).
 164:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 165:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 166:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_RS485Ex_Init(UART_HandleTypeDef *huart, uint32_t Polarity, uint32_t Assertion
 167:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****                                    uint32_t DeassertionTime)
 168:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 169:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t temp;
 170:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 171:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the UART handle allocation */
 172:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (huart == NULL)
 173:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 174:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     return HAL_ERROR;
 175:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 176:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the Driver Enable UART instance */
 177:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_DRIVER_ENABLE_INSTANCE(huart->Instance));
 178:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 179:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the Driver Enable polarity */
 180:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_DE_POLARITY(Polarity));
 181:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 182:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the Driver Enable assertion time */
 183:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_ASSERTIONTIME(AssertionTime));
 184:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 185:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the Driver Enable deassertion time */
 186:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_DEASSERTIONTIME(DeassertionTime));
 187:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 188:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (huart->gState == HAL_UART_STATE_RESET)
 189:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 190:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     /* Allocate lock resource and initialize it */
 191:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->Lock = HAL_UNLOCKED;
 192:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 193:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
 194:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     UART_InitCallbacksToDefault(huart);
 195:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 196:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     if (huart->MspInitCallback == NULL)
 197:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     {
 198:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****       huart->MspInitCallback = HAL_UART_MspInit;
 199:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     }
 200:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 201:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     /* Init the low level hardware */
 202:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->MspInitCallback(huart);
 203:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #else
 204:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     /* Init the low level hardware : GPIO, CLOCK, CORTEX */
 205:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     HAL_UART_MspInit(huart);
 206:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 207:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 208:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 209:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_BUSY;
 210:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 211:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Disable the Peripheral */
 212:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_DISABLE(huart);
 213:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 214:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set the UART Communication parameters */
 215:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 216:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 217:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     return HAL_ERROR;
 218:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 219:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 220:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 221:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 222:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     UART_AdvFeatureConfig(huart);
 223:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 224:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 225:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Enable the Driver Enable mode by setting the DEM bit in the CR3 register */
 226:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   SET_BIT(huart->Instance->CR3, USART_CR3_DEM);
 227:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 228:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set the Driver Enable polarity */
 229:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR3, USART_CR3_DEP, Polarity);
 230:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 231:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set the Driver Enable assertion and deassertion times */
 232:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   temp = (AssertionTime << UART_CR1_DEAT_ADDRESS_LSB_POS);
 233:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   temp |= (DeassertionTime << UART_CR1_DEDT_ADDRESS_LSB_POS);
 234:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR1, (USART_CR1_DEDT | USART_CR1_DEAT), temp);
 235:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 236:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Enable the Peripheral */
 237:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_ENABLE(huart);
 238:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 239:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 240:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return (UART_CheckIdleState(huart));
 241:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 242:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 243:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 244:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @}
 245:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 246:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 247:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @defgroup UARTEx_Exported_Functions_Group2 IO operation functions
 248:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *  @brief Extended functions
 249:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
 250:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** @verbatim
 251:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****  ===============================================================================
 252:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****                       ##### IO operation functions #####
 253:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****  ===============================================================================
 254:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     This subsection provides a set of Wakeup and FIFO mode related callback functions.
 255:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 256:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     (#) Wakeup from Stop mode Callback:
 257:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (+) HAL_UARTEx_WakeupCallback()
 258:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 259:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     (#) TX/RX Fifos Callbacks:
 260:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (+) HAL_UARTEx_RxFifoFullCallback()
 261:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****         (+) HAL_UARTEx_TxFifoEmptyCallback()
 262:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 263:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** @endverbatim
 264:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
 265:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 266:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 267:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 268:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief UART wakeup from Stop mode callback.
 269:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart UART handle.
 270:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval None
 271:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 272:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** __weak void HAL_UARTEx_WakeupCallback(UART_HandleTypeDef *huart)
 273:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 274:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Prevent unused argument(s) compilation warning */
 275:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   UNUSED(huart);
 276:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 277:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 278:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****             the HAL_UARTEx_WakeupCallback can be implemented in the user file.
 279:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****    */
 280:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 281:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 282:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 283:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief  UART RX Fifo full callback.
 284:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param  huart UART handle.
 285:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval None
 286:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 287:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** __weak void HAL_UARTEx_RxFifoFullCallback(UART_HandleTypeDef *huart)
 288:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 289:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Prevent unused argument(s) compilation warning */
 290:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   UNUSED(huart);
 291:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 292:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 293:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****             the HAL_UARTEx_RxFifoFullCallback can be implemented in the user file.
 294:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****    */
 295:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 296:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 297:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 298:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief  UART TX Fifo empty callback.
 299:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param  huart UART handle.
 300:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval None
 301:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 302:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** __weak void HAL_UARTEx_TxFifoEmptyCallback(UART_HandleTypeDef *huart)
 303:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 304:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Prevent unused argument(s) compilation warning */
 305:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   UNUSED(huart);
 306:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 307:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 308:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****             the HAL_UARTEx_TxFifoEmptyCallback can be implemented in the user file.
 309:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****    */
 310:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 311:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 312:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 313:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @}
 314:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 315:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 316:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @defgroup UARTEx_Exported_Functions_Group3 Peripheral Control functions
 317:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief    Extended Peripheral Control functions
 318:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *
 319:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** @verbatim
 320:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****  ===============================================================================
 321:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****                       ##### Peripheral Control functions #####
 322:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****  ===============================================================================
 323:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     [..] This section provides the following functions:
 324:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_MultiProcessorEx_AddressLength_Set() API optionally sets the UART node address
 325:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****          detection length to more than 4 bits for multiprocessor address mark wake up.
 326:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_UARTEx_StopModeWakeUpSourceConfig() API defines the wake-up from stop mode
 327:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****          trigger: address match, Start Bit detection or RXNE bit status.
 328:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_UARTEx_EnableStopMode() API enables the UART to wake up the MCU from stop mode
 329:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_UARTEx_DisableStopMode() API disables the above functionality
 330:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_UARTEx_EnableFifoMode() API enables the FIFO mode
 331:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_UARTEx_DisableFifoMode() API disables the FIFO mode
 332:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_UARTEx_SetTxFifoThreshold() API sets the TX FIFO threshold
 333:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****      (+) HAL_UARTEx_SetRxFifoThreshold() API sets the RX FIFO threshold
 334:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 335:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** @endverbatim
 336:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
 337:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 338:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 339:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 340:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 341:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 342:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 343:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief By default in multiprocessor mode, when the wake up method is set
 344:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *        to address mark, the UART handles only 4-bit long addresses detection;
 345:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *        this API allows to enable longer addresses detection (6-, 7- or 8-bit
 346:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *        long).
 347:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @note  Addresses detection lengths are: 6-bit address detection in 7-bit data mode,
 348:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *        7-bit address detection in 8-bit data mode, 8-bit address detection in 9-bit data mode.
 349:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart         UART handle.
 350:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param AddressLength This parameter can be one of the following values:
 351:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          @arg @ref UART_ADDRESS_DETECT_4B 4-bit long address
 352:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          @arg @ref UART_ADDRESS_DETECT_7B 6-, 7- or 8-bit long address
 353:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 354:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 355:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_MultiProcessorEx_AddressLength_Set(UART_HandleTypeDef *huart, uint32_t Addres
 356:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 357:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the UART handle allocation */
 358:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (huart == NULL)
 359:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 360:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     return HAL_ERROR;
 361:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 362:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 363:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the address length parameter */
 364:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_ADDRESSLENGTH_DETECT(AddressLength));
 365:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 366:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_BUSY;
 367:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 368:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Disable the Peripheral */
 369:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_DISABLE(huart);
 370:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 371:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set the address length */
 372:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_ADDM7, AddressLength);
 373:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 374:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Enable the Peripheral */
 375:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_ENABLE(huart);
 376:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 377:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* TEACK and/or REACK to check before moving huart->gState to Ready */
 378:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return (UART_CheckIdleState(huart));
 379:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 380:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 381:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 382:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief Set Wakeup from Stop mode interrupt flag selection.
 383:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @note It is the application responsibility to enable the interrupt used as
 384:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       usart_wkup interrupt source before entering low-power mode.
 385:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart           UART handle.
 386:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param WakeUpSelection Address match, Start Bit detection or RXNE/RXFNE bit status.
 387:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          This parameter can be one of the following values:
 388:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          @arg @ref UART_WAKEUP_ON_ADDRESS
 389:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          @arg @ref UART_WAKEUP_ON_STARTBIT
 390:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          @arg @ref UART_WAKEUP_ON_READDATA_NONEMPTY
 391:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 392:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 393:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_UARTEx_StopModeWakeUpSourceConfig(UART_HandleTypeDef *huart, UART_WakeUpTypeD
 394:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 395:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 396:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tickstart;
 397:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 398:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* check the wake-up from stop mode UART instance */
 399:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_WAKEUP_FROMSTOP_INSTANCE(huart->Instance));
 400:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* check the wake-up selection parameter */
 401:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_WAKEUP_SELECTION(WakeUpSelection.WakeUpEvent));
 402:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 403:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_LOCK(huart);
 405:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 406:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_BUSY;
 407:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 408:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Disable the Peripheral */
 409:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_DISABLE(huart);
 410:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 411:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set the wake-up selection scheme */
 412:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR3, USART_CR3_WUS, WakeUpSelection.WakeUpEvent);
 413:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 414:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (WakeUpSelection.WakeUpEvent == UART_WAKEUP_ON_ADDRESS)
 415:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 416:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     UARTEx_Wakeup_AddressConfig(huart, WakeUpSelection);
 417:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 418:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 419:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Enable the Peripheral */
 420:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_ENABLE(huart);
 421:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 422:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Init tickstart for timeout managment*/
 423:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   tickstart = HAL_GetTick();
 424:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 425:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Wait until REACK flag is set */
 426:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (UART_WaitOnFlagUntilTimeout(huart, USART_ISR_REACK, RESET, tickstart, HAL_UART_TIMEOUT_VALUE)
 427:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 428:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     status = HAL_TIMEOUT;
 429:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 430:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   else
 431:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 432:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     /* Initialize the UART State */
 433:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->gState = HAL_UART_STATE_READY;
 434:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 435:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 436:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Unlocked */
 437:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UNLOCK(huart);
 438:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 439:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return status;
 440:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 441:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 442:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 443:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief Enable UART Stop Mode.
 444:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @note The UART is able to wake up the MCU from Stop 1 mode as long as UART clock is HSI or LSE.
 445:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart UART handle.
 446:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 447:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 448:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_UARTEx_EnableStopMode(UART_HandleTypeDef *huart)
 449:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 450:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 451:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_LOCK(huart);
 452:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 453:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set UESM bit */
 454:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   SET_BIT(huart->Instance->CR1, USART_CR1_UESM);
 455:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 456:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Unlocked */
 457:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UNLOCK(huart);
 458:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 459:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return HAL_OK;
 460:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 461:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 462:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 463:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief Disable UART Stop Mode.
 464:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart UART handle.
 465:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 466:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 467:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_UARTEx_DisableStopMode(UART_HandleTypeDef *huart)
 468:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 469:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 470:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_LOCK(huart);
 471:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 472:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Clear UESM bit */
 473:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   CLEAR_BIT(huart->Instance->CR1, USART_CR1_UESM);
 474:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 475:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Unlocked */
 476:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UNLOCK(huart);
 477:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 478:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return HAL_OK;
 479:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 480:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 481:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 482:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief  Enable the FIFO mode.
 483:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart      UART handle.
 484:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 485:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 486:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_UARTEx_EnableFifoMode(UART_HandleTypeDef *huart)
 487:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 488:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 489:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 490:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check parameters */
 491:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_FIFO_INSTANCE(huart->Instance));
 492:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 493:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 494:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_LOCK(huart);
 495:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 496:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_BUSY;
 497:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 498:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Save actual UART configuration */
 499:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   tmpcr1 = READ_REG(huart->Instance->CR1);
 500:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 501:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Disable UART */
 502:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_DISABLE(huart);
 503:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 504:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Enable FIFO mode */
 505:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   SET_BIT(tmpcr1, USART_CR1_FIFOEN);
 506:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->FifoMode = UART_FIFOMODE_ENABLE;
 507:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 508:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Restore UART configuration */
 509:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   WRITE_REG(huart->Instance->CR1, tmpcr1);
 510:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 511:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Determine the number of data to process during RX/TX ISR execution */
 512:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   UARTEx_SetNbDataToProcess(huart);
 513:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 514:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_READY;
 515:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 516:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Unlocked */
 517:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UNLOCK(huart);
 518:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 519:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return HAL_OK;
 520:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 521:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 522:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 523:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief  Disable the FIFO mode.
 524:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart      UART handle.
 525:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 526:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 527:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_UARTEx_DisableFifoMode(UART_HandleTypeDef *huart)
 528:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 529:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 530:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 531:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check parameters */
 532:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_FIFO_INSTANCE(huart->Instance));
 533:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 534:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 535:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_LOCK(huart);
 536:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 537:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_BUSY;
 538:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 539:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Save actual UART configuration */
 540:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   tmpcr1 = READ_REG(huart->Instance->CR1);
 541:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 542:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Disable UART */
 543:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_DISABLE(huart);
 544:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 545:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Enable FIFO mode */
 546:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   CLEAR_BIT(tmpcr1, USART_CR1_FIFOEN);
 547:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->FifoMode = UART_FIFOMODE_DISABLE;
 548:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 549:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Restore UART configuration */
 550:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   WRITE_REG(huart->Instance->CR1, tmpcr1);
 551:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 552:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_READY;
 553:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 554:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Unlocked */
 555:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UNLOCK(huart);
 556:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 557:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return HAL_OK;
 558:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 559:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 560:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 561:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief  Set the TXFIFO threshold.
 562:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart      UART handle.
 563:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param Threshold  TX FIFO threshold value
 564:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          This parameter can be one of the following values:
 565:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_TXFIFO_THRESHOLD_1_8
 566:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_TXFIFO_THRESHOLD_1_4
 567:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_TXFIFO_THRESHOLD_1_2
 568:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_TXFIFO_THRESHOLD_3_4
 569:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_TXFIFO_THRESHOLD_7_8
 570:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_TXFIFO_THRESHOLD_8_8
 571:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 572:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 573:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_UARTEx_SetTxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold)
 574:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 575:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 576:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 577:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check parameters */
 578:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_FIFO_INSTANCE(huart->Instance));
 579:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_TXFIFO_THRESHOLD(Threshold));
 580:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 581:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 582:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_LOCK(huart);
 583:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 584:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_BUSY;
 585:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 586:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Save actual UART configuration */
 587:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   tmpcr1 = READ_REG(huart->Instance->CR1);
 588:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 589:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Disable UART */
 590:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_DISABLE(huart);
 591:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 592:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Update TX threshold configuration */
 593:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR3, USART_CR3_TXFTCFG, Threshold);
 594:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 595:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Determine the number of data to process during RX/TX ISR execution */
 596:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   UARTEx_SetNbDataToProcess(huart);
 597:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 598:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Restore UART configuration */
 599:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   WRITE_REG(huart->Instance->CR1, tmpcr1);
 600:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 601:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_READY;
 602:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 603:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Unlocked */
 604:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UNLOCK(huart);
 605:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 606:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return HAL_OK;
 607:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 608:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 609:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 610:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief  Set the RXFIFO threshold.
 611:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart      UART handle.
 612:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param Threshold  RX FIFO threshold value
 613:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *          This parameter can be one of the following values:
 614:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_RXFIFO_THRESHOLD_1_8
 615:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_RXFIFO_THRESHOLD_1_4
 616:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_RXFIFO_THRESHOLD_1_2
 617:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_RXFIFO_THRESHOLD_3_4
 618:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_RXFIFO_THRESHOLD_7_8
 619:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *            @arg @ref UART_RXFIFO_THRESHOLD_8_8
 620:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval HAL status
 621:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 622:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** HAL_StatusTypeDef HAL_UARTEx_SetRxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold)
 623:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 624:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 625:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 626:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the parameters */
 627:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_FIFO_INSTANCE(huart->Instance));
 628:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_RXFIFO_THRESHOLD(Threshold));
 629:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 630:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 631:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_LOCK(huart);
 632:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 633:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_BUSY;
 634:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 635:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Save actual UART configuration */
 636:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   tmpcr1 = READ_REG(huart->Instance->CR1);
 637:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 638:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Disable UART */
 639:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UART_DISABLE(huart);
 640:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 641:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Update RX threshold configuration */
 642:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR3, USART_CR3_RXFTCFG, Threshold);
 643:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 644:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Determine the number of data to process during RX/TX ISR execution */
 645:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   UARTEx_SetNbDataToProcess(huart);
 646:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 647:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Restore UART configuration */
 648:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   WRITE_REG(huart->Instance->CR1, tmpcr1);
 649:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 650:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->gState = HAL_UART_STATE_READY;
 651:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 652:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Unlocked */
 653:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   __HAL_UNLOCK(huart);
 654:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 655:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   return HAL_OK;
 656:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 657:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 658:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 659:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @}
 660:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 661:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 662:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 663:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @}
 664:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 665:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 666:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /** @addtogroup UARTEx_Private_Functions
 667:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @{
 668:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 669:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 670:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 671:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief Initialize the UART wake-up from stop mode parameters when triggered by address detectio
 672:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart           UART handle.
 673:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param WakeUpSelection UART wake up from stop mode parameters.
 674:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval None
 675:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 676:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** static void UARTEx_Wakeup_AddressConfig(UART_HandleTypeDef *huart, UART_WakeUpTypeDef WakeUpSelecti
 677:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 678:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_ADDRESSLENGTH_DETECT(WakeUpSelection.AddressLength));
 679:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 680:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set the USART address length */
 681:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_ADDM7, WakeUpSelection.AddressLength);
 682:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 683:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Set the USART address node */
 684:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_ADD, ((uint32_t)WakeUpSelection.Address << UART_CR2_AD
 685:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 686:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 687:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** /**
 688:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @brief Calculate the number of data to process in RX/TX ISR.
 689:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @note The RX FIFO depth and the TX FIFO depth is extracted from
 690:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   *       the UART configuration registers.
 691:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @param huart UART handle.
 692:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   * @retval None
 693:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   */
 694:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** static void UARTEx_SetNbDataToProcess(UART_HandleTypeDef *huart)
 695:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
  29              		.loc 1 695 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 16
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
 696:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint8_t rx_fifo_depth;
  34              		.loc 1 696 3 view .LVU1
 697:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint8_t tx_fifo_depth;
  35              		.loc 1 697 3 view .LVU2
 698:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint8_t rx_fifo_threshold;
  36              		.loc 1 698 3 view .LVU3
 699:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint8_t tx_fifo_threshold;
  37              		.loc 1 699 3 view .LVU4
 700:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint8_t numerator[] = {1U, 1U, 1U, 3U, 7U, 1U, 0U, 0U};
  38              		.loc 1 700 3 view .LVU5
  39              		.loc 1 700 11 is_stmt 0 view .LVU6
  40 0000 184A     		ldr	r2, .L4
 695:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint8_t rx_fifo_depth;
  41              		.loc 1 695 1 view .LVU7
  42 0002 84B0     		sub	sp, sp, #16
  43              		.cfi_def_cfa_offset 16
  44              		.loc 1 700 11 view .LVU8
  45 0004 40F20713 		movw	r3, #263
  46 0008 CDE90023 		strd	r2, r3, [sp]
 701:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint8_t denominator[] = {8U, 4U, 2U, 4U, 8U, 1U, 1U, 1U};
  47              		.loc 1 701 3 is_stmt 1 view .LVU9
  48              		.loc 1 701 11 is_stmt 0 view .LVU10
  49 000c 164B     		ldr	r3, .L4+4
  50 000e 0293     		str	r3, [sp, #8]
  51 0010 A3F10323 		sub	r3, r3, #50332416
  52 0014 A3F58033 		sub	r3, r3, #65536
  53 0018 0393     		str	r3, [sp, #12]
 702:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 703:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   if (huart->FifoMode == UART_FIFOMODE_DISABLE)
  54              		.loc 1 703 3 is_stmt 1 view .LVU11
  55              		.loc 1 703 6 is_stmt 0 view .LVU12
  56 001a 436E     		ldr	r3, [r0, #100]
  57 001c 23B9     		cbnz	r3, .L2
 704:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 705:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbTxDataToProcess = 1U;
  58              		.loc 1 705 5 is_stmt 1 view .LVU13
 706:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = 1U;
  59              		.loc 1 706 5 view .LVU14
  60              		.loc 1 706 30 is_stmt 0 view .LVU15
  61 001e 4FF00113 		mov	r3, #65537
  62 0022 8366     		str	r3, [r0, #104]
  63              	.L1:
 707:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 708:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   else
 709:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 710:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     rx_fifo_depth = RX_FIFO_DEPTH;
 711:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     tx_fifo_depth = TX_FIFO_DEPTH;
 712:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     rx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_RXFTCFG) >> USART_CR3_RX
 713:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     tx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_TXFTCFG) >> USART_CR3_TX
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbTxDataToProcess = ((uint16_t)tx_fifo_depth * numerator[tx_fifo_threshold]) / (uint16_t
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
 716:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 717:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
  64              		.loc 1 717 1 view .LVU16
  65 0024 04B0     		add	sp, sp, #16
  66              		.cfi_remember_state
  67              		.cfi_def_cfa_offset 0
  68              		@ sp needed
  69 0026 7047     		bx	lr
  70              	.L2:
  71              		.cfi_restore_state
 710:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     tx_fifo_depth = TX_FIFO_DEPTH;
  72              		.loc 1 710 5 is_stmt 1 view .LVU17
  73              	.LVL1:
 711:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     rx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_RXFTCFG) >> USART_CR3_RX
  74              		.loc 1 711 5 view .LVU18
 712:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     tx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_TXFTCFG) >> USART_CR3_TX
  75              		.loc 1 712 5 view .LVU19
 712:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     tx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_TXFTCFG) >> USART_CR3_TX
  76              		.loc 1 712 35 is_stmt 0 view .LVU20
  77 0028 0268     		ldr	r2, [r0]
  78 002a 9368     		ldr	r3, [r2, #8]
  79              	.LVL2:
 713:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbTxDataToProcess = ((uint16_t)tx_fifo_depth * numerator[tx_fifo_threshold]) / (uint16_t
  80              		.loc 1 713 5 is_stmt 1 view .LVU21
 713:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbTxDataToProcess = ((uint16_t)tx_fifo_depth * numerator[tx_fifo_threshold]) / (uint16_t
  81              		.loc 1 713 35 is_stmt 0 view .LVU22
  82 002c 9168     		ldr	r1, [r2, #8]
  83              	.LVL3:
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
  84              		.loc 1 714 5 is_stmt 1 view .LVU23
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
  85              		.loc 1 714 68 is_stmt 0 view .LVU24
  86 002e 04AA     		add	r2, sp, #16
  87 0030 02EB5171 		add	r1, r2, r1, lsr #29
  88              	.LVL4:
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
  89              		.loc 1 715 68 view .LVU25
  90 0034 C3F34263 		ubfx	r3, r3, #25, #3
  91              	.LVL5:
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
  92              		.loc 1 714 57 view .LVU26
  93 0038 11F8102C 		ldrb	r2, [r1, #-16]	@ zero_extendqisi2
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
  94              		.loc 1 714 91 view .LVU27
  95 003c 11F8081C 		ldrb	r1, [r1, #-8]	@ zero_extendqisi2
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
  96              		.loc 1 714 57 view .LVU28
  97 0040 D200     		lsls	r2, r2, #3
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
  98              		.loc 1 714 89 view .LVU29
  99 0042 B2FBF1F2 		udiv	r2, r2, r1
 714:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****     huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t
 100              		.loc 1 714 30 view .LVU30
 101 0046 A0F86A20 		strh	r2, [r0, #106]	@ movhi
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 102              		.loc 1 715 5 is_stmt 1 view .LVU31
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 103              		.loc 1 715 68 is_stmt 0 view .LVU32
 104 004a 04AA     		add	r2, sp, #16
 105 004c 1344     		add	r3, r3, r2
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 106              		.loc 1 715 57 view .LVU33
 107 004e 13F8102C 		ldrb	r2, [r3, #-16]	@ zero_extendqisi2
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 108              		.loc 1 715 91 view .LVU34
 109 0052 13F8083C 		ldrb	r3, [r3, #-8]	@ zero_extendqisi2
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 110              		.loc 1 715 57 view .LVU35
 111 0056 D200     		lsls	r2, r2, #3
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 112              		.loc 1 715 89 view .LVU36
 113 0058 B2FBF3F3 		udiv	r3, r2, r3
 715:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 114              		.loc 1 715 30 view .LVU37
 115 005c A0F86830 		strh	r3, [r0, #104]	@ movhi
 116              		.loc 1 717 1 view .LVU38
 117 0060 E0E7     		b	.L1
 118              	.L5:
 119 0062 00BF     		.align	2
 120              	.L4:
 121 0064 01010103 		.word	50397441
 122 0068 08040204 		.word	67240968
 123              		.cfi_endproc
 124              	.LFE338:
 126              		.section	.text.HAL_RS485Ex_Init,"ax",%progbits
 127              		.align	1
 128              		.global	HAL_RS485Ex_Init
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 134              	HAL_RS485Ex_Init:
 135              	.LVL6:
 136              	.LFB325:
 168:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t temp;
 137              		.loc 1 168 1 is_stmt 1 view -0
 138              		.cfi_startproc
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 169:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 141              		.loc 1 169 3 view .LVU40
 172:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 142              		.loc 1 172 3 view .LVU41
 168:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t temp;
 143              		.loc 1 168 1 is_stmt 0 view .LVU42
 144 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 145              		.cfi_def_cfa_offset 24
 146              		.cfi_offset 3, -24
 147              		.cfi_offset 4, -20
 148              		.cfi_offset 5, -16
 149              		.cfi_offset 6, -12
 150              		.cfi_offset 7, -8
 151              		.cfi_offset 14, -4
 168:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t temp;
 152              		.loc 1 168 1 view .LVU43
 153 0002 0F46     		mov	r7, r1
 154 0004 1646     		mov	r6, r2
 155 0006 1D46     		mov	r5, r3
 172:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 156              		.loc 1 172 6 view .LVU44
 157 0008 0446     		mov	r4, r0
 158 000a 0028     		cmp	r0, #0
 159 000c 35D0     		beq	.L8
 177:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 160              		.loc 1 177 3 is_stmt 1 view .LVU45
 180:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 161              		.loc 1 180 3 view .LVU46
 183:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 162              		.loc 1 183 3 view .LVU47
 186:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 163              		.loc 1 186 3 view .LVU48
 188:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 164              		.loc 1 188 3 view .LVU49
 188:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 165              		.loc 1 188 12 is_stmt 0 view .LVU50
 166 000e D0F88030 		ldr	r3, [r0, #128]
 167              	.LVL7:
 188:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 168              		.loc 1 188 6 view .LVU51
 169 0012 1BB9     		cbnz	r3, .L9
 191:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 170              		.loc 1 191 5 is_stmt 1 view .LVU52
 191:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 171              		.loc 1 191 17 is_stmt 0 view .LVU53
 172 0014 80F87C30 		strb	r3, [r0, #124]
 205:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 173              		.loc 1 205 5 is_stmt 1 view .LVU54
 174 0018 FFF7FEFF 		bl	HAL_UART_MspInit
 175              	.LVL8:
 176              	.L9:
 209:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 177              		.loc 1 209 3 view .LVU55
 212:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 178              		.loc 1 212 3 is_stmt 0 view .LVU56
 179 001c 2268     		ldr	r2, [r4]
 209:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 180              		.loc 1 209 17 view .LVU57
 181 001e 2423     		movs	r3, #36
 182 0020 C4F88030 		str	r3, [r4, #128]
 212:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 183              		.loc 1 212 3 is_stmt 1 view .LVU58
 184 0024 1368     		ldr	r3, [r2]
 185 0026 23F00103 		bic	r3, r3, #1
 186 002a 1360     		str	r3, [r2]
 215:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 187              		.loc 1 215 3 view .LVU59
 215:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 188              		.loc 1 215 7 is_stmt 0 view .LVU60
 189 002c 2046     		mov	r0, r4
 190 002e FFF7FEFF 		bl	UART_SetConfig
 191              	.LVL9:
 215:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 192              		.loc 1 215 6 view .LVU61
 193 0032 0128     		cmp	r0, #1
 194 0034 21D0     		beq	.L8
 220:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 195              		.loc 1 220 3 is_stmt 1 view .LVU62
 220:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 196              		.loc 1 220 6 is_stmt 0 view .LVU63
 197 0036 A36A     		ldr	r3, [r4, #40]
 198 0038 13B1     		cbz	r3, .L11
 222:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 199              		.loc 1 222 5 is_stmt 1 view .LVU64
 200 003a 2046     		mov	r0, r4
 201 003c FFF7FEFF 		bl	UART_AdvFeatureConfig
 202              	.LVL10:
 203              	.L11:
 226:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 204              		.loc 1 226 3 view .LVU65
 205 0040 2068     		ldr	r0, [r4]
 206 0042 8368     		ldr	r3, [r0, #8]
 207 0044 43F48043 		orr	r3, r3, #16384
 208 0048 8360     		str	r3, [r0, #8]
 229:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 209              		.loc 1 229 3 view .LVU66
 210 004a 8168     		ldr	r1, [r0, #8]
 211 004c 21F40041 		bic	r1, r1, #32768
 212 0050 3943     		orrs	r1, r1, r7
 213 0052 8160     		str	r1, [r0, #8]
 232:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   temp |= (DeassertionTime << UART_CR1_DEDT_ADDRESS_LSB_POS);
 214              		.loc 1 232 3 view .LVU67
 215              	.LVL11:
 233:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR1, (USART_CR1_DEDT | USART_CR1_DEAT), temp);
 216              		.loc 1 233 3 view .LVU68
 234:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 217              		.loc 1 234 3 view .LVU69
 218 0054 0368     		ldr	r3, [r0]
 233:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR1, (USART_CR1_DEDT | USART_CR1_DEAT), temp);
 219              		.loc 1 233 28 is_stmt 0 view .LVU70
 220 0056 2D04     		lsls	r5, r5, #16
 221              	.LVL12:
 234:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 222              		.loc 1 234 3 view .LVU71
 223 0058 23F07F73 		bic	r3, r3, #66846720
 233:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   MODIFY_REG(huart->Instance->CR1, (USART_CR1_DEDT | USART_CR1_DEAT), temp);
 224              		.loc 1 233 8 view .LVU72
 225 005c 45EA4655 		orr	r5, r5, r6, lsl #21
 226              	.LVL13:
 234:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 227              		.loc 1 234 3 view .LVU73
 228 0060 23F44033 		bic	r3, r3, #196608
 229 0064 1D43     		orrs	r5, r5, r3
 230              	.LVL14:
 234:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 231              		.loc 1 234 3 view .LVU74
 232 0066 0560     		str	r5, [r0]
 237:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 233              		.loc 1 237 3 is_stmt 1 view .LVU75
 234 0068 0368     		ldr	r3, [r0]
 235 006a 43F00103 		orr	r3, r3, #1
 236 006e 0360     		str	r3, [r0]
 240:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 237              		.loc 1 240 3 view .LVU76
 240:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 238              		.loc 1 240 11 is_stmt 0 view .LVU77
 239 0070 2046     		mov	r0, r4
 241:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 240              		.loc 1 241 1 view .LVU78
 241 0072 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 242              		.cfi_remember_state
 243              		.cfi_restore 14
 244              		.cfi_restore 7
 245              		.cfi_restore 6
 246              		.cfi_restore 5
 247              		.cfi_restore 4
 248              		.cfi_restore 3
 249              		.cfi_def_cfa_offset 0
 250              	.LVL15:
 240:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 251              		.loc 1 240 11 view .LVU79
 252 0076 FFF7FEBF 		b	UART_CheckIdleState
 253              	.LVL16:
 254              	.L8:
 255              		.cfi_restore_state
 241:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 256              		.loc 1 241 1 view .LVU80
 257 007a 0120     		movs	r0, #1
 258 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 241:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 259              		.loc 1 241 1 view .LVU81
 260              		.cfi_endproc
 261              	.LFE325:
 263              		.section	.text.HAL_UARTEx_WakeupCallback,"ax",%progbits
 264              		.align	1
 265              		.weak	HAL_UARTEx_WakeupCallback
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu fpv4-sp-d16
 271              	HAL_UARTEx_WakeupCallback:
 272              	.LVL17:
 273              	.LFB326:
 273:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Prevent unused argument(s) compilation warning */
 274              		.loc 1 273 1 is_stmt 1 view -0
 275              		.cfi_startproc
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278              		@ link register save eliminated.
 275:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 279              		.loc 1 275 3 view .LVU83
 280:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 280              		.loc 1 280 1 is_stmt 0 view .LVU84
 281 0000 7047     		bx	lr
 282              		.cfi_endproc
 283              	.LFE326:
 285              		.section	.text.HAL_UARTEx_RxFifoFullCallback,"ax",%progbits
 286              		.align	1
 287              		.weak	HAL_UARTEx_RxFifoFullCallback
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv4-sp-d16
 293              	HAL_UARTEx_RxFifoFullCallback:
 294              	.LFB341:
 295              		.cfi_startproc
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299 0000 7047     		bx	lr
 300              		.cfi_endproc
 301              	.LFE341:
 303              		.section	.text.HAL_UARTEx_TxFifoEmptyCallback,"ax",%progbits
 304              		.align	1
 305              		.weak	HAL_UARTEx_TxFifoEmptyCallback
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 311              	HAL_UARTEx_TxFifoEmptyCallback:
 312              	.LFB343:
 313              		.cfi_startproc
 314              		@ args = 0, pretend = 0, frame = 0
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316              		@ link register save eliminated.
 317 0000 7047     		bx	lr
 318              		.cfi_endproc
 319              	.LFE343:
 321              		.section	.text.HAL_MultiProcessorEx_AddressLength_Set,"ax",%progbits
 322              		.align	1
 323              		.global	HAL_MultiProcessorEx_AddressLength_Set
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu fpv4-sp-d16
 329              	HAL_MultiProcessorEx_AddressLength_Set:
 330              	.LVL18:
 331              	.LFB329:
 356:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the UART handle allocation */
 332              		.loc 1 356 1 is_stmt 1 view -0
 333              		.cfi_startproc
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 358:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 337              		.loc 1 358 3 view .LVU86
 356:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Check the UART handle allocation */
 338              		.loc 1 356 1 is_stmt 0 view .LVU87
 339 0000 10B4     		push	{r4}
 340              		.cfi_def_cfa_offset 4
 341              		.cfi_offset 4, -4
 358:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 342              		.loc 1 358 6 view .LVU88
 343 0002 A0B1     		cbz	r0, .L22
 364:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 344              		.loc 1 364 3 is_stmt 1 view .LVU89
 366:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 345              		.loc 1 366 3 view .LVU90
 369:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 346              		.loc 1 369 3 is_stmt 0 view .LVU91
 347 0004 0368     		ldr	r3, [r0]
 366:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 348              		.loc 1 366 17 view .LVU92
 349 0006 2422     		movs	r2, #36
 350 0008 C0F88020 		str	r2, [r0, #128]
 369:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 351              		.loc 1 369 3 is_stmt 1 view .LVU93
 352 000c 1C68     		ldr	r4, [r3]
 353 000e 24F00104 		bic	r4, r4, #1
 354 0012 1C60     		str	r4, [r3]
 372:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 355              		.loc 1 372 3 view .LVU94
 356 0014 5A68     		ldr	r2, [r3, #4]
 379:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 357              		.loc 1 379 1 is_stmt 0 view .LVU95
 358 0016 5DF8044B 		ldr	r4, [sp], #4
 359              		.cfi_remember_state
 360              		.cfi_restore 4
 361              		.cfi_def_cfa_offset 0
 372:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 362              		.loc 1 372 3 view .LVU96
 363 001a 22F01002 		bic	r2, r2, #16
 364 001e 0A43     		orrs	r2, r2, r1
 365 0020 5A60     		str	r2, [r3, #4]
 375:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 366              		.loc 1 375 3 is_stmt 1 view .LVU97
 367 0022 1A68     		ldr	r2, [r3]
 368 0024 42F00102 		orr	r2, r2, #1
 369 0028 1A60     		str	r2, [r3]
 378:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 370              		.loc 1 378 3 view .LVU98
 378:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 371              		.loc 1 378 11 is_stmt 0 view .LVU99
 372 002a FFF7FEBF 		b	UART_CheckIdleState
 373              	.LVL19:
 374              	.L22:
 375              		.cfi_restore_state
 379:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 376              		.loc 1 379 1 view .LVU100
 377 002e 0120     		movs	r0, #1
 378              	.LVL20:
 379:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 379              		.loc 1 379 1 view .LVU101
 380 0030 5DF8044B 		ldr	r4, [sp], #4
 381              		.cfi_restore 4
 382              		.cfi_def_cfa_offset 0
 383 0034 7047     		bx	lr
 384              		.cfi_endproc
 385              	.LFE329:
 387              		.section	.text.HAL_UARTEx_StopModeWakeUpSourceConfig,"ax",%progbits
 388              		.align	1
 389              		.global	HAL_UARTEx_StopModeWakeUpSourceConfig
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu fpv4-sp-d16
 395              	HAL_UARTEx_StopModeWakeUpSourceConfig:
 396              	.LVL21:
 397              	.LFB330:
 394:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 398              		.loc 1 394 1 is_stmt 1 view -0
 399              		.cfi_startproc
 400              		@ args = 0, pretend = 0, frame = 8
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 394:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 402              		.loc 1 394 1 is_stmt 0 view .LVU103
 403 0000 1FB5     		push	{r0, r1, r2, r3, r4, lr}
 404              		.cfi_def_cfa_offset 24
 405              		.cfi_offset 4, -8
 406              		.cfi_offset 14, -4
 394:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 407              		.loc 1 394 1 view .LVU104
 408 0002 04AB     		add	r3, sp, #16
 409 0004 03E90600 		stmdb	r3, {r1, r2}
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 410              		.loc 1 404 3 view .LVU105
 411 0008 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 412 000c 0299     		ldr	r1, [sp, #8]
 413              	.LVL22:
 395:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tickstart;
 414              		.loc 1 395 3 is_stmt 1 view .LVU106
 396:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 415              		.loc 1 396 3 view .LVU107
 399:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* check the wake-up selection parameter */
 416              		.loc 1 399 3 view .LVU108
 401:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 417              		.loc 1 401 3 view .LVU109
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 418              		.loc 1 404 3 view .LVU110
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 419              		.loc 1 404 3 view .LVU111
 420 000e 012B     		cmp	r3, #1
 394:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 421              		.loc 1 394 1 is_stmt 0 view .LVU112
 422 0010 0446     		mov	r4, r0
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 423              		.loc 1 404 3 view .LVU113
 424 0012 3AD0     		beq	.L27
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 425              		.loc 1 404 3 is_stmt 1 discriminator 2 view .LVU114
 426 0014 0123     		movs	r3, #1
 427 0016 80F87C30 		strb	r3, [r0, #124]
 406:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 428              		.loc 1 406 3 discriminator 2 view .LVU115
 406:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 429              		.loc 1 406 17 is_stmt 0 discriminator 2 view .LVU116
 430 001a 2423     		movs	r3, #36
 431 001c C0F88030 		str	r3, [r0, #128]
 409:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 432              		.loc 1 409 3 is_stmt 1 discriminator 2 view .LVU117
 433 0020 0368     		ldr	r3, [r0]
 434 0022 1A68     		ldr	r2, [r3]
 435 0024 22F00102 		bic	r2, r2, #1
 436 0028 1A60     		str	r2, [r3]
 412:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 437              		.loc 1 412 3 discriminator 2 view .LVU118
 438 002a 9A68     		ldr	r2, [r3, #8]
 439 002c 22F44012 		bic	r2, r2, #3145728
 440 0030 0A43     		orrs	r2, r2, r1
 441 0032 9A60     		str	r2, [r3, #8]
 414:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 442              		.loc 1 414 3 discriminator 2 view .LVU119
 414:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 443              		.loc 1 414 6 is_stmt 0 discriminator 2 view .LVU120
 444 0034 71B9     		cbnz	r1, .L25
 416:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 445              		.loc 1 416 5 is_stmt 1 view .LVU121
 446              	.LBB4:
 447              	.LBB5:
 681:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 448              		.loc 1 681 3 is_stmt 0 view .LVU122
 449 0036 5968     		ldr	r1, [r3, #4]
 450              	.LVL23:
 681:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 451              		.loc 1 681 3 view .LVU123
 452 0038 BDF80C20 		ldrh	r2, [sp, #12]
 453              	.LBE5:
 454              	.LBE4:
 416:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 455              		.loc 1 416 5 view .LVU124
 456 003c 9DF80E00 		ldrb	r0, [sp, #14]	@ zero_extendqisi2
 457              	.LVL24:
 458              	.LBB7:
 459              	.LBI4:
 676:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** {
 460              		.loc 1 676 13 is_stmt 1 view .LVU125
 461              	.LBB6:
 678:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 462              		.loc 1 678 3 view .LVU126
 681:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 463              		.loc 1 681 3 view .LVU127
 464 0040 21F01001 		bic	r1, r1, #16
 465 0044 1143     		orrs	r1, r1, r2
 466 0046 5960     		str	r1, [r3, #4]
 684:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 467              		.loc 1 684 3 view .LVU128
 468 0048 5A68     		ldr	r2, [r3, #4]
 469 004a 22F07F42 		bic	r2, r2, #-16777216
 470 004e 42EA0062 		orr	r2, r2, r0, lsl #24
 471 0052 5A60     		str	r2, [r3, #4]
 472              	.LVL25:
 473              	.L25:
 684:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 474              		.loc 1 684 3 is_stmt 0 view .LVU129
 475              	.LBE6:
 476              	.LBE7:
 420:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 477              		.loc 1 420 3 is_stmt 1 view .LVU130
 478 0054 1A68     		ldr	r2, [r3]
 479 0056 42F00102 		orr	r2, r2, #1
 480 005a 1A60     		str	r2, [r3]
 423:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 481              		.loc 1 423 3 view .LVU131
 423:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 482              		.loc 1 423 15 is_stmt 0 view .LVU132
 483 005c FFF7FEFF 		bl	HAL_GetTick
 484              	.LVL26:
 426:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 485              		.loc 1 426 3 is_stmt 1 view .LVU133
 426:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 486              		.loc 1 426 7 is_stmt 0 view .LVU134
 487 0060 6FF07E43 		mvn	r3, #-33554432
 488 0064 0093     		str	r3, [sp]
 489 0066 0022     		movs	r2, #0
 490 0068 0346     		mov	r3, r0
 491 006a 4FF48001 		mov	r1, #4194304
 492 006e 2046     		mov	r0, r4
 493              	.LVL27:
 426:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 494              		.loc 1 426 7 view .LVU135
 495 0070 FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 496              	.LVL28:
 426:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   {
 497              		.loc 1 426 6 view .LVU136
 498 0074 38B9     		cbnz	r0, .L28
 433:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 499              		.loc 1 433 5 is_stmt 1 view .LVU137
 433:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 500              		.loc 1 433 19 is_stmt 0 view .LVU138
 501 0076 2023     		movs	r3, #32
 502 0078 C4F88030 		str	r3, [r4, #128]
 503              	.L26:
 504              	.LVL29:
 437:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 505              		.loc 1 437 3 is_stmt 1 view .LVU139
 437:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 506              		.loc 1 437 3 view .LVU140
 507 007c 0023     		movs	r3, #0
 508 007e 84F87C30 		strb	r3, [r4, #124]
 439:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 509              		.loc 1 439 3 view .LVU141
 510              	.LVL30:
 511              	.L24:
 440:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 512              		.loc 1 440 1 is_stmt 0 view .LVU142
 513 0082 04B0     		add	sp, sp, #16
 514              		.cfi_remember_state
 515              		.cfi_def_cfa_offset 8
 516              		@ sp needed
 517 0084 10BD     		pop	{r4, pc}
 518              	.LVL31:
 519              	.L28:
 520              		.cfi_restore_state
 428:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   }
 521              		.loc 1 428 12 view .LVU143
 522 0086 0320     		movs	r0, #3
 523 0088 F8E7     		b	.L26
 524              	.LVL32:
 525              	.L27:
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 526              		.loc 1 404 3 view .LVU144
 527 008a 0220     		movs	r0, #2
 528              	.LVL33:
 404:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 529              		.loc 1 404 3 view .LVU145
 530 008c F9E7     		b	.L24
 531              		.cfi_endproc
 532              	.LFE330:
 534              		.section	.text.HAL_UARTEx_EnableStopMode,"ax",%progbits
 535              		.align	1
 536              		.global	HAL_UARTEx_EnableStopMode
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu fpv4-sp-d16
 542              	HAL_UARTEx_EnableStopMode:
 543              	.LVL34:
 544              	.LFB331:
 449:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 545              		.loc 1 449 1 is_stmt 1 view -0
 546              		.cfi_startproc
 547              		@ args = 0, pretend = 0, frame = 0
 548              		@ frame_needed = 0, uses_anonymous_args = 0
 549              		@ link register save eliminated.
 451:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 550              		.loc 1 451 3 view .LVU147
 451:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 551              		.loc 1 451 3 view .LVU148
 552 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 553 0004 012B     		cmp	r3, #1
 451:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 554              		.loc 1 451 3 view .LVU149
 454:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 555              		.loc 1 454 3 view .LVU150
 556 0006 1FBF     		itttt	ne
 557 0008 0268     		ldrne	r2, [r0]
 558 000a 1368     		ldrne	r3, [r2]
 559 000c 43F00203 		orrne	r3, r3, #2
 560 0010 1360     		strne	r3, [r2]
 457:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 561              		.loc 1 457 3 view .LVU151
 457:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 562              		.loc 1 457 3 view .LVU152
 563 0012 1DBF     		ittte	ne
 564 0014 0023     		movne	r3, #0
 565 0016 80F87C30 		strbne	r3, [r0, #124]
 459:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 566              		.loc 1 459 3 view .LVU153
 459:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 567              		.loc 1 459 10 is_stmt 0 view .LVU154
 568 001a 1846     		movne	r0, r3
 569              	.LVL35:
 451:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 570              		.loc 1 451 3 view .LVU155
 571 001c 0220     		moveq	r0, #2
 460:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 572              		.loc 1 460 1 view .LVU156
 573 001e 7047     		bx	lr
 574              		.cfi_endproc
 575              	.LFE331:
 577              		.section	.text.HAL_UARTEx_DisableStopMode,"ax",%progbits
 578              		.align	1
 579              		.global	HAL_UARTEx_DisableStopMode
 580              		.syntax unified
 581              		.thumb
 582              		.thumb_func
 583              		.fpu fpv4-sp-d16
 585              	HAL_UARTEx_DisableStopMode:
 586              	.LVL36:
 587              	.LFB332:
 468:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   /* Process Locked */
 588              		.loc 1 468 1 is_stmt 1 view -0
 589              		.cfi_startproc
 590              		@ args = 0, pretend = 0, frame = 0
 591              		@ frame_needed = 0, uses_anonymous_args = 0
 592              		@ link register save eliminated.
 470:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 593              		.loc 1 470 3 view .LVU158
 470:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 594              		.loc 1 470 3 view .LVU159
 595 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 596 0004 012B     		cmp	r3, #1
 470:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 597              		.loc 1 470 3 view .LVU160
 473:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 598              		.loc 1 473 3 view .LVU161
 599 0006 1FBF     		itttt	ne
 600 0008 0268     		ldrne	r2, [r0]
 601 000a 1368     		ldrne	r3, [r2]
 602 000c 23F00203 		bicne	r3, r3, #2
 603 0010 1360     		strne	r3, [r2]
 476:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 604              		.loc 1 476 3 view .LVU162
 476:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 605              		.loc 1 476 3 view .LVU163
 606 0012 1DBF     		ittte	ne
 607 0014 0023     		movne	r3, #0
 608 0016 80F87C30 		strbne	r3, [r0, #124]
 478:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 609              		.loc 1 478 3 view .LVU164
 478:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 610              		.loc 1 478 10 is_stmt 0 view .LVU165
 611 001a 1846     		movne	r0, r3
 612              	.LVL37:
 470:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 613              		.loc 1 470 3 view .LVU166
 614 001c 0220     		moveq	r0, #2
 479:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 615              		.loc 1 479 1 view .LVU167
 616 001e 7047     		bx	lr
 617              		.cfi_endproc
 618              	.LFE332:
 620              		.section	.text.HAL_UARTEx_EnableFifoMode,"ax",%progbits
 621              		.align	1
 622              		.global	HAL_UARTEx_EnableFifoMode
 623              		.syntax unified
 624              		.thumb
 625              		.thumb_func
 626              		.fpu fpv4-sp-d16
 628              	HAL_UARTEx_EnableFifoMode:
 629              	.LVL38:
 630              	.LFB333:
 487:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 631              		.loc 1 487 1 is_stmt 1 view -0
 632              		.cfi_startproc
 633              		@ args = 0, pretend = 0, frame = 0
 634              		@ frame_needed = 0, uses_anonymous_args = 0
 488:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 635              		.loc 1 488 3 view .LVU169
 491:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 636              		.loc 1 491 3 view .LVU170
 494:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 637              		.loc 1 494 3 view .LVU171
 494:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 638              		.loc 1 494 3 view .LVU172
 639 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 640 0004 012B     		cmp	r3, #1
 487:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 641              		.loc 1 487 1 is_stmt 0 view .LVU173
 642 0006 10B5     		push	{r4, lr}
 643              		.cfi_def_cfa_offset 8
 644              		.cfi_offset 4, -8
 645              		.cfi_offset 14, -4
 487:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 646              		.loc 1 487 1 view .LVU174
 647 0008 0446     		mov	r4, r0
 494:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 648              		.loc 1 494 3 view .LVU175
 649 000a 1AD0     		beq	.L37
 494:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 650              		.loc 1 494 3 is_stmt 1 discriminator 2 view .LVU176
 651 000c 0123     		movs	r3, #1
 652 000e 80F87C30 		strb	r3, [r0, #124]
 496:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 653              		.loc 1 496 3 discriminator 2 view .LVU177
 496:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 654              		.loc 1 496 17 is_stmt 0 discriminator 2 view .LVU178
 655 0012 2423     		movs	r3, #36
 656 0014 C0F88030 		str	r3, [r0, #128]
 499:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 657              		.loc 1 499 3 is_stmt 1 discriminator 2 view .LVU179
 499:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 658              		.loc 1 499 12 is_stmt 0 discriminator 2 view .LVU180
 659 0018 0368     		ldr	r3, [r0]
 499:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 660              		.loc 1 499 10 discriminator 2 view .LVU181
 661 001a 1A68     		ldr	r2, [r3]
 662              	.LVL39:
 502:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 663              		.loc 1 502 3 is_stmt 1 discriminator 2 view .LVU182
 664 001c 1968     		ldr	r1, [r3]
 665 001e 21F00101 		bic	r1, r1, #1
 666 0022 1960     		str	r1, [r3]
 505:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->FifoMode = UART_FIFOMODE_ENABLE;
 667              		.loc 1 505 3 discriminator 2 view .LVU183
 668 0024 42F00052 		orr	r2, r2, #536870912
 669              	.LVL40:
 506:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 670              		.loc 1 506 3 discriminator 2 view .LVU184
 506:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 671              		.loc 1 506 19 is_stmt 0 discriminator 2 view .LVU185
 672 0028 4FF00051 		mov	r1, #536870912
 673 002c 4166     		str	r1, [r0, #100]
 509:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 674              		.loc 1 509 3 is_stmt 1 discriminator 2 view .LVU186
 675 002e 1A60     		str	r2, [r3]
 512:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 676              		.loc 1 512 3 discriminator 2 view .LVU187
 677 0030 FFF7FEFF 		bl	UARTEx_SetNbDataToProcess
 678              	.LVL41:
 514:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 679              		.loc 1 514 3 discriminator 2 view .LVU188
 514:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 680              		.loc 1 514 17 is_stmt 0 discriminator 2 view .LVU189
 681 0034 2023     		movs	r3, #32
 682 0036 C0F88030 		str	r3, [r0, #128]
 517:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 683              		.loc 1 517 3 is_stmt 1 discriminator 2 view .LVU190
 517:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 684              		.loc 1 517 3 discriminator 2 view .LVU191
 685 003a 0020     		movs	r0, #0
 686              	.LVL42:
 517:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 687              		.loc 1 517 3 is_stmt 0 discriminator 2 view .LVU192
 688 003c 84F87C00 		strb	r0, [r4, #124]
 519:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 689              		.loc 1 519 3 is_stmt 1 discriminator 2 view .LVU193
 690              	.L36:
 520:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 691              		.loc 1 520 1 is_stmt 0 view .LVU194
 692 0040 10BD     		pop	{r4, pc}
 693              	.LVL43:
 694              	.L37:
 494:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 695              		.loc 1 494 3 view .LVU195
 696 0042 0220     		movs	r0, #2
 697              	.LVL44:
 494:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 698              		.loc 1 494 3 view .LVU196
 699 0044 FCE7     		b	.L36
 700              		.cfi_endproc
 701              	.LFE333:
 703              		.section	.text.HAL_UARTEx_DisableFifoMode,"ax",%progbits
 704              		.align	1
 705              		.global	HAL_UARTEx_DisableFifoMode
 706              		.syntax unified
 707              		.thumb
 708              		.thumb_func
 709              		.fpu fpv4-sp-d16
 711              	HAL_UARTEx_DisableFifoMode:
 712              	.LVL45:
 713              	.LFB334:
 528:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 714              		.loc 1 528 1 is_stmt 1 view -0
 715              		.cfi_startproc
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 529:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 719              		.loc 1 529 3 view .LVU198
 532:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 720              		.loc 1 532 3 view .LVU199
 535:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 721              		.loc 1 535 3 view .LVU200
 535:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 722              		.loc 1 535 3 view .LVU201
 723 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 724 0004 012B     		cmp	r3, #1
 725 0006 14D0     		beq	.L40
 535:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 726              		.loc 1 535 3 discriminator 2 view .LVU202
 537:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 727              		.loc 1 537 3 discriminator 2 view .LVU203
 540:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 728              		.loc 1 540 12 is_stmt 0 discriminator 2 view .LVU204
 729 0008 0268     		ldr	r2, [r0]
 537:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 730              		.loc 1 537 17 discriminator 2 view .LVU205
 731 000a 2423     		movs	r3, #36
 732 000c C0F88030 		str	r3, [r0, #128]
 540:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 733              		.loc 1 540 3 is_stmt 1 discriminator 2 view .LVU206
 540:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 734              		.loc 1 540 10 is_stmt 0 discriminator 2 view .LVU207
 735 0010 1168     		ldr	r1, [r2]
 736              	.LVL46:
 543:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 737              		.loc 1 543 3 is_stmt 1 discriminator 2 view .LVU208
 738 0012 1368     		ldr	r3, [r2]
 739 0014 23F00103 		bic	r3, r3, #1
 740 0018 1360     		str	r3, [r2]
 546:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   huart->FifoMode = UART_FIFOMODE_DISABLE;
 741              		.loc 1 546 3 discriminator 2 view .LVU209
 742 001a 21F00051 		bic	r1, r1, #536870912
 743              	.LVL47:
 547:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 744              		.loc 1 547 3 discriminator 2 view .LVU210
 547:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 745              		.loc 1 547 19 is_stmt 0 discriminator 2 view .LVU211
 746 001e 0023     		movs	r3, #0
 747 0020 4366     		str	r3, [r0, #100]
 550:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 748              		.loc 1 550 3 is_stmt 1 discriminator 2 view .LVU212
 749 0022 1160     		str	r1, [r2]
 552:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 750              		.loc 1 552 3 discriminator 2 view .LVU213
 552:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 751              		.loc 1 552 17 is_stmt 0 discriminator 2 view .LVU214
 752 0024 2022     		movs	r2, #32
 753 0026 C0F88020 		str	r2, [r0, #128]
 555:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 754              		.loc 1 555 3 is_stmt 1 discriminator 2 view .LVU215
 555:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 755              		.loc 1 555 3 discriminator 2 view .LVU216
 756 002a 80F87C30 		strb	r3, [r0, #124]
 557:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 757              		.loc 1 557 3 discriminator 2 view .LVU217
 557:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 758              		.loc 1 557 10 is_stmt 0 discriminator 2 view .LVU218
 759 002e 1846     		mov	r0, r3
 760              	.LVL48:
 557:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 761              		.loc 1 557 10 discriminator 2 view .LVU219
 762 0030 7047     		bx	lr
 763              	.LVL49:
 764              	.L40:
 535:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 765              		.loc 1 535 3 view .LVU220
 766 0032 0220     		movs	r0, #2
 767              	.LVL50:
 558:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 768              		.loc 1 558 1 view .LVU221
 769 0034 7047     		bx	lr
 770              		.cfi_endproc
 771              	.LFE334:
 773              		.section	.text.HAL_UARTEx_SetTxFifoThreshold,"ax",%progbits
 774              		.align	1
 775              		.global	HAL_UARTEx_SetTxFifoThreshold
 776              		.syntax unified
 777              		.thumb
 778              		.thumb_func
 779              		.fpu fpv4-sp-d16
 781              	HAL_UARTEx_SetTxFifoThreshold:
 782              	.LVL51:
 783              	.LFB335:
 574:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 784              		.loc 1 574 1 is_stmt 1 view -0
 785              		.cfi_startproc
 786              		@ args = 0, pretend = 0, frame = 0
 787              		@ frame_needed = 0, uses_anonymous_args = 0
 575:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 788              		.loc 1 575 3 view .LVU223
 578:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_TXFIFO_THRESHOLD(Threshold));
 789              		.loc 1 578 3 view .LVU224
 579:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 790              		.loc 1 579 3 view .LVU225
 582:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 791              		.loc 1 582 3 view .LVU226
 582:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 792              		.loc 1 582 3 view .LVU227
 793 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 794 0004 012B     		cmp	r3, #1
 574:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 795              		.loc 1 574 1 is_stmt 0 view .LVU228
 796 0006 70B5     		push	{r4, r5, r6, lr}
 797              		.cfi_def_cfa_offset 16
 798              		.cfi_offset 4, -16
 799              		.cfi_offset 5, -12
 800              		.cfi_offset 6, -8
 801              		.cfi_offset 14, -4
 574:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 802              		.loc 1 574 1 view .LVU229
 803 0008 0446     		mov	r4, r0
 582:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 804              		.loc 1 582 3 view .LVU230
 805 000a 1BD0     		beq	.L43
 582:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 806              		.loc 1 582 3 is_stmt 1 discriminator 2 view .LVU231
 807 000c 0123     		movs	r3, #1
 808 000e 80F87C30 		strb	r3, [r0, #124]
 584:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 809              		.loc 1 584 3 discriminator 2 view .LVU232
 584:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 810              		.loc 1 584 17 is_stmt 0 discriminator 2 view .LVU233
 811 0012 2423     		movs	r3, #36
 812 0014 C0F88030 		str	r3, [r0, #128]
 587:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 813              		.loc 1 587 3 is_stmt 1 discriminator 2 view .LVU234
 587:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 814              		.loc 1 587 12 is_stmt 0 discriminator 2 view .LVU235
 815 0018 0368     		ldr	r3, [r0]
 587:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 816              		.loc 1 587 10 discriminator 2 view .LVU236
 817 001a 1E68     		ldr	r6, [r3]
 818              	.LVL52:
 590:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 819              		.loc 1 590 3 is_stmt 1 discriminator 2 view .LVU237
 820 001c 1D68     		ldr	r5, [r3]
 821 001e 25F00105 		bic	r5, r5, #1
 822 0022 1D60     		str	r5, [r3]
 593:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 823              		.loc 1 593 3 discriminator 2 view .LVU238
 824 0024 9A68     		ldr	r2, [r3, #8]
 825 0026 22F06042 		bic	r2, r2, #-536870912
 826 002a 0A43     		orrs	r2, r2, r1
 827 002c 9A60     		str	r2, [r3, #8]
 596:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 828              		.loc 1 596 3 discriminator 2 view .LVU239
 829 002e FFF7FEFF 		bl	UARTEx_SetNbDataToProcess
 830              	.LVL53:
 599:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 831              		.loc 1 599 3 discriminator 2 view .LVU240
 832 0032 0368     		ldr	r3, [r0]
 833 0034 1E60     		str	r6, [r3]
 601:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 834              		.loc 1 601 3 discriminator 2 view .LVU241
 601:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 835              		.loc 1 601 17 is_stmt 0 discriminator 2 view .LVU242
 836 0036 2023     		movs	r3, #32
 837 0038 C0F88030 		str	r3, [r0, #128]
 604:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 838              		.loc 1 604 3 is_stmt 1 discriminator 2 view .LVU243
 604:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 839              		.loc 1 604 3 discriminator 2 view .LVU244
 840 003c 0020     		movs	r0, #0
 841              	.LVL54:
 604:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 842              		.loc 1 604 3 is_stmt 0 discriminator 2 view .LVU245
 843 003e 84F87C00 		strb	r0, [r4, #124]
 606:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 844              		.loc 1 606 3 is_stmt 1 discriminator 2 view .LVU246
 845              	.LVL55:
 846              	.L42:
 607:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 847              		.loc 1 607 1 is_stmt 0 view .LVU247
 848 0042 70BD     		pop	{r4, r5, r6, pc}
 849              	.LVL56:
 850              	.L43:
 582:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 851              		.loc 1 582 3 view .LVU248
 852 0044 0220     		movs	r0, #2
 853              	.LVL57:
 582:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 854              		.loc 1 582 3 view .LVU249
 855 0046 FCE7     		b	.L42
 856              		.cfi_endproc
 857              	.LFE335:
 859              		.section	.text.HAL_UARTEx_SetRxFifoThreshold,"ax",%progbits
 860              		.align	1
 861              		.global	HAL_UARTEx_SetRxFifoThreshold
 862              		.syntax unified
 863              		.thumb
 864              		.thumb_func
 865              		.fpu fpv4-sp-d16
 867              	HAL_UARTEx_SetRxFifoThreshold:
 868              	.LVL58:
 869              	.LFB336:
 623:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 870              		.loc 1 623 1 is_stmt 1 view -0
 871              		.cfi_startproc
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 624:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 874              		.loc 1 624 3 view .LVU251
 627:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   assert_param(IS_UART_RXFIFO_THRESHOLD(Threshold));
 875              		.loc 1 627 3 view .LVU252
 628:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 876              		.loc 1 628 3 view .LVU253
 631:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 877              		.loc 1 631 3 view .LVU254
 631:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 878              		.loc 1 631 3 view .LVU255
 879 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 880 0004 012B     		cmp	r3, #1
 623:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 881              		.loc 1 623 1 is_stmt 0 view .LVU256
 882 0006 70B5     		push	{r4, r5, r6, lr}
 883              		.cfi_def_cfa_offset 16
 884              		.cfi_offset 4, -16
 885              		.cfi_offset 5, -12
 886              		.cfi_offset 6, -8
 887              		.cfi_offset 14, -4
 623:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c ****   uint32_t tmpcr1;
 888              		.loc 1 623 1 view .LVU257
 889 0008 0446     		mov	r4, r0
 631:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 890              		.loc 1 631 3 view .LVU258
 891 000a 1BD0     		beq	.L46
 631:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 892              		.loc 1 631 3 is_stmt 1 discriminator 2 view .LVU259
 893 000c 0123     		movs	r3, #1
 894 000e 80F87C30 		strb	r3, [r0, #124]
 633:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 895              		.loc 1 633 3 discriminator 2 view .LVU260
 633:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 896              		.loc 1 633 17 is_stmt 0 discriminator 2 view .LVU261
 897 0012 2423     		movs	r3, #36
 898 0014 C0F88030 		str	r3, [r0, #128]
 636:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 899              		.loc 1 636 3 is_stmt 1 discriminator 2 view .LVU262
 636:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 900              		.loc 1 636 12 is_stmt 0 discriminator 2 view .LVU263
 901 0018 0368     		ldr	r3, [r0]
 636:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 902              		.loc 1 636 10 discriminator 2 view .LVU264
 903 001a 1E68     		ldr	r6, [r3]
 904              	.LVL59:
 639:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 905              		.loc 1 639 3 is_stmt 1 discriminator 2 view .LVU265
 906 001c 1D68     		ldr	r5, [r3]
 907 001e 25F00105 		bic	r5, r5, #1
 908 0022 1D60     		str	r5, [r3]
 642:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 909              		.loc 1 642 3 discriminator 2 view .LVU266
 910 0024 9A68     		ldr	r2, [r3, #8]
 911 0026 22F06062 		bic	r2, r2, #234881024
 912 002a 0A43     		orrs	r2, r2, r1
 913 002c 9A60     		str	r2, [r3, #8]
 645:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 914              		.loc 1 645 3 discriminator 2 view .LVU267
 915 002e FFF7FEFF 		bl	UARTEx_SetNbDataToProcess
 916              	.LVL60:
 648:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 917              		.loc 1 648 3 discriminator 2 view .LVU268
 918 0032 0368     		ldr	r3, [r0]
 919 0034 1E60     		str	r6, [r3]
 650:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 920              		.loc 1 650 3 discriminator 2 view .LVU269
 650:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 921              		.loc 1 650 17 is_stmt 0 discriminator 2 view .LVU270
 922 0036 2023     		movs	r3, #32
 923 0038 C0F88030 		str	r3, [r0, #128]
 653:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 924              		.loc 1 653 3 is_stmt 1 discriminator 2 view .LVU271
 653:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 925              		.loc 1 653 3 discriminator 2 view .LVU272
 926 003c 0020     		movs	r0, #0
 927              	.LVL61:
 653:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 928              		.loc 1 653 3 is_stmt 0 discriminator 2 view .LVU273
 929 003e 84F87C00 		strb	r0, [r4, #124]
 655:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** }
 930              		.loc 1 655 3 is_stmt 1 discriminator 2 view .LVU274
 931              	.LVL62:
 932              	.L45:
 656:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 933              		.loc 1 656 1 is_stmt 0 view .LVU275
 934 0042 70BD     		pop	{r4, r5, r6, pc}
 935              	.LVL63:
 936              	.L46:
 631:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 937              		.loc 1 631 3 view .LVU276
 938 0044 0220     		movs	r0, #2
 939              	.LVL64:
 631:../../..\CubeG4\src/stm32g4xx_hal_uart_ex.c **** 
 940              		.loc 1 631 3 view .LVU277
 941 0046 FCE7     		b	.L45
 942              		.cfi_endproc
 943              	.LFE336:
 945              		.text
 946              	.Letext0:
 947              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 948              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 949              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 950              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 951              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 952              		.file 7 "../../..\\CubeG4\\include/stm32g4xx.h"
 953              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 954              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_dma.h"
 955              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 956              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_uart.h"
 957              		.file 12 "../../..\\CubeG4\\include/stm32g4xx_hal_uart_ex.h"
 958              		.file 13 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
