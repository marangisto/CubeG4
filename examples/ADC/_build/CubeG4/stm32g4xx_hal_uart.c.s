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
  13              		.file	"stm32g4xx_hal_uart.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.UART_EndRxTransfer,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	UART_EndRxTransfer:
  26              	.LVL0:
  27              	.LFB369:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_uart.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @file    stm32g4xx_hal_uart.c
   4:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief   UART HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *          functionalities of the Universal Asynchronous Receiver Transmitter Peripheral (UART).
   8:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           + Initialization and de-initialization functions
   9:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           + IO operation functions
  10:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           + Peripheral Control functions
  11:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
  13:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   @verbatim
  14:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****  ===============================================================================
  15:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                         ##### How to use this driver #####
  16:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****  ===============================================================================
  17:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   [..]
  18:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     The UART HAL driver can be used as follows:
  19:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  20:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) Declare a UART_HandleTypeDef handle structure (eg. UART_HandleTypeDef huart).
  21:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) Initialize the UART low level resources by implementing the HAL_UART_MspInit() API:
  22:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Enable the USARTx interface clock.
  23:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) UART pins configuration:
  24:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Enable the clock for the UART GPIOs.
  25:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Configure these UART pins as alternate function pull-up.
  26:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) NVIC configuration if you need to use interrupt process (HAL_UART_Transmit_IT()
  27:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****              and HAL_UART_Receive_IT() APIs):
  28:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Configure the USARTx interrupt priority.
  29:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Enable the NVIC USART IRQ handle.
  30:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) UART interrupts handling:
  31:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****               -@@-  The specific UART interrupts (Transmission complete interrupt,
  32:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                 RXNE interrupt, RX/TX FIFOs related interrupts and Error Interrupts)
  33:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                 are managed using the macros __HAL_UART_ENABLE_IT() and __HAL_UART_DISABLE_IT()
  34:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                 inside the transmit and receive processes.
  35:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) DMA Configuration if you need to use DMA process (HAL_UART_Transmit_DMA()
  36:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****              and HAL_UART_Receive_DMA() APIs):
  37:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Declare a DMA handle structure for the Tx/Rx channel.
  38:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Enable the DMAx interface clock.
  39:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Configure the declared DMA handle structure with the required Tx/Rx parameters.
  40:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Configure the DMA Tx/Rx channel.
  41:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Associate the initialized DMA handle to the UART DMA Tx/Rx handle.
  42:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on
  43:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  44:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) Program the Baud Rate, Word Length, Stop Bit, Parity, Prescaler value , Hardware
  45:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         flow control and Mode (Receiver/Transmitter) in the huart handle Init structure.
  46:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  47:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) If required, program UART advanced features (TX/RX pins swap, auto Baud rate detection,...)
  48:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         in the huart handle AdvancedInit structure.
  49:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  50:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) For the UART asynchronous mode, initialize the UART registers by calling
  51:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         the HAL_UART_Init() API.
  52:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  53:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) For the UART Half duplex mode, initialize the UART registers by calling
  54:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         the HAL_HalfDuplex_Init() API.
  55:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  56:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) For the UART LIN (Local Interconnection Network) mode, initialize the UART registers
  57:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         by calling the HAL_LIN_Init() API.
  58:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  59:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) For the UART Multiprocessor mode, initialize the UART registers
  60:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         by calling the HAL_MultiProcessor_Init() API.
  61:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  62:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) For the UART RS485 Driver Enabled mode, initialize the UART registers
  63:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         by calling the HAL_RS485Ex_Init() API.
  64:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  65:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
  66:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (@) These API's (HAL_UART_Init(), HAL_HalfDuplex_Init(), HAL_LIN_Init(), HAL_MultiProcessor_Ini
  67:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         also configure the low level Hardware GPIO, CLOCK, CORTEX...etc) by
  68:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         calling the customized HAL_UART_MspInit() API.
  69:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  70:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     ##### Callback registration #####
  71:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     ==================================
  72:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  73:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
  74:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     The compilation define USE_HAL_UART_REGISTER_CALLBACKS when set to 1
  75:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     allows the user to configure dynamically the driver callbacks.
  76:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  77:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
  78:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     Use Function @ref HAL_UART_RegisterCallback() to register a user callback.
  79:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     Function @ref HAL_UART_RegisterCallback() allows to register following callbacks:
  80:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) TxHalfCpltCallback        : Tx Half Complete Callback.
  81:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) TxCpltCallback            : Tx Complete Callback.
  82:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) RxHalfCpltCallback        : Rx Half Complete Callback.
  83:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) RxCpltCallback            : Rx Complete Callback.
  84:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) ErrorCallback             : Error Callback.
  85:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) AbortCpltCallback         : Abort Complete Callback.
  86:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) AbortTransmitCpltCallback : Abort Transmit Complete Callback.
  87:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) AbortReceiveCpltCallback  : Abort Receive Complete Callback.
  88:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) WakeupCallback            : Wakeup Callback.
  89:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) RxFifoFullCallback        : Rx Fifo Full Callback.
  90:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) TxFifoEmptyCallback       : Tx Fifo Empty Callback.
  91:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) MspInitCallback           : UART MspInit.
  92:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) MspDeInitCallback         : UART MspDeInit.
  93:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     This function takes as parameters the HAL peripheral handle, the Callback ID
  94:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     and a pointer to the user callback function.
  95:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
  96:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
  97:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     Use function @ref HAL_UART_UnRegisterCallback() to reset a callback to the default
  98:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     weak (surcharged) function.
  99:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     @ref HAL_UART_UnRegisterCallback() takes as parameters the HAL peripheral handle,
 100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     and the Callback ID.
 101:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     This function allows to reset following callbacks:
 102:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) TxHalfCpltCallback        : Tx Half Complete Callback.
 103:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) TxCpltCallback            : Tx Complete Callback.
 104:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) RxHalfCpltCallback        : Rx Half Complete Callback.
 105:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) RxCpltCallback            : Rx Complete Callback.
 106:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) ErrorCallback             : Error Callback.
 107:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) AbortCpltCallback         : Abort Complete Callback.
 108:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) AbortTransmitCpltCallback : Abort Transmit Complete Callback.
 109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) AbortReceiveCpltCallback  : Abort Receive Complete Callback.
 110:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) WakeupCallback            : Wakeup Callback.
 111:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) RxFifoFullCallback        : Rx Fifo Full Callback.
 112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) TxFifoEmptyCallback       : Tx Fifo Empty Callback.
 113:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) MspInitCallback           : UART MspInit.
 114:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (+) MspDeInitCallback         : UART MspDeInit.
 115:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 116:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
 117:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     By default, after the @ref HAL_UART_Init() and when the state is HAL_UART_STATE_RESET
 118:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     all callbacks are set to the corresponding weak (surcharged) functions:
 119:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     examples @ref HAL_UART_TxCpltCallback(), @ref HAL_UART_RxHalfCpltCallback().
 120:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     Exception done for MspInit and MspDeInit functions that are respectively
 121:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     reset to the legacy weak (surcharged) functions in the @ref HAL_UART_Init()
 122:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     and @ref HAL_UART_DeInit() only when these callbacks are null (not registered beforehand).
 123:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     If not, MspInit or MspDeInit are not null, the @ref HAL_UART_Init() and @ref HAL_UART_DeInit()
 124:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     keep and use the user MspInit/MspDeInit callbacks (registered beforehand).
 125:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 126:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
 127:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     Callbacks can be registered/unregistered in HAL_UART_STATE_READY state only.
 128:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     Exception done MspInit/MspDeInit that can be registered/unregistered
 129:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     in HAL_UART_STATE_READY or HAL_UART_STATE_RESET state, thus registered (user)
 130:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MspInit/DeInit callbacks can be used during the Init/DeInit.
 131:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     In that case first register the MspInit/MspDeInit user callbacks
 132:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     using @ref HAL_UART_RegisterCallback() before calling @ref HAL_UART_DeInit()
 133:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     or @ref HAL_UART_Init() function.
 134:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 135:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
 136:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     When The compilation define USE_HAL_UART_REGISTER_CALLBACKS is set to 0 or
 137:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     not defined, the callback registration feature is not available
 138:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     and weak (surcharged) callbacks are used.
 139:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 140:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 141:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   @endverbatim
 142:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   ******************************************************************************
 143:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @attention
 144:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
 145:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
 146:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * All rights reserved.</center></h2>
 147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
 148:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * This software component is licensed by ST under BSD 3-Clause license,
 149:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * the "License"; You may not use this file except in compliance with the
 150:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * License. You may obtain a copy of the License at:
 151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *                        opensource.org/licenses/BSD-3-Clause
 152:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
 153:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   ******************************************************************************
 154:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 155:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 156:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /* Includes ------------------------------------------------------------------*/
 157:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #include "stm32g4xx_hal.h"
 158:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 159:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @addtogroup STM32G4xx_HAL_Driver
 160:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
 161:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 162:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 163:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART UART
 164:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief HAL UART module driver
 165:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
 166:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 167:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 168:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #ifdef HAL_UART_MODULE_ENABLED
 169:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 170:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /* Private typedef -----------------------------------------------------------*/
 171:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /* Private define ------------------------------------------------------------*/
 172:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART_Private_Constants UART Private Constants
 173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
 174:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 175:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #define USART_CR1_FIELDS  ((uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | \
 176:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                                       USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8| \
 177:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                                       USART_CR1_FIFOEN ))                      /*!< UART or USART C
 178:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 179:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #define USART_CR3_FIELDS  ((uint32_t)(USART_CR3_RTSE | USART_CR3_CTSE | USART_CR3_ONEBIT| \
 180:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                                       USART_CR3_TXFTCFG | USART_CR3_RXFTCFG ))  /*!< UART or USART 
 181:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 182:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #define LPUART_BRR_MIN  0x00000300U  /* LPUART BRR minimum authorized value */
 183:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #define LPUART_BRR_MAX  0x000FFFFFU  /* LPUART BRR maximum authorized value */
 184:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 185:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #define UART_BRR_MIN    0x10U        /* UART BRR minimum authorized value */
 186:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #define UART_BRR_MAX    0x0000FFFFU  /* UART BRR maximum authorized value */
 187:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 188:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 189:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @}
 190:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 191:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 192:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /* Private macros ------------------------------------------------------------*/
 193:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /* Private variables ---------------------------------------------------------*/
 194:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /* Private function prototypes -----------------------------------------------*/
 195:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @addtogroup UART_Private_Functions
 196:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
 197:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 198:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_EndTxTransfer(UART_HandleTypeDef *huart);
 199:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_EndRxTransfer(UART_HandleTypeDef *huart);
 200:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATransmitCplt(DMA_HandleTypeDef *hdma);
 201:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMAReceiveCplt(DMA_HandleTypeDef *hdma);
 202:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMARxHalfCplt(DMA_HandleTypeDef *hdma);
 203:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATxHalfCplt(DMA_HandleTypeDef *hdma);
 204:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMAError(DMA_HandleTypeDef *hdma);
 205:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMAAbortOnError(DMA_HandleTypeDef *hdma);
 206:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATxAbortCallback(DMA_HandleTypeDef *hdma);
 207:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMARxAbortCallback(DMA_HandleTypeDef *hdma);
 208:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATxOnlyAbortCallback(DMA_HandleTypeDef *hdma);
 209:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMARxOnlyAbortCallback(DMA_HandleTypeDef *hdma);
 210:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_8BIT(UART_HandleTypeDef *huart);
 211:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_16BIT(UART_HandleTypeDef *huart);
 212:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_8BIT_FIFOEN(UART_HandleTypeDef *huart);
 213:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_16BIT_FIFOEN(UART_HandleTypeDef *huart);
 214:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_EndTransmit_IT(UART_HandleTypeDef *huart);
 215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_8BIT(UART_HandleTypeDef *huart);
 216:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_16BIT(UART_HandleTypeDef *huart);
 217:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_8BIT_FIFOEN(UART_HandleTypeDef *huart);
 218:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_16BIT_FIFOEN(UART_HandleTypeDef *huart);
 219:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 220:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @}
 221:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 222:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 223:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /* Exported functions --------------------------------------------------------*/
 224:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 225:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART_Exported_Functions UART Exported Functions
 226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
 227:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 228:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 229:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART_Exported_Functions_Group1 Initialization and de-initialization functions
 230:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  @brief    Initialization and Configuration functions
 231:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
 232:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @verbatim
 233:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** ===============================================================================
 234:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             ##### Initialization and Configuration functions #####
 235:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****  ===============================================================================
 236:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
 237:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     This subsection provides a set of functions allowing to initialize the USARTx or the UARTy
 238:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     in asynchronous mode.
 239:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (+) For the asynchronous mode the parameters below can be configured:
 240:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Baud Rate
 241:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Word Length
 242:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Stop Bit
 243:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Parity: If the parity is enabled, then the MSB bit of the data written
 244:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****              in the data register is transmitted but is changed by the parity bit.
 245:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Hardware flow control
 246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Receiver/transmitter modes
 247:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) Over Sampling Method
 248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) One-Bit Sampling Method
 249:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (+) For the asynchronous mode, the following advanced features can be configured as well:
 250:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) TX and/or RX pin level inversion
 251:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) data logical level inversion
 252:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) RX and TX pins swap
 253:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) RX overrun detection disabling
 254:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) DMA disabling on RX error
 255:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) MSB first on communication line
 256:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (++) auto Baud rate detection
 257:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
 258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     The HAL_UART_Init(), HAL_HalfDuplex_Init(), HAL_LIN_Init()and HAL_MultiProcessor_Init()API
 259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     follow respectively the UART asynchronous, UART Half duplex, UART LIN mode
 260:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     and UART multiprocessor mode configuration procedures (details for the procedures
 261:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     are available in reference manual).
 262:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 263:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @endverbatim
 264:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 265:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   Depending on the frame length defined by the M1 and M0 bits (7-bit,
 266:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   8-bit or 9-bit), the possible UART formats are listed in the
 267:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   following table.
 268:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 269:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   Table 1. UART frame format.
 270:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     +-----------------------------------------------------------------------+
 271:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |  M1 bit |  M0 bit |  PCE bit  |             UART frame                |
 272:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |---------|---------|-----------|---------------------------------------|
 273:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |    0    |    0    |    0      |    | SB |    8 bit data   | STB |     |
 274:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |---------|---------|-----------|---------------------------------------|
 275:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |    0    |    0    |    1      |    | SB | 7 bit data | PB | STB |     |
 276:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |---------|---------|-----------|---------------------------------------|
 277:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |    0    |    1    |    0      |    | SB |    9 bit data   | STB |     |
 278:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |---------|---------|-----------|---------------------------------------|
 279:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |    0    |    1    |    1      |    | SB | 8 bit data | PB | STB |     |
 280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |---------|---------|-----------|---------------------------------------|
 281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |    1    |    0    |    0      |    | SB |    7 bit data   | STB |     |
 282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |---------|---------|-----------|---------------------------------------|
 283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     |    1    |    0    |    1      |    | SB | 6 bit data | PB | STB |     |
 284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     +-----------------------------------------------------------------------+
 285:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 286:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
 287:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 288:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 289:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 290:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Initialize the UART mode according to the specified
 291:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        parameters in the UART_InitTypeDef and initialize the associated handle.
 292:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
 293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
 294:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 295:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
 296:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 297:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 298:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart == NULL)
 299:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 300:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 301:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 302:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 303:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->Init.HwFlowCtl != UART_HWCONTROL_NONE)
 304:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 305:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Check the parameters */
 306:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_HWFLOW_INSTANCE(huart->Instance));
 307:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 308:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
 309:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 310:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Check the parameters */
 311:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param((IS_UART_INSTANCE(huart->Instance)) || (IS_LPUART_INSTANCE(huart->Instance)));
 312:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 313:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_RESET)
 315:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 316:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 317:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 318:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 319:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
 320:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_InitCallbacksToDefault(huart);
 321:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 322:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->MspInitCallback == NULL)
 323:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 324:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->MspInitCallback = HAL_UART_MspInit;
 325:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 326:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 327:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware */
 328:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->MspInitCallback(huart);
 329:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
 330:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 331:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 332:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 333:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 334:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 335:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 336:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 337:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 338:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 339:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Set the UART Communication parameters */
 340:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 341:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 342:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 343:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 344:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 346:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 347:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 348:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 349:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 350:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* In asynchronous mode, the following bits must be kept cleared:
 351:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
 353:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 354:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 355:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 356:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 357:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 358:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 359:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 360:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 361:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 362:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 363:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Initialize the half-duplex mode according to the specified
 364:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        parameters in the UART_InitTypeDef and creates the associated handle.
 365:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
 366:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
 367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 368:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart)
 369:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 370:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 371:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart == NULL)
 372:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 373:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 374:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 375:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 376:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check UART instance */
 377:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_HALFDUPLEX_INSTANCE(huart->Instance));
 378:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_RESET)
 380:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 381:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 382:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 383:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 384:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
 385:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_InitCallbacksToDefault(huart);
 386:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 387:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->MspInitCallback == NULL)
 388:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 389:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->MspInitCallback = HAL_UART_MspInit;
 390:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 392:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware */
 393:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->MspInitCallback(huart);
 394:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
 395:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 396:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 397:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 398:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 399:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 400:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 401:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 402:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 403:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 404:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Set the UART Communication parameters */
 405:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 406:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 407:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 408:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 409:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 410:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 411:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 412:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 413:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 414:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 415:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* In half-duplex mode, the following bits must be kept cleared:
 416:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 417:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - SCEN and IREN bits in the USART_CR3 register.*/
 418:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 419:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_IREN | USART_CR3_SCEN));
 420:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 421:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Enable the Half-Duplex mode by setting the HDSEL bit in the CR3 register */
 422:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   SET_BIT(huart->Instance->CR3, USART_CR3_HDSEL);
 423:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 424:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 425:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 426:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 427:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 428:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 429:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 430:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 431:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 432:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Initialize the LIN mode according to the specified
 433:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        parameters in the UART_InitTypeDef and creates the associated handle.
 434:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart             UART handle.
 435:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param BreakDetectLength Specifies the LIN break detection length.
 436:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        This parameter can be one of the following values:
 437:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *          @arg @ref UART_LINBREAKDETECTLENGTH_10B 10-bit break detection
 438:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *          @arg @ref UART_LINBREAKDETECTLENGTH_11B 11-bit break detection
 439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
 440:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 441:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength)
 442:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 443:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 444:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart == NULL)
 445:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 446:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 447:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 448:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 449:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the LIN UART instance */
 450:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_LIN_INSTANCE(huart->Instance));
 451:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the Break detection length parameter */
 452:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_LIN_BREAK_DETECT_LENGTH(BreakDetectLength));
 453:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 454:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* LIN mode limited to 16-bit oversampling only */
 455:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 456:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 457:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 458:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 459:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* LIN mode limited to 8-bit data length */
 460:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->Init.WordLength != UART_WORDLENGTH_8B)
 461:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 462:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 463:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 464:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 465:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_RESET)
 466:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 467:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 468:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 469:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 470:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
 471:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_InitCallbacksToDefault(huart);
 472:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 473:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->MspInitCallback == NULL)
 474:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 475:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->MspInitCallback = HAL_UART_MspInit;
 476:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 477:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 478:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware */
 479:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->MspInitCallback(huart);
 480:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
 481:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 482:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 483:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 484:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 485:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 486:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 487:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 488:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 489:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 490:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Set the UART Communication parameters */
 491:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 492:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 493:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 494:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 495:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 496:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 497:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 498:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 499:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 500:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 501:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* In LIN mode, the following bits must be kept cleared:
 502:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 503:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - SCEN and IREN bits in the USART_CR3 register.*/
 504:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, USART_CR2_CLKEN);
 505:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_HDSEL | USART_CR3_IREN | USART_CR3_SCEN));
 506:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 507:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Enable the LIN mode by setting the LINEN bit in the CR2 register */
 508:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   SET_BIT(huart->Instance->CR2, USART_CR2_LINEN);
 509:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 510:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Set the USART LIN Break detection length. */
 511:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_LBDL, BreakDetectLength);
 512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 513:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 514:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 515:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 516:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 517:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 518:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 519:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 520:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 521:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Initialize the multiprocessor mode according to the specified
 522:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        parameters in the UART_InitTypeDef and initialize the associated handle.
 523:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart        UART handle.
 524:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Address      UART node address (4-, 6-, 7- or 8-bit long).
 525:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param WakeUpMethod Specifies the UART wakeup method.
 526:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        This parameter can be one of the following values:
 527:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *          @arg @ref UART_WAKEUPMETHOD_IDLELINE WakeUp by an idle line detection
 528:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *          @arg @ref UART_WAKEUPMETHOD_ADDRESSMARK WakeUp by an address mark
 529:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note  If the user resorts to idle line detection wake up, the Address parameter
 530:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        is useless and ignored by the initialization function.
 531:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note  If the user resorts to address mark wake up, the address length detection
 532:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        is configured by default to 4 bits only. For the UART to be able to
 533:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        manage 6-, 7- or 8-bit long addresses detection, the API
 534:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        HAL_MultiProcessorEx_AddressLength_Set() must be called after
 535:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *        HAL_MultiProcessor_Init().
 536:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
 537:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 538:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t Wake
 539:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 540:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 541:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart == NULL)
 542:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 543:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 544:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 545:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 546:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the wake up method parameter */
 547:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_WAKEUPMETHOD(WakeUpMethod));
 548:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 549:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_RESET)
 550:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 551:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 552:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 553:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 554:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
 555:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_InitCallbacksToDefault(huart);
 556:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 557:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->MspInitCallback == NULL)
 558:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 559:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->MspInitCallback = HAL_UART_MspInit;
 560:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 561:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 562:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware */
 563:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->MspInitCallback(huart);
 564:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
 565:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 566:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 568:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 569:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 570:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 571:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 573:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Set the UART Communication parameters */
 575:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 576:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 577:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 578:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 579:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 580:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 581:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 582:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 583:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 584:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 585:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* In multiprocessor mode, the following bits must be kept cleared:
 586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 587:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   - SCEN, HDSEL and IREN  bits in the USART_CR3 register. */
 588:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 589:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 590:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 591:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (WakeUpMethod == UART_WAKEUPMETHOD_ADDRESSMARK)
 592:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 593:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* If address mark wake up method is chosen, set the USART address node */
 594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_ADD, ((uint32_t)Address << UART_CR2_ADDRESS_LSB_POS)
 595:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 596:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Set the wake up method by setting the WAKE bit in the CR1 register */
 598:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, USART_CR1_WAKE, WakeUpMethod);
 599:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 600:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 601:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 602:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 603:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 604:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 605:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 606:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 607:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 608:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief DeInitialize the UART peripheral.
 609:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
 610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
 611:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 612:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart)
 613:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 614:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart == NULL)
 616:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 617:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 618:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 619:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the parameters */
 621:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param((IS_UART_INSTANCE(huart->Instance)) || (IS_LPUART_INSTANCE(huart->Instance)));
 622:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 623:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 624:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 625:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 626:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR1 = 0x0U;
 628:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR2 = 0x0U;
 629:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR3 = 0x0U;
 630:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 631:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
 632:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->MspDeInitCallback == NULL)
 633:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 634:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->MspDeInitCallback = HAL_UART_MspDeInit;
 635:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 636:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* DeInit the low level hardware */
 637:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->MspDeInitCallback(huart);
 638:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
 639:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* DeInit the low level hardware */
 640:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_MspDeInit(huart);
 641:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 642:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 643:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCode = HAL_UART_ERROR_NONE;
 644:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_RESET;
 645:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_RESET;
 646:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 647:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 648:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 649:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
 650:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 651:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 652:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 653:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Initialize the UART MSP.
 654:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
 655:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
 656:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 657:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_MspInit(UART_HandleTypeDef *huart)
 658:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 659:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 660:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
 661:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 662:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 663:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_MspInit can be implemented in the user file
 664:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
 665:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 666:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 667:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 668:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief DeInitialize the UART MSP.
 669:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
 670:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
 671:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 672:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_MspDeInit(UART_HandleTypeDef *huart)
 673:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 674:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 675:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
 676:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 677:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 678:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_MspDeInit can be implemented in the user file
 679:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
 680:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 681:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 682:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
 683:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 684:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Register a User UART Callback
 685:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         To be used instead of the weak predefined callback
 686:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart uart handle
 687:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  CallbackID ID of the callback to be registered
 688:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This parameter can be one of the following values:
 689:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_TX_HALFCOMPLETE_CB_ID Tx Half Complete Callback ID
 690:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_TX_COMPLETE_CB_ID Tx Complete Callback ID
 691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_RX_HALFCOMPLETE_CB_ID Rx Half Complete Callback ID
 692:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_RX_COMPLETE_CB_ID Rx Complete Callback ID
 693:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ERROR_CB_ID Error Callback ID
 694:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ABORT_COMPLETE_CB_ID Abort Complete Callback ID
 695:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ABORT_TRANSMIT_COMPLETE_CB_ID Abort Transmit Complete Callback ID
 696:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ABORT_RECEIVE_COMPLETE_CB_ID Abort Receive Complete Callback ID
 697:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_WAKEUP_CB_ID Wakeup Callback ID
 698:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_RX_FIFO_FULL_CB_ID Rx Fifo Full Callback ID
 699:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_TX_FIFO_EMPTY_CB_ID Tx Fifo Empty Callback ID
 700:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_MSPINIT_CB_ID MspInit Callback ID
 701:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_MSPDEINIT_CB_ID MspDeInit Callback ID
 702:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  pCallback pointer to the Callback function
 703:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
 704:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 705:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_RegisterCallback(UART_HandleTypeDef *huart, HAL_UART_CallbackIDTypeDef C
 706:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                                             pUART_CallbackTypeDef pCallback)
 707:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 708:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_StatusTypeDef status = HAL_OK;
 709:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 710:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (pCallback == NULL)
 711:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 712:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode |= HAL_UART_ERROR_INVALID_CALLBACK;
 713:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 714:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_ERROR;
 715:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 716:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 717:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
 718:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 719:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_READY)
 720:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 721:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     switch (CallbackID)
 722:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 723:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_TX_HALFCOMPLETE_CB_ID :
 724:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxHalfCpltCallback = pCallback;
 725:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 726:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 727:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_TX_COMPLETE_CB_ID :
 728:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxCpltCallback = pCallback;
 729:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 730:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 731:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_RX_HALFCOMPLETE_CB_ID :
 732:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxHalfCpltCallback = pCallback;
 733:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 734:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 735:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_RX_COMPLETE_CB_ID :
 736:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxCpltCallback = pCallback;
 737:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 738:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 739:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ERROR_CB_ID :
 740:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCallback = pCallback;
 741:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 742:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 743:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ABORT_COMPLETE_CB_ID :
 744:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->AbortCpltCallback = pCallback;
 745:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 746:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 747:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ABORT_TRANSMIT_COMPLETE_CB_ID :
 748:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->AbortTransmitCpltCallback = pCallback;
 749:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 750:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 751:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ABORT_RECEIVE_COMPLETE_CB_ID :
 752:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->AbortReceiveCpltCallback = pCallback;
 753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 754:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 755:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_WAKEUP_CB_ID :
 756:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->WakeupCallback = pCallback;
 757:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 758:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_RX_FIFO_FULL_CB_ID :
 760:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxFifoFullCallback = pCallback;
 761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 762:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 763:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_TX_FIFO_EMPTY_CB_ID :
 764:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxFifoEmptyCallback = pCallback;
 765:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 766:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 767:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPINIT_CB_ID :
 768:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspInitCallback = pCallback;
 769:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 770:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 771:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPDEINIT_CB_ID :
 772:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspDeInitCallback = pCallback;
 773:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 774:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 775:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default :
 776:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCode |= HAL_UART_ERROR_INVALID_CALLBACK;
 777:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 778:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         status =  HAL_ERROR;
 779:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 780:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 781:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 782:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else if (huart->gState == HAL_UART_STATE_RESET)
 783:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     switch (CallbackID)
 785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 786:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPINIT_CB_ID :
 787:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspInitCallback = pCallback;
 788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 789:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 790:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPDEINIT_CB_ID :
 791:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspDeInitCallback = pCallback;
 792:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 793:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 794:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default :
 795:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCode |= HAL_UART_ERROR_INVALID_CALLBACK;
 796:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 797:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         status =  HAL_ERROR;
 798:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 799:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 800:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 801:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
 802:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 803:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode |= HAL_UART_ERROR_INVALID_CALLBACK;
 804:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 805:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     status =  HAL_ERROR;
 806:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 807:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 808:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 809:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 810:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return status;
 811:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 812:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 814:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Unregister an UART Callback
 815:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         UART callaback is redirected to the weak predefined callback
 816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart uart handle
 817:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  CallbackID ID of the callback to be unregistered
 818:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This parameter can be one of the following values:
 819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_TX_HALFCOMPLETE_CB_ID Tx Half Complete Callback ID
 820:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_TX_COMPLETE_CB_ID Tx Complete Callback ID
 821:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_RX_HALFCOMPLETE_CB_ID Rx Half Complete Callback ID
 822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_RX_COMPLETE_CB_ID Rx Complete Callback ID
 823:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ERROR_CB_ID Error Callback ID
 824:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ABORT_COMPLETE_CB_ID Abort Complete Callback ID
 825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ABORT_TRANSMIT_COMPLETE_CB_ID Abort Transmit Complete Callback ID
 826:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_ABORT_RECEIVE_COMPLETE_CB_ID Abort Receive Complete Callback ID
 827:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_WAKEUP_CB_ID Wakeup Callback ID
 828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_RX_FIFO_FULL_CB_ID Rx Fifo Full Callback ID
 829:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_TX_FIFO_EMPTY_CB_ID Tx Fifo Empty Callback ID
 830:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_MSPINIT_CB_ID MspInit Callback ID
 831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           @arg @ref HAL_UART_MSPDEINIT_CB_ID MspDeInit Callback ID
 832:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
 833:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 834:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_UnRegisterCallback(UART_HandleTypeDef *huart, HAL_UART_CallbackIDTypeDef
 835:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 836:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_StatusTypeDef status = HAL_OK;
 837:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 838:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
 839:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 840:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_UART_STATE_READY == huart->gState)
 841:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     switch (CallbackID)
 843:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 844:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_TX_HALFCOMPLETE_CB_ID :
 845:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxHalfCpltCallback = HAL_UART_TxHalfCpltCallback;               /* Legacy weak  TxHa
 846:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 847:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 848:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_TX_COMPLETE_CB_ID :
 849:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxCpltCallback = HAL_UART_TxCpltCallback;                       /* Legacy weak TxCpl
 850:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 851:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 852:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_RX_HALFCOMPLETE_CB_ID :
 853:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxHalfCpltCallback = HAL_UART_RxHalfCpltCallback;               /* Legacy weak RxHal
 854:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 855:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_RX_COMPLETE_CB_ID :
 857:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxCpltCallback = HAL_UART_RxCpltCallback;                       /* Legacy weak RxCpl
 858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 859:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ERROR_CB_ID :
 861:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCallback = HAL_UART_ErrorCallback;                         /* Legacy weak Error
 862:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 863:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 864:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ABORT_COMPLETE_CB_ID :
 865:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->AbortCpltCallback = HAL_UART_AbortCpltCallback;                 /* Legacy weak Abort
 866:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 867:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 868:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ABORT_TRANSMIT_COMPLETE_CB_ID :
 869:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->AbortTransmitCpltCallback = HAL_UART_AbortTransmitCpltCallback; /* Legacy weak Abort
 870:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 871:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 872:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_ABORT_RECEIVE_COMPLETE_CB_ID :
 873:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->AbortReceiveCpltCallback = HAL_UART_AbortReceiveCpltCallback;   /* Legacy weak Abort
 874:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 875:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 876:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_WAKEUP_CB_ID :
 877:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->WakeupCallback = HAL_UARTEx_WakeupCallback;                     /* Legacy weak Wakeu
 878:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 879:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 880:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_RX_FIFO_FULL_CB_ID :
 881:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxFifoFullCallback = HAL_UARTEx_RxFifoFullCallback;             /* Legacy weak RxFif
 882:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 883:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 884:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_TX_FIFO_EMPTY_CB_ID :
 885:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxFifoEmptyCallback = HAL_UARTEx_TxFifoEmptyCallback;           /* Legacy weak TxFif
 886:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 887:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPINIT_CB_ID :
 889:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspInitCallback = HAL_UART_MspInit;                             /* Legacy weak MspIn
 890:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 891:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 892:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPDEINIT_CB_ID :
 893:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspDeInitCallback = HAL_UART_MspDeInit;                         /* Legacy weak MspDe
 894:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 895:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default :
 897:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCode |= HAL_UART_ERROR_INVALID_CALLBACK;
 898:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         status =  HAL_ERROR;
 900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 901:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 902:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else if (HAL_UART_STATE_RESET == huart->gState)
 904:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 905:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     switch (CallbackID)
 906:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 907:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPINIT_CB_ID :
 908:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspInitCallback = HAL_UART_MspInit;
 909:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 910:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case HAL_UART_MSPDEINIT_CB_ID :
 912:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->MspDeInitCallback = HAL_UART_MspDeInit;
 913:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 914:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 915:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default :
 916:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCode |= HAL_UART_ERROR_INVALID_CALLBACK;
 917:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 918:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         status =  HAL_ERROR;
 919:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 920:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 921:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 922:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
 923:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 924:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode |= HAL_UART_ERROR_INVALID_CALLBACK;
 925:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 926:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     status =  HAL_ERROR;
 927:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 928:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 929:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 930:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 931:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return status;
 932:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 933:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 934:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 935:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 936:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @}
 937:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
 938:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 939:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART_Exported_Functions_Group2 IO operation functions
 940:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief UART Transmit/Receive functions
 941:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
 942:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @verbatim
 943:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****  ===============================================================================
 944:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                       ##### IO operation functions #####
 945:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****  ===============================================================================
 946:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     This subsection provides a set of functions allowing to manage the UART asynchronous
 947:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     and Half duplex data transfers.
 948:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 949:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) There are two mode of transfer:
 950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        (+) Blocking mode: The communication is performed in polling mode.
 951:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            The HAL status of all data processing is returned by the same function
 952:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            after finishing transfer.
 953:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        (+) Non-Blocking mode: The communication is performed using Interrupts
 954:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            or DMA, These API's return the HAL status.
 955:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            The end of the data processing will be indicated through the
 956:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            dedicated UART IRQ when using Interrupt mode or the DMA IRQ when
 957:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            using DMA mode.
 958:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            The HAL_UART_TxCpltCallback(), HAL_UART_RxCpltCallback() user callbacks
 959:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            will be executed respectively at the end of the transmit or Receive process
 960:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            The HAL_UART_ErrorCallback()user callback will be executed when a communication error is
 961:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 962:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) Blocking mode API's are :
 963:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Transmit()
 964:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Receive()
 965:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 966:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) Non-Blocking mode API's with Interrupt are :
 967:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Transmit_IT()
 968:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Receive_IT()
 969:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_IRQHandler()
 970:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 971:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) Non-Blocking mode API's with DMA are :
 972:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Transmit_DMA()
 973:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Receive_DMA()
 974:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_DMAPause()
 975:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_DMAResume()
 976:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_DMAStop()
 977:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 978:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) A set of Transfer Complete Callbacks are provided in Non_Blocking mode:
 979:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_TxHalfCpltCallback()
 980:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_TxCpltCallback()
 981:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_RxHalfCpltCallback()
 982:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_RxCpltCallback()
 983:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_ErrorCallback()
 984:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 985:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) Non-Blocking mode transfers could be aborted using Abort API's :
 986:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Abort()
 987:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_AbortTransmit()
 988:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_AbortReceive()
 989:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_Abort_IT()
 990:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_AbortTransmit_IT()
 991:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_AbortReceive_IT()
 992:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 993:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) For Abort services based on interrupts (HAL_UART_Abortxxx_IT), a set of Abort Complete Call
 994:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_AbortCpltCallback()
 995:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_AbortTransmitCpltCallback()
 996:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         (+) HAL_UART_AbortReceiveCpltCallback()
 997:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 998:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     (#) In Non-Blocking mode transfers, possible errors are split into 2 categories.
 999:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         Errors are handled as follows :
1000:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        (+) Error is considered as Recoverable and non blocking : Transfer could go till end, but er
1001:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            to be evaluated by user : this concerns Frame Error, Parity Error or Noise Error in Inte
1002:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            Received character is then retrieved and stored in Rx buffer, Error code is set to allow
1003:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            and HAL_UART_ErrorCallback() user callback is executed. Transfer is kept ongoing on UART
1004:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            If user wants to abort it, Abort services should be called by user.
1005:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        (+) Error is considered as Blocking : Transfer could not be completed properly and is aborte
1006:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            This concerns Overrun Error In Interrupt mode reception and all errors in DMA mode.
1007:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            Error code is set to allow user to identify error type, and HAL_UART_ErrorCallback() use
1008:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1009:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     -@- In the Half duplex communication, it is forbidden to run the transmit
1010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         and receive process in parallel, the UART state HAL_UART_STATE_BUSY_TX_RX can't be useful.
1011:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1012:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @endverbatim
1013:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
1014:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1015:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1016:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1017:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Send an amount of data in blocking mode.
1018:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When UART parity is not enabled (PCE = 0), and Word Length is configured to 9 bits (M1-
1019:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         the sent data is handled as a set of u16. In this case, Size must indicate the number
1020:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         of u16 provided through pData.
1021:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note When FIFO mode is enabled, writing a data in the TDR register adds one
1022:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *       data to the TXFIFO. Write operations to the TDR register are performed
1023:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *       when TXFNF flag is set. From hardware perspective, TXFNF flag and
1024:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *       TXE are mapped on the same bit-field.
1025:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart   UART handle.
1026:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param pData   Pointer to data buffer (u8 or u16 data elements).
1027:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Size    Amount of data elements (u8 or u16) to be sent.
1028:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Timeout Timeout duration.
1029:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1030:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1031:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint3
1032:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1033:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
1034:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *pdata16bits;
1035:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
1036:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1037:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
1038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_READY)
1039:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1040:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((pData == NULL) || (Size == 0U))
1041:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1042:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return  HAL_ERROR;
1043:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1044:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1045:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_LOCK(huart);
1046:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1047:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1048:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
1049:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1050:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init tickstart for timeout managment*/
1051:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     tickstart = HAL_GetTick();
1052:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1053:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferSize  = Size;
1054:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
1055:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1056:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* In case of 9bits/No Parity transfer, pData needs to be handled as a uint16_t pointer */
1057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
1058:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1059:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata8bits  = NULL;
1060:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata16bits = (uint16_t *) pData;
1061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1062:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
1063:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1064:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata8bits  = pData;
1065:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata16bits = NULL;
1066:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1067:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1068:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     while (huart->TxXferCount > 0U)
1069:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1070:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
1071:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         return HAL_TIMEOUT;
1073:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1074:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (pdata8bits == NULL)
1075:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1076:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->Instance->TDR = (uint16_t)(*pdata16bits & 0x01FFU);
1077:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
1078:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1079:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1080:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1081:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->Instance->TDR = (uint8_t)(*pdata8bits & 0xFFU);
1082:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
1083:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1084:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->TxXferCount--;
1085:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1086:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1087:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
1088:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1089:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return HAL_TIMEOUT;
1090:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1091:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1092:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* At end of Tx process, restore huart->gState to Ready */
1093:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_READY;
1094:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1095:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UNLOCK(huart);
1096:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1097:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_OK;
1098:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1099:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
1100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1101:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_BUSY;
1102:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1103:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1104:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1105:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1106:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Receive an amount of data in blocking mode.
1107:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When UART parity is not enabled (PCE = 0), and Word Length is configured to 9 bits (M1-
1108:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         the received data is handled as a set of u16. In this case, Size must indicate the numb
1109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         of u16 available through pData.
1110:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note When FIFO mode is enabled, the RXFNE flag is set as long as the RXFIFO
1111:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *       is not empty. Read operations from the RDR register are performed when
1112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *       RXFNE flag is set. From hardware perspective, RXFNE flag and
1113:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *       RXNE are mapped on the same bit-field.
1114:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart   UART handle.
1115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param pData   Pointer to data buffer (u8 or u16 data elements).
1116:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Size    Amount of data elements (u8 or u16) to be received.
1117:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Timeout Timeout duration.
1118:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1119:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1120:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32
1121:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1122:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
1123:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *pdata16bits;
1124:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t uhMask;
1125:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
1126:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1127:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
1128:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_READY)
1129:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1130:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((pData == NULL) || (Size == 0U))
1131:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1132:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return  HAL_ERROR;
1133:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1134:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1135:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_LOCK(huart);
1136:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1137:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1138:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
1139:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1140:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Init tickstart for timeout managment*/
1141:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     tickstart = HAL_GetTick();
1142:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1143:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferSize  = Size;
1144:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = Size;
1145:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1146:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Computation of UART mask to apply to RDR register */
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_MASK_COMPUTATION(huart);
1148:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
1149:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1150:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* In case of 9bits/No Parity transfer, pRxData needs to be handled as a uint16_t pointer */
1151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
1152:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1153:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata8bits  = NULL;
1154:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata16bits = (uint16_t *) pData;
1155:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1156:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
1157:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1158:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata8bits  = pData;
1159:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata16bits = NULL;
1160:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1161:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1162:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* as long as data have to be received */
1163:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     while (huart->RxXferCount > 0U)
1164:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1165:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
1166:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1167:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         return HAL_TIMEOUT;
1168:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1169:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (pdata8bits == NULL)
1170:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1171:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         *pdata16bits = (uint16_t)(huart->Instance->RDR & uhMask);
1172:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
1173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1174:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1175:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1176:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         *pdata8bits = (uint8_t)(huart->Instance->RDR & (uint8_t)uhMask);
1177:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
1178:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount--;
1180:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1181:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1182:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* At end of Rx process, restore huart->RxState to Ready */
1183:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
1184:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1185:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UNLOCK(huart);
1186:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1187:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_OK;
1188:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1189:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
1190:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1191:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_BUSY;
1192:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1193:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1194:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1195:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1196:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Send an amount of data in interrupt mode.
1197:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When UART parity is not enabled (PCE = 0), and Word Length is configured to 9 bits (M1-
1198:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         the sent data is handled as a set of u16. In this case, Size must indicate the number
1199:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         of u16 provided through pData.
1200:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
1201:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param pData Pointer to data buffer (u8 or u16 data elements).
1202:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Size  Amount of data elements (u8 or u16) to be sent.
1203:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1204:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1205:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
1206:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1207:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
1208:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_READY)
1209:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1210:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((pData == NULL) || (Size == 0U))
1211:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1212:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return HAL_ERROR;
1213:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1214:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1215:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_LOCK(huart);
1216:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->pTxBuffPtr  = pData;
1218:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferSize  = Size;
1219:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
1220:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxISR       = NULL;
1221:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1222:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1223:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
1224:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Configure Tx interrupt processing */
1226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->FifoMode == UART_FIFOMODE_ENABLE)
1227:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1228:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the Tx ISR function pointer according to the data word length */
1229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE
1230:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1231:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxISR = UART_TxISR_16BIT_FIFOEN;
1232:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1233:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1234:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1235:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxISR = UART_TxISR_8BIT_FIFOEN;
1236:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1237:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1238:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UNLOCK(huart);
1239:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1240:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the TX FIFO threshold interrupt */
1241:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
1242:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1243:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
1244:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1245:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the Tx ISR function pointer according to the data word length */
1246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE
1247:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxISR = UART_TxISR_16BIT;
1249:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1250:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1251:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1252:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxISR = UART_TxISR_8BIT;
1253:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1254:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1255:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UNLOCK(huart);
1256:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1257:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the Transmit Data Register Empty interrupt */
1258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_TXEIE_TXFNFIE);
1259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1260:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1261:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_OK;
1262:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1263:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
1264:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1265:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_BUSY;
1266:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1267:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1268:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1269:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1270:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Receive an amount of data in interrupt mode.
1271:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When UART parity is not enabled (PCE = 0), and Word Length is configured to 9 bits (M1-
1272:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         the received data is handled as a set of u16. In this case, Size must indicate the numb
1273:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         of u16 available through pData.
1274:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
1275:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param pData Pointer to data buffer (u8 or u16 data elements).
1276:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Size  Amount of data elements (u8 or u16) to be received.
1277:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1278:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1279:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
1280:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
1282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_READY)
1283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((pData == NULL) || (Size == 0U))
1285:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1286:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return HAL_ERROR;
1287:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1288:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1289:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_LOCK(huart);
1290:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1291:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->pRxBuffPtr  = pData;
1292:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferSize  = Size;
1293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = Size;
1294:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxISR       = NULL;
1295:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1296:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Computation of UART mask to apply to RDR register */
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_MASK_COMPUTATION(huart);
1298:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1299:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1300:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
1301:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1302:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the UART Error Interrupt: (Frame error, noise error, overrun error) */
1303:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
1304:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1305:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Configure Rx interrupt processing*/
1306:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((huart->FifoMode == UART_FIFOMODE_ENABLE) && (Size >= huart->NbRxDataToProcess))
1307:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1308:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the Rx ISR function pointer according to the data word length */
1309:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE
1310:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1311:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxISR = UART_RxISR_16BIT_FIFOEN;
1312:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1313:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1315:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxISR = UART_RxISR_8BIT_FIFOEN;
1316:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1317:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1318:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UNLOCK(huart);
1319:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1320:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the UART Parity Error interrupt and RX FIFO Threshold interrupt */
1321:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1322:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR3, USART_CR3_RXFTIE);
1323:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1324:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
1325:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1326:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the Rx ISR function pointer according to the data word length */
1327:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE
1328:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1329:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxISR = UART_RxISR_16BIT;
1330:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1331:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1332:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1333:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxISR = UART_RxISR_8BIT;
1334:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1335:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1336:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UNLOCK(huart);
1337:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1338:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the UART Parity Error interrupt and Data Register Not Empty interrupt */
1339:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_PEIE | USART_CR1_RXNEIE_RXFNEIE);
1340:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1341:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1342:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_OK;
1343:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1344:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
1345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1346:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_BUSY;
1347:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1348:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1349:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1350:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1351:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Send an amount of data in DMA mode.
1352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When UART parity is not enabled (PCE = 0), and Word Length is configured to 9 bits (M1-
1353:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         the sent data is handled as a set of u16. In this case, Size must indicate the number
1354:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         of u16 provided through pData.
1355:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
1356:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param pData Pointer to data buffer (u8 or u16 data elements).
1357:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Size  Amount of data elements (u8 or u16) to be sent.
1358:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1359:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1360:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
1361:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1362:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
1363:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_READY)
1364:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1365:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((pData == NULL) || (Size == 0U))
1366:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return HAL_ERROR;
1368:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1369:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1370:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_LOCK(huart);
1371:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1372:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->pTxBuffPtr  = pData;
1373:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferSize  = Size;
1374:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
1375:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1376:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1377:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
1378:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmatx != NULL)
1380:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1381:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA transfer complete callback */
1382:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferCpltCallback = UART_DMATransmitCplt;
1383:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1384:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Half transfer complete callback */
1385:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferHalfCpltCallback = UART_DMATxHalfCplt;
1386:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1387:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the DMA error callback */
1388:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferErrorCallback = UART_DMAError;
1389:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1390:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the DMA abort callback */
1391:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferAbortCallback = NULL;
1392:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1393:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the UART transmit DMA channel */
1394:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Start_IT(huart->hdmatx, (uint32_t)huart->pTxBuffPtr, (uint32_t)&huart->Instance->
1395:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1396:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Set error code to DMA */
1397:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCode = HAL_UART_ERROR_DMA;
1398:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1399:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         __HAL_UNLOCK(huart);
1400:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1401:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Restore huart->gState to ready */
1402:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->gState = HAL_UART_STATE_READY;
1403:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1404:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         return HAL_ERROR;
1405:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1406:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1407:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear the TC flag in the ICR register */
1408:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_TCF);
1409:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1410:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UNLOCK(huart);
1411:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1412:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the DMA transfer for transmit request by setting the DMAT bit
1413:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     in the UART CR3 register */
1414:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1415:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1416:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_OK;
1417:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1418:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
1419:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1420:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_BUSY;
1421:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1422:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1423:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1424:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1425:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Receive an amount of data in DMA mode.
1426:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When the UART parity is enabled (PCE = 1), the received data contain
1427:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         the parity bit (MSB position).
1428:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When UART parity is not enabled (PCE = 0), and Word Length is configured to 9 bits (M1-
1429:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         the received data is handled as a set of u16. In this case, Size must indicate the numb
1430:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         of u16 available through pData.
1431:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
1432:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param pData Pointer to data buffer (u8 or u16 data elements).
1433:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Size  Amount of data elements (u8 or u16) to be received.
1434:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1435:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1436:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
1437:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1438:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
1439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_READY)
1440:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1441:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((pData == NULL) || (Size == 0U))
1442:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1443:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return HAL_ERROR;
1444:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1445:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1446:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_LOCK(huart);
1447:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1448:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->pRxBuffPtr = pData;
1449:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferSize = Size;
1450:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1451:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1452:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
1453:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1454:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmarx != NULL)
1455:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1456:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA transfer complete callback */
1457:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferCpltCallback = UART_DMAReceiveCplt;
1458:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1459:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Half transfer complete callback */
1460:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferHalfCpltCallback = UART_DMARxHalfCplt;
1461:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1462:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the DMA error callback */
1463:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferErrorCallback = UART_DMAError;
1464:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1465:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the DMA abort callback */
1466:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferAbortCallback = NULL;
1467:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1468:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the DMA channel */
1469:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Start_IT(huart->hdmarx, (uint32_t)&huart->Instance->RDR, (uint32_t)huart->pRxBuff
1470:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1471:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Set error code to DMA */
1472:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCode = HAL_UART_ERROR_DMA;
1473:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1474:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         __HAL_UNLOCK(huart);
1475:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1476:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Restore huart->gState to ready */
1477:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->gState = HAL_UART_STATE_READY;
1478:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1479:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         return HAL_ERROR;
1480:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1481:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1482:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UNLOCK(huart);
1483:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1484:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the UART Parity Error Interrupt */
1485:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1486:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1487:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the UART Error Interrupt: (Frame error, noise error, overrun error) */
1488:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
1489:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1490:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the DMA transfer for the receiver request by setting the DMAR bit
1491:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     in the UART CR3 register */
1492:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1493:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1494:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_OK;
1495:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1496:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
1497:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1498:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return HAL_BUSY;
1499:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1500:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1501:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1502:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1503:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Pause the DMA Transfer.
1504:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
1505:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1506:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1507:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart)
1508:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1509:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef gstate = huart->gState;
1510:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
1511:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
1513:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1514:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)) &&
1515:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
1516:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1517:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Disable the UART DMA Tx request */
1518:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1519:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1520:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) &&
1521:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
1522:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1523:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Disable PE and ERR (Frame error, noise error, overrun error) interrupts */
1524:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1525:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
1526:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1527:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Disable the UART DMA Rx request */
1528:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1529:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1530:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1531:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
1532:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1533:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
1534:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1535:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1536:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1537:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Resume the DMA Transfer.
1538:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
1539:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1540:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1541:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart)
1542:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1543:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
1544:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1545:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_BUSY_TX)
1546:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1547:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the UART DMA Tx request */
1548:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1549:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1550:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_BUSY_RX)
1551:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1552:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear the Overrun flag before resuming the Rx transfer */
1553:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF);
1554:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1555:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Reenable PE and ERR (Frame error, noise error, overrun error) interrupts */
1556:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1557:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
1558:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1559:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the UART DMA Rx request */
1560:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1561:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1562:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1563:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
1564:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1565:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
1566:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1568:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1569:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Stop the DMA Transfer.
1570:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
1571:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1573:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart)
1574:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1575:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* The Lock is not implemented on this API to allow the user application
1576:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      to call the HAL UART API under callbacks HAL_UART_TxCpltCallback() / HAL_UART_RxCpltCallback()
1577:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      HAL_UART_TxHalfCpltCallback / HAL_UART_RxHalfCpltCallback:
1578:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      indeed, when HAL_DMA_Abort() API is called, the DMA TX/RX Transfer or Half Transfer complete
1579:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      interrupt is generated if the DMA transfer interruption occurs at the middle or at the end of
1580:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      the stream and the corresponding call back is executed. */
1581:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1582:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef gstate = huart->gState;
1583:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
1584:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1585:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Stop UART DMA Tx request if ongoing */
1586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)) &&
1587:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
1588:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1589:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1590:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1591:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Tx channel */
1592:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmatx != NULL)
1593:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort(huart->hdmatx) != HAL_OK)
1595:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1596:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (HAL_DMA_GetError(huart->hdmatx) == HAL_DMA_ERROR_TIMEOUT)
1597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
1598:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Set error code to DMA */
1599:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->ErrorCode = HAL_UART_ERROR_DMA;
1600:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1601:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           return HAL_TIMEOUT;
1602:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
1603:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1604:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1605:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1606:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndTxTransfer(huart);
1607:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1608:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1609:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Stop UART DMA Rx request if ongoing */
1610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) &&
1611:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
1612:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1613:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1614:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Rx channel */
1616:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmarx != NULL)
1617:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1618:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort(huart->hdmarx) != HAL_OK)
1619:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (HAL_DMA_GetError(huart->hdmarx) == HAL_DMA_ERROR_TIMEOUT)
1621:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
1622:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Set error code to DMA */
1623:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->ErrorCode = HAL_UART_ERROR_DMA;
1624:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1625:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           return HAL_TIMEOUT;
1626:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
1627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1628:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1629:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1630:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndRxTransfer(huart);
1631:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1632:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1633:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
1634:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1635:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1636:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1637:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Abort ongoing transfers (blocking mode).
1638:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
1639:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure could be used for aborting any ongoing transfer started in Interrupt or 
1640:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This procedure performs following operations :
1641:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable UART Interrupts (Tx and Rx)
1642:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
1643:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort (in case of transfer in DMA mode)
1644:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Set handle State to READY
1645:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure is executed in blocking mode : when exiting function, Abort is considere
1646:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1647:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1648:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Abort(UART_HandleTypeDef *huart)
1649:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1650:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TXE, TC, RXNE, PE, RXFT, TXFT and ERR (Frame error, noise error, overrun error) interr
1651:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE | USART_CR1_TXEIE_TXFN
1652:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE | USART_CR3_RXFTIE | USART_CR3_TXFTIE);
1653:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1654:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Tx request if enabled */
1655:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT))
1656:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1657:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1658:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1659:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Tx channel : use blocking DMA Abort API (no callback) */
1660:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmatx != NULL)
1661:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1662:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Abort callback to Null.
1663:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          No call back execution at end of DMA abort procedure */
1664:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferAbortCallback = NULL;
1665:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1666:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort(huart->hdmatx) != HAL_OK)
1667:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1668:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (HAL_DMA_GetError(huart->hdmatx) == HAL_DMA_ERROR_TIMEOUT)
1669:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
1670:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Set error code to DMA */
1671:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->ErrorCode = HAL_UART_ERROR_DMA;
1672:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1673:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           return HAL_TIMEOUT;
1674:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
1675:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1676:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1677:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1678:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1679:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Rx request if enabled */
1680:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR))
1681:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1682:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1683:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1684:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Rx channel : use blocking DMA Abort API (no callback) */
1685:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmarx != NULL)
1686:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1687:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Abort callback to Null.
1688:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          No call back execution at end of DMA abort procedure */
1689:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferAbortCallback = NULL;
1690:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort(huart->hdmarx) != HAL_OK)
1692:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1693:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (HAL_DMA_GetError(huart->hdmarx) == HAL_DMA_ERROR_TIMEOUT)
1694:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
1695:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Set error code to DMA */
1696:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->ErrorCode = HAL_UART_ERROR_DMA;
1697:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1698:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           return HAL_TIMEOUT;
1699:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
1700:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1701:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1702:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1703:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1704:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Reset Tx and Rx transfer counters */
1705:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
1706:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
1707:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1708:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear the Error flags in the ICR register */
1709:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_FEF);
1710:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1711:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Flush the whole TX FIFO (if needed) */
1712:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->FifoMode == UART_FIFOMODE_ENABLE)
1713:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1714:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_TXDATA_FLUSH_REQUEST);
1715:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1716:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1717:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Discard the received data */
1718:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
1719:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1720:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Restore huart->gState and huart->RxState to Ready */
1721:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState  = HAL_UART_STATE_READY;
1722:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
1723:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1724:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCode = HAL_UART_ERROR_NONE;
1725:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1726:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
1727:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1728:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1729:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1730:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Abort ongoing Transmit transfer (blocking mode).
1731:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
1732:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure could be used for aborting any ongoing Tx transfer started in Interrupt 
1733:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This procedure performs following operations :
1734:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable UART Interrupts (Tx)
1735:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
1736:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort (in case of transfer in DMA mode)
1737:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Set handle State to READY
1738:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure is executed in blocking mode : when exiting function, Abort is considere
1739:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1740:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1741:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_AbortTransmit(UART_HandleTypeDef *huart)
1742:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1743:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TCIE, TXEIE and TXFTIE interrupts */
1744:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TCIE | USART_CR1_TXEIE_TXFNFIE));
1745:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
1746:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1747:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Tx request if enabled */
1748:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT))
1749:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1750:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1751:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1752:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Tx channel : use blocking DMA Abort API (no callback) */
1753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmatx != NULL)
1754:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1755:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Abort callback to Null.
1756:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          No call back execution at end of DMA abort procedure */
1757:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferAbortCallback = NULL;
1758:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort(huart->hdmatx) != HAL_OK)
1760:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (HAL_DMA_GetError(huart->hdmatx) == HAL_DMA_ERROR_TIMEOUT)
1762:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
1763:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Set error code to DMA */
1764:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->ErrorCode = HAL_UART_ERROR_DMA;
1765:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1766:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           return HAL_TIMEOUT;
1767:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
1768:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1769:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1770:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1771:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1772:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Reset Tx transfer counter */
1773:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
1774:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1775:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Flush the whole TX FIFO (if needed) */
1776:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->FifoMode == UART_FIFOMODE_ENABLE)
1777:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1778:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_TXDATA_FLUSH_REQUEST);
1779:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1780:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1781:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Restore huart->gState to Ready */
1782:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
1783:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
1785:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1786:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1787:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Abort ongoing Receive transfer (blocking mode).
1789:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
1790:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure could be used for aborting any ongoing Rx transfer started in Interrupt 
1791:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This procedure performs following operations :
1792:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable UART Interrupts (Rx)
1793:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
1794:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort (in case of transfer in DMA mode)
1795:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Set handle State to READY
1796:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure is executed in blocking mode : when exiting function, Abort is considere
1797:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1798:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1799:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_AbortReceive(UART_HandleTypeDef *huart)
1800:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1801:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable PEIE, EIE, RXNEIE and RXFTIE interrupts */
1802:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_PEIE | USART_CR1_RXNEIE_RXFNEIE));
1803:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE | USART_CR3_RXFTIE);
1804:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1805:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Rx request if enabled */
1806:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR))
1807:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1808:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1809:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1810:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Rx channel : use blocking DMA Abort API (no callback) */
1811:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmarx != NULL)
1812:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1813:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Abort callback to Null.
1814:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          No call back execution at end of DMA abort procedure */
1815:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferAbortCallback = NULL;
1816:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1817:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort(huart->hdmarx) != HAL_OK)
1818:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (HAL_DMA_GetError(huart->hdmarx) == HAL_DMA_ERROR_TIMEOUT)
1820:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
1821:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Set error code to DMA */
1822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->ErrorCode = HAL_UART_ERROR_DMA;
1823:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1824:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           return HAL_TIMEOUT;
1825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
1826:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1827:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1829:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1830:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Reset Rx transfer counter */
1831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
1832:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1833:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear the Error flags in the ICR register */
1834:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_FEF);
1835:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1836:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Discard the received data */
1837:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
1838:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1839:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Restore huart->RxState to Ready */
1840:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
1841:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
1843:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1844:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1845:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1846:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Abort ongoing transfers (Interrupt mode).
1847:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
1848:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure could be used for aborting any ongoing transfer started in Interrupt or 
1849:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This procedure performs following operations :
1850:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable UART Interrupts (Tx and Rx)
1851:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
1852:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort_IT (in case of transfer in DMA mode)
1853:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Set handle State to READY
1854:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - At abort completion, call user abort complete callback
1855:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure is executed in Interrupt mode, meaning that abort procedure could be
1856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         considered as completed only when user abort complete callback is executed (not when ex
1857:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
1858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
1859:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Abort_IT(UART_HandleTypeDef *huart)
1860:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
1861:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t abortcplt = 1U;
1862:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable interrupts */
1864:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_PEIE | USART_CR1_TCIE | USART_CR1_RXNEIE_RXFNEIE | USA
1865:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE | USART_CR3_TXFTIE));
1866:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1867:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* If DMA Tx and/or DMA Rx Handles are associated to UART Handle, DMA Abort complete callbacks sh
1868:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      before any call to DMA Abort functions */
1869:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* DMA Tx Handle is valid */
1870:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->hdmatx != NULL)
1871:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1872:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Set DMA Abort Complete callback if UART DMA Tx request if enabled.
1873:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        Otherwise, set it to NULL */
1874:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT))
1875:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1876:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferAbortCallback = UART_DMATxAbortCallback;
1877:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1878:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
1879:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1880:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferAbortCallback = NULL;
1881:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1882:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* DMA Rx Handle is valid */
1884:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->hdmarx != NULL)
1885:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1886:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Set DMA Abort Complete callback if UART DMA Rx request if enabled.
1887:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        Otherwise, set it to NULL */
1888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR))
1889:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1890:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferAbortCallback = UART_DMARxAbortCallback;
1891:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1892:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
1893:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1894:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferAbortCallback = NULL;
1895:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1897:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1898:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Tx request if enabled */
1899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT))
1900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1901:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Disable DMA Tx at UART level */
1902:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1903:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1904:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Tx channel : use non blocking DMA Abort API (callback) */
1905:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmatx != NULL)
1906:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1907:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* UART Tx DMA Abort callback has already been initialised :
1908:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          will lead to call HAL_UART_AbortCpltCallback() at end of DMA abort procedure */
1909:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1910:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Abort DMA TX */
1911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort_IT(huart->hdmatx) != HAL_OK)
1912:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1913:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->hdmatx->XferAbortCallback = NULL;
1914:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1915:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1916:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1917:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         abortcplt = 0U;
1918:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1919:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1920:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1921:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1922:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Rx request if enabled */
1923:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR))
1924:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1925:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1926:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1927:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Rx channel : use non blocking DMA Abort API (callback) */
1928:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmarx != NULL)
1929:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1930:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* UART Rx DMA Abort callback has already been initialised :
1931:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          will lead to call HAL_UART_AbortCpltCallback() at end of DMA abort procedure */
1932:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1933:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Abort DMA RX */
1934:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort_IT(huart->hdmarx) != HAL_OK)
1935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1936:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->hdmarx->XferAbortCallback = NULL;
1937:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         abortcplt = 1U;
1938:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
1940:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
1941:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         abortcplt = 0U;
1942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
1943:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1944:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1945:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1946:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if no DMA abort complete callback execution is required => call user Abort Complete callback *
1947:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (abortcplt == 1U)
1948:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
1949:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Reset Tx and Rx transfer counters */
1950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = 0U;
1951:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = 0U;
1952:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1953:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear ISR function pointers */
1954:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxISR = NULL;
1955:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxISR = NULL;
1956:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1957:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Reset errorCode */
1958:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1959:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1960:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear the Error flags in the ICR register */
1961:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_FEF
1962:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1963:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Flush the whole TX FIFO (if needed) */
1964:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->FifoMode == UART_FIFOMODE_ENABLE)
1965:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
1966:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_SEND_REQ(huart, UART_TXDATA_FLUSH_REQUEST);
1967:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
1968:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1969:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Discard the received data */
1970:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
1971:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1972:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Restore huart->gState and huart->RxState to Ready */
1973:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState  = HAL_UART_STATE_READY;
1974:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
1975:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1976:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* As no DMA to be aborted, call directly user Abort complete callback */
1977:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
1978:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call registered Abort complete callback */
1979:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->AbortCpltCallback(huart);
1980:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
1981:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call legacy weak Abort complete callback */
1982:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_AbortCpltCallback(huart);
1983:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
1984:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
1985:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1986:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
1987:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
1988:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
1989:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
1990:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Abort ongoing Transmit transfer (Interrupt mode).
1991:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
1992:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure could be used for aborting any ongoing Tx transfer started in Interrupt 
1993:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This procedure performs following operations :
1994:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable UART Interrupts (Tx)
1995:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
1996:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort_IT (in case of transfer in DMA mode)
1997:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Set handle State to READY
1998:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - At abort completion, call user abort complete callback
1999:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure is executed in Interrupt mode, meaning that abort procedure could be
2000:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         considered as completed only when user abort complete callback is executed (not when ex
2001:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
2002:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2003:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_AbortTransmit_IT(UART_HandleTypeDef *huart)
2004:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2005:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable interrupts */
2006:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TCIE | USART_CR1_TXEIE_TXFNFIE));
2007:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
2008:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2009:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Tx request if enabled */
2010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT))
2011:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2012:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
2013:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2014:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Tx channel : use non blocking DMA Abort API (callback) */
2015:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmatx != NULL)
2016:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2017:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Abort callback :
2018:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          will lead to call HAL_UART_AbortCpltCallback() at end of DMA abort procedure */
2019:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmatx->XferAbortCallback = UART_DMATxOnlyAbortCallback;
2020:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2021:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Abort DMA TX */
2022:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort_IT(huart->hdmatx) != HAL_OK)
2023:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2024:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Call Directly huart->hdmatx->XferAbortCallback function in case of error */
2025:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->hdmatx->XferAbortCallback(huart->hdmatx);
2026:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
2027:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2028:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
2029:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2030:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Reset Tx transfer counter */
2031:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->TxXferCount = 0U;
2032:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2033:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Clear TxISR function pointers */
2034:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->TxISR = NULL;
2035:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2036:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Restore huart->gState to Ready */
2037:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->gState = HAL_UART_STATE_READY;
2038:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2039:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* As no DMA to be aborted, call directly user Abort complete callback */
2040:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2041:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Call registered Abort Transmit Complete Callback */
2042:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->AbortTransmitCpltCallback(huart);
2043:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2044:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Call legacy weak Abort Transmit Complete Callback */
2045:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       HAL_UART_AbortTransmitCpltCallback(huart);
2046:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2047:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2048:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2049:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
2050:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2051:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Reset Tx transfer counter */
2052:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = 0U;
2053:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2054:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear TxISR function pointers */
2055:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxISR = NULL;
2056:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Flush the whole TX FIFO (if needed) */
2058:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->FifoMode == UART_FIFOMODE_ENABLE)
2059:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2060:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_SEND_REQ(huart, UART_TXDATA_FLUSH_REQUEST);
2061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2062:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2063:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Restore huart->gState to Ready */
2064:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_READY;
2065:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2066:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* As no DMA to be aborted, call directly user Abort complete callback */
2067:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2068:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call registered Abort Transmit Complete Callback */
2069:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->AbortTransmitCpltCallback(huart);
2070:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2071:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call legacy weak Abort Transmit Complete Callback */
2072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_AbortTransmitCpltCallback(huart);
2073:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2074:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2075:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2076:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
2077:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2078:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2079:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2080:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Abort ongoing Receive transfer (Interrupt mode).
2081:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2082:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure could be used for aborting any ongoing Rx transfer started in Interrupt 
2083:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         This procedure performs following operations :
2084:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable UART Interrupts (Rx)
2085:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Disable the DMA transfer in the peripheral register (if enabled)
2086:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Abort DMA transfer by calling HAL_DMA_Abort_IT (in case of transfer in DMA mode)
2087:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - Set handle State to READY
2088:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *           - At abort completion, call user abort complete callback
2089:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   This procedure is executed in Interrupt mode, meaning that abort procedure could be
2090:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         considered as completed only when user abort complete callback is executed (not when ex
2091:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
2092:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2093:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_AbortReceive_IT(UART_HandleTypeDef *huart)
2094:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2095:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts */
2096:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_PEIE | USART_CR1_RXNEIE_RXFNEIE));
2097:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE));
2098:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2099:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART DMA Rx request if enabled */
2100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR))
2101:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2102:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
2103:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2104:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Abort the UART DMA Rx channel : use non blocking DMA Abort API (callback) */
2105:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmarx != NULL)
2106:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2107:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Set the UART DMA Abort callback :
2108:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          will lead to call HAL_UART_AbortCpltCallback() at end of DMA abort procedure */
2109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->hdmarx->XferAbortCallback = UART_DMARxOnlyAbortCallback;
2110:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2111:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Abort DMA RX */
2112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (HAL_DMA_Abort_IT(huart->hdmarx) != HAL_OK)
2113:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2114:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Call Directly huart->hdmarx->XferAbortCallback function in case of error */
2115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->hdmarx->XferAbortCallback(huart->hdmarx);
2116:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
2117:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2118:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
2119:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2120:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Reset Rx transfer counter */
2121:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount = 0U;
2122:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2123:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Clear RxISR function pointer */
2124:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr = NULL;
2125:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2126:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Clear the Error flags in the ICR register */
2127:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_F
2128:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2129:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Discard the received data */
2130:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
2131:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2132:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Restore huart->RxState to Ready */
2133:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxState = HAL_UART_STATE_READY;
2134:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2135:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* As no DMA to be aborted, call directly user Abort complete callback */
2136:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2137:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Call registered Abort Receive Complete Callback */
2138:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->AbortReceiveCpltCallback(huart);
2139:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2140:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Call legacy weak Abort Receive Complete Callback */
2141:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       HAL_UART_AbortReceiveCpltCallback(huart);
2142:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2143:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2144:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2145:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
2146:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Reset Rx transfer counter */
2148:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = 0U;
2149:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2150:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear RxISR function pointer */
2151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->pRxBuffPtr = NULL;
2152:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2153:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear the Error flags in the ICR register */
2154:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_FEF
2155:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2156:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Restore huart->RxState to Ready */
2157:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
2158:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2159:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* As no DMA to be aborted, call directly user Abort complete callback */
2160:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2161:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call registered Abort Receive Complete Callback */
2162:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->AbortReceiveCpltCallback(huart);
2163:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2164:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call legacy weak Abort Receive Complete Callback */
2165:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_AbortReceiveCpltCallback(huart);
2166:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2167:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2168:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2169:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
2170:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2171:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2172:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Handle UART interrupt request.
2174:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
2175:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2176:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2177:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** void HAL_UART_IRQHandler(UART_HandleTypeDef *huart)
2178:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t isrflags   = READ_REG(huart->Instance->ISR);
2180:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t cr1its     = READ_REG(huart->Instance->CR1);
2181:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t cr3its     = READ_REG(huart->Instance->CR3);
2182:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2183:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t errorflags;
2184:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t errorcode;
2185:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2186:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* If no error occurs */
2187:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   errorflags = (isrflags & (uint32_t)(USART_ISR_PE | USART_ISR_FE | USART_ISR_ORE | USART_ISR_NE));
2188:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (errorflags == 0U)
2189:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2190:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* UART in mode Receiver ---------------------------------------------------*/
2191:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (((isrflags & USART_ISR_RXNE_RXFNE) != 0U)
2192:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U)
2193:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             || ((cr3its & USART_CR3_RXFTIE) != 0U)))
2194:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2195:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (huart->RxISR != NULL)
2196:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2197:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxISR(huart);
2198:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
2199:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return;
2200:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2201:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2202:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2203:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* If some errors occur */
2204:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((errorflags != 0U)
2205:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       && ((((cr3its & (USART_CR3_RXFTIE | USART_CR3_EIE)) != 0U)
2206:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            || ((cr1its & (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE)) != 0U))))
2207:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2208:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* UART parity error interrupt occurred -------------------------------------*/
2209:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (((isrflags & USART_ISR_PE) != 0U) && ((cr1its & USART_CR1_PEIE) != 0U))
2210:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2211:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_PEF);
2212:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2213:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_PE;
2214:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2216:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* UART frame error interrupt occurred --------------------------------------*/
2217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (((isrflags & USART_ISR_FE) != 0U) && ((cr3its & USART_CR3_EIE) != 0U))
2218:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2219:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_FEF);
2220:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2221:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_FE;
2222:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2223:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2224:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* UART noise error interrupt occurred --------------------------------------*/
2225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (((isrflags & USART_ISR_NE) != 0U) && ((cr3its & USART_CR3_EIE) != 0U))
2226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2227:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_NEF);
2228:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_NE;
2230:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2231:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2232:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* UART Over-Run interrupt occurred -----------------------------------------*/
2233:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (((isrflags & USART_ISR_ORE) != 0U)
2234:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U) ||
2235:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             ((cr3its & (USART_CR3_RXFTIE | USART_CR3_EIE)) != 0U)))
2236:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2237:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF);
2238:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2239:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_ORE;
2240:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2241:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2242:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call UART Error Call back function if need be --------------------------*/
2243:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->ErrorCode != HAL_UART_ERROR_NONE)
2244:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2245:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* UART in mode Receiver ---------------------------------------------------*/
2246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (((isrflags & USART_ISR_RXNE_RXFNE) != 0U)
2247:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U)
2248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****               || ((cr3its & USART_CR3_RXFTIE) != 0U)))
2249:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2250:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (huart->RxISR != NULL)
2251:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
2252:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->RxISR(huart);
2253:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
2254:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
2255:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2256:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* If Overrun error occurs, or if any error occurs in DMA mode reception,
2257:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****          consider error as blocking */
2258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       errorcode = huart->ErrorCode;
2259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) ||
2260:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ((errorcode & HAL_UART_ERROR_ORE) != 0U))
2261:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2262:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Blocking error : transfer is aborted
2263:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            Set the UART state ready to be able to start again the process,
2264:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            Disable Rx Interrupts, and disable Rx DMA request, if ongoing */
2265:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         UART_EndRxTransfer(huart);
2266:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2267:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable the UART DMA Rx request if enabled */
2268:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR))
2269:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
2270:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
2271:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2272:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Abort the UART DMA Rx channel */
2273:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           if (huart->hdmarx != NULL)
2274:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           {
2275:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             /* Set the UART DMA Abort callback :
2276:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                will lead to call HAL_UART_ErrorCallback() at end of DMA abort procedure */
2277:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             huart->hdmarx->XferAbortCallback = UART_DMAAbortOnError;
2278:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2279:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             /* Abort DMA RX */
2280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             if (HAL_DMA_Abort_IT(huart->hdmarx) != HAL_OK)
2281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             {
2282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****               /* Call Directly huart->hdmarx->XferAbortCallback function in case of error */
2283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****               huart->hdmarx->XferAbortCallback(huart->hdmarx);
2284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             }
2285:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           }
2286:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           else
2287:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           {
2288:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             /* Call user error callback */
2289:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2290:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             /*Call registered error callback*/
2291:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             huart->ErrorCallback(huart);
2292:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             /*Call legacy weak error callback*/
2294:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             HAL_UART_ErrorCallback(huart);
2295:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2296:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2297:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           }
2298:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
2299:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         else
2300:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
2301:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /* Call user error callback */
2302:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2303:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /*Call registered error callback*/
2304:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->ErrorCallback(huart);
2305:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2306:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           /*Call legacy weak error callback*/
2307:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           HAL_UART_ErrorCallback(huart);
2308:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2309:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
2310:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
2311:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
2312:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2313:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Non Blocking error : transfer could go on.
2314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            Error is notified to user through user error callback */
2315:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2316:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /*Call registered error callback*/
2317:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCallback(huart);
2318:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2319:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /*Call legacy weak error callback*/
2320:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         HAL_UART_ErrorCallback(huart);
2321:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2322:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->ErrorCode = HAL_UART_ERROR_NONE;
2323:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
2324:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2325:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return;
2326:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2327:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   } /* End if some error occurs */
2328:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2329:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* UART wakeup from Stop mode interrupt occurred ---------------------------*/
2330:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (((isrflags & USART_ISR_WUF) != 0U) && ((cr3its & USART_CR3_WUFIE) != 0U))
2331:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2332:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_WUF);
2333:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2334:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* UART Rx state is not reset as a reception process might be ongoing.
2335:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        If UART handle state fields need to be reset to READY, this could be done in Wakeup callback
2336:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2337:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2338:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call registered Wakeup Callback */
2339:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->WakeupCallback(huart);
2340:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2341:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call legacy weak Wakeup Callback */
2342:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UARTEx_WakeupCallback(huart);
2343:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2344:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return;
2345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2346:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2347:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* UART in mode Transmitter ------------------------------------------------*/
2348:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (((isrflags & USART_ISR_TXE_TXFNF) != 0U)
2349:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       && (((cr1its & USART_CR1_TXEIE_TXFNFIE) != 0U)
2350:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           || ((cr3its & USART_CR3_TXFTIE) != 0U)))
2351:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->TxISR != NULL)
2353:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2354:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->TxISR(huart);
2355:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2356:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return;
2357:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2358:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2359:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* UART in mode Transmitter (transmission end) -----------------------------*/
2360:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (((isrflags & USART_ISR_TC) != 0U) && ((cr1its & USART_CR1_TCIE) != 0U))
2361:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2362:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndTransmit_IT(huart);
2363:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return;
2364:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2365:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2366:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* UART TX Fifo Empty occurred ----------------------------------------------*/
2367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (((isrflags & USART_ISR_TXFE) != 0U) && ((cr1its & USART_CR1_TXFEIE) != 0U))
2368:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2369:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2370:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call registered Tx Fifo Empty Callback */
2371:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxFifoEmptyCallback(huart);
2372:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2373:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call legacy weak Tx Fifo Empty Callback */
2374:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UARTEx_TxFifoEmptyCallback(huart);
2375:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2376:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return;
2377:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2378:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* UART RX Fifo Full occurred ----------------------------------------------*/
2380:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (((isrflags & USART_ISR_RXFF) != 0U) && ((cr1its & USART_CR1_RXFFIE) != 0U))
2381:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2382:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2383:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call registered Rx Fifo Full Callback */
2384:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxFifoFullCallback(huart);
2385:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
2386:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Call legacy weak Rx Fifo Full Callback */
2387:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UARTEx_RxFifoFullCallback(huart);
2388:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2389:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return;
2390:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2392:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2393:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2394:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Tx Transfer completed callback.
2395:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
2396:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2397:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2398:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart)
2399:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2400:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2401:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2402:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2403:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2404:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_TxCpltCallback can be implemented in the user file.
2405:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2406:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2407:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2408:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2409:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Tx Half Transfer completed callback.
2410:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2411:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2412:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2413:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart)
2414:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2415:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2416:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2417:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2418:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE: This function should not be modified, when the callback is needed,
2419:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            the HAL_UART_TxHalfCpltCallback can be implemented in the user file.
2420:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2421:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2422:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2423:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2424:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Rx Transfer completed callback.
2425:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2426:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2427:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2428:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
2429:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2430:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2431:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2432:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2433:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2434:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_RxCpltCallback can be implemented in the user file.
2435:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2436:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2437:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2438:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Rx Half Transfer completed callback.
2440:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2441:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2442:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2443:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart)
2444:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2445:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2446:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2447:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2448:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE: This function should not be modified, when the callback is needed,
2449:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            the HAL_UART_RxHalfCpltCallback can be implemented in the user file.
2450:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2451:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2452:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2453:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2454:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  UART error callback.
2455:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2456:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2457:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2458:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart)
2459:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2460:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2461:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2462:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2463:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2464:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_ErrorCallback can be implemented in the user file.
2465:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2466:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2467:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2468:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2469:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  UART Abort Complete callback.
2470:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2471:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2472:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2473:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_AbortCpltCallback(UART_HandleTypeDef *huart)
2474:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2475:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2476:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2477:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2478:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2479:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_AbortCpltCallback can be implemented in the user file.
2480:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2481:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2482:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2483:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2484:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  UART Abort Complete callback.
2485:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2486:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2487:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2488:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_AbortTransmitCpltCallback(UART_HandleTypeDef *huart)
2489:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2490:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2491:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2492:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2493:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2494:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_AbortTransmitCpltCallback can be implemented in the user file.
2495:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2496:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2497:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2498:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2499:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  UART Abort Receive Complete callback.
2500:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2501:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2502:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2503:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** __weak void HAL_UART_AbortReceiveCpltCallback(UART_HandleTypeDef *huart)
2504:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2505:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
2506:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UNUSED(huart);
2507:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2508:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
2509:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             the HAL_UART_AbortReceiveCpltCallback can be implemented in the user file.
2510:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****    */
2511:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2513:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2514:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @}
2515:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2516:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2517:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART_Exported_Functions_Group3 Peripheral Control functions
2518:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  @brief   UART control functions
2519:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
2520:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @verbatim
2521:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****  ===============================================================================
2522:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                       ##### Peripheral Control functions #####
2523:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****  ===============================================================================
2524:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
2525:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     This subsection provides a set of functions allowing to control the UART.
2526:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) HAL_MultiProcessor_EnableMuteMode() API enables mute mode
2527:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) HAL_MultiProcessor_DisableMuteMode() API disables mute mode
2528:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) HAL_MultiProcessor_EnterMuteMode() API enters mute mode
2529:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) UART_SetConfig() API configures the UART peripheral
2530:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) UART_AdvFeatureConfig() API optionally configures the UART advanced features
2531:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) UART_CheckIdleState() API ensures that TEACK and/or REACK are set after initialization
2532:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) HAL_HalfDuplex_EnableTransmitter() API disables receiver and enables transmitter
2533:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) HAL_HalfDuplex_EnableReceiver() API disables transmitter and enables receiver
2534:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****      (+) HAL_LIN_SendBreak() API transmits the break characters
2535:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @endverbatim
2536:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
2537:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2538:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2539:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2540:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Enable UART in mute mode (does not mean UART enters mute mode;
2541:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         to enter mute mode, HAL_MultiProcessor_EnterMuteMode() API must be called).
2542:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2543:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
2544:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2545:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_MultiProcessor_EnableMuteMode(UART_HandleTypeDef *huart)
2546:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2547:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
2548:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2549:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
2550:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2551:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Enable USART mute mode by setting the MME bit in the CR1 register */
2552:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   SET_BIT(huart->Instance->CR1, USART_CR1_MME);
2553:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2554:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
2555:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2556:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
2557:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2558:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2559:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2560:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Disable UART mute mode (does not mean the UART actually exits mute mode
2561:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         as it may not have been in mute mode at this very moment).
2562:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2563:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
2564:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2565:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_MultiProcessor_DisableMuteMode(UART_HandleTypeDef *huart)
2566:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2567:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
2568:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2569:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
2570:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2571:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable USART mute mode by clearing the MME bit in the CR1 register */
2572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, USART_CR1_MME);
2573:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
2575:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2576:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
2577:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2578:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2579:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2580:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Enter UART mute mode (means UART actually enters mute mode).
2581:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note  To exit from mute mode, HAL_MultiProcessor_DisableMuteMode() API must be called.
2582:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
2583:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2584:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2585:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** void HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart)
2586:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2587:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_MUTE_MODE_REQUEST);
2588:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2589:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2590:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2591:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Enable the UART transmitter and disable the UART receiver.
2592:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2593:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
2594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2595:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart)
2596:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
2598:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
2599:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2600:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear TE and RE bits */
2601:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TE | USART_CR1_RE));
2602:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2603:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Enable the USART's transmit interface by setting the TE bit in the USART CR1 register */
2604:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   SET_BIT(huart->Instance->CR1, USART_CR1_TE);
2605:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2606:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
2607:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2608:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
2609:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
2611:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2612:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2613:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2614:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Enable the UART receiver and disable the UART transmitter.
2615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2616:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status.
2617:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2618:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart)
2619:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
2621:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
2622:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2623:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear TE and RE bits */
2624:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TE | USART_CR1_RE));
2625:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2626:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Enable the USART's receive interface by setting the RE bit in the USART CR1 register */
2627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   SET_BIT(huart->Instance->CR1, USART_CR1_RE);
2628:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2629:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
2630:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2631:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
2632:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2633:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
2634:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2635:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2636:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2637:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2638:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Transmit break characters.
2639:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2640:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
2641:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2642:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart)
2643:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2644:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the parameters */
2645:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_LIN_INSTANCE(huart->Instance));
2646:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2647:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
2648:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2649:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
2650:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2651:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Send break characters */
2652:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_SENDBREAK_REQUEST);
2653:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2654:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
2655:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2656:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
2657:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2658:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
2659:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2660:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2661:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2662:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @}
2663:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2664:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2665:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART_Exported_Functions_Group4 Peripheral State and Error functions
2666:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  @brief   UART Peripheral State functions
2667:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *
2668:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @verbatim
2669:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   ==============================================================================
2670:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             ##### Peripheral State and Error functions #####
2671:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   ==============================================================================
2672:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     [..]
2673:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     This subsection provides functions allowing to :
2674:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (+) Return the UART handle state.
2675:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (+) Return the UART handle error code
2676:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2677:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** @endverbatim
2678:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
2679:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2680:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2681:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2682:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Return the UART handle state.
2683:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart Pointer to a UART_HandleTypeDef structure that contains
2684:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *               the configuration information for the specified UART.
2685:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL state
2686:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2687:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_UART_StateTypeDef HAL_UART_GetState(UART_HandleTypeDef *huart)
2688:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2689:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t temp1;
2690:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t temp2;
2691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   temp1 = huart->gState;
2692:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   temp2 = huart->RxState;
2693:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2694:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return (HAL_UART_StateTypeDef)(temp1 | temp2);
2695:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2696:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2697:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2698:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Return the UART handle error code.
2699:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart Pointer to a UART_HandleTypeDef structure that contains
2700:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *               the configuration information for the specified UART.
2701:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval UART Error Code
2702:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2703:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** uint32_t HAL_UART_GetError(UART_HandleTypeDef *huart)
2704:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2705:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return huart->ErrorCode;
2706:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2707:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2708:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @}
2709:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2710:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2711:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2712:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @}
2713:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2714:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2715:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /** @defgroup UART_Private_Functions UART Private Functions
2716:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @{
2717:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2718:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2719:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2720:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Initialize the callbacks to their default values.
2721:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
2722:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval none
2723:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2724:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
2725:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** void UART_InitCallbacksToDefault(UART_HandleTypeDef *huart)
2726:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2727:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Init the UART Callback settings */
2728:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxHalfCpltCallback        = HAL_UART_TxHalfCpltCallback;        /* Legacy weak TxHalfCpltC
2729:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxCpltCallback            = HAL_UART_TxCpltCallback;            /* Legacy weak TxCpltCallb
2730:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxHalfCpltCallback        = HAL_UART_RxHalfCpltCallback;        /* Legacy weak RxHalfCpltC
2731:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxCpltCallback            = HAL_UART_RxCpltCallback;            /* Legacy weak RxCpltCallb
2732:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCallback             = HAL_UART_ErrorCallback;             /* Legacy weak ErrorCallba
2733:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->AbortCpltCallback         = HAL_UART_AbortCpltCallback;         /* Legacy weak AbortCpltCa
2734:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->AbortTransmitCpltCallback = HAL_UART_AbortTransmitCpltCallback; /* Legacy weak AbortTransm
2735:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->AbortReceiveCpltCallback  = HAL_UART_AbortReceiveCpltCallback;  /* Legacy weak AbortReceiv
2736:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->WakeupCallback            = HAL_UARTEx_WakeupCallback;          /* Legacy weak WakeupCallb
2737:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxFifoFullCallback        = HAL_UARTEx_RxFifoFullCallback;      /* Legacy weak RxFifoFullC
2738:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxFifoEmptyCallback       = HAL_UARTEx_TxFifoEmptyCallback;     /* Legacy weak TxFifoEmpty
2739:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2740:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2741:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
2742:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2743:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2744:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Configure the UART peripheral.
2745:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
2746:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
2747:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2748:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef UART_SetConfig(UART_HandleTypeDef *huart)
2749:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2750:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tmpreg;
2751:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t brrtemp;
2752:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_ClockSourceTypeDef clocksource;
2753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t usartdiv                   = 0x00000000U;
2754:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_StatusTypeDef ret               = HAL_OK;
2755:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t lpuart_ker_ck_pres         = 0x00000000U;
2756:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t pclk;
2757:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2758:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the parameters */
2759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_BAUDRATE(huart->Init.BaudRate));
2760:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
2761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (UART_INSTANCE_LOWPOWER(huart))
2762:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2763:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_LPUART_STOPBITS(huart->Init.StopBits));
2764:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2765:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
2766:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2767:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_STOPBITS(huart->Init.StopBits));
2768:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ONE_BIT_SAMPLE(huart->Init.OneBitSampling));
2769:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2770:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2771:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_PARITY(huart->Init.Parity));
2772:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_MODE(huart->Init.Mode));
2773:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_HARDWARE_FLOW_CONTROL(huart->Init.HwFlowCtl));
2774:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));
2775:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_PRESCALER(huart->Init.ClockPrescaler));
2776:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2777:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*-------------------------- USART CR1 Configuration -----------------------*/
2778:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear M, PCE, PS, TE, RE and OVER8 bits and configure
2779:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  the UART Word Length, Parity, Mode and oversampling:
2780:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  set the M bits according to huart->Init.WordLength value
2781:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  set PCE and PS bits according to huart->Init.Parity value
2782:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  set TE and RE bits according to huart->Init.Mode value
2783:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *  set OVER8 bit according to huart->Init.OverSampling value */
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.O
2785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
2786:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, USART_CR1_FIELDS, tmpreg);
2787:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*-------------------------- USART CR2 Configuration -----------------------*/
2789:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Configure the UART Stop Bits: Set STOP[13:12] bits according
2790:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * to huart->Init.StopBits value */
2791:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
2792:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2793:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*-------------------------- USART CR3 Configuration -----------------------*/
2794:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Configure
2795:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * - UART HardWare Flow Control: set CTSE and RTSE bits according
2796:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *   to huart->Init.HwFlowCtl value
2797:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * - one-bit sampling method versus three samples' majority rule according
2798:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *   to huart->Init.OneBitSampling (not applicable to LPUART) */
2799:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg = (uint32_t)huart->Init.HwFlowCtl;
2800:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2801:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (!(UART_INSTANCE_LOWPOWER(huart)))
2802:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2803:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     tmpreg |= huart->Init.OneBitSampling;
2804:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2805:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR3, USART_CR3_FIELDS, tmpreg);
2806:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2807:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*-------------------------- USART PRESC Configuration -----------------------*/
2808:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Configure
2809:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * - UART Clock Prescaler : set PRESCALER according to huart->Init.ClockPrescaler value */
2810:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->PRESC, USART_PRESC_PRESCALER, huart->Init.ClockPrescaler);
2811:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2812:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*-------------------------- USART BRR Configuration -----------------------*/
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_GETCLOCKSOURCE(huart, clocksource);
2814:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2815:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check LPUART instance */
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (UART_INSTANCE_LOWPOWER(huart))
2817:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2818:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Retrieve frequency clock */
2819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     switch (clocksource)
2820:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2821:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_PCLK1:
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         lpuart_ker_ck_pres = (HAL_RCC_GetPCLK1Freq() / UART_GET_DIV_FACTOR(huart->Init.ClockPrescal
2823:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2824:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_HSI:
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         lpuart_ker_ck_pres = ((uint32_t)HSI_VALUE / UART_GET_DIV_FACTOR(huart->Init.ClockPrescaler)
2826:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2827:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_SYSCLK:
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         lpuart_ker_ck_pres = (HAL_RCC_GetSysClockFreq() / UART_GET_DIV_FACTOR(huart->Init.ClockPres
2829:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2830:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_LSE:
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         lpuart_ker_ck_pres = ((uint32_t)LSE_VALUE / UART_GET_DIV_FACTOR(huart->Init.ClockPrescaler)
2832:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2833:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default:
2834:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         ret = HAL_ERROR;
2835:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2836:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2837:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2838:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* if proper clock source reported */
2839:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (lpuart_ker_ck_pres != 0U)
2840:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2841:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* ensure that Frequency clock is in the range [3 * baudrate, 4096 * baudrate] */
2842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((lpuart_ker_ck_pres < (3U * huart->Init.BaudRate)) ||
2843:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           (lpuart_ker_ck_pres > (4096U * huart->Init.BaudRate)))
2844:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2845:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         ret = HAL_ERROR;
2846:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
2847:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
2848:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
2849:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         switch (clocksource)
2850:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
2851:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           case UART_CLOCKSOURCE_PCLK1:
2852:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             pclk = HAL_RCC_GetPCLK1Freq();
2853:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(pclk, huart->Init.BaudRate, huart->Init.ClockPres
2854:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
2855:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           case UART_CLOCKSOURCE_HSI:
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(HSI_VALUE, huart->Init.BaudRate, huart->Init.Cloc
2857:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
2858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           case UART_CLOCKSOURCE_SYSCLK:
2859:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             pclk = HAL_RCC_GetSysClockFreq();
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(pclk, huart->Init.BaudRate, huart->Init.ClockPres
2861:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
2862:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           case UART_CLOCKSOURCE_LSE:
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(LSE_VALUE, huart->Init.BaudRate, huart->Init.Cloc
2864:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
2865:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           default:
2866:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             ret = HAL_ERROR;
2867:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
2868:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
2869:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2870:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* It is forbidden to write values lower than 0x300 in the LPUART_BRR register */
2871:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         if ((usartdiv >= LPUART_BRR_MIN) && (usartdiv <= LPUART_BRR_MAX))
2872:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
2873:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           huart->Instance->BRR = usartdiv;
2874:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
2875:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         else
2876:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
2877:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ret = HAL_ERROR;
2878:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
2879:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       } /*   if ( (lpuart_ker_ck_pres < (3 * huart->Init.BaudRate) ) || (lpuart_ker_ck_pres > (4096
2880:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     } /* if (lpuart_ker_ck_pres != 0) */
2881:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2882:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check UART Over Sampling to set Baud Rate Register */
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
2884:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2885:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     switch (clocksource)
2886:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2887:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_PCLK1:
2888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pclk = HAL_RCC_GetPCLK1Freq();
2889:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
2890:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2891:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_PCLK2:
2892:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pclk = HAL_RCC_GetPCLK2Freq();
2893:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
2894:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2895:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_HSI:
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(HSI_VALUE, huart->Init.BaudRate, huart->Init.Clock
2897:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2898:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_SYSCLK:
2899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pclk = HAL_RCC_GetSysClockFreq();
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
2901:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2902:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_LSE:
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8((uint32_t)LSE_VALUE, huart->Init.BaudRate, huart->
2904:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2905:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default:
2906:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         ret = HAL_ERROR;
2907:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2908:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2909:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2910:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* USARTDIV must be greater than or equal to 0d16 */
2911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((usartdiv >= UART_BRR_MIN) && (usartdiv <= UART_BRR_MAX))
2912:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2913:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       brrtemp = (uint16_t)(usartdiv & 0xFFF0U);
2914:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       brrtemp |= (uint16_t)((usartdiv & (uint16_t)0x000FU) >> 1U);
2915:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->Instance->BRR = brrtemp;
2916:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2917:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
2918:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2919:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       ret = HAL_ERROR;
2920:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2921:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2922:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
2923:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2924:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     switch (clocksource)
2925:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2926:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_PCLK1:
2927:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pclk = HAL_RCC_GetPCLK1Freq();
2928:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
2929:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2930:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_PCLK2:
2931:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pclk = HAL_RCC_GetPCLK2Freq();
2932:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
2933:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2934:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_HSI:
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(HSI_VALUE, huart->Init.BaudRate, huart->Init.Cloc
2936:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2937:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_SYSCLK:
2938:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pclk = HAL_RCC_GetSysClockFreq();
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
2940:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2941:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_LSE:
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16((uint32_t)LSE_VALUE, huart->Init.BaudRate, huart-
2943:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2944:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default:
2945:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         ret = HAL_ERROR;
2946:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
2947:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2948:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2949:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* USARTDIV must be greater than or equal to 0d16 */
2950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((usartdiv >= UART_BRR_MIN) && (usartdiv <= UART_BRR_MAX))
2951:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2952:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->Instance->BRR = usartdiv;
2953:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2954:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
2955:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
2956:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       ret = HAL_ERROR;
2957:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
2958:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2959:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2960:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Initialize the number of data to process during RX/TX ISR execution */
2961:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->NbTxDataToProcess = 1;
2962:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->NbRxDataToProcess = 1;
2963:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2964:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear ISR function pointers */
2965:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxISR = NULL;
2966:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxISR = NULL;
2967:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2968:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return ret;
2969:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
2970:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2971:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
2972:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Configure the UART peripheral advanced features.
2973:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
2974:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
2975:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
2976:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** void UART_AdvFeatureConfig(UART_HandleTypeDef *huart)
2977:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
2978:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check whether the set of advanced features to configure is properly set */
2979:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_ADVFEATURE_INIT(huart->AdvancedInit.AdvFeatureInit));
2980:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2981:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure TX pin active level inversion */
2982:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_TXINVERT_INIT))
2983:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2984:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_TXINV(huart->AdvancedInit.TxPinLevelInvert));
2985:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_TXINV, huart->AdvancedInit.TxPinLevelInvert);
2986:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2987:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2988:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure RX pin active level inversion */
2989:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_RXINVERT_INIT))
2990:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2991:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_RXINV(huart->AdvancedInit.RxPinLevelInvert));
2992:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_RXINV, huart->AdvancedInit.RxPinLevelInvert);
2993:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
2994:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
2995:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure data inversion */
2996:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_DATAINVERT_INIT))
2997:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
2998:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_DATAINV(huart->AdvancedInit.DataInvert));
2999:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_DATAINV, huart->AdvancedInit.DataInvert);
3000:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3001:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3002:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure RX/TX pins swap */
3003:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_SWAP_INIT))
3004:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3005:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_SWAP(huart->AdvancedInit.Swap));
3006:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_SWAP, huart->AdvancedInit.Swap);
3007:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3008:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3009:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure RX overrun detection disabling */
3010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_RXOVERRUNDISABLE_INIT))
3011:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3012:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_OVERRUN(huart->AdvancedInit.OverrunDisable));
3013:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR3, USART_CR3_OVRDIS, huart->AdvancedInit.OverrunDisable);
3014:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3015:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3016:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure DMA disabling on reception error */
3017:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_DMADISABLEONERROR_INIT))
3018:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3019:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_DMAONRXERROR(huart->AdvancedInit.DMADisableonRxError));
3020:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR3, USART_CR3_DDRE, huart->AdvancedInit.DMADisableonRxError);
3021:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3022:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3023:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure auto Baud rate detection scheme */
3024:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_AUTOBAUDRATE_INIT))
3025:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3026:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_USART_AUTOBAUDRATE_DETECTION_INSTANCE(huart->Instance));
3027:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_AUTOBAUDRATE(huart->AdvancedInit.AutoBaudRateEnable));
3028:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_ABREN, huart->AdvancedInit.AutoBaudRateEnable);
3029:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* set auto Baudrate detection parameters if detection is enabled */
3030:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->AdvancedInit.AutoBaudRateEnable == UART_ADVFEATURE_AUTOBAUDRATE_ENABLE)
3031:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3032:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       assert_param(IS_UART_ADVFEATURE_AUTOBAUDRATEMODE(huart->AdvancedInit.AutoBaudRateMode));
3033:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       MODIFY_REG(huart->Instance->CR2, USART_CR2_ABRMODE, huart->AdvancedInit.AutoBaudRateMode);
3034:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3035:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3036:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3037:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* if required, configure MSB first on communication line */
3038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_MSBFIRST_INIT))
3039:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3040:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_MSBFIRST(huart->AdvancedInit.MSBFirst));
3041:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_MSBFIRST, huart->AdvancedInit.MSBFirst);
3042:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3043:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3044:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3045:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3046:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief Check the UART Idle State.
3047:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3048:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
3049:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3050:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef UART_CheckIdleState(UART_HandleTypeDef *huart)
3051:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3052:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
3053:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3054:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Initialize the UART ErrorCode */
3055:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCode = HAL_UART_ERROR_NONE;
3056:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Init tickstart for timeout managment*/
3058:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tickstart = HAL_GetTick();
3059:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3060:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check if the Transmitter is enabled */
3061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((huart->Instance->CR1 & USART_CR1_TE) == USART_CR1_TE)
3062:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3063:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Wait until TEACK flag is set */
3064:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (UART_WaitOnFlagUntilTimeout(huart, USART_ISR_TEACK, RESET, tickstart, HAL_UART_TIMEOUT_VALU
3065:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3066:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Timeout occurred */
3067:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return HAL_TIMEOUT;
3068:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3069:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3070:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3071:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check if the Receiver is enabled */
3072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((huart->Instance->CR1 & USART_CR1_RE) == USART_CR1_RE)
3073:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3074:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Wait until REACK flag is set */
3075:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (UART_WaitOnFlagUntilTimeout(huart, USART_ISR_REACK, RESET, tickstart, HAL_UART_TIMEOUT_VALU
3076:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3077:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Timeout occurred */
3078:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return HAL_TIMEOUT;
3079:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3080:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3081:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3082:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Initialize the UART State */
3083:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
3084:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
3085:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3086:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UNLOCK(huart);
3087:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3088:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
3089:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3090:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3091:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3092:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Handle UART Communication Timeout.
3093:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart     UART handle.
3094:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Flag      Specifies the UART flag to check
3095:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Status    Flag status (SET or RESET)
3096:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Tickstart Tick start value
3097:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param Timeout   Timeout duration
3098:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval HAL status
3099:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3100:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus 
3101:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                                               uint32_t Tickstart, uint32_t Timeout)
3102:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3103:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Wait until flag is set */
3104:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
3105:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3106:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Check for the Timeout */
3107:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (Timeout != HAL_MAX_DELAY)
3108:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (((HAL_GetTick() - Tickstart) > Timeout) || (Timeout == 0U))
3110:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3111:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for t
3112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE | USART_CR1_TXEI
3113:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
3114:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->gState = HAL_UART_STATE_READY;
3116:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxState = HAL_UART_STATE_READY;
3117:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3118:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         __HAL_UNLOCK(huart);
3119:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3120:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         return HAL_TIMEOUT;
3121:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3122:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3123:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3124:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return HAL_OK;
3125:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3126:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3127:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3128:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3129:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  End ongoing Tx transfer on UART peripheral (following error detection or Transmit compl
3130:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
3131:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3132:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3133:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_EndTxTransfer(UART_HandleTypeDef *huart)
3134:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3135:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TXEIE, TCIE, TXFT interrupts */
3136:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TXEIE_TXFNFIE | USART_CR1_TCIE));
3137:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_TXFTIE));
3138:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3139:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* At end of Tx process, restore huart->gState to Ready */
3140:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
3141:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3142:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3143:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3144:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3145:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  End ongoing Rx transfer on UART peripheral (following error detection or Reception comp
3146:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart UART handle.
3147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3148:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3149:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_EndRxTransfer(UART_HandleTypeDef *huart)
3150:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
  29              		.loc 1 3150 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
3151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts */
3152:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE));
  34              		.loc 1 3152 3 view .LVU1
  35 0000 0268     		ldr	r2, [r0]
  36 0002 1368     		ldr	r3, [r2]
  37 0004 23F49073 		bic	r3, r3, #288
  38 0008 1360     		str	r3, [r2]
3153:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE));
  39              		.loc 1 3153 3 view .LVU2
  40 000a 9368     		ldr	r3, [r2, #8]
  41 000c 23F08053 		bic	r3, r3, #268435456
  42 0010 23F00103 		bic	r3, r3, #1
  43 0014 9360     		str	r3, [r2, #8]
3154:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3155:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* At end of Rx process, restore huart->RxState to Ready */
3156:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
  44              		.loc 1 3156 3 view .LVU3
  45              		.loc 1 3156 18 is_stmt 0 view .LVU4
  46 0016 2023     		movs	r3, #32
  47 0018 C0F88430 		str	r3, [r0, #132]
3157:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3158:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Reset RxIsr function pointer */
3159:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxISR = NULL;
  48              		.loc 1 3159 3 is_stmt 1 view .LVU5
  49              		.loc 1 3159 16 is_stmt 0 view .LVU6
  50 001c 0023     		movs	r3, #0
  51 001e C366     		str	r3, [r0, #108]
3160:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
  52              		.loc 1 3160 1 view .LVU7
  53 0020 7047     		bx	lr
  54              		.cfi_endproc
  55              	.LFE369:
  57              		.section	.text.UART_TxISR_8BIT,"ax",%progbits
  58              		.align	1
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  64              	UART_TxISR_8BIT:
  65              	.LVL1:
  66              	.LFB380:
3161:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3162:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3163:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3164:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief DMA UART transmit process complete callback.
3165:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param hdma DMA handle.
3166:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3167:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3168:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATransmitCplt(DMA_HandleTypeDef *hdma)
3169:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3170:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3171:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3172:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* DMA Normal mode */
3173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC))
3174:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3175:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = 0U;
3176:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3177:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Disable the DMA transfer for transmit request by resetting the DMAT bit
3178:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        in the UART CR3 register */
3179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
3180:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3181:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Enable the UART Transmit Complete Interrupt */
3182:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_TCIE);
3183:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3184:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* DMA Circular mode */
3185:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
3186:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3187:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3188:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /*Call registered Tx complete callback*/
3189:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxCpltCallback(huart);
3190:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3191:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /*Call legacy weak Tx complete callback*/
3192:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     HAL_UART_TxCpltCallback(huart);
3193:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3194:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3195:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3196:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3197:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3198:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief DMA UART transmit process half complete callback.
3199:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param hdma DMA handle.
3200:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3201:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3202:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATxHalfCplt(DMA_HandleTypeDef *hdma)
3203:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3204:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3205:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3206:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3207:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call registered Tx Half complete callback*/
3208:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxHalfCpltCallback(huart);
3209:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3210:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call legacy weak Tx Half complete callback*/
3211:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_TxHalfCpltCallback(huart);
3212:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3213:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3214:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3216:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief DMA UART receive process complete callback.
3217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param hdma DMA handle.
3218:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3219:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3220:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMAReceiveCplt(DMA_HandleTypeDef *hdma)
3221:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3222:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3223:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3224:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* DMA Normal mode */
3225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC))
3226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3227:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = 0U;
3228:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Disable PE and ERR (Frame error, noise error, overrun error) interrupts */
3230:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR1, USART_CR1_PEIE);
3231:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
3232:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3233:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Disable the DMA transfer for the receiver request by resetting the DMAR bit
3234:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****        in the UART CR3 register */
3235:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
3236:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3237:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* At end of Rx process, restore huart->RxState to Ready */
3238:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
3239:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3240:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3241:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3242:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call registered Rx complete callback*/
3243:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxCpltCallback(huart);
3244:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3245:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call legacy weak Rx complete callback*/
3246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_RxCpltCallback(huart);
3247:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3248:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3249:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3250:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3251:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief DMA UART receive process half complete callback.
3252:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param hdma DMA handle.
3253:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3254:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3255:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMARxHalfCplt(DMA_HandleTypeDef *hdma)
3256:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3257:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3258:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3259:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3260:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call registered Rx Half complete callback*/
3261:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxHalfCpltCallback(huart);
3262:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3263:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call legacy weak Rx Half complete callback*/
3264:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_RxHalfCpltCallback(huart);
3265:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3266:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3267:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3268:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3269:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief DMA UART communication error callback.
3270:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param hdma DMA handle.
3271:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3272:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3273:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMAError(DMA_HandleTypeDef *hdma)
3274:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3275:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3276:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3277:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef gstate = huart->gState;
3278:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
3279:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Stop UART DMA Tx request if ongoing */
3281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)) &&
3282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
3283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = 0U;
3285:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndTxTransfer(huart);
3286:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3287:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3288:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Stop UART DMA Rx request if ongoing */
3289:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) &&
3290:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
3291:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3292:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = 0U;
3293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndRxTransfer(huart);
3294:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3295:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3296:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCode |= HAL_UART_ERROR_DMA;
3297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3298:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3299:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call registered error callback*/
3300:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCallback(huart);
3301:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3302:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call legacy weak error callback*/
3303:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_ErrorCallback(huart);
3304:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3305:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3306:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3307:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3308:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  DMA UART communication abort callback, when initiated by HAL services on Error
3309:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         (To be called at end of DMA Abort procedure following error occurrence).
3310:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  hdma DMA handle.
3311:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3312:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3313:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMAAbortOnError(DMA_HandleTypeDef *hdma)
3314:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3315:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3316:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
3317:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
3318:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3319:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3320:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call registered error callback*/
3321:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCallback(huart);
3322:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3323:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call legacy weak error callback*/
3324:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_ErrorCallback(huart);
3325:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3326:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3327:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3328:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3329:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  DMA UART Tx communication abort callback, when initiated by user
3330:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         (To be called at end of DMA Tx Abort procedure following user abort request).
3331:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When this callback is executed, User Abort complete call back is called only if no
3332:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         Abort still ongoing for Rx DMA Handle.
3333:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  hdma DMA handle.
3334:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3335:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3336:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATxAbortCallback(DMA_HandleTypeDef *hdma)
3337:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3338:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3339:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3340:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->hdmatx->XferAbortCallback = NULL;
3341:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3342:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check if an Abort process is still ongoing */
3343:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->hdmarx != NULL)
3344:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmarx->XferAbortCallback != NULL)
3346:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3347:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return;
3348:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3349:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3350:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3351:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* No Abort process still ongoing : All DMA channels are aborted, call user Abort Complete callba
3352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
3353:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
3354:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3355:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Reset errorCode */
3356:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCode = HAL_UART_ERROR_NONE;
3357:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3358:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear the Error flags in the ICR register */
3359:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_FEF);
3360:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3361:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Flush the whole TX FIFO (if needed) */
3362:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->FifoMode == UART_FIFOMODE_ENABLE)
3363:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3364:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_TXDATA_FLUSH_REQUEST);
3365:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3366:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Restore huart->gState and huart->RxState to Ready */
3368:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState  = HAL_UART_STATE_READY;
3369:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
3370:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3371:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call user Abort complete callback */
3372:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3373:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call registered Abort complete callback */
3374:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->AbortCpltCallback(huart);
3375:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3376:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call legacy weak Abort complete callback */
3377:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_AbortCpltCallback(huart);
3378:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3379:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3380:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3381:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3382:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3383:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  DMA UART Rx communication abort callback, when initiated by user
3384:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         (To be called at end of DMA Rx Abort procedure following user abort request).
3385:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   When this callback is executed, User Abort complete call back is called only if no
3386:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         Abort still ongoing for Tx DMA Handle.
3387:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  hdma DMA handle.
3388:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3389:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3390:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMARxAbortCallback(DMA_HandleTypeDef *hdma)
3391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3392:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3393:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3394:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->hdmarx->XferAbortCallback = NULL;
3395:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3396:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check if an Abort process is still ongoing */
3397:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->hdmatx != NULL)
3398:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3399:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->hdmatx->XferAbortCallback != NULL)
3400:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3401:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       return;
3402:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3403:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3404:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3405:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* No Abort process still ongoing : All DMA channels are aborted, call user Abort Complete callba
3406:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
3407:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
3408:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3409:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Reset errorCode */
3410:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->ErrorCode = HAL_UART_ERROR_NONE;
3411:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3412:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear the Error flags in the ICR register */
3413:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_FEF);
3414:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3415:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Discard the received data */
3416:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
3417:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3418:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Restore huart->gState and huart->RxState to Ready */
3419:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState  = HAL_UART_STATE_READY;
3420:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
3421:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3422:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call user Abort complete callback */
3423:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3424:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call registered Abort complete callback */
3425:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->AbortCpltCallback(huart);
3426:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3427:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call legacy weak Abort complete callback */
3428:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_AbortCpltCallback(huart);
3429:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3430:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3431:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3432:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3433:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3434:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  DMA UART Tx communication abort callback, when initiated by user by a call to
3435:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         HAL_UART_AbortTransmit_IT API (Abort only Tx transfer)
3436:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         (This callback is executed at end of DMA Tx Abort procedure following user abort reques
3437:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         and leads to user Tx Abort Complete callback execution).
3438:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  hdma DMA handle.
3439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3440:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3441:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMATxOnlyAbortCallback(DMA_HandleTypeDef *hdma)
3442:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3443:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
3444:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3445:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
3446:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3447:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Flush the whole TX FIFO (if needed) */
3448:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->FifoMode == UART_FIFOMODE_ENABLE)
3449:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3450:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_TXDATA_FLUSH_REQUEST);
3451:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3452:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3453:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Restore huart->gState to Ready */
3454:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
3455:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3456:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call user Abort complete callback */
3457:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3458:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call registered Abort Transmit Complete Callback */
3459:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->AbortTransmitCpltCallback(huart);
3460:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3461:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call legacy weak Abort Transmit Complete Callback */
3462:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_AbortTransmitCpltCallback(huart);
3463:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3464:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3465:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3466:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3467:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  DMA UART Rx communication abort callback, when initiated by user by a call to
3468:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         HAL_UART_AbortReceive_IT API (Abort only Rx transfer)
3469:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         (This callback is executed at end of DMA Rx Abort procedure following user abort reques
3470:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         and leads to user Rx Abort Complete callback execution).
3471:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  hdma DMA handle.
3472:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3473:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3474:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_DMARxOnlyAbortCallback(DMA_HandleTypeDef *hdma)
3475:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3476:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
3477:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3478:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
3479:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3480:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Clear the Error flags in the ICR register */
3481:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_OREF | UART_CLEAR_NEF | UART_CLEAR_PEF | UART_CLEAR_FEF);
3482:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3483:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Discard the received data */
3484:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
3485:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3486:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Restore huart->RxState to Ready */
3487:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
3488:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3489:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call user Abort complete callback */
3490:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3491:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call registered Abort Receive Complete Callback */
3492:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->AbortReceiveCpltCallback(huart);
3493:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3494:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Call legacy weak Abort Receive Complete Callback */
3495:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_AbortReceiveCpltCallback(huart);
3496:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3497:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3498:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3499:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3500:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief TX interrrupt handler for 7 or 8 bits data word length .
3501:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   Function is called under interruption only, once
3502:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Transmit_IT().
3503:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3504:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3505:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3506:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_8BIT(UART_HandleTypeDef *huart)
3507:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
  67              		.loc 1 3507 1 is_stmt 1 view -0
  68              		.cfi_startproc
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
3508:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is ongoing */
3509:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_BUSY_TX)
  72              		.loc 1 3509 3 view .LVU9
  73              		.loc 1 3509 12 is_stmt 0 view .LVU10
  74 0000 D0F88030 		ldr	r3, [r0, #128]
  75              		.loc 1 3509 6 view .LVU11
  76 0004 212B     		cmp	r3, #33
  77 0006 18D1     		bne	.L2
3510:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3511:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->TxXferCount == 0U)
  78              		.loc 1 3511 5 is_stmt 1 view .LVU12
  79              		.loc 1 3511 14 is_stmt 0 view .LVU13
  80 0008 B0F85620 		ldrh	r2, [r0, #86]
  81 000c 0368     		ldr	r3, [r0]
  82 000e 92B2     		uxth	r2, r2
  83              		.loc 1 3511 8 view .LVU14
  84 0010 42B9     		cbnz	r2, .L4
3512:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3513:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART Transmit Data Register Empty Interrupt */
3514:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR1, USART_CR1_TXEIE_TXFNFIE);
  85              		.loc 1 3514 7 is_stmt 1 view .LVU15
  86 0012 1A68     		ldr	r2, [r3]
  87 0014 22F08002 		bic	r2, r2, #128
  88 0018 1A60     		str	r2, [r3]
3515:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3516:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the UART Transmit Complete Interrupt */
3517:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_TCIE);
  89              		.loc 1 3517 7 view .LVU16
  90 001a 1A68     		ldr	r2, [r3]
  91 001c 42F04002 		orr	r2, r2, #64
  92 0020 1A60     		str	r2, [r3]
  93 0022 7047     		bx	lr
  94              	.L4:
  95              	.LVL2:
  96              	.LBB4:
  97              	.LBI4:
3506:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
  98              		.loc 1 3506 13 view .LVU17
  99              	.LBB5:
3518:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3519:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
3520:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3521:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->Instance->TDR = (uint8_t)(*huart->pTxBuffPtr & (uint8_t)0xFF);
 100              		.loc 1 3521 7 view .LVU18
 101              		.loc 1 3521 30 is_stmt 0 view .LVU19
 102 0024 026D     		ldr	r2, [r0, #80]
 103 0026 12F8011B 		ldrb	r1, [r2], #1	@ zero_extendqisi2
 104              		.loc 1 3521 28 view .LVU20
 105 002a 9962     		str	r1, [r3, #40]
3522:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pTxBuffPtr++;
 106              		.loc 1 3522 7 is_stmt 1 view .LVU21
3523:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->TxXferCount--;
 107              		.loc 1 3523 12 is_stmt 0 view .LVU22
 108 002c B0F85630 		ldrh	r3, [r0, #86]
3522:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pTxBuffPtr++;
 109              		.loc 1 3522 24 view .LVU23
 110 0030 0265     		str	r2, [r0, #80]
 111              		.loc 1 3523 7 is_stmt 1 view .LVU24
 112              		.loc 1 3523 25 is_stmt 0 view .LVU25
 113 0032 013B     		subs	r3, r3, #1
 114 0034 9BB2     		uxth	r3, r3
 115 0036 A0F85630 		strh	r3, [r0, #86]	@ movhi
 116              	.LVL3:
 117              	.L2:
 118              		.loc 1 3523 25 view .LVU26
 119              	.LBE5:
 120              	.LBE4:
3524:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3525:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3526:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 121              		.loc 1 3526 1 view .LVU27
 122 003a 7047     		bx	lr
 123              		.cfi_endproc
 124              	.LFE380:
 126              		.section	.text.UART_TxISR_16BIT,"ax",%progbits
 127              		.align	1
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv4-sp-d16
 133              	UART_TxISR_16BIT:
 134              	.LVL4:
 135              	.LFB381:
3527:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3528:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3529:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief TX interrrupt handler for 9 bits data word length.
3530:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   Function is called under interruption only, once
3531:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Transmit_IT().
3532:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3533:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3534:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3535:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_16BIT(UART_HandleTypeDef *huart)
3536:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 136              		.loc 1 3536 1 is_stmt 1 view -0
 137              		.cfi_startproc
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140              		@ link register save eliminated.
3537:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 141              		.loc 1 3537 3 view .LVU29
3538:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3539:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is ongoing */
3540:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_BUSY_TX)
 142              		.loc 1 3540 3 view .LVU30
 143              		.loc 1 3540 12 is_stmt 0 view .LVU31
 144 0000 D0F88030 		ldr	r3, [r0, #128]
 145              		.loc 1 3540 6 view .LVU32
 146 0004 212B     		cmp	r3, #33
 147 0006 1AD1     		bne	.L5
3541:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3542:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->TxXferCount == 0U)
 148              		.loc 1 3542 5 is_stmt 1 view .LVU33
 149              		.loc 1 3542 14 is_stmt 0 view .LVU34
 150 0008 B0F85620 		ldrh	r2, [r0, #86]
 151 000c 0368     		ldr	r3, [r0]
 152 000e 92B2     		uxth	r2, r2
 153              		.loc 1 3542 8 view .LVU35
 154 0010 42B9     		cbnz	r2, .L7
3543:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3544:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART Transmit Data Register Empty Interrupt */
3545:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR1, USART_CR1_TXEIE_TXFNFIE);
 155              		.loc 1 3545 7 is_stmt 1 view .LVU36
 156 0012 1A68     		ldr	r2, [r3]
 157 0014 22F08002 		bic	r2, r2, #128
 158 0018 1A60     		str	r2, [r3]
3546:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3547:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the UART Transmit Complete Interrupt */
3548:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_TCIE);
 159              		.loc 1 3548 7 view .LVU37
 160 001a 1A68     		ldr	r2, [r3]
 161 001c 42F04002 		orr	r2, r2, #64
 162 0020 1A60     		str	r2, [r3]
 163 0022 7047     		bx	lr
 164              	.L7:
 165              	.LVL5:
 166              	.LBB8:
 167              	.LBI8:
3535:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 168              		.loc 1 3535 13 view .LVU38
 169              	.LBB9:
3549:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3550:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     else
3551:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3552:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       tmp = (uint16_t *) huart->pTxBuffPtr;
 170              		.loc 1 3552 7 view .LVU39
3553:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->Instance->TDR = (((uint32_t)(*tmp)) & 0x01FFUL);
 171              		.loc 1 3553 7 view .LVU40
 172              		.loc 1 3553 50 is_stmt 0 view .LVU41
 173 0024 026D     		ldr	r2, [r0, #80]
 174 0026 32F8021B 		ldrh	r1, [r2], #2
 175 002a C1F30801 		ubfx	r1, r1, #0, #9
 176              		.loc 1 3553 28 view .LVU42
 177 002e 9962     		str	r1, [r3, #40]
3554:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pTxBuffPtr += 2U;
 178              		.loc 1 3554 7 is_stmt 1 view .LVU43
3555:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->TxXferCount--;
 179              		.loc 1 3555 12 is_stmt 0 view .LVU44
 180 0030 B0F85630 		ldrh	r3, [r0, #86]
3554:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pTxBuffPtr += 2U;
 181              		.loc 1 3554 25 view .LVU45
 182 0034 0265     		str	r2, [r0, #80]
 183              	.LVL6:
 184              		.loc 1 3555 7 is_stmt 1 view .LVU46
 185              		.loc 1 3555 25 is_stmt 0 view .LVU47
 186 0036 013B     		subs	r3, r3, #1
 187 0038 9BB2     		uxth	r3, r3
 188 003a A0F85630 		strh	r3, [r0, #86]	@ movhi
 189              	.LVL7:
 190              	.L5:
 191              		.loc 1 3555 25 view .LVU48
 192              	.LBE9:
 193              	.LBE8:
3556:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3557:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3558:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 194              		.loc 1 3558 1 view .LVU49
 195 003e 7047     		bx	lr
 196              		.cfi_endproc
 197              	.LFE381:
 199              		.section	.text.UART_TxISR_16BIT_FIFOEN,"ax",%progbits
 200              		.align	1
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu fpv4-sp-d16
 206              	UART_TxISR_16BIT_FIFOEN:
 207              	.LVL8:
 208              	.LFB383:
3559:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3560:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3561:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief TX interrrupt handler for 7 or 8 bits data word length and FIFO mode is enabled.
3562:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   Function is called under interruption only, once
3563:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Transmit_IT().
3564:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3565:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3566:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_8BIT_FIFOEN(UART_HandleTypeDef *huart)
3568:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3569:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  nb_tx_data;
3570:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3571:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is ongoing */
3572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_BUSY_TX)
3573:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     for (nb_tx_data = huart->NbTxDataToProcess ; nb_tx_data > 0U ; nb_tx_data--)
3575:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3576:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (huart->TxXferCount == 0U)
3577:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3578:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable the TX FIFO threshold interrupt */
3579:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
3580:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3581:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Enable the UART Transmit Complete Interrupt */
3582:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         SET_BIT(huart->Instance->CR1, USART_CR1_TCIE);
3583:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3584:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break; /* force exit loop */
3585:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else if (READ_BIT(huart->Instance->ISR, USART_ISR_TXE_TXFNF) != 0U)
3587:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3588:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->Instance->TDR = (uint8_t)(*huart->pTxBuffPtr & (uint8_t)0xFF);
3589:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr++;
3590:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxXferCount--;
3591:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3592:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
3593:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Nothing to do */
3595:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3596:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3598:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3599:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3600:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3601:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief TX interrrupt handler for 9 bits data word length and FIFO mode is enabled.
3602:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   Function is called under interruption only, once
3603:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Transmit_IT().
3604:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3605:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3606:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3607:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_TxISR_16BIT_FIFOEN(UART_HandleTypeDef *huart)
3608:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 209              		.loc 1 3608 1 is_stmt 1 view -0
 210              		.cfi_startproc
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
3609:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 213              		.loc 1 3609 3 view .LVU51
3610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  nb_tx_data;
 214              		.loc 1 3610 3 view .LVU52
3611:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3612:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is ongoing */
3613:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_BUSY_TX)
 215              		.loc 1 3613 3 view .LVU53
 216              		.loc 1 3613 12 is_stmt 0 view .LVU54
 217 0000 D0F88030 		ldr	r3, [r0, #128]
 218              		.loc 1 3613 6 view .LVU55
 219 0004 212B     		cmp	r3, #33
3608:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 220              		.loc 1 3608 1 view .LVU56
 221 0006 10B5     		push	{r4, lr}
 222              		.cfi_def_cfa_offset 8
 223              		.cfi_offset 4, -8
 224              		.cfi_offset 14, -4
 225              		.loc 1 3613 6 view .LVU57
 226 0008 0FD1     		bne	.L8
3614:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     for (nb_tx_data = huart->NbTxDataToProcess ; nb_tx_data > 0U ; nb_tx_data--)
 227              		.loc 1 3615 5 is_stmt 1 view .LVU58
 228              		.loc 1 3615 21 is_stmt 0 view .LVU59
 229 000a B0F86A20 		ldrh	r2, [r0, #106]
 230              	.LVL9:
 231              	.L11:
 232              		.loc 1 3615 5 discriminator 1 view .LVU60
 233 000e 62B1     		cbz	r2, .L8
3616:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3617:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (huart->TxXferCount == 0U)
 234              		.loc 1 3617 7 is_stmt 1 view .LVU61
 235              		.loc 1 3617 16 is_stmt 0 view .LVU62
 236 0010 B0F85610 		ldrh	r1, [r0, #86]
 237 0014 0368     		ldr	r3, [r0]
 238 0016 89B2     		uxth	r1, r1
 239              		.loc 1 3617 10 view .LVU63
 240 0018 41B9     		cbnz	r1, .L12
 241              	.LVL10:
 242              	.LBB12:
 243              	.LBI12:
3567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 244              		.loc 1 3567 13 is_stmt 1 view .LVU64
 245              	.LBB13:
3579:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 246              		.loc 1 3579 9 view .LVU65
 247 001a 9A68     		ldr	r2, [r3, #8]
 248              	.LVL11:
3579:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 249              		.loc 1 3579 9 is_stmt 0 view .LVU66
 250 001c 22F40002 		bic	r2, r2, #8388608
 251 0020 9A60     		str	r2, [r3, #8]
3582:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 252              		.loc 1 3582 9 is_stmt 1 view .LVU67
 253 0022 1A68     		ldr	r2, [r3]
 254 0024 42F04002 		orr	r2, r2, #64
 255 0028 1A60     		str	r2, [r3]
3584:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 256              		.loc 1 3584 9 view .LVU68
 257              	.LVL12:
 258              	.L8:
3584:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 259              		.loc 1 3584 9 is_stmt 0 view .LVU69
 260              	.LBE13:
 261              	.LBE12:
3618:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3619:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable the TX FIFO threshold interrupt */
3620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
3621:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3622:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Enable the UART Transmit Complete Interrupt */
3623:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         SET_BIT(huart->Instance->CR1, USART_CR1_TCIE);
3624:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3625:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break; /* force exit loop */
3626:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else if (READ_BIT(huart->Instance->ISR, USART_ISR_TXE_TXFNF) != 0U)
3628:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3629:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         tmp = (uint16_t *) huart->pTxBuffPtr;
3630:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->Instance->TDR = (((uint32_t)(*tmp)) & 0x01FFUL);
3631:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr += 2U;
3632:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxXferCount--;
3633:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3634:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       else
3635:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3636:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Nothing to do */
3637:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3638:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3639:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3640:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 262              		.loc 1 3640 1 view .LVU70
 263 002a 10BD     		pop	{r4, pc}
 264              	.LVL13:
 265              	.L12:
3627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 266              		.loc 1 3627 12 is_stmt 1 view .LVU71
3627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 267              		.loc 1 3627 16 is_stmt 0 view .LVU72
 268 002c D969     		ldr	r1, [r3, #28]
3627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 269              		.loc 1 3627 15 view .LVU73
 270 002e 0906     		lsls	r1, r1, #24
 271 0030 0CD5     		bpl	.L13
3629:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->Instance->TDR = (((uint32_t)(*tmp)) & 0x01FFUL);
 272              		.loc 1 3629 9 is_stmt 1 view .LVU74
 273              	.LVL14:
3630:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr += 2U;
 274              		.loc 1 3630 9 view .LVU75
3630:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr += 2U;
 275              		.loc 1 3630 52 is_stmt 0 view .LVU76
 276 0032 016D     		ldr	r1, [r0, #80]
 277 0034 31F8024B 		ldrh	r4, [r1], #2
 278 0038 C4F30804 		ubfx	r4, r4, #0, #9
3630:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr += 2U;
 279              		.loc 1 3630 30 view .LVU77
 280 003c 9C62     		str	r4, [r3, #40]
3631:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxXferCount--;
 281              		.loc 1 3631 9 is_stmt 1 view .LVU78
3632:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 282              		.loc 1 3632 14 is_stmt 0 view .LVU79
 283 003e B0F85630 		ldrh	r3, [r0, #86]
3631:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxXferCount--;
 284              		.loc 1 3631 27 view .LVU80
 285 0042 0165     		str	r1, [r0, #80]
 286              	.LVL15:
3632:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 287              		.loc 1 3632 9 is_stmt 1 view .LVU81
3632:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 288              		.loc 1 3632 27 is_stmt 0 view .LVU82
 289 0044 013B     		subs	r3, r3, #1
 290 0046 9BB2     		uxth	r3, r3
 291 0048 A0F85630 		strh	r3, [r0, #86]	@ movhi
 292              	.LVL16:
 293              	.L13:
3637:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 294              		.loc 1 3637 7 is_stmt 1 discriminator 2 view .LVU83
3615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 295              		.loc 1 3615 78 is_stmt 0 discriminator 2 view .LVU84
 296 004c 013A     		subs	r2, r2, #1
 297              	.LVL17:
3615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 298              		.loc 1 3615 78 discriminator 2 view .LVU85
 299 004e 92B2     		uxth	r2, r2
 300              	.LVL18:
3615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 301              		.loc 1 3615 78 discriminator 2 view .LVU86
 302 0050 DDE7     		b	.L11
 303              		.cfi_endproc
 304              	.LFE383:
 306              		.section	.text.UART_TxISR_8BIT_FIFOEN,"ax",%progbits
 307              		.align	1
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu fpv4-sp-d16
 313              	UART_TxISR_8BIT_FIFOEN:
 314              	.LVL19:
 315              	.LFB382:
3568:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  nb_tx_data;
 316              		.loc 1 3568 1 is_stmt 1 view -0
 317              		.cfi_startproc
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
3569:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 320              		.loc 1 3569 3 view .LVU88
3572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 321              		.loc 1 3572 3 view .LVU89
3572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 322              		.loc 1 3572 12 is_stmt 0 view .LVU90
 323 0000 D0F88030 		ldr	r3, [r0, #128]
3572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 324              		.loc 1 3572 6 view .LVU91
 325 0004 212B     		cmp	r3, #33
3568:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  nb_tx_data;
 326              		.loc 1 3568 1 view .LVU92
 327 0006 10B5     		push	{r4, lr}
 328              		.cfi_def_cfa_offset 8
 329              		.cfi_offset 4, -8
 330              		.cfi_offset 14, -4
3572:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 331              		.loc 1 3572 6 view .LVU93
 332 0008 0FD1     		bne	.L19
3574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 333              		.loc 1 3574 5 is_stmt 1 view .LVU94
3574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 334              		.loc 1 3574 21 is_stmt 0 view .LVU95
 335 000a B0F86A20 		ldrh	r2, [r0, #106]
 336              	.LVL20:
 337              	.L22:
3574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 338              		.loc 1 3574 5 discriminator 1 view .LVU96
 339 000e 62B1     		cbz	r2, .L19
3576:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 340              		.loc 1 3576 7 is_stmt 1 view .LVU97
3576:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 341              		.loc 1 3576 16 is_stmt 0 view .LVU98
 342 0010 B0F85610 		ldrh	r1, [r0, #86]
 343 0014 0368     		ldr	r3, [r0]
 344 0016 89B2     		uxth	r1, r1
3576:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 345              		.loc 1 3576 10 view .LVU99
 346 0018 41B9     		cbnz	r1, .L23
 347              	.LVL21:
 348              	.LBB16:
 349              	.LBI16:
3567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 350              		.loc 1 3567 13 is_stmt 1 view .LVU100
 351              	.LBB17:
3579:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 352              		.loc 1 3579 9 view .LVU101
 353 001a 9A68     		ldr	r2, [r3, #8]
 354              	.LVL22:
3579:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 355              		.loc 1 3579 9 is_stmt 0 view .LVU102
 356 001c 22F40002 		bic	r2, r2, #8388608
 357 0020 9A60     		str	r2, [r3, #8]
3582:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 358              		.loc 1 3582 9 is_stmt 1 view .LVU103
 359 0022 1A68     		ldr	r2, [r3]
 360 0024 42F04002 		orr	r2, r2, #64
 361 0028 1A60     		str	r2, [r3]
3584:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 362              		.loc 1 3584 9 view .LVU104
 363              	.LVL23:
 364              	.L19:
3584:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 365              		.loc 1 3584 9 is_stmt 0 view .LVU105
 366              	.LBE17:
 367              	.LBE16:
3598:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 368              		.loc 1 3598 1 view .LVU106
 369 002a 10BD     		pop	{r4, pc}
 370              	.LVL24:
 371              	.L23:
3586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 372              		.loc 1 3586 12 is_stmt 1 view .LVU107
3586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 373              		.loc 1 3586 16 is_stmt 0 view .LVU108
 374 002c D969     		ldr	r1, [r3, #28]
3586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 375              		.loc 1 3586 15 view .LVU109
 376 002e 0906     		lsls	r1, r1, #24
 377 0030 0AD5     		bpl	.L24
3588:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr++;
 378              		.loc 1 3588 9 is_stmt 1 view .LVU110
3588:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr++;
 379              		.loc 1 3588 32 is_stmt 0 view .LVU111
 380 0032 016D     		ldr	r1, [r0, #80]
 381 0034 11F8014B 		ldrb	r4, [r1], #1	@ zero_extendqisi2
3588:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->pTxBuffPtr++;
 382              		.loc 1 3588 30 view .LVU112
 383 0038 9C62     		str	r4, [r3, #40]
3589:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxXferCount--;
 384              		.loc 1 3589 9 is_stmt 1 view .LVU113
3590:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 385              		.loc 1 3590 14 is_stmt 0 view .LVU114
 386 003a B0F85630 		ldrh	r3, [r0, #86]
3589:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->TxXferCount--;
 387              		.loc 1 3589 26 view .LVU115
 388 003e 0165     		str	r1, [r0, #80]
3590:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 389              		.loc 1 3590 9 is_stmt 1 view .LVU116
3590:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 390              		.loc 1 3590 27 is_stmt 0 view .LVU117
 391 0040 013B     		subs	r3, r3, #1
 392 0042 9BB2     		uxth	r3, r3
 393 0044 A0F85630 		strh	r3, [r0, #86]	@ movhi
 394              	.L24:
3595:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 395              		.loc 1 3595 7 is_stmt 1 discriminator 2 view .LVU118
3574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 396              		.loc 1 3574 78 is_stmt 0 discriminator 2 view .LVU119
 397 0048 013A     		subs	r2, r2, #1
 398              	.LVL25:
3574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 399              		.loc 1 3574 78 discriminator 2 view .LVU120
 400 004a 92B2     		uxth	r2, r2
 401              	.LVL26:
3574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 402              		.loc 1 3574 78 discriminator 2 view .LVU121
 403 004c DFE7     		b	.L22
 404              		.cfi_endproc
 405              	.LFE382:
 407              		.section	.text.HAL_UART_MspInit,"ax",%progbits
 408              		.align	1
 409              		.weak	HAL_UART_MspInit
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 415              	HAL_UART_MspInit:
 416              	.LVL27:
 417              	.LFB330:
 658:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 418              		.loc 1 658 1 is_stmt 1 view -0
 419              		.cfi_startproc
 420              		@ args = 0, pretend = 0, frame = 0
 421              		@ frame_needed = 0, uses_anonymous_args = 0
 422              		@ link register save eliminated.
 660:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 423              		.loc 1 660 3 view .LVU123
 665:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 424              		.loc 1 665 1 is_stmt 0 view .LVU124
 425 0000 7047     		bx	lr
 426              		.cfi_endproc
 427              	.LFE330:
 429              		.section	.text.HAL_UART_MspDeInit,"ax",%progbits
 430              		.align	1
 431              		.weak	HAL_UART_MspDeInit
 432              		.syntax unified
 433              		.thumb
 434              		.thumb_func
 435              		.fpu fpv4-sp-d16
 437              	HAL_UART_MspDeInit:
 438              	.LFB398:
 439              		.cfi_startproc
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442              		@ link register save eliminated.
 443 0000 7047     		bx	lr
 444              		.cfi_endproc
 445              	.LFE398:
 447              		.section	.text.HAL_UART_DeInit,"ax",%progbits
 448              		.align	1
 449              		.global	HAL_UART_DeInit
 450              		.syntax unified
 451              		.thumb
 452              		.thumb_func
 453              		.fpu fpv4-sp-d16
 455              	HAL_UART_DeInit:
 456              	.LVL28:
 457              	.LFB329:
 613:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 458              		.loc 1 613 1 is_stmt 1 view -0
 459              		.cfi_startproc
 460              		@ args = 0, pretend = 0, frame = 0
 461              		@ frame_needed = 0, uses_anonymous_args = 0
 615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 462              		.loc 1 615 3 view .LVU126
 613:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 463              		.loc 1 613 1 is_stmt 0 view .LVU127
 464 0000 38B5     		push	{r3, r4, r5, lr}
 465              		.cfi_def_cfa_offset 16
 466              		.cfi_offset 3, -16
 467              		.cfi_offset 4, -12
 468              		.cfi_offset 5, -8
 469              		.cfi_offset 14, -4
 615:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 470              		.loc 1 615 6 view .LVU128
 471 0002 0546     		mov	r5, r0
 472 0004 B8B1     		cbz	r0, .L34
 621:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 473              		.loc 1 621 3 is_stmt 1 view .LVU129
 623:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 474              		.loc 1 623 3 view .LVU130
 623:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 475              		.loc 1 623 17 is_stmt 0 view .LVU131
 476 0006 2423     		movs	r3, #36
 477 0008 C0F88030 		str	r3, [r0, #128]
 625:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 478              		.loc 1 625 3 is_stmt 1 view .LVU132
 479 000c 0368     		ldr	r3, [r0]
 480 000e 1A68     		ldr	r2, [r3]
 627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR2 = 0x0U;
 481              		.loc 1 627 24 is_stmt 0 view .LVU133
 482 0010 0024     		movs	r4, #0
 625:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 483              		.loc 1 625 3 view .LVU134
 484 0012 22F00102 		bic	r2, r2, #1
 485 0016 1A60     		str	r2, [r3]
 627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR2 = 0x0U;
 486              		.loc 1 627 3 is_stmt 1 view .LVU135
 627:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR2 = 0x0U;
 487              		.loc 1 627 24 is_stmt 0 view .LVU136
 488 0018 1C60     		str	r4, [r3]
 628:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR3 = 0x0U;
 489              		.loc 1 628 3 is_stmt 1 view .LVU137
 628:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->Instance->CR3 = 0x0U;
 490              		.loc 1 628 24 is_stmt 0 view .LVU138
 491 001a 5C60     		str	r4, [r3, #4]
 629:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 492              		.loc 1 629 3 is_stmt 1 view .LVU139
 629:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 493              		.loc 1 629 24 is_stmt 0 view .LVU140
 494 001c 9C60     		str	r4, [r3, #8]
 640:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 495              		.loc 1 640 3 is_stmt 1 view .LVU141
 496 001e FFF7FEFF 		bl	HAL_UART_MspDeInit
 497              	.LVL29:
 643:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_RESET;
 498              		.loc 1 643 3 view .LVU142
 643:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_RESET;
 499              		.loc 1 643 20 is_stmt 0 view .LVU143
 500 0022 C5F88840 		str	r4, [r5, #136]
 644:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_RESET;
 501              		.loc 1 644 3 is_stmt 1 view .LVU144
 647:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 502              		.loc 1 647 3 is_stmt 0 view .LVU145
 503 0026 85F87C40 		strb	r4, [r5, #124]
 644:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_RESET;
 504              		.loc 1 644 17 view .LVU146
 505 002a C5F88040 		str	r4, [r5, #128]
 645:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 506              		.loc 1 645 3 is_stmt 1 view .LVU147
 649:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 507              		.loc 1 649 10 is_stmt 0 view .LVU148
 508 002e 2046     		mov	r0, r4
 645:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 509              		.loc 1 645 18 view .LVU149
 510 0030 C5F88440 		str	r4, [r5, #132]
 647:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 511              		.loc 1 647 3 is_stmt 1 view .LVU150
 647:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 512              		.loc 1 647 3 view .LVU151
 649:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 513              		.loc 1 649 3 view .LVU152
 514              	.L33:
 650:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 515              		.loc 1 650 1 is_stmt 0 view .LVU153
 516 0034 38BD     		pop	{r3, r4, r5, pc}
 517              	.LVL30:
 518              	.L34:
 617:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 519              		.loc 1 617 12 view .LVU154
 520 0036 0120     		movs	r0, #1
 521              	.LVL31:
 617:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 522              		.loc 1 617 12 view .LVU155
 523 0038 FCE7     		b	.L33
 524              		.cfi_endproc
 525              	.LFE329:
 527              		.section	.text.HAL_UART_Transmit_IT,"ax",%progbits
 528              		.align	1
 529              		.global	HAL_UART_Transmit_IT
 530              		.syntax unified
 531              		.thumb
 532              		.thumb_func
 533              		.fpu fpv4-sp-d16
 535              	HAL_UART_Transmit_IT:
 536              	.LVL32:
 537              	.LFB334:
1206:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 538              		.loc 1 1206 1 is_stmt 1 view -0
 539              		.cfi_startproc
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
1208:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 542              		.loc 1 1208 3 view .LVU157
1208:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 543              		.loc 1 1208 12 is_stmt 0 view .LVU158
 544 0000 D0F88030 		ldr	r3, [r0, #128]
1208:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 545              		.loc 1 1208 6 view .LVU159
 546 0004 202B     		cmp	r3, #32
1206:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 547              		.loc 1 1206 1 view .LVU160
 548 0006 10B5     		push	{r4, lr}
 549              		.cfi_def_cfa_offset 8
 550              		.cfi_offset 4, -8
 551              		.cfi_offset 14, -4
1208:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 552              		.loc 1 1208 6 view .LVU161
 553 0008 48D1     		bne	.L43
1210:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 554              		.loc 1 1210 5 is_stmt 1 view .LVU162
1210:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 555              		.loc 1 1210 8 is_stmt 0 view .LVU163
 556 000a 0029     		cmp	r1, #0
 557 000c 44D0     		beq	.L42
1210:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 558              		.loc 1 1210 25 discriminator 1 view .LVU164
 559 000e 002A     		cmp	r2, #0
 560 0010 42D0     		beq	.L42
1215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 561              		.loc 1 1215 5 is_stmt 1 view .LVU165
1215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 562              		.loc 1 1215 5 view .LVU166
 563 0012 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 564 0016 012B     		cmp	r3, #1
 565 0018 40D0     		beq	.L43
1215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 566              		.loc 1 1215 5 discriminator 2 view .LVU167
1219:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxISR       = NULL;
 567              		.loc 1 1219 24 is_stmt 0 discriminator 2 view .LVU168
 568 001a A0F85620 		strh	r2, [r0, #86]	@ movhi
1215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 569              		.loc 1 1215 5 discriminator 2 view .LVU169
 570 001e 0123     		movs	r3, #1
1218:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
 571              		.loc 1 1218 24 discriminator 2 view .LVU170
 572 0020 A0F85420 		strh	r2, [r0, #84]	@ movhi
1226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 573              		.loc 1 1226 8 discriminator 2 view .LVU171
 574 0024 426E     		ldr	r2, [r0, #100]
 575              	.LVL33:
1215:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 576              		.loc 1 1215 5 discriminator 2 view .LVU172
 577 0026 80F87C30 		strb	r3, [r0, #124]
1217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferSize  = Size;
 578              		.loc 1 1217 5 is_stmt 1 discriminator 2 view .LVU173
1220:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 579              		.loc 1 1220 24 is_stmt 0 discriminator 2 view .LVU174
 580 002a 0023     		movs	r3, #0
1222:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 581              		.loc 1 1222 22 discriminator 2 view .LVU175
 582 002c C0F88830 		str	r3, [r0, #136]
 583              	.LVL34:
1220:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 584              		.loc 1 1220 24 discriminator 2 view .LVU176
 585 0030 0367     		str	r3, [r0, #112]
1226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 586              		.loc 1 1226 8 discriminator 2 view .LVU177
 587 0032 B2F1005F 		cmp	r2, #536870912
1223:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 588              		.loc 1 1223 19 discriminator 2 view .LVU178
 589 0036 4FF02103 		mov	r3, #33
 590 003a C0F88030 		str	r3, [r0, #128]
1217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferSize  = Size;
 591              		.loc 1 1217 24 discriminator 2 view .LVU179
 592 003e 0165     		str	r1, [r0, #80]
1218:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
 593              		.loc 1 1218 5 is_stmt 1 discriminator 2 view .LVU180
1219:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxISR       = NULL;
 594              		.loc 1 1219 5 discriminator 2 view .LVU181
1220:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 595              		.loc 1 1220 5 discriminator 2 view .LVU182
1222:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 596              		.loc 1 1222 5 discriminator 2 view .LVU183
1223:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 597              		.loc 1 1223 5 discriminator 2 view .LVU184
1226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 598              		.loc 1 1226 5 discriminator 2 view .LVU185
 599 0040 8368     		ldr	r3, [r0, #8]
 600 0042 0268     		ldr	r2, [r0]
1226:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 601              		.loc 1 1226 8 is_stmt 0 discriminator 2 view .LVU186
 602 0044 14D1     		bne	.L37
1229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 603              		.loc 1 1229 7 is_stmt 1 view .LVU187
1229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 604              		.loc 1 1229 10 is_stmt 0 view .LVU188
 605 0046 B3F5805F 		cmp	r3, #4096
 606 004a 0FD1     		bne	.L44
1229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 607              		.loc 1 1229 58 discriminator 1 view .LVU189
 608 004c 0469     		ldr	r4, [r0, #16]
1231:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 609              		.loc 1 1231 22 discriminator 1 view .LVU190
 610 004e 144B     		ldr	r3, .L49
 611 0050 1449     		ldr	r1, .L49+4
 612              	.LVL35:
1231:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 613              		.loc 1 1231 22 discriminator 1 view .LVU191
 614 0052 002C     		cmp	r4, #0
 615 0054 08BF     		it	eq
 616 0056 0B46     		moveq	r3, r1
 617              	.L38:
1241:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 618              		.loc 1 1241 7 view .LVU192
 619 0058 9168     		ldr	r1, [r2, #8]
 620 005a 0367     		str	r3, [r0, #112]
1238:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 621              		.loc 1 1238 7 is_stmt 1 view .LVU193
1238:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 622              		.loc 1 1238 7 view .LVU194
1241:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 623              		.loc 1 1241 7 is_stmt 0 view .LVU195
 624 005c 41F40001 		orr	r1, r1, #8388608
1238:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 625              		.loc 1 1238 7 view .LVU196
 626 0060 0023     		movs	r3, #0
 627 0062 80F87C30 		strb	r3, [r0, #124]
1241:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 628              		.loc 1 1241 7 is_stmt 1 view .LVU197
 629 0066 9160     		str	r1, [r2, #8]
 630              	.L48:
1261:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 631              		.loc 1 1261 12 is_stmt 0 view .LVU198
 632 0068 1846     		mov	r0, r3
 633              	.LVL36:
 634              	.L36:
1267:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 635              		.loc 1 1267 1 view .LVU199
 636 006a 10BD     		pop	{r4, pc}
 637              	.LVL37:
 638              	.L44:
1235:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 639              		.loc 1 1235 22 view .LVU200
 640 006c 0C4B     		ldr	r3, .L49
 641 006e F3E7     		b	.L38
 642              	.L37:
1246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 643              		.loc 1 1246 7 is_stmt 1 view .LVU201
1246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 644              		.loc 1 1246 10 is_stmt 0 view .LVU202
 645 0070 B3F5805F 		cmp	r3, #4096
 646 0074 0ED1     		bne	.L46
1246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 647              		.loc 1 1246 58 discriminator 1 view .LVU203
 648 0076 0469     		ldr	r4, [r0, #16]
1248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 649              		.loc 1 1248 22 discriminator 1 view .LVU204
 650 0078 0B4B     		ldr	r3, .L49+8
 651 007a 0C49     		ldr	r1, .L49+12
 652              	.LVL38:
1248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 653              		.loc 1 1248 22 discriminator 1 view .LVU205
 654 007c 002C     		cmp	r4, #0
 655 007e 08BF     		it	eq
 656 0080 0B46     		moveq	r3, r1
 657              	.L39:
1258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 658              		.loc 1 1258 7 view .LVU206
 659 0082 1168     		ldr	r1, [r2]
 660 0084 0367     		str	r3, [r0, #112]
1255:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 661              		.loc 1 1255 7 is_stmt 1 view .LVU207
1255:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 662              		.loc 1 1255 7 view .LVU208
1258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 663              		.loc 1 1258 7 is_stmt 0 view .LVU209
 664 0086 41F08001 		orr	r1, r1, #128
1255:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 665              		.loc 1 1255 7 view .LVU210
 666 008a 0023     		movs	r3, #0
 667 008c 80F87C30 		strb	r3, [r0, #124]
1258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 668              		.loc 1 1258 7 is_stmt 1 view .LVU211
 669 0090 1160     		str	r1, [r2]
 670 0092 E9E7     		b	.L48
 671              	.LVL39:
 672              	.L46:
1252:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 673              		.loc 1 1252 22 is_stmt 0 view .LVU212
 674 0094 044B     		ldr	r3, .L49+8
 675 0096 F4E7     		b	.L39
 676              	.LVL40:
 677              	.L42:
1212:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 678              		.loc 1 1212 14 view .LVU213
 679 0098 0120     		movs	r0, #1
 680              	.LVL41:
1212:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 681              		.loc 1 1212 14 view .LVU214
 682 009a E6E7     		b	.L36
 683              	.LVL42:
 684              	.L43:
1265:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 685              		.loc 1 1265 12 view .LVU215
 686 009c 0220     		movs	r0, #2
 687              	.LVL43:
1265:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 688              		.loc 1 1265 12 view .LVU216
 689 009e E4E7     		b	.L36
 690              	.L50:
 691              		.align	2
 692              	.L49:
 693 00a0 00000000 		.word	UART_TxISR_8BIT_FIFOEN
 694 00a4 00000000 		.word	UART_TxISR_16BIT_FIFOEN
 695 00a8 00000000 		.word	UART_TxISR_8BIT
 696 00ac 00000000 		.word	UART_TxISR_16BIT
 697              		.cfi_endproc
 698              	.LFE334:
 700              		.section	.text.HAL_UART_Receive_IT,"ax",%progbits
 701              		.align	1
 702              		.global	HAL_UART_Receive_IT
 703              		.syntax unified
 704              		.thumb
 705              		.thumb_func
 706              		.fpu fpv4-sp-d16
 708              	HAL_UART_Receive_IT:
 709              	.LVL44:
 710              	.LFB335:
1280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 711              		.loc 1 1280 1 is_stmt 1 view -0
 712              		.cfi_startproc
 713              		@ args = 0, pretend = 0, frame = 0
 714              		@ frame_needed = 0, uses_anonymous_args = 0
1282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 715              		.loc 1 1282 3 view .LVU218
1282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 716              		.loc 1 1282 12 is_stmt 0 view .LVU219
 717 0000 D0F88430 		ldr	r3, [r0, #132]
1282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 718              		.loc 1 1282 6 view .LVU220
 719 0004 202B     		cmp	r3, #32
1280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 720              		.loc 1 1280 1 view .LVU221
 721 0006 10B5     		push	{r4, lr}
 722              		.cfi_def_cfa_offset 8
 723              		.cfi_offset 4, -8
 724              		.cfi_offset 14, -4
1282:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 725              		.loc 1 1282 6 view .LVU222
 726 0008 6ED1     		bne	.L65
1284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 727              		.loc 1 1284 5 is_stmt 1 view .LVU223
1284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 728              		.loc 1 1284 8 is_stmt 0 view .LVU224
 729 000a 0029     		cmp	r1, #0
 730 000c 6AD0     		beq	.L64
1284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 731              		.loc 1 1284 25 discriminator 1 view .LVU225
 732 000e 002A     		cmp	r2, #0
 733 0010 68D0     		beq	.L64
1289:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 734              		.loc 1 1289 5 is_stmt 1 view .LVU226
1289:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 735              		.loc 1 1289 5 view .LVU227
 736 0012 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 737 0016 012B     		cmp	r3, #1
 738 0018 66D0     		beq	.L65
1289:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 739              		.loc 1 1289 5 discriminator 2 view .LVU228
 740 001a 0123     		movs	r3, #1
 741 001c 80F87C30 		strb	r3, [r0, #124]
1291:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferSize  = Size;
 742              		.loc 1 1291 5 discriminator 2 view .LVU229
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 743              		.loc 1 1297 5 is_stmt 0 discriminator 2 view .LVU230
 744 0020 8368     		ldr	r3, [r0, #8]
1291:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferSize  = Size;
 745              		.loc 1 1291 24 discriminator 2 view .LVU231
 746 0022 8165     		str	r1, [r0, #88]
1292:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = Size;
 747              		.loc 1 1292 5 is_stmt 1 discriminator 2 view .LVU232
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 748              		.loc 1 1297 5 is_stmt 0 discriminator 2 view .LVU233
 749 0024 B3F5805F 		cmp	r3, #4096
1294:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 750              		.loc 1 1294 24 discriminator 2 view .LVU234
 751 0028 4FF00001 		mov	r1, #0
 752              	.LVL45:
1292:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = Size;
 753              		.loc 1 1292 24 discriminator 2 view .LVU235
 754 002c A0F85C20 		strh	r2, [r0, #92]	@ movhi
1293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxISR       = NULL;
 755              		.loc 1 1293 5 is_stmt 1 discriminator 2 view .LVU236
1293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxISR       = NULL;
 756              		.loc 1 1293 24 is_stmt 0 discriminator 2 view .LVU237
 757 0030 A0F85E20 		strh	r2, [r0, #94]	@ movhi
1294:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 758              		.loc 1 1294 5 is_stmt 1 discriminator 2 view .LVU238
1294:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 759              		.loc 1 1294 24 is_stmt 0 discriminator 2 view .LVU239
 760 0034 C166     		str	r1, [r0, #108]
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 761              		.loc 1 1297 5 is_stmt 1 discriminator 2 view .LVU240
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 762              		.loc 1 1297 5 discriminator 2 view .LVU241
 763 0036 31D1     		bne	.L53
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 764              		.loc 1 1297 5 discriminator 1 view .LVU242
 765 0038 0169     		ldr	r1, [r0, #16]
 766 003a 69BB     		cbnz	r1, .L54
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 767              		.loc 1 1297 5 discriminator 3 view .LVU243
 768 003c 40F2FF11 		movw	r1, #511
 769              	.L57:
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 770              		.loc 1 1297 5 discriminator 10 view .LVU244
 771 0040 A0F86010 		strh	r1, [r0, #96]	@ movhi
1299:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 772              		.loc 1 1299 5 discriminator 10 view .LVU245
1299:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 773              		.loc 1 1299 22 is_stmt 0 discriminator 10 view .LVU246
 774 0044 0021     		movs	r1, #0
 775 0046 C0F88810 		str	r1, [r0, #136]
1300:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 776              		.loc 1 1300 5 is_stmt 1 discriminator 10 view .LVU247
1300:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 777              		.loc 1 1300 20 is_stmt 0 discriminator 10 view .LVU248
 778 004a 2221     		movs	r1, #34
 779 004c C0F88410 		str	r1, [r0, #132]
1303:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 780              		.loc 1 1303 5 is_stmt 1 discriminator 10 view .LVU249
 781 0050 0168     		ldr	r1, [r0]
 782 0052 8C68     		ldr	r4, [r1, #8]
 783 0054 44F00104 		orr	r4, r4, #1
 784 0058 8C60     		str	r4, [r1, #8]
1306:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 785              		.loc 1 1306 5 discriminator 10 view .LVU250
1306:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 786              		.loc 1 1306 8 is_stmt 0 discriminator 10 view .LVU251
 787 005a 446E     		ldr	r4, [r0, #100]
 788 005c B4F1005F 		cmp	r4, #536870912
 789 0060 2CD1     		bne	.L59
1306:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 790              		.loc 1 1306 51 discriminator 1 view .LVU252
 791 0062 B0F86840 		ldrh	r4, [r0, #104]
 792 0066 9442     		cmp	r4, r2
 793 0068 28D8     		bhi	.L59
1309:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 794              		.loc 1 1309 7 is_stmt 1 view .LVU253
1309:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 795              		.loc 1 1309 10 is_stmt 0 view .LVU254
 796 006a B3F5805F 		cmp	r3, #4096
 797 006e 23D1     		bne	.L66
1309:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 798              		.loc 1 1309 58 discriminator 1 view .LVU255
 799 0070 0469     		ldr	r4, [r0, #16]
1311:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 800              		.loc 1 1311 22 discriminator 1 view .LVU256
 801 0072 1E4B     		ldr	r3, .L77
 802 0074 1E4A     		ldr	r2, .L77+4
 803              	.LVL46:
1311:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 804              		.loc 1 1311 22 discriminator 1 view .LVU257
 805 0076 002C     		cmp	r4, #0
 806 0078 08BF     		it	eq
 807 007a 1346     		moveq	r3, r2
 808              	.L60:
1321:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR3, USART_CR3_RXFTIE);
 809              		.loc 1 1321 7 view .LVU258
 810 007c 0A68     		ldr	r2, [r1]
 811 007e C366     		str	r3, [r0, #108]
1318:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 812              		.loc 1 1318 7 is_stmt 1 view .LVU259
1318:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 813              		.loc 1 1318 7 view .LVU260
1321:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR3, USART_CR3_RXFTIE);
 814              		.loc 1 1321 7 is_stmt 0 view .LVU261
 815 0080 42F48072 		orr	r2, r2, #256
1318:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 816              		.loc 1 1318 7 view .LVU262
 817 0084 0023     		movs	r3, #0
 818 0086 80F87C30 		strb	r3, [r0, #124]
1321:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR3, USART_CR3_RXFTIE);
 819              		.loc 1 1321 7 is_stmt 1 view .LVU263
 820 008a 0A60     		str	r2, [r1]
1322:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 821              		.loc 1 1322 7 view .LVU264
 822 008c 8A68     		ldr	r2, [r1, #8]
 823 008e 42F08052 		orr	r2, r2, #268435456
 824 0092 8A60     		str	r2, [r1, #8]
 825              	.L76:
1342:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 826              		.loc 1 1342 12 is_stmt 0 view .LVU265
 827 0094 1846     		mov	r0, r3
 828              	.LVL47:
 829              	.L52:
1348:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 830              		.loc 1 1348 1 view .LVU266
 831 0096 10BD     		pop	{r4, pc}
 832              	.LVL48:
 833              	.L54:
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 834              		.loc 1 1297 5 is_stmt 1 discriminator 4 view .LVU267
 835 0098 FF21     		movs	r1, #255
 836 009a D1E7     		b	.L57
 837              	.L53:
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 838              		.loc 1 1297 5 discriminator 2 view .LVU268
 839 009c 23B9     		cbnz	r3, .L56
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 840              		.loc 1 1297 5 discriminator 5 view .LVU269
 841 009e 0169     		ldr	r1, [r0, #16]
 842 00a0 0029     		cmp	r1, #0
 843 00a2 F9D0     		beq	.L54
 844              	.L58:
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 845              		.loc 1 1297 5 discriminator 8 view .LVU270
 846 00a4 7F21     		movs	r1, #127
 847 00a6 CBE7     		b	.L57
 848              	.L56:
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 849              		.loc 1 1297 5 discriminator 6 view .LVU271
 850 00a8 B3F1805F 		cmp	r3, #268435456
 851 00ac C8D1     		bne	.L57
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 852              		.loc 1 1297 5 discriminator 9 view .LVU272
 853 00ae 0169     		ldr	r1, [r0, #16]
 854 00b0 0029     		cmp	r1, #0
 855 00b2 F7D0     		beq	.L58
1297:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 856              		.loc 1 1297 5 discriminator 12 view .LVU273
 857 00b4 3F21     		movs	r1, #63
 858 00b6 C3E7     		b	.L57
 859              	.L66:
1315:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 860              		.loc 1 1315 22 is_stmt 0 view .LVU274
 861 00b8 0C4B     		ldr	r3, .L77
 862 00ba DFE7     		b	.L60
 863              	.L59:
1327:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 864              		.loc 1 1327 7 is_stmt 1 view .LVU275
1327:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 865              		.loc 1 1327 10 is_stmt 0 view .LVU276
 866 00bc B3F5805F 		cmp	r3, #4096
 867 00c0 0ED1     		bne	.L68
1327:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 868              		.loc 1 1327 58 discriminator 1 view .LVU277
 869 00c2 0469     		ldr	r4, [r0, #16]
1329:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 870              		.loc 1 1329 22 discriminator 1 view .LVU278
 871 00c4 0B4B     		ldr	r3, .L77+8
 872 00c6 0C4A     		ldr	r2, .L77+12
 873              	.LVL49:
1329:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 874              		.loc 1 1329 22 discriminator 1 view .LVU279
 875 00c8 002C     		cmp	r4, #0
 876 00ca 08BF     		it	eq
 877 00cc 1346     		moveq	r3, r2
 878              	.L61:
1339:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 879              		.loc 1 1339 7 view .LVU280
 880 00ce 0A68     		ldr	r2, [r1]
 881 00d0 C366     		str	r3, [r0, #108]
1336:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 882              		.loc 1 1336 7 is_stmt 1 view .LVU281
1336:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 883              		.loc 1 1336 7 view .LVU282
1339:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 884              		.loc 1 1339 7 is_stmt 0 view .LVU283
 885 00d2 42F49072 		orr	r2, r2, #288
1336:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 886              		.loc 1 1336 7 view .LVU284
 887 00d6 0023     		movs	r3, #0
 888 00d8 80F87C30 		strb	r3, [r0, #124]
1339:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 889              		.loc 1 1339 7 is_stmt 1 view .LVU285
 890 00dc 0A60     		str	r2, [r1]
 891 00de D9E7     		b	.L76
 892              	.LVL50:
 893              	.L68:
1333:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 894              		.loc 1 1333 22 is_stmt 0 view .LVU286
 895 00e0 044B     		ldr	r3, .L77+8
 896 00e2 F4E7     		b	.L61
 897              	.LVL51:
 898              	.L64:
1286:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 899              		.loc 1 1286 14 view .LVU287
 900 00e4 0120     		movs	r0, #1
 901              	.LVL52:
1286:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 902              		.loc 1 1286 14 view .LVU288
 903 00e6 D6E7     		b	.L52
 904              	.LVL53:
 905              	.L65:
1346:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 906              		.loc 1 1346 12 view .LVU289
 907 00e8 0220     		movs	r0, #2
 908              	.LVL54:
1346:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 909              		.loc 1 1346 12 view .LVU290
 910 00ea D4E7     		b	.L52
 911              	.L78:
 912              		.align	2
 913              	.L77:
 914 00ec 00000000 		.word	UART_RxISR_8BIT_FIFOEN
 915 00f0 00000000 		.word	UART_RxISR_16BIT_FIFOEN
 916 00f4 00000000 		.word	UART_RxISR_8BIT
 917 00f8 00000000 		.word	UART_RxISR_16BIT
 918              		.cfi_endproc
 919              	.LFE335:
 921              		.section	.text.HAL_UART_Transmit_DMA,"ax",%progbits
 922              		.align	1
 923              		.global	HAL_UART_Transmit_DMA
 924              		.syntax unified
 925              		.thumb
 926              		.thumb_func
 927              		.fpu fpv4-sp-d16
 929              	HAL_UART_Transmit_DMA:
 930              	.LVL55:
 931              	.LFB336:
1361:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 932              		.loc 1 1361 1 is_stmt 1 view -0
 933              		.cfi_startproc
 934              		@ args = 0, pretend = 0, frame = 0
 935              		@ frame_needed = 0, uses_anonymous_args = 0
1363:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 936              		.loc 1 1363 3 view .LVU292
1361:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 937              		.loc 1 1361 1 is_stmt 0 view .LVU293
 938 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 939              		.cfi_def_cfa_offset 24
 940              		.cfi_offset 3, -24
 941              		.cfi_offset 4, -20
 942              		.cfi_offset 5, -16
 943              		.cfi_offset 6, -12
 944              		.cfi_offset 7, -8
 945              		.cfi_offset 14, -4
1361:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 946              		.loc 1 1361 1 view .LVU294
 947 0002 0446     		mov	r4, r0
 948 0004 1346     		mov	r3, r2
1363:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 949              		.loc 1 1363 12 view .LVU295
 950 0006 D4F88070 		ldr	r7, [r4, #128]
1363:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 951              		.loc 1 1363 6 view .LVU296
 952 000a 202F     		cmp	r7, #32
 953 000c 3AD1     		bne	.L85
1365:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 954              		.loc 1 1365 5 is_stmt 1 view .LVU297
1365:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 955              		.loc 1 1365 8 is_stmt 0 view .LVU298
 956 000e 61B3     		cbz	r1, .L84
1365:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 957              		.loc 1 1365 25 discriminator 1 view .LVU299
 958 0010 5AB3     		cbz	r2, .L84
1370:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 959              		.loc 1 1370 5 is_stmt 1 view .LVU300
1370:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 960              		.loc 1 1370 5 view .LVU301
 961 0012 94F87C20 		ldrb	r2, [r4, #124]	@ zero_extendqisi2
 962              	.LVL56:
1370:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 963              		.loc 1 1370 5 is_stmt 0 view .LVU302
 964 0016 012A     		cmp	r2, #1
 965 0018 34D0     		beq	.L85
1370:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 966              		.loc 1 1370 5 is_stmt 1 discriminator 2 view .LVU303
1379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 967              		.loc 1 1379 14 is_stmt 0 discriminator 2 view .LVU304
 968 001a 606F     		ldr	r0, [r4, #116]
 969              	.LVL57:
1374:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 970              		.loc 1 1374 24 discriminator 2 view .LVU305
 971 001c A4F85630 		strh	r3, [r4, #86]	@ movhi
1370:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 972              		.loc 1 1370 5 discriminator 2 view .LVU306
 973 0020 0125     		movs	r5, #1
1376:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 974              		.loc 1 1376 22 discriminator 2 view .LVU307
 975 0022 0026     		movs	r6, #0
1377:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 976              		.loc 1 1377 19 discriminator 2 view .LVU308
 977 0024 2122     		movs	r2, #33
1376:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 978              		.loc 1 1376 22 discriminator 2 view .LVU309
 979 0026 C4F88860 		str	r6, [r4, #136]
1370:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 980              		.loc 1 1370 5 discriminator 2 view .LVU310
 981 002a 84F87C50 		strb	r5, [r4, #124]
1372:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferSize  = Size;
 982              		.loc 1 1372 5 is_stmt 1 discriminator 2 view .LVU311
1372:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferSize  = Size;
 983              		.loc 1 1372 24 is_stmt 0 discriminator 2 view .LVU312
 984 002e 2165     		str	r1, [r4, #80]
1373:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
 985              		.loc 1 1373 5 is_stmt 1 discriminator 2 view .LVU313
1373:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
 986              		.loc 1 1373 24 is_stmt 0 discriminator 2 view .LVU314
 987 0030 A4F85430 		strh	r3, [r4, #84]	@ movhi
1374:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 988              		.loc 1 1374 5 is_stmt 1 discriminator 2 view .LVU315
1376:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 989              		.loc 1 1376 5 discriminator 2 view .LVU316
1377:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 990              		.loc 1 1377 5 discriminator 2 view .LVU317
1377:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 991              		.loc 1 1377 19 is_stmt 0 discriminator 2 view .LVU318
 992 0034 C4F88020 		str	r2, [r4, #128]
1379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 993              		.loc 1 1379 5 is_stmt 1 discriminator 2 view .LVU319
1379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 994              		.loc 1 1379 8 is_stmt 0 discriminator 2 view .LVU320
 995 0038 C8B1     		cbz	r0, .L81
1382:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 996              		.loc 1 1382 39 view .LVU321
 997 003a DFF84CC0 		ldr	ip, .L92
 998 003e 2268     		ldr	r2, [r4]
1382:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 999              		.loc 1 1382 7 is_stmt 1 view .LVU322
1382:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1000              		.loc 1 1382 39 is_stmt 0 view .LVU323
 1001 0040 C0F82CC0 		str	ip, [r0, #44]
1385:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1002              		.loc 1 1385 7 is_stmt 1 view .LVU324
1385:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1003              		.loc 1 1385 43 is_stmt 0 view .LVU325
 1004 0044 DFF844C0 		ldr	ip, .L92+4
 1005 0048 C0F830C0 		str	ip, [r0, #48]
1388:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1006              		.loc 1 1388 7 is_stmt 1 view .LVU326
1388:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1007              		.loc 1 1388 40 is_stmt 0 view .LVU327
 1008 004c DFF840C0 		ldr	ip, .L92+8
1394:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1009              		.loc 1 1394 11 view .LVU328
 1010 0050 2832     		adds	r2, r2, #40
1391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1011              		.loc 1 1391 40 view .LVU329
 1012 0052 C0E90DC6 		strd	ip, r6, [r0, #52]
1394:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1013              		.loc 1 1394 7 is_stmt 1 view .LVU330
1394:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1014              		.loc 1 1394 11 is_stmt 0 view .LVU331
 1015 0056 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1016              	.LVL58:
1394:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1017              		.loc 1 1394 10 view .LVU332
 1018 005a 40B1     		cbz	r0, .L81
1397:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1019              		.loc 1 1397 9 is_stmt 1 view .LVU333
1397:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1020              		.loc 1 1397 26 is_stmt 0 view .LVU334
 1021 005c 1023     		movs	r3, #16
 1022 005e C4F88830 		str	r3, [r4, #136]
1399:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1023              		.loc 1 1399 9 is_stmt 1 view .LVU335
1399:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1024              		.loc 1 1399 9 view .LVU336
 1025 0062 84F87C60 		strb	r6, [r4, #124]
1402:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1026              		.loc 1 1402 9 view .LVU337
1402:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1027              		.loc 1 1402 23 is_stmt 0 view .LVU338
 1028 0066 C4F88070 		str	r7, [r4, #128]
1404:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 1029              		.loc 1 1404 9 is_stmt 1 view .LVU339
 1030              	.L84:
1367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 1031              		.loc 1 1367 14 is_stmt 0 view .LVU340
 1032 006a 0120     		movs	r0, #1
 1033 006c 09E0     		b	.L80
 1034              	.L81:
1408:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1035              		.loc 1 1408 5 is_stmt 1 view .LVU341
 1036 006e 2368     		ldr	r3, [r4]
 1037 0070 4022     		movs	r2, #64
 1038 0072 1A62     		str	r2, [r3, #32]
1410:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1039              		.loc 1 1410 5 view .LVU342
1410:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1040              		.loc 1 1410 5 view .LVU343
1414:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1041              		.loc 1 1414 5 is_stmt 0 view .LVU344
 1042 0074 9A68     		ldr	r2, [r3, #8]
1410:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1043              		.loc 1 1410 5 view .LVU345
 1044 0076 0020     		movs	r0, #0
1414:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1045              		.loc 1 1414 5 view .LVU346
 1046 0078 42F08002 		orr	r2, r2, #128
1410:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1047              		.loc 1 1410 5 view .LVU347
 1048 007c 84F87C00 		strb	r0, [r4, #124]
1414:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1049              		.loc 1 1414 5 is_stmt 1 view .LVU348
 1050 0080 9A60     		str	r2, [r3, #8]
1416:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1051              		.loc 1 1416 5 view .LVU349
 1052              	.L80:
1422:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1053              		.loc 1 1422 1 is_stmt 0 view .LVU350
 1054 0082 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1055              	.LVL59:
 1056              	.L85:
1420:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1057              		.loc 1 1420 12 view .LVU351
 1058 0084 0220     		movs	r0, #2
 1059              	.LVL60:
1420:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1060              		.loc 1 1420 12 view .LVU352
 1061 0086 FCE7     		b	.L80
 1062              	.L93:
 1063              		.align	2
 1064              	.L92:
 1065 0088 00000000 		.word	UART_DMATransmitCplt
 1066 008c 00000000 		.word	UART_DMATxHalfCplt
 1067 0090 00000000 		.word	UART_DMAError
 1068              		.cfi_endproc
 1069              	.LFE336:
 1071              		.section	.text.HAL_UART_Receive_DMA,"ax",%progbits
 1072              		.align	1
 1073              		.global	HAL_UART_Receive_DMA
 1074              		.syntax unified
 1075              		.thumb
 1076              		.thumb_func
 1077              		.fpu fpv4-sp-d16
 1079              	HAL_UART_Receive_DMA:
 1080              	.LVL61:
 1081              	.LFB337:
1437:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 1082              		.loc 1 1437 1 is_stmt 1 view -0
 1083              		.cfi_startproc
 1084              		@ args = 0, pretend = 0, frame = 0
 1085              		@ frame_needed = 0, uses_anonymous_args = 0
1439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1086              		.loc 1 1439 3 view .LVU354
1437:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 1087              		.loc 1 1437 1 is_stmt 0 view .LVU355
 1088 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1089              		.cfi_def_cfa_offset 24
 1090              		.cfi_offset 3, -24
 1091              		.cfi_offset 4, -20
 1092              		.cfi_offset 5, -16
 1093              		.cfi_offset 6, -12
 1094              		.cfi_offset 7, -8
 1095              		.cfi_offset 14, -4
1439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1096              		.loc 1 1439 12 view .LVU356
 1097 0002 D0F88470 		ldr	r7, [r0, #132]
1439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1098              		.loc 1 1439 6 view .LVU357
 1099 0006 202F     		cmp	r7, #32
1437:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 1100              		.loc 1 1437 1 view .LVU358
 1101 0008 0446     		mov	r4, r0
 1102 000a 1346     		mov	r3, r2
1439:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1103              		.loc 1 1439 6 view .LVU359
 1104 000c 3CD1     		bne	.L100
1441:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1105              		.loc 1 1441 5 is_stmt 1 view .LVU360
1441:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1106              		.loc 1 1441 8 is_stmt 0 view .LVU361
 1107 000e 41B3     		cbz	r1, .L99
1441:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1108              		.loc 1 1441 25 discriminator 1 view .LVU362
 1109 0010 3AB3     		cbz	r2, .L99
1446:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1110              		.loc 1 1446 5 is_stmt 1 view .LVU363
1446:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1111              		.loc 1 1446 5 view .LVU364
 1112 0012 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 1113              	.LVL62:
1446:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1114              		.loc 1 1446 5 is_stmt 0 view .LVU365
 1115 0016 012A     		cmp	r2, #1
 1116 0018 36D0     		beq	.L100
1446:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1117              		.loc 1 1446 5 is_stmt 1 discriminator 2 view .LVU366
 1118 001a 0125     		movs	r5, #1
1451:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 1119              		.loc 1 1451 22 is_stmt 0 discriminator 2 view .LVU367
 1120 001c 0026     		movs	r6, #0
1452:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1121              		.loc 1 1452 20 discriminator 2 view .LVU368
 1122 001e 2222     		movs	r2, #34
1451:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 1123              		.loc 1 1451 22 discriminator 2 view .LVU369
 1124 0020 C0F88860 		str	r6, [r0, #136]
1446:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1125              		.loc 1 1446 5 discriminator 2 view .LVU370
 1126 0024 80F87C50 		strb	r5, [r0, #124]
1448:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferSize = Size;
 1127              		.loc 1 1448 5 is_stmt 1 discriminator 2 view .LVU371
1448:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferSize = Size;
 1128              		.loc 1 1448 23 is_stmt 0 discriminator 2 view .LVU372
 1129 0028 8165     		str	r1, [r0, #88]
1449:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1130              		.loc 1 1449 5 is_stmt 1 discriminator 2 view .LVU373
1449:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1131              		.loc 1 1449 23 is_stmt 0 discriminator 2 view .LVU374
 1132 002a A0F85C30 		strh	r3, [r0, #92]	@ movhi
1451:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 1133              		.loc 1 1451 5 is_stmt 1 discriminator 2 view .LVU375
1452:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1134              		.loc 1 1452 5 discriminator 2 view .LVU376
1452:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1135              		.loc 1 1452 20 is_stmt 0 discriminator 2 view .LVU377
 1136 002e C0F88420 		str	r2, [r0, #132]
1454:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1137              		.loc 1 1454 5 is_stmt 1 discriminator 2 view .LVU378
1454:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1138              		.loc 1 1454 14 is_stmt 0 discriminator 2 view .LVU379
 1139 0032 806F     		ldr	r0, [r0, #120]
 1140              	.LVL63:
1454:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1141              		.loc 1 1454 8 discriminator 2 view .LVU380
 1142 0034 B8B1     		cbz	r0, .L96
1457:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1143              		.loc 1 1457 39 view .LVU381
 1144 0036 154A     		ldr	r2, .L107
 1145 0038 D4F800C0 		ldr	ip, [r4]
1457:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1146              		.loc 1 1457 7 is_stmt 1 view .LVU382
1457:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1147              		.loc 1 1457 39 is_stmt 0 view .LVU383
 1148 003c C262     		str	r2, [r0, #44]
1460:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1149              		.loc 1 1460 7 is_stmt 1 view .LVU384
1460:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1150              		.loc 1 1460 43 is_stmt 0 view .LVU385
 1151 003e 144A     		ldr	r2, .L107+4
 1152 0040 0263     		str	r2, [r0, #48]
1463:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1153              		.loc 1 1463 7 is_stmt 1 view .LVU386
1463:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1154              		.loc 1 1463 40 is_stmt 0 view .LVU387
 1155 0042 144A     		ldr	r2, .L107+8
1466:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1156              		.loc 1 1466 40 view .LVU388
 1157 0044 C0E90D26 		strd	r2, r6, [r0, #52]
1469:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1158              		.loc 1 1469 7 is_stmt 1 view .LVU389
1469:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1159              		.loc 1 1469 11 is_stmt 0 view .LVU390
 1160 0048 0A46     		mov	r2, r1
 1161 004a 0CF12401 		add	r1, ip, #36
 1162              	.LVL64:
1469:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1163              		.loc 1 1469 11 view .LVU391
 1164 004e FFF7FEFF 		bl	HAL_DMA_Start_IT
 1165              	.LVL65:
1469:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1166              		.loc 1 1469 10 view .LVU392
 1167 0052 40B1     		cbz	r0, .L96
1472:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1168              		.loc 1 1472 9 is_stmt 1 view .LVU393
1472:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1169              		.loc 1 1472 26 is_stmt 0 view .LVU394
 1170 0054 1023     		movs	r3, #16
 1171 0056 C4F88830 		str	r3, [r4, #136]
1474:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1172              		.loc 1 1474 9 is_stmt 1 view .LVU395
1474:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1173              		.loc 1 1474 9 view .LVU396
 1174 005a 84F87C60 		strb	r6, [r4, #124]
1477:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1175              		.loc 1 1477 9 view .LVU397
1477:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1176              		.loc 1 1477 23 is_stmt 0 view .LVU398
 1177 005e C4F88070 		str	r7, [r4, #128]
1479:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 1178              		.loc 1 1479 9 is_stmt 1 view .LVU399
 1179              	.L99:
1443:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 1180              		.loc 1 1443 14 is_stmt 0 view .LVU400
 1181 0062 0120     		movs	r0, #1
 1182 0064 0FE0     		b	.L95
 1183              	.L96:
1482:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1184              		.loc 1 1482 5 is_stmt 1 view .LVU401
1482:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1185              		.loc 1 1482 5 view .LVU402
1485:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1186              		.loc 1 1485 5 is_stmt 0 view .LVU403
 1187 0066 2368     		ldr	r3, [r4]
 1188 0068 1A68     		ldr	r2, [r3]
1482:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1189              		.loc 1 1482 5 view .LVU404
 1190 006a 0020     		movs	r0, #0
1485:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1191              		.loc 1 1485 5 view .LVU405
 1192 006c 42F48072 		orr	r2, r2, #256
1482:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1193              		.loc 1 1482 5 view .LVU406
 1194 0070 84F87C00 		strb	r0, [r4, #124]
1485:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1195              		.loc 1 1485 5 is_stmt 1 view .LVU407
 1196 0074 1A60     		str	r2, [r3]
1488:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1197              		.loc 1 1488 5 view .LVU408
 1198 0076 9A68     		ldr	r2, [r3, #8]
 1199 0078 42F00102 		orr	r2, r2, #1
 1200 007c 9A60     		str	r2, [r3, #8]
1492:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1201              		.loc 1 1492 5 view .LVU409
 1202 007e 9A68     		ldr	r2, [r3, #8]
 1203 0080 42F04002 		orr	r2, r2, #64
 1204 0084 9A60     		str	r2, [r3, #8]
1494:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1205              		.loc 1 1494 5 view .LVU410
 1206              	.L95:
1500:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1207              		.loc 1 1500 1 is_stmt 0 view .LVU411
 1208 0086 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1209              	.LVL66:
 1210              	.L100:
1498:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1211              		.loc 1 1498 12 view .LVU412
 1212 0088 0220     		movs	r0, #2
 1213              	.LVL67:
1498:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1214              		.loc 1 1498 12 view .LVU413
 1215 008a FCE7     		b	.L95
 1216              	.L108:
 1217              		.align	2
 1218              	.L107:
 1219 008c 00000000 		.word	UART_DMAReceiveCplt
 1220 0090 00000000 		.word	UART_DMARxHalfCplt
 1221 0094 00000000 		.word	UART_DMAError
 1222              		.cfi_endproc
 1223              	.LFE337:
 1225              		.section	.text.HAL_UART_DMAPause,"ax",%progbits
 1226              		.align	1
 1227              		.global	HAL_UART_DMAPause
 1228              		.syntax unified
 1229              		.thumb
 1230              		.thumb_func
 1231              		.fpu fpv4-sp-d16
 1233              	HAL_UART_DMAPause:
 1234              	.LVL68:
 1235              	.LFB338:
1508:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef gstate = huart->gState;
 1236              		.loc 1 1508 1 is_stmt 1 view -0
 1237              		.cfi_startproc
 1238              		@ args = 0, pretend = 0, frame = 0
 1239              		@ frame_needed = 0, uses_anonymous_args = 0
1509:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
 1240              		.loc 1 1509 3 view .LVU415
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1241              		.loc 1 1512 3 is_stmt 0 view .LVU416
 1242 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
1509:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
 1243              		.loc 1 1509 31 view .LVU417
 1244 0004 D0F88020 		ldr	r2, [r0, #128]
 1245              	.LVL69:
1510:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1246              		.loc 1 1510 3 is_stmt 1 view .LVU418
1510:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1247              		.loc 1 1510 31 is_stmt 0 view .LVU419
 1248 0008 D0F88410 		ldr	r1, [r0, #132]
 1249              	.LVL70:
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1250              		.loc 1 1512 3 is_stmt 1 view .LVU420
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1251              		.loc 1 1512 3 view .LVU421
 1252 000c 012B     		cmp	r3, #1
1508:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef gstate = huart->gState;
 1253              		.loc 1 1508 1 is_stmt 0 view .LVU422
 1254 000e 10B5     		push	{r4, lr}
 1255              		.cfi_def_cfa_offset 8
 1256              		.cfi_offset 4, -8
 1257              		.cfi_offset 14, -4
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1258              		.loc 1 1512 3 view .LVU423
 1259 0010 22D0     		beq	.L113
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1260              		.loc 1 1512 3 is_stmt 1 discriminator 2 view .LVU424
 1261 0012 0123     		movs	r3, #1
 1262 0014 80F87C30 		strb	r3, [r0, #124]
1514:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1263              		.loc 1 1514 3 discriminator 2 view .LVU425
1514:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1264              		.loc 1 1514 8 is_stmt 0 discriminator 2 view .LVU426
 1265 0018 0368     		ldr	r3, [r0]
 1266 001a 9C68     		ldr	r4, [r3, #8]
1514:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1267              		.loc 1 1514 6 discriminator 2 view .LVU427
 1268 001c 2406     		lsls	r4, r4, #24
 1269 001e 05D5     		bpl	.L111
1514:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1270              		.loc 1 1514 62 discriminator 1 view .LVU428
 1271 0020 212A     		cmp	r2, #33
1518:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1272              		.loc 1 1518 5 is_stmt 1 discriminator 1 view .LVU429
 1273 0022 02BF     		ittt	eq
 1274 0024 9A68     		ldreq	r2, [r3, #8]
 1275              	.LVL71:
1518:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1276              		.loc 1 1518 5 is_stmt 0 discriminator 1 view .LVU430
 1277 0026 22F08002 		biceq	r2, r2, #128
 1278 002a 9A60     		streq	r2, [r3, #8]
 1279              	.L111:
1520:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1280              		.loc 1 1520 3 is_stmt 1 view .LVU431
1520:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1281              		.loc 1 1520 8 is_stmt 0 view .LVU432
 1282 002c 9A68     		ldr	r2, [r3, #8]
1520:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1283              		.loc 1 1520 6 view .LVU433
 1284 002e 5206     		lsls	r2, r2, #25
 1285 0030 0DD5     		bpl	.L112
1520:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1286              		.loc 1 1520 62 discriminator 1 view .LVU434
 1287 0032 2229     		cmp	r1, #34
 1288 0034 0BD1     		bne	.L112
1524:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 1289              		.loc 1 1524 5 is_stmt 1 view .LVU435
 1290 0036 1A68     		ldr	r2, [r3]
 1291 0038 22F48072 		bic	r2, r2, #256
 1292 003c 1A60     		str	r2, [r3]
1525:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1293              		.loc 1 1525 5 view .LVU436
 1294 003e 9A68     		ldr	r2, [r3, #8]
 1295 0040 22F00102 		bic	r2, r2, #1
 1296 0044 9A60     		str	r2, [r3, #8]
1528:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1297              		.loc 1 1528 5 view .LVU437
 1298 0046 9A68     		ldr	r2, [r3, #8]
 1299 0048 22F04002 		bic	r2, r2, #64
 1300 004c 9A60     		str	r2, [r3, #8]
 1301              	.L112:
1531:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1302              		.loc 1 1531 3 view .LVU438
1531:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1303              		.loc 1 1531 3 view .LVU439
 1304 004e 0023     		movs	r3, #0
 1305 0050 80F87C30 		strb	r3, [r0, #124]
1533:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1306              		.loc 1 1533 3 view .LVU440
1533:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1307              		.loc 1 1533 10 is_stmt 0 view .LVU441
 1308 0054 1846     		mov	r0, r3
 1309              	.LVL72:
 1310              	.L110:
1534:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1311              		.loc 1 1534 1 view .LVU442
 1312 0056 10BD     		pop	{r4, pc}
 1313              	.LVL73:
 1314              	.L113:
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1315              		.loc 1 1512 3 view .LVU443
 1316 0058 0220     		movs	r0, #2
 1317              	.LVL74:
1512:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1318              		.loc 1 1512 3 view .LVU444
 1319 005a FCE7     		b	.L110
 1320              		.cfi_endproc
 1321              	.LFE338:
 1323              		.section	.text.HAL_UART_DMAResume,"ax",%progbits
 1324              		.align	1
 1325              		.global	HAL_UART_DMAResume
 1326              		.syntax unified
 1327              		.thumb
 1328              		.thumb_func
 1329              		.fpu fpv4-sp-d16
 1331              	HAL_UART_DMAResume:
 1332              	.LVL75:
 1333              	.LFB339:
1542:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
 1334              		.loc 1 1542 1 is_stmt 1 view -0
 1335              		.cfi_startproc
 1336              		@ args = 0, pretend = 0, frame = 0
 1337              		@ frame_needed = 0, uses_anonymous_args = 0
 1338              		@ link register save eliminated.
1543:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1339              		.loc 1 1543 3 view .LVU446
1543:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1340              		.loc 1 1543 3 view .LVU447
 1341 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 1342 0004 012B     		cmp	r3, #1
 1343 0006 23D0     		beq	.L124
1543:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1344              		.loc 1 1543 3 discriminator 2 view .LVU448
 1345 0008 0123     		movs	r3, #1
 1346 000a 80F87C30 		strb	r3, [r0, #124]
1545:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1347              		.loc 1 1545 3 discriminator 2 view .LVU449
1545:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1348              		.loc 1 1545 12 is_stmt 0 discriminator 2 view .LVU450
 1349 000e D0F88030 		ldr	r3, [r0, #128]
1545:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1350              		.loc 1 1545 6 discriminator 2 view .LVU451
 1351 0012 212B     		cmp	r3, #33
1548:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1352              		.loc 1 1548 5 is_stmt 1 discriminator 2 view .LVU452
 1353 0014 01BF     		itttt	eq
 1354 0016 0268     		ldreq	r2, [r0]
 1355 0018 9368     		ldreq	r3, [r2, #8]
 1356 001a 43F08003 		orreq	r3, r3, #128
 1357 001e 9360     		streq	r3, [r2, #8]
1550:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1358              		.loc 1 1550 3 discriminator 2 view .LVU453
1550:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1359              		.loc 1 1550 12 is_stmt 0 discriminator 2 view .LVU454
 1360 0020 D0F88430 		ldr	r3, [r0, #132]
1550:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1361              		.loc 1 1550 6 discriminator 2 view .LVU455
 1362 0024 222B     		cmp	r3, #34
 1363 0026 0ED1     		bne	.L123
1553:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1364              		.loc 1 1553 5 is_stmt 1 view .LVU456
 1365 0028 0368     		ldr	r3, [r0]
 1366 002a 0822     		movs	r2, #8
 1367 002c 1A62     		str	r2, [r3, #32]
1556:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
 1368              		.loc 1 1556 5 view .LVU457
 1369 002e 1A68     		ldr	r2, [r3]
 1370 0030 42F48072 		orr	r2, r2, #256
 1371 0034 1A60     		str	r2, [r3]
1557:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1372              		.loc 1 1557 5 view .LVU458
 1373 0036 9A68     		ldr	r2, [r3, #8]
 1374 0038 42F00102 		orr	r2, r2, #1
 1375 003c 9A60     		str	r2, [r3, #8]
1560:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1376              		.loc 1 1560 5 view .LVU459
 1377 003e 9A68     		ldr	r2, [r3, #8]
 1378 0040 42F04002 		orr	r2, r2, #64
 1379 0044 9A60     		str	r2, [r3, #8]
 1380              	.L123:
1563:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1381              		.loc 1 1563 3 view .LVU460
1563:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1382              		.loc 1 1563 3 view .LVU461
 1383 0046 0023     		movs	r3, #0
 1384 0048 80F87C30 		strb	r3, [r0, #124]
1565:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1385              		.loc 1 1565 3 view .LVU462
1565:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1386              		.loc 1 1565 10 is_stmt 0 view .LVU463
 1387 004c 1846     		mov	r0, r3
 1388              	.LVL76:
1565:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1389              		.loc 1 1565 10 view .LVU464
 1390 004e 7047     		bx	lr
 1391              	.LVL77:
 1392              	.L124:
1543:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1393              		.loc 1 1543 3 view .LVU465
 1394 0050 0220     		movs	r0, #2
 1395              	.LVL78:
1566:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1396              		.loc 1 1566 1 view .LVU466
 1397 0052 7047     		bx	lr
 1398              		.cfi_endproc
 1399              	.LFE339:
 1401              		.section	.text.HAL_UART_DMAStop,"ax",%progbits
 1402              		.align	1
 1403              		.global	HAL_UART_DMAStop
 1404              		.syntax unified
 1405              		.thumb
 1406              		.thumb_func
 1407              		.fpu fpv4-sp-d16
 1409              	HAL_UART_DMAStop:
 1410              	.LVL79:
 1411              	.LFB340:
1574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* The Lock is not implemented on this API to allow the user application
 1412              		.loc 1 1574 1 is_stmt 1 view -0
 1413              		.cfi_startproc
 1414              		@ args = 0, pretend = 0, frame = 0
 1415              		@ frame_needed = 0, uses_anonymous_args = 0
1582:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
 1416              		.loc 1 1582 3 view .LVU468
1574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* The Lock is not implemented on this API to allow the user application
 1417              		.loc 1 1574 1 is_stmt 0 view .LVU469
 1418 0000 38B5     		push	{r3, r4, r5, lr}
 1419              		.cfi_def_cfa_offset 16
 1420              		.cfi_offset 3, -16
 1421              		.cfi_offset 4, -12
 1422              		.cfi_offset 5, -8
 1423              		.cfi_offset 14, -4
1586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1424              		.loc 1 1586 8 view .LVU470
 1425 0002 0368     		ldr	r3, [r0]
1582:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
 1426              		.loc 1 1582 31 view .LVU471
 1427 0004 D0F88020 		ldr	r2, [r0, #128]
 1428              	.LVL80:
1583:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1429              		.loc 1 1583 3 is_stmt 1 view .LVU472
1583:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1430              		.loc 1 1583 31 is_stmt 0 view .LVU473
 1431 0008 D0F88450 		ldr	r5, [r0, #132]
 1432              	.LVL81:
1586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1433              		.loc 1 1586 3 is_stmt 1 view .LVU474
1586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1434              		.loc 1 1586 8 is_stmt 0 view .LVU475
 1435 000c 9968     		ldr	r1, [r3, #8]
1586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1436              		.loc 1 1586 6 view .LVU476
 1437 000e 0906     		lsls	r1, r1, #24
1574:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* The Lock is not implemented on this API to allow the user application
 1438              		.loc 1 1574 1 view .LVU477
 1439 0010 0446     		mov	r4, r0
1586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1440              		.loc 1 1586 6 view .LVU478
 1441 0012 20D5     		bpl	.L126
1586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 1442              		.loc 1 1586 62 discriminator 1 view .LVU479
 1443 0014 212A     		cmp	r2, #33
 1444 0016 1ED1     		bne	.L126
1589:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1445              		.loc 1 1589 5 is_stmt 1 view .LVU480
 1446 0018 9A68     		ldr	r2, [r3, #8]
 1447              	.LVL82:
1592:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1448              		.loc 1 1592 14 is_stmt 0 view .LVU481
 1449 001a 406F     		ldr	r0, [r0, #116]
 1450              	.LVL83:
1589:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1451              		.loc 1 1589 5 view .LVU482
 1452 001c 22F08002 		bic	r2, r2, #128
 1453 0020 9A60     		str	r2, [r3, #8]
1592:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1454              		.loc 1 1592 5 is_stmt 1 view .LVU483
1592:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1455              		.loc 1 1592 8 is_stmt 0 view .LVU484
 1456 0022 60B1     		cbz	r0, .L127
1594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1457              		.loc 1 1594 7 is_stmt 1 view .LVU485
1594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1458              		.loc 1 1594 11 is_stmt 0 view .LVU486
 1459 0024 FFF7FEFF 		bl	HAL_DMA_Abort
 1460              	.LVL84:
1594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1461              		.loc 1 1594 10 view .LVU487
 1462 0028 48B1     		cbz	r0, .L127
1596:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1463              		.loc 1 1596 9 is_stmt 1 view .LVU488
1596:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1464              		.loc 1 1596 13 is_stmt 0 view .LVU489
 1465 002a 606F     		ldr	r0, [r4, #116]
 1466 002c FFF7FEFF 		bl	HAL_DMA_GetError
 1467              	.LVL85:
1596:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1468              		.loc 1 1596 12 view .LVU490
 1469 0030 2028     		cmp	r0, #32
 1470 0032 04D1     		bne	.L127
 1471              	.L147:
1623:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1472              		.loc 1 1623 11 is_stmt 1 view .LVU491
1623:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1473              		.loc 1 1623 28 is_stmt 0 view .LVU492
 1474 0034 1023     		movs	r3, #16
 1475 0036 C4F88830 		str	r3, [r4, #136]
1625:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1476              		.loc 1 1625 11 is_stmt 1 view .LVU493
1625:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1477              		.loc 1 1625 18 is_stmt 0 view .LVU494
 1478 003a 0320     		movs	r0, #3
 1479              	.L128:
1634:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1480              		.loc 1 1634 1 view .LVU495
 1481 003c 38BD     		pop	{r3, r4, r5, pc}
 1482              	.LVL86:
 1483              	.L127:
1606:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1484              		.loc 1 1606 5 is_stmt 1 view .LVU496
 1485              	.LBB20:
 1486              	.LBI20:
3133:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 1487              		.loc 1 3133 13 view .LVU497
 1488              	.LBB21:
3136:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_TXFTIE));
 1489              		.loc 1 3136 3 view .LVU498
 1490 003e 2368     		ldr	r3, [r4]
 1491 0040 1A68     		ldr	r2, [r3]
 1492 0042 22F0C002 		bic	r2, r2, #192
 1493 0046 1A60     		str	r2, [r3]
3137:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1494              		.loc 1 3137 3 view .LVU499
 1495 0048 9A68     		ldr	r2, [r3, #8]
 1496 004a 22F40002 		bic	r2, r2, #8388608
 1497 004e 9A60     		str	r2, [r3, #8]
3140:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1498              		.loc 1 3140 3 view .LVU500
3140:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1499              		.loc 1 3140 17 is_stmt 0 view .LVU501
 1500 0050 2023     		movs	r3, #32
 1501 0052 C4F88030 		str	r3, [r4, #128]
 1502              	.LVL87:
 1503              	.L126:
3140:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1504              		.loc 1 3140 17 view .LVU502
 1505              	.LBE21:
 1506              	.LBE20:
1610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1507              		.loc 1 1610 3 is_stmt 1 view .LVU503
1610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1508              		.loc 1 1610 8 is_stmt 0 view .LVU504
 1509 0056 2368     		ldr	r3, [r4]
 1510 0058 9868     		ldr	r0, [r3, #8]
1610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1511              		.loc 1 1610 6 view .LVU505
 1512 005a 10F04000 		ands	r0, r0, #64
 1513 005e EDD0     		beq	.L128
1610:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 1514              		.loc 1 1610 62 discriminator 1 view .LVU506
 1515 0060 222D     		cmp	r5, #34
 1516 0062 10D1     		bne	.L131
1613:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1517              		.loc 1 1613 5 is_stmt 1 view .LVU507
 1518 0064 9A68     		ldr	r2, [r3, #8]
1616:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1519              		.loc 1 1616 14 is_stmt 0 view .LVU508
 1520 0066 A06F     		ldr	r0, [r4, #120]
1613:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1521              		.loc 1 1613 5 view .LVU509
 1522 0068 22F04002 		bic	r2, r2, #64
 1523 006c 9A60     		str	r2, [r3, #8]
1616:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1524              		.loc 1 1616 5 is_stmt 1 view .LVU510
1616:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1525              		.loc 1 1616 8 is_stmt 0 view .LVU511
 1526 006e 38B1     		cbz	r0, .L129
1618:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1527              		.loc 1 1618 7 is_stmt 1 view .LVU512
1618:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1528              		.loc 1 1618 11 is_stmt 0 view .LVU513
 1529 0070 FFF7FEFF 		bl	HAL_DMA_Abort
 1530              	.LVL88:
1618:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1531              		.loc 1 1618 10 view .LVU514
 1532 0074 20B1     		cbz	r0, .L129
1620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1533              		.loc 1 1620 9 is_stmt 1 view .LVU515
1620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1534              		.loc 1 1620 13 is_stmt 0 view .LVU516
 1535 0076 A06F     		ldr	r0, [r4, #120]
 1536 0078 FFF7FEFF 		bl	HAL_DMA_GetError
 1537              	.LVL89:
1620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1538              		.loc 1 1620 12 view .LVU517
 1539 007c 2028     		cmp	r0, #32
 1540 007e D9D0     		beq	.L147
 1541              	.L129:
1630:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1542              		.loc 1 1630 5 is_stmt 1 view .LVU518
 1543 0080 2046     		mov	r0, r4
 1544 0082 FFF7FEFF 		bl	UART_EndRxTransfer
 1545              	.LVL90:
 1546              	.L131:
1633:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1547              		.loc 1 1633 10 is_stmt 0 view .LVU519
 1548 0086 0020     		movs	r0, #0
 1549 0088 D8E7     		b	.L128
 1550              		.cfi_endproc
 1551              	.LFE340:
 1553              		.section	.text.HAL_UART_Abort,"ax",%progbits
 1554              		.align	1
 1555              		.global	HAL_UART_Abort
 1556              		.syntax unified
 1557              		.thumb
 1558              		.thumb_func
 1559              		.fpu fpv4-sp-d16
 1561              	HAL_UART_Abort:
 1562              	.LVL91:
 1563              	.LFB341:
1649:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TXE, TC, RXNE, PE, RXFT, TXFT and ERR (Frame error, noise error, overrun error) interr
 1564              		.loc 1 1649 1 is_stmt 1 view -0
 1565              		.cfi_startproc
 1566              		@ args = 0, pretend = 0, frame = 0
 1567              		@ frame_needed = 0, uses_anonymous_args = 0
1651:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE | USART_CR3_RXFTIE | USART_CR3_TXFTIE);
 1568              		.loc 1 1651 3 view .LVU521
 1569 0000 0368     		ldr	r3, [r0]
 1570 0002 1A68     		ldr	r2, [r3]
 1571 0004 22F4F072 		bic	r2, r2, #480
1649:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TXE, TC, RXNE, PE, RXFT, TXFT and ERR (Frame error, noise error, overrun error) interr
 1572              		.loc 1 1649 1 is_stmt 0 view .LVU522
 1573 0008 10B5     		push	{r4, lr}
 1574              		.cfi_def_cfa_offset 8
 1575              		.cfi_offset 4, -8
 1576              		.cfi_offset 14, -4
1651:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE | USART_CR3_RXFTIE | USART_CR3_TXFTIE);
 1577              		.loc 1 1651 3 view .LVU523
 1578 000a 1A60     		str	r2, [r3]
1652:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1579              		.loc 1 1652 3 is_stmt 1 view .LVU524
 1580 000c 9A68     		ldr	r2, [r3, #8]
 1581 000e 22F08452 		bic	r2, r2, #276824064
 1582 0012 22F00102 		bic	r2, r2, #1
 1583 0016 9A60     		str	r2, [r3, #8]
1655:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1584              		.loc 1 1655 3 view .LVU525
1655:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1585              		.loc 1 1655 7 is_stmt 0 view .LVU526
 1586 0018 9A68     		ldr	r2, [r3, #8]
1655:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1587              		.loc 1 1655 6 view .LVU527
 1588 001a 1106     		lsls	r1, r2, #24
1649:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TXE, TC, RXNE, PE, RXFT, TXFT and ERR (Frame error, noise error, overrun error) interr
 1589              		.loc 1 1649 1 view .LVU528
 1590 001c 0446     		mov	r4, r0
1655:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1591              		.loc 1 1655 6 view .LVU529
 1592 001e 14D5     		bpl	.L149
1657:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1593              		.loc 1 1657 5 is_stmt 1 view .LVU530
 1594 0020 9A68     		ldr	r2, [r3, #8]
1660:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1595              		.loc 1 1660 14 is_stmt 0 view .LVU531
 1596 0022 406F     		ldr	r0, [r0, #116]
 1597              	.LVL92:
1657:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1598              		.loc 1 1657 5 view .LVU532
 1599 0024 22F08002 		bic	r2, r2, #128
 1600 0028 9A60     		str	r2, [r3, #8]
1660:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1601              		.loc 1 1660 5 is_stmt 1 view .LVU533
1660:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1602              		.loc 1 1660 8 is_stmt 0 view .LVU534
 1603 002a 70B1     		cbz	r0, .L149
1664:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1604              		.loc 1 1664 7 is_stmt 1 view .LVU535
1664:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1605              		.loc 1 1664 40 is_stmt 0 view .LVU536
 1606 002c 0023     		movs	r3, #0
 1607 002e 8363     		str	r3, [r0, #56]
1666:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1608              		.loc 1 1666 7 is_stmt 1 view .LVU537
1666:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1609              		.loc 1 1666 11 is_stmt 0 view .LVU538
 1610 0030 FFF7FEFF 		bl	HAL_DMA_Abort
 1611              	.LVL93:
1666:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1612              		.loc 1 1666 10 view .LVU539
 1613 0034 48B1     		cbz	r0, .L149
1668:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1614              		.loc 1 1668 9 is_stmt 1 view .LVU540
1668:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1615              		.loc 1 1668 13 is_stmt 0 view .LVU541
 1616 0036 606F     		ldr	r0, [r4, #116]
 1617 0038 FFF7FEFF 		bl	HAL_DMA_GetError
 1618              	.LVL94:
1668:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1619              		.loc 1 1668 12 view .LVU542
 1620 003c 2028     		cmp	r0, #32
 1621 003e 04D1     		bne	.L149
 1622              	.L171:
1696:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1623              		.loc 1 1696 11 is_stmt 1 view .LVU543
1696:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1624              		.loc 1 1696 28 is_stmt 0 view .LVU544
 1625 0040 1023     		movs	r3, #16
 1626 0042 C4F88830 		str	r3, [r4, #136]
1698:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1627              		.loc 1 1698 11 is_stmt 1 view .LVU545
1698:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1628              		.loc 1 1698 18 is_stmt 0 view .LVU546
 1629 0046 0320     		movs	r0, #3
 1630              	.L150:
1727:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1631              		.loc 1 1727 1 view .LVU547
 1632 0048 10BD     		pop	{r4, pc}
 1633              	.LVL95:
 1634              	.L149:
1680:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1635              		.loc 1 1680 3 is_stmt 1 view .LVU548
1680:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1636              		.loc 1 1680 7 is_stmt 0 view .LVU549
 1637 004a 2368     		ldr	r3, [r4]
 1638 004c 9A68     		ldr	r2, [r3, #8]
1680:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1639              		.loc 1 1680 6 view .LVU550
 1640 004e 5206     		lsls	r2, r2, #25
 1641 0050 0FD5     		bpl	.L151
1682:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1642              		.loc 1 1682 5 is_stmt 1 view .LVU551
 1643 0052 9A68     		ldr	r2, [r3, #8]
1685:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1644              		.loc 1 1685 14 is_stmt 0 view .LVU552
 1645 0054 A06F     		ldr	r0, [r4, #120]
1682:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1646              		.loc 1 1682 5 view .LVU553
 1647 0056 22F04002 		bic	r2, r2, #64
 1648 005a 9A60     		str	r2, [r3, #8]
1685:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1649              		.loc 1 1685 5 is_stmt 1 view .LVU554
1685:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1650              		.loc 1 1685 8 is_stmt 0 view .LVU555
 1651 005c 48B1     		cbz	r0, .L151
1689:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1652              		.loc 1 1689 7 is_stmt 1 view .LVU556
1689:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1653              		.loc 1 1689 40 is_stmt 0 view .LVU557
 1654 005e 0023     		movs	r3, #0
 1655 0060 8363     		str	r3, [r0, #56]
1691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1656              		.loc 1 1691 7 is_stmt 1 view .LVU558
1691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1657              		.loc 1 1691 11 is_stmt 0 view .LVU559
 1658 0062 FFF7FEFF 		bl	HAL_DMA_Abort
 1659              	.LVL96:
1691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1660              		.loc 1 1691 10 view .LVU560
 1661 0066 20B1     		cbz	r0, .L151
1693:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1662              		.loc 1 1693 9 is_stmt 1 view .LVU561
1693:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1663              		.loc 1 1693 13 is_stmt 0 view .LVU562
 1664 0068 A06F     		ldr	r0, [r4, #120]
 1665 006a FFF7FEFF 		bl	HAL_DMA_GetError
 1666              	.LVL97:
1693:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1667              		.loc 1 1693 12 view .LVU563
 1668 006e 2028     		cmp	r0, #32
 1669 0070 E6D0     		beq	.L171
 1670              	.L151:
1705:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 1671              		.loc 1 1705 3 is_stmt 1 view .LVU564
1705:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 1672              		.loc 1 1705 22 is_stmt 0 view .LVU565
 1673 0072 0023     		movs	r3, #0
 1674 0074 A4F85630 		strh	r3, [r4, #86]	@ movhi
1706:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1675              		.loc 1 1706 3 is_stmt 1 view .LVU566
1706:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1676              		.loc 1 1706 22 is_stmt 0 view .LVU567
 1677 0078 A4F85E30 		strh	r3, [r4, #94]	@ movhi
1709:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1678              		.loc 1 1709 3 is_stmt 1 view .LVU568
 1679 007c 2368     		ldr	r3, [r4]
 1680 007e 0F22     		movs	r2, #15
 1681 0080 1A62     		str	r2, [r3, #32]
1712:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1682              		.loc 1 1712 3 view .LVU569
1712:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1683              		.loc 1 1712 6 is_stmt 0 view .LVU570
 1684 0082 626E     		ldr	r2, [r4, #100]
 1685 0084 B2F1005F 		cmp	r2, #536870912
1714:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1686              		.loc 1 1714 5 is_stmt 1 view .LVU571
 1687 0088 02BF     		ittt	eq
 1688 008a 9A69     		ldreq	r2, [r3, #24]
 1689 008c 42F01002 		orreq	r2, r2, #16
 1690 0090 9A61     		streq	r2, [r3, #24]
1718:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1691              		.loc 1 1718 3 view .LVU572
 1692 0092 9A69     		ldr	r2, [r3, #24]
 1693 0094 42F00802 		orr	r2, r2, #8
 1694 0098 9A61     		str	r2, [r3, #24]
1721:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 1695              		.loc 1 1721 3 view .LVU573
1724:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1696              		.loc 1 1724 20 is_stmt 0 view .LVU574
 1697 009a 0020     		movs	r0, #0
1721:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 1698              		.loc 1 1721 18 view .LVU575
 1699 009c 2023     		movs	r3, #32
 1700 009e C4F88030 		str	r3, [r4, #128]
1722:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1701              		.loc 1 1722 3 is_stmt 1 view .LVU576
1722:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1702              		.loc 1 1722 18 is_stmt 0 view .LVU577
 1703 00a2 C4F88430 		str	r3, [r4, #132]
1724:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1704              		.loc 1 1724 3 is_stmt 1 view .LVU578
1724:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1705              		.loc 1 1724 20 is_stmt 0 view .LVU579
 1706 00a6 C4F88800 		str	r0, [r4, #136]
1726:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1707              		.loc 1 1726 3 is_stmt 1 view .LVU580
1726:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1708              		.loc 1 1726 10 is_stmt 0 view .LVU581
 1709 00aa CDE7     		b	.L150
 1710              		.cfi_endproc
 1711              	.LFE341:
 1713              		.section	.text.HAL_UART_AbortTransmit,"ax",%progbits
 1714              		.align	1
 1715              		.global	HAL_UART_AbortTransmit
 1716              		.syntax unified
 1717              		.thumb
 1718              		.thumb_func
 1719              		.fpu fpv4-sp-d16
 1721              	HAL_UART_AbortTransmit:
 1722              	.LVL98:
 1723              	.LFB342:
1742:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TCIE, TXEIE and TXFTIE interrupts */
 1724              		.loc 1 1742 1 is_stmt 1 view -0
 1725              		.cfi_startproc
 1726              		@ args = 0, pretend = 0, frame = 0
 1727              		@ frame_needed = 0, uses_anonymous_args = 0
1744:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
 1728              		.loc 1 1744 3 view .LVU583
 1729 0000 0368     		ldr	r3, [r0]
 1730 0002 1A68     		ldr	r2, [r3]
 1731 0004 22F0C002 		bic	r2, r2, #192
1742:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TCIE, TXEIE and TXFTIE interrupts */
 1732              		.loc 1 1742 1 is_stmt 0 view .LVU584
 1733 0008 10B5     		push	{r4, lr}
 1734              		.cfi_def_cfa_offset 8
 1735              		.cfi_offset 4, -8
 1736              		.cfi_offset 14, -4
1744:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
 1737              		.loc 1 1744 3 view .LVU585
 1738 000a 1A60     		str	r2, [r3]
1745:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1739              		.loc 1 1745 3 is_stmt 1 view .LVU586
 1740 000c 9A68     		ldr	r2, [r3, #8]
 1741 000e 22F40002 		bic	r2, r2, #8388608
 1742 0012 9A60     		str	r2, [r3, #8]
1748:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1743              		.loc 1 1748 3 view .LVU587
1748:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1744              		.loc 1 1748 7 is_stmt 0 view .LVU588
 1745 0014 9A68     		ldr	r2, [r3, #8]
1748:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1746              		.loc 1 1748 6 view .LVU589
 1747 0016 1206     		lsls	r2, r2, #24
1742:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable TCIE, TXEIE and TXFTIE interrupts */
 1748              		.loc 1 1742 1 view .LVU590
 1749 0018 0446     		mov	r4, r0
1748:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1750              		.loc 1 1748 6 view .LVU591
 1751 001a 14D5     		bpl	.L173
1750:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1752              		.loc 1 1750 5 is_stmt 1 view .LVU592
 1753 001c 9A68     		ldr	r2, [r3, #8]
1753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1754              		.loc 1 1753 14 is_stmt 0 view .LVU593
 1755 001e 406F     		ldr	r0, [r0, #116]
 1756              	.LVL99:
1750:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1757              		.loc 1 1750 5 view .LVU594
 1758 0020 22F08002 		bic	r2, r2, #128
 1759 0024 9A60     		str	r2, [r3, #8]
1753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1760              		.loc 1 1753 5 is_stmt 1 view .LVU595
1753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1761              		.loc 1 1753 8 is_stmt 0 view .LVU596
 1762 0026 70B1     		cbz	r0, .L173
1757:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1763              		.loc 1 1757 7 is_stmt 1 view .LVU597
1757:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1764              		.loc 1 1757 40 is_stmt 0 view .LVU598
 1765 0028 0023     		movs	r3, #0
 1766 002a 8363     		str	r3, [r0, #56]
1759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1767              		.loc 1 1759 7 is_stmt 1 view .LVU599
1759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1768              		.loc 1 1759 11 is_stmt 0 view .LVU600
 1769 002c FFF7FEFF 		bl	HAL_DMA_Abort
 1770              	.LVL100:
1759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1771              		.loc 1 1759 10 view .LVU601
 1772 0030 48B1     		cbz	r0, .L173
1761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1773              		.loc 1 1761 9 is_stmt 1 view .LVU602
1761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1774              		.loc 1 1761 13 is_stmt 0 view .LVU603
 1775 0032 606F     		ldr	r0, [r4, #116]
 1776 0034 FFF7FEFF 		bl	HAL_DMA_GetError
 1777              	.LVL101:
1761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1778              		.loc 1 1761 12 view .LVU604
 1779 0038 2028     		cmp	r0, #32
 1780 003a 04D1     		bne	.L173
1764:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1781              		.loc 1 1764 11 is_stmt 1 view .LVU605
1764:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1782              		.loc 1 1764 28 is_stmt 0 view .LVU606
 1783 003c 1023     		movs	r3, #16
 1784 003e C4F88830 		str	r3, [r4, #136]
1766:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1785              		.loc 1 1766 11 is_stmt 1 view .LVU607
1766:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1786              		.loc 1 1766 18 is_stmt 0 view .LVU608
 1787 0042 0320     		movs	r0, #3
 1788              	.L174:
1785:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1789              		.loc 1 1785 1 view .LVU609
 1790 0044 10BD     		pop	{r4, pc}
 1791              	.LVL102:
 1792              	.L173:
1773:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1793              		.loc 1 1773 3 is_stmt 1 view .LVU610
1773:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1794              		.loc 1 1773 22 is_stmt 0 view .LVU611
 1795 0046 0023     		movs	r3, #0
 1796 0048 A4F85630 		strh	r3, [r4, #86]	@ movhi
1776:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1797              		.loc 1 1776 3 is_stmt 1 view .LVU612
1776:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1798              		.loc 1 1776 6 is_stmt 0 view .LVU613
 1799 004c 636E     		ldr	r3, [r4, #100]
 1800 004e B3F1005F 		cmp	r3, #536870912
1778:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1801              		.loc 1 1778 5 is_stmt 1 view .LVU614
 1802 0052 01BF     		itttt	eq
 1803 0054 2268     		ldreq	r2, [r4]
 1804 0056 9369     		ldreq	r3, [r2, #24]
 1805 0058 43F01003 		orreq	r3, r3, #16
 1806 005c 9361     		streq	r3, [r2, #24]
1782:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1807              		.loc 1 1782 3 view .LVU615
1782:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1808              		.loc 1 1782 17 is_stmt 0 view .LVU616
 1809 005e 2023     		movs	r3, #32
 1810 0060 C4F88030 		str	r3, [r4, #128]
1784:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1811              		.loc 1 1784 3 is_stmt 1 view .LVU617
1784:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1812              		.loc 1 1784 10 is_stmt 0 view .LVU618
 1813 0064 0020     		movs	r0, #0
 1814 0066 EDE7     		b	.L174
 1815              		.cfi_endproc
 1816              	.LFE342:
 1818              		.section	.text.HAL_UART_AbortReceive,"ax",%progbits
 1819              		.align	1
 1820              		.global	HAL_UART_AbortReceive
 1821              		.syntax unified
 1822              		.thumb
 1823              		.thumb_func
 1824              		.fpu fpv4-sp-d16
 1826              	HAL_UART_AbortReceive:
 1827              	.LVL103:
 1828              	.LFB343:
1800:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable PEIE, EIE, RXNEIE and RXFTIE interrupts */
 1829              		.loc 1 1800 1 is_stmt 1 view -0
 1830              		.cfi_startproc
 1831              		@ args = 0, pretend = 0, frame = 0
 1832              		@ frame_needed = 0, uses_anonymous_args = 0
1802:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE | USART_CR3_RXFTIE);
 1833              		.loc 1 1802 3 view .LVU620
 1834 0000 0368     		ldr	r3, [r0]
 1835 0002 1A68     		ldr	r2, [r3]
 1836 0004 22F49072 		bic	r2, r2, #288
1800:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable PEIE, EIE, RXNEIE and RXFTIE interrupts */
 1837              		.loc 1 1800 1 is_stmt 0 view .LVU621
 1838 0008 10B5     		push	{r4, lr}
 1839              		.cfi_def_cfa_offset 8
 1840              		.cfi_offset 4, -8
 1841              		.cfi_offset 14, -4
1802:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE | USART_CR3_RXFTIE);
 1842              		.loc 1 1802 3 view .LVU622
 1843 000a 1A60     		str	r2, [r3]
1803:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1844              		.loc 1 1803 3 is_stmt 1 view .LVU623
 1845 000c 9A68     		ldr	r2, [r3, #8]
 1846 000e 22F08052 		bic	r2, r2, #268435456
 1847 0012 22F00102 		bic	r2, r2, #1
 1848 0016 9A60     		str	r2, [r3, #8]
1806:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1849              		.loc 1 1806 3 view .LVU624
1806:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1850              		.loc 1 1806 7 is_stmt 0 view .LVU625
 1851 0018 9A68     		ldr	r2, [r3, #8]
1806:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1852              		.loc 1 1806 6 view .LVU626
 1853 001a 5206     		lsls	r2, r2, #25
1800:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable PEIE, EIE, RXNEIE and RXFTIE interrupts */
 1854              		.loc 1 1800 1 view .LVU627
 1855 001c 0446     		mov	r4, r0
1806:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1856              		.loc 1 1806 6 view .LVU628
 1857 001e 14D5     		bpl	.L186
1808:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1858              		.loc 1 1808 5 is_stmt 1 view .LVU629
 1859 0020 9A68     		ldr	r2, [r3, #8]
1811:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1860              		.loc 1 1811 14 is_stmt 0 view .LVU630
 1861 0022 806F     		ldr	r0, [r0, #120]
 1862              	.LVL104:
1808:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1863              		.loc 1 1808 5 view .LVU631
 1864 0024 22F04002 		bic	r2, r2, #64
 1865 0028 9A60     		str	r2, [r3, #8]
1811:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1866              		.loc 1 1811 5 is_stmt 1 view .LVU632
1811:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 1867              		.loc 1 1811 8 is_stmt 0 view .LVU633
 1868 002a 70B1     		cbz	r0, .L186
1815:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1869              		.loc 1 1815 7 is_stmt 1 view .LVU634
1815:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1870              		.loc 1 1815 40 is_stmt 0 view .LVU635
 1871 002c 0023     		movs	r3, #0
 1872 002e 8363     		str	r3, [r0, #56]
1817:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1873              		.loc 1 1817 7 is_stmt 1 view .LVU636
1817:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1874              		.loc 1 1817 11 is_stmt 0 view .LVU637
 1875 0030 FFF7FEFF 		bl	HAL_DMA_Abort
 1876              	.LVL105:
1817:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 1877              		.loc 1 1817 10 view .LVU638
 1878 0034 48B1     		cbz	r0, .L186
1819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1879              		.loc 1 1819 9 is_stmt 1 view .LVU639
1819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1880              		.loc 1 1819 13 is_stmt 0 view .LVU640
 1881 0036 A06F     		ldr	r0, [r4, #120]
 1882 0038 FFF7FEFF 		bl	HAL_DMA_GetError
 1883              	.LVL106:
1819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 1884              		.loc 1 1819 12 view .LVU641
 1885 003c 2028     		cmp	r0, #32
 1886 003e 04D1     		bne	.L186
1822:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1887              		.loc 1 1822 11 is_stmt 1 view .LVU642
1822:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1888              		.loc 1 1822 28 is_stmt 0 view .LVU643
 1889 0040 1023     		movs	r3, #16
 1890 0042 C4F88830 		str	r3, [r4, #136]
1824:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1891              		.loc 1 1824 11 is_stmt 1 view .LVU644
1824:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 1892              		.loc 1 1824 18 is_stmt 0 view .LVU645
 1893 0046 0320     		movs	r0, #3
 1894              	.L187:
1843:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1895              		.loc 1 1843 1 view .LVU646
 1896 0048 10BD     		pop	{r4, pc}
 1897              	.LVL107:
 1898              	.L186:
1831:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1899              		.loc 1 1831 3 is_stmt 1 view .LVU647
1834:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1900              		.loc 1 1834 3 is_stmt 0 view .LVU648
 1901 004a 2368     		ldr	r3, [r4]
 1902 004c 0F22     		movs	r2, #15
1831:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1903              		.loc 1 1831 22 view .LVU649
 1904 004e 0020     		movs	r0, #0
 1905 0050 A4F85E00 		strh	r0, [r4, #94]	@ movhi
1834:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1906              		.loc 1 1834 3 is_stmt 1 view .LVU650
 1907 0054 1A62     		str	r2, [r3, #32]
1837:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1908              		.loc 1 1837 3 view .LVU651
 1909 0056 9A69     		ldr	r2, [r3, #24]
 1910 0058 42F00802 		orr	r2, r2, #8
 1911 005c 9A61     		str	r2, [r3, #24]
1840:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1912              		.loc 1 1840 3 view .LVU652
1840:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1913              		.loc 1 1840 18 is_stmt 0 view .LVU653
 1914 005e 2023     		movs	r3, #32
 1915 0060 C4F88430 		str	r3, [r4, #132]
1842:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1916              		.loc 1 1842 3 is_stmt 1 view .LVU654
1842:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 1917              		.loc 1 1842 10 is_stmt 0 view .LVU655
 1918 0064 F0E7     		b	.L187
 1919              		.cfi_endproc
 1920              	.LFE343:
 1922              		.section	.text.HAL_UART_TxCpltCallback,"ax",%progbits
 1923              		.align	1
 1924              		.weak	HAL_UART_TxCpltCallback
 1925              		.syntax unified
 1926              		.thumb
 1927              		.thumb_func
 1928              		.fpu fpv4-sp-d16
 1930              	HAL_UART_TxCpltCallback:
 1931              	.LFB402:
 1932              		.cfi_startproc
 1933              		@ args = 0, pretend = 0, frame = 0
 1934              		@ frame_needed = 0, uses_anonymous_args = 0
 1935              		@ link register save eliminated.
 1936 0000 7047     		bx	lr
 1937              		.cfi_endproc
 1938              	.LFE402:
 1940              		.section	.text.UART_DMATransmitCplt,"ax",%progbits
 1941              		.align	1
 1942              		.syntax unified
 1943              		.thumb
 1944              		.thumb_func
 1945              		.fpu fpv4-sp-d16
 1947              	UART_DMATransmitCplt:
 1948              	.LVL108:
 1949              	.LFB370:
3169:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 1950              		.loc 1 3169 1 is_stmt 1 view -0
 1951              		.cfi_startproc
 1952              		@ args = 0, pretend = 0, frame = 0
 1953              		@ frame_needed = 0, uses_anonymous_args = 0
3170:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1954              		.loc 1 3170 3 view .LVU657
3169:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 1955              		.loc 1 3169 1 is_stmt 0 view .LVU658
 1956 0000 08B5     		push	{r3, lr}
 1957              		.cfi_def_cfa_offset 8
 1958              		.cfi_offset 3, -8
 1959              		.cfi_offset 14, -4
3173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1960              		.loc 1 3173 7 view .LVU659
 1961 0002 0368     		ldr	r3, [r0]
3170:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1962              		.loc 1 3170 23 view .LVU660
 1963 0004 826A     		ldr	r2, [r0, #40]
 1964              	.LVL109:
3173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1965              		.loc 1 3173 3 is_stmt 1 view .LVU661
3173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1966              		.loc 1 3173 7 is_stmt 0 view .LVU662
 1967 0006 1B68     		ldr	r3, [r3]
3173:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 1968              		.loc 1 3173 6 view .LVU663
 1969 0008 13F02003 		ands	r3, r3, #32
 1970 000c 0BD1     		bne	.L199
3175:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1971              		.loc 1 3175 5 is_stmt 1 view .LVU664
3175:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1972              		.loc 1 3175 24 is_stmt 0 view .LVU665
 1973 000e A2F85630 		strh	r3, [r2, #86]	@ movhi
3179:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1974              		.loc 1 3179 5 is_stmt 1 view .LVU666
 1975 0012 1368     		ldr	r3, [r2]
 1976 0014 9A68     		ldr	r2, [r3, #8]
 1977              	.LVL110:
3179:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1978              		.loc 1 3179 5 is_stmt 0 view .LVU667
 1979 0016 22F08002 		bic	r2, r2, #128
 1980 001a 9A60     		str	r2, [r3, #8]
3182:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 1981              		.loc 1 3182 5 is_stmt 1 view .LVU668
 1982 001c 1A68     		ldr	r2, [r3]
 1983 001e 42F04002 		orr	r2, r2, #64
 1984 0022 1A60     		str	r2, [r3]
 1985              	.LVL111:
 1986              	.L198:
3195:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1987              		.loc 1 3195 1 is_stmt 0 view .LVU669
 1988 0024 08BD     		pop	{r3, pc}
 1989              	.LVL112:
 1990              	.L199:
3192:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 1991              		.loc 1 3192 5 is_stmt 1 view .LVU670
 1992 0026 1046     		mov	r0, r2
 1993              	.LVL113:
3192:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 1994              		.loc 1 3192 5 is_stmt 0 view .LVU671
 1995 0028 FFF7FEFF 		bl	HAL_UART_TxCpltCallback
 1996              	.LVL114:
3195:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 1997              		.loc 1 3195 1 view .LVU672
 1998 002c FAE7     		b	.L198
 1999              		.cfi_endproc
 2000              	.LFE370:
 2002              		.section	.text.HAL_UART_TxHalfCpltCallback,"ax",%progbits
 2003              		.align	1
 2004              		.weak	HAL_UART_TxHalfCpltCallback
 2005              		.syntax unified
 2006              		.thumb
 2007              		.thumb_func
 2008              		.fpu fpv4-sp-d16
 2010              	HAL_UART_TxHalfCpltCallback:
 2011              	.LFB400:
 2012              		.cfi_startproc
 2013              		@ args = 0, pretend = 0, frame = 0
 2014              		@ frame_needed = 0, uses_anonymous_args = 0
 2015              		@ link register save eliminated.
 2016 0000 7047     		bx	lr
 2017              		.cfi_endproc
 2018              	.LFE400:
 2020              		.section	.text.UART_DMATxHalfCplt,"ax",%progbits
 2021              		.align	1
 2022              		.syntax unified
 2023              		.thumb
 2024              		.thumb_func
 2025              		.fpu fpv4-sp-d16
 2027              	UART_DMATxHalfCplt:
 2028              	.LVL115:
 2029              	.LFB371:
3203:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2030              		.loc 1 3203 1 is_stmt 1 view -0
 2031              		.cfi_startproc
 2032              		@ args = 0, pretend = 0, frame = 0
 2033              		@ frame_needed = 0, uses_anonymous_args = 0
3204:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2034              		.loc 1 3204 3 view .LVU674
3211:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2035              		.loc 1 3211 3 view .LVU675
3203:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2036              		.loc 1 3203 1 is_stmt 0 view .LVU676
 2037 0000 08B5     		push	{r3, lr}
 2038              		.cfi_def_cfa_offset 8
 2039              		.cfi_offset 3, -8
 2040              		.cfi_offset 14, -4
3211:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2041              		.loc 1 3211 3 view .LVU677
 2042 0002 806A     		ldr	r0, [r0, #40]
 2043              	.LVL116:
3211:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2044              		.loc 1 3211 3 view .LVU678
 2045 0004 FFF7FEFF 		bl	HAL_UART_TxHalfCpltCallback
 2046              	.LVL117:
3213:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2047              		.loc 1 3213 1 view .LVU679
 2048 0008 08BD     		pop	{r3, pc}
 2049              		.cfi_endproc
 2050              	.LFE371:
 2052              		.section	.text.HAL_UART_RxCpltCallback,"ax",%progbits
 2053              		.align	1
 2054              		.weak	HAL_UART_RxCpltCallback
 2055              		.syntax unified
 2056              		.thumb
 2057              		.thumb_func
 2058              		.fpu fpv4-sp-d16
 2060              	HAL_UART_RxCpltCallback:
 2061              	.LFB406:
 2062              		.cfi_startproc
 2063              		@ args = 0, pretend = 0, frame = 0
 2064              		@ frame_needed = 0, uses_anonymous_args = 0
 2065              		@ link register save eliminated.
 2066 0000 7047     		bx	lr
 2067              		.cfi_endproc
 2068              	.LFE406:
 2070              		.section	.text.UART_RxISR_8BIT,"ax",%progbits
 2071              		.align	1
 2072              		.syntax unified
 2073              		.thumb
 2074              		.thumb_func
 2075              		.fpu fpv4-sp-d16
 2077              	UART_RxISR_8BIT:
 2078              	.LVL118:
 2079              	.LFB385:
3641:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3642:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3643:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief  Wrap up transmission in non-blocking mode.
3644:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param  huart pointer to a UART_HandleTypeDef structure that contains
3645:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *                the configuration information for the specified UART module.
3646:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3647:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3648:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_EndTransmit_IT(UART_HandleTypeDef *huart)
3649:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
3650:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable the UART Transmit Complete Interrupt */
3651:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, USART_CR1_TCIE);
3652:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3653:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Tx process is ended, restore huart->gState to Ready */
3654:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
3655:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3656:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Cleat TxISR function pointer */
3657:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxISR = NULL;
3658:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3659:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3660:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call registered Tx complete callback*/
3661:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxCpltCallback(huart);
3662:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3663:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /*Call legacy weak Tx complete callback*/
3664:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_UART_TxCpltCallback(huart);
3665:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3666:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
3667:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3668:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3669:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief RX interrrupt handler for 7 or 8 bits data word length .
3670:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3671:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3672:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3673:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_8BIT(UART_HandleTypeDef *huart)
3674:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2080              		.loc 1 3674 1 is_stmt 1 view -0
 2081              		.cfi_startproc
 2082              		@ args = 0, pretend = 0, frame = 0
 2083              		@ frame_needed = 0, uses_anonymous_args = 0
3675:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t uhMask = huart->Mask;
 2084              		.loc 1 3675 3 view .LVU681
3676:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhdata;
 2085              		.loc 1 3676 3 view .LVU682
3677:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3678:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is ongoing */
3679:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_BUSY_RX)
 2086              		.loc 1 3679 3 view .LVU683
 2087              		.loc 1 3679 12 is_stmt 0 view .LVU684
 2088 0000 D0F88410 		ldr	r1, [r0, #132]
 2089 0004 0268     		ldr	r2, [r0]
 2090              		.loc 1 3679 6 view .LVU685
 2091 0006 2229     		cmp	r1, #34
3674:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t uhMask = huart->Mask;
 2092              		.loc 1 3674 1 view .LVU686
 2093 0008 10B5     		push	{r4, lr}
 2094              		.cfi_def_cfa_offset 8
 2095              		.cfi_offset 4, -8
 2096              		.cfi_offset 14, -4
 2097              		.loc 1 3679 6 view .LVU687
 2098 000a 22D1     		bne	.L205
3680:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3681:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhdata = (uint16_t) READ_REG(huart->Instance->RDR);
 2099              		.loc 1 3681 5 is_stmt 1 view .LVU688
 2100              		.loc 1 3681 25 is_stmt 0 view .LVU689
 2101 000c 526A     		ldr	r2, [r2, #36]
 2102              	.LVL119:
3682:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     *huart->pRxBuffPtr = (uint8_t)(uhdata & (uint8_t)uhMask);
 2103              		.loc 1 3682 5 is_stmt 1 view .LVU690
 2104              		.loc 1 3682 26 is_stmt 0 view .LVU691
 2105 000e 90F86040 		ldrb	r4, [r0, #96]	@ zero_extendqisi2
 2106              		.loc 1 3682 11 view .LVU692
 2107 0012 816D     		ldr	r1, [r0, #88]
 2108              		.loc 1 3682 26 view .LVU693
 2109 0014 2240     		ands	r2, r2, r4
 2110              	.LVL120:
 2111              		.loc 1 3682 24 view .LVU694
 2112 0016 0A70     		strb	r2, [r1]
 2113              	.LVL121:
3683:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->pRxBuffPtr++;
 2114              		.loc 1 3683 5 is_stmt 1 view .LVU695
 2115              		.loc 1 3683 22 is_stmt 0 view .LVU696
 2116 0018 826D     		ldr	r2, [r0, #88]
 2117 001a 0132     		adds	r2, r2, #1
 2118 001c 8265     		str	r2, [r0, #88]
3684:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount--;
 2119              		.loc 1 3684 5 is_stmt 1 view .LVU697
 2120              		.loc 1 3684 10 is_stmt 0 view .LVU698
 2121 001e B0F85E20 		ldrh	r2, [r0, #94]
 2122              		.loc 1 3684 23 view .LVU699
 2123 0022 013A     		subs	r2, r2, #1
 2124 0024 92B2     		uxth	r2, r2
 2125 0026 A0F85E20 		strh	r2, [r0, #94]	@ movhi
3685:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3686:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->RxXferCount == 0U)
 2126              		.loc 1 3686 5 is_stmt 1 view .LVU700
 2127              		.loc 1 3686 14 is_stmt 0 view .LVU701
 2128 002a B0F85E20 		ldrh	r2, [r0, #94]
 2129 002e 92B2     		uxth	r2, r2
 2130              		.loc 1 3686 8 view .LVU702
 2131 0030 72B9     		cbnz	r2, .L204
 2132              	.LVL122:
 2133              	.LBB24:
 2134              	.LBI24:
3673:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2135              		.loc 1 3673 13 is_stmt 1 view .LVU703
 2136              	.LBB25:
3687:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3688:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART Parity Error Interrupt and RXNE interrupts */
3689:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE));
 2137              		.loc 1 3689 7 view .LVU704
 2138 0032 0168     		ldr	r1, [r0]
 2139 0034 0C68     		ldr	r4, [r1]
 2140 0036 24F49074 		bic	r4, r4, #288
 2141 003a 0C60     		str	r4, [r1]
3690:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART Error Interrupt: (Frame error, noise error, overrun error) */
3692:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 2142              		.loc 1 3692 7 view .LVU705
 2143 003c 8C68     		ldr	r4, [r1, #8]
 2144 003e 24F00104 		bic	r4, r4, #1
 2145 0042 8C60     		str	r4, [r1, #8]
3693:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3694:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Rx process is completed, restore huart->RxState to Ready */
3695:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxState = HAL_UART_STATE_READY;
 2146              		.loc 1 3695 7 view .LVU706
 2147              		.loc 1 3695 22 is_stmt 0 view .LVU707
 2148 0044 2021     		movs	r1, #32
 2149 0046 C0F88410 		str	r1, [r0, #132]
3696:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3697:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Clear RxISR function pointer */
3698:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxISR = NULL;
 2150              		.loc 1 3698 7 is_stmt 1 view .LVU708
 2151              		.loc 1 3698 20 is_stmt 0 view .LVU709
 2152 004a C266     		str	r2, [r0, #108]
3699:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3700:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3701:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /*Call registered Rx complete callback*/
3702:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxCpltCallback(huart);
3703:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3704:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /*Call legacy weak Rx complete callback*/
3705:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       HAL_UART_RxCpltCallback(huart);
 2153              		.loc 1 3705 7 is_stmt 1 view .LVU710
 2154 004c FFF7FEFF 		bl	HAL_UART_RxCpltCallback
 2155              	.LVL123:
 2156              	.L204:
 2157              		.loc 1 3705 7 is_stmt 0 view .LVU711
 2158              	.LBE25:
 2159              	.LBE24:
3706:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3707:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3708:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3709:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
3710:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3711:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear RXNE interrupt flag */
3712:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
3713:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3714:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 2160              		.loc 1 3714 1 view .LVU712
 2161 0050 10BD     		pop	{r4, pc}
 2162              	.LVL124:
 2163              	.L205:
3712:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2164              		.loc 1 3712 5 is_stmt 1 view .LVU713
 2165 0052 9369     		ldr	r3, [r2, #24]
 2166 0054 43F00803 		orr	r3, r3, #8
 2167 0058 9361     		str	r3, [r2, #24]
 2168              		.loc 1 3714 1 is_stmt 0 view .LVU714
 2169 005a F9E7     		b	.L204
 2170              		.cfi_endproc
 2171              	.LFE385:
 2173              		.section	.text.UART_RxISR_16BIT,"ax",%progbits
 2174              		.align	1
 2175              		.syntax unified
 2176              		.thumb
 2177              		.thumb_func
 2178              		.fpu fpv4-sp-d16
 2180              	UART_RxISR_16BIT:
 2181              	.LVL125:
 2182              	.LFB386:
3715:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3716:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3717:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief RX interrrupt handler for 9 bits data word length .
3718:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   Function is called under interruption only, once
3719:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Receive_IT()
3720:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3721:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3722:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3723:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_16BIT(UART_HandleTypeDef *huart)
3724:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2183              		.loc 1 3724 1 is_stmt 1 view -0
 2184              		.cfi_startproc
 2185              		@ args = 0, pretend = 0, frame = 0
 2186              		@ frame_needed = 0, uses_anonymous_args = 0
3725:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 2187              		.loc 1 3725 3 view .LVU716
3726:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t uhMask = huart->Mask;
 2188              		.loc 1 3726 3 view .LVU717
3727:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhdata;
 2189              		.loc 1 3727 3 view .LVU718
3728:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3729:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is ongoing */
3730:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_BUSY_RX)
 2190              		.loc 1 3730 3 view .LVU719
 2191              		.loc 1 3730 12 is_stmt 0 view .LVU720
 2192 0000 D0F88410 		ldr	r1, [r0, #132]
 2193 0004 0268     		ldr	r2, [r0]
 2194              		.loc 1 3730 6 view .LVU721
 2195 0006 2229     		cmp	r1, #34
3724:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 2196              		.loc 1 3724 1 view .LVU722
 2197 0008 10B5     		push	{r4, lr}
 2198              		.cfi_def_cfa_offset 8
 2199              		.cfi_offset 4, -8
 2200              		.cfi_offset 14, -4
 2201              		.loc 1 3730 6 view .LVU723
 2202 000a 20D1     		bne	.L208
3731:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3732:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhdata = (uint16_t) READ_REG(huart->Instance->RDR);
 2203              		.loc 1 3732 5 is_stmt 1 view .LVU724
 2204              		.loc 1 3732 25 is_stmt 0 view .LVU725
 2205 000c 546A     		ldr	r4, [r2, #36]
 2206              	.LVL126:
3733:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     tmp = (uint16_t *) huart->pRxBuffPtr ;
 2207              		.loc 1 3733 5 is_stmt 1 view .LVU726
3734:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     *tmp = (uint16_t)(uhdata & uhMask);
 2208              		.loc 1 3734 5 view .LVU727
 2209              		.loc 1 3734 12 is_stmt 0 view .LVU728
 2210 000e B0F86010 		ldrh	r1, [r0, #96]
 2211 0012 0C40     		ands	r4, r4, r1
 2212              	.LVL127:
 2213              		.loc 1 3734 10 view .LVU729
 2214 0014 816D     		ldr	r1, [r0, #88]
 2215 0016 21F8024B 		strh	r4, [r1], #2	@ movhi
 2216              	.LVL128:
3735:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->pRxBuffPtr += 2U;
 2217              		.loc 1 3735 5 is_stmt 1 view .LVU730
 2218              		.loc 1 3735 23 is_stmt 0 view .LVU731
 2219 001a 8165     		str	r1, [r0, #88]
 2220              	.LVL129:
3736:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount--;
 2221              		.loc 1 3736 5 is_stmt 1 view .LVU732
 2222              		.loc 1 3736 10 is_stmt 0 view .LVU733
 2223 001c B0F85E10 		ldrh	r1, [r0, #94]
 2224              	.LVL130:
 2225              		.loc 1 3736 23 view .LVU734
 2226 0020 0139     		subs	r1, r1, #1
 2227 0022 89B2     		uxth	r1, r1
 2228 0024 A0F85E10 		strh	r1, [r0, #94]	@ movhi
3737:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3738:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if (huart->RxXferCount == 0U)
 2229              		.loc 1 3738 5 is_stmt 1 view .LVU735
 2230              		.loc 1 3738 14 is_stmt 0 view .LVU736
 2231 0028 B0F85E10 		ldrh	r1, [r0, #94]
 2232 002c 89B2     		uxth	r1, r1
 2233              		.loc 1 3738 8 view .LVU737
 2234 002e 69B9     		cbnz	r1, .L207
3739:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3740:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART Parity Error Interrupt and RXNE interrupt*/
3741:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE));
 2235              		.loc 1 3741 7 is_stmt 1 view .LVU738
 2236 0030 1468     		ldr	r4, [r2]
 2237 0032 24F49074 		bic	r4, r4, #288
 2238 0036 1460     		str	r4, [r2]
3742:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3743:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART Error Interrupt: (Frame error, noise error, overrun error) */
3744:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 2239              		.loc 1 3744 7 view .LVU739
 2240 0038 9468     		ldr	r4, [r2, #8]
 2241 003a 24F00104 		bic	r4, r4, #1
 2242 003e 9460     		str	r4, [r2, #8]
3745:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3746:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Rx process is completed, restore huart->RxState to Ready */
3747:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxState = HAL_UART_STATE_READY;
 2243              		.loc 1 3747 7 view .LVU740
 2244              		.loc 1 3747 22 is_stmt 0 view .LVU741
 2245 0040 2022     		movs	r2, #32
 2246 0042 C0F88420 		str	r2, [r0, #132]
3748:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3749:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Clear RxISR function pointer */
3750:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxISR = NULL;
 2247              		.loc 1 3750 7 is_stmt 1 view .LVU742
 2248              		.loc 1 3750 20 is_stmt 0 view .LVU743
 2249 0046 C166     		str	r1, [r0, #108]
3751:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3752:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /*Call registered Rx complete callback*/
3754:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxCpltCallback(huart);
3755:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3756:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /*Call legacy weak Rx complete callback*/
3757:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       HAL_UART_RxCpltCallback(huart);
 2250              		.loc 1 3757 7 is_stmt 1 view .LVU744
 2251 0048 FFF7FEFF 		bl	HAL_UART_RxCpltCallback
 2252              	.LVL131:
 2253              	.L207:
3758:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3760:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
3762:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3763:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear RXNE interrupt flag */
3764:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
3765:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3766:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 2254              		.loc 1 3766 1 is_stmt 0 view .LVU745
 2255 004c 10BD     		pop	{r4, pc}
 2256              	.LVL132:
 2257              	.L208:
 2258              	.LBB28:
 2259              	.LBI28:
3723:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2260              		.loc 1 3723 13 is_stmt 1 view .LVU746
 2261              	.LBB29:
3764:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2262              		.loc 1 3764 5 view .LVU747
 2263 004e 9369     		ldr	r3, [r2, #24]
 2264 0050 43F00803 		orr	r3, r3, #8
 2265 0054 9361     		str	r3, [r2, #24]
 2266              	.LBE29:
 2267              	.LBE28:
 2268              		.loc 1 3766 1 is_stmt 0 view .LVU748
 2269 0056 F9E7     		b	.L207
 2270              		.cfi_endproc
 2271              	.LFE386:
 2273              		.section	.text.UART_RxISR_8BIT_FIFOEN,"ax",%progbits
 2274              		.align	1
 2275              		.syntax unified
 2276              		.thumb
 2277              		.thumb_func
 2278              		.fpu fpv4-sp-d16
 2280              	UART_RxISR_8BIT_FIFOEN:
 2281              	.LVL133:
 2282              	.LFB387:
3767:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3768:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3769:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief RX interrrupt handler for 7 or 8  bits data word length and FIFO mode is enabled.
3770:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   Function is called under interruption only, once
3771:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Receive_IT()
3772:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3773:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3774:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3775:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_8BIT_FIFOEN(UART_HandleTypeDef *huart)
3776:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2283              		.loc 1 3776 1 is_stmt 1 view -0
 2284              		.cfi_startproc
 2285              		@ args = 0, pretend = 0, frame = 0
 2286              		@ frame_needed = 0, uses_anonymous_args = 0
3777:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhMask = huart->Mask;
 2287              		.loc 1 3777 3 view .LVU750
3778:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhdata;
 2288              		.loc 1 3778 3 view .LVU751
3779:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t   nb_rx_data;
 2289              		.loc 1 3779 3 view .LVU752
3780:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  rxdatacount;
 2290              		.loc 1 3780 3 view .LVU753
3781:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3782:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is ongoing */
3783:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_BUSY_RX)
 2291              		.loc 1 3783 3 view .LVU754
 2292              		.loc 1 3783 12 is_stmt 0 view .LVU755
 2293 0000 D0F88430 		ldr	r3, [r0, #132]
 2294              		.loc 1 3783 6 view .LVU756
 2295 0004 222B     		cmp	r3, #34
3776:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhMask = huart->Mask;
 2296              		.loc 1 3776 1 view .LVU757
 2297 0006 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2298              		.cfi_def_cfa_offset 24
 2299              		.cfi_offset 4, -24
 2300              		.cfi_offset 5, -20
 2301              		.cfi_offset 6, -16
 2302              		.cfi_offset 7, -12
 2303              		.cfi_offset 8, -8
 2304              		.cfi_offset 14, -4
3776:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhMask = huart->Mask;
 2305              		.loc 1 3776 1 view .LVU758
 2306 000a 0446     		mov	r4, r0
 2307              		.loc 1 3783 6 view .LVU759
 2308 000c 3FD1     		bne	.L211
3777:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhdata;
 2309              		.loc 1 3777 13 view .LVU760
 2310 000e B0F86060 		ldrh	r6, [r0, #96]
3784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     for (nb_rx_data = huart->NbRxDataToProcess ; nb_rx_data > 0U ; nb_rx_data--)
 2311              		.loc 1 3785 5 is_stmt 1 view .LVU761
 2312              		.loc 1 3785 21 is_stmt 0 view .LVU762
 2313 0012 B0F86850 		ldrh	r5, [r0, #104]
 2314              	.LVL134:
3786:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3787:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       uhdata = (uint16_t) READ_REG(huart->Instance->RDR);
3788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       *huart->pRxBuffPtr = (uint8_t)(uhdata & (uint8_t)uhMask);
3789:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr++;
3790:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount--;
3791:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3792:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (huart->RxXferCount == 0U)
3793:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3794:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable the UART Parity Error Interrupt and RXFT interrupt*/
3795:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR1, USART_CR1_PEIE);
3796:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3797:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable the UART Error Interrupt: (Frame error, noise error, overrun error) and RX FIFO 
3798:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE));
 2315              		.loc 1 3798 9 view .LVU763
 2316 0016 214F     		ldr	r7, .L219
3799:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3800:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Rx process is completed, restore huart->RxState to Ready */
3801:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxState = HAL_UART_STATE_READY;
 2317              		.loc 1 3801 24 view .LVU764
 2318 0018 4FF02008 		mov	r8, #32
 2319              	.LVL135:
 2320              	.L212:
3785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2321              		.loc 1 3785 5 discriminator 1 view .LVU765
 2322 001c A5B9     		cbnz	r5, .L214
3802:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3803:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Clear RxISR function pointer */
3804:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxISR = NULL;
3805:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3806:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3807:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /*Call registered Rx complete callback*/
3808:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxCpltCallback(huart);
3809:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3810:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /*Call legacy weak Rx complete callback*/
3811:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         HAL_UART_RxCpltCallback(huart);
3812:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3813:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3814:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3815:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* When remaining number of bytes to receive is less than the RX FIFO
3817:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     threshold, next incoming frames are processed as if FIFO mode was
3818:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     disabled (i.e. one interrupt per received frame).
3819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     */
3820:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     rxdatacount = huart->RxXferCount;
 2323              		.loc 1 3820 5 is_stmt 1 view .LVU766
 2324              		.loc 1 3820 17 is_stmt 0 view .LVU767
 2325 001e B4F85E30 		ldrh	r3, [r4, #94]
 2326 0022 9BB2     		uxth	r3, r3
 2327              	.LVL136:
3821:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((rxdatacount != 0U) && (rxdatacount < huart->NbRxDataToProcess))
 2328              		.loc 1 3821 5 is_stmt 1 view .LVU768
 2329              		.loc 1 3821 8 is_stmt 0 view .LVU769
 2330 0024 73B1     		cbz	r3, .L210
 2331              		.loc 1 3821 29 discriminator 1 view .LVU770
 2332 0026 B4F86820 		ldrh	r2, [r4, #104]
 2333 002a 9A42     		cmp	r2, r3
 2334 002c 0AD9     		bls	.L210
3822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3823:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART RXFT interrupt*/
3824:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR3, USART_CR3_RXFTIE);
 2335              		.loc 1 3824 7 is_stmt 1 view .LVU771
 2336 002e 2368     		ldr	r3, [r4]
 2337              	.LVL137:
 2338              		.loc 1 3824 7 is_stmt 0 view .LVU772
 2339 0030 9A68     		ldr	r2, [r3, #8]
 2340 0032 22F08052 		bic	r2, r2, #268435456
 2341 0036 9A60     		str	r2, [r3, #8]
3825:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3826:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Update the RxISR function pointer */
3827:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxISR = UART_RxISR_8BIT;
 2342              		.loc 1 3827 7 is_stmt 1 view .LVU773
 2343              		.loc 1 3827 20 is_stmt 0 view .LVU774
 2344 0038 194A     		ldr	r2, .L219+4
 2345 003a E266     		str	r2, [r4, #108]
3828:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3829:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the UART Data Register Not Empty interrupt */
3830:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_RXNEIE_RXFNEIE);
 2346              		.loc 1 3830 7 is_stmt 1 view .LVU775
 2347 003c 1A68     		ldr	r2, [r3]
 2348 003e 42F02002 		orr	r2, r2, #32
 2349 0042 1A60     		str	r2, [r3]
 2350              	.LVL138:
 2351              	.L210:
3831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3832:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3833:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
3834:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3835:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear RXNE interrupt flag */
3836:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
3837:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3838:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 2352              		.loc 1 3838 1 is_stmt 0 view .LVU776
 2353 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2354              	.LVL139:
 2355              	.L214:
3787:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       *huart->pRxBuffPtr = (uint8_t)(uhdata & (uint8_t)uhMask);
 2356              		.loc 1 3787 7 is_stmt 1 view .LVU777
3787:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       *huart->pRxBuffPtr = (uint8_t)(uhdata & (uint8_t)uhMask);
 2357              		.loc 1 3787 27 is_stmt 0 view .LVU778
 2358 0048 2368     		ldr	r3, [r4]
3788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr++;
 2359              		.loc 1 3788 13 view .LVU779
 2360 004a A26D     		ldr	r2, [r4, #88]
3787:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       *huart->pRxBuffPtr = (uint8_t)(uhdata & (uint8_t)uhMask);
 2361              		.loc 1 3787 27 view .LVU780
 2362 004c 5B6A     		ldr	r3, [r3, #36]
 2363              	.LVL140:
3788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr++;
 2364              		.loc 1 3788 7 is_stmt 1 view .LVU781
3788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr++;
 2365              		.loc 1 3788 28 is_stmt 0 view .LVU782
 2366 004e 3340     		ands	r3, r3, r6
 2367              	.LVL141:
3788:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr++;
 2368              		.loc 1 3788 26 view .LVU783
 2369 0050 1370     		strb	r3, [r2]
3789:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount--;
 2370              		.loc 1 3789 7 is_stmt 1 view .LVU784
3789:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount--;
 2371              		.loc 1 3789 24 is_stmt 0 view .LVU785
 2372 0052 A36D     		ldr	r3, [r4, #88]
 2373 0054 0133     		adds	r3, r3, #1
 2374 0056 A365     		str	r3, [r4, #88]
3790:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2375              		.loc 1 3790 7 is_stmt 1 view .LVU786
3790:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2376              		.loc 1 3790 12 is_stmt 0 view .LVU787
 2377 0058 B4F85E30 		ldrh	r3, [r4, #94]
3790:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2378              		.loc 1 3790 25 view .LVU788
 2379 005c 013B     		subs	r3, r3, #1
 2380 005e 9BB2     		uxth	r3, r3
 2381 0060 A4F85E30 		strh	r3, [r4, #94]	@ movhi
3792:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2382              		.loc 1 3792 7 is_stmt 1 view .LVU789
3792:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2383              		.loc 1 3792 16 is_stmt 0 view .LVU790
 2384 0064 B4F85E30 		ldrh	r3, [r4, #94]
 2385 0068 9BB2     		uxth	r3, r3
3792:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2386              		.loc 1 3792 10 view .LVU791
 2387 006a 6BB9     		cbnz	r3, .L213
3795:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2388              		.loc 1 3795 9 is_stmt 1 view .LVU792
 2389 006c 2268     		ldr	r2, [r4]
 2390 006e 1168     		ldr	r1, [r2]
 2391 0070 21F48071 		bic	r1, r1, #256
 2392 0074 1160     		str	r1, [r2]
3798:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2393              		.loc 1 3798 9 view .LVU793
 2394 0076 9168     		ldr	r1, [r2, #8]
 2395 0078 3940     		ands	r1, r1, r7
 2396 007a 9160     		str	r1, [r2, #8]
3801:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2397              		.loc 1 3801 9 view .LVU794
3811:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2398              		.loc 1 3811 9 is_stmt 0 view .LVU795
 2399 007c 2046     		mov	r0, r4
3801:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2400              		.loc 1 3801 24 view .LVU796
 2401 007e C4F88480 		str	r8, [r4, #132]
3804:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2402              		.loc 1 3804 9 is_stmt 1 view .LVU797
3804:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2403              		.loc 1 3804 22 is_stmt 0 view .LVU798
 2404 0082 E366     		str	r3, [r4, #108]
3811:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2405              		.loc 1 3811 9 is_stmt 1 view .LVU799
 2406 0084 FFF7FEFF 		bl	HAL_UART_RxCpltCallback
 2407              	.LVL142:
 2408              	.L213:
3785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2409              		.loc 1 3785 78 is_stmt 0 discriminator 2 view .LVU800
 2410 0088 013D     		subs	r5, r5, #1
 2411              	.LVL143:
3785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2412              		.loc 1 3785 78 discriminator 2 view .LVU801
 2413 008a ADB2     		uxth	r5, r5
 2414              	.LVL144:
3785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2415              		.loc 1 3785 78 discriminator 2 view .LVU802
 2416 008c C6E7     		b	.L212
 2417              	.LVL145:
 2418              	.L211:
3836:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2419              		.loc 1 3836 5 is_stmt 1 view .LVU803
 2420 008e 0268     		ldr	r2, [r0]
 2421 0090 9369     		ldr	r3, [r2, #24]
 2422 0092 43F00803 		orr	r3, r3, #8
 2423 0096 9361     		str	r3, [r2, #24]
 2424              		.loc 1 3838 1 is_stmt 0 view .LVU804
 2425 0098 D4E7     		b	.L210
 2426              	.L220:
 2427 009a 00BF     		.align	2
 2428              	.L219:
 2429 009c FEFFFFEF 		.word	-268435458
 2430 00a0 00000000 		.word	UART_RxISR_8BIT
 2431              		.cfi_endproc
 2432              	.LFE387:
 2434              		.section	.text.UART_RxISR_16BIT_FIFOEN,"ax",%progbits
 2435              		.align	1
 2436              		.syntax unified
 2437              		.thumb
 2438              		.thumb_func
 2439              		.fpu fpv4-sp-d16
 2441              	UART_RxISR_16BIT_FIFOEN:
 2442              	.LVL146:
 2443              	.LFB388:
3839:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3840:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
3841:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @brief RX interrrupt handler for 9 bits data word length and FIFO mode is enabled.
3842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @note   Function is called under interruption only, once
3843:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Receive_IT()
3844:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @param huart UART handle.
3845:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   * @retval None
3846:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   */
3847:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** static void UART_RxISR_16BIT_FIFOEN(UART_HandleTypeDef *huart)
3848:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2444              		.loc 1 3848 1 is_stmt 1 view -0
 2445              		.cfi_startproc
 2446              		@ args = 0, pretend = 0, frame = 0
 2447              		@ frame_needed = 0, uses_anonymous_args = 0
3849:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 2448              		.loc 1 3849 3 view .LVU806
3850:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhMask = huart->Mask;
 2449              		.loc 1 3850 3 view .LVU807
3851:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhdata;
 2450              		.loc 1 3851 3 view .LVU808
3852:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t   nb_rx_data;
 2451              		.loc 1 3852 3 view .LVU809
3853:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  rxdatacount;
 2452              		.loc 1 3853 3 view .LVU810
3854:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3855:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check that a Rx process is ongoing */
3856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (huart->RxState == HAL_UART_STATE_BUSY_RX)
 2453              		.loc 1 3856 3 view .LVU811
 2454              		.loc 1 3856 12 is_stmt 0 view .LVU812
 2455 0000 D0F88430 		ldr	r3, [r0, #132]
 2456              		.loc 1 3856 6 view .LVU813
 2457 0004 222B     		cmp	r3, #34
3848:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 2458              		.loc 1 3848 1 view .LVU814
 2459 0006 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2460              		.cfi_def_cfa_offset 24
 2461              		.cfi_offset 4, -24
 2462              		.cfi_offset 5, -20
 2463              		.cfi_offset 6, -16
 2464              		.cfi_offset 7, -12
 2465              		.cfi_offset 8, -8
 2466              		.cfi_offset 14, -4
3848:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *tmp;
 2467              		.loc 1 3848 1 view .LVU815
 2468 000a 0446     		mov	r4, r0
 2469              		.loc 1 3856 6 view .LVU816
 2470 000c 3DD1     		bne	.L222
3850:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t  uhdata;
 2471              		.loc 1 3850 13 view .LVU817
 2472 000e B0F86060 		ldrh	r6, [r0, #96]
3857:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     for (nb_rx_data = huart->NbRxDataToProcess ; nb_rx_data > 0U ; nb_rx_data--)
 2473              		.loc 1 3858 5 is_stmt 1 view .LVU818
 2474              		.loc 1 3858 21 is_stmt 0 view .LVU819
 2475 0012 B0F86850 		ldrh	r5, [r0, #104]
 2476              	.LVL147:
3859:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       uhdata = (uint16_t) READ_REG(huart->Instance->RDR);
3861:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       tmp = (uint16_t *) huart->pRxBuffPtr ;
3862:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       *tmp = (uint16_t)(uhdata & uhMask);
3863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr += 2U;
3864:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount--;
3865:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3866:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if (huart->RxXferCount == 0U)
3867:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
3868:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable the UART Parity Error Interrupt and RXFT interrupt*/
3869:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR1, USART_CR1_PEIE);
3870:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3871:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Disable the UART Error Interrupt: (Frame error, noise error, overrun error) and RX FIFO 
3872:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE));
 2477              		.loc 1 3872 9 view .LVU820
 2478 0016 204F     		ldr	r7, .L230
3873:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3874:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Rx process is completed, restore huart->RxState to Ready */
3875:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxState = HAL_UART_STATE_READY;
 2479              		.loc 1 3875 24 view .LVU821
 2480 0018 4FF02008 		mov	r8, #32
 2481              	.LVL148:
 2482              	.L223:
3858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2483              		.loc 1 3858 5 discriminator 1 view .LVU822
 2484 001c A5B9     		cbnz	r5, .L225
 2485              	.LVL149:
 2486              	.LBB32:
 2487              	.LBI32:
3847:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2488              		.loc 1 3847 13 is_stmt 1 view .LVU823
 2489              	.LBB33:
3876:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3877:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /* Clear RxISR function pointer */
3878:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxISR = NULL;
3879:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3880:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #if (USE_HAL_UART_REGISTER_CALLBACKS == 1)
3881:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /*Call registered Rx complete callback*/
3882:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxCpltCallback(huart);
3883:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #else
3884:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         /*Call legacy weak Rx complete callback*/
3885:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         HAL_UART_RxCpltCallback(huart);
3886:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
3887:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
3888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3889:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3890:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* When remaining number of bytes to receive is less than the RX FIFO
3891:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     threshold, next incoming frames are processed as if FIFO mode was
3892:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     disabled (i.e. one interrupt per received frame).
3893:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     */
3894:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     rxdatacount = huart->RxXferCount;
 2490              		.loc 1 3894 5 view .LVU824
 2491              		.loc 1 3894 17 is_stmt 0 view .LVU825
 2492 001e B4F85E30 		ldrh	r3, [r4, #94]
 2493 0022 9BB2     		uxth	r3, r3
 2494              	.LVL150:
3895:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     if ((rxdatacount != 0U) && (rxdatacount < huart->NbRxDataToProcess))
 2495              		.loc 1 3895 5 is_stmt 1 view .LVU826
 2496              		.loc 1 3895 8 is_stmt 0 view .LVU827
 2497 0024 73B1     		cbz	r3, .L221
 2498              		.loc 1 3895 29 view .LVU828
 2499 0026 B4F86820 		ldrh	r2, [r4, #104]
 2500 002a 9A42     		cmp	r2, r3
 2501 002c 0AD9     		bls	.L221
3896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
3897:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Disable the UART RXFT interrupt*/
3898:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR3, USART_CR3_RXFTIE);
 2502              		.loc 1 3898 7 is_stmt 1 view .LVU829
 2503 002e 2368     		ldr	r3, [r4]
 2504              	.LVL151:
 2505              		.loc 1 3898 7 is_stmt 0 view .LVU830
 2506 0030 9A68     		ldr	r2, [r3, #8]
 2507 0032 22F08052 		bic	r2, r2, #268435456
 2508 0036 9A60     		str	r2, [r3, #8]
3899:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Update the RxISR function pointer */
3901:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxISR = UART_RxISR_16BIT;
 2509              		.loc 1 3901 7 is_stmt 1 view .LVU831
 2510              		.loc 1 3901 20 is_stmt 0 view .LVU832
 2511 0038 184A     		ldr	r2, .L230+4
 2512 003a E266     		str	r2, [r4, #108]
3902:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
3903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       /* Enable the UART Data Register Not Empty interrupt */
3904:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_RXNEIE_RXFNEIE);
 2513              		.loc 1 3904 7 is_stmt 1 view .LVU833
 2514 003c 1A68     		ldr	r2, [r3]
 2515 003e 42F02002 		orr	r2, r2, #32
 2516 0042 1A60     		str	r2, [r3]
 2517              	.LVL152:
 2518              	.L221:
 2519              		.loc 1 3904 7 is_stmt 0 view .LVU834
 2520              	.LBE33:
 2521              	.LBE32:
3905:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
3906:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3907:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   else
3908:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
3909:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* Clear RXNE interrupt flag */
3910:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
3911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
3912:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 2522              		.loc 1 3912 1 view .LVU835
 2523 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2524              	.LVL153:
 2525              	.L225:
3860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       tmp = (uint16_t *) huart->pRxBuffPtr ;
 2526              		.loc 1 3860 7 is_stmt 1 view .LVU836
3860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       tmp = (uint16_t *) huart->pRxBuffPtr ;
 2527              		.loc 1 3860 27 is_stmt 0 view .LVU837
 2528 0048 2368     		ldr	r3, [r4]
3862:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr += 2U;
 2529              		.loc 1 3862 12 view .LVU838
 2530 004a A26D     		ldr	r2, [r4, #88]
3860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       tmp = (uint16_t *) huart->pRxBuffPtr ;
 2531              		.loc 1 3860 27 view .LVU839
 2532 004c 596A     		ldr	r1, [r3, #36]
 2533              	.LVL154:
3861:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       *tmp = (uint16_t)(uhdata & uhMask);
 2534              		.loc 1 3861 7 is_stmt 1 view .LVU840
3862:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr += 2U;
 2535              		.loc 1 3862 7 view .LVU841
3862:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr += 2U;
 2536              		.loc 1 3862 14 is_stmt 0 view .LVU842
 2537 004e 3140     		ands	r1, r1, r6
 2538              	.LVL155:
3862:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->pRxBuffPtr += 2U;
 2539              		.loc 1 3862 12 view .LVU843
 2540 0050 22F8021B 		strh	r1, [r2], #2	@ movhi
 2541              	.LVL156:
3863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount--;
 2542              		.loc 1 3863 7 is_stmt 1 view .LVU844
3863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->RxXferCount--;
 2543              		.loc 1 3863 25 is_stmt 0 view .LVU845
 2544 0054 A265     		str	r2, [r4, #88]
 2545              	.LVL157:
3864:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2546              		.loc 1 3864 7 is_stmt 1 view .LVU846
3864:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2547              		.loc 1 3864 12 is_stmt 0 view .LVU847
 2548 0056 B4F85E20 		ldrh	r2, [r4, #94]
 2549              	.LVL158:
3864:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2550              		.loc 1 3864 25 view .LVU848
 2551 005a 013A     		subs	r2, r2, #1
 2552 005c 92B2     		uxth	r2, r2
 2553 005e A4F85E20 		strh	r2, [r4, #94]	@ movhi
3866:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2554              		.loc 1 3866 7 is_stmt 1 view .LVU849
3866:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2555              		.loc 1 3866 16 is_stmt 0 view .LVU850
 2556 0062 B4F85E20 		ldrh	r2, [r4, #94]
 2557 0066 92B2     		uxth	r2, r2
3866:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2558              		.loc 1 3866 10 view .LVU851
 2559 0068 62B9     		cbnz	r2, .L224
3869:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2560              		.loc 1 3869 9 is_stmt 1 view .LVU852
 2561 006a 1968     		ldr	r1, [r3]
 2562 006c 21F48071 		bic	r1, r1, #256
 2563 0070 1960     		str	r1, [r3]
3872:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2564              		.loc 1 3872 9 view .LVU853
 2565 0072 9968     		ldr	r1, [r3, #8]
 2566 0074 3940     		ands	r1, r1, r7
 2567 0076 9960     		str	r1, [r3, #8]
3875:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2568              		.loc 1 3875 9 view .LVU854
3885:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2569              		.loc 1 3885 9 is_stmt 0 view .LVU855
 2570 0078 2046     		mov	r0, r4
3875:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2571              		.loc 1 3875 24 view .LVU856
 2572 007a C4F88480 		str	r8, [r4, #132]
3878:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2573              		.loc 1 3878 9 is_stmt 1 view .LVU857
3878:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2574              		.loc 1 3878 22 is_stmt 0 view .LVU858
 2575 007e E266     		str	r2, [r4, #108]
3885:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2576              		.loc 1 3885 9 is_stmt 1 view .LVU859
 2577 0080 FFF7FEFF 		bl	HAL_UART_RxCpltCallback
 2578              	.LVL159:
 2579              	.L224:
3858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2580              		.loc 1 3858 78 is_stmt 0 discriminator 2 view .LVU860
 2581 0084 013D     		subs	r5, r5, #1
 2582              	.LVL160:
3858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2583              		.loc 1 3858 78 discriminator 2 view .LVU861
 2584 0086 ADB2     		uxth	r5, r5
 2585              	.LVL161:
3858:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2586              		.loc 1 3858 78 discriminator 2 view .LVU862
 2587 0088 C8E7     		b	.L223
 2588              	.LVL162:
 2589              	.L222:
3910:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2590              		.loc 1 3910 5 is_stmt 1 view .LVU863
 2591 008a 0268     		ldr	r2, [r0]
 2592 008c 9369     		ldr	r3, [r2, #24]
 2593 008e 43F00803 		orr	r3, r3, #8
 2594 0092 9361     		str	r3, [r2, #24]
 2595              		.loc 1 3912 1 is_stmt 0 view .LVU864
 2596 0094 D6E7     		b	.L221
 2597              	.L231:
 2598 0096 00BF     		.align	2
 2599              	.L230:
 2600 0098 FEFFFFEF 		.word	-268435458
 2601 009c 00000000 		.word	UART_RxISR_16BIT
 2602              		.cfi_endproc
 2603              	.LFE388:
 2605              		.section	.text.UART_DMAReceiveCplt,"ax",%progbits
 2606              		.align	1
 2607              		.syntax unified
 2608              		.thumb
 2609              		.thumb_func
 2610              		.fpu fpv4-sp-d16
 2612              	UART_DMAReceiveCplt:
 2613              	.LVL163:
 2614              	.LFB372:
3221:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2615              		.loc 1 3221 1 is_stmt 1 view -0
 2616              		.cfi_startproc
 2617              		@ args = 0, pretend = 0, frame = 0
 2618              		@ frame_needed = 0, uses_anonymous_args = 0
3222:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2619              		.loc 1 3222 3 view .LVU866
3221:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2620              		.loc 1 3221 1 is_stmt 0 view .LVU867
 2621 0000 08B5     		push	{r3, lr}
 2622              		.cfi_def_cfa_offset 8
 2623              		.cfi_offset 3, -8
 2624              		.cfi_offset 14, -4
3225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2625              		.loc 1 3225 7 view .LVU868
 2626 0002 0368     		ldr	r3, [r0]
3222:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2627              		.loc 1 3222 23 view .LVU869
 2628 0004 826A     		ldr	r2, [r0, #40]
 2629              	.LVL164:
3225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2630              		.loc 1 3225 3 is_stmt 1 view .LVU870
3225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2631              		.loc 1 3225 7 is_stmt 0 view .LVU871
 2632 0006 1B68     		ldr	r3, [r3]
3225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2633              		.loc 1 3225 6 view .LVU872
 2634 0008 13F02003 		ands	r3, r3, #32
 2635 000c 11D1     		bne	.L233
3227:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2636              		.loc 1 3227 5 is_stmt 1 view .LVU873
3227:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2637              		.loc 1 3227 24 is_stmt 0 view .LVU874
 2638 000e A2F85E30 		strh	r3, [r2, #94]	@ movhi
3230:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 2639              		.loc 1 3230 5 is_stmt 1 view .LVU875
 2640 0012 1368     		ldr	r3, [r2]
 2641 0014 1968     		ldr	r1, [r3]
 2642 0016 21F48071 		bic	r1, r1, #256
 2643 001a 1960     		str	r1, [r3]
3231:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2644              		.loc 1 3231 5 view .LVU876
 2645 001c 9968     		ldr	r1, [r3, #8]
 2646 001e 21F00101 		bic	r1, r1, #1
 2647 0022 9960     		str	r1, [r3, #8]
3235:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2648              		.loc 1 3235 5 view .LVU877
 2649 0024 9968     		ldr	r1, [r3, #8]
 2650 0026 21F04001 		bic	r1, r1, #64
 2651 002a 9960     		str	r1, [r3, #8]
3238:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2652              		.loc 1 3238 5 view .LVU878
3238:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2653              		.loc 1 3238 20 is_stmt 0 view .LVU879
 2654 002c 2023     		movs	r3, #32
 2655 002e C2F88430 		str	r3, [r2, #132]
 2656              	.L233:
3246:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2657              		.loc 1 3246 3 is_stmt 1 view .LVU880
 2658 0032 1046     		mov	r0, r2
 2659              	.LVL165:
3246:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2660              		.loc 1 3246 3 is_stmt 0 view .LVU881
 2661 0034 FFF7FEFF 		bl	HAL_UART_RxCpltCallback
 2662              	.LVL166:
3248:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2663              		.loc 1 3248 1 view .LVU882
 2664 0038 08BD     		pop	{r3, pc}
 2665              		.cfi_endproc
 2666              	.LFE372:
 2668              		.section	.text.HAL_UART_RxHalfCpltCallback,"ax",%progbits
 2669              		.align	1
 2670              		.weak	HAL_UART_RxHalfCpltCallback
 2671              		.syntax unified
 2672              		.thumb
 2673              		.thumb_func
 2674              		.fpu fpv4-sp-d16
 2676              	HAL_UART_RxHalfCpltCallback:
 2677              	.LFB404:
 2678              		.cfi_startproc
 2679              		@ args = 0, pretend = 0, frame = 0
 2680              		@ frame_needed = 0, uses_anonymous_args = 0
 2681              		@ link register save eliminated.
 2682 0000 7047     		bx	lr
 2683              		.cfi_endproc
 2684              	.LFE404:
 2686              		.section	.text.UART_DMARxHalfCplt,"ax",%progbits
 2687              		.align	1
 2688              		.syntax unified
 2689              		.thumb
 2690              		.thumb_func
 2691              		.fpu fpv4-sp-d16
 2693              	UART_DMARxHalfCplt:
 2694              	.LVL167:
 2695              	.LFB373:
3256:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2696              		.loc 1 3256 1 is_stmt 1 view -0
 2697              		.cfi_startproc
 2698              		@ args = 0, pretend = 0, frame = 0
 2699              		@ frame_needed = 0, uses_anonymous_args = 0
3257:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2700              		.loc 1 3257 3 view .LVU884
3264:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2701              		.loc 1 3264 3 view .LVU885
3256:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2702              		.loc 1 3256 1 is_stmt 0 view .LVU886
 2703 0000 08B5     		push	{r3, lr}
 2704              		.cfi_def_cfa_offset 8
 2705              		.cfi_offset 3, -8
 2706              		.cfi_offset 14, -4
3264:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2707              		.loc 1 3264 3 view .LVU887
 2708 0002 806A     		ldr	r0, [r0, #40]
 2709              	.LVL168:
3264:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2710              		.loc 1 3264 3 view .LVU888
 2711 0004 FFF7FEFF 		bl	HAL_UART_RxHalfCpltCallback
 2712              	.LVL169:
3266:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2713              		.loc 1 3266 1 view .LVU889
 2714 0008 08BD     		pop	{r3, pc}
 2715              		.cfi_endproc
 2716              	.LFE373:
 2718              		.section	.text.HAL_UART_ErrorCallback,"ax",%progbits
 2719              		.align	1
 2720              		.weak	HAL_UART_ErrorCallback
 2721              		.syntax unified
 2722              		.thumb
 2723              		.thumb_func
 2724              		.fpu fpv4-sp-d16
 2726              	HAL_UART_ErrorCallback:
 2727              	.LFB408:
 2728              		.cfi_startproc
 2729              		@ args = 0, pretend = 0, frame = 0
 2730              		@ frame_needed = 0, uses_anonymous_args = 0
 2731              		@ link register save eliminated.
 2732 0000 7047     		bx	lr
 2733              		.cfi_endproc
 2734              	.LFE408:
 2736              		.section	.text.UART_DMAError,"ax",%progbits
 2737              		.align	1
 2738              		.syntax unified
 2739              		.thumb
 2740              		.thumb_func
 2741              		.fpu fpv4-sp-d16
 2743              	UART_DMAError:
 2744              	.LVL170:
 2745              	.LFB374:
3274:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2746              		.loc 1 3274 1 is_stmt 1 view -0
 2747              		.cfi_startproc
 2748              		@ args = 0, pretend = 0, frame = 0
 2749              		@ frame_needed = 0, uses_anonymous_args = 0
3275:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2750              		.loc 1 3275 3 view .LVU891
3275:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2751              		.loc 1 3275 23 is_stmt 0 view .LVU892
 2752 0000 816A     		ldr	r1, [r0, #40]
 2753              	.LVL171:
3277:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
 2754              		.loc 1 3277 3 is_stmt 1 view .LVU893
3281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 2755              		.loc 1 3281 8 is_stmt 0 view .LVU894
 2756 0002 0B68     		ldr	r3, [r1]
3277:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   const HAL_UART_StateTypeDef rxstate = huart->RxState;
 2757              		.loc 1 3277 31 view .LVU895
 2758 0004 D1F88020 		ldr	r2, [r1, #128]
 2759              	.LVL172:
3278:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2760              		.loc 1 3278 3 is_stmt 1 view .LVU896
3278:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2761              		.loc 1 3278 31 is_stmt 0 view .LVU897
 2762 0008 D1F88400 		ldr	r0, [r1, #132]
 2763              	.LVL173:
3281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 2764              		.loc 1 3281 3 is_stmt 1 view .LVU898
3274:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 2765              		.loc 1 3274 1 is_stmt 0 view .LVU899
 2766 000c 10B5     		push	{r4, lr}
 2767              		.cfi_def_cfa_offset 8
 2768              		.cfi_offset 4, -8
 2769              		.cfi_offset 14, -4
3281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 2770              		.loc 1 3281 8 view .LVU900
 2771 000e 9C68     		ldr	r4, [r3, #8]
3281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 2772              		.loc 1 3281 6 view .LVU901
 2773 0010 2406     		lsls	r4, r4, #24
 2774 0012 0FD5     		bpl	.L238
3281:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (gstate == HAL_UART_STATE_BUSY_TX))
 2775              		.loc 1 3281 62 discriminator 1 view .LVU902
 2776 0014 212A     		cmp	r2, #33
 2777 0016 0DD1     		bne	.L238
3284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndTxTransfer(huart);
 2778              		.loc 1 3284 5 is_stmt 1 view .LVU903
3284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndTxTransfer(huart);
 2779              		.loc 1 3284 24 is_stmt 0 view .LVU904
 2780 0018 0022     		movs	r2, #0
 2781              	.LVL174:
3284:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndTxTransfer(huart);
 2782              		.loc 1 3284 24 view .LVU905
 2783 001a A1F85620 		strh	r2, [r1, #86]	@ movhi
3285:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2784              		.loc 1 3285 5 is_stmt 1 view .LVU906
 2785              	.LVL175:
 2786              	.LBB36:
 2787              	.LBI36:
3133:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 2788              		.loc 1 3133 13 view .LVU907
 2789              	.LBB37:
3136:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_TXFTIE));
 2790              		.loc 1 3136 3 view .LVU908
 2791 001e 1A68     		ldr	r2, [r3]
 2792 0020 22F0C002 		bic	r2, r2, #192
 2793 0024 1A60     		str	r2, [r3]
3137:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2794              		.loc 1 3137 3 view .LVU909
 2795 0026 9A68     		ldr	r2, [r3, #8]
 2796 0028 22F40002 		bic	r2, r2, #8388608
 2797 002c 9A60     		str	r2, [r3, #8]
3140:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 2798              		.loc 1 3140 3 view .LVU910
3140:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 2799              		.loc 1 3140 17 is_stmt 0 view .LVU911
 2800 002e 2022     		movs	r2, #32
 2801 0030 C1F88020 		str	r2, [r1, #128]
 2802              	.LVL176:
 2803              	.L238:
3140:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 2804              		.loc 1 3140 17 view .LVU912
 2805              	.LBE37:
 2806              	.LBE36:
3289:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 2807              		.loc 1 3289 3 is_stmt 1 view .LVU913
3289:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 2808              		.loc 1 3289 8 is_stmt 0 view .LVU914
 2809 0034 9B68     		ldr	r3, [r3, #8]
3289:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 2810              		.loc 1 3289 6 view .LVU915
 2811 0036 5B06     		lsls	r3, r3, #25
 2812 0038 07D5     		bpl	.L239
3289:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       (rxstate == HAL_UART_STATE_BUSY_RX))
 2813              		.loc 1 3289 62 discriminator 1 view .LVU916
 2814 003a 2228     		cmp	r0, #34
 2815 003c 05D1     		bne	.L239
3292:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndRxTransfer(huart);
 2816              		.loc 1 3292 5 is_stmt 1 view .LVU917
3292:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     UART_EndRxTransfer(huart);
 2817              		.loc 1 3292 24 is_stmt 0 view .LVU918
 2818 003e 0023     		movs	r3, #0
 2819 0040 A1F85E30 		strh	r3, [r1, #94]	@ movhi
3293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2820              		.loc 1 3293 5 is_stmt 1 view .LVU919
 2821 0044 0846     		mov	r0, r1
 2822              	.LVL177:
3293:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 2823              		.loc 1 3293 5 is_stmt 0 view .LVU920
 2824 0046 FFF7FEFF 		bl	UART_EndRxTransfer
 2825              	.LVL178:
 2826              	.L239:
3296:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2827              		.loc 1 3296 3 is_stmt 1 view .LVU921
3296:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2828              		.loc 1 3296 20 is_stmt 0 view .LVU922
 2829 004a D1F88830 		ldr	r3, [r1, #136]
 2830 004e 43F01003 		orr	r3, r3, #16
 2831 0052 C1F88830 		str	r3, [r1, #136]
3303:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 2832              		.loc 1 3303 3 is_stmt 1 view .LVU923
 2833 0056 0846     		mov	r0, r1
 2834 0058 FFF7FEFF 		bl	HAL_UART_ErrorCallback
 2835              	.LVL179:
3305:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2836              		.loc 1 3305 1 is_stmt 0 view .LVU924
 2837 005c 10BD     		pop	{r4, pc}
 2838              		.cfi_endproc
 2839              	.LFE374:
 2841              		.section	.text.HAL_UART_IRQHandler,"ax",%progbits
 2842              		.align	1
 2843              		.global	HAL_UART_IRQHandler
 2844              		.syntax unified
 2845              		.thumb
 2846              		.thumb_func
 2847              		.fpu fpv4-sp-d16
 2849              	HAL_UART_IRQHandler:
 2850              	.LVL180:
 2851              	.LFB347:
2178:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t isrflags   = READ_REG(huart->Instance->ISR);
 2852              		.loc 1 2178 1 is_stmt 1 view -0
 2853              		.cfi_startproc
 2854              		@ args = 0, pretend = 0, frame = 0
 2855              		@ frame_needed = 0, uses_anonymous_args = 0
2179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t cr1its     = READ_REG(huart->Instance->CR1);
 2856              		.loc 1 2179 3 view .LVU926
2178:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t isrflags   = READ_REG(huart->Instance->ISR);
 2857              		.loc 1 2178 1 is_stmt 0 view .LVU927
 2858 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2859              		.cfi_def_cfa_offset 24
 2860              		.cfi_offset 4, -24
 2861              		.cfi_offset 5, -20
 2862              		.cfi_offset 6, -16
 2863              		.cfi_offset 7, -12
 2864              		.cfi_offset 8, -8
 2865              		.cfi_offset 14, -4
2179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t cr1its     = READ_REG(huart->Instance->CR1);
 2866              		.loc 1 2179 25 view .LVU928
 2867 0004 0568     		ldr	r5, [r0]
2179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t cr1its     = READ_REG(huart->Instance->CR1);
 2868              		.loc 1 2179 12 view .LVU929
 2869 0006 EB69     		ldr	r3, [r5, #28]
 2870              	.LVL181:
2180:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t cr3its     = READ_REG(huart->Instance->CR3);
 2871              		.loc 1 2180 3 is_stmt 1 view .LVU930
2180:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t cr3its     = READ_REG(huart->Instance->CR3);
 2872              		.loc 1 2180 12 is_stmt 0 view .LVU931
 2873 0008 2A68     		ldr	r2, [r5]
 2874              	.LVL182:
2181:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2875              		.loc 1 2181 3 is_stmt 1 view .LVU932
2181:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2876              		.loc 1 2181 12 is_stmt 0 view .LVU933
 2877 000a A968     		ldr	r1, [r5, #8]
 2878              	.LVL183:
2183:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t errorcode;
 2879              		.loc 1 2183 3 is_stmt 1 view .LVU934
2184:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2880              		.loc 1 2184 3 view .LVU935
2187:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (errorflags == 0U)
 2881              		.loc 1 2187 3 view .LVU936
2188:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2882              		.loc 1 2188 3 view .LVU937
2188:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2883              		.loc 1 2188 6 is_stmt 0 view .LVU938
 2884 000c 1F07     		lsls	r7, r3, #28
2178:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t isrflags   = READ_REG(huart->Instance->ISR);
 2885              		.loc 1 2178 1 view .LVU939
 2886 000e 0446     		mov	r4, r0
2188:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2887              		.loc 1 2188 6 view .LVU940
 2888 0010 0DD1     		bne	.L247
2191:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U)
 2889              		.loc 1 2191 5 is_stmt 1 view .LVU941
2191:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U)
 2890              		.loc 1 2191 8 is_stmt 0 view .LVU942
 2891 0012 9E06     		lsls	r6, r3, #26
 2892 0014 7CD5     		bpl	.L248
2192:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             || ((cr3its & USART_CR3_RXFTIE) != 0U)))
 2893              		.loc 1 2192 22 view .LVU943
 2894 0016 02F02006 		and	r6, r2, #32
2193:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2895              		.loc 1 2193 25 view .LVU944
 2896 001a 01F08057 		and	r7, r1, #268435456
2193:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2897              		.loc 1 2193 13 view .LVU945
 2898 001e 3E43     		orrs	r6, r6, r7
 2899 0020 76D0     		beq	.L248
2195:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2900              		.loc 1 2195 7 is_stmt 1 view .LVU946
2195:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2901              		.loc 1 2195 16 is_stmt 0 view .LVU947
 2902 0022 C36E     		ldr	r3, [r0, #108]
 2903              	.LVL184:
2195:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 2904              		.loc 1 2195 10 view .LVU948
 2905 0024 002B     		cmp	r3, #0
 2906 0026 6CD0     		beq	.L246
 2907              	.LVL185:
 2908              	.L347:
2391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2909              		.loc 1 2391 1 view .LVU949
 2910 0028 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2911              		.cfi_remember_state
 2912              		.cfi_restore 14
 2913              		.cfi_restore 8
 2914              		.cfi_restore 7
 2915              		.cfi_restore 6
 2916              		.cfi_restore 5
 2917              		.cfi_restore 4
 2918              		.cfi_def_cfa_offset 0
 2919              	.LVL186:
2283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             }
 2920              		.loc 1 2283 15 view .LVU950
 2921 002c 1847     		bx	r3	@ indirect register sibling call
 2922              	.LVL187:
 2923              	.L247:
 2924              		.cfi_restore_state
2204:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       && ((((cr3its & (USART_CR3_RXFTIE | USART_CR3_EIE)) != 0U)
 2925              		.loc 1 2204 3 is_stmt 1 view .LVU951
2205:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            || ((cr1its & (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE)) != 0U))))
 2926              		.loc 1 2205 21 is_stmt 0 view .LVU952
 2927 002e 564E     		ldr	r6, .L348
2206:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2928              		.loc 1 2206 24 view .LVU953
 2929 0030 02F49070 		and	r0, r2, #288
 2930              	.LVL188:
2205:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****            || ((cr1its & (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE)) != 0U))))
 2931              		.loc 1 2205 21 view .LVU954
 2932 0034 0E40     		ands	r6, r6, r1
2206:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 2933              		.loc 1 2206 12 view .LVU955
 2934 0036 3043     		orrs	r0, r0, r6
 2935 0038 6AD0     		beq	.L248
2209:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2936              		.loc 1 2209 5 is_stmt 1 view .LVU956
2209:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2937              		.loc 1 2209 8 is_stmt 0 view .LVU957
 2938 003a DF07     		lsls	r7, r3, #31
 2939 003c 09D5     		bpl	.L251
2209:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2940              		.loc 1 2209 43 discriminator 1 view .LVU958
 2941 003e D005     		lsls	r0, r2, #23
 2942 0040 07D5     		bpl	.L251
2211:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2943              		.loc 1 2211 7 is_stmt 1 view .LVU959
 2944 0042 0120     		movs	r0, #1
 2945 0044 2862     		str	r0, [r5, #32]
2213:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2946              		.loc 1 2213 7 view .LVU960
2213:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2947              		.loc 1 2213 24 is_stmt 0 view .LVU961
 2948 0046 D4F88800 		ldr	r0, [r4, #136]
 2949 004a 40F00100 		orr	r0, r0, #1
 2950 004e C4F88800 		str	r0, [r4, #136]
 2951              	.L251:
2217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2952              		.loc 1 2217 5 is_stmt 1 view .LVU962
2217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2953              		.loc 1 2217 8 is_stmt 0 view .LVU963
 2954 0052 9F07     		lsls	r7, r3, #30
 2955 0054 09D5     		bpl	.L252
2217:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2956              		.loc 1 2217 43 discriminator 1 view .LVU964
 2957 0056 C807     		lsls	r0, r1, #31
 2958 0058 07D5     		bpl	.L252
2219:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2959              		.loc 1 2219 7 is_stmt 1 view .LVU965
 2960 005a 0220     		movs	r0, #2
 2961 005c 2862     		str	r0, [r5, #32]
2221:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2962              		.loc 1 2221 7 view .LVU966
2221:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2963              		.loc 1 2221 24 is_stmt 0 view .LVU967
 2964 005e D4F88800 		ldr	r0, [r4, #136]
 2965 0062 40F00400 		orr	r0, r0, #4
 2966 0066 C4F88800 		str	r0, [r4, #136]
 2967              	.L252:
2225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2968              		.loc 1 2225 5 is_stmt 1 view .LVU968
2225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2969              		.loc 1 2225 8 is_stmt 0 view .LVU969
 2970 006a 5F07     		lsls	r7, r3, #29
 2971 006c 09D5     		bpl	.L253
2225:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 2972              		.loc 1 2225 43 discriminator 1 view .LVU970
 2973 006e C807     		lsls	r0, r1, #31
 2974 0070 07D5     		bpl	.L253
2227:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2975              		.loc 1 2227 7 is_stmt 1 view .LVU971
 2976 0072 0420     		movs	r0, #4
 2977 0074 2862     		str	r0, [r5, #32]
2229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2978              		.loc 1 2229 7 view .LVU972
2229:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2979              		.loc 1 2229 24 is_stmt 0 view .LVU973
 2980 0076 D4F88800 		ldr	r0, [r4, #136]
 2981 007a 40F00200 		orr	r0, r0, #2
 2982 007e C4F88800 		str	r0, [r4, #136]
 2983              	.L253:
2233:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U) ||
 2984              		.loc 1 2233 5 is_stmt 1 view .LVU974
2233:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U) ||
 2985              		.loc 1 2233 8 is_stmt 0 view .LVU975
 2986 0082 1F07     		lsls	r7, r3, #28
 2987 0084 0BD5     		bpl	.L254
2234:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             ((cr3its & (USART_CR3_RXFTIE | USART_CR3_EIE)) != 0U)))
 2988              		.loc 1 2234 22 view .LVU976
 2989 0086 02F02000 		and	r0, r2, #32
2234:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             ((cr3its & (USART_CR3_RXFTIE | USART_CR3_EIE)) != 0U)))
 2990              		.loc 1 2234 9 view .LVU977
 2991 008a 3043     		orrs	r0, r0, r6
 2992 008c 07D0     		beq	.L254
2237:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 2993              		.loc 1 2237 7 is_stmt 1 view .LVU978
 2994 008e 0820     		movs	r0, #8
 2995 0090 2862     		str	r0, [r5, #32]
2239:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2996              		.loc 1 2239 7 view .LVU979
2239:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 2997              		.loc 1 2239 24 is_stmt 0 view .LVU980
 2998 0092 D4F88800 		ldr	r0, [r4, #136]
 2999 0096 40F00800 		orr	r0, r0, #8
 3000 009a C4F88800 		str	r0, [r4, #136]
 3001              	.L254:
2243:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3002              		.loc 1 2243 5 is_stmt 1 view .LVU981
2243:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3003              		.loc 1 2243 14 is_stmt 0 view .LVU982
 3004 009e D4F88800 		ldr	r0, [r4, #136]
2243:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3005              		.loc 1 2243 8 view .LVU983
 3006 00a2 70B3     		cbz	r0, .L246
2246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U)
 3007              		.loc 1 2246 7 is_stmt 1 view .LVU984
2246:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           && (((cr1its & USART_CR1_RXNEIE_RXFNEIE) != 0U)
 3008              		.loc 1 2246 10 is_stmt 0 view .LVU985
 3009 00a4 9806     		lsls	r0, r3, #26
 3010 00a6 0AD5     		bpl	.L256
2247:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****               || ((cr3its & USART_CR3_RXFTIE) != 0U)))
 3011              		.loc 1 2247 24 view .LVU986
 3012 00a8 02F02002 		and	r2, r2, #32
 3013              	.LVL189:
2248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3014              		.loc 1 2248 27 view .LVU987
 3015 00ac 01F08051 		and	r1, r1, #268435456
 3016              	.LVL190:
2248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3017              		.loc 1 2248 15 view .LVU988
 3018 00b0 52EA0103 		orrs	r3, r2, r1
 3019              	.LVL191:
2248:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3020              		.loc 1 2248 15 view .LVU989
 3021 00b4 03D0     		beq	.L256
2250:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 3022              		.loc 1 2250 9 is_stmt 1 view .LVU990
2250:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 3023              		.loc 1 2250 18 is_stmt 0 view .LVU991
 3024 00b6 E36E     		ldr	r3, [r4, #108]
2250:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 3025              		.loc 1 2250 12 view .LVU992
 3026 00b8 0BB1     		cbz	r3, .L256
2252:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 3027              		.loc 1 2252 11 is_stmt 1 view .LVU993
 3028 00ba 2046     		mov	r0, r4
 3029 00bc 9847     		blx	r3
 3030              	.LVL192:
 3031              	.L256:
2258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) ||
 3032              		.loc 1 2258 7 view .LVU994
2259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ((errorcode & HAL_UART_ERROR_ORE) != 0U))
 3033              		.loc 1 2259 12 is_stmt 0 view .LVU995
 3034 00be 2368     		ldr	r3, [r4]
2258:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       if ((HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) ||
 3035              		.loc 1 2258 17 view .LVU996
 3036 00c0 D4F88850 		ldr	r5, [r4, #136]
 3037              	.LVL193:
2259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ((errorcode & HAL_UART_ERROR_ORE) != 0U))
 3038              		.loc 1 2259 7 is_stmt 1 view .LVU997
2259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ((errorcode & HAL_UART_ERROR_ORE) != 0U))
 3039              		.loc 1 2259 12 is_stmt 0 view .LVU998
 3040 00c4 9B68     		ldr	r3, [r3, #8]
2260:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3041              		.loc 1 2260 23 view .LVU999
 3042 00c6 05F00805 		and	r5, r5, #8
 3043              	.LVL194:
2259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ((errorcode & HAL_UART_ERROR_ORE) != 0U))
 3044              		.loc 1 2259 12 view .LVU1000
 3045 00ca 03F04003 		and	r3, r3, #64
2259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ((errorcode & HAL_UART_ERROR_ORE) != 0U))
 3046              		.loc 1 2259 66 view .LVU1001
 3047 00ce 1D43     		orrs	r5, r3, r5
2265:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3048              		.loc 1 2265 9 view .LVU1002
 3049 00d0 2046     		mov	r0, r4
2259:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           ((errorcode & HAL_UART_ERROR_ORE) != 0U))
 3050              		.loc 1 2259 66 view .LVU1003
 3051 00d2 18D0     		beq	.L257
 3052              	.LVL195:
2265:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3053              		.loc 1 2265 9 is_stmt 1 view .LVU1004
 3054 00d4 FFF7FEFF 		bl	UART_EndRxTransfer
 3055              	.LVL196:
2268:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 3056              		.loc 1 2268 9 view .LVU1005
2268:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 3057              		.loc 1 2268 13 is_stmt 0 view .LVU1006
 3058 00d8 2368     		ldr	r3, [r4]
 3059 00da 9A68     		ldr	r2, [r3, #8]
2268:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 3060              		.loc 1 2268 12 view .LVU1007
 3061 00dc 5206     		lsls	r2, r2, #25
 3062 00de 0DD5     		bpl	.L258
2270:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3063              		.loc 1 2270 11 is_stmt 1 view .LVU1008
 3064 00e0 9A68     		ldr	r2, [r3, #8]
2273:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           {
 3065              		.loc 1 2273 20 is_stmt 0 view .LVU1009
 3066 00e2 A06F     		ldr	r0, [r4, #120]
 3067              	.LVL197:
2270:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3068              		.loc 1 2270 11 view .LVU1010
 3069 00e4 22F04002 		bic	r2, r2, #64
 3070 00e8 9A60     		str	r2, [r3, #8]
2273:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           {
 3071              		.loc 1 2273 11 is_stmt 1 view .LVU1011
2273:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           {
 3072              		.loc 1 2273 14 is_stmt 0 view .LVU1012
 3073 00ea 38B1     		cbz	r0, .L258
2277:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3074              		.loc 1 2277 13 is_stmt 1 view .LVU1013
2277:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3075              		.loc 1 2277 46 is_stmt 0 view .LVU1014
 3076 00ec 274B     		ldr	r3, .L348+4
 3077 00ee 8363     		str	r3, [r0, #56]
2280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             {
 3078              		.loc 1 2280 13 is_stmt 1 view .LVU1015
2280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             {
 3079              		.loc 1 2280 17 is_stmt 0 view .LVU1016
 3080 00f0 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 3081              	.LVL198:
2280:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             {
 3082              		.loc 1 2280 16 view .LVU1017
 3083 00f4 28B1     		cbz	r0, .L246
2283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             }
 3084              		.loc 1 2283 15 is_stmt 1 view .LVU1018
2283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             }
 3085              		.loc 1 2283 20 is_stmt 0 view .LVU1019
 3086 00f6 A06F     		ldr	r0, [r4, #120]
2283:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             }
 3087              		.loc 1 2283 15 view .LVU1020
 3088 00f8 836B     		ldr	r3, [r0, #56]
 3089 00fa 95E7     		b	.L347
 3090              	.L258:
2294:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3091              		.loc 1 2294 13 is_stmt 1 view .LVU1021
 3092 00fc 2046     		mov	r0, r4
 3093 00fe FFF7FEFF 		bl	HAL_UART_ErrorCallback
 3094              	.LVL199:
 3095              	.L246:
2391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3096              		.loc 1 2391 1 is_stmt 0 view .LVU1022
 3097 0102 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3098              	.LVL200:
 3099              	.L257:
2320:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3100              		.loc 1 2320 9 is_stmt 1 view .LVU1023
 3101 0106 FFF7FEFF 		bl	HAL_UART_ErrorCallback
 3102              	.LVL201:
2322:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3103              		.loc 1 2322 9 view .LVU1024
2322:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3104              		.loc 1 2322 26 is_stmt 0 view .LVU1025
 3105 010a C4F88850 		str	r5, [r4, #136]
 3106 010e F8E7     		b	.L246
 3107              	.LVL202:
 3108              	.L248:
2330:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3109              		.loc 1 2330 3 is_stmt 1 view .LVU1026
2330:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3110              		.loc 1 2330 6 is_stmt 0 view .LVU1027
 3111 0110 DF02     		lsls	r7, r3, #11
 3112 0112 09D5     		bpl	.L259
2330:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3113              		.loc 1 2330 42 discriminator 1 view .LVU1028
 3114 0114 4E02     		lsls	r6, r1, #9
 3115 0116 07D5     		bpl	.L259
2332:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3116              		.loc 1 2332 5 is_stmt 1 view .LVU1029
 3117 0118 4FF48013 		mov	r3, #1048576
 3118              	.LVL203:
2332:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3119              		.loc 1 2332 5 is_stmt 0 view .LVU1030
 3120 011c 2B62     		str	r3, [r5, #32]
2342:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3121              		.loc 1 2342 5 is_stmt 1 view .LVU1031
 3122 011e 2046     		mov	r0, r4
2391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3123              		.loc 1 2391 1 is_stmt 0 view .LVU1032
 3124 0120 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 3125              		.cfi_remember_state
 3126              		.cfi_restore 14
 3127              		.cfi_restore 8
 3128              		.cfi_restore 7
 3129              		.cfi_restore 6
 3130              		.cfi_restore 5
 3131              		.cfi_restore 4
 3132              		.cfi_def_cfa_offset 0
 3133              	.LVL204:
2342:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3134              		.loc 1 2342 5 view .LVU1033
 3135 0124 FFF7FEBF 		b	HAL_UARTEx_WakeupCallback
 3136              	.LVL205:
 3137              	.L259:
 3138              		.cfi_restore_state
2348:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       && (((cr1its & USART_CR1_TXEIE_TXFNFIE) != 0U)
 3139              		.loc 1 2348 3 is_stmt 1 view .LVU1034
2348:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       && (((cr1its & USART_CR1_TXEIE_TXFNFIE) != 0U)
 3140              		.loc 1 2348 6 is_stmt 0 view .LVU1035
 3141 0128 1806     		lsls	r0, r3, #24
 3142 012a 0AD5     		bpl	.L260
2349:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           || ((cr3its & USART_CR3_TXFTIE) != 0U)))
 3143              		.loc 1 2349 20 view .LVU1036
 3144 012c 02F08000 		and	r0, r2, #128
2350:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3145              		.loc 1 2350 23 view .LVU1037
 3146 0130 01F40001 		and	r1, r1, #8388608
 3147              	.LVL206:
2350:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3148              		.loc 1 2350 11 view .LVU1038
 3149 0134 0143     		orrs	r1, r0, r1
 3150 0136 04D0     		beq	.L260
2352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3151              		.loc 1 2352 5 is_stmt 1 view .LVU1039
2352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3152              		.loc 1 2352 14 is_stmt 0 view .LVU1040
 3153 0138 236F     		ldr	r3, [r4, #112]
 3154              	.LVL207:
2352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3155              		.loc 1 2352 8 view .LVU1041
 3156 013a 002B     		cmp	r3, #0
 3157 013c E1D0     		beq	.L246
2354:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3158              		.loc 1 2354 7 is_stmt 1 view .LVU1042
 3159 013e 2046     		mov	r0, r4
 3160 0140 72E7     		b	.L347
 3161              	.LVL208:
 3162              	.L260:
2360:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3163              		.loc 1 2360 3 view .LVU1043
2360:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3164              		.loc 1 2360 6 is_stmt 0 view .LVU1044
 3165 0142 5F06     		lsls	r7, r3, #25
 3166 0144 0ED5     		bpl	.L261
2360:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3167              		.loc 1 2360 41 discriminator 1 view .LVU1045
 3168 0146 5606     		lsls	r6, r2, #25
 3169 0148 0CD5     		bpl	.L261
2362:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     return;
 3170              		.loc 1 2362 5 is_stmt 1 view .LVU1046
 3171              	.LVL209:
 3172              	.LBB40:
 3173              	.LBI40:
3648:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** {
 3174              		.loc 1 3648 13 view .LVU1047
 3175              	.LBB41:
3651:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3176              		.loc 1 3651 3 view .LVU1048
 3177 014a 2B68     		ldr	r3, [r5]
 3178              	.LVL210:
3651:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3179              		.loc 1 3651 3 is_stmt 0 view .LVU1049
 3180 014c 23F04003 		bic	r3, r3, #64
 3181 0150 2B60     		str	r3, [r5]
3654:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3182              		.loc 1 3654 3 is_stmt 1 view .LVU1050
3654:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3183              		.loc 1 3654 17 is_stmt 0 view .LVU1051
 3184 0152 2023     		movs	r3, #32
 3185 0154 C4F88030 		str	r3, [r4, #128]
3657:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3186              		.loc 1 3657 3 is_stmt 1 view .LVU1052
3657:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3187              		.loc 1 3657 16 is_stmt 0 view .LVU1053
 3188 0158 0023     		movs	r3, #0
 3189 015a 2367     		str	r3, [r4, #112]
3664:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3190              		.loc 1 3664 3 is_stmt 1 view .LVU1054
 3191 015c 2046     		mov	r0, r4
 3192 015e FFF7FEFF 		bl	HAL_UART_TxCpltCallback
 3193              	.LVL211:
3664:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3194              		.loc 1 3664 3 is_stmt 0 view .LVU1055
 3195 0162 CEE7     		b	.L246
 3196              	.LVL212:
 3197              	.L261:
3664:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3198              		.loc 1 3664 3 view .LVU1056
 3199              	.LBE41:
 3200              	.LBE40:
2367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3201              		.loc 1 2367 3 is_stmt 1 view .LVU1057
2367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3202              		.loc 1 2367 6 is_stmt 0 view .LVU1058
 3203 0164 1802     		lsls	r0, r3, #8
 3204 0166 06D5     		bpl	.L262
2367:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3205              		.loc 1 2367 43 discriminator 1 view .LVU1059
 3206 0168 5100     		lsls	r1, r2, #1
 3207 016a 04D5     		bpl	.L262
2374:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3208              		.loc 1 2374 5 is_stmt 1 view .LVU1060
 3209 016c 2046     		mov	r0, r4
2391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3210              		.loc 1 2391 1 is_stmt 0 view .LVU1061
 3211 016e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 3212              		.cfi_remember_state
 3213              		.cfi_restore 14
 3214              		.cfi_restore 8
 3215              		.cfi_restore 7
 3216              		.cfi_restore 6
 3217              		.cfi_restore 5
 3218              		.cfi_restore 4
 3219              		.cfi_def_cfa_offset 0
 3220              	.LVL213:
2374:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3221              		.loc 1 2374 5 view .LVU1062
 3222 0172 FFF7FEBF 		b	HAL_UARTEx_TxFifoEmptyCallback
 3223              	.LVL214:
 3224              	.L262:
 3225              		.cfi_restore_state
2380:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3226              		.loc 1 2380 3 is_stmt 1 view .LVU1063
2380:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3227              		.loc 1 2380 6 is_stmt 0 view .LVU1064
 3228 0176 DB01     		lsls	r3, r3, #7
 3229              	.LVL215:
2380:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3230              		.loc 1 2380 6 view .LVU1065
 3231 0178 C3D5     		bpl	.L246
2380:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3232              		.loc 1 2380 43 discriminator 1 view .LVU1066
 3233 017a 002A     		cmp	r2, #0
 3234 017c C1DA     		bge	.L246
2387:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3235              		.loc 1 2387 5 is_stmt 1 view .LVU1067
 3236 017e 2046     		mov	r0, r4
2391:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3237              		.loc 1 2391 1 is_stmt 0 view .LVU1068
 3238 0180 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 3239              		.cfi_restore 14
 3240              		.cfi_restore 8
 3241              		.cfi_restore 7
 3242              		.cfi_restore 6
 3243              		.cfi_restore 5
 3244              		.cfi_restore 4
 3245              		.cfi_def_cfa_offset 0
 3246              	.LVL216:
2387:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3247              		.loc 1 2387 5 view .LVU1069
 3248 0184 FFF7FEBF 		b	HAL_UARTEx_RxFifoFullCallback
 3249              	.LVL217:
 3250              	.L349:
2387:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3251              		.loc 1 2387 5 view .LVU1070
 3252              		.align	2
 3253              	.L348:
 3254 0188 01000010 		.word	268435457
 3255 018c 00000000 		.word	UART_DMAAbortOnError
 3256              		.cfi_endproc
 3257              	.LFE347:
 3259              		.section	.text.UART_DMAAbortOnError,"ax",%progbits
 3260              		.align	1
 3261              		.syntax unified
 3262              		.thumb
 3263              		.thumb_func
 3264              		.fpu fpv4-sp-d16
 3266              	UART_DMAAbortOnError:
 3267              	.LVL218:
 3268              	.LFB375:
3314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3269              		.loc 1 3314 1 is_stmt 1 view -0
 3270              		.cfi_startproc
 3271              		@ args = 0, pretend = 0, frame = 0
 3272              		@ frame_needed = 0, uses_anonymous_args = 0
3315:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 3273              		.loc 1 3315 3 view .LVU1072
3314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3274              		.loc 1 3314 1 is_stmt 0 view .LVU1073
 3275 0000 08B5     		push	{r3, lr}
 3276              		.cfi_def_cfa_offset 8
 3277              		.cfi_offset 3, -8
 3278              		.cfi_offset 14, -4
3315:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 3279              		.loc 1 3315 23 view .LVU1074
 3280 0002 806A     		ldr	r0, [r0, #40]
 3281              	.LVL219:
3316:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
 3282              		.loc 1 3316 3 is_stmt 1 view .LVU1075
3316:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxXferCount = 0U;
 3283              		.loc 1 3316 22 is_stmt 0 view .LVU1076
 3284 0004 0023     		movs	r3, #0
 3285 0006 A0F85E30 		strh	r3, [r0, #94]	@ movhi
3317:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3286              		.loc 1 3317 3 is_stmt 1 view .LVU1077
3317:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3287              		.loc 1 3317 22 is_stmt 0 view .LVU1078
 3288 000a A0F85630 		strh	r3, [r0, #86]	@ movhi
3324:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3289              		.loc 1 3324 3 is_stmt 1 view .LVU1079
 3290 000e FFF7FEFF 		bl	HAL_UART_ErrorCallback
 3291              	.LVL220:
3326:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3292              		.loc 1 3326 1 is_stmt 0 view .LVU1080
 3293 0012 08BD     		pop	{r3, pc}
 3294              		.cfi_endproc
 3295              	.LFE375:
 3297              		.section	.text.HAL_UART_AbortCpltCallback,"ax",%progbits
 3298              		.align	1
 3299              		.weak	HAL_UART_AbortCpltCallback
 3300              		.syntax unified
 3301              		.thumb
 3302              		.thumb_func
 3303              		.fpu fpv4-sp-d16
 3305              	HAL_UART_AbortCpltCallback:
 3306              	.LFB410:
 3307              		.cfi_startproc
 3308              		@ args = 0, pretend = 0, frame = 0
 3309              		@ frame_needed = 0, uses_anonymous_args = 0
 3310              		@ link register save eliminated.
 3311 0000 7047     		bx	lr
 3312              		.cfi_endproc
 3313              	.LFE410:
 3315              		.section	.text.HAL_UART_Abort_IT,"ax",%progbits
 3316              		.align	1
 3317              		.global	HAL_UART_Abort_IT
 3318              		.syntax unified
 3319              		.thumb
 3320              		.thumb_func
 3321              		.fpu fpv4-sp-d16
 3323              	HAL_UART_Abort_IT:
 3324              	.LVL221:
 3325              	.LFB344:
1860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t abortcplt = 1U;
 3326              		.loc 1 1860 1 is_stmt 1 view -0
 3327              		.cfi_startproc
 3328              		@ args = 0, pretend = 0, frame = 0
 3329              		@ frame_needed = 0, uses_anonymous_args = 0
1861:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3330              		.loc 1 1861 3 view .LVU1082
1864:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE | USART_CR3_TXFTIE));
 3331              		.loc 1 1864 3 view .LVU1083
 3332 0000 0368     		ldr	r3, [r0]
 3333 0002 1A68     		ldr	r2, [r3]
 3334 0004 22F4F072 		bic	r2, r2, #480
1860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t abortcplt = 1U;
 3335              		.loc 1 1860 1 is_stmt 0 view .LVU1084
 3336 0008 10B5     		push	{r4, lr}
 3337              		.cfi_def_cfa_offset 8
 3338              		.cfi_offset 4, -8
 3339              		.cfi_offset 14, -4
1864:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE | USART_CR3_TXFTIE));
 3340              		.loc 1 1864 3 view .LVU1085
 3341 000a 1A60     		str	r2, [r3]
1865:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3342              		.loc 1 1865 3 is_stmt 1 view .LVU1086
 3343 000c 9A68     		ldr	r2, [r3, #8]
1860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t abortcplt = 1U;
 3344              		.loc 1 1860 1 is_stmt 0 view .LVU1087
 3345 000e 0446     		mov	r4, r0
1865:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3346              		.loc 1 1865 3 view .LVU1088
 3347 0010 22F08452 		bic	r2, r2, #276824064
1870:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3348              		.loc 1 1870 12 view .LVU1089
 3349 0014 406F     		ldr	r0, [r0, #116]
 3350              	.LVL222:
1865:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3351              		.loc 1 1865 3 view .LVU1090
 3352 0016 22F00102 		bic	r2, r2, #1
 3353 001a 9A60     		str	r2, [r3, #8]
1870:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3354              		.loc 1 1870 3 is_stmt 1 view .LVU1091
1870:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3355              		.loc 1 1870 6 is_stmt 0 view .LVU1092
 3356 001c 28B1     		cbz	r0, .L353
1874:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3357              		.loc 1 1874 5 is_stmt 1 view .LVU1093
1874:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3358              		.loc 1 1874 9 is_stmt 0 view .LVU1094
 3359 001e 9A68     		ldr	r2, [r3, #8]
1874:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3360              		.loc 1 1874 8 view .LVU1095
 3361 0020 12F08002 		ands	r2, r2, #128
1876:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3362              		.loc 1 1876 7 is_stmt 1 view .LVU1096
1876:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3363              		.loc 1 1876 40 is_stmt 0 view .LVU1097
 3364 0024 18BF     		it	ne
 3365 0026 2A4A     		ldrne	r2, .L383
1880:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3366              		.loc 1 1880 7 is_stmt 1 view .LVU1098
1880:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3367              		.loc 1 1880 40 is_stmt 0 view .LVU1099
 3368 0028 8263     		str	r2, [r0, #56]
 3369              	.L353:
1884:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3370              		.loc 1 1884 3 is_stmt 1 view .LVU1100
1884:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3371              		.loc 1 1884 12 is_stmt 0 view .LVU1101
 3372 002a A16F     		ldr	r1, [r4, #120]
1884:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3373              		.loc 1 1884 6 view .LVU1102
 3374 002c 29B1     		cbz	r1, .L355
1888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3375              		.loc 1 1888 5 is_stmt 1 view .LVU1103
1888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3376              		.loc 1 1888 9 is_stmt 0 view .LVU1104
 3377 002e 9A68     		ldr	r2, [r3, #8]
1888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3378              		.loc 1 1888 8 view .LVU1105
 3379 0030 12F04002 		ands	r2, r2, #64
1890:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3380              		.loc 1 1890 7 is_stmt 1 view .LVU1106
1890:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3381              		.loc 1 1890 40 is_stmt 0 view .LVU1107
 3382 0034 18BF     		it	ne
 3383 0036 274A     		ldrne	r2, .L383+4
1894:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3384              		.loc 1 1894 7 is_stmt 1 view .LVU1108
1894:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3385              		.loc 1 1894 40 is_stmt 0 view .LVU1109
 3386 0038 8A63     		str	r2, [r1, #56]
 3387              	.L355:
1899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3388              		.loc 1 1899 3 is_stmt 1 view .LVU1110
1899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3389              		.loc 1 1899 7 is_stmt 0 view .LVU1111
 3390 003a 9A68     		ldr	r2, [r3, #8]
1899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3391              		.loc 1 1899 6 view .LVU1112
 3392 003c 1206     		lsls	r2, r2, #24
 3393 003e 33D4     		bmi	.L357
 3394              	.L382:
1861:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3395              		.loc 1 1861 12 view .LVU1113
 3396 0040 0123     		movs	r3, #1
 3397              	.L358:
 3398              	.LVL223:
1923:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3399              		.loc 1 1923 3 is_stmt 1 view .LVU1114
1923:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3400              		.loc 1 1923 7 is_stmt 0 view .LVU1115
 3401 0042 2268     		ldr	r2, [r4]
 3402 0044 9168     		ldr	r1, [r2, #8]
1923:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3403              		.loc 1 1923 6 view .LVU1116
 3404 0046 4906     		lsls	r1, r1, #25
 3405 0048 3DD5     		bpl	.L360
1925:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3406              		.loc 1 1925 5 is_stmt 1 view .LVU1117
 3407 004a 9168     		ldr	r1, [r2, #8]
1928:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3408              		.loc 1 1928 14 is_stmt 0 view .LVU1118
 3409 004c A06F     		ldr	r0, [r4, #120]
1925:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3410              		.loc 1 1925 5 view .LVU1119
 3411 004e 21F04001 		bic	r1, r1, #64
 3412 0052 9160     		str	r1, [r2, #8]
1928:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3413              		.loc 1 1928 5 is_stmt 1 view .LVU1120
1928:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3414              		.loc 1 1928 8 is_stmt 0 view .LVU1121
 3415 0054 0028     		cmp	r0, #0
 3416 0056 36D0     		beq	.L360
1934:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3417              		.loc 1 1934 7 is_stmt 1 view .LVU1122
1934:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3418              		.loc 1 1934 11 is_stmt 0 view .LVU1123
 3419 0058 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 3420              	.LVL224:
1934:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3421              		.loc 1 1934 10 view .LVU1124
 3422 005c 0028     		cmp	r0, #0
 3423 005e 34D0     		beq	.L362
1936:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         abortcplt = 1U;
 3424              		.loc 1 1936 9 is_stmt 1 view .LVU1125
1936:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         abortcplt = 1U;
 3425              		.loc 1 1936 42 is_stmt 0 view .LVU1126
 3426 0060 A36F     		ldr	r3, [r4, #120]
 3427 0062 0022     		movs	r2, #0
 3428 0064 9A63     		str	r2, [r3, #56]
1937:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3429              		.loc 1 1937 9 is_stmt 1 view .LVU1127
 3430              	.LVL225:
1947:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3431              		.loc 1 1947 3 view .LVU1128
 3432              	.L363:
1950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = 0U;
 3433              		.loc 1 1950 5 view .LVU1129
1950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = 0U;
 3434              		.loc 1 1950 24 is_stmt 0 view .LVU1130
 3435 0066 0023     		movs	r3, #0
 3436 0068 A4F85630 		strh	r3, [r4, #86]	@ movhi
1951:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3437              		.loc 1 1951 5 is_stmt 1 view .LVU1131
1955:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3438              		.loc 1 1955 18 is_stmt 0 view .LVU1132
 3439 006c C4E91B33 		strd	r3, r3, [r4, #108]
1951:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3440              		.loc 1 1951 24 view .LVU1133
 3441 0070 A4F85E30 		strh	r3, [r4, #94]	@ movhi
1954:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxISR = NULL;
 3442              		.loc 1 1954 5 is_stmt 1 view .LVU1134
1958:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3443              		.loc 1 1958 5 view .LVU1135
1958:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3444              		.loc 1 1958 22 is_stmt 0 view .LVU1136
 3445 0074 C4F88830 		str	r3, [r4, #136]
1961:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3446              		.loc 1 1961 5 is_stmt 1 view .LVU1137
 3447 0078 2368     		ldr	r3, [r4]
 3448 007a 0F22     		movs	r2, #15
 3449 007c 1A62     		str	r2, [r3, #32]
1964:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3450              		.loc 1 1964 5 view .LVU1138
1964:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3451              		.loc 1 1964 8 is_stmt 0 view .LVU1139
 3452 007e 626E     		ldr	r2, [r4, #100]
 3453 0080 B2F1005F 		cmp	r2, #536870912
1966:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3454              		.loc 1 1966 7 is_stmt 1 view .LVU1140
 3455 0084 02BF     		ittt	eq
 3456 0086 9A69     		ldreq	r2, [r3, #24]
 3457 0088 42F01002 		orreq	r2, r2, #16
 3458 008c 9A61     		streq	r2, [r3, #24]
1970:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3459              		.loc 1 1970 5 view .LVU1141
 3460 008e 9A69     		ldr	r2, [r3, #24]
 3461 0090 42F00802 		orr	r2, r2, #8
 3462 0094 9A61     		str	r2, [r3, #24]
1973:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
 3463              		.loc 1 1973 5 view .LVU1142
1973:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
 3464              		.loc 1 1973 20 is_stmt 0 view .LVU1143
 3465 0096 2023     		movs	r3, #32
 3466 0098 C4F88030 		str	r3, [r4, #128]
1974:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3467              		.loc 1 1974 5 is_stmt 1 view .LVU1144
1982:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3468              		.loc 1 1982 5 is_stmt 0 view .LVU1145
 3469 009c 2046     		mov	r0, r4
1974:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3470              		.loc 1 1974 20 view .LVU1146
 3471 009e C4F88430 		str	r3, [r4, #132]
1982:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3472              		.loc 1 1982 5 is_stmt 1 view .LVU1147
 3473 00a2 FFF7FEFF 		bl	HAL_UART_AbortCpltCallback
 3474              	.LVL226:
 3475 00a6 10E0     		b	.L362
 3476              	.LVL227:
 3477              	.L357:
1902:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3478              		.loc 1 1902 5 view .LVU1148
 3479 00a8 9A68     		ldr	r2, [r3, #8]
 3480 00aa 22F08002 		bic	r2, r2, #128
 3481 00ae 9A60     		str	r2, [r3, #8]
1905:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3482              		.loc 1 1905 5 view .LVU1149
1905:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3483              		.loc 1 1905 8 is_stmt 0 view .LVU1150
 3484 00b0 0028     		cmp	r0, #0
 3485 00b2 C5D0     		beq	.L382
1911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3486              		.loc 1 1911 7 is_stmt 1 view .LVU1151
1911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3487              		.loc 1 1911 11 is_stmt 0 view .LVU1152
 3488 00b4 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 3489              	.LVL228:
1911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3490              		.loc 1 1911 10 view .LVU1153
 3491 00b8 18B1     		cbz	r0, .L366
1913:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3492              		.loc 1 1913 9 is_stmt 1 view .LVU1154
1913:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3493              		.loc 1 1913 42 is_stmt 0 view .LVU1155
 3494 00ba 636F     		ldr	r3, [r4, #116]
 3495 00bc 0022     		movs	r2, #0
 3496 00be 9A63     		str	r2, [r3, #56]
 3497 00c0 BEE7     		b	.L382
 3498              	.L366:
1917:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3499              		.loc 1 1917 19 view .LVU1156
 3500 00c2 0346     		mov	r3, r0
 3501 00c4 BDE7     		b	.L358
 3502              	.LVL229:
 3503              	.L360:
1947:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3504              		.loc 1 1947 3 is_stmt 1 view .LVU1157
1947:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3505              		.loc 1 1947 6 is_stmt 0 view .LVU1158
 3506 00c6 002B     		cmp	r3, #0
 3507 00c8 CDD1     		bne	.L363
 3508              	.LVL230:
 3509              	.L362:
1986:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 3510              		.loc 1 1986 3 is_stmt 1 view .LVU1159
1987:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3511              		.loc 1 1987 1 is_stmt 0 view .LVU1160
 3512 00ca 0020     		movs	r0, #0
 3513 00cc 10BD     		pop	{r4, pc}
 3514              	.LVL231:
 3515              	.L384:
1987:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3516              		.loc 1 1987 1 view .LVU1161
 3517 00ce 00BF     		.align	2
 3518              	.L383:
 3519 00d0 00000000 		.word	UART_DMATxAbortCallback
 3520 00d4 00000000 		.word	UART_DMARxAbortCallback
 3521              		.cfi_endproc
 3522              	.LFE344:
 3524              		.section	.text.UART_DMARxAbortCallback,"ax",%progbits
 3525              		.align	1
 3526              		.syntax unified
 3527              		.thumb
 3528              		.thumb_func
 3529              		.fpu fpv4-sp-d16
 3531              	UART_DMARxAbortCallback:
 3532              	.LVL232:
 3533              	.LFB377:
3391:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3534              		.loc 1 3391 1 is_stmt 1 view -0
 3535              		.cfi_startproc
 3536              		@ args = 0, pretend = 0, frame = 0
 3537              		@ frame_needed = 0, uses_anonymous_args = 0
3392:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3538              		.loc 1 3392 3 view .LVU1163
3392:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3539              		.loc 1 3392 23 is_stmt 0 view .LVU1164
 3540 0000 806A     		ldr	r0, [r0, #40]
 3541              	.LVL233:
3394:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3542              		.loc 1 3394 3 is_stmt 1 view .LVU1165
3394:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3543              		.loc 1 3394 36 is_stmt 0 view .LVU1166
 3544 0002 826F     		ldr	r2, [r0, #120]
3391:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3545              		.loc 1 3391 1 view .LVU1167
 3546 0004 08B5     		push	{r3, lr}
 3547              		.cfi_def_cfa_offset 8
 3548              		.cfi_offset 3, -8
 3549              		.cfi_offset 14, -4
3394:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3550              		.loc 1 3394 36 view .LVU1168
 3551 0006 0023     		movs	r3, #0
 3552 0008 9363     		str	r3, [r2, #56]
3397:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3553              		.loc 1 3397 3 is_stmt 1 view .LVU1169
3397:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3554              		.loc 1 3397 12 is_stmt 0 view .LVU1170
 3555 000a 426F     		ldr	r2, [r0, #116]
3397:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3556              		.loc 1 3397 6 view .LVU1171
 3557 000c 0AB1     		cbz	r2, .L386
3399:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3558              		.loc 1 3399 5 is_stmt 1 view .LVU1172
3399:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3559              		.loc 1 3399 8 is_stmt 0 view .LVU1173
 3560 000e 926B     		ldr	r2, [r2, #56]
 3561 0010 9AB9     		cbnz	r2, .L385
 3562              	.L386:
3406:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 3563              		.loc 1 3406 3 is_stmt 1 view .LVU1174
3406:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 3564              		.loc 1 3406 22 is_stmt 0 view .LVU1175
 3565 0012 A0F85630 		strh	r3, [r0, #86]	@ movhi
3407:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3566              		.loc 1 3407 3 is_stmt 1 view .LVU1176
3407:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3567              		.loc 1 3407 22 is_stmt 0 view .LVU1177
 3568 0016 A0F85E30 		strh	r3, [r0, #94]	@ movhi
3410:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3569              		.loc 1 3410 3 is_stmt 1 view .LVU1178
3410:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3570              		.loc 1 3410 20 is_stmt 0 view .LVU1179
 3571 001a C0F88830 		str	r3, [r0, #136]
3413:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3572              		.loc 1 3413 3 is_stmt 1 view .LVU1180
 3573 001e 0368     		ldr	r3, [r0]
 3574 0020 0F22     		movs	r2, #15
 3575 0022 1A62     		str	r2, [r3, #32]
3416:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3576              		.loc 1 3416 3 view .LVU1181
 3577 0024 9A69     		ldr	r2, [r3, #24]
 3578 0026 42F00802 		orr	r2, r2, #8
 3579 002a 9A61     		str	r2, [r3, #24]
3419:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 3580              		.loc 1 3419 3 view .LVU1182
3419:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 3581              		.loc 1 3419 18 is_stmt 0 view .LVU1183
 3582 002c 2023     		movs	r3, #32
 3583 002e C0F88030 		str	r3, [r0, #128]
3420:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3584              		.loc 1 3420 3 is_stmt 1 view .LVU1184
3420:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3585              		.loc 1 3420 18 is_stmt 0 view .LVU1185
 3586 0032 C0F88430 		str	r3, [r0, #132]
3428:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3587              		.loc 1 3428 3 is_stmt 1 view .LVU1186
 3588 0036 FFF7FEFF 		bl	HAL_UART_AbortCpltCallback
 3589              	.LVL234:
 3590              	.L385:
3430:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3591              		.loc 1 3430 1 is_stmt 0 view .LVU1187
 3592 003a 08BD     		pop	{r3, pc}
 3593              		.cfi_endproc
 3594              	.LFE377:
 3596              		.section	.text.UART_DMATxAbortCallback,"ax",%progbits
 3597              		.align	1
 3598              		.syntax unified
 3599              		.thumb
 3600              		.thumb_func
 3601              		.fpu fpv4-sp-d16
 3603              	UART_DMATxAbortCallback:
 3604              	.LVL235:
 3605              	.LFB376:
3337:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3606              		.loc 1 3337 1 is_stmt 1 view -0
 3607              		.cfi_startproc
 3608              		@ args = 0, pretend = 0, frame = 0
 3609              		@ frame_needed = 0, uses_anonymous_args = 0
3338:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3610              		.loc 1 3338 3 view .LVU1189
3338:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3611              		.loc 1 3338 23 is_stmt 0 view .LVU1190
 3612 0000 806A     		ldr	r0, [r0, #40]
 3613              	.LVL236:
3340:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3614              		.loc 1 3340 3 is_stmt 1 view .LVU1191
3340:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3615              		.loc 1 3340 36 is_stmt 0 view .LVU1192
 3616 0002 426F     		ldr	r2, [r0, #116]
3337:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3617              		.loc 1 3337 1 view .LVU1193
 3618 0004 08B5     		push	{r3, lr}
 3619              		.cfi_def_cfa_offset 8
 3620              		.cfi_offset 3, -8
 3621              		.cfi_offset 14, -4
3340:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3622              		.loc 1 3340 36 view .LVU1194
 3623 0006 0023     		movs	r3, #0
 3624 0008 9363     		str	r3, [r2, #56]
3343:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3625              		.loc 1 3343 3 is_stmt 1 view .LVU1195
3343:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3626              		.loc 1 3343 12 is_stmt 0 view .LVU1196
 3627 000a 826F     		ldr	r2, [r0, #120]
3343:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3628              		.loc 1 3343 6 view .LVU1197
 3629 000c 0AB1     		cbz	r2, .L392
3345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3630              		.loc 1 3345 5 is_stmt 1 view .LVU1198
3345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3631              		.loc 1 3345 8 is_stmt 0 view .LVU1199
 3632 000e 926B     		ldr	r2, [r2, #56]
 3633 0010 BAB9     		cbnz	r2, .L391
 3634              	.L392:
3352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 3635              		.loc 1 3352 3 is_stmt 1 view .LVU1200
3352:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxXferCount = 0U;
 3636              		.loc 1 3352 22 is_stmt 0 view .LVU1201
 3637 0012 A0F85630 		strh	r3, [r0, #86]	@ movhi
3353:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3638              		.loc 1 3353 3 is_stmt 1 view .LVU1202
3353:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3639              		.loc 1 3353 22 is_stmt 0 view .LVU1203
 3640 0016 A0F85E30 		strh	r3, [r0, #94]	@ movhi
3356:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3641              		.loc 1 3356 3 is_stmt 1 view .LVU1204
3356:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3642              		.loc 1 3356 20 is_stmt 0 view .LVU1205
 3643 001a C0F88830 		str	r3, [r0, #136]
3359:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3644              		.loc 1 3359 3 is_stmt 1 view .LVU1206
 3645 001e 0368     		ldr	r3, [r0]
 3646 0020 0F22     		movs	r2, #15
 3647 0022 1A62     		str	r2, [r3, #32]
3362:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3648              		.loc 1 3362 3 view .LVU1207
3362:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3649              		.loc 1 3362 6 is_stmt 0 view .LVU1208
 3650 0024 426E     		ldr	r2, [r0, #100]
 3651 0026 B2F1005F 		cmp	r2, #536870912
3364:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 3652              		.loc 1 3364 5 is_stmt 1 view .LVU1209
 3653 002a 02BF     		ittt	eq
 3654 002c 9A69     		ldreq	r2, [r3, #24]
 3655 002e 42F01002 		orreq	r2, r2, #16
 3656 0032 9A61     		streq	r2, [r3, #24]
3368:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 3657              		.loc 1 3368 3 view .LVU1210
3368:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 3658              		.loc 1 3368 18 is_stmt 0 view .LVU1211
 3659 0034 2023     		movs	r3, #32
 3660 0036 C0F88030 		str	r3, [r0, #128]
3369:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3661              		.loc 1 3369 3 is_stmt 1 view .LVU1212
3369:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3662              		.loc 1 3369 18 is_stmt 0 view .LVU1213
 3663 003a C0F88430 		str	r3, [r0, #132]
3377:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3664              		.loc 1 3377 3 is_stmt 1 view .LVU1214
 3665 003e FFF7FEFF 		bl	HAL_UART_AbortCpltCallback
 3666              	.LVL237:
 3667              	.L391:
3379:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3668              		.loc 1 3379 1 is_stmt 0 view .LVU1215
 3669 0042 08BD     		pop	{r3, pc}
 3670              		.cfi_endproc
 3671              	.LFE376:
 3673              		.section	.text.HAL_UART_AbortTransmitCpltCallback,"ax",%progbits
 3674              		.align	1
 3675              		.weak	HAL_UART_AbortTransmitCpltCallback
 3676              		.syntax unified
 3677              		.thumb
 3678              		.thumb_func
 3679              		.fpu fpv4-sp-d16
 3681              	HAL_UART_AbortTransmitCpltCallback:
 3682              	.LFB412:
 3683              		.cfi_startproc
 3684              		@ args = 0, pretend = 0, frame = 0
 3685              		@ frame_needed = 0, uses_anonymous_args = 0
 3686              		@ link register save eliminated.
 3687 0000 7047     		bx	lr
 3688              		.cfi_endproc
 3689              	.LFE412:
 3691              		.section	.text.HAL_UART_AbortTransmit_IT,"ax",%progbits
 3692              		.align	1
 3693              		.global	HAL_UART_AbortTransmit_IT
 3694              		.syntax unified
 3695              		.thumb
 3696              		.thumb_func
 3697              		.fpu fpv4-sp-d16
 3699              	HAL_UART_AbortTransmit_IT:
 3700              	.LVL238:
 3701              	.LFB345:
2004:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable interrupts */
 3702              		.loc 1 2004 1 is_stmt 1 view -0
 3703              		.cfi_startproc
 3704              		@ args = 0, pretend = 0, frame = 0
 3705              		@ frame_needed = 0, uses_anonymous_args = 0
2006:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
 3706              		.loc 1 2006 3 view .LVU1217
 3707 0000 0368     		ldr	r3, [r0]
 3708 0002 1A68     		ldr	r2, [r3]
 3709 0004 22F0C002 		bic	r2, r2, #192
2004:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable interrupts */
 3710              		.loc 1 2004 1 is_stmt 0 view .LVU1218
 3711 0008 10B5     		push	{r4, lr}
 3712              		.cfi_def_cfa_offset 8
 3713              		.cfi_offset 4, -8
 3714              		.cfi_offset 14, -4
2006:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_TXFTIE);
 3715              		.loc 1 2006 3 view .LVU1219
 3716 000a 1A60     		str	r2, [r3]
2007:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3717              		.loc 1 2007 3 is_stmt 1 view .LVU1220
 3718 000c 9A68     		ldr	r2, [r3, #8]
 3719 000e 22F40002 		bic	r2, r2, #8388608
 3720 0012 9A60     		str	r2, [r3, #8]
2010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3721              		.loc 1 2010 3 view .LVU1221
2010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3722              		.loc 1 2010 7 is_stmt 0 view .LVU1222
 3723 0014 9A68     		ldr	r2, [r3, #8]
2010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3724              		.loc 1 2010 6 view .LVU1223
 3725 0016 12F08002 		ands	r2, r2, #128
2004:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable interrupts */
 3726              		.loc 1 2004 1 view .LVU1224
 3727 001a 0446     		mov	r4, r0
2010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3728              		.loc 1 2010 6 view .LVU1225
 3729 001c 19D0     		beq	.L400
2012:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3730              		.loc 1 2012 5 is_stmt 1 view .LVU1226
 3731 001e 9A68     		ldr	r2, [r3, #8]
 3732 0020 22F08002 		bic	r2, r2, #128
 3733 0024 9A60     		str	r2, [r3, #8]
2015:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3734              		.loc 1 2015 5 view .LVU1227
2015:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3735              		.loc 1 2015 14 is_stmt 0 view .LVU1228
 3736 0026 436F     		ldr	r3, [r0, #116]
2015:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3737              		.loc 1 2015 8 view .LVU1229
 3738 0028 53B1     		cbz	r3, .L401
2019:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3739              		.loc 1 2019 7 is_stmt 1 view .LVU1230
2019:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3740              		.loc 1 2019 40 is_stmt 0 view .LVU1231
 3741 002a 114A     		ldr	r2, .L408
 3742 002c 9A63     		str	r2, [r3, #56]
2022:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3743              		.loc 1 2022 7 is_stmt 1 view .LVU1232
2022:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3744              		.loc 1 2022 11 is_stmt 0 view .LVU1233
 3745 002e 1846     		mov	r0, r3
 3746              	.LVL239:
2022:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3747              		.loc 1 2022 11 view .LVU1234
 3748 0030 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 3749              	.LVL240:
2022:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3750              		.loc 1 2022 10 view .LVU1235
 3751 0034 10B1     		cbz	r0, .L402
2025:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3752              		.loc 1 2025 9 is_stmt 1 view .LVU1236
2025:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3753              		.loc 1 2025 14 is_stmt 0 view .LVU1237
 3754 0036 606F     		ldr	r0, [r4, #116]
2025:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3755              		.loc 1 2025 9 view .LVU1238
 3756 0038 836B     		ldr	r3, [r0, #56]
 3757 003a 9847     		blx	r3
 3758              	.LVL241:
 3759              	.L402:
2076:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 3760              		.loc 1 2076 3 is_stmt 1 view .LVU1239
2077:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3761              		.loc 1 2077 1 is_stmt 0 view .LVU1240
 3762 003c 0020     		movs	r0, #0
 3763 003e 10BD     		pop	{r4, pc}
 3764              	.LVL242:
 3765              	.L401:
2031:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3766              		.loc 1 2031 7 is_stmt 1 view .LVU1241
2031:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3767              		.loc 1 2031 26 is_stmt 0 view .LVU1242
 3768 0040 A0F85630 		strh	r3, [r0, #86]	@ movhi
2034:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3769              		.loc 1 2034 7 is_stmt 1 view .LVU1243
2034:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3770              		.loc 1 2034 20 is_stmt 0 view .LVU1244
 3771 0044 0367     		str	r3, [r0, #112]
2037:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3772              		.loc 1 2037 7 is_stmt 1 view .LVU1245
2037:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3773              		.loc 1 2037 21 is_stmt 0 view .LVU1246
 3774 0046 2023     		movs	r3, #32
 3775 0048 C0F88030 		str	r3, [r0, #128]
2045:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3776              		.loc 1 2045 7 is_stmt 1 view .LVU1247
 3777              	.L407:
2072:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3778              		.loc 1 2072 5 is_stmt 0 view .LVU1248
 3779 004c FFF7FEFF 		bl	HAL_UART_AbortTransmitCpltCallback
 3780              	.LVL243:
2072:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3781              		.loc 1 2072 5 view .LVU1249
 3782 0050 F4E7     		b	.L402
 3783              	.LVL244:
 3784              	.L400:
2052:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3785              		.loc 1 2052 5 is_stmt 1 view .LVU1250
2052:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3786              		.loc 1 2052 24 is_stmt 0 view .LVU1251
 3787 0052 A0F85620 		strh	r2, [r0, #86]	@ movhi
2055:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3788              		.loc 1 2055 5 is_stmt 1 view .LVU1252
2055:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3789              		.loc 1 2055 18 is_stmt 0 view .LVU1253
 3790 0056 0267     		str	r2, [r0, #112]
2058:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3791              		.loc 1 2058 5 is_stmt 1 view .LVU1254
2058:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3792              		.loc 1 2058 8 is_stmt 0 view .LVU1255
 3793 0058 426E     		ldr	r2, [r0, #100]
 3794 005a B2F1005F 		cmp	r2, #536870912
2060:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 3795              		.loc 1 2060 7 is_stmt 1 view .LVU1256
 3796 005e 02BF     		ittt	eq
 3797 0060 9A69     		ldreq	r2, [r3, #24]
 3798 0062 42F01002 		orreq	r2, r2, #16
 3799 0066 9A61     		streq	r2, [r3, #24]
2064:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3800              		.loc 1 2064 5 view .LVU1257
2064:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3801              		.loc 1 2064 19 is_stmt 0 view .LVU1258
 3802 0068 2023     		movs	r3, #32
 3803 006a C0F88030 		str	r3, [r0, #128]
2072:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3804              		.loc 1 2072 5 is_stmt 1 view .LVU1259
 3805 006e EDE7     		b	.L407
 3806              	.L409:
 3807              		.align	2
 3808              	.L408:
 3809 0070 00000000 		.word	UART_DMATxOnlyAbortCallback
 3810              		.cfi_endproc
 3811              	.LFE345:
 3813              		.section	.text.UART_DMATxOnlyAbortCallback,"ax",%progbits
 3814              		.align	1
 3815              		.syntax unified
 3816              		.thumb
 3817              		.thumb_func
 3818              		.fpu fpv4-sp-d16
 3820              	UART_DMATxOnlyAbortCallback:
 3821              	.LVL245:
 3822              	.LFB378:
3442:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3823              		.loc 1 3442 1 view -0
 3824              		.cfi_startproc
 3825              		@ args = 0, pretend = 0, frame = 0
 3826              		@ frame_needed = 0, uses_anonymous_args = 0
3443:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3827              		.loc 1 3443 3 view .LVU1261
3443:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3828              		.loc 1 3443 23 is_stmt 0 view .LVU1262
 3829 0000 806A     		ldr	r0, [r0, #40]
 3830              	.LVL246:
3445:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3831              		.loc 1 3445 3 is_stmt 1 view .LVU1263
3442:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)(hdma->Parent);
 3832              		.loc 1 3442 1 is_stmt 0 view .LVU1264
 3833 0002 08B5     		push	{r3, lr}
 3834              		.cfi_def_cfa_offset 8
 3835              		.cfi_offset 3, -8
 3836              		.cfi_offset 14, -4
3445:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3837              		.loc 1 3445 22 view .LVU1265
 3838 0004 0023     		movs	r3, #0
 3839 0006 A0F85630 		strh	r3, [r0, #86]	@ movhi
3448:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3840              		.loc 1 3448 3 is_stmt 1 view .LVU1266
3448:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3841              		.loc 1 3448 6 is_stmt 0 view .LVU1267
 3842 000a 436E     		ldr	r3, [r0, #100]
 3843 000c B3F1005F 		cmp	r3, #536870912
3450:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 3844              		.loc 1 3450 5 is_stmt 1 view .LVU1268
 3845 0010 01BF     		itttt	eq
 3846 0012 0268     		ldreq	r2, [r0]
 3847 0014 9369     		ldreq	r3, [r2, #24]
 3848 0016 43F01003 		orreq	r3, r3, #16
 3849 001a 9361     		streq	r3, [r2, #24]
3454:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3850              		.loc 1 3454 3 view .LVU1269
3454:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3851              		.loc 1 3454 17 is_stmt 0 view .LVU1270
 3852 001c 2023     		movs	r3, #32
 3853 001e C0F88030 		str	r3, [r0, #128]
3462:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3854              		.loc 1 3462 3 is_stmt 1 view .LVU1271
 3855 0022 FFF7FEFF 		bl	HAL_UART_AbortTransmitCpltCallback
 3856              	.LVL247:
3464:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3857              		.loc 1 3464 1 is_stmt 0 view .LVU1272
 3858 0026 08BD     		pop	{r3, pc}
 3859              		.cfi_endproc
 3860              	.LFE378:
 3862              		.section	.text.HAL_UART_AbortReceiveCpltCallback,"ax",%progbits
 3863              		.align	1
 3864              		.weak	HAL_UART_AbortReceiveCpltCallback
 3865              		.syntax unified
 3866              		.thumb
 3867              		.thumb_func
 3868              		.fpu fpv4-sp-d16
 3870              	HAL_UART_AbortReceiveCpltCallback:
 3871              	.LFB414:
 3872              		.cfi_startproc
 3873              		@ args = 0, pretend = 0, frame = 0
 3874              		@ frame_needed = 0, uses_anonymous_args = 0
 3875              		@ link register save eliminated.
 3876 0000 7047     		bx	lr
 3877              		.cfi_endproc
 3878              	.LFE414:
 3880              		.section	.text.HAL_UART_AbortReceive_IT,"ax",%progbits
 3881              		.align	1
 3882              		.global	HAL_UART_AbortReceive_IT
 3883              		.syntax unified
 3884              		.thumb
 3885              		.thumb_func
 3886              		.fpu fpv4-sp-d16
 3888              	HAL_UART_AbortReceive_IT:
 3889              	.LVL248:
 3890              	.LFB346:
2094:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts */
 3891              		.loc 1 2094 1 is_stmt 1 view -0
 3892              		.cfi_startproc
 3893              		@ args = 0, pretend = 0, frame = 0
 3894              		@ frame_needed = 0, uses_anonymous_args = 0
2096:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE));
 3895              		.loc 1 2096 3 view .LVU1274
 3896 0000 0368     		ldr	r3, [r0]
 3897 0002 1A68     		ldr	r2, [r3]
 3898 0004 22F49072 		bic	r2, r2, #288
2094:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts */
 3899              		.loc 1 2094 1 is_stmt 0 view .LVU1275
 3900 0008 10B5     		push	{r4, lr}
 3901              		.cfi_def_cfa_offset 8
 3902              		.cfi_offset 4, -8
 3903              		.cfi_offset 14, -4
2096:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_EIE | USART_CR3_RXFTIE));
 3904              		.loc 1 2096 3 view .LVU1276
 3905 000a 1A60     		str	r2, [r3]
2097:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3906              		.loc 1 2097 3 is_stmt 1 view .LVU1277
 3907 000c 9A68     		ldr	r2, [r3, #8]
 3908 000e 22F08052 		bic	r2, r2, #268435456
 3909 0012 22F00102 		bic	r2, r2, #1
 3910 0016 9A60     		str	r2, [r3, #8]
2100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3911              		.loc 1 2100 3 view .LVU1278
2100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3912              		.loc 1 2100 7 is_stmt 0 view .LVU1279
 3913 0018 9A68     		ldr	r2, [r3, #8]
2100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3914              		.loc 1 2100 6 view .LVU1280
 3915 001a 12F04002 		ands	r2, r2, #64
2094:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Disable RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts */
 3916              		.loc 1 2094 1 view .LVU1281
 3917 001e 0446     		mov	r4, r0
2100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 3918              		.loc 1 2100 6 view .LVU1282
 3919 0020 1FD0     		beq	.L414
2102:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3920              		.loc 1 2102 5 is_stmt 1 view .LVU1283
 3921 0022 9A68     		ldr	r2, [r3, #8]
 3922 0024 22F04002 		bic	r2, r2, #64
 3923 0028 9A60     		str	r2, [r3, #8]
2105:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3924              		.loc 1 2105 5 view .LVU1284
2105:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3925              		.loc 1 2105 14 is_stmt 0 view .LVU1285
 3926 002a 826F     		ldr	r2, [r0, #120]
2105:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 3927              		.loc 1 2105 8 view .LVU1286
 3928 002c 52B1     		cbz	r2, .L415
2109:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3929              		.loc 1 2109 7 is_stmt 1 view .LVU1287
2109:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3930              		.loc 1 2109 40 is_stmt 0 view .LVU1288
 3931 002e 104B     		ldr	r3, .L421
 3932 0030 9363     		str	r3, [r2, #56]
2112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3933              		.loc 1 2112 7 is_stmt 1 view .LVU1289
2112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3934              		.loc 1 2112 11 is_stmt 0 view .LVU1290
 3935 0032 1046     		mov	r0, r2
 3936              	.LVL249:
2112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3937              		.loc 1 2112 11 view .LVU1291
 3938 0034 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 3939              	.LVL250:
2112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 3940              		.loc 1 2112 10 view .LVU1292
 3941 0038 10B1     		cbz	r0, .L416
2115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3942              		.loc 1 2115 9 is_stmt 1 view .LVU1293
2115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3943              		.loc 1 2115 14 is_stmt 0 view .LVU1294
 3944 003a A06F     		ldr	r0, [r4, #120]
2115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 3945              		.loc 1 2115 9 view .LVU1295
 3946 003c 836B     		ldr	r3, [r0, #56]
 3947 003e 9847     		blx	r3
 3948              	.LVL251:
 3949              	.L416:
2169:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 3950              		.loc 1 2169 3 is_stmt 1 view .LVU1296
2170:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3951              		.loc 1 2170 1 is_stmt 0 view .LVU1297
 3952 0040 0020     		movs	r0, #0
 3953 0042 10BD     		pop	{r4, pc}
 3954              	.LVL252:
 3955              	.L415:
2121:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3956              		.loc 1 2121 7 is_stmt 1 view .LVU1298
2121:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3957              		.loc 1 2121 26 is_stmt 0 view .LVU1299
 3958 0044 A0F85E20 		strh	r2, [r0, #94]	@ movhi
2124:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3959              		.loc 1 2124 7 is_stmt 1 view .LVU1300
2124:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3960              		.loc 1 2124 25 is_stmt 0 view .LVU1301
 3961 0048 8265     		str	r2, [r0, #88]
2127:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3962              		.loc 1 2127 7 is_stmt 1 view .LVU1302
 3963 004a 0F22     		movs	r2, #15
 3964 004c 1A62     		str	r2, [r3, #32]
2130:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3965              		.loc 1 2130 7 view .LVU1303
 3966 004e 9A69     		ldr	r2, [r3, #24]
 3967 0050 42F00802 		orr	r2, r2, #8
 3968 0054 9A61     		str	r2, [r3, #24]
2133:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3969              		.loc 1 2133 7 view .LVU1304
 3970              	.L420:
2157:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3971              		.loc 1 2157 5 view .LVU1305
2157:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3972              		.loc 1 2157 20 is_stmt 0 view .LVU1306
 3973 0056 2023     		movs	r3, #32
 3974 0058 C4F88430 		str	r3, [r4, #132]
2165:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3975              		.loc 1 2165 5 is_stmt 1 view .LVU1307
 3976 005c FFF7FEFF 		bl	HAL_UART_AbortReceiveCpltCallback
 3977              	.LVL253:
2165:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 3978              		.loc 1 2165 5 is_stmt 0 view .LVU1308
 3979 0060 EEE7     		b	.L416
 3980              	.LVL254:
 3981              	.L414:
2148:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3982              		.loc 1 2148 5 is_stmt 1 view .LVU1309
2148:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3983              		.loc 1 2148 24 is_stmt 0 view .LVU1310
 3984 0062 A0F85E20 		strh	r2, [r0, #94]	@ movhi
2151:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3985              		.loc 1 2151 5 is_stmt 1 view .LVU1311
2151:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3986              		.loc 1 2151 23 is_stmt 0 view .LVU1312
 3987 0066 8265     		str	r2, [r0, #88]
2154:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 3988              		.loc 1 2154 5 is_stmt 1 view .LVU1313
 3989 0068 0F22     		movs	r2, #15
 3990 006a 1A62     		str	r2, [r3, #32]
 3991 006c F3E7     		b	.L420
 3992              	.L422:
 3993 006e 00BF     		.align	2
 3994              	.L421:
 3995 0070 00000000 		.word	UART_DMARxOnlyAbortCallback
 3996              		.cfi_endproc
 3997              	.LFE346:
 3999              		.section	.text.UART_DMARxOnlyAbortCallback,"ax",%progbits
 4000              		.align	1
 4001              		.syntax unified
 4002              		.thumb
 4003              		.thumb_func
 4004              		.fpu fpv4-sp-d16
 4006              	UART_DMARxOnlyAbortCallback:
 4007              	.LVL255:
 4008              	.LFB379:
3475:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
 4009              		.loc 1 3475 1 view -0
 4010              		.cfi_startproc
 4011              		@ args = 0, pretend = 0, frame = 0
 4012              		@ frame_needed = 0, uses_anonymous_args = 0
3476:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4013              		.loc 1 3476 3 view .LVU1315
3476:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4014              		.loc 1 3476 23 is_stmt 0 view .LVU1316
 4015 0000 806A     		ldr	r0, [r0, #40]
 4016              	.LVL256:
3478:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4017              		.loc 1 3478 3 is_stmt 1 view .LVU1317
3475:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_HandleTypeDef *huart = (UART_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
 4018              		.loc 1 3475 1 is_stmt 0 view .LVU1318
 4019 0002 08B5     		push	{r3, lr}
 4020              		.cfi_def_cfa_offset 8
 4021              		.cfi_offset 3, -8
 4022              		.cfi_offset 14, -4
3478:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4023              		.loc 1 3478 22 view .LVU1319
 4024 0004 0023     		movs	r3, #0
 4025 0006 A0F85E30 		strh	r3, [r0, #94]	@ movhi
3481:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4026              		.loc 1 3481 3 is_stmt 1 view .LVU1320
 4027 000a 0368     		ldr	r3, [r0]
 4028 000c 0F22     		movs	r2, #15
 4029 000e 1A62     		str	r2, [r3, #32]
3484:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4030              		.loc 1 3484 3 view .LVU1321
 4031 0010 9A69     		ldr	r2, [r3, #24]
 4032 0012 42F00802 		orr	r2, r2, #8
 4033 0016 9A61     		str	r2, [r3, #24]
3487:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4034              		.loc 1 3487 3 view .LVU1322
3487:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4035              		.loc 1 3487 18 is_stmt 0 view .LVU1323
 4036 0018 2023     		movs	r3, #32
 4037 001a C0F88430 		str	r3, [r0, #132]
3495:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* USE_HAL_UART_REGISTER_CALLBACKS */
 4038              		.loc 1 3495 3 is_stmt 1 view .LVU1324
 4039 001e FFF7FEFF 		bl	HAL_UART_AbortReceiveCpltCallback
 4040              	.LVL257:
3497:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4041              		.loc 1 3497 1 is_stmt 0 view .LVU1325
 4042 0022 08BD     		pop	{r3, pc}
 4043              		.cfi_endproc
 4044              	.LFE379:
 4046              		.section	.text.HAL_MultiProcessor_EnterMuteMode,"ax",%progbits
 4047              		.align	1
 4048              		.global	HAL_MultiProcessor_EnterMuteMode
 4049              		.syntax unified
 4050              		.thumb
 4051              		.thumb_func
 4052              		.fpu fpv4-sp-d16
 4054              	HAL_MultiProcessor_EnterMuteMode:
 4055              	.LVL258:
 4056              	.LFB358:
2586:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_MUTE_MODE_REQUEST);
 4057              		.loc 1 2586 1 is_stmt 1 view -0
 4058              		.cfi_startproc
 4059              		@ args = 0, pretend = 0, frame = 0
 4060              		@ frame_needed = 0, uses_anonymous_args = 0
 4061              		@ link register save eliminated.
2587:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4062              		.loc 1 2587 3 view .LVU1327
 4063 0000 0268     		ldr	r2, [r0]
 4064 0002 9369     		ldr	r3, [r2, #24]
 4065 0004 43F00403 		orr	r3, r3, #4
 4066 0008 9361     		str	r3, [r2, #24]
2588:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4067              		.loc 1 2588 1 is_stmt 0 view .LVU1328
 4068 000a 7047     		bx	lr
 4069              		.cfi_endproc
 4070              	.LFE358:
 4072              		.section	.text.HAL_HalfDuplex_EnableTransmitter,"ax",%progbits
 4073              		.align	1
 4074              		.global	HAL_HalfDuplex_EnableTransmitter
 4075              		.syntax unified
 4076              		.thumb
 4077              		.thumb_func
 4078              		.fpu fpv4-sp-d16
 4080              	HAL_HalfDuplex_EnableTransmitter:
 4081              	.LVL259:
 4082              	.LFB359:
2596:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
 4083              		.loc 1 2596 1 is_stmt 1 view -0
 4084              		.cfi_startproc
 4085              		@ args = 0, pretend = 0, frame = 0
 4086              		@ frame_needed = 0, uses_anonymous_args = 0
 4087              		@ link register save eliminated.
2597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4088              		.loc 1 2597 3 view .LVU1330
2597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4089              		.loc 1 2597 3 view .LVU1331
 4090 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 4091 0004 012B     		cmp	r3, #1
 4092 0006 13D0     		beq	.L427
2597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4093              		.loc 1 2597 3 discriminator 2 view .LVU1332
2598:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4094              		.loc 1 2598 3 discriminator 2 view .LVU1333
2598:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4095              		.loc 1 2598 17 is_stmt 0 discriminator 2 view .LVU1334
 4096 0008 2423     		movs	r3, #36
 4097 000a C0F88030 		str	r3, [r0, #128]
2601:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4098              		.loc 1 2601 3 is_stmt 1 discriminator 2 view .LVU1335
 4099 000e 0368     		ldr	r3, [r0]
 4100 0010 1A68     		ldr	r2, [r3]
 4101 0012 22F00C02 		bic	r2, r2, #12
 4102 0016 1A60     		str	r2, [r3]
2604:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4103              		.loc 1 2604 3 discriminator 2 view .LVU1336
 4104 0018 1A68     		ldr	r2, [r3]
 4105 001a 42F00802 		orr	r2, r2, #8
 4106 001e 1A60     		str	r2, [r3]
2606:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4107              		.loc 1 2606 3 discriminator 2 view .LVU1337
2606:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4108              		.loc 1 2606 17 is_stmt 0 discriminator 2 view .LVU1338
 4109 0020 2023     		movs	r3, #32
 4110 0022 C0F88030 		str	r3, [r0, #128]
2608:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4111              		.loc 1 2608 3 is_stmt 1 discriminator 2 view .LVU1339
2608:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4112              		.loc 1 2608 3 discriminator 2 view .LVU1340
 4113 0026 0023     		movs	r3, #0
 4114 0028 80F87C30 		strb	r3, [r0, #124]
2610:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4115              		.loc 1 2610 3 discriminator 2 view .LVU1341
2610:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4116              		.loc 1 2610 10 is_stmt 0 discriminator 2 view .LVU1342
 4117 002c 1846     		mov	r0, r3
 4118              	.LVL260:
2610:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4119              		.loc 1 2610 10 discriminator 2 view .LVU1343
 4120 002e 7047     		bx	lr
 4121              	.LVL261:
 4122              	.L427:
2597:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4123              		.loc 1 2597 3 view .LVU1344
 4124 0030 0220     		movs	r0, #2
 4125              	.LVL262:
2611:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4126              		.loc 1 2611 1 view .LVU1345
 4127 0032 7047     		bx	lr
 4128              		.cfi_endproc
 4129              	.LFE359:
 4131              		.section	.text.HAL_HalfDuplex_EnableReceiver,"ax",%progbits
 4132              		.align	1
 4133              		.global	HAL_HalfDuplex_EnableReceiver
 4134              		.syntax unified
 4135              		.thumb
 4136              		.thumb_func
 4137              		.fpu fpv4-sp-d16
 4139              	HAL_HalfDuplex_EnableReceiver:
 4140              	.LVL263:
 4141              	.LFB360:
2619:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
 4142              		.loc 1 2619 1 is_stmt 1 view -0
 4143              		.cfi_startproc
 4144              		@ args = 0, pretend = 0, frame = 0
 4145              		@ frame_needed = 0, uses_anonymous_args = 0
 4146              		@ link register save eliminated.
2620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4147              		.loc 1 2620 3 view .LVU1347
2620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4148              		.loc 1 2620 3 view .LVU1348
 4149 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 4150 0004 012B     		cmp	r3, #1
 4151 0006 13D0     		beq	.L430
2620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4152              		.loc 1 2620 3 discriminator 2 view .LVU1349
2621:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4153              		.loc 1 2621 3 discriminator 2 view .LVU1350
2621:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4154              		.loc 1 2621 17 is_stmt 0 discriminator 2 view .LVU1351
 4155 0008 2423     		movs	r3, #36
 4156 000a C0F88030 		str	r3, [r0, #128]
2624:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4157              		.loc 1 2624 3 is_stmt 1 discriminator 2 view .LVU1352
 4158 000e 0368     		ldr	r3, [r0]
 4159 0010 1A68     		ldr	r2, [r3]
 4160 0012 22F00C02 		bic	r2, r2, #12
 4161 0016 1A60     		str	r2, [r3]
2627:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4162              		.loc 1 2627 3 discriminator 2 view .LVU1353
 4163 0018 1A68     		ldr	r2, [r3]
 4164 001a 42F00402 		orr	r2, r2, #4
 4165 001e 1A60     		str	r2, [r3]
2629:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4166              		.loc 1 2629 3 discriminator 2 view .LVU1354
2629:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4167              		.loc 1 2629 17 is_stmt 0 discriminator 2 view .LVU1355
 4168 0020 2023     		movs	r3, #32
 4169 0022 C0F88030 		str	r3, [r0, #128]
2631:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4170              		.loc 1 2631 3 is_stmt 1 discriminator 2 view .LVU1356
2631:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4171              		.loc 1 2631 3 discriminator 2 view .LVU1357
 4172 0026 0023     		movs	r3, #0
 4173 0028 80F87C30 		strb	r3, [r0, #124]
2633:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4174              		.loc 1 2633 3 discriminator 2 view .LVU1358
2633:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4175              		.loc 1 2633 10 is_stmt 0 discriminator 2 view .LVU1359
 4176 002c 1846     		mov	r0, r3
 4177              	.LVL264:
2633:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4178              		.loc 1 2633 10 discriminator 2 view .LVU1360
 4179 002e 7047     		bx	lr
 4180              	.LVL265:
 4181              	.L430:
2620:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4182              		.loc 1 2620 3 view .LVU1361
 4183 0030 0220     		movs	r0, #2
 4184              	.LVL266:
2634:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4185              		.loc 1 2634 1 view .LVU1362
 4186 0032 7047     		bx	lr
 4187              		.cfi_endproc
 4188              	.LFE360:
 4190              		.section	.text.HAL_LIN_SendBreak,"ax",%progbits
 4191              		.align	1
 4192              		.global	HAL_LIN_SendBreak
 4193              		.syntax unified
 4194              		.thumb
 4195              		.thumb_func
 4196              		.fpu fpv4-sp-d16
 4198              	HAL_LIN_SendBreak:
 4199              	.LVL267:
 4200              	.LFB361:
2643:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the parameters */
 4201              		.loc 1 2643 1 is_stmt 1 view -0
 4202              		.cfi_startproc
 4203              		@ args = 0, pretend = 0, frame = 0
 4204              		@ frame_needed = 0, uses_anonymous_args = 0
 4205              		@ link register save eliminated.
2645:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4206              		.loc 1 2645 3 view .LVU1364
2647:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4207              		.loc 1 2647 3 view .LVU1365
2647:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4208              		.loc 1 2647 3 view .LVU1366
 4209 0000 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 4210 0004 012B     		cmp	r3, #1
 4211 0006 0FD0     		beq	.L433
2647:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4212              		.loc 1 2647 3 discriminator 2 view .LVU1367
2649:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4213              		.loc 1 2649 3 discriminator 2 view .LVU1368
2652:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4214              		.loc 1 2652 3 is_stmt 0 discriminator 2 view .LVU1369
 4215 0008 0268     		ldr	r2, [r0]
2649:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4216              		.loc 1 2649 17 discriminator 2 view .LVU1370
 4217 000a 2423     		movs	r3, #36
 4218 000c C0F88030 		str	r3, [r0, #128]
2652:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4219              		.loc 1 2652 3 is_stmt 1 discriminator 2 view .LVU1371
 4220 0010 9369     		ldr	r3, [r2, #24]
 4221 0012 43F00203 		orr	r3, r3, #2
 4222 0016 9361     		str	r3, [r2, #24]
2654:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4223              		.loc 1 2654 3 discriminator 2 view .LVU1372
2654:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4224              		.loc 1 2654 17 is_stmt 0 discriminator 2 view .LVU1373
 4225 0018 2023     		movs	r3, #32
 4226 001a C0F88030 		str	r3, [r0, #128]
2656:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4227              		.loc 1 2656 3 is_stmt 1 discriminator 2 view .LVU1374
2656:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4228              		.loc 1 2656 3 discriminator 2 view .LVU1375
 4229 001e 0023     		movs	r3, #0
 4230 0020 80F87C30 		strb	r3, [r0, #124]
2658:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4231              		.loc 1 2658 3 discriminator 2 view .LVU1376
2658:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4232              		.loc 1 2658 10 is_stmt 0 discriminator 2 view .LVU1377
 4233 0024 1846     		mov	r0, r3
 4234              	.LVL268:
2658:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4235              		.loc 1 2658 10 discriminator 2 view .LVU1378
 4236 0026 7047     		bx	lr
 4237              	.LVL269:
 4238              	.L433:
2647:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4239              		.loc 1 2647 3 view .LVU1379
 4240 0028 0220     		movs	r0, #2
 4241              	.LVL270:
2659:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4242              		.loc 1 2659 1 view .LVU1380
 4243 002a 7047     		bx	lr
 4244              		.cfi_endproc
 4245              	.LFE361:
 4247              		.section	.text.HAL_UART_GetState,"ax",%progbits
 4248              		.align	1
 4249              		.global	HAL_UART_GetState
 4250              		.syntax unified
 4251              		.thumb
 4252              		.thumb_func
 4253              		.fpu fpv4-sp-d16
 4255              	HAL_UART_GetState:
 4256              	.LVL271:
 4257              	.LFB362:
2688:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t temp1;
 4258              		.loc 1 2688 1 is_stmt 1 view -0
 4259              		.cfi_startproc
 4260              		@ args = 0, pretend = 0, frame = 0
 4261              		@ frame_needed = 0, uses_anonymous_args = 0
 4262              		@ link register save eliminated.
2689:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t temp2;
 4263              		.loc 1 2689 3 view .LVU1382
2690:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   temp1 = huart->gState;
 4264              		.loc 1 2690 3 view .LVU1383
2691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   temp2 = huart->RxState;
 4265              		.loc 1 2691 3 view .LVU1384
2691:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   temp2 = huart->RxState;
 4266              		.loc 1 2691 9 is_stmt 0 view .LVU1385
 4267 0000 D0F88020 		ldr	r2, [r0, #128]
 4268              	.LVL272:
2692:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4269              		.loc 1 2692 3 is_stmt 1 view .LVU1386
2692:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4270              		.loc 1 2692 9 is_stmt 0 view .LVU1387
 4271 0004 D0F88400 		ldr	r0, [r0, #132]
 4272              	.LVL273:
2694:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4273              		.loc 1 2694 3 is_stmt 1 view .LVU1388
2695:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4274              		.loc 1 2695 1 is_stmt 0 view .LVU1389
 4275 0008 1043     		orrs	r0, r0, r2
 4276              	.LVL274:
2695:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4277              		.loc 1 2695 1 view .LVU1390
 4278 000a 7047     		bx	lr
 4279              		.cfi_endproc
 4280              	.LFE362:
 4282              		.section	.text.HAL_UART_GetError,"ax",%progbits
 4283              		.align	1
 4284              		.global	HAL_UART_GetError
 4285              		.syntax unified
 4286              		.thumb
 4287              		.thumb_func
 4288              		.fpu fpv4-sp-d16
 4290              	HAL_UART_GetError:
 4291              	.LVL275:
 4292              	.LFB363:
2704:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   return huart->ErrorCode;
 4293              		.loc 1 2704 1 is_stmt 1 view -0
 4294              		.cfi_startproc
 4295              		@ args = 0, pretend = 0, frame = 0
 4296              		@ frame_needed = 0, uses_anonymous_args = 0
 4297              		@ link register save eliminated.
2705:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4298              		.loc 1 2705 3 view .LVU1392
2705:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4299              		.loc 1 2705 15 is_stmt 0 view .LVU1393
 4300 0000 D0F88800 		ldr	r0, [r0, #136]
 4301              	.LVL276:
2706:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** /**
 4302              		.loc 1 2706 1 view .LVU1394
 4303 0004 7047     		bx	lr
 4304              		.cfi_endproc
 4305              	.LFE363:
 4307              		.global	__aeabi_uldivmod
 4308              		.global	__aeabi_ldivmod
 4309              		.section	.text.UART_SetConfig,"ax",%progbits
 4310              		.align	1
 4311              		.global	UART_SetConfig
 4312              		.syntax unified
 4313              		.thumb
 4314              		.thumb_func
 4315              		.fpu fpv4-sp-d16
 4317              	UART_SetConfig:
 4318              	.LVL277:
 4319              	.LFB364:
2749:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tmpreg;
 4320              		.loc 1 2749 1 is_stmt 1 view -0
 4321              		.cfi_startproc
 4322              		@ args = 0, pretend = 0, frame = 0
 4323              		@ frame_needed = 0, uses_anonymous_args = 0
2750:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t brrtemp;
 4324              		.loc 1 2750 3 view .LVU1396
2751:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   UART_ClockSourceTypeDef clocksource;
 4325              		.loc 1 2751 3 view .LVU1397
2752:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t usartdiv                   = 0x00000000U;
 4326              		.loc 1 2752 3 view .LVU1398
2753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_StatusTypeDef ret               = HAL_OK;
 4327              		.loc 1 2753 3 view .LVU1399
2754:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t lpuart_ker_ck_pres         = 0x00000000U;
 4328              		.loc 1 2754 3 view .LVU1400
2755:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t pclk;
 4329              		.loc 1 2755 3 view .LVU1401
2756:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4330              		.loc 1 2756 3 view .LVU1402
2759:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
 4331              		.loc 1 2759 3 view .LVU1403
2760:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   if (UART_INSTANCE_LOWPOWER(huart))
 4332              		.loc 1 2760 3 view .LVU1404
2761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4333              		.loc 1 2761 3 view .LVU1405
2761:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4334              		.loc 1 2761 7 is_stmt 0 view .LVU1406
 4335 0000 0368     		ldr	r3, [r0]
2767:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ONE_BIT_SAMPLE(huart->Init.OneBitSampling));
 4336              		.loc 1 2767 5 is_stmt 1 view .LVU1407
2768:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 4337              		.loc 1 2768 5 view .LVU1408
2771:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_MODE(huart->Init.Mode));
 4338              		.loc 1 2771 3 view .LVU1409
2772:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_HARDWARE_FLOW_CONTROL(huart->Init.HwFlowCtl));
 4339              		.loc 1 2772 3 view .LVU1410
2773:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));
 4340              		.loc 1 2773 3 view .LVU1411
2774:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   assert_param(IS_UART_PRESCALER(huart->Init.ClockPrescaler));
 4341              		.loc 1 2774 3 view .LVU1412
2775:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4342              		.loc 1 2775 3 view .LVU1413
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
 4343              		.loc 1 2784 3 view .LVU1414
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
 4344              		.loc 1 2784 98 is_stmt 0 view .LVU1415
 4345 0002 C169     		ldr	r1, [r0, #28]
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
 4346              		.loc 1 2784 45 view .LVU1416
 4347 0004 8268     		ldr	r2, [r0, #8]
2749:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tmpreg;
 4348              		.loc 1 2749 1 view .LVU1417
 4349 0006 2DE9F048 		push	{r4, r5, r6, r7, fp, lr}
 4350              		.cfi_def_cfa_offset 24
 4351              		.cfi_offset 4, -24
 4352              		.cfi_offset 5, -20
 4353              		.cfi_offset 6, -16
 4354              		.cfi_offset 7, -12
 4355              		.cfi_offset 11, -8
 4356              		.cfi_offset 14, -4
2749:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tmpreg;
 4357              		.loc 1 2749 1 view .LVU1418
 4358 000a 0446     		mov	r4, r0
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
 4359              		.loc 1 2784 45 view .LVU1419
 4360 000c 0069     		ldr	r0, [r0, #16]
 4361              	.LVL278:
2786:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4362              		.loc 1 2786 3 view .LVU1420
 4363 000e 1D68     		ldr	r5, [r3]
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
 4364              		.loc 1 2784 45 view .LVU1421
 4365 0010 0243     		orrs	r2, r2, r0
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
 4366              		.loc 1 2784 66 view .LVU1422
 4367 0012 6069     		ldr	r0, [r4, #20]
 4368 0014 0243     		orrs	r2, r2, r0
2785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, USART_CR1_FIELDS, tmpreg);
 4369              		.loc 1 2785 10 view .LVU1423
 4370 0016 606E     		ldr	r0, [r4, #100]
2784:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   tmpreg |= (uint32_t)huart->FifoMode;
 4371              		.loc 1 2784 10 view .LVU1424
 4372 0018 0A43     		orrs	r2, r2, r1
 4373              	.LVL279:
2785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, USART_CR1_FIELDS, tmpreg);
 4374              		.loc 1 2785 3 is_stmt 1 view .LVU1425
2786:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4375              		.loc 1 2786 3 view .LVU1426
2785:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, USART_CR1_FIELDS, tmpreg);
 4376              		.loc 1 2785 10 is_stmt 0 view .LVU1427
 4377 001a 0243     		orrs	r2, r2, r0
 4378              	.LVL280:
2786:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4379              		.loc 1 2786 3 view .LVU1428
 4380 001c B648     		ldr	r0, .L895
 4381 001e 2840     		ands	r0, r0, r5
 4382 0020 0243     		orrs	r2, r2, r0
 4383              	.LVL281:
2786:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4384              		.loc 1 2786 3 view .LVU1429
 4385 0022 1A60     		str	r2, [r3]
2791:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4386              		.loc 1 2791 3 is_stmt 1 view .LVU1430
 4387 0024 5A68     		ldr	r2, [r3, #4]
 4388 0026 E068     		ldr	r0, [r4, #12]
 4389 0028 22F44052 		bic	r2, r2, #12288
 4390 002c 0243     		orrs	r2, r2, r0
 4391 002e 5A60     		str	r2, [r3, #4]
2799:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4392              		.loc 1 2799 3 view .LVU1431
2801:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4393              		.loc 1 2801 6 is_stmt 0 view .LVU1432
 4394 0030 B24A     		ldr	r2, .L895+4
2799:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4395              		.loc 1 2799 10 view .LVU1433
 4396 0032 A069     		ldr	r0, [r4, #24]
 4397              	.LVL282:
2801:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4398              		.loc 1 2801 3 is_stmt 1 view .LVU1434
2801:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4399              		.loc 1 2801 6 is_stmt 0 view .LVU1435
 4400 0034 9342     		cmp	r3, r2
2803:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 4401              		.loc 1 2803 5 is_stmt 1 view .LVU1436
2803:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 4402              		.loc 1 2803 12 is_stmt 0 view .LVU1437
 4403 0036 1CBF     		itt	ne
 4404 0038 226A     		ldrne	r2, [r4, #32]
 4405              	.LVL283:
2803:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 4406              		.loc 1 2803 12 view .LVU1438
 4407 003a 1043     		orrne	r0, r0, r2
 4408              	.LVL284:
2805:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4409              		.loc 1 2805 3 is_stmt 1 view .LVU1439
 4410 003c 9A68     		ldr	r2, [r3, #8]
 4411              	.LVL285:
2805:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4412              		.loc 1 2805 3 is_stmt 0 view .LVU1440
 4413 003e 22F06E42 		bic	r2, r2, #-301989888
 4414 0042 22F43062 		bic	r2, r2, #2816
 4415 0046 0243     		orrs	r2, r2, r0
 4416 0048 9A60     		str	r2, [r3, #8]
2810:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4417              		.loc 1 2810 3 is_stmt 1 view .LVU1441
 4418 004a DA6A     		ldr	r2, [r3, #44]
 4419 004c 606A     		ldr	r0, [r4, #36]
 4420 004e 22F00F02 		bic	r2, r2, #15
 4421 0052 0243     		orrs	r2, r2, r0
 4422 0054 DA62     		str	r2, [r3, #44]
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4423              		.loc 1 2813 3 view .LVU1442
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4424              		.loc 1 2813 3 view .LVU1443
 4425 0056 AA4A     		ldr	r2, .L895+8
 4426 0058 9342     		cmp	r3, r2
 4427              	.LVL286:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4428              		.loc 1 2813 3 is_stmt 0 view .LVU1444
 4429 005a 18D1     		bne	.L438
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4430              		.loc 1 2813 3 is_stmt 1 discriminator 1 view .LVU1445
 4431 005c A94B     		ldr	r3, .L895+12
 4432              	.LVL287:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4433              		.loc 1 2813 3 is_stmt 0 discriminator 1 view .LVU1446
 4434 005e AA4A     		ldr	r2, .L895+16
 4435 0060 D3F88830 		ldr	r3, [r3, #136]
 4436 0064 03F00303 		and	r3, r3, #3
 4437              	.L780:
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4438              		.loc 1 2883 11 discriminator 13 view .LVU1447
 4439 0068 B1F5004F 		cmp	r1, #32768
 4440 006c D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 4441              	.LVL288:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4442              		.loc 1 2816 3 is_stmt 1 discriminator 13 view .LVU1448
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4443              		.loc 1 2883 8 discriminator 13 view .LVU1449
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4444              		.loc 1 2883 11 is_stmt 0 discriminator 13 view .LVU1450
 4445 006e 40F01983 		bne	.L470
2885:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 4446              		.loc 1 2885 5 is_stmt 1 view .LVU1451
 4447 0072 082B     		cmp	r3, #8
 4448 0074 00F21383 		bhi	.L721
 4449 0078 DFE813F0 		tbh	[pc, r3, lsl #1]
 4450              	.L473:
 4451 007c 4604     		.2byte	(.L477-.L473)/2
 4452 007e 8302     		.2byte	(.L476-.L473)/2
 4453 0080 FA03     		.2byte	(.L475-.L473)/2
 4454 0082 1103     		.2byte	(.L721-.L473)/2
 4455 0084 3F04     		.2byte	(.L474-.L473)/2
 4456 0086 1103     		.2byte	(.L721-.L473)/2
 4457 0088 1103     		.2byte	(.L721-.L473)/2
 4458 008a 1103     		.2byte	(.L721-.L473)/2
 4459 008c 3A00     		.2byte	(.L472-.L473)/2
 4460              	.LVL289:
 4461              		.p2align 1
 4462              	.L438:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4463              		.loc 1 2813 3 discriminator 2 view .LVU1452
 4464 008e 9F4A     		ldr	r2, .L895+20
 4465 0090 9342     		cmp	r3, r2
 4466 0092 06D1     		bne	.L440
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4467              		.loc 1 2813 3 discriminator 13 view .LVU1453
 4468 0094 9B4B     		ldr	r3, .L895+12
 4469              	.LVL290:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4470              		.loc 1 2813 3 is_stmt 0 discriminator 13 view .LVU1454
 4471 0096 9E4A     		ldr	r2, .L895+24
 4472 0098 D3F88830 		ldr	r3, [r3, #136]
 4473 009c 03F00C03 		and	r3, r3, #12
 4474 00a0 E2E7     		b	.L780
 4475              	.LVL291:
 4476              	.L440:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4477              		.loc 1 2813 3 is_stmt 1 discriminator 14 view .LVU1455
 4478 00a2 9C4A     		ldr	r2, .L895+28
 4479 00a4 9342     		cmp	r3, r2
 4480 00a6 50D1     		bne	.L441
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4481              		.loc 1 2813 3 discriminator 25 view .LVU1456
 4482 00a8 02F5E432 		add	r2, r2, #116736
 4483 00ac D2F88820 		ldr	r2, [r2, #136]
 4484 00b0 02F03002 		and	r2, r2, #48
 4485 00b4 102A     		cmp	r2, #16
 4486 00b6 00F01884 		beq	.L442
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4487              		.loc 1 2813 3 is_stmt 0 view .LVU1457
 4488 00ba 0CD8     		bhi	.L443
 4489              	.L788:
 4490 00bc 002A     		cmp	r2, #0
 4491 00be 6BD0     		beq	.L444
 4492              	.L445:
 4493              	.LVL292:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4494              		.loc 1 2816 3 is_stmt 1 view .LVU1458
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4495              		.loc 1 2816 6 is_stmt 0 view .LVU1459
 4496 00c0 8E4A     		ldr	r2, .L895+4
 4497              	.LVL293:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4498              		.loc 1 2816 6 view .LVU1460
 4499 00c2 9342     		cmp	r3, r2
 4500 00c4 00F0D680 		beq	.L459
 4501              	.LVL294:
 4502              	.L450:
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4503              		.loc 1 2883 8 is_stmt 1 view .LVU1461
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4504              		.loc 1 2883 11 is_stmt 0 view .LVU1462
 4505 00c8 B1F5004F 		cmp	r1, #32768
 4506 00cc 00F0E782 		beq	.L721
 4507              	.LVL295:
 4508              	.L660:
2945:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4509              		.loc 1 2945 13 view .LVU1463
 4510 00d0 0122     		movs	r2, #1
2753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_StatusTypeDef ret               = HAL_OK;
 4511              		.loc 1 2753 12 view .LVU1464
 4512 00d2 0023     		movs	r3, #0
 4513 00d4 4AE3     		b	.L483
 4514              	.LVL296:
 4515              	.L443:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4516              		.loc 1 2813 3 view .LVU1465
 4517 00d6 202A     		cmp	r2, #32
 4518 00d8 00F0C283 		beq	.L446
 4519 00dc 302A     		cmp	r2, #48
 4520              	.L786:
 4521 00de EFD1     		bne	.L445
 4522              	.LVL297:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4523              		.loc 1 2816 3 is_stmt 1 view .LVU1466
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4524              		.loc 1 2816 6 is_stmt 0 view .LVU1467
 4525 00e0 864A     		ldr	r2, .L895+4
 4526              	.LVL298:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4527              		.loc 1 2816 6 view .LVU1468
 4528 00e2 9342     		cmp	r3, r2
 4529 00e4 00F01C81 		beq	.L497
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4530              		.loc 1 2883 8 is_stmt 1 view .LVU1469
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4531              		.loc 1 2883 11 is_stmt 0 view .LVU1470
 4532 00e8 B1F5004F 		cmp	r1, #32768
 4533 00ec 40F07783 		bne	.L484
 4534              	.LVL299:
 4535              	.L472:
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4536              		.loc 1 2903 9 is_stmt 1 view .LVU1471
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4537              		.loc 1 2903 31 is_stmt 0 view .LVU1472
 4538 00f0 0028     		cmp	r0, #0
 4539 00f2 00F0B382 		beq	.L648
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4540              		.loc 1 2903 31 discriminator 1 view .LVU1473
 4541 00f6 0128     		cmp	r0, #1
 4542 00f8 00F0B382 		beq	.L649
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4543              		.loc 1 2903 31 discriminator 3 view .LVU1474
 4544 00fc 0228     		cmp	r0, #2
 4545 00fe 00F0B382 		beq	.L650
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4546              		.loc 1 2903 31 discriminator 5 view .LVU1475
 4547 0102 0328     		cmp	r0, #3
 4548 0104 00F0B382 		beq	.L651
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4549              		.loc 1 2903 31 discriminator 7 view .LVU1476
 4550 0108 0428     		cmp	r0, #4
 4551 010a 00F0B382 		beq	.L652
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4552              		.loc 1 2903 31 discriminator 9 view .LVU1477
 4553 010e 0528     		cmp	r0, #5
 4554 0110 00F0B382 		beq	.L653
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4555              		.loc 1 2903 31 discriminator 11 view .LVU1478
 4556 0114 0628     		cmp	r0, #6
 4557 0116 00F0B382 		beq	.L654
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4558              		.loc 1 2903 31 discriminator 13 view .LVU1479
 4559 011a 0728     		cmp	r0, #7
 4560 011c 00F0B382 		beq	.L655
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4561              		.loc 1 2903 31 discriminator 15 view .LVU1480
 4562 0120 0828     		cmp	r0, #8
 4563 0122 00F0B382 		beq	.L656
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4564              		.loc 1 2903 31 discriminator 17 view .LVU1481
 4565 0126 0928     		cmp	r0, #9
 4566 0128 00F0B382 		beq	.L657
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4567              		.loc 1 2903 31 discriminator 19 view .LVU1482
 4568 012c 0A28     		cmp	r0, #10
 4569 012e 00F0B382 		beq	.L658
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4570              		.loc 1 2903 31 discriminator 21 view .LVU1483
 4571 0132 0B28     		cmp	r0, #11
 4572 0134 14BF     		ite	ne
 4573 0136 4FF48033 		movne	r3, #65536
 4574 013a 4FF48073 		moveq	r3, #256
 4575              	.L482:
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4576              		.loc 1 2903 31 discriminator 48 view .LVU1484
 4577 013e 6068     		ldr	r0, [r4, #4]
 4578 0140 03EB5003 		add	r3, r3, r0, lsr #1
 4579 0144 B3FBF0F3 		udiv	r3, r3, r0
 4580 0148 BEE3     		b	.L781
 4581              	.LVL300:
 4582              	.L441:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4583              		.loc 1 2813 3 is_stmt 1 discriminator 26 view .LVU1485
 4584 014a 734A     		ldr	r2, .L895+32
 4585 014c 9342     		cmp	r3, r2
 4586 014e 0ED1     		bne	.L448
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4587              		.loc 1 2813 3 discriminator 37 view .LVU1486
 4588 0150 02F5E232 		add	r2, r2, #115712
 4589 0154 D2F88820 		ldr	r2, [r2, #136]
 4590 0158 02F0C002 		and	r2, r2, #192
 4591 015c 402A     		cmp	r2, #64
 4592 015e 00F0C483 		beq	.L442
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4593              		.loc 1 2813 3 is_stmt 0 view .LVU1487
 4594 0162 ABD9     		bls	.L788
 4595 0164 802A     		cmp	r2, #128
 4596 0166 00F07B83 		beq	.L446
 4597 016a C02A     		cmp	r2, #192
 4598 016c B7E7     		b	.L786
 4599              	.L448:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4600              		.loc 1 2813 3 is_stmt 1 discriminator 38 view .LVU1488
 4601 016e 634A     		ldr	r2, .L895+4
 4602              	.LVL301:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4603              		.loc 1 2813 3 is_stmt 0 discriminator 38 view .LVU1489
 4604 0170 9342     		cmp	r3, r2
 4605 0172 A9D1     		bne	.L450
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4606              		.loc 1 2813 3 is_stmt 1 discriminator 49 view .LVU1490
 4607 0174 02F5C832 		add	r2, r2, #102400
 4608              	.LVL302:
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4609              		.loc 1 2813 3 is_stmt 0 discriminator 49 view .LVU1491
 4610 0178 D2F88820 		ldr	r2, [r2, #136]
 4611 017c 02F44062 		and	r2, r2, #3072
 4612 0180 B2F5806F 		cmp	r2, #1024
 4613 0184 00F0B183 		beq	.L442
2813:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4614              		.loc 1 2813 3 view .LVU1492
 4615 0188 98D9     		bls	.L788
 4616 018a B2F5006F 		cmp	r2, #2048
 4617 018e 00F06783 		beq	.L446
 4618 0192 B2F5406F 		cmp	r2, #3072
 4619 0196 A2E7     		b	.L786
 4620              	.L444:
 4621              	.LVL303:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4622              		.loc 1 2816 3 is_stmt 1 view .LVU1493
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4623              		.loc 1 2816 6 is_stmt 0 view .LVU1494
 4624 0198 584A     		ldr	r2, .L895+4
 4625              	.LVL304:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 4626              		.loc 1 2816 6 view .LVU1495
 4627 019a 9342     		cmp	r3, r2
 4628 019c 40F0B083 		bne	.L452
2819:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 4629              		.loc 1 2819 5 is_stmt 1 view .LVU1496
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4630              		.loc 1 2822 9 view .LVU1497
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4631              		.loc 1 2822 31 is_stmt 0 view .LVU1498
 4632 01a0 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
 4633              	.LVL305:
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4634              		.loc 1 2822 56 view .LVU1499
 4635 01a4 636A     		ldr	r3, [r4, #36]
 4636 01a6 FBB1     		cbz	r3, .L501
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4637              		.loc 1 2822 56 discriminator 1 view .LVU1500
 4638 01a8 012B     		cmp	r3, #1
 4639 01aa 1FD0     		beq	.L502
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4640              		.loc 1 2822 56 discriminator 3 view .LVU1501
 4641 01ac 022B     		cmp	r3, #2
 4642 01ae 1FD0     		beq	.L503
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4643              		.loc 1 2822 56 discriminator 5 view .LVU1502
 4644 01b0 032B     		cmp	r3, #3
 4645 01b2 1FD0     		beq	.L504
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4646              		.loc 1 2822 56 discriminator 7 view .LVU1503
 4647 01b4 042B     		cmp	r3, #4
 4648 01b6 1FD0     		beq	.L505
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4649              		.loc 1 2822 56 discriminator 9 view .LVU1504
 4650 01b8 052B     		cmp	r3, #5
 4651 01ba 1FD0     		beq	.L506
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4652              		.loc 1 2822 56 discriminator 11 view .LVU1505
 4653 01bc 062B     		cmp	r3, #6
 4654 01be 1FD0     		beq	.L507
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4655              		.loc 1 2822 56 discriminator 13 view .LVU1506
 4656 01c0 072B     		cmp	r3, #7
 4657 01c2 1FD0     		beq	.L508
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4658              		.loc 1 2822 56 discriminator 15 view .LVU1507
 4659 01c4 082B     		cmp	r3, #8
 4660 01c6 1FD0     		beq	.L509
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4661              		.loc 1 2822 56 discriminator 17 view .LVU1508
 4662 01c8 092B     		cmp	r3, #9
 4663 01ca 1FD0     		beq	.L510
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4664              		.loc 1 2822 56 discriminator 19 view .LVU1509
 4665 01cc 0A2B     		cmp	r3, #10
 4666 01ce 1FD0     		beq	.L511
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4667              		.loc 1 2822 56 discriminator 21 view .LVU1510
 4668 01d0 0B2B     		cmp	r3, #11
 4669 01d2 14BF     		ite	ne
 4670 01d4 0123     		movne	r3, #1
 4671 01d6 4FF48073 		moveq	r3, #256
 4672              	.L453:
2823:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_HSI:
 4673              		.loc 1 2823 9 discriminator 48 view .LVU1511
 4674 01da 0021     		movs	r1, #0
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4675              		.loc 1 2822 28 discriminator 48 view .LVU1512
 4676 01dc B0FBF3F0 		udiv	r0, r0, r3
 4677              	.LVL306:
2823:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_HSI:
 4678              		.loc 1 2823 9 is_stmt 1 discriminator 48 view .LVU1513
 4679              	.L454:
2839:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 4680              		.loc 1 2839 5 view .LVU1514
2839:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 4681              		.loc 1 2839 8 is_stmt 0 view .LVU1515
 4682 01e0 0028     		cmp	r0, #0
 4683 01e2 41D1     		bne	.L455
2839:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 4684              		.loc 1 2839 8 view .LVU1516
 4685 01e4 0246     		mov	r2, r0
 4686 01e6 46E0     		b	.L457
 4687              	.LVL307:
 4688              	.L501:
2822:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4689              		.loc 1 2822 56 view .LVU1517
 4690 01e8 0123     		movs	r3, #1
 4691 01ea F6E7     		b	.L453
 4692              	.L502:
 4693 01ec 0223     		movs	r3, #2
 4694 01ee F4E7     		b	.L453
 4695              	.L503:
 4696 01f0 0423     		movs	r3, #4
 4697 01f2 F2E7     		b	.L453
 4698              	.L504:
 4699 01f4 0623     		movs	r3, #6
 4700 01f6 F0E7     		b	.L453
 4701              	.L505:
 4702 01f8 0823     		movs	r3, #8
 4703 01fa EEE7     		b	.L453
 4704              	.L506:
 4705 01fc 0A23     		movs	r3, #10
 4706 01fe ECE7     		b	.L453
 4707              	.L507:
 4708 0200 0C23     		movs	r3, #12
 4709 0202 EAE7     		b	.L453
 4710              	.L508:
 4711 0204 1023     		movs	r3, #16
 4712 0206 E8E7     		b	.L453
 4713              	.L509:
 4714 0208 2023     		movs	r3, #32
 4715 020a E6E7     		b	.L453
 4716              	.L510:
 4717 020c 4023     		movs	r3, #64
 4718 020e E4E7     		b	.L453
 4719              	.L511:
 4720 0210 8023     		movs	r3, #128
 4721 0212 E2E7     		b	.L453
 4722              	.LVL308:
 4723              	.L495:
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4724              		.loc 1 2825 9 is_stmt 1 view .LVU1518
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4725              		.loc 1 2825 51 is_stmt 0 view .LVU1519
 4726 0214 0028     		cmp	r0, #0
 4727 0216 00F09F80 		beq	.L513
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4728              		.loc 1 2825 51 discriminator 1 view .LVU1520
 4729 021a 0128     		cmp	r0, #1
 4730 021c 00F09F80 		beq	.L514
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4731              		.loc 1 2825 51 discriminator 3 view .LVU1521
 4732 0220 0228     		cmp	r0, #2
 4733 0222 00F09F80 		beq	.L515
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4734              		.loc 1 2825 51 discriminator 5 view .LVU1522
 4735 0226 0328     		cmp	r0, #3
 4736 0228 4FF00201 		mov	r1, #2
 4737 022c 00F09D80 		beq	.L516
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4738              		.loc 1 2825 51 discriminator 7 view .LVU1523
 4739 0230 0428     		cmp	r0, #4
 4740 0232 00F09C80 		beq	.L517
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4741              		.loc 1 2825 51 discriminator 9 view .LVU1524
 4742 0236 0528     		cmp	r0, #5
 4743 0238 00F09B80 		beq	.L518
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4744              		.loc 1 2825 51 discriminator 11 view .LVU1525
 4745 023c 0628     		cmp	r0, #6
 4746 023e 00F09A80 		beq	.L519
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4747              		.loc 1 2825 51 discriminator 13 view .LVU1526
 4748 0242 0728     		cmp	r0, #7
 4749 0244 00F09980 		beq	.L520
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4750              		.loc 1 2825 51 discriminator 15 view .LVU1527
 4751 0248 0828     		cmp	r0, #8
 4752 024a 00F09880 		beq	.L521
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4753              		.loc 1 2825 51 discriminator 17 view .LVU1528
 4754 024e 0928     		cmp	r0, #9
 4755 0250 00F09780 		beq	.L522
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4756              		.loc 1 2825 51 discriminator 19 view .LVU1529
 4757 0254 0A28     		cmp	r0, #10
 4758 0256 00F09680 		beq	.L523
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4759              		.loc 1 2825 51 discriminator 21 view .LVU1530
 4760 025a 304B     		ldr	r3, .L895+36
 4761              	.LVL309:
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4762              		.loc 1 2825 51 discriminator 21 view .LVU1531
 4763 025c 4FF22442 		movw	r2, #62500
 4764              	.LVL310:
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4765              		.loc 1 2825 51 discriminator 21 view .LVU1532
 4766 0260 0B28     		cmp	r0, #11
 4767 0262 14BF     		ite	ne
 4768 0264 1846     		movne	r0, r3
 4769 0266 1046     		moveq	r0, r2
 4770              	.LVL311:
 4771              	.L455:
2842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           (lpuart_ker_ck_pres > (4096U * huart->Init.BaudRate)))
 4772              		.loc 1 2842 7 is_stmt 1 view .LVU1533
2842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           (lpuart_ker_ck_pres > (4096U * huart->Init.BaudRate)))
 4773              		.loc 1 2842 50 is_stmt 0 view .LVU1534
 4774 0268 6268     		ldr	r2, [r4, #4]
2842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           (lpuart_ker_ck_pres > (4096U * huart->Init.BaudRate)))
 4775              		.loc 1 2842 37 view .LVU1535
 4776 026a 02EB4203 		add	r3, r2, r2, lsl #1
2842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           (lpuart_ker_ck_pres > (4096U * huart->Init.BaudRate)))
 4777              		.loc 1 2842 10 view .LVU1536
 4778 026e 8342     		cmp	r3, r0
 4779 0270 40F2AC80 		bls	.L458
 4780              	.LVL312:
 4781              	.L459:
2845:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 4782              		.loc 1 2845 13 view .LVU1537
 4783 0274 0122     		movs	r2, #1
 4784              	.L457:
 4785              	.LVL313:
2961:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->NbRxDataToProcess = 1;
 4786              		.loc 1 2961 3 is_stmt 1 view .LVU1538
2962:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4787              		.loc 1 2962 3 view .LVU1539
2965:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxISR = NULL;
 4788              		.loc 1 2965 3 view .LVU1540
2966:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4789              		.loc 1 2966 3 view .LVU1541
2965:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->TxISR = NULL;
 4790              		.loc 1 2965 16 is_stmt 0 view .LVU1542
 4791 0276 0023     		movs	r3, #0
 4792 0278 4FF00111 		mov	r1, #65537
 4793 027c C4E91A13 		strd	r1, r3, [r4, #104]
2966:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4794              		.loc 1 2966 16 view .LVU1543
 4795 0280 2367     		str	r3, [r4, #112]
2968:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 4796              		.loc 1 2968 3 is_stmt 1 view .LVU1544
2969:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 4797              		.loc 1 2969 1 is_stmt 0 view .LVU1545
 4798 0282 1046     		mov	r0, r2
 4799 0284 BDE8F088 		pop	{r4, r5, r6, r7, fp, pc}
 4800              	.LVL314:
 4801              	.L499:
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4802              		.loc 1 2828 9 is_stmt 1 view .LVU1546
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4803              		.loc 1 2828 31 is_stmt 0 view .LVU1547
 4804 0288 FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 4805              	.LVL315:
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4806              		.loc 1 2828 59 view .LVU1548
 4807 028c 636A     		ldr	r3, [r4, #36]
 4808 028e E3B1     		cbz	r3, .L525
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4809              		.loc 1 2828 59 discriminator 1 view .LVU1549
 4810 0290 012B     		cmp	r3, #1
 4811 0292 1CD0     		beq	.L526
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4812              		.loc 1 2828 59 discriminator 3 view .LVU1550
 4813 0294 022B     		cmp	r3, #2
 4814 0296 1CD0     		beq	.L527
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4815              		.loc 1 2828 59 discriminator 5 view .LVU1551
 4816 0298 032B     		cmp	r3, #3
 4817 029a 1CD0     		beq	.L528
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4818              		.loc 1 2828 59 discriminator 7 view .LVU1552
 4819 029c 042B     		cmp	r3, #4
 4820 029e 1CD0     		beq	.L529
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4821              		.loc 1 2828 59 discriminator 9 view .LVU1553
 4822 02a0 052B     		cmp	r3, #5
 4823 02a2 1CD0     		beq	.L530
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4824              		.loc 1 2828 59 discriminator 11 view .LVU1554
 4825 02a4 062B     		cmp	r3, #6
 4826 02a6 1CD0     		beq	.L531
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4827              		.loc 1 2828 59 discriminator 13 view .LVU1555
 4828 02a8 072B     		cmp	r3, #7
 4829 02aa 1CD0     		beq	.L532
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4830              		.loc 1 2828 59 discriminator 15 view .LVU1556
 4831 02ac 082B     		cmp	r3, #8
 4832 02ae 1CD0     		beq	.L533
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4833              		.loc 1 2828 59 discriminator 17 view .LVU1557
 4834 02b0 092B     		cmp	r3, #9
 4835 02b2 1CD0     		beq	.L534
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4836              		.loc 1 2828 59 discriminator 19 view .LVU1558
 4837 02b4 0A2B     		cmp	r3, #10
 4838 02b6 1CD0     		beq	.L535
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4839              		.loc 1 2828 59 discriminator 21 view .LVU1559
 4840 02b8 0B2B     		cmp	r3, #11
 4841 02ba 14BF     		ite	ne
 4842 02bc 0123     		movne	r3, #1
 4843 02be 4FF48073 		moveq	r3, #256
 4844              	.L456:
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4845              		.loc 1 2828 28 discriminator 48 view .LVU1560
 4846 02c2 B0FBF3F0 		udiv	r0, r0, r3
 4847              	.LVL316:
2829:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       case UART_CLOCKSOURCE_LSE:
 4848              		.loc 1 2829 9 is_stmt 1 discriminator 48 view .LVU1561
 4849 02c6 0421     		movs	r1, #4
 4850 02c8 8AE7     		b	.L454
 4851              	.LVL317:
 4852              	.L525:
2828:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4853              		.loc 1 2828 59 is_stmt 0 view .LVU1562
 4854 02ca 0123     		movs	r3, #1
 4855 02cc F9E7     		b	.L456
 4856              	.L526:
 4857 02ce 0223     		movs	r3, #2
 4858 02d0 F7E7     		b	.L456
 4859              	.L527:
 4860 02d2 0423     		movs	r3, #4
 4861 02d4 F5E7     		b	.L456
 4862              	.L528:
 4863 02d6 0623     		movs	r3, #6
 4864 02d8 F3E7     		b	.L456
 4865              	.L529:
 4866 02da 0823     		movs	r3, #8
 4867 02dc F1E7     		b	.L456
 4868              	.L530:
 4869 02de 0A23     		movs	r3, #10
 4870 02e0 EFE7     		b	.L456
 4871              	.L531:
 4872 02e2 0C23     		movs	r3, #12
 4873 02e4 EDE7     		b	.L456
 4874              	.L532:
 4875 02e6 1023     		movs	r3, #16
 4876 02e8 EBE7     		b	.L456
 4877              	.L533:
 4878 02ea 2023     		movs	r3, #32
 4879 02ec E9E7     		b	.L456
 4880              	.L534:
 4881 02ee 4023     		movs	r3, #64
 4882 02f0 E7E7     		b	.L456
 4883              	.L535:
 4884 02f2 8023     		movs	r3, #128
 4885 02f4 E5E7     		b	.L456
 4886              	.L896:
 4887 02f6 00BF     		.align	2
 4888              	.L895:
 4889 02f8 F369FFCF 		.word	-805344781
 4890 02fc 00800040 		.word	1073774592
 4891 0300 00380140 		.word	1073821696
 4892 0304 00100240 		.word	1073876992
 4893 0308 00000000 		.word	.LANCHOR0
 4894 030c 00440040 		.word	1073759232
 4895 0310 00000000 		.word	.LANCHOR1
 4896 0314 00480040 		.word	1073760256
 4897 0318 004C0040 		.word	1073761280
 4898 031c 0024F400 		.word	16000000
 4899              	.LVL318:
 4900              	.L497:
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4901              		.loc 1 2831 9 is_stmt 1 view .LVU1563
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4902              		.loc 1 2831 51 is_stmt 0 view .LVU1564
 4903 0320 0821     		movs	r1, #8
 4904 0322 90B3     		cbz	r0, .L537
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4905              		.loc 1 2831 51 discriminator 1 view .LVU1565
 4906 0324 0128     		cmp	r0, #1
 4907 0326 33D0     		beq	.L538
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4908              		.loc 1 2831 51 discriminator 3 view .LVU1566
 4909 0328 0228     		cmp	r0, #2
 4910 032a 34D0     		beq	.L539
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4911              		.loc 1 2831 51 discriminator 5 view .LVU1567
 4912 032c 0328     		cmp	r0, #3
 4913 032e 35D0     		beq	.L540
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4914              		.loc 1 2831 51 discriminator 7 view .LVU1568
 4915 0330 0428     		cmp	r0, #4
 4916 0332 36D0     		beq	.L541
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4917              		.loc 1 2831 51 discriminator 9 view .LVU1569
 4918 0334 0528     		cmp	r0, #5
 4919 0336 37D0     		beq	.L542
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4920              		.loc 1 2831 51 discriminator 11 view .LVU1570
 4921 0338 0628     		cmp	r0, #6
 4922 033a 38D0     		beq	.L543
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4923              		.loc 1 2831 51 discriminator 13 view .LVU1571
 4924 033c 0728     		cmp	r0, #7
 4925 033e 39D0     		beq	.L544
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4926              		.loc 1 2831 51 discriminator 15 view .LVU1572
 4927 0340 0828     		cmp	r0, #8
 4928 0342 3AD0     		beq	.L545
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4929              		.loc 1 2831 51 discriminator 17 view .LVU1573
 4930 0344 0928     		cmp	r0, #9
 4931 0346 3BD0     		beq	.L546
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4932              		.loc 1 2831 51 discriminator 19 view .LVU1574
 4933 0348 0A28     		cmp	r0, #10
 4934 034a 3CD0     		beq	.L547
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4935              		.loc 1 2831 51 discriminator 21 view .LVU1575
 4936 034c 0B28     		cmp	r0, #11
 4937 034e 0CBF     		ite	eq
 4938 0350 8020     		moveq	r0, #128
 4939 0352 4FF40040 		movne	r0, #32768
 4940 0356 87E7     		b	.L455
 4941              	.LVL319:
 4942              	.L513:
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4943              		.loc 1 2831 51 discriminator 21 view .LVU1576
 4944 0358 0221     		movs	r1, #2
2825:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4945              		.loc 1 2825 51 view .LVU1577
 4946 035a A348     		ldr	r0, .L897+16
 4947 035c 84E7     		b	.L455
 4948              	.L514:
 4949 035e 0221     		movs	r1, #2
 4950 0360 A248     		ldr	r0, .L897+20
 4951 0362 81E7     		b	.L455
 4952              	.L515:
 4953 0364 0146     		mov	r1, r0
 4954 0366 A248     		ldr	r0, .L897+24
 4955 0368 7EE7     		b	.L455
 4956              	.L516:
 4957 036a A248     		ldr	r0, .L897+28
 4958 036c 7CE7     		b	.L455
 4959              	.L517:
 4960 036e A248     		ldr	r0, .L897+32
 4961 0370 7AE7     		b	.L455
 4962              	.L518:
 4963 0372 A248     		ldr	r0, .L897+36
 4964 0374 78E7     		b	.L455
 4965              	.L519:
 4966 0376 A248     		ldr	r0, .L897+40
 4967 0378 76E7     		b	.L455
 4968              	.L520:
 4969 037a A248     		ldr	r0, .L897+44
 4970 037c 74E7     		b	.L455
 4971              	.L521:
 4972 037e A248     		ldr	r0, .L897+48
 4973 0380 72E7     		b	.L455
 4974              	.L522:
 4975 0382 A248     		ldr	r0, .L897+52
 4976 0384 70E7     		b	.L455
 4977              	.L523:
 4978 0386 A248     		ldr	r0, .L897+56
 4979 0388 6EE7     		b	.L455
 4980              	.LVL320:
 4981              	.L537:
2831:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 4982              		.loc 1 2831 51 view .LVU1578
 4983 038a 4FF40040 		mov	r0, #32768
 4984 038e 6BE7     		b	.L455
 4985              	.L538:
 4986 0390 4FF48040 		mov	r0, #16384
 4987 0394 68E7     		b	.L455
 4988              	.L539:
 4989 0396 4FF40050 		mov	r0, #8192
 4990 039a 65E7     		b	.L455
 4991              	.L540:
 4992 039c 41F25550 		movw	r0, #5461
 4993 03a0 62E7     		b	.L455
 4994              	.L541:
 4995 03a2 4FF48050 		mov	r0, #4096
 4996 03a6 5FE7     		b	.L455
 4997              	.L542:
 4998 03a8 40F6CC40 		movw	r0, #3276
 4999 03ac 5CE7     		b	.L455
 5000              	.L543:
 5001 03ae 40F6AA20 		movw	r0, #2730
 5002 03b2 59E7     		b	.L455
 5003              	.L544:
 5004 03b4 4FF40060 		mov	r0, #2048
 5005 03b8 56E7     		b	.L455
 5006              	.L545:
 5007 03ba 4FF48060 		mov	r0, #1024
 5008 03be 53E7     		b	.L455
 5009              	.L546:
 5010 03c0 4FF40070 		mov	r0, #512
 5011 03c4 50E7     		b	.L455
 5012              	.L547:
 5013 03c6 4FF48070 		mov	r0, #256
 5014 03ca 4DE7     		b	.L455
 5015              	.LVL321:
 5016              	.L458:
2842:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           (lpuart_ker_ck_pres > (4096U * huart->Init.BaudRate)))
 5017              		.loc 1 2842 62 discriminator 1 view .LVU1579
 5018 03cc B0EB023F 		cmp	r0, r2, lsl #12
 5019 03d0 3FF650AF 		bhi	.L459
2849:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 5020              		.loc 1 2849 9 is_stmt 1 view .LVU1580
 5021 03d4 0829     		cmp	r1, #8
 5022 03d6 00F2D180 		bhi	.L550
 5023 03da DFE801F0 		tbb	[pc, r1]
 5024              	.L462:
 5025 03de 05       		.byte	(.L465-.L462)/2
 5026 03df CF       		.byte	(.L550-.L462)/2
 5027 03e0 41       		.byte	(.L464-.L462)/2
 5028 03e1 CF       		.byte	(.L550-.L462)/2
 5029 03e2 7D       		.byte	(.L463-.L462)/2
 5030 03e3 CF       		.byte	(.L550-.L462)/2
 5031 03e4 CF       		.byte	(.L550-.L462)/2
 5032 03e5 CF       		.byte	(.L550-.L462)/2
 5033 03e6 96       		.byte	(.L461-.L462)/2
 5034 03e7 00       		.p2align 1
 5035              	.L465:
2852:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5036              		.loc 1 2852 13 view .LVU1581
2852:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5037              		.loc 1 2852 20 is_stmt 0 view .LVU1582
 5038 03e8 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
 5039              	.LVL322:
2853:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5040              		.loc 1 2853 13 is_stmt 1 view .LVU1583
 5041              	.L894:
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5042              		.loc 1 2860 13 view .LVU1584
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5043              		.loc 1 2860 35 is_stmt 0 view .LVU1585
 5044 03ec 636A     		ldr	r3, [r4, #36]
 5045 03ee 002B     		cmp	r3, #0
 5046 03f0 00F08980 		beq	.L586
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5047              		.loc 1 2860 35 discriminator 1 view .LVU1586
 5048 03f4 012B     		cmp	r3, #1
 5049 03f6 72D0     		beq	.L576
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5050              		.loc 1 2860 35 discriminator 3 view .LVU1587
 5051 03f8 022B     		cmp	r3, #2
 5052 03fa 72D0     		beq	.L577
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5053              		.loc 1 2860 35 discriminator 5 view .LVU1588
 5054 03fc 032B     		cmp	r3, #3
 5055 03fe 72D0     		beq	.L578
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5056              		.loc 1 2860 35 discriminator 7 view .LVU1589
 5057 0400 042B     		cmp	r3, #4
 5058 0402 72D0     		beq	.L579
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5059              		.loc 1 2860 35 discriminator 9 view .LVU1590
 5060 0404 052B     		cmp	r3, #5
 5061 0406 72D0     		beq	.L580
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5062              		.loc 1 2860 35 discriminator 11 view .LVU1591
 5063 0408 062B     		cmp	r3, #6
 5064 040a 72D0     		beq	.L581
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5065              		.loc 1 2860 35 discriminator 13 view .LVU1592
 5066 040c 072B     		cmp	r3, #7
 5067 040e 72D0     		beq	.L582
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5068              		.loc 1 2860 35 discriminator 15 view .LVU1593
 5069 0410 082B     		cmp	r3, #8
 5070 0412 72D0     		beq	.L583
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5071              		.loc 1 2860 35 discriminator 17 view .LVU1594
 5072 0414 092B     		cmp	r3, #9
 5073 0416 72D0     		beq	.L584
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5074              		.loc 1 2860 35 discriminator 19 view .LVU1595
 5075 0418 0A2B     		cmp	r3, #10
 5076 041a 72D0     		beq	.L585
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5077              		.loc 1 2860 35 discriminator 21 view .LVU1596
 5078 041c 0B2B     		cmp	r3, #11
 5079 041e 72D1     		bne	.L586
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5080              		.loc 1 2860 35 view .LVU1597
 5081 0420 4FF48072 		mov	r2, #256
 5082              	.L776:
 5083 0424 0023     		movs	r3, #0
 5084 0426 0021     		movs	r1, #0
 5085 0428 FFF7FEFF 		bl	__aeabi_uldivmod
 5086              	.LVL323:
 5087 042c 6568     		ldr	r5, [r4, #4]
 5088 042e 0F02     		lsls	r7, r1, #8
 5089 0430 47EA1067 		orr	r7, r7, r0, lsr #24
 5090 0434 0602     		lsls	r6, r0, #8
 5091 0436 6808     		lsrs	r0, r5, #1
 5092 0438 16EB000B 		adds	fp, r6, r0
 5093 043c 47F1000C 		adc	ip, r7, #0
 5094 0440 2A46     		mov	r2, r5
 5095 0442 0023     		movs	r3, #0
 5096 0444 5846     		mov	r0, fp
 5097 0446 6146     		mov	r1, ip
 5098              	.L778:
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5099              		.loc 1 2863 35 discriminator 48 view .LVU1598
 5100 0448 FFF7FEFF 		bl	__aeabi_uldivmod
 5101              	.LVL324:
2864:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****           default:
 5102              		.loc 1 2864 13 is_stmt 1 discriminator 48 view .LVU1599
 5103 044c 0022     		movs	r2, #0
 5104              	.LVL325:
 5105              	.L460:
2871:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 5106              		.loc 1 2871 9 view .LVU1600
2871:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 5107              		.loc 1 2871 12 is_stmt 0 view .LVU1601
 5108 044e 714B     		ldr	r3, .L897+60
2871:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 5109              		.loc 1 2871 42 view .LVU1602
 5110 0450 A0F54071 		sub	r1, r0, #768
2871:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         {
 5111              		.loc 1 2871 12 view .LVU1603
 5112 0454 9942     		cmp	r1, r3
 5113 0456 3FF60DAF 		bhi	.L459
2873:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 5114              		.loc 1 2873 11 is_stmt 1 view .LVU1604
2873:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 5115              		.loc 1 2873 16 is_stmt 0 view .LVU1605
 5116 045a 2368     		ldr	r3, [r4]
2873:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         }
 5117              		.loc 1 2873 32 view .LVU1606
 5118 045c D860     		str	r0, [r3, #12]
 5119 045e 0AE7     		b	.L457
 5120              	.LVL326:
 5121              	.L464:
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5122              		.loc 1 2856 13 is_stmt 1 view .LVU1607
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5123              		.loc 1 2856 35 is_stmt 0 view .LVU1608
 5124 0460 636A     		ldr	r3, [r4, #36]
 5125 0462 002B     		cmp	r3, #0
 5126 0464 36D0     		beq	.L574
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5127              		.loc 1 2856 35 discriminator 1 view .LVU1609
 5128 0466 012B     		cmp	r3, #1
 5129 0468 16D0     		beq	.L564
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5130              		.loc 1 2856 35 discriminator 3 view .LVU1610
 5131 046a 022B     		cmp	r3, #2
 5132 046c 16D0     		beq	.L565
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5133              		.loc 1 2856 35 discriminator 5 view .LVU1611
 5134 046e 032B     		cmp	r3, #3
 5135 0470 16D0     		beq	.L566
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5136              		.loc 1 2856 35 discriminator 7 view .LVU1612
 5137 0472 042B     		cmp	r3, #4
 5138 0474 1ED0     		beq	.L567
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5139              		.loc 1 2856 35 discriminator 9 view .LVU1613
 5140 0476 052B     		cmp	r3, #5
 5141 0478 1ED0     		beq	.L568
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5142              		.loc 1 2856 35 discriminator 11 view .LVU1614
 5143 047a 062B     		cmp	r3, #6
 5144 047c 1ED0     		beq	.L569
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5145              		.loc 1 2856 35 discriminator 13 view .LVU1615
 5146 047e 072B     		cmp	r3, #7
 5147 0480 20D0     		beq	.L570
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5148              		.loc 1 2856 35 discriminator 15 view .LVU1616
 5149 0482 082B     		cmp	r3, #8
 5150 0484 20D0     		beq	.L571
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5151              		.loc 1 2856 35 discriminator 17 view .LVU1617
 5152 0486 092B     		cmp	r3, #9
 5153 0488 20D0     		beq	.L572
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5154              		.loc 1 2856 35 discriminator 19 view .LVU1618
 5155 048a 0A2B     		cmp	r3, #10
 5156 048c 20D0     		beq	.L573
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5157              		.loc 1 2856 35 discriminator 21 view .LVU1619
 5158 048e 0B2B     		cmp	r3, #11
 5159 0490 20D1     		bne	.L574
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5160              		.loc 1 2856 35 view .LVU1620
 5161 0492 554E     		ldr	r6, .L897+16
 5162              	.L777:
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5163              		.loc 1 2863 35 view .LVU1621
 5164 0494 0027     		movs	r7, #0
 5165 0496 06E0     		b	.L779
 5166              	.L564:
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5167              		.loc 1 2856 35 view .LVU1622
 5168 0498 5F4E     		ldr	r6, .L897+64
 5169 049a FBE7     		b	.L777
 5170              	.L565:
 5171 049c 5F4E     		ldr	r6, .L897+68
 5172 049e F9E7     		b	.L777
 5173              	.L566:
 5174 04a0 4DA7     		adr	r7, .L897
 5175 04a2 D7E90067 		ldrd	r6, [r7]
 5176              	.L779:
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5177              		.loc 1 2863 35 discriminator 48 view .LVU1623
 5178 04a6 5508     		lsrs	r5, r2, #1
 5179 04a8 7019     		adds	r0, r6, r5
 5180 04aa 4FF00003 		mov	r3, #0
 5181 04ae 47F10001 		adc	r1, r7, #0
 5182 04b2 C9E7     		b	.L778
 5183              	.L567:
2856:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5184              		.loc 1 2856 35 view .LVU1624
 5185 04b4 5A4E     		ldr	r6, .L897+72
 5186 04b6 EDE7     		b	.L777
 5187              	.L568:
 5188 04b8 5A4E     		ldr	r6, .L897+76
 5189 04ba EBE7     		b	.L777
 5190              	.L569:
 5191 04bc 48A7     		adr	r7, .L897+8
 5192 04be D7E90067 		ldrd	r6, [r7]
 5193 04c2 F0E7     		b	.L779
 5194              	.L570:
 5195 04c4 584E     		ldr	r6, .L897+80
 5196 04c6 E5E7     		b	.L777
 5197              	.L571:
 5198 04c8 584E     		ldr	r6, .L897+84
 5199 04ca E3E7     		b	.L777
 5200              	.L572:
 5201 04cc 584E     		ldr	r6, .L897+88
 5202 04ce E1E7     		b	.L777
 5203              	.L573:
 5204 04d0 584E     		ldr	r6, .L897+92
 5205 04d2 DFE7     		b	.L777
 5206              	.L574:
 5207 04d4 584E     		ldr	r6, .L897+96
 5208 04d6 DDE7     		b	.L777
 5209              	.L463:
2859:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5210              		.loc 1 2859 13 is_stmt 1 view .LVU1625
2859:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             usartdiv = (uint32_t)(UART_DIV_LPUART(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5211              		.loc 1 2859 20 is_stmt 0 view .LVU1626
 5212 04d8 FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 5213              	.LVL327:
 5214 04dc 86E7     		b	.L894
 5215              	.L576:
2860:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5216              		.loc 1 2860 35 view .LVU1627
 5217 04de 0222     		movs	r2, #2
 5218 04e0 A0E7     		b	.L776
 5219              	.L577:
 5220 04e2 0422     		movs	r2, #4
 5221 04e4 9EE7     		b	.L776
 5222              	.L578:
 5223 04e6 0622     		movs	r2, #6
 5224 04e8 9CE7     		b	.L776
 5225              	.L579:
 5226 04ea 0822     		movs	r2, #8
 5227 04ec 9AE7     		b	.L776
 5228              	.L580:
 5229 04ee 0A22     		movs	r2, #10
 5230 04f0 98E7     		b	.L776
 5231              	.L581:
 5232 04f2 0C22     		movs	r2, #12
 5233 04f4 96E7     		b	.L776
 5234              	.L582:
 5235 04f6 1022     		movs	r2, #16
 5236 04f8 94E7     		b	.L776
 5237              	.L583:
 5238 04fa 2022     		movs	r2, #32
 5239 04fc 92E7     		b	.L776
 5240              	.L584:
 5241 04fe 4022     		movs	r2, #64
 5242 0500 90E7     		b	.L776
 5243              	.L585:
 5244 0502 8022     		movs	r2, #128
 5245 0504 8EE7     		b	.L776
 5246              	.L586:
 5247 0506 0122     		movs	r2, #1
 5248 0508 8CE7     		b	.L776
 5249              	.L461:
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5250              		.loc 1 2863 13 is_stmt 1 view .LVU1628
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5251              		.loc 1 2863 35 is_stmt 0 view .LVU1629
 5252 050a 636A     		ldr	r3, [r4, #36]
 5253 050c 9BB3     		cbz	r3, .L598
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5254              		.loc 1 2863 35 discriminator 1 view .LVU1630
 5255 050e 012B     		cmp	r3, #1
 5256 0510 16D0     		beq	.L588
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5257              		.loc 1 2863 35 discriminator 3 view .LVU1631
 5258 0512 022B     		cmp	r3, #2
 5259 0514 17D0     		beq	.L589
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5260              		.loc 1 2863 35 discriminator 5 view .LVU1632
 5261 0516 032B     		cmp	r3, #3
 5262 0518 18D0     		beq	.L590
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5263              		.loc 1 2863 35 discriminator 7 view .LVU1633
 5264 051a 042B     		cmp	r3, #4
 5265 051c 18D0     		beq	.L591
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5266              		.loc 1 2863 35 discriminator 9 view .LVU1634
 5267 051e 052B     		cmp	r3, #5
 5268 0520 19D0     		beq	.L592
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5269              		.loc 1 2863 35 discriminator 11 view .LVU1635
 5270 0522 062B     		cmp	r3, #6
 5271 0524 19D0     		beq	.L593
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5272              		.loc 1 2863 35 discriminator 13 view .LVU1636
 5273 0526 072B     		cmp	r3, #7
 5274 0528 19D0     		beq	.L594
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5275              		.loc 1 2863 35 discriminator 15 view .LVU1637
 5276 052a 082B     		cmp	r3, #8
 5277 052c 1AD0     		beq	.L595
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5278              		.loc 1 2863 35 discriminator 17 view .LVU1638
 5279 052e 092B     		cmp	r3, #9
 5280 0530 1BD0     		beq	.L596
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5281              		.loc 1 2863 35 discriminator 19 view .LVU1639
 5282 0532 0A2B     		cmp	r3, #10
 5283 0534 1CD0     		beq	.L597
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5284              		.loc 1 2863 35 discriminator 21 view .LVU1640
 5285 0536 0B2B     		cmp	r3, #11
 5286 0538 1DD1     		bne	.L598
2863:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5287              		.loc 1 2863 35 view .LVU1641
 5288 053a 4FF40046 		mov	r6, #32768
 5289 053e A9E7     		b	.L777
 5290              	.L588:
 5291 0540 4FF48006 		mov	r6, #4194304
 5292 0544 A6E7     		b	.L777
 5293              	.L589:
 5294 0546 4FF40016 		mov	r6, #2097152
 5295 054a A3E7     		b	.L777
 5296              	.L590:
 5297 054c 3B4E     		ldr	r6, .L897+100
 5298 054e A1E7     		b	.L777
 5299              	.L591:
 5300 0550 4FF48016 		mov	r6, #1048576
 5301 0554 9EE7     		b	.L777
 5302              	.L592:
 5303 0556 3A4E     		ldr	r6, .L897+104
 5304 0558 9CE7     		b	.L777
 5305              	.L593:
 5306 055a 3A4E     		ldr	r6, .L897+108
 5307 055c 9AE7     		b	.L777
 5308              	.L594:
 5309 055e 4FF40026 		mov	r6, #524288
 5310 0562 97E7     		b	.L777
 5311              	.L595:
 5312 0564 4FF48026 		mov	r6, #262144
 5313 0568 94E7     		b	.L777
 5314              	.L596:
 5315 056a 4FF40036 		mov	r6, #131072
 5316 056e 91E7     		b	.L777
 5317              	.L597:
 5318 0570 4FF48036 		mov	r6, #65536
 5319 0574 8EE7     		b	.L777
 5320              	.L598:
 5321 0576 4FF40006 		mov	r6, #8388608
 5322 057a 8BE7     		b	.L777
 5323              	.L550:
2866:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****             break;
 5324              		.loc 1 2866 17 view .LVU1642
 5325 057c 0122     		movs	r2, #1
2753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_StatusTypeDef ret               = HAL_OK;
 5326              		.loc 1 2753 12 view .LVU1643
 5327 057e 0020     		movs	r0, #0
 5328 0580 65E7     		b	.L460
 5329              	.LVL328:
 5330              	.L476:
2892:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
 5331              		.loc 1 2892 9 is_stmt 1 view .LVU1644
2892:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
 5332              		.loc 1 2892 16 is_stmt 0 view .LVU1645
 5333 0582 FFF7FEFF 		bl	HAL_RCC_GetPCLK2Freq
 5334              	.LVL329:
2893:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5335              		.loc 1 2893 9 is_stmt 1 view .LVU1646
 5336 0586 C1E1     		b	.L889
 5337              	.LVL330:
 5338              	.L624:
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5339              		.loc 1 2896 31 is_stmt 0 view .LVU1647
 5340 0588 2A48     		ldr	r0, .L897+92
 5341 058a 98E1     		b	.L480
 5342              	.L625:
 5343 058c 1648     		ldr	r0, .L897+16
 5344 058e 96E1     		b	.L480
 5345              	.L626:
 5346 0590 1648     		ldr	r0, .L897+20
 5347 0592 94E1     		b	.L480
 5348              	.L627:
 5349 0594 2C48     		ldr	r0, .L897+112
 5350 0596 92E1     		b	.L480
 5351              	.L628:
 5352 0598 1548     		ldr	r0, .L897+24
 5353 059a 90E1     		b	.L480
 5354              	.L629:
 5355 059c 2B48     		ldr	r0, .L897+116
 5356 059e 8EE1     		b	.L480
 5357              	.L630:
 5358 05a0 1448     		ldr	r0, .L897+28
 5359 05a2 8CE1     		b	.L480
 5360              	.L631:
 5361 05a4 1448     		ldr	r0, .L897+32
 5362 05a6 8AE1     		b	.L480
 5363              	.L632:
 5364 05a8 1648     		ldr	r0, .L897+44
 5365 05aa 88E1     		b	.L480
 5366              	.L633:
 5367 05ac 1648     		ldr	r0, .L897+48
 5368 05ae 86E1     		b	.L480
 5369              	.L634:
 5370 05b0 1648     		ldr	r0, .L897+52
 5371 05b2 84E1     		b	.L480
 5372              	.LVL331:
 5373              	.L636:
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5374              		.loc 1 2900 31 view .LVU1648
 5375 05b4 0122     		movs	r2, #1
 5376 05b6 D0E1     		b	.L481
 5377              	.L637:
 5378 05b8 0222     		movs	r2, #2
 5379 05ba CEE1     		b	.L481
 5380              	.L638:
 5381 05bc 0422     		movs	r2, #4
 5382 05be CCE1     		b	.L481
 5383              	.L639:
 5384 05c0 0622     		movs	r2, #6
 5385 05c2 CAE1     		b	.L481
 5386              	.L640:
 5387 05c4 0822     		movs	r2, #8
 5388 05c6 C8E1     		b	.L481
 5389              	.L641:
 5390 05c8 0A22     		movs	r2, #10
 5391 05ca C6E1     		b	.L481
 5392              	.L642:
 5393 05cc 0C22     		movs	r2, #12
 5394 05ce C4E1     		b	.L481
 5395              	.L643:
 5396 05d0 1022     		movs	r2, #16
 5397 05d2 C2E1     		b	.L481
 5398              	.L898:
 5399 05d4 AFF30080 		.align	3
 5400              	.L897:
 5401 05d8 00AAB028 		.word	682666496
 5402 05dc 00000000 		.word	0
 5403 05e0 00555814 		.word	341333248
 5404 05e4 00000000 		.word	0
 5405 05e8 0024F400 		.word	16000000
 5406 05ec 00127A00 		.word	8000000
 5407 05f0 00093D00 		.word	4000000
 5408 05f4 AAB02800 		.word	2666666
 5409 05f8 80841E00 		.word	2000000
 5410 05fc 006A1800 		.word	1600000
 5411 0600 55581400 		.word	1333333
 5412 0604 40420F00 		.word	1000000
 5413 0608 20A10700 		.word	500000
 5414 060c 90D00300 		.word	250000
 5415 0610 48E80100 		.word	125000
 5416 0614 FFFC0F00 		.word	1047807
 5417 0618 0000127A 		.word	2048000000
 5418 061c 0000093D 		.word	1024000000
 5419 0620 0080841E 		.word	512000000
 5420 0624 00006A18 		.word	409600000
 5421 0628 0040420F 		.word	256000000
 5422 062c 0020A107 		.word	128000000
 5423 0630 0090D003 		.word	64000000
 5424 0634 0048E801 		.word	32000000
 5425 0638 000024F4 		.word	-198967296
 5426 063c 00551500 		.word	1398016
 5427 0640 00CC0C00 		.word	838656
 5428 0644 00AA0A00 		.word	698880
 5429 0648 54615100 		.word	5333332
 5430 064c 00D43000 		.word	3200000
 5431              	.L644:
 5432 0650 2022     		movs	r2, #32
 5433 0652 82E1     		b	.L481
 5434              	.L645:
 5435 0654 4022     		movs	r2, #64
 5436 0656 80E1     		b	.L481
 5437              	.L646:
 5438 0658 8022     		movs	r2, #128
 5439 065a 7EE1     		b	.L481
 5440              	.LVL332:
 5441              	.L648:
2903:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5442              		.loc 1 2903 31 view .LVU1649
 5443 065c 4FF48033 		mov	r3, #65536
 5444 0660 6DE5     		b	.L482
 5445              	.L649:
 5446 0662 4FF40043 		mov	r3, #32768
 5447 0666 6AE5     		b	.L482
 5448              	.L650:
 5449 0668 4FF48043 		mov	r3, #16384
 5450 066c 67E5     		b	.L482
 5451              	.L651:
 5452 066e 42F6AA23 		movw	r3, #10922
 5453 0672 64E5     		b	.L482
 5454              	.L652:
 5455 0674 4FF40053 		mov	r3, #8192
 5456 0678 61E5     		b	.L482
 5457              	.L653:
 5458 067a 41F69813 		movw	r3, #6552
 5459 067e 5EE5     		b	.L482
 5460              	.L654:
 5461 0680 41F25453 		movw	r3, #5460
 5462 0684 5BE5     		b	.L482
 5463              	.L655:
 5464 0686 4FF48053 		mov	r3, #4096
 5465 068a 58E5     		b	.L482
 5466              	.L656:
 5467 068c 4FF40063 		mov	r3, #2048
 5468 0690 55E5     		b	.L482
 5469              	.L657:
 5470 0692 4FF48063 		mov	r3, #1024
 5471 0696 52E5     		b	.L482
 5472              	.L658:
 5473 0698 4FF40073 		mov	r3, #512
 5474 069c 4FE5     		b	.L482
 5475              	.L721:
2906:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5476              		.loc 1 2906 13 view .LVU1650
 5477 069e 0122     		movs	r2, #1
2753:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   HAL_StatusTypeDef ret               = HAL_OK;
 5478              		.loc 1 2753 12 view .LVU1651
 5479 06a0 0023     		movs	r3, #0
 5480 06a2 13E1     		b	.L471
 5481              	.LVL333:
 5482              	.L470:
2924:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 5483              		.loc 1 2924 5 is_stmt 1 view .LVU1652
 5484 06a4 082B     		cmp	r3, #8
 5485 06a6 3FF613AD 		bhi	.L660
 5486 06aa 01A2     		adr	r2, .L485
 5487 06ac 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 5488              		.p2align 2
 5489              	.L485:
 5490 06b0 D5060000 		.word	.L489+1
 5491 06b4 21070000 		.word	.L488+1
 5492 06b8 27070000 		.word	.L487+1
 5493 06bc D1000000 		.word	.L660+1
 5494 06c0 AD070000 		.word	.L486+1
 5495 06c4 D1000000 		.word	.L660+1
 5496 06c8 D1000000 		.word	.L660+1
 5497 06cc D1000000 		.word	.L660+1
 5498 06d0 DF070000 		.word	.L484+1
 5499              	.LVL334:
 5500              		.p2align 1
 5501              	.L489:
2927:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5502              		.loc 1 2927 9 view .LVU1653
2927:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5503              		.loc 1 2927 16 is_stmt 0 view .LVU1654
 5504 06d4 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
 5505              	.LVL335:
2928:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5506              		.loc 1 2928 9 is_stmt 1 view .LVU1655
 5507              	.L892:
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5508              		.loc 1 2939 9 view .LVU1656
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5509              		.loc 1 2939 31 is_stmt 0 view .LVU1657
 5510 06d8 636A     		ldr	r3, [r4, #36]
 5511 06da 002B     		cmp	r3, #0
 5512 06dc 69D0     		beq	.L697
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5513              		.loc 1 2939 31 discriminator 1 view .LVU1658
 5514 06de 012B     		cmp	r3, #1
 5515 06e0 69D0     		beq	.L698
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5516              		.loc 1 2939 31 discriminator 3 view .LVU1659
 5517 06e2 022B     		cmp	r3, #2
 5518 06e4 69D0     		beq	.L699
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5519              		.loc 1 2939 31 discriminator 5 view .LVU1660
 5520 06e6 032B     		cmp	r3, #3
 5521 06e8 69D0     		beq	.L700
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5522              		.loc 1 2939 31 discriminator 7 view .LVU1661
 5523 06ea 042B     		cmp	r3, #4
 5524 06ec 69D0     		beq	.L701
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5525              		.loc 1 2939 31 discriminator 9 view .LVU1662
 5526 06ee 052B     		cmp	r3, #5
 5527 06f0 69D0     		beq	.L702
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5528              		.loc 1 2939 31 discriminator 11 view .LVU1663
 5529 06f2 062B     		cmp	r3, #6
 5530 06f4 69D0     		beq	.L703
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5531              		.loc 1 2939 31 discriminator 13 view .LVU1664
 5532 06f6 072B     		cmp	r3, #7
 5533 06f8 69D0     		beq	.L704
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5534              		.loc 1 2939 31 discriminator 15 view .LVU1665
 5535 06fa 082B     		cmp	r3, #8
 5536 06fc 69D0     		beq	.L705
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5537              		.loc 1 2939 31 discriminator 17 view .LVU1666
 5538 06fe 092B     		cmp	r3, #9
 5539 0700 69D0     		beq	.L706
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5540              		.loc 1 2939 31 discriminator 19 view .LVU1667
 5541 0702 0A2B     		cmp	r3, #10
 5542 0704 69D0     		beq	.L707
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5543              		.loc 1 2939 31 discriminator 21 view .LVU1668
 5544 0706 0B2B     		cmp	r3, #11
 5545 0708 14BF     		ite	ne
 5546 070a 0123     		movne	r3, #1
 5547 070c 4FF48073 		moveq	r3, #256
 5548              	.L493:
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5549              		.loc 1 2939 31 discriminator 48 view .LVU1669
 5550 0710 6268     		ldr	r2, [r4, #4]
 5551 0712 B0FBF3F3 		udiv	r3, r0, r3
 5552 0716 03EB5203 		add	r3, r3, r2, lsr #1
 5553 071a B3FBF2F3 		udiv	r3, r3, r2
 5554 071e 23E0     		b	.L782
 5555              	.LVL336:
 5556              	.L488:
2931:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5557              		.loc 1 2931 9 is_stmt 1 view .LVU1670
2931:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5558              		.loc 1 2931 16 is_stmt 0 view .LVU1671
 5559 0720 FFF7FEFF 		bl	HAL_RCC_GetPCLK2Freq
 5560              	.LVL337:
2932:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5561              		.loc 1 2932 9 is_stmt 1 view .LVU1672
 5562 0724 D8E7     		b	.L892
 5563              	.LVL338:
 5564              	.L487:
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5565              		.loc 1 2935 9 view .LVU1673
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5566              		.loc 1 2935 31 is_stmt 0 view .LVU1674
 5567 0726 58B3     		cbz	r0, .L685
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5568              		.loc 1 2935 31 discriminator 1 view .LVU1675
 5569 0728 0128     		cmp	r0, #1
 5570 072a 2BD0     		beq	.L686
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5571              		.loc 1 2935 31 discriminator 3 view .LVU1676
 5572 072c 0228     		cmp	r0, #2
 5573 072e 2BD0     		beq	.L687
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5574              		.loc 1 2935 31 discriminator 5 view .LVU1677
 5575 0730 0328     		cmp	r0, #3
 5576 0732 2BD0     		beq	.L688
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5577              		.loc 1 2935 31 discriminator 7 view .LVU1678
 5578 0734 0428     		cmp	r0, #4
 5579 0736 2BD0     		beq	.L689
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5580              		.loc 1 2935 31 discriminator 9 view .LVU1679
 5581 0738 0528     		cmp	r0, #5
 5582 073a 2BD0     		beq	.L690
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5583              		.loc 1 2935 31 discriminator 11 view .LVU1680
 5584 073c 0628     		cmp	r0, #6
 5585 073e 2BD0     		beq	.L691
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5586              		.loc 1 2935 31 discriminator 13 view .LVU1681
 5587 0740 0728     		cmp	r0, #7
 5588 0742 2BD0     		beq	.L692
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5589              		.loc 1 2935 31 discriminator 15 view .LVU1682
 5590 0744 0828     		cmp	r0, #8
 5591 0746 2BD0     		beq	.L693
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5592              		.loc 1 2935 31 discriminator 17 view .LVU1683
 5593 0748 0928     		cmp	r0, #9
 5594 074a 2BD0     		beq	.L694
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5595              		.loc 1 2935 31 discriminator 19 view .LVU1684
 5596 074c 0A28     		cmp	r0, #10
 5597 074e 2BD0     		beq	.L695
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5598              		.loc 1 2935 31 discriminator 21 view .LVU1685
 5599 0750 864B     		ldr	r3, .L899
 5600 0752 4FF22442 		movw	r2, #62500
 5601 0756 0B28     		cmp	r0, #11
 5602 0758 14BF     		ite	ne
 5603 075a 1846     		movne	r0, r3
 5604 075c 1046     		moveq	r0, r2
 5605              	.L492:
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5606              		.loc 1 2935 31 discriminator 48 view .LVU1686
 5607 075e 6368     		ldr	r3, [r4, #4]
 5608 0760 00EB5300 		add	r0, r0, r3, lsr #1
 5609 0764 B0FBF3F3 		udiv	r3, r0, r3
 5610              	.LVL339:
 5611              	.L782:
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5612              		.loc 1 2935 31 discriminator 48 view .LVU1687
 5613 0768 9BB2     		uxth	r3, r3
 5614              	.LVL340:
2943:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default:
 5615              		.loc 1 2943 9 is_stmt 1 discriminator 48 view .LVU1688
2754:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t lpuart_ker_ck_pres         = 0x00000000U;
 5616              		.loc 1 2754 21 is_stmt 0 discriminator 48 view .LVU1689
 5617 076a 0022     		movs	r2, #0
 5618              	.LVL341:
 5619              	.L483:
2950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 5620              		.loc 1 2950 5 is_stmt 1 view .LVU1690
2950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 5621              		.loc 1 2950 36 is_stmt 0 view .LVU1691
 5622 076c A3F11000 		sub	r0, r3, #16
2950:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 5623              		.loc 1 2950 8 view .LVU1692
 5624 0770 4FF6EF71 		movw	r1, #65519
 5625 0774 8842     		cmp	r0, r1
 5626 0776 3FF67DAD 		bhi	.L459
2952:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 5627              		.loc 1 2952 7 is_stmt 1 view .LVU1693
2952:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 5628              		.loc 1 2952 12 is_stmt 0 view .LVU1694
 5629 077a 2168     		ldr	r1, [r4]
2952:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 5630              		.loc 1 2952 28 view .LVU1695
 5631 077c CB60     		str	r3, [r1, #12]
 5632 077e 7AE5     		b	.L457
 5633              	.LVL342:
 5634              	.L685:
2935:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5635              		.loc 1 2935 31 view .LVU1696
 5636 0780 7A48     		ldr	r0, .L899
 5637 0782 ECE7     		b	.L492
 5638              	.L686:
 5639 0784 7A48     		ldr	r0, .L899+4
 5640 0786 EAE7     		b	.L492
 5641              	.L687:
 5642 0788 7A48     		ldr	r0, .L899+8
 5643 078a E8E7     		b	.L492
 5644              	.L688:
 5645 078c 7A48     		ldr	r0, .L899+12
 5646 078e E6E7     		b	.L492
 5647              	.L689:
 5648 0790 7A48     		ldr	r0, .L899+16
 5649 0792 E4E7     		b	.L492
 5650              	.L690:
 5651 0794 7A48     		ldr	r0, .L899+20
 5652 0796 E2E7     		b	.L492
 5653              	.L691:
 5654 0798 7A48     		ldr	r0, .L899+24
 5655 079a E0E7     		b	.L492
 5656              	.L692:
 5657 079c 7A48     		ldr	r0, .L899+28
 5658 079e DEE7     		b	.L492
 5659              	.L693:
 5660 07a0 7A48     		ldr	r0, .L899+32
 5661 07a2 DCE7     		b	.L492
 5662              	.L694:
 5663 07a4 7A48     		ldr	r0, .L899+36
 5664 07a6 DAE7     		b	.L492
 5665              	.L695:
 5666 07a8 7A48     		ldr	r0, .L899+40
 5667 07aa D8E7     		b	.L492
 5668              	.L486:
2938:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5669              		.loc 1 2938 9 is_stmt 1 view .LVU1697
2938:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5670              		.loc 1 2938 16 is_stmt 0 view .LVU1698
 5671 07ac FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 5672              	.LVL343:
2938:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPres
 5673              		.loc 1 2938 16 view .LVU1699
 5674 07b0 92E7     		b	.L892
 5675              	.LVL344:
 5676              	.L697:
2939:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5677              		.loc 1 2939 31 view .LVU1700
 5678 07b2 0123     		movs	r3, #1
 5679 07b4 ACE7     		b	.L493
 5680              	.L698:
 5681 07b6 0223     		movs	r3, #2
 5682 07b8 AAE7     		b	.L493
 5683              	.L699:
 5684 07ba 0423     		movs	r3, #4
 5685 07bc A8E7     		b	.L493
 5686              	.L700:
 5687 07be 0623     		movs	r3, #6
 5688 07c0 A6E7     		b	.L493
 5689              	.L701:
 5690 07c2 0823     		movs	r3, #8
 5691 07c4 A4E7     		b	.L493
 5692              	.L702:
 5693 07c6 0A23     		movs	r3, #10
 5694 07c8 A2E7     		b	.L493
 5695              	.L703:
 5696 07ca 0C23     		movs	r3, #12
 5697 07cc A0E7     		b	.L493
 5698              	.L704:
 5699 07ce 1023     		movs	r3, #16
 5700 07d0 9EE7     		b	.L493
 5701              	.L705:
 5702 07d2 2023     		movs	r3, #32
 5703 07d4 9CE7     		b	.L493
 5704              	.L706:
 5705 07d6 4023     		movs	r3, #64
 5706 07d8 9AE7     		b	.L493
 5707              	.L707:
 5708 07da 8023     		movs	r3, #128
 5709 07dc 98E7     		b	.L493
 5710              	.LVL345:
 5711              	.L484:
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5712              		.loc 1 2942 9 is_stmt 1 view .LVU1701
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5713              		.loc 1 2942 31 is_stmt 0 view .LVU1702
 5714 07de F0B1     		cbz	r0, .L709
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5715              		.loc 1 2942 31 discriminator 1 view .LVU1703
 5716 07e0 0128     		cmp	r0, #1
 5717 07e2 1FD0     		beq	.L710
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5718              		.loc 1 2942 31 discriminator 3 view .LVU1704
 5719 07e4 0228     		cmp	r0, #2
 5720 07e6 20D0     		beq	.L711
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5721              		.loc 1 2942 31 discriminator 5 view .LVU1705
 5722 07e8 0328     		cmp	r0, #3
 5723 07ea 21D0     		beq	.L712
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5724              		.loc 1 2942 31 discriminator 7 view .LVU1706
 5725 07ec 0428     		cmp	r0, #4
 5726 07ee 22D0     		beq	.L713
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5727              		.loc 1 2942 31 discriminator 9 view .LVU1707
 5728 07f0 0528     		cmp	r0, #5
 5729 07f2 23D0     		beq	.L714
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5730              		.loc 1 2942 31 discriminator 11 view .LVU1708
 5731 07f4 0628     		cmp	r0, #6
 5732 07f6 24D0     		beq	.L715
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5733              		.loc 1 2942 31 discriminator 13 view .LVU1709
 5734 07f8 0728     		cmp	r0, #7
 5735 07fa 25D0     		beq	.L716
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5736              		.loc 1 2942 31 discriminator 15 view .LVU1710
 5737 07fc 0828     		cmp	r0, #8
 5738 07fe 26D0     		beq	.L717
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5739              		.loc 1 2942 31 discriminator 17 view .LVU1711
 5740 0800 0928     		cmp	r0, #9
 5741 0802 27D0     		beq	.L718
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5742              		.loc 1 2942 31 discriminator 19 view .LVU1712
 5743 0804 0A28     		cmp	r0, #10
 5744 0806 28D0     		beq	.L719
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5745              		.loc 1 2942 31 discriminator 21 view .LVU1713
 5746 0808 0B28     		cmp	r0, #11
 5747 080a 14BF     		ite	ne
 5748 080c 4FF40043 		movne	r3, #32768
 5749 0810 8023     		moveq	r3, #128
 5750              	.L494:
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5751              		.loc 1 2942 31 discriminator 48 view .LVU1714
 5752 0812 6068     		ldr	r0, [r4, #4]
 5753 0814 03EB5003 		add	r3, r3, r0, lsr #1
 5754 0818 B3FBF0F3 		udiv	r3, r3, r0
 5755 081c A4E7     		b	.L782
 5756              	.L709:
2942:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5757              		.loc 1 2942 31 view .LVU1715
 5758 081e 4FF40043 		mov	r3, #32768
 5759 0822 F6E7     		b	.L494
 5760              	.L710:
 5761 0824 4FF48043 		mov	r3, #16384
 5762 0828 F3E7     		b	.L494
 5763              	.L711:
 5764 082a 4FF40053 		mov	r3, #8192
 5765 082e F0E7     		b	.L494
 5766              	.L712:
 5767 0830 41F25553 		movw	r3, #5461
 5768 0834 EDE7     		b	.L494
 5769              	.L713:
 5770 0836 4FF48053 		mov	r3, #4096
 5771 083a EAE7     		b	.L494
 5772              	.L714:
 5773 083c 40F6CC43 		movw	r3, #3276
 5774 0840 E7E7     		b	.L494
 5775              	.L715:
 5776 0842 40F6AA23 		movw	r3, #2730
 5777 0846 E4E7     		b	.L494
 5778              	.L716:
 5779 0848 4FF40063 		mov	r3, #2048
 5780 084c E1E7     		b	.L494
 5781              	.L717:
 5782 084e 4FF48063 		mov	r3, #1024
 5783 0852 DEE7     		b	.L494
 5784              	.L718:
 5785 0854 4FF40073 		mov	r3, #512
 5786 0858 DBE7     		b	.L494
 5787              	.L719:
 5788 085a 4FF48073 		mov	r3, #256
 5789 085e D8E7     		b	.L494
 5790              	.LVL346:
 5791              	.L446:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5792              		.loc 1 2816 3 is_stmt 1 view .LVU1716
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5793              		.loc 1 2816 6 is_stmt 0 view .LVU1717
 5794 0860 4D4A     		ldr	r2, .L899+44
 5795              	.LVL347:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5796              		.loc 1 2816 6 view .LVU1718
 5797 0862 9342     		cmp	r3, r2
 5798 0864 3FF4D6AC 		beq	.L495
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5799              		.loc 1 2883 8 is_stmt 1 view .LVU1719
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5800              		.loc 1 2883 11 is_stmt 0 view .LVU1720
 5801 0868 B1F5004F 		cmp	r1, #32768
 5802 086c 7FF45BAF 		bne	.L487
 5803              	.LVL348:
 5804              	.L475:
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5805              		.loc 1 2896 9 is_stmt 1 view .LVU1721
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5806              		.loc 1 2896 31 is_stmt 0 view .LVU1722
 5807 0870 0028     		cmp	r0, #0
 5808 0872 3FF489AE 		beq	.L624
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5809              		.loc 1 2896 31 discriminator 1 view .LVU1723
 5810 0876 0128     		cmp	r0, #1
 5811 0878 3FF488AE 		beq	.L625
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5812              		.loc 1 2896 31 discriminator 3 view .LVU1724
 5813 087c 0228     		cmp	r0, #2
 5814 087e 3FF487AE 		beq	.L626
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5815              		.loc 1 2896 31 discriminator 5 view .LVU1725
 5816 0882 0328     		cmp	r0, #3
 5817 0884 3FF486AE 		beq	.L627
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5818              		.loc 1 2896 31 discriminator 7 view .LVU1726
 5819 0888 0428     		cmp	r0, #4
 5820 088a 3FF485AE 		beq	.L628
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5821              		.loc 1 2896 31 discriminator 9 view .LVU1727
 5822 088e 0528     		cmp	r0, #5
 5823 0890 3FF484AE 		beq	.L629
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5824              		.loc 1 2896 31 discriminator 11 view .LVU1728
 5825 0894 0628     		cmp	r0, #6
 5826 0896 3FF483AE 		beq	.L630
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5827              		.loc 1 2896 31 discriminator 13 view .LVU1729
 5828 089a 0728     		cmp	r0, #7
 5829 089c 3FF482AE 		beq	.L631
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5830              		.loc 1 2896 31 discriminator 15 view .LVU1730
 5831 08a0 0828     		cmp	r0, #8
 5832 08a2 3FF481AE 		beq	.L632
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5833              		.loc 1 2896 31 discriminator 17 view .LVU1731
 5834 08a6 0928     		cmp	r0, #9
 5835 08a8 3FF480AE 		beq	.L633
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5836              		.loc 1 2896 31 discriminator 19 view .LVU1732
 5837 08ac 0A28     		cmp	r0, #10
 5838 08ae 3FF47FAE 		beq	.L634
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5839              		.loc 1 2896 31 discriminator 21 view .LVU1733
 5840 08b2 3A4B     		ldr	r3, .L899+48
 5841 08b4 374A     		ldr	r2, .L899+40
 5842 08b6 0B28     		cmp	r0, #11
 5843 08b8 14BF     		ite	ne
 5844 08ba 1846     		movne	r0, r3
 5845 08bc 1046     		moveq	r0, r2
 5846              	.L480:
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5847              		.loc 1 2896 31 discriminator 48 view .LVU1734
 5848 08be 6368     		ldr	r3, [r4, #4]
 5849 08c0 00EB5300 		add	r0, r0, r3, lsr #1
 5850 08c4 B0FBF3F3 		udiv	r3, r0, r3
 5851              	.LVL349:
 5852              	.L781:
2896:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5853              		.loc 1 2896 31 discriminator 48 view .LVU1735
 5854 08c8 9BB2     		uxth	r3, r3
 5855              	.LVL350:
2904:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       default:
 5856              		.loc 1 2904 9 is_stmt 1 discriminator 48 view .LVU1736
2754:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t lpuart_ker_ck_pres         = 0x00000000U;
 5857              		.loc 1 2754 21 is_stmt 0 discriminator 48 view .LVU1737
 5858 08ca 0022     		movs	r2, #0
 5859              	.LVL351:
 5860              	.L471:
2911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 5861              		.loc 1 2911 5 is_stmt 1 view .LVU1738
2911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 5862              		.loc 1 2911 36 is_stmt 0 view .LVU1739
 5863 08cc A3F11000 		sub	r0, r3, #16
2911:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 5864              		.loc 1 2911 8 view .LVU1740
 5865 08d0 4FF6EF71 		movw	r1, #65519
 5866 08d4 8842     		cmp	r0, r1
 5867 08d6 3FF6CDAC 		bhi	.L459
2913:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       brrtemp |= (uint16_t)((usartdiv & (uint16_t)0x000FU) >> 1U);
 5868              		.loc 1 2913 7 is_stmt 1 view .LVU1741
2913:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       brrtemp |= (uint16_t)((usartdiv & (uint16_t)0x000FU) >> 1U);
 5869              		.loc 1 2913 15 is_stmt 0 view .LVU1742
 5870 08da 23F00F01 		bic	r1, r3, #15
 5871              	.LVL352:
2914:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->Instance->BRR = brrtemp;
 5872              		.loc 1 2914 7 is_stmt 1 view .LVU1743
2915:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 5873              		.loc 1 2915 7 view .LVU1744
2915:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 5874              		.loc 1 2915 12 is_stmt 0 view .LVU1745
 5875 08de 2068     		ldr	r0, [r4]
2914:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       huart->Instance->BRR = brrtemp;
 5876              		.loc 1 2914 18 view .LVU1746
 5877 08e0 C3F34203 		ubfx	r3, r3, #1, #3
 5878              	.LVL353:
2915:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 5879              		.loc 1 2915 28 view .LVU1747
 5880 08e4 0B43     		orrs	r3, r3, r1
 5881 08e6 C360     		str	r3, [r0, #12]
 5882 08e8 C5E4     		b	.L457
 5883              	.LVL354:
 5884              	.L442:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5885              		.loc 1 2816 3 is_stmt 1 view .LVU1748
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5886              		.loc 1 2816 6 is_stmt 0 view .LVU1749
 5887 08ea 2B4A     		ldr	r2, .L899+44
 5888              	.LVL355:
2816:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5889              		.loc 1 2816 6 view .LVU1750
 5890 08ec 9342     		cmp	r3, r2
 5891 08ee 3FF4CBAC 		beq	.L499
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5892              		.loc 1 2883 8 is_stmt 1 view .LVU1751
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5893              		.loc 1 2883 11 is_stmt 0 view .LVU1752
 5894 08f2 B1F5004F 		cmp	r1, #32768
 5895 08f6 7FF459AF 		bne	.L486
 5896              	.LVL356:
 5897              	.L474:
2899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
 5898              		.loc 1 2899 9 is_stmt 1 view .LVU1753
2899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
 5899              		.loc 1 2899 16 is_stmt 0 view .LVU1754
 5900 08fa FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 5901              	.LVL357:
2899:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
 5902              		.loc 1 2899 16 view .LVU1755
 5903 08fe 05E0     		b	.L889
 5904              	.LVL358:
 5905              	.L452:
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5906              		.loc 1 2883 8 is_stmt 1 view .LVU1756
2883:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 5907              		.loc 1 2883 11 is_stmt 0 view .LVU1757
 5908 0900 B1F5004F 		cmp	r1, #32768
 5909 0904 7FF4E6AE 		bne	.L489
 5910              	.LVL359:
 5911              	.L477:
2888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
 5912              		.loc 1 2888 9 is_stmt 1 view .LVU1758
2888:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPresc
 5913              		.loc 1 2888 16 is_stmt 0 view .LVU1759
 5914 0908 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
 5915              	.LVL360:
2889:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5916              		.loc 1 2889 9 is_stmt 1 view .LVU1760
 5917              	.L889:
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5918              		.loc 1 2900 9 view .LVU1761
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5919              		.loc 1 2900 31 is_stmt 0 view .LVU1762
 5920 090c 616A     		ldr	r1, [r4, #36]
 5921 090e 0029     		cmp	r1, #0
 5922 0910 3FF450AE 		beq	.L636
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5923              		.loc 1 2900 31 discriminator 1 view .LVU1763
 5924 0914 0129     		cmp	r1, #1
 5925 0916 3FF44FAE 		beq	.L637
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5926              		.loc 1 2900 31 discriminator 3 view .LVU1764
 5927 091a 0229     		cmp	r1, #2
 5928 091c 3FF44EAE 		beq	.L638
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5929              		.loc 1 2900 31 discriminator 5 view .LVU1765
 5930 0920 0329     		cmp	r1, #3
 5931 0922 3FF44DAE 		beq	.L639
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5932              		.loc 1 2900 31 discriminator 7 view .LVU1766
 5933 0926 0429     		cmp	r1, #4
 5934 0928 3FF44CAE 		beq	.L640
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5935              		.loc 1 2900 31 discriminator 9 view .LVU1767
 5936 092c 0529     		cmp	r1, #5
 5937 092e 3FF44BAE 		beq	.L641
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5938              		.loc 1 2900 31 discriminator 11 view .LVU1768
 5939 0932 0629     		cmp	r1, #6
 5940 0934 3FF44AAE 		beq	.L642
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5941              		.loc 1 2900 31 discriminator 13 view .LVU1769
 5942 0938 0729     		cmp	r1, #7
 5943 093a 3FF449AE 		beq	.L643
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5944              		.loc 1 2900 31 discriminator 15 view .LVU1770
 5945 093e 0829     		cmp	r1, #8
 5946 0940 3FF486AE 		beq	.L644
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5947              		.loc 1 2900 31 discriminator 17 view .LVU1771
 5948 0944 0929     		cmp	r1, #9
 5949 0946 3FF485AE 		beq	.L645
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5950              		.loc 1 2900 31 discriminator 19 view .LVU1772
 5951 094a 0A29     		cmp	r1, #10
 5952 094c 3FF484AE 		beq	.L646
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5953              		.loc 1 2900 31 discriminator 21 view .LVU1773
 5954 0950 0B29     		cmp	r1, #11
 5955 0952 14BF     		ite	ne
 5956 0954 0122     		movne	r2, #1
 5957 0956 4FF48072 		moveq	r2, #256
 5958              	.L481:
2900:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         break;
 5959              		.loc 1 2900 31 discriminator 48 view .LVU1774
 5960 095a 6168     		ldr	r1, [r4, #4]
 5961 095c B0FBF2F2 		udiv	r2, r0, r2
 5962 0960 4B08     		lsrs	r3, r1, #1
 5963 0962 03EB4203 		add	r3, r3, r2, lsl #1
 5964 0966 B3FBF1F3 		udiv	r3, r3, r1
 5965 096a ADE7     		b	.L781
 5966              	.L900:
 5967              		.align	2
 5968              	.L899:
 5969 096c 0024F400 		.word	16000000
 5970 0970 00127A00 		.word	8000000
 5971 0974 00093D00 		.word	4000000
 5972 0978 AAB02800 		.word	2666666
 5973 097c 80841E00 		.word	2000000
 5974 0980 006A1800 		.word	1600000
 5975 0984 55581400 		.word	1333333
 5976 0988 40420F00 		.word	1000000
 5977 098c 20A10700 		.word	500000
 5978 0990 90D00300 		.word	250000
 5979 0994 48E80100 		.word	125000
 5980 0998 00800040 		.word	1073774592
 5981 099c 0048E801 		.word	32000000
 5982              		.cfi_endproc
 5983              	.LFE364:
 5985              		.section	.text.UART_AdvFeatureConfig,"ax",%progbits
 5986              		.align	1
 5987              		.global	UART_AdvFeatureConfig
 5988              		.syntax unified
 5989              		.thumb
 5990              		.thumb_func
 5991              		.fpu fpv4-sp-d16
 5993              	UART_AdvFeatureConfig:
 5994              	.LVL361:
 5995              	.LFB365:
2977:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check whether the set of advanced features to configure is properly set */
 5996              		.loc 1 2977 1 is_stmt 1 view -0
 5997              		.cfi_startproc
 5998              		@ args = 0, pretend = 0, frame = 0
 5999              		@ frame_needed = 0, uses_anonymous_args = 0
2979:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6000              		.loc 1 2979 3 view .LVU1776
2982:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6001              		.loc 1 2982 3 view .LVU1777
2982:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6002              		.loc 1 2982 7 is_stmt 0 view .LVU1778
 6003 0000 836A     		ldr	r3, [r0, #40]
2982:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6004              		.loc 1 2982 6 view .LVU1779
 6005 0002 DA07     		lsls	r2, r3, #31
2977:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check whether the set of advanced features to configure is properly set */
 6006              		.loc 1 2977 1 view .LVU1780
 6007 0004 10B5     		push	{r4, lr}
 6008              		.cfi_def_cfa_offset 8
 6009              		.cfi_offset 4, -8
 6010              		.cfi_offset 14, -4
2982:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6011              		.loc 1 2982 6 view .LVU1781
 6012 0006 06D5     		bpl	.L902
2984:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_TXINV, huart->AdvancedInit.TxPinLevelInvert);
 6013              		.loc 1 2984 5 is_stmt 1 view .LVU1782
2985:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6014              		.loc 1 2985 5 view .LVU1783
 6015 0008 0168     		ldr	r1, [r0]
 6016 000a C46A     		ldr	r4, [r0, #44]
 6017 000c 4A68     		ldr	r2, [r1, #4]
 6018 000e 22F40032 		bic	r2, r2, #131072
 6019 0012 2243     		orrs	r2, r2, r4
 6020 0014 4A60     		str	r2, [r1, #4]
 6021              	.L902:
2989:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6022              		.loc 1 2989 3 view .LVU1784
2989:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6023              		.loc 1 2989 6 is_stmt 0 view .LVU1785
 6024 0016 9C07     		lsls	r4, r3, #30
 6025 0018 06D5     		bpl	.L903
2991:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_RXINV, huart->AdvancedInit.RxPinLevelInvert);
 6026              		.loc 1 2991 5 is_stmt 1 view .LVU1786
2992:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6027              		.loc 1 2992 5 view .LVU1787
 6028 001a 0168     		ldr	r1, [r0]
 6029 001c 046B     		ldr	r4, [r0, #48]
 6030 001e 4A68     		ldr	r2, [r1, #4]
 6031 0020 22F48032 		bic	r2, r2, #65536
 6032 0024 2243     		orrs	r2, r2, r4
 6033 0026 4A60     		str	r2, [r1, #4]
 6034              	.L903:
2996:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6035              		.loc 1 2996 3 view .LVU1788
2996:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6036              		.loc 1 2996 6 is_stmt 0 view .LVU1789
 6037 0028 5907     		lsls	r1, r3, #29
 6038 002a 06D5     		bpl	.L904
2998:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_DATAINV, huart->AdvancedInit.DataInvert);
 6039              		.loc 1 2998 5 is_stmt 1 view .LVU1790
2999:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6040              		.loc 1 2999 5 view .LVU1791
 6041 002c 0168     		ldr	r1, [r0]
 6042 002e 446B     		ldr	r4, [r0, #52]
 6043 0030 4A68     		ldr	r2, [r1, #4]
 6044 0032 22F48022 		bic	r2, r2, #262144
 6045 0036 2243     		orrs	r2, r2, r4
 6046 0038 4A60     		str	r2, [r1, #4]
 6047              	.L904:
3003:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6048              		.loc 1 3003 3 view .LVU1792
3003:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6049              		.loc 1 3003 6 is_stmt 0 view .LVU1793
 6050 003a 1A07     		lsls	r2, r3, #28
 6051 003c 06D5     		bpl	.L905
3005:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_SWAP, huart->AdvancedInit.Swap);
 6052              		.loc 1 3005 5 is_stmt 1 view .LVU1794
3006:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6053              		.loc 1 3006 5 view .LVU1795
 6054 003e 0168     		ldr	r1, [r0]
 6055 0040 846B     		ldr	r4, [r0, #56]
 6056 0042 4A68     		ldr	r2, [r1, #4]
 6057 0044 22F40042 		bic	r2, r2, #32768
 6058 0048 2243     		orrs	r2, r2, r4
 6059 004a 4A60     		str	r2, [r1, #4]
 6060              	.L905:
3010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6061              		.loc 1 3010 3 view .LVU1796
3010:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6062              		.loc 1 3010 6 is_stmt 0 view .LVU1797
 6063 004c DC06     		lsls	r4, r3, #27
 6064 004e 06D5     		bpl	.L906
3012:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR3, USART_CR3_OVRDIS, huart->AdvancedInit.OverrunDisable);
 6065              		.loc 1 3012 5 is_stmt 1 view .LVU1798
3013:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6066              		.loc 1 3013 5 view .LVU1799
 6067 0050 0168     		ldr	r1, [r0]
 6068 0052 C46B     		ldr	r4, [r0, #60]
 6069 0054 8A68     		ldr	r2, [r1, #8]
 6070 0056 22F48052 		bic	r2, r2, #4096
 6071 005a 2243     		orrs	r2, r2, r4
 6072 005c 8A60     		str	r2, [r1, #8]
 6073              	.L906:
3017:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6074              		.loc 1 3017 3 view .LVU1800
3017:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6075              		.loc 1 3017 6 is_stmt 0 view .LVU1801
 6076 005e 9906     		lsls	r1, r3, #26
 6077 0060 06D5     		bpl	.L907
3019:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR3, USART_CR3_DDRE, huart->AdvancedInit.DMADisableonRxError);
 6078              		.loc 1 3019 5 is_stmt 1 view .LVU1802
3020:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6079              		.loc 1 3020 5 view .LVU1803
 6080 0062 0168     		ldr	r1, [r0]
 6081 0064 046C     		ldr	r4, [r0, #64]
 6082 0066 8A68     		ldr	r2, [r1, #8]
 6083 0068 22F40052 		bic	r2, r2, #8192
 6084 006c 2243     		orrs	r2, r2, r4
 6085 006e 8A60     		str	r2, [r1, #8]
 6086              	.L907:
3024:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6087              		.loc 1 3024 3 view .LVU1804
3024:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6088              		.loc 1 3024 6 is_stmt 0 view .LVU1805
 6089 0070 5A06     		lsls	r2, r3, #25
 6090 0072 0FD5     		bpl	.L909
3026:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_AUTOBAUDRATE(huart->AdvancedInit.AutoBaudRateEnable));
 6091              		.loc 1 3026 5 is_stmt 1 view .LVU1806
3027:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_ABREN, huart->AdvancedInit.AutoBaudRateEnable);
 6092              		.loc 1 3027 5 view .LVU1807
3028:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* set auto Baudrate detection parameters if detection is enabled */
 6093              		.loc 1 3028 5 view .LVU1808
 6094 0074 0168     		ldr	r1, [r0]
 6095 0076 446C     		ldr	r4, [r0, #68]
 6096 0078 4A68     		ldr	r2, [r1, #4]
 6097 007a 22F48012 		bic	r2, r2, #1048576
 6098 007e 2243     		orrs	r2, r2, r4
3030:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6099              		.loc 1 3030 8 is_stmt 0 view .LVU1809
 6100 0080 B4F5801F 		cmp	r4, #1048576
3028:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     /* set auto Baudrate detection parameters if detection is enabled */
 6101              		.loc 1 3028 5 view .LVU1810
 6102 0084 4A60     		str	r2, [r1, #4]
3030:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6103              		.loc 1 3030 5 is_stmt 1 view .LVU1811
3030:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6104              		.loc 1 3030 8 is_stmt 0 view .LVU1812
 6105 0086 05D1     		bne	.L909
3032:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       MODIFY_REG(huart->Instance->CR2, USART_CR2_ABRMODE, huart->AdvancedInit.AutoBaudRateMode);
 6106              		.loc 1 3032 7 is_stmt 1 view .LVU1813
3033:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6107              		.loc 1 3033 7 view .LVU1814
 6108 0088 4A68     		ldr	r2, [r1, #4]
 6109 008a 846C     		ldr	r4, [r0, #72]
 6110 008c 22F4C002 		bic	r2, r2, #6291456
 6111 0090 2243     		orrs	r2, r2, r4
 6112 0092 4A60     		str	r2, [r1, #4]
 6113              	.L909:
3038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6114              		.loc 1 3038 3 view .LVU1815
3038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6115              		.loc 1 3038 6 is_stmt 0 view .LVU1816
 6116 0094 1B06     		lsls	r3, r3, #24
 6117 0096 06D5     		bpl	.L901
3040:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_MSBFIRST, huart->AdvancedInit.MSBFirst);
 6118              		.loc 1 3040 5 is_stmt 1 view .LVU1817
3041:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6119              		.loc 1 3041 5 view .LVU1818
 6120 0098 0268     		ldr	r2, [r0]
 6121 009a C16C     		ldr	r1, [r0, #76]
 6122 009c 5368     		ldr	r3, [r2, #4]
 6123 009e 23F40023 		bic	r3, r3, #524288
 6124 00a2 0B43     		orrs	r3, r3, r1
 6125 00a4 5360     		str	r3, [r2, #4]
 6126              	.L901:
3043:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6127              		.loc 1 3043 1 is_stmt 0 view .LVU1819
 6128 00a6 10BD     		pop	{r4, pc}
 6129              		.cfi_endproc
 6130              	.LFE365:
 6132              		.section	.text.UART_WaitOnFlagUntilTimeout,"ax",%progbits
 6133              		.align	1
 6134              		.global	UART_WaitOnFlagUntilTimeout
 6135              		.syntax unified
 6136              		.thumb
 6137              		.thumb_func
 6138              		.fpu fpv4-sp-d16
 6140              	UART_WaitOnFlagUntilTimeout:
 6141              	.LVL362:
 6142              	.LFB367:
3102:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Wait until flag is set */
 6143              		.loc 1 3102 1 is_stmt 1 view -0
 6144              		.cfi_startproc
 6145              		@ args = 4, pretend = 0, frame = 0
 6146              		@ frame_needed = 0, uses_anonymous_args = 0
3102:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Wait until flag is set */
 6147              		.loc 1 3102 1 is_stmt 0 view .LVU1821
 6148 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6149              		.cfi_def_cfa_offset 24
 6150              		.cfi_offset 4, -24
 6151              		.cfi_offset 5, -20
 6152              		.cfi_offset 6, -16
 6153              		.cfi_offset 7, -12
 6154              		.cfi_offset 8, -8
 6155              		.cfi_offset 14, -4
 6156 0004 069D     		ldr	r5, [sp, #24]
 6157 0006 0446     		mov	r4, r0
 6158 0008 0F46     		mov	r7, r1
 6159 000a 1646     		mov	r6, r2
 6160 000c 9846     		mov	r8, r3
3104:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6161              		.loc 1 3104 3 is_stmt 1 view .LVU1822
 6162              	.LVL363:
 6163              	.L934:
3104:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6164              		.loc 1 3104 11 is_stmt 0 view .LVU1823
 6165 000e 2168     		ldr	r1, [r4]
 6166              	.L935:
 6167 0010 CA69     		ldr	r2, [r1, #28]
3104:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6168              		.loc 1 3104 50 view .LVU1824
 6169 0012 37EA0203 		bics	r3, r7, r2
 6170 0016 0CBF     		ite	eq
 6171 0018 0122     		moveq	r2, #1
 6172 001a 0022     		movne	r2, #0
3104:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6173              		.loc 1 3104 9 view .LVU1825
 6174 001c B242     		cmp	r2, r6
 6175 001e 01D0     		beq	.L938
3124:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6176              		.loc 1 3124 10 view .LVU1826
 6177 0020 0020     		movs	r0, #0
 6178 0022 1BE0     		b	.L937
 6179              	.L938:
3107:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6180              		.loc 1 3107 5 is_stmt 1 view .LVU1827
3107:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6181              		.loc 1 3107 8 is_stmt 0 view .LVU1828
 6182 0024 6B1C     		adds	r3, r5, #1
 6183 0026 F3D0     		beq	.L935
3109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6184              		.loc 1 3109 7 is_stmt 1 view .LVU1829
3109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6185              		.loc 1 3109 13 is_stmt 0 view .LVU1830
 6186 0028 FFF7FEFF 		bl	HAL_GetTick
 6187              	.LVL364:
3109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6188              		.loc 1 3109 27 view .LVU1831
 6189 002c A0EB0800 		sub	r0, r0, r8
3109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6190              		.loc 1 3109 10 view .LVU1832
 6191 0030 A842     		cmp	r0, r5
 6192 0032 01D8     		bhi	.L936
3109:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6193              		.loc 1 3109 51 discriminator 1 view .LVU1833
 6194 0034 002D     		cmp	r5, #0
 6195 0036 EAD1     		bne	.L934
 6196              	.L936:
 6197              	.LVL365:
 6198              	.LBB44:
 6199              	.LBI44:
3100:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****                                               uint32_t Tickstart, uint32_t Timeout)
 6200              		.loc 1 3100 19 is_stmt 1 view .LVU1834
 6201              	.LBB45:
3112:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 6202              		.loc 1 3112 9 view .LVU1835
 6203 0038 2368     		ldr	r3, [r4]
 6204 003a 1A68     		ldr	r2, [r3]
 6205 003c 22F4D072 		bic	r2, r2, #416
 6206 0040 1A60     		str	r2, [r3]
3113:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6207              		.loc 1 3113 9 view .LVU1836
 6208 0042 9A68     		ldr	r2, [r3, #8]
 6209 0044 22F00102 		bic	r2, r2, #1
 6210 0048 9A60     		str	r2, [r3, #8]
3115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxState = HAL_UART_STATE_READY;
 6211              		.loc 1 3115 9 view .LVU1837
3115:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         huart->RxState = HAL_UART_STATE_READY;
 6212              		.loc 1 3115 23 is_stmt 0 view .LVU1838
 6213 004a 2023     		movs	r3, #32
 6214 004c C4F88030 		str	r3, [r4, #128]
3116:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6215              		.loc 1 3116 9 is_stmt 1 view .LVU1839
3116:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6216              		.loc 1 3116 24 is_stmt 0 view .LVU1840
 6217 0050 C4F88430 		str	r3, [r4, #132]
3118:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6218              		.loc 1 3118 9 is_stmt 1 view .LVU1841
3118:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6219              		.loc 1 3118 9 view .LVU1842
 6220 0054 0023     		movs	r3, #0
 6221 0056 84F87C30 		strb	r3, [r4, #124]
3120:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 6222              		.loc 1 3120 9 view .LVU1843
 6223              	.LVL366:
3118:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6224              		.loc 1 3118 9 is_stmt 0 view .LVU1844
 6225 005a 0320     		movs	r0, #3
 6226              	.L937:
3118:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6227              		.loc 1 3118 9 view .LVU1845
 6228              	.LBE45:
 6229              	.LBE44:
3125:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6230              		.loc 1 3125 1 view .LVU1846
 6231 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
3125:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6232              		.loc 1 3125 1 view .LVU1847
 6233              		.cfi_endproc
 6234              	.LFE367:
 6236              		.section	.text.HAL_UART_Transmit,"ax",%progbits
 6237              		.align	1
 6238              		.global	HAL_UART_Transmit
 6239              		.syntax unified
 6240              		.thumb
 6241              		.thumb_func
 6242              		.fpu fpv4-sp-d16
 6244              	HAL_UART_Transmit:
 6245              	.LVL367:
 6246              	.LFB332:
1032:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6247              		.loc 1 1032 1 is_stmt 1 view -0
 6248              		.cfi_startproc
 6249              		@ args = 0, pretend = 0, frame = 0
 6250              		@ frame_needed = 0, uses_anonymous_args = 0
1033:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *pdata16bits;
 6251              		.loc 1 1033 3 view .LVU1849
1034:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
 6252              		.loc 1 1034 3 view .LVU1850
1035:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6253              		.loc 1 1035 3 view .LVU1851
1038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6254              		.loc 1 1038 3 view .LVU1852
1032:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6255              		.loc 1 1032 1 is_stmt 0 view .LVU1853
 6256 0000 2DE9F743 		push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 6257              		.cfi_def_cfa_offset 40
 6258              		.cfi_offset 4, -28
 6259              		.cfi_offset 5, -24
 6260              		.cfi_offset 6, -20
 6261              		.cfi_offset 7, -16
 6262              		.cfi_offset 8, -12
 6263              		.cfi_offset 9, -8
 6264              		.cfi_offset 14, -4
1032:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6265              		.loc 1 1032 1 view .LVU1854
 6266 0004 9846     		mov	r8, r3
1038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6267              		.loc 1 1038 12 view .LVU1855
 6268 0006 D0F88030 		ldr	r3, [r0, #128]
 6269              	.LVL368:
1038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6270              		.loc 1 1038 6 view .LVU1856
 6271 000a 202B     		cmp	r3, #32
1032:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6272              		.loc 1 1032 1 view .LVU1857
 6273 000c 0446     		mov	r4, r0
 6274 000e 0E46     		mov	r6, r1
 6275 0010 9146     		mov	r9, r2
1038:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6276              		.loc 1 1038 6 view .LVU1858
 6277 0012 4ED1     		bne	.L954
1040:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6278              		.loc 1 1040 5 is_stmt 1 view .LVU1859
1040:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6279              		.loc 1 1040 8 is_stmt 0 view .LVU1860
 6280 0014 0029     		cmp	r1, #0
 6281 0016 4AD0     		beq	.L953
1040:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6282              		.loc 1 1040 25 discriminator 1 view .LVU1861
 6283 0018 002A     		cmp	r2, #0
 6284 001a 48D0     		beq	.L953
1045:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6285              		.loc 1 1045 5 is_stmt 1 view .LVU1862
1045:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6286              		.loc 1 1045 5 view .LVU1863
 6287 001c 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 6288 0020 012B     		cmp	r3, #1
 6289 0022 46D0     		beq	.L954
1045:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6290              		.loc 1 1045 5 discriminator 2 view .LVU1864
 6291 0024 0123     		movs	r3, #1
 6292 0026 80F87C30 		strb	r3, [r0, #124]
1047:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 6293              		.loc 1 1047 5 discriminator 2 view .LVU1865
1047:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 6294              		.loc 1 1047 22 is_stmt 0 discriminator 2 view .LVU1866
 6295 002a 0025     		movs	r5, #0
1048:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6296              		.loc 1 1048 19 discriminator 2 view .LVU1867
 6297 002c 2123     		movs	r3, #33
1047:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 6298              		.loc 1 1047 22 discriminator 2 view .LVU1868
 6299 002e C0F88850 		str	r5, [r0, #136]
1048:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6300              		.loc 1 1048 5 is_stmt 1 discriminator 2 view .LVU1869
1048:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6301              		.loc 1 1048 19 is_stmt 0 discriminator 2 view .LVU1870
 6302 0032 C0F88030 		str	r3, [r0, #128]
1051:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6303              		.loc 1 1051 5 is_stmt 1 discriminator 2 view .LVU1871
1051:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6304              		.loc 1 1051 17 is_stmt 0 discriminator 2 view .LVU1872
 6305 0036 FFF7FEFF 		bl	HAL_GetTick
 6306              	.LVL369:
1057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6307              		.loc 1 1057 8 discriminator 2 view .LVU1873
 6308 003a A368     		ldr	r3, [r4, #8]
1053:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
 6309              		.loc 1 1053 24 discriminator 2 view .LVU1874
 6310 003c A4F85490 		strh	r9, [r4, #84]	@ movhi
1057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6311              		.loc 1 1057 8 discriminator 2 view .LVU1875
 6312 0040 B3F5805F 		cmp	r3, #4096
1051:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6313              		.loc 1 1051 17 discriminator 2 view .LVU1876
 6314 0044 0746     		mov	r7, r0
 6315              	.LVL370:
1053:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->TxXferCount = Size;
 6316              		.loc 1 1053 5 is_stmt 1 discriminator 2 view .LVU1877
1054:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6317              		.loc 1 1054 5 discriminator 2 view .LVU1878
1054:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6318              		.loc 1 1054 24 is_stmt 0 discriminator 2 view .LVU1879
 6319 0046 A4F85690 		strh	r9, [r4, #86]	@ movhi
1057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6320              		.loc 1 1057 5 is_stmt 1 discriminator 2 view .LVU1880
1057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6321              		.loc 1 1057 8 is_stmt 0 discriminator 2 view .LVU1881
 6322 004a 03D1     		bne	.L945
1057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6323              		.loc 1 1057 56 discriminator 1 view .LVU1882
 6324 004c 2369     		ldr	r3, [r4, #16]
 6325 004e 0BB9     		cbnz	r3, .L945
1057:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6326              		.loc 1 1057 56 view .LVU1883
 6327 0050 3546     		mov	r5, r6
1059:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata16bits = (uint16_t *) pData;
 6328              		.loc 1 1059 19 view .LVU1884
 6329 0052 1E46     		mov	r6, r3
 6330              	.LVL371:
 6331              	.L945:
1068:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6332              		.loc 1 1068 17 view .LVU1885
 6333 0054 B4F85620 		ldrh	r2, [r4, #86]
1070:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6334              		.loc 1 1070 11 view .LVU1886
 6335 0058 CDF80080 		str	r8, [sp]
1068:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6336              		.loc 1 1068 17 view .LVU1887
 6337 005c 92B2     		uxth	r2, r2
1070:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6338              		.loc 1 1070 11 view .LVU1888
 6339 005e 3B46     		mov	r3, r7
1068:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6340              		.loc 1 1068 11 view .LVU1889
 6341 0060 52B9     		cbnz	r2, .L949
 6342              	.LVL372:
1087:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6343              		.loc 1 1087 5 is_stmt 1 view .LVU1890
1087:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6344              		.loc 1 1087 9 is_stmt 0 view .LVU1891
 6345 0062 4021     		movs	r1, #64
 6346 0064 2046     		mov	r0, r4
 6347 0066 FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 6348              	.LVL373:
1087:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6349              		.loc 1 1087 8 view .LVU1892
 6350 006a 58B9     		cbnz	r0, .L950
1093:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6351              		.loc 1 1093 5 is_stmt 1 view .LVU1893
1093:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6352              		.loc 1 1093 19 is_stmt 0 view .LVU1894
 6353 006c 2023     		movs	r3, #32
 6354 006e C4F88030 		str	r3, [r4, #128]
1095:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6355              		.loc 1 1095 5 is_stmt 1 view .LVU1895
1095:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6356              		.loc 1 1095 5 view .LVU1896
 6357 0072 84F87C00 		strb	r0, [r4, #124]
1097:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6358              		.loc 1 1097 5 view .LVU1897
1097:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6359              		.loc 1 1097 12 is_stmt 0 view .LVU1898
 6360 0076 06E0     		b	.L943
 6361              	.LVL374:
 6362              	.L949:
1070:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6363              		.loc 1 1070 7 is_stmt 1 view .LVU1899
1070:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6364              		.loc 1 1070 11 is_stmt 0 view .LVU1900
 6365 0078 0022     		movs	r2, #0
 6366 007a 8021     		movs	r1, #128
 6367 007c 2046     		mov	r0, r4
 6368 007e FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 6369              	.LVL375:
1070:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6370              		.loc 1 1070 10 view .LVU1901
 6371 0082 18B1     		cbz	r0, .L946
 6372              	.L950:
1072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 6373              		.loc 1 1072 16 view .LVU1902
 6374 0084 0320     		movs	r0, #3
 6375              	.LVL376:
 6376              	.L943:
1103:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6377              		.loc 1 1103 1 view .LVU1903
 6378 0086 03B0     		add	sp, sp, #12
 6379              		.cfi_remember_state
 6380              		.cfi_def_cfa_offset 28
 6381              		@ sp needed
 6382 0088 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6383              	.LVL377:
 6384              	.L946:
 6385              		.cfi_restore_state
1074:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6386              		.loc 1 1074 7 is_stmt 1 view .LVU1904
 6387 008c 2268     		ldr	r2, [r4]
1074:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6388              		.loc 1 1074 10 is_stmt 0 view .LVU1905
 6389 008e 5EB9     		cbnz	r6, .L947
1076:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
 6390              		.loc 1 1076 9 is_stmt 1 view .LVU1906
1076:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
 6391              		.loc 1 1076 32 is_stmt 0 view .LVU1907
 6392 0090 35F8023B 		ldrh	r3, [r5], #2
 6393              	.LVL378:
1076:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
 6394              		.loc 1 1076 32 view .LVU1908
 6395 0094 C3F30803 		ubfx	r3, r3, #0, #9
 6396              	.LVL379:
 6397              	.L957:
1081:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
 6398              		.loc 1 1081 30 view .LVU1909
 6399 0098 9362     		str	r3, [r2, #40]
1082:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 6400              		.loc 1 1082 9 is_stmt 1 view .LVU1910
 6401              	.LVL380:
1084:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6402              		.loc 1 1084 7 view .LVU1911
1084:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6403              		.loc 1 1084 12 is_stmt 0 view .LVU1912
 6404 009a B4F85630 		ldrh	r3, [r4, #86]
1084:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6405              		.loc 1 1084 25 view .LVU1913
 6406 009e 013B     		subs	r3, r3, #1
 6407 00a0 9BB2     		uxth	r3, r3
 6408 00a2 A4F85630 		strh	r3, [r4, #86]	@ movhi
 6409 00a6 D5E7     		b	.L945
 6410              	.L947:
1081:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
 6411              		.loc 1 1081 9 is_stmt 1 view .LVU1914
1081:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
 6412              		.loc 1 1081 32 is_stmt 0 view .LVU1915
 6413 00a8 16F8013B 		ldrb	r3, [r6], #1	@ zero_extendqisi2
 6414              	.LVL381:
1081:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
 6415              		.loc 1 1081 32 view .LVU1916
 6416 00ac F4E7     		b	.L957
 6417              	.LVL382:
 6418              	.L953:
1042:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6419              		.loc 1 1042 15 view .LVU1917
 6420 00ae 0120     		movs	r0, #1
 6421              	.LVL383:
1042:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6422              		.loc 1 1042 15 view .LVU1918
 6423 00b0 E9E7     		b	.L943
 6424              	.LVL384:
 6425              	.L954:
1101:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6426              		.loc 1 1101 12 view .LVU1919
 6427 00b2 0220     		movs	r0, #2
 6428              	.LVL385:
1101:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6429              		.loc 1 1101 12 view .LVU1920
 6430 00b4 E7E7     		b	.L943
 6431              		.cfi_endproc
 6432              	.LFE332:
 6434              		.section	.text.HAL_UART_Receive,"ax",%progbits
 6435              		.align	1
 6436              		.global	HAL_UART_Receive
 6437              		.syntax unified
 6438              		.thumb
 6439              		.thumb_func
 6440              		.fpu fpv4-sp-d16
 6442              	HAL_UART_Receive:
 6443              	.LVL386:
 6444              	.LFB333:
1121:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6445              		.loc 1 1121 1 is_stmt 1 view -0
 6446              		.cfi_startproc
 6447              		@ args = 0, pretend = 0, frame = 0
 6448              		@ frame_needed = 0, uses_anonymous_args = 0
1122:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t *pdata16bits;
 6449              		.loc 1 1122 3 view .LVU1922
1123:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint16_t uhMask;
 6450              		.loc 1 1123 3 view .LVU1923
1124:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
 6451              		.loc 1 1124 3 view .LVU1924
1125:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6452              		.loc 1 1125 3 view .LVU1925
1128:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6453              		.loc 1 1128 3 view .LVU1926
1121:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6454              		.loc 1 1121 1 is_stmt 0 view .LVU1927
 6455 0000 2DE9F743 		push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 6456              		.cfi_def_cfa_offset 40
 6457              		.cfi_offset 4, -28
 6458              		.cfi_offset 5, -24
 6459              		.cfi_offset 6, -20
 6460              		.cfi_offset 7, -16
 6461              		.cfi_offset 8, -12
 6462              		.cfi_offset 9, -8
 6463              		.cfi_offset 14, -4
1121:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6464              		.loc 1 1121 1 view .LVU1928
 6465 0004 9946     		mov	r9, r3
1128:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6466              		.loc 1 1128 12 view .LVU1929
 6467 0006 D0F88430 		ldr	r3, [r0, #132]
 6468              	.LVL387:
1128:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6469              		.loc 1 1128 6 view .LVU1930
 6470 000a 202B     		cmp	r3, #32
1121:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint8_t  *pdata8bits;
 6471              		.loc 1 1121 1 view .LVU1931
 6472 000c 0446     		mov	r4, r0
 6473 000e 0D46     		mov	r5, r1
 6474 0010 1646     		mov	r6, r2
1128:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6475              		.loc 1 1128 6 view .LVU1932
 6476 0012 66D1     		bne	.L974
1130:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6477              		.loc 1 1130 5 is_stmt 1 view .LVU1933
1130:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6478              		.loc 1 1130 8 is_stmt 0 view .LVU1934
 6479 0014 0029     		cmp	r1, #0
 6480 0016 62D0     		beq	.L973
1130:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6481              		.loc 1 1130 25 discriminator 1 view .LVU1935
 6482 0018 002A     		cmp	r2, #0
 6483 001a 60D0     		beq	.L973
1135:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6484              		.loc 1 1135 5 is_stmt 1 view .LVU1936
1135:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6485              		.loc 1 1135 5 view .LVU1937
 6486 001c 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 6487 0020 012B     		cmp	r3, #1
 6488 0022 5ED0     		beq	.L974
1135:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6489              		.loc 1 1135 5 discriminator 2 view .LVU1938
 6490 0024 0123     		movs	r3, #1
 6491 0026 80F87C30 		strb	r3, [r0, #124]
1137:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 6492              		.loc 1 1137 5 discriminator 2 view .LVU1939
1137:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 6493              		.loc 1 1137 22 is_stmt 0 discriminator 2 view .LVU1940
 6494 002a 0027     		movs	r7, #0
1138:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6495              		.loc 1 1138 20 discriminator 2 view .LVU1941
 6496 002c 2223     		movs	r3, #34
1137:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 6497              		.loc 1 1137 22 discriminator 2 view .LVU1942
 6498 002e C0F88870 		str	r7, [r0, #136]
1138:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6499              		.loc 1 1138 5 is_stmt 1 discriminator 2 view .LVU1943
1138:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6500              		.loc 1 1138 20 is_stmt 0 discriminator 2 view .LVU1944
 6501 0032 C0F88430 		str	r3, [r0, #132]
1141:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6502              		.loc 1 1141 5 is_stmt 1 discriminator 2 view .LVU1945
1141:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6503              		.loc 1 1141 17 is_stmt 0 discriminator 2 view .LVU1946
 6504 0036 FFF7FEFF 		bl	HAL_GetTick
 6505              	.LVL388:
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6506              		.loc 1 1147 5 discriminator 2 view .LVU1947
 6507 003a A368     		ldr	r3, [r4, #8]
1143:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = Size;
 6508              		.loc 1 1143 24 discriminator 2 view .LVU1948
 6509 003c A4F85C60 		strh	r6, [r4, #92]	@ movhi
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6510              		.loc 1 1147 5 discriminator 2 view .LVU1949
 6511 0040 B3F5805F 		cmp	r3, #4096
1141:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6512              		.loc 1 1141 17 discriminator 2 view .LVU1950
 6513 0044 8046     		mov	r8, r0
 6514              	.LVL389:
1143:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     huart->RxXferCount = Size;
 6515              		.loc 1 1143 5 is_stmt 1 discriminator 2 view .LVU1951
1144:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6516              		.loc 1 1144 5 discriminator 2 view .LVU1952
1144:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6517              		.loc 1 1144 24 is_stmt 0 discriminator 2 view .LVU1953
 6518 0046 A4F85E60 		strh	r6, [r4, #94]	@ movhi
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6519              		.loc 1 1147 5 is_stmt 1 discriminator 2 view .LVU1954
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6520              		.loc 1 1147 5 discriminator 2 view .LVU1955
 6521 004a 1CD1     		bne	.L960
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6522              		.loc 1 1147 5 discriminator 1 view .LVU1956
 6523 004c 2269     		ldr	r2, [r4, #16]
 6524 004e C2B9     		cbnz	r2, .L961
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6525              		.loc 1 1147 5 discriminator 3 view .LVU1957
 6526 0050 40F2FF12 		movw	r2, #511
 6527              	.L984:
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6528              		.loc 1 1147 5 is_stmt 0 discriminator 4 view .LVU1958
 6529 0054 A4F86020 		strh	r2, [r4, #96]	@ movhi
 6530              	.L962:
1148:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6531              		.loc 1 1148 5 is_stmt 1 view .LVU1959
1151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6532              		.loc 1 1151 8 is_stmt 0 view .LVU1960
 6533 0058 B3F5805F 		cmp	r3, #4096
1148:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6534              		.loc 1 1148 12 view .LVU1961
 6535 005c B4F86070 		ldrh	r7, [r4, #96]
 6536              	.LVL390:
1151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6537              		.loc 1 1151 5 is_stmt 1 view .LVU1962
1151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6538              		.loc 1 1151 8 is_stmt 0 view .LVU1963
 6539 0060 22D1     		bne	.L976
1151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6540              		.loc 1 1151 56 discriminator 1 view .LVU1964
 6541 0062 2369     		ldr	r3, [r4, #16]
 6542 0064 03BB     		cbnz	r3, .L976
1151:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6543              		.loc 1 1151 56 view .LVU1965
 6544 0066 2E46     		mov	r6, r5
1153:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       pdata16bits = (uint16_t *) pData;
 6545              		.loc 1 1153 19 view .LVU1966
 6546 0068 1D46     		mov	r5, r3
 6547              	.LVL391:
 6548              	.L967:
1163:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6549              		.loc 1 1163 17 view .LVU1967
 6550 006a B4F85E00 		ldrh	r0, [r4, #94]
 6551 006e 80B2     		uxth	r0, r0
1163:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6552              		.loc 1 1163 11 view .LVU1968
 6553 0070 E0B9     		cbnz	r0, .L970
1183:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6554              		.loc 1 1183 5 is_stmt 1 view .LVU1969
1183:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6555              		.loc 1 1183 20 is_stmt 0 view .LVU1970
 6556 0072 2023     		movs	r3, #32
 6557 0074 C4F88430 		str	r3, [r4, #132]
1185:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6558              		.loc 1 1185 5 is_stmt 1 view .LVU1971
1185:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6559              		.loc 1 1185 5 view .LVU1972
 6560 0078 84F87C00 		strb	r0, [r4, #124]
1187:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6561              		.loc 1 1187 5 view .LVU1973
 6562              	.LVL392:
 6563              	.L959:
1193:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6564              		.loc 1 1193 1 is_stmt 0 view .LVU1974
 6565 007c 03B0     		add	sp, sp, #12
 6566              		.cfi_remember_state
 6567              		.cfi_def_cfa_offset 28
 6568              		@ sp needed
 6569 007e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6570              	.LVL393:
 6571              	.L961:
 6572              		.cfi_restore_state
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6573              		.loc 1 1147 5 is_stmt 1 discriminator 4 view .LVU1975
 6574 0082 FF22     		movs	r2, #255
 6575 0084 E6E7     		b	.L984
 6576              	.L960:
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6577              		.loc 1 1147 5 discriminator 2 view .LVU1976
 6578 0086 23B9     		cbnz	r3, .L963
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6579              		.loc 1 1147 5 discriminator 5 view .LVU1977
 6580 0088 2269     		ldr	r2, [r4, #16]
 6581 008a 002A     		cmp	r2, #0
 6582 008c F9D0     		beq	.L961
 6583              	.L965:
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6584              		.loc 1 1147 5 discriminator 8 view .LVU1978
 6585 008e 7F22     		movs	r2, #127
 6586 0090 E0E7     		b	.L984
 6587              	.L963:
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6588              		.loc 1 1147 5 discriminator 6 view .LVU1979
 6589 0092 B3F1805F 		cmp	r3, #268435456
 6590 0096 04D1     		bne	.L964
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6591              		.loc 1 1147 5 discriminator 9 view .LVU1980
 6592 0098 2269     		ldr	r2, [r4, #16]
 6593 009a 002A     		cmp	r2, #0
 6594 009c F7D0     		beq	.L965
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6595              		.loc 1 1147 5 discriminator 12 view .LVU1981
 6596 009e 3F22     		movs	r2, #63
 6597 00a0 D8E7     		b	.L984
 6598              	.L964:
1147:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     uhMask = huart->Mask;
 6599              		.loc 1 1147 5 discriminator 10 view .LVU1982
 6600 00a2 A4F86070 		strh	r7, [r4, #96]	@ movhi
 6601 00a6 D7E7     		b	.L962
 6602              	.LVL394:
 6603              	.L976:
1159:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6604              		.loc 1 1159 19 is_stmt 0 view .LVU1983
 6605 00a8 0026     		movs	r6, #0
 6606 00aa DEE7     		b	.L967
 6607              	.LVL395:
 6608              	.L970:
1165:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6609              		.loc 1 1165 7 is_stmt 1 view .LVU1984
1165:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6610              		.loc 1 1165 11 is_stmt 0 view .LVU1985
 6611 00ac CDF80090 		str	r9, [sp]
 6612 00b0 4346     		mov	r3, r8
 6613 00b2 0022     		movs	r2, #0
 6614 00b4 2021     		movs	r1, #32
 6615 00b6 2046     		mov	r0, r4
 6616 00b8 FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 6617              	.LVL396:
1165:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6618              		.loc 1 1165 10 view .LVU1986
 6619 00bc 98B9     		cbnz	r0, .L977
1169:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6620              		.loc 1 1169 7 is_stmt 1 view .LVU1987
 6621 00be 2368     		ldr	r3, [r4]
1171:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
 6622              		.loc 1 1171 50 is_stmt 0 view .LVU1988
 6623 00c0 5B6A     		ldr	r3, [r3, #36]
1171:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
 6624              		.loc 1 1171 24 view .LVU1989
 6625 00c2 3B40     		ands	r3, r3, r7
1169:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       {
 6626              		.loc 1 1169 10 view .LVU1990
 6627 00c4 45B9     		cbnz	r5, .L968
1171:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
 6628              		.loc 1 1171 9 is_stmt 1 view .LVU1991
1171:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata16bits++;
 6629              		.loc 1 1171 22 is_stmt 0 view .LVU1992
 6630 00c6 26F8023B 		strh	r3, [r6], #2	@ movhi
 6631              	.LVL397:
1172:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 6632              		.loc 1 1172 9 is_stmt 1 view .LVU1993
 6633              	.L969:
1179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6634              		.loc 1 1179 7 view .LVU1994
1179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6635              		.loc 1 1179 12 is_stmt 0 view .LVU1995
 6636 00ca B4F85E30 		ldrh	r3, [r4, #94]
1179:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6637              		.loc 1 1179 25 view .LVU1996
 6638 00ce 013B     		subs	r3, r3, #1
 6639 00d0 9BB2     		uxth	r3, r3
 6640 00d2 A4F85E30 		strh	r3, [r4, #94]	@ movhi
 6641 00d6 C8E7     		b	.L967
 6642              	.L968:
1176:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
 6643              		.loc 1 1176 9 is_stmt 1 view .LVU1997
1176:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****         pdata8bits++;
 6644              		.loc 1 1176 21 is_stmt 0 view .LVU1998
 6645 00d8 05F8013B 		strb	r3, [r5], #1
 6646              	.LVL398:
1177:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 6647              		.loc 1 1177 9 is_stmt 1 view .LVU1999
1177:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 6648              		.loc 1 1177 9 is_stmt 0 view .LVU2000
 6649 00dc F5E7     		b	.L969
 6650              	.LVL399:
 6651              	.L973:
1132:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6652              		.loc 1 1132 15 view .LVU2001
 6653 00de 0120     		movs	r0, #1
 6654              	.LVL400:
1132:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6655              		.loc 1 1132 15 view .LVU2002
 6656 00e0 CCE7     		b	.L959
 6657              	.LVL401:
 6658              	.L974:
1191:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6659              		.loc 1 1191 12 view .LVU2003
 6660 00e2 0220     		movs	r0, #2
 6661              	.LVL402:
1191:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6662              		.loc 1 1191 12 view .LVU2004
 6663 00e4 CAE7     		b	.L959
 6664              	.LVL403:
 6665              	.L977:
1167:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****       }
 6666              		.loc 1 1167 16 view .LVU2005
 6667 00e6 0320     		movs	r0, #3
 6668 00e8 C8E7     		b	.L959
 6669              		.cfi_endproc
 6670              	.LFE333:
 6672              		.section	.text.UART_CheckIdleState,"ax",%progbits
 6673              		.align	1
 6674              		.global	UART_CheckIdleState
 6675              		.syntax unified
 6676              		.thumb
 6677              		.thumb_func
 6678              		.fpu fpv4-sp-d16
 6680              	UART_CheckIdleState:
 6681              	.LVL404:
 6682              	.LFB366:
3051:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
 6683              		.loc 1 3051 1 is_stmt 1 view -0
 6684              		.cfi_startproc
 6685              		@ args = 0, pretend = 0, frame = 0
 6686              		@ frame_needed = 0, uses_anonymous_args = 0
3052:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6687              		.loc 1 3052 3 view .LVU2007
3055:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6688              		.loc 1 3055 3 view .LVU2008
3051:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
 6689              		.loc 1 3051 1 is_stmt 0 view .LVU2009
 6690 0000 73B5     		push	{r0, r1, r4, r5, r6, lr}
 6691              		.cfi_def_cfa_offset 24
 6692              		.cfi_offset 4, -16
 6693              		.cfi_offset 5, -12
 6694              		.cfi_offset 6, -8
 6695              		.cfi_offset 14, -4
3051:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   uint32_t tickstart;
 6696              		.loc 1 3051 1 view .LVU2010
 6697 0002 0446     		mov	r4, r0
3055:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6698              		.loc 1 3055 20 view .LVU2011
 6699 0004 0026     		movs	r6, #0
 6700 0006 C0F88860 		str	r6, [r0, #136]
3058:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6701              		.loc 1 3058 3 is_stmt 1 view .LVU2012
3058:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6702              		.loc 1 3058 15 is_stmt 0 view .LVU2013
 6703 000a FFF7FEFF 		bl	HAL_GetTick
 6704              	.LVL405:
3061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6705              		.loc 1 3061 13 view .LVU2014
 6706 000e 2368     		ldr	r3, [r4]
3061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6707              		.loc 1 3061 23 view .LVU2015
 6708 0010 1B68     		ldr	r3, [r3]
3061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6709              		.loc 1 3061 6 view .LVU2016
 6710 0012 1A07     		lsls	r2, r3, #28
3058:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6711              		.loc 1 3058 15 view .LVU2017
 6712 0014 0546     		mov	r5, r0
 6713              	.LVL406:
3061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6714              		.loc 1 3061 3 is_stmt 1 view .LVU2018
3061:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6715              		.loc 1 3061 6 is_stmt 0 view .LVU2019
 6716 0016 17D4     		bmi	.L986
 6717              	.LVL407:
 6718              	.L989:
3072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6719              		.loc 1 3072 3 is_stmt 1 view .LVU2020
3072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6720              		.loc 1 3072 13 is_stmt 0 view .LVU2021
 6721 0018 2368     		ldr	r3, [r4]
3072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6722              		.loc 1 3072 23 view .LVU2022
 6723 001a 1B68     		ldr	r3, [r3]
3072:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6724              		.loc 1 3072 6 view .LVU2023
 6725 001c 5B07     		lsls	r3, r3, #29
 6726 001e 0AD5     		bpl	.L988
3075:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6727              		.loc 1 3075 5 is_stmt 1 view .LVU2024
3075:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6728              		.loc 1 3075 9 is_stmt 0 view .LVU2025
 6729 0020 6FF07E43 		mvn	r3, #-33554432
 6730 0024 0093     		str	r3, [sp]
 6731 0026 0022     		movs	r2, #0
 6732 0028 2B46     		mov	r3, r5
 6733 002a 4FF48001 		mov	r1, #4194304
 6734 002e 2046     		mov	r0, r4
 6735 0030 FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 6736              	.LVL408:
3075:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6737              		.loc 1 3075 8 view .LVU2026
 6738 0034 A0B9     		cbnz	r0, .L991
 6739              	.L988:
3083:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 6740              		.loc 1 3083 3 is_stmt 1 view .LVU2027
3083:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 6741              		.loc 1 3083 17 is_stmt 0 view .LVU2028
 6742 0036 2023     		movs	r3, #32
3086:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6743              		.loc 1 3086 3 view .LVU2029
 6744 0038 0020     		movs	r0, #0
3083:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 6745              		.loc 1 3083 17 view .LVU2030
 6746 003a C4F88030 		str	r3, [r4, #128]
3084:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6747              		.loc 1 3084 3 is_stmt 1 view .LVU2031
3086:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6748              		.loc 1 3086 3 is_stmt 0 view .LVU2032
 6749 003e 84F87C00 		strb	r0, [r4, #124]
3084:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6750              		.loc 1 3084 18 view .LVU2033
 6751 0042 C4F88430 		str	r3, [r4, #132]
3086:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6752              		.loc 1 3086 3 is_stmt 1 view .LVU2034
3086:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6753              		.loc 1 3086 3 view .LVU2035
3088:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6754              		.loc 1 3088 3 view .LVU2036
3088:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6755              		.loc 1 3088 10 is_stmt 0 view .LVU2037
 6756 0046 0CE0     		b	.L990
 6757              	.LVL409:
 6758              	.L986:
3064:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6759              		.loc 1 3064 5 is_stmt 1 view .LVU2038
3064:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6760              		.loc 1 3064 9 is_stmt 0 view .LVU2039
 6761 0048 6FF07E43 		mvn	r3, #-33554432
 6762 004c 0093     		str	r3, [sp]
 6763 004e 3246     		mov	r2, r6
 6764 0050 0346     		mov	r3, r0
 6765 0052 4FF40011 		mov	r1, #2097152
 6766 0056 2046     		mov	r0, r4
 6767              	.LVL410:
3064:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6768              		.loc 1 3064 9 view .LVU2040
 6769 0058 FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 6770              	.LVL411:
3064:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     {
 6771              		.loc 1 3064 8 view .LVU2041
 6772 005c 0028     		cmp	r0, #0
 6773 005e DBD0     		beq	.L989
 6774              	.L991:
3067:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****     }
 6775              		.loc 1 3067 14 view .LVU2042
 6776 0060 0320     		movs	r0, #3
 6777              	.L990:
3089:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6778              		.loc 1 3089 1 view .LVU2043
 6779 0062 02B0     		add	sp, sp, #8
 6780              		.cfi_def_cfa_offset 16
 6781              		@ sp needed
 6782 0064 70BD     		pop	{r4, r5, r6, pc}
3089:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6783              		.loc 1 3089 1 view .LVU2044
 6784              		.cfi_endproc
 6785              	.LFE366:
 6787              		.section	.text.HAL_UART_Init,"ax",%progbits
 6788              		.align	1
 6789              		.global	HAL_UART_Init
 6790              		.syntax unified
 6791              		.thumb
 6792              		.thumb_func
 6793              		.fpu fpv4-sp-d16
 6795              	HAL_UART_Init:
 6796              	.LVL412:
 6797              	.LFB325:
 296:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 6798              		.loc 1 296 1 is_stmt 1 view -0
 6799              		.cfi_startproc
 6800              		@ args = 0, pretend = 0, frame = 0
 6801              		@ frame_needed = 0, uses_anonymous_args = 0
 298:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6802              		.loc 1 298 3 view .LVU2046
 296:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 6803              		.loc 1 296 1 is_stmt 0 view .LVU2047
 6804 0000 10B5     		push	{r4, lr}
 6805              		.cfi_def_cfa_offset 8
 6806              		.cfi_offset 4, -8
 6807              		.cfi_offset 14, -4
 298:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6808              		.loc 1 298 6 view .LVU2048
 6809 0002 0446     		mov	r4, r0
 6810 0004 50B3     		cbz	r0, .L997
 303:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6811              		.loc 1 303 3 is_stmt 1 view .LVU2049
 311:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6812              		.loc 1 311 5 view .LVU2050
 314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6813              		.loc 1 314 3 view .LVU2051
 314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6814              		.loc 1 314 12 is_stmt 0 view .LVU2052
 6815 0006 D0F88030 		ldr	r3, [r0, #128]
 314:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6816              		.loc 1 314 6 view .LVU2053
 6817 000a 1BB9     		cbnz	r3, .L998
 317:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6818              		.loc 1 317 5 is_stmt 1 view .LVU2054
 317:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6819              		.loc 1 317 17 is_stmt 0 view .LVU2055
 6820 000c 80F87C30 		strb	r3, [r0, #124]
 331:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 6821              		.loc 1 331 5 is_stmt 1 view .LVU2056
 6822 0010 FFF7FEFF 		bl	HAL_UART_MspInit
 6823              	.LVL413:
 6824              	.L998:
 335:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6825              		.loc 1 335 3 view .LVU2057
 337:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6826              		.loc 1 337 3 is_stmt 0 view .LVU2058
 6827 0014 2268     		ldr	r2, [r4]
 335:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6828              		.loc 1 335 17 view .LVU2059
 6829 0016 2423     		movs	r3, #36
 6830 0018 C4F88030 		str	r3, [r4, #128]
 337:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6831              		.loc 1 337 3 is_stmt 1 view .LVU2060
 6832 001c 1368     		ldr	r3, [r2]
 6833 001e 23F00103 		bic	r3, r3, #1
 6834 0022 1360     		str	r3, [r2]
 340:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6835              		.loc 1 340 3 view .LVU2061
 340:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6836              		.loc 1 340 7 is_stmt 0 view .LVU2062
 6837 0024 2046     		mov	r0, r4
 6838 0026 FFF7FEFF 		bl	UART_SetConfig
 6839              	.LVL414:
 340:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6840              		.loc 1 340 6 view .LVU2063
 6841 002a 0128     		cmp	r0, #1
 6842 002c 16D0     		beq	.L997
 345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6843              		.loc 1 345 3 is_stmt 1 view .LVU2064
 345:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6844              		.loc 1 345 6 is_stmt 0 view .LVU2065
 6845 002e A36A     		ldr	r3, [r4, #40]
 6846 0030 13B1     		cbz	r3, .L1000
 347:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6847              		.loc 1 347 5 is_stmt 1 view .LVU2066
 6848 0032 2046     		mov	r0, r4
 6849 0034 FFF7FEFF 		bl	UART_AdvFeatureConfig
 6850              	.LVL415:
 6851              	.L1000:
 353:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 6852              		.loc 1 353 3 view .LVU2067
 6853 0038 2368     		ldr	r3, [r4]
 6854 003a 5A68     		ldr	r2, [r3, #4]
 6855 003c 22F49042 		bic	r2, r2, #18432
 6856 0040 5A60     		str	r2, [r3, #4]
 354:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6857              		.loc 1 354 3 view .LVU2068
 6858 0042 9A68     		ldr	r2, [r3, #8]
 6859 0044 22F02A02 		bic	r2, r2, #42
 6860 0048 9A60     		str	r2, [r3, #8]
 356:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6861              		.loc 1 356 3 view .LVU2069
 6862 004a 1A68     		ldr	r2, [r3]
 6863 004c 42F00102 		orr	r2, r2, #1
 359:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6864              		.loc 1 359 11 is_stmt 0 view .LVU2070
 6865 0050 2046     		mov	r0, r4
 356:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6866              		.loc 1 356 3 view .LVU2071
 6867 0052 1A60     		str	r2, [r3]
 359:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6868              		.loc 1 359 3 is_stmt 1 view .LVU2072
 360:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6869              		.loc 1 360 1 is_stmt 0 view .LVU2073
 6870 0054 BDE81040 		pop	{r4, lr}
 6871              		.cfi_remember_state
 6872              		.cfi_restore 14
 6873              		.cfi_restore 4
 6874              		.cfi_def_cfa_offset 0
 6875              	.LVL416:
 359:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6876              		.loc 1 359 11 view .LVU2074
 6877 0058 FFF7FEBF 		b	UART_CheckIdleState
 6878              	.LVL417:
 6879              	.L997:
 6880              		.cfi_restore_state
 360:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6881              		.loc 1 360 1 view .LVU2075
 6882 005c 0120     		movs	r0, #1
 6883 005e 10BD     		pop	{r4, pc}
 360:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6884              		.loc 1 360 1 view .LVU2076
 6885              		.cfi_endproc
 6886              	.LFE325:
 6888              		.section	.text.HAL_HalfDuplex_Init,"ax",%progbits
 6889              		.align	1
 6890              		.global	HAL_HalfDuplex_Init
 6891              		.syntax unified
 6892              		.thumb
 6893              		.thumb_func
 6894              		.fpu fpv4-sp-d16
 6896              	HAL_HalfDuplex_Init:
 6897              	.LVL418:
 6898              	.LFB326:
 369:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 6899              		.loc 1 369 1 is_stmt 1 view -0
 6900              		.cfi_startproc
 6901              		@ args = 0, pretend = 0, frame = 0
 6902              		@ frame_needed = 0, uses_anonymous_args = 0
 371:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6903              		.loc 1 371 3 view .LVU2078
 369:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 6904              		.loc 1 369 1 is_stmt 0 view .LVU2079
 6905 0000 10B5     		push	{r4, lr}
 6906              		.cfi_def_cfa_offset 8
 6907              		.cfi_offset 4, -8
 6908              		.cfi_offset 14, -4
 371:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6909              		.loc 1 371 6 view .LVU2080
 6910 0002 0446     		mov	r4, r0
 6911 0004 70B3     		cbz	r0, .L1009
 377:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6912              		.loc 1 377 3 is_stmt 1 view .LVU2081
 379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6913              		.loc 1 379 3 view .LVU2082
 379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6914              		.loc 1 379 12 is_stmt 0 view .LVU2083
 6915 0006 D0F88030 		ldr	r3, [r0, #128]
 379:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6916              		.loc 1 379 6 view .LVU2084
 6917 000a 1BB9     		cbnz	r3, .L1010
 382:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6918              		.loc 1 382 5 is_stmt 1 view .LVU2085
 382:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6919              		.loc 1 382 17 is_stmt 0 view .LVU2086
 6920 000c 80F87C30 		strb	r3, [r0, #124]
 396:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 6921              		.loc 1 396 5 is_stmt 1 view .LVU2087
 6922 0010 FFF7FEFF 		bl	HAL_UART_MspInit
 6923              	.LVL419:
 6924              	.L1010:
 400:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6925              		.loc 1 400 3 view .LVU2088
 402:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6926              		.loc 1 402 3 is_stmt 0 view .LVU2089
 6927 0014 2268     		ldr	r2, [r4]
 400:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6928              		.loc 1 400 17 view .LVU2090
 6929 0016 2423     		movs	r3, #36
 6930 0018 C4F88030 		str	r3, [r4, #128]
 402:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6931              		.loc 1 402 3 is_stmt 1 view .LVU2091
 6932 001c 1368     		ldr	r3, [r2]
 6933 001e 23F00103 		bic	r3, r3, #1
 6934 0022 1360     		str	r3, [r2]
 405:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6935              		.loc 1 405 3 view .LVU2092
 405:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6936              		.loc 1 405 7 is_stmt 0 view .LVU2093
 6937 0024 2046     		mov	r0, r4
 6938 0026 FFF7FEFF 		bl	UART_SetConfig
 6939              	.LVL420:
 405:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6940              		.loc 1 405 6 view .LVU2094
 6941 002a 0128     		cmp	r0, #1
 6942 002c 1AD0     		beq	.L1009
 410:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6943              		.loc 1 410 3 is_stmt 1 view .LVU2095
 410:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 6944              		.loc 1 410 6 is_stmt 0 view .LVU2096
 6945 002e A36A     		ldr	r3, [r4, #40]
 6946 0030 13B1     		cbz	r3, .L1012
 412:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 6947              		.loc 1 412 5 is_stmt 1 view .LVU2097
 6948 0032 2046     		mov	r0, r4
 6949 0034 FFF7FEFF 		bl	UART_AdvFeatureConfig
 6950              	.LVL421:
 6951              	.L1012:
 418:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_IREN | USART_CR3_SCEN));
 6952              		.loc 1 418 3 view .LVU2098
 6953 0038 2368     		ldr	r3, [r4]
 6954 003a 5A68     		ldr	r2, [r3, #4]
 6955 003c 22F49042 		bic	r2, r2, #18432
 6956 0040 5A60     		str	r2, [r3, #4]
 419:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6957              		.loc 1 419 3 view .LVU2099
 6958 0042 9A68     		ldr	r2, [r3, #8]
 6959 0044 22F02202 		bic	r2, r2, #34
 6960 0048 9A60     		str	r2, [r3, #8]
 422:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6961              		.loc 1 422 3 view .LVU2100
 6962 004a 9A68     		ldr	r2, [r3, #8]
 6963 004c 42F00802 		orr	r2, r2, #8
 6964 0050 9A60     		str	r2, [r3, #8]
 424:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6965              		.loc 1 424 3 view .LVU2101
 6966 0052 1A68     		ldr	r2, [r3]
 6967 0054 42F00102 		orr	r2, r2, #1
 427:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6968              		.loc 1 427 11 is_stmt 0 view .LVU2102
 6969 0058 2046     		mov	r0, r4
 424:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6970              		.loc 1 424 3 view .LVU2103
 6971 005a 1A60     		str	r2, [r3]
 427:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6972              		.loc 1 427 3 is_stmt 1 view .LVU2104
 428:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6973              		.loc 1 428 1 is_stmt 0 view .LVU2105
 6974 005c BDE81040 		pop	{r4, lr}
 6975              		.cfi_remember_state
 6976              		.cfi_restore 14
 6977              		.cfi_restore 4
 6978              		.cfi_def_cfa_offset 0
 6979              	.LVL422:
 427:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 6980              		.loc 1 427 11 view .LVU2106
 6981 0060 FFF7FEBF 		b	UART_CheckIdleState
 6982              	.LVL423:
 6983              	.L1009:
 6984              		.cfi_restore_state
 428:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6985              		.loc 1 428 1 view .LVU2107
 6986 0064 0120     		movs	r0, #1
 6987 0066 10BD     		pop	{r4, pc}
 428:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 6988              		.loc 1 428 1 view .LVU2108
 6989              		.cfi_endproc
 6990              	.LFE326:
 6992              		.section	.text.HAL_LIN_Init,"ax",%progbits
 6993              		.align	1
 6994              		.global	HAL_LIN_Init
 6995              		.syntax unified
 6996              		.thumb
 6997              		.thumb_func
 6998              		.fpu fpv4-sp-d16
 7000              	HAL_LIN_Init:
 7001              	.LVL424:
 7002              	.LFB327:
 442:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 7003              		.loc 1 442 1 is_stmt 1 view -0
 7004              		.cfi_startproc
 7005              		@ args = 0, pretend = 0, frame = 0
 7006              		@ frame_needed = 0, uses_anonymous_args = 0
 444:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7007              		.loc 1 444 3 view .LVU2110
 442:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 7008              		.loc 1 442 1 is_stmt 0 view .LVU2111
 7009 0000 38B5     		push	{r3, r4, r5, lr}
 7010              		.cfi_def_cfa_offset 16
 7011              		.cfi_offset 3, -16
 7012              		.cfi_offset 4, -12
 7013              		.cfi_offset 5, -8
 7014              		.cfi_offset 14, -4
 442:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 7015              		.loc 1 442 1 view .LVU2112
 7016 0002 0D46     		mov	r5, r1
 444:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7017              		.loc 1 444 6 view .LVU2113
 7018 0004 0446     		mov	r4, r0
 7019 0006 0028     		cmp	r0, #0
 7020 0008 3AD0     		beq	.L1021
 450:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the Break detection length parameter */
 7021              		.loc 1 450 3 is_stmt 1 view .LVU2114
 452:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7022              		.loc 1 452 3 view .LVU2115
 455:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7023              		.loc 1 455 3 view .LVU2116
 455:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7024              		.loc 1 455 6 is_stmt 0 view .LVU2117
 7025 000a C369     		ldr	r3, [r0, #28]
 7026 000c B3F5004F 		cmp	r3, #32768
 7027 0010 36D0     		beq	.L1021
 460:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7028              		.loc 1 460 3 is_stmt 1 view .LVU2118
 460:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7029              		.loc 1 460 6 is_stmt 0 view .LVU2119
 7030 0012 8368     		ldr	r3, [r0, #8]
 7031 0014 002B     		cmp	r3, #0
 7032 0016 33D1     		bne	.L1021
 465:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7033              		.loc 1 465 3 is_stmt 1 view .LVU2120
 465:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7034              		.loc 1 465 12 is_stmt 0 view .LVU2121
 7035 0018 D0F88030 		ldr	r3, [r0, #128]
 465:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7036              		.loc 1 465 6 view .LVU2122
 7037 001c 1BB9     		cbnz	r3, .L1023
 468:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7038              		.loc 1 468 5 is_stmt 1 view .LVU2123
 468:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7039              		.loc 1 468 17 is_stmt 0 view .LVU2124
 7040 001e 80F87C30 		strb	r3, [r0, #124]
 482:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 7041              		.loc 1 482 5 is_stmt 1 view .LVU2125
 7042 0022 FFF7FEFF 		bl	HAL_UART_MspInit
 7043              	.LVL425:
 7044              	.L1023:
 486:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7045              		.loc 1 486 3 view .LVU2126
 488:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7046              		.loc 1 488 3 is_stmt 0 view .LVU2127
 7047 0026 2268     		ldr	r2, [r4]
 486:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7048              		.loc 1 486 17 view .LVU2128
 7049 0028 2423     		movs	r3, #36
 7050 002a C4F88030 		str	r3, [r4, #128]
 488:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7051              		.loc 1 488 3 is_stmt 1 view .LVU2129
 7052 002e 1368     		ldr	r3, [r2]
 7053 0030 23F00103 		bic	r3, r3, #1
 7054 0034 1360     		str	r3, [r2]
 491:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7055              		.loc 1 491 3 view .LVU2130
 491:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7056              		.loc 1 491 7 is_stmt 0 view .LVU2131
 7057 0036 2046     		mov	r0, r4
 7058 0038 FFF7FEFF 		bl	UART_SetConfig
 7059              	.LVL426:
 491:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7060              		.loc 1 491 6 view .LVU2132
 7061 003c 0128     		cmp	r0, #1
 7062 003e 1FD0     		beq	.L1021
 496:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7063              		.loc 1 496 3 is_stmt 1 view .LVU2133
 496:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7064              		.loc 1 496 6 is_stmt 0 view .LVU2134
 7065 0040 A36A     		ldr	r3, [r4, #40]
 7066 0042 13B1     		cbz	r3, .L1024
 498:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 7067              		.loc 1 498 5 is_stmt 1 view .LVU2135
 7068 0044 2046     		mov	r0, r4
 7069 0046 FFF7FEFF 		bl	UART_AdvFeatureConfig
 7070              	.LVL427:
 7071              	.L1024:
 504:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_HDSEL | USART_CR3_IREN | USART_CR3_SCEN));
 7072              		.loc 1 504 3 view .LVU2136
 7073 004a 2368     		ldr	r3, [r4]
 7074 004c 5A68     		ldr	r2, [r3, #4]
 7075 004e 22F40062 		bic	r2, r2, #2048
 7076 0052 5A60     		str	r2, [r3, #4]
 505:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7077              		.loc 1 505 3 view .LVU2137
 7078 0054 9A68     		ldr	r2, [r3, #8]
 7079 0056 22F02A02 		bic	r2, r2, #42
 7080 005a 9A60     		str	r2, [r3, #8]
 508:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7081              		.loc 1 508 3 view .LVU2138
 7082 005c 5A68     		ldr	r2, [r3, #4]
 7083 005e 42F48042 		orr	r2, r2, #16384
 7084 0062 5A60     		str	r2, [r3, #4]
 511:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7085              		.loc 1 511 3 view .LVU2139
 7086 0064 5968     		ldr	r1, [r3, #4]
 7087 0066 21F02001 		bic	r1, r1, #32
 7088 006a 2943     		orrs	r1, r1, r5
 7089 006c 5960     		str	r1, [r3, #4]
 513:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7090              		.loc 1 513 3 view .LVU2140
 7091 006e 1A68     		ldr	r2, [r3]
 7092 0070 42F00102 		orr	r2, r2, #1
 7093 0074 1A60     		str	r2, [r3]
 516:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7094              		.loc 1 516 3 view .LVU2141
 516:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7095              		.loc 1 516 11 is_stmt 0 view .LVU2142
 7096 0076 2046     		mov	r0, r4
 517:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7097              		.loc 1 517 1 view .LVU2143
 7098 0078 BDE83840 		pop	{r3, r4, r5, lr}
 7099              		.cfi_remember_state
 7100              		.cfi_restore 14
 7101              		.cfi_restore 5
 7102              		.cfi_restore 4
 7103              		.cfi_restore 3
 7104              		.cfi_def_cfa_offset 0
 7105              	.LVL428:
 516:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7106              		.loc 1 516 11 view .LVU2144
 7107 007c FFF7FEBF 		b	UART_CheckIdleState
 7108              	.LVL429:
 7109              	.L1021:
 7110              		.cfi_restore_state
 517:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7111              		.loc 1 517 1 view .LVU2145
 7112 0080 0120     		movs	r0, #1
 7113 0082 38BD     		pop	{r3, r4, r5, pc}
 517:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7114              		.loc 1 517 1 view .LVU2146
 7115              		.cfi_endproc
 7116              	.LFE327:
 7118              		.section	.text.HAL_MultiProcessor_Init,"ax",%progbits
 7119              		.align	1
 7120              		.global	HAL_MultiProcessor_Init
 7121              		.syntax unified
 7122              		.thumb
 7123              		.thumb_func
 7124              		.fpu fpv4-sp-d16
 7126              	HAL_MultiProcessor_Init:
 7127              	.LVL430:
 7128              	.LFB328:
 539:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 7129              		.loc 1 539 1 is_stmt 1 view -0
 7130              		.cfi_startproc
 7131              		@ args = 0, pretend = 0, frame = 0
 7132              		@ frame_needed = 0, uses_anonymous_args = 0
 541:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7133              		.loc 1 541 3 view .LVU2148
 539:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 7134              		.loc 1 539 1 is_stmt 0 view .LVU2149
 7135 0000 70B5     		push	{r4, r5, r6, lr}
 7136              		.cfi_def_cfa_offset 16
 7137              		.cfi_offset 4, -16
 7138              		.cfi_offset 5, -12
 7139              		.cfi_offset 6, -8
 7140              		.cfi_offset 14, -4
 539:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   /* Check the UART handle allocation */
 7141              		.loc 1 539 1 view .LVU2150
 7142 0002 0E46     		mov	r6, r1
 7143 0004 1546     		mov	r5, r2
 541:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7144              		.loc 1 541 6 view .LVU2151
 7145 0006 0446     		mov	r4, r0
 7146 0008 0028     		cmp	r0, #0
 7147 000a 38D0     		beq	.L1036
 547:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7148              		.loc 1 547 3 is_stmt 1 view .LVU2152
 549:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7149              		.loc 1 549 3 view .LVU2153
 549:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7150              		.loc 1 549 12 is_stmt 0 view .LVU2154
 7151 000c D0F88030 		ldr	r3, [r0, #128]
 549:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7152              		.loc 1 549 6 view .LVU2155
 7153 0010 1BB9     		cbnz	r3, .L1037
 552:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7154              		.loc 1 552 5 is_stmt 1 view .LVU2156
 552:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7155              		.loc 1 552 17 is_stmt 0 view .LVU2157
 7156 0012 80F87C30 		strb	r3, [r0, #124]
 566:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** #endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
 7157              		.loc 1 566 5 is_stmt 1 view .LVU2158
 7158 0016 FFF7FEFF 		bl	HAL_UART_MspInit
 7159              	.LVL431:
 7160              	.L1037:
 570:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7161              		.loc 1 570 3 view .LVU2159
 572:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7162              		.loc 1 572 3 is_stmt 0 view .LVU2160
 7163 001a 2268     		ldr	r2, [r4]
 570:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7164              		.loc 1 570 17 view .LVU2161
 7165 001c 2423     		movs	r3, #36
 7166 001e C4F88030 		str	r3, [r4, #128]
 572:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7167              		.loc 1 572 3 is_stmt 1 view .LVU2162
 7168 0022 1368     		ldr	r3, [r2]
 7169 0024 23F00103 		bic	r3, r3, #1
 7170 0028 1360     		str	r3, [r2]
 575:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7171              		.loc 1 575 3 view .LVU2163
 575:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7172              		.loc 1 575 7 is_stmt 0 view .LVU2164
 7173 002a 2046     		mov	r0, r4
 7174 002c FFF7FEFF 		bl	UART_SetConfig
 7175              	.LVL432:
 575:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7176              		.loc 1 575 6 view .LVU2165
 7177 0030 0128     		cmp	r0, #1
 7178 0032 24D0     		beq	.L1036
 580:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7179              		.loc 1 580 3 is_stmt 1 view .LVU2166
 580:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7180              		.loc 1 580 6 is_stmt 0 view .LVU2167
 7181 0034 A36A     		ldr	r3, [r4, #40]
 7182 0036 13B1     		cbz	r3, .L1039
 582:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 7183              		.loc 1 582 5 is_stmt 1 view .LVU2168
 7184 0038 2046     		mov	r0, r4
 7185 003a FFF7FEFF 		bl	UART_AdvFeatureConfig
 7186              	.LVL433:
 7187              	.L1039:
 588:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 7188              		.loc 1 588 3 view .LVU2169
 7189 003e 2368     		ldr	r3, [r4]
 7190 0040 5A68     		ldr	r2, [r3, #4]
 7191 0042 22F49042 		bic	r2, r2, #18432
 7192 0046 5A60     		str	r2, [r3, #4]
 589:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7193              		.loc 1 589 3 view .LVU2170
 7194 0048 9A68     		ldr	r2, [r3, #8]
 7195 004a 22F02A02 		bic	r2, r2, #42
 7196 004e 9A60     		str	r2, [r3, #8]
 591:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7197              		.loc 1 591 3 view .LVU2171
 591:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   {
 7198              		.loc 1 591 6 is_stmt 0 view .LVU2172
 7199 0050 B5F5006F 		cmp	r5, #2048
 594:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   }
 7200              		.loc 1 594 5 is_stmt 1 view .LVU2173
 7201 0054 01BF     		itttt	eq
 7202 0056 5968     		ldreq	r1, [r3, #4]
 7203 0058 21F07F41 		biceq	r1, r1, #-16777216
 7204 005c 41EA0661 		orreq	r1, r1, r6, lsl #24
 7205 0060 5960     		streq	r1, [r3, #4]
 598:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7206              		.loc 1 598 3 view .LVU2174
 7207 0062 1A68     		ldr	r2, [r3]
 7208 0064 22F40062 		bic	r2, r2, #2048
 7209 0068 2A43     		orrs	r2, r2, r5
 7210 006a 1A60     		str	r2, [r3]
 600:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7211              		.loc 1 600 3 view .LVU2175
 7212 006c 1A68     		ldr	r2, [r3]
 7213 006e 42F00102 		orr	r2, r2, #1
 603:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7214              		.loc 1 603 11 is_stmt 0 view .LVU2176
 7215 0072 2046     		mov	r0, r4
 600:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7216              		.loc 1 600 3 view .LVU2177
 7217 0074 1A60     		str	r2, [r3]
 603:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7218              		.loc 1 603 3 is_stmt 1 view .LVU2178
 604:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7219              		.loc 1 604 1 is_stmt 0 view .LVU2179
 7220 0076 BDE87040 		pop	{r4, r5, r6, lr}
 7221              		.cfi_remember_state
 7222              		.cfi_restore 14
 7223              		.cfi_restore 6
 7224              		.cfi_restore 5
 7225              		.cfi_restore 4
 7226              		.cfi_def_cfa_offset 0
 7227              	.LVL434:
 603:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7228              		.loc 1 603 11 view .LVU2180
 7229 007a FFF7FEBF 		b	UART_CheckIdleState
 7230              	.LVL435:
 7231              	.L1036:
 7232              		.cfi_restore_state
 604:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7233              		.loc 1 604 1 view .LVU2181
 7234 007e 0120     		movs	r0, #1
 7235 0080 70BD     		pop	{r4, r5, r6, pc}
 604:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7236              		.loc 1 604 1 view .LVU2182
 7237              		.cfi_endproc
 7238              	.LFE328:
 7240              		.section	.text.HAL_MultiProcessor_EnableMuteMode,"ax",%progbits
 7241              		.align	1
 7242              		.global	HAL_MultiProcessor_EnableMuteMode
 7243              		.syntax unified
 7244              		.thumb
 7245              		.thumb_func
 7246              		.fpu fpv4-sp-d16
 7248              	HAL_MultiProcessor_EnableMuteMode:
 7249              	.LVL436:
 7250              	.LFB356:
2546:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
 7251              		.loc 1 2546 1 is_stmt 1 view -0
 7252              		.cfi_startproc
 7253              		@ args = 0, pretend = 0, frame = 0
 7254              		@ frame_needed = 0, uses_anonymous_args = 0
 7255              		@ link register save eliminated.
2547:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7256              		.loc 1 2547 3 view .LVU2184
2547:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7257              		.loc 1 2547 3 view .LVU2185
 7258 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 7259 0004 012A     		cmp	r2, #1
 7260 0006 0FD0     		beq	.L1048
2547:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7261              		.loc 1 2547 3 discriminator 2 view .LVU2186
 7262 0008 0122     		movs	r2, #1
 7263 000a 80F87C20 		strb	r2, [r0, #124]
2549:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7264              		.loc 1 2549 3 discriminator 2 view .LVU2187
2552:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7265              		.loc 1 2552 3 is_stmt 0 discriminator 2 view .LVU2188
 7266 000e 0168     		ldr	r1, [r0]
2549:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7267              		.loc 1 2549 17 discriminator 2 view .LVU2189
 7268 0010 2422     		movs	r2, #36
 7269 0012 C0F88020 		str	r2, [r0, #128]
2552:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7270              		.loc 1 2552 3 is_stmt 1 discriminator 2 view .LVU2190
 7271 0016 0A68     		ldr	r2, [r1]
 7272 0018 42F40052 		orr	r2, r2, #8192
 7273 001c 0A60     		str	r2, [r1]
2554:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7274              		.loc 1 2554 3 discriminator 2 view .LVU2191
2554:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7275              		.loc 1 2554 17 is_stmt 0 discriminator 2 view .LVU2192
 7276 001e 2022     		movs	r2, #32
 7277 0020 C0F88020 		str	r2, [r0, #128]
2556:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7278              		.loc 1 2556 3 is_stmt 1 discriminator 2 view .LVU2193
2556:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7279              		.loc 1 2556 11 is_stmt 0 discriminator 2 view .LVU2194
 7280 0024 FFF7FEBF 		b	UART_CheckIdleState
 7281              	.LVL437:
 7282              	.L1048:
2557:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7283              		.loc 1 2557 1 view .LVU2195
 7284 0028 0220     		movs	r0, #2
 7285              	.LVL438:
2557:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7286              		.loc 1 2557 1 view .LVU2196
 7287 002a 7047     		bx	lr
 7288              		.cfi_endproc
 7289              	.LFE356:
 7291              		.section	.text.HAL_MultiProcessor_DisableMuteMode,"ax",%progbits
 7292              		.align	1
 7293              		.global	HAL_MultiProcessor_DisableMuteMode
 7294              		.syntax unified
 7295              		.thumb
 7296              		.thumb_func
 7297              		.fpu fpv4-sp-d16
 7299              	HAL_MultiProcessor_DisableMuteMode:
 7300              	.LVL439:
 7301              	.LFB357:
2566:../../..\CubeG4\src/stm32g4xx_hal_uart.c ****   __HAL_LOCK(huart);
 7302              		.loc 1 2566 1 is_stmt 1 view -0
 7303              		.cfi_startproc
 7304              		@ args = 0, pretend = 0, frame = 0
 7305              		@ frame_needed = 0, uses_anonymous_args = 0
 7306              		@ link register save eliminated.
2567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7307              		.loc 1 2567 3 view .LVU2198
2567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7308              		.loc 1 2567 3 view .LVU2199
 7309 0000 90F87C20 		ldrb	r2, [r0, #124]	@ zero_extendqisi2
 7310 0004 012A     		cmp	r2, #1
 7311 0006 0FD0     		beq	.L1050
2567:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7312              		.loc 1 2567 3 discriminator 2 view .LVU2200
 7313 0008 0122     		movs	r2, #1
 7314 000a 80F87C20 		strb	r2, [r0, #124]
2569:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7315              		.loc 1 2569 3 discriminator 2 view .LVU2201
2572:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7316              		.loc 1 2572 3 is_stmt 0 discriminator 2 view .LVU2202
 7317 000e 0168     		ldr	r1, [r0]
2569:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7318              		.loc 1 2569 17 discriminator 2 view .LVU2203
 7319 0010 2422     		movs	r2, #36
 7320 0012 C0F88020 		str	r2, [r0, #128]
2572:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7321              		.loc 1 2572 3 is_stmt 1 discriminator 2 view .LVU2204
 7322 0016 0A68     		ldr	r2, [r1]
 7323 0018 22F40052 		bic	r2, r2, #8192
 7324 001c 0A60     		str	r2, [r1]
2574:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7325              		.loc 1 2574 3 discriminator 2 view .LVU2205
2574:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7326              		.loc 1 2574 17 is_stmt 0 discriminator 2 view .LVU2206
 7327 001e 2022     		movs	r2, #32
 7328 0020 C0F88020 		str	r2, [r0, #128]
2576:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7329              		.loc 1 2576 3 is_stmt 1 discriminator 2 view .LVU2207
2576:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** }
 7330              		.loc 1 2576 11 is_stmt 0 discriminator 2 view .LVU2208
 7331 0024 FFF7FEBF 		b	UART_CheckIdleState
 7332              	.LVL440:
 7333              	.L1050:
2577:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7334              		.loc 1 2577 1 view .LVU2209
 7335 0028 0220     		movs	r0, #2
 7336              	.LVL441:
2577:../../..\CubeG4\src/stm32g4xx_hal_uart.c **** 
 7337              		.loc 1 2577 1 view .LVU2210
 7338 002a 7047     		bx	lr
 7339              		.cfi_endproc
 7340              	.LFE357:
 7342              		.section	.rodata.CSWTCH.221,"a"
 7343              		.set	.LANCHOR0,. + 0
 7346              	CSWTCH.221:
 7347 0000 01       		.byte	1
 7348 0001 04       		.byte	4
 7349 0002 02       		.byte	2
 7350 0003 08       		.byte	8
 7351              		.section	.rodata.CSWTCH.222,"a"
 7352              		.set	.LANCHOR1,. + 0
 7355              	CSWTCH.222:
 7356 0000 00       		.byte	0
 7357 0001 10       		.byte	16
 7358 0002 10       		.byte	16
 7359 0003 10       		.byte	16
 7360 0004 04       		.byte	4
 7361 0005 10       		.byte	16
 7362 0006 10       		.byte	16
 7363 0007 10       		.byte	16
 7364 0008 02       		.byte	2
 7365 0009 10       		.byte	16
 7366 000a 10       		.byte	16
 7367 000b 10       		.byte	16
 7368 000c 08       		.byte	8
 7369              		.text
 7370              	.Letext0:
 7371              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 7372              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 7373              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 7374              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 7375              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 7376              		.file 7 "../../..\\CubeG4\\include/stm32g4xx.h"
 7377              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 7378              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_dma.h"
 7379              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 7380              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_uart.h"
 7381              		.file 12 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
 7382              		.file 13 "../../..\\CubeG4\\include/stm32g4xx_hal_rcc.h"
 7383              		.file 14 "../../..\\CubeG4\\include/stm32g4xx_hal_uart_ex.h"
