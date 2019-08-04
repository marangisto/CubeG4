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
  13              		.file	"stm32g4xx_hal_dma.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.DMA_SetConfig,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	DMA_SetConfig:
  26              	.LVL0:
  27              	.LFB337:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_dma.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @file    stm32g4xx_hal_dma.c
   4:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief   DMA HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *         This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *         functionalities of the Direct Memory Access (DMA) peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *           + Initialization and de-initialization functions
   9:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *           + IO operation functions
  10:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *           + Peripheral State and errors functions
  11:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   @verbatim
  12:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   ==============================================================================
  13:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                         ##### How to use this driver #####
  14:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   ==============================================================================
  15:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   [..]
  16:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****    (#) Enable and configure the peripheral to be connected to the DMA Channel
  17:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (except for internal SRAM / FLASH memories: no initialization is
  18:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        necessary). Please refer to the Reference manual for connection between peripherals
  19:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        and DMA requests.
  20:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  21:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****    (#) For a given Channel, program the required configuration through the following parameters:
  22:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        Channel request, Transfer Direction, Source and Destination data formats,
  23:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        Circular or Normal mode, Channel Priority level, Source and Destination Increment mode
  24:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        using HAL_DMA_Init() function.
  25:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  26:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        Prior to HAL_DMA_Init the peripheral clock shall be enabled for both DMA & DMAMUX
  27:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        thanks to:
  28:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (##) DMA1 or DMA2: __HAL_RCC_DMA1_CLK_ENABLE() or  __HAL_RCC_DMA2_CLK_ENABLE() ;
  29:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (##) DMAMUX1:      __HAL_RCC_DMAMUX1_CLK_ENABLE();
  30:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  31:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****    (#) Use HAL_DMA_GetState() function to return the DMA state and HAL_DMA_GetError() in case of er
  32:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        detection.
  33:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  34:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****    (#) Use HAL_DMA_Abort() function to abort the current transfer
  35:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  36:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      -@-   In Memory-to-Memory transfer mode, Circular mode is not allowed.
  37:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  38:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      *** Polling mode IO operation ***
  39:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      =================================
  40:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     [..]
  41:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           (+) Use HAL_DMA_Start() to start DMA transfer after the configuration of Source
  42:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****               address and destination address and the Length of data to be transferred
  43:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           (+) Use HAL_DMA_PollForTransfer() to poll for the end of current transfer, in this
  44:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****               case a fixed Timeout can be configured by User depending from his application.
  45:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  46:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      *** Interrupt mode IO operation ***
  47:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      ===================================
  48:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     [..]
  49:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           (+) Configure the DMA interrupt priority using HAL_NVIC_SetPriority()
  50:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           (+) Enable the DMA IRQ handler using HAL_NVIC_EnableIRQ()
  51:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           (+) Use HAL_DMA_Start_IT() to start DMA transfer after the configuration of
  52:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****               Source address and destination address and the Length of data to be transferred.
  53:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****               In this case the DMA interrupt is configured
  54:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           (+) Use HAL_DMA_IRQHandler() called under DMA_IRQHandler() Interrupt subroutine
  55:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           (+) At the end of data transfer HAL_DMA_IRQHandler() function is executed and user can
  56:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****               add his own function to register callbacks with HAL_DMA_RegisterCallback().
  57:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  58:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      *** DMA HAL driver macros list ***
  59:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      =============================================
  60:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       [..]
  61:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        Below the list of macros in DMA HAL driver.
  62:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  63:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (+) __HAL_DMA_ENABLE: Enable the specified DMA Channel.
  64:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (+) __HAL_DMA_DISABLE: Disable the specified DMA Channel.
  65:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (+) __HAL_DMA_GET_FLAG: Get the DMA Channel pending flags.
  66:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (+) __HAL_DMA_CLEAR_FLAG: Clear the DMA Channel pending flags.
  67:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (+) __HAL_DMA_ENABLE_IT: Enable the specified DMA Channel interrupts.
  68:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (+) __HAL_DMA_DISABLE_IT: Disable the specified DMA Channel interrupts.
  69:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        (+) __HAL_DMA_GET_IT_SOURCE: Check whether the specified DMA Channel interrupt has occurred 
  70:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  71:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      [..]
  72:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (@) You can refer to the DMA HAL driver header file for more useful macros
  73:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  74:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   @endverbatim
  75:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   ******************************************************************************
  76:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @attention
  77:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *
  78:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  79:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * All rights reserved.</center></h2>
  80:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *
  81:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  82:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * the "License"; You may not use this file except in compliance with the
  83:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * License. You may obtain a copy of the License at:
  84:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                        opensource.org/licenses/BSD-3-Clause
  85:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *
  86:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   ******************************************************************************
  87:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
  88:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  89:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /* Includes ------------------------------------------------------------------*/
  90:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** #include "stm32g4xx_hal.h"
  91:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  92:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @addtogroup STM32G4xx_HAL_Driver
  93:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
  94:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
  95:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
  96:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @defgroup DMA DMA
  97:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief DMA HAL module driver
  98:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
  99:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 100:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 101:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** #ifdef HAL_DMA_MODULE_ENABLED
 102:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 103:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /* Private typedef -----------------------------------------------------------*/
 104:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /* Private define ------------------------------------------------------------*/
 105:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /* Private macro -------------------------------------------------------------*/
 106:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /* Private variables ---------------------------------------------------------*/
 107:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /* Private function prototypes -----------------------------------------------*/
 108:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @defgroup DMA_Private_Functions DMA Private Functions
 109:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
 110:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 111:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32
 112:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 113:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** static void DMA_CalcDMAMUXChannelBaseAndMask(DMA_HandleTypeDef *hdma);
 114:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** static void DMA_CalcDMAMUXRequestGenBaseAndMask(DMA_HandleTypeDef *hdma);
 115:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 116:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 117:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @}
 118:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 119:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 120:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /* Exported functions ---------------------------------------------------------*/
 121:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 122:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions DMA Exported Functions
 123:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
 124:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 125:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 126:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions_Group1 Initialization and de-initialization functions
 127:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *  @brief   Initialization and de-initialization functions
 128:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *
 129:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** @verbatim
 130:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****  ===============================================================================
 131:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****              ##### Initialization and de-initialization functions  #####
 132:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****  ===============================================================================
 133:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     [..]
 134:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     This section provides functions allowing to initialize the DMA Channel source
 135:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     and destination addresses, incrementation and data sizes, transfer direction,
 136:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     circular/normal mode selection, memory-to-memory mode selection and Channel priority value.
 137:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     [..]
 138:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     The HAL_DMA_Init() function follows the DMA configuration procedures as described in
 139:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     reference manual.
 140:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 141:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** @endverbatim
 142:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
 143:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 144:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 145:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 146:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Initialize the DMA according to the specified
 147:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *         parameters in the DMA_InitTypeDef and initialize the associated handle.
 148:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma Pointer to a DMA_HandleTypeDef structure that contains
 149:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 150:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 151:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 152:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
 153:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 154:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t tmp;
 155:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 156:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Check the DMA handle allocation */
 157:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (hdma == NULL)
 158:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 159:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 160:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 161:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 162:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Check the parameters */
 163:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
 164:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_DIRECTION(hdma->Init.Direction));
 165:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_INC_STATE(hdma->Init.PeriphInc));
 166:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_INC_STATE(hdma->Init.MemInc));
 167:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(hdma->Init.PeriphDataAlignment));
 168:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_DATA_SIZE(hdma->Init.MemDataAlignment));
 169:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_MODE(hdma->Init.Mode));
 170:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_PRIORITY(hdma->Init.Priority));
 171:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 172:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_ALL_REQUEST(hdma->Init.Request));
 173:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 174:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Compute the channel index */
 175:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if ((uint32_t)(hdma->Instance) < (uint32_t)(DMA2_Channel1))
 176:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 177:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* DMA1 */
 178:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Ch
 179:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 180:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 181:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 182:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 183:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* DMA2 */
 184:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA2_Channel1) / ((uint32_t)DMA2_Ch
 185:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 186:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 187:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 188:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Change DMA peripheral state */
 189:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_BUSY;
 190:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 191:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Get the CR register value */
 192:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   tmp = hdma->Instance->CCR;
 193:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 194:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clear PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR and MEM2MEM bits */
 195:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   tmp &= ((uint32_t)~(DMA_CCR_PL    | DMA_CCR_MSIZE  | DMA_CCR_PSIZE  |
 196:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                       DMA_CCR_MINC  | DMA_CCR_PINC   | DMA_CCR_CIRC   |
 197:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                       DMA_CCR_DIR   | DMA_CCR_MEM2MEM));
 198:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 199:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Prepare the DMA Channel configuration */
 200:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   tmp |=  hdma->Init.Direction        |
 201:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 202:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 203:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 204:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 205:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Write to DMA Channel CR register */
 206:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->Instance->CCR = tmp;
 207:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 208:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Initialize parameters for DMAMUX channel :
 209:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      DMAmuxChannel, DMAmuxChannelStatus and DMAmuxChannelStatusMask
 210:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 211:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   DMA_CalcDMAMUXChannelBaseAndMask(hdma);
 212:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 213:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (hdma->Init.Direction == DMA_MEMORY_TO_MEMORY)
 214:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 215:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* if memory to memory force the request to 0*/
 216:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->Init.Request = DMA_REQUEST_MEM2MEM;
 217:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 218:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 219:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Set peripheral request  to DMAMUX channel */
 220:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannel->CCR = (hdma->Init.Request & DMAMUX_CxCR_DMAREQ_ID);
 221:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 222:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clear the DMAMUX synchro overrun flag */
 223:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannelStatus->CFR = hdma->DMAmuxChannelStatusMask;
 224:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 225:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (((hdma->Init.Request >  0U) && (hdma->Init.Request <= DMA_REQUEST_GENERATOR3)))
 226:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 227:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Initialize parameters for DMAMUX request generator :
 228:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        DMAmuxRequestGen, DMAmuxRequestGenStatus and DMAmuxRequestGenStatusMask
 229:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     */
 230:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMA_CalcDMAMUXRequestGenBaseAndMask(hdma);
 231:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 232:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Reset the DMAMUX request generator register*/
 233:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGen->RGCR = 0U;
 234:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 235:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the DMAMUX request generator overrun flag */
 236:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatus->RGCFR = hdma->DMAmuxRequestGenStatusMask;
 237:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 238:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 239:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 240:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGen = 0U;
 241:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatus = 0U;
 242:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatusMask = 0U;
 243:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 244:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 245:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Initialize the error code */
 246:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 247:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 248:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Initialize the DMA state*/
 249:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->State  = HAL_DMA_STATE_READY;
 250:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 251:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Allocate lock resource and initialize it */
 252:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->Lock = HAL_UNLOCKED;
 253:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 254:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return HAL_OK;
 255:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 256:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 257:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 258:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  DeInitialize the DMA peripheral.
 259:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 260:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 261:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 262:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 263:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma)
 264:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 265:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 266:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Check the DMA handle allocation */
 267:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (NULL == hdma)
 268:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 269:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 270:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 271:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 272:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Check the parameters */
 273:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
 274:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 275:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Disable the selected DMA Channelx */
 276:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_DMA_DISABLE(hdma);
 277:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 278:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Compute the channel index */
 279:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if ((uint32_t)(hdma->Instance) < (uint32_t)(DMA2_Channel1))
 280:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 281:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* DMA1 */
 282:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Ch
 283:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 284:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 285:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 286:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 287:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* DMA2 */
 288:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA2_Channel1) / ((uint32_t)DMA2_Ch
 289:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 290:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 291:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 292:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Reset DMA Channel control register */
 293:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->Instance->CCR  = 0;
 294:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 295:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clear all flags */
 296:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << (hdma->ChannelIndex & 0x1FU));
 297:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 298:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Initialize parameters for DMAMUX channel :
 299:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      DMAmuxChannel, DMAmuxChannelStatus and DMAmuxChannelStatusMask */
 300:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 301:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   DMA_CalcDMAMUXChannelBaseAndMask(hdma);
 302:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 303:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Reset the DMAMUX channel that corresponds to the DMA channel */
 304:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannel->CCR = 0;
 305:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 306:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clear the DMAMUX synchro overrun flag */
 307:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannelStatus->CFR = hdma->DMAmuxChannelStatusMask;
 308:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 309:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Reset Request generator parameters if any */
 310:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (((hdma->Init.Request >  0U) && (hdma->Init.Request <= DMA_REQUEST_GENERATOR3)))
 311:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 312:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Initialize parameters for DMAMUX request generator :
 313:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        DMAmuxRequestGen, DMAmuxRequestGenStatus and DMAmuxRequestGenStatusMask
 314:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     */
 315:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMA_CalcDMAMUXRequestGenBaseAndMask(hdma);
 316:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 317:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Reset the DMAMUX request generator register*/
 318:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGen->RGCR = 0U;
 319:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 320:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the DMAMUX request generator overrun flag */
 321:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatus->RGCFR = hdma->DMAmuxRequestGenStatusMask;
 322:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 323:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 324:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGen = 0U;
 325:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGenStatus = 0U;
 326:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGenStatusMask = 0U;
 327:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 328:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clean callbacks */
 329:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->XferCpltCallback = NULL;
 330:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->XferHalfCpltCallback = NULL;
 331:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->XferErrorCallback = NULL;
 332:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->XferAbortCallback = NULL;
 333:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 334:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Initialize the error code */
 335:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 336:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 337:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Initialize the DMA state */
 338:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_RESET;
 339:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 340:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Release Lock */
 341:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 342:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 343:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return HAL_OK;
 344:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 345:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 346:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 347:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @}
 348:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 349:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 350:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions_Group2 Input and Output operation functions
 351:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *  @brief   Input and Output operation functions
 352:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *
 353:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** @verbatim
 354:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****  ===============================================================================
 355:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                       #####  IO operation functions  #####
 356:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****  ===============================================================================
 357:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     [..]  This section provides functions allowing to:
 358:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (+) Configure the source, destination address and data length and Start DMA transfer
 359:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (+) Configure the source, destination address and data length and
 360:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           Start DMA transfer with interrupt
 361:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (+) Abort DMA transfer
 362:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (+) Poll for transfer complete
 363:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (+) Handle DMA interrupt request
 364:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 365:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** @endverbatim
 366:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
 367:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 368:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 369:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 370:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Start the DMA Transfer.
 371:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 372:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 373:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  SrcAddress The source memory Buffer address
 374:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  DstAddress The destination memory Buffer address
 375:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  DataLength The length of data to be transferred from source to destination (up to 256Kb
 376:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 377:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 378:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Start(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, 
 379:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 380:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 381:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 382:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Check the parameters */
 383:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
 384:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 385:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Process locked */
 386:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_LOCK(hdma);
 387:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 388:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_STATE_READY == hdma->State)
 389:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 390:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Change DMA peripheral state */
 391:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_BUSY;
 392:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 393:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 394:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Disable the peripheral */
 395:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 396:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 397:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Configure the source, destination address and the data length & clear flags*/
 398:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
 399:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 400:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Enable the Peripheral */
 401:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_DMA_ENABLE(hdma);
 402:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 403:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 404:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 405:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Process Unlocked */
 406:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 407:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_BUSY;
 408:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 409:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return status;
 410:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 411:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 412:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 413:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Start the DMA Transfer with interrupt enabled.
 414:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 415:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 416:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  SrcAddress The source memory Buffer address
 417:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  DstAddress The destination memory Buffer address
 418:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  DataLength The length of data to be transferred from source to destination (up to 256Kb
 419:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 420:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 421:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddres
 422:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                                    uint32_t DataLength)
 423:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 424:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 425:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 426:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Check the parameters */
 427:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
 428:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 429:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Process locked */
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_LOCK(hdma);
 431:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 432:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_STATE_READY == hdma->State)
 433:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 434:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Change DMA peripheral state */
 435:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_BUSY;
 436:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 437:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 438:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Disable the peripheral */
 439:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 440:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 441:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Configure the source, destination address and the data length & clear flags*/
 442:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
 443:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 444:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Enable the transfer complete interrupt */
 445:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Enable the transfer Error interrupt */
 446:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (NULL != hdma->XferHalfCpltCallback)
 447:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 448:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Enable the Half transfer complete interrupt as well */
 449:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 450:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 451:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     else
 452:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 453:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       __HAL_DMA_DISABLE_IT(hdma, DMA_IT_HT);
 454:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_TE));
 455:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 456:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 457:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Check if DMAMUX Synchronization is enabled*/
 458:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if ((hdma->DMAmuxChannel->CCR & DMAMUX_CxCR_SE) != 0U)
 459:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 460:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Enable DMAMUX sync overrun IT*/
 461:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->DMAmuxChannel->CCR |= DMAMUX_CxCR_SOIE;
 462:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 463:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 464:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (hdma->DMAmuxRequestGen != 0U)
 465:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 466:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* if using DMAMUX request generator, enable the DMAMUX request generator overrun IT*/
 467:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* enable the request gen overrun IT*/
 468:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->DMAmuxRequestGen->RGCR |= DMAMUX_RGxCR_OIE;
 469:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 470:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 471:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Enable the Peripheral */
 472:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_DMA_ENABLE(hdma);
 473:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 474:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 475:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 476:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Process Unlocked */
 477:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 478:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 479:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Remain BUSY */
 480:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_BUSY;
 481:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 482:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return status;
 483:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 484:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 485:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 486:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Abort the DMA Transfer.
 487:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 488:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 489:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     * @retval HAL status
 490:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 491:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma)
 492:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 493:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 494:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 495:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if(hdma->State != HAL_DMA_STATE_BUSY)
 496:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 497:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* no transfer ongoing */
 498:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 499:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 500:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_ERROR;
 501:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 502:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 503:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 504:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      /* Disable DMA IT */
 505:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 506:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 507:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      /* disable the DMAMUX sync overrun IT*/
 508:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      hdma->DMAmuxChannel->CCR &= ~DMAMUX_CxCR_SOIE;
 509:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 510:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      /* Disable the channel */
 511:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      __HAL_DMA_DISABLE(hdma);
 512:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 513:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      /* Clear all flags */
 514:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << (hdma->ChannelIndex & 0x1FU));
 515:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 516:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      /* Clear the DMAMUX synchro overrun flag */
 517:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      hdma->DMAmuxChannelStatus->CFR = hdma->DMAmuxChannelStatusMask;
 518:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 519:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      if (hdma->DMAmuxRequestGen != 0U)
 520:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      {
 521:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        /* if using DMAMUX request generator, disable the DMAMUX request generator overrun IT*/
 522:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        /* disable the request gen overrun IT*/
 523:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        hdma->DMAmuxRequestGen->RGCR &= ~DMAMUX_RGxCR_OIE;
 524:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 525:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        /* Clear the DMAMUX request generator overrun flag */
 526:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****        hdma->DMAmuxRequestGenStatus->RGCFR = hdma->DMAmuxRequestGenStatusMask;
 527:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      }
 528:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }  
 529:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Change the DMA state */
 530:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_READY;
 531:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 532:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Process Unlocked */
 533:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 534:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 535:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return status;
 536:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 537:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 538:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 539:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Aborts the DMA Transfer in Interrupt mode.
 540:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 541:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *              the configuration information for the specified DMA Channel.
 542:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 543:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 544:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma)
 545:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 546:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 547:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 548:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_STATE_BUSY != hdma->State)
 549:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 550:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* no transfer ongoing */
 551:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 552:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 553:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Change the DMA state */
 554:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 555:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 556:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Process Unlocked */
 557:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 558:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 559:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_ERROR;
 560:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 561:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 562:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 563:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Disable DMA IT */
 564:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 565:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 566:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Disable the channel */
 567:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 568:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 569:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* disable the DMAMUX sync overrun IT*/
 570:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxChannel->CCR &= ~DMAMUX_CxCR_SOIE;
 571:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 572:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear all flags */
 573:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << (hdma->ChannelIndex & 0x1FU));
 574:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 575:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the DMAMUX synchro overrun flag */
 576:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxChannelStatus->CFR = hdma->DMAmuxChannelStatusMask;
 577:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 578:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (hdma->DMAmuxRequestGen != 0U)
 579:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 580:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* if using DMAMUX request generator, disable the DMAMUX request generator overrun IT*/
 581:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* disable the request gen overrun IT*/
 582:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->DMAmuxRequestGen->RGCR &= ~DMAMUX_RGxCR_OIE;
 583:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 584:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Clear the DMAMUX request generator overrun flag */
 585:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->DMAmuxRequestGenStatus->RGCFR = hdma->DMAmuxRequestGenStatusMask;
 586:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 587:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 588:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Change the DMA state */
 589:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 590:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 591:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Process Unlocked */
 592:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 593:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 594:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Call User Abort callback */
 595:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (hdma->XferAbortCallback != NULL)
 596:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 597:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->XferAbortCallback(hdma);
 598:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 599:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 600:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return status;
 601:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 602:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 603:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 604:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Polling for transfer complete.
 605:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 606:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *              the configuration information for the specified DMA Channel.
 607:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  CompleteLevel Specifies the DMA level complete.
 608:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  Timeout       Timeout duration.
 609:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 610:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 611:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef Com
 612:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                                           uint32_t Timeout)
 613:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 614:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t temp;
 615:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t tickstart;
 616:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 617:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_STATE_BUSY != hdma->State)
 618:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 619:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* no transfer ongoing */
 620:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 621:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 622:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 623:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 624:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 625:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Polling mode not supported in circular mode */
 626:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (0U != (hdma->Instance->CCR & DMA_CCR_CIRC))
 627:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 628:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NOT_SUPPORTED;
 629:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 630:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 631:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 632:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Get the level transfer complete flag */
 633:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_FULL_TRANSFER == CompleteLevel)
 634:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 635:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Transfer Complete flag */
 636:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 637:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     temp = (uint32_t)DMA_FLAG_TC1 << (hdma->ChannelIndex & 0x1FU);
 638:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 639:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 640:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 641:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Half Transfer Complete flag */
 642:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     temp = (uint32_t)DMA_FLAG_HT1 << (hdma->ChannelIndex & 0x1FU);
 643:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 644:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 645:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Get tick */
 646:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   tickstart = HAL_GetTick();
 647:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 648:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   while (0U == (hdma->DmaBaseAddress->ISR & temp))
 649:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 650:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if ((0U != (hdma->DmaBaseAddress->ISR & ((uint32_t)DMA_FLAG_TE1 << (hdma->ChannelIndex & 0x1FU)
 651:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 652:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* When a DMA transfer error occurs */
 653:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* A hardware clear of its EN bits is performed */
 654:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Clear all flags */
 655:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->DmaBaseAddress->IFCR = ((uint32_t)DMA_ISR_GIF1 << (hdma->ChannelIndex & 0x1FU));
 656:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 657:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Update error code */
 658:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->ErrorCode = HAL_DMA_ERROR_TE;
 659:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 660:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Change the DMA state */
 661:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->State = HAL_DMA_STATE_READY;
 662:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 663:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Process Unlocked */
 664:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       __HAL_UNLOCK(hdma);
 665:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 666:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       return HAL_ERROR;
 667:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 668:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Check for the Timeout */
 669:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (Timeout != HAL_MAX_DELAY)
 670:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 671:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       if (((HAL_GetTick() - tickstart) > Timeout) || (Timeout == 0U))
 672:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       {
 673:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         /* Update error code */
 674:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 675:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 676:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         /* Change the DMA state */
 677:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->State = HAL_DMA_STATE_READY;
 678:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 679:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         /* Process Unlocked */
 680:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         __HAL_UNLOCK(hdma);
 681:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 682:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         return HAL_ERROR;
 683:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       }
 684:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 685:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 686:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 687:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /*Check for DMAMUX Request generator (if used) overrun status */
 688:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (hdma->DMAmuxRequestGen != 0U)
 689:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 690:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* if using DMAMUX request generator Check for DMAMUX request generator overrun */
 691:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if ((hdma->DMAmuxRequestGenStatus->RGSR & hdma->DMAmuxRequestGenStatusMask) != 0U)
 692:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 693:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Disable the request gen overrun interrupt */
 694:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->DMAmuxRequestGen->RGCR |= DMAMUX_RGxCR_OIE;
 695:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 696:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Clear the DMAMUX request generator overrun flag */
 697:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->DMAmuxRequestGenStatus->RGCFR = hdma->DMAmuxRequestGenStatusMask;
 698:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 699:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Update error code */
 700:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_REQGEN;
 701:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 702:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 703:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 704:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Check for DMAMUX Synchronization overrun */
 705:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if ((hdma->DMAmuxChannelStatus->CSR & hdma->DMAmuxChannelStatusMask) != 0U)
 706:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 707:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the DMAMUX synchro overrun flag */
 708:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxChannelStatus->CFR = hdma->DMAmuxChannelStatusMask;
 709:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 710:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Update error code */
 711:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode |= HAL_DMA_ERROR_SYNC;
 712:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 713:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 714:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_FULL_TRANSFER == CompleteLevel)
 715:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 716:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the transfer complete flag */
 717:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress->IFCR = ((uint32_t)DMA_FLAG_TC1 << (hdma->ChannelIndex & 0x1FU));
 718:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 719:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* The selected Channelx EN bit is cleared (DMA is disabled and
 720:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     all transfers are complete) */
 721:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 722:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 723:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 724:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 725:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the half transfer complete flag */
 726:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress->IFCR = ((uint32_t)DMA_FLAG_HT1 << (hdma->ChannelIndex & 0x1FU));
 727:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 728:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 729:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Process unlocked */
 730:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 731:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 732:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return HAL_OK;
 733:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 734:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 735:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 736:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Handle DMA interrupt request.
 737:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 738:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 739:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval None
 740:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 741:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma)
 742:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 743:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t flag_it = hdma->DmaBaseAddress->ISR;
 744:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t source_it = hdma->Instance->CCR;
 745:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 746:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Half Transfer Complete Interrupt management ******************************/
 747:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if ((0U != (flag_it & ((uint32_t)DMA_FLAG_HT1 << (hdma->ChannelIndex & 0x1FU)))) && (0U != (sourc
 748:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 749:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Disable the half transfer interrupt if the DMA mode is not CIRCULAR */
 750:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if ((hdma->Instance->CCR & DMA_CCR_CIRC) == 0U)
 751:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 752:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Disable the half transfer interrupt */
 753:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       __HAL_DMA_DISABLE_IT(hdma, DMA_IT_HT);
 754:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 755:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the half transfer complete flag */
 756:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress->IFCR = ((uint32_t)DMA_ISR_HTIF1 << (hdma->ChannelIndex & 0x1FU));
 757:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 758:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* DMA peripheral state is not updated in Half Transfer */
 759:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* but in Transfer Complete case */
 760:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 761:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (hdma->XferHalfCpltCallback != NULL)
 762:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 763:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Half transfer callback */
 764:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->XferHalfCpltCallback(hdma);
 765:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 766:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 767:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Transfer Complete Interrupt management ***********************************/
 768:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else if ((0U != (flag_it & ((uint32_t)DMA_FLAG_TC1 << (hdma->ChannelIndex & 0x1FU))))
 769:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TC)))
 770:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 771:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if ((hdma->Instance->CCR & DMA_CCR_CIRC) == 0U)
 772:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 773:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Disable the transfer complete and error interrupt */
 774:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       __HAL_DMA_DISABLE_IT(hdma, DMA_IT_TE | DMA_IT_TC);
 775:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 776:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Change the DMA state */
 777:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->State = HAL_DMA_STATE_READY;
 778:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 779:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the transfer complete flag */
 780:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress->IFCR = ((uint32_t)DMA_ISR_TCIF1 << (hdma->ChannelIndex & 0x1FU));
 781:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 782:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Process Unlocked */
 783:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 784:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 785:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (hdma->XferCpltCallback != NULL)
 786:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 787:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Transfer complete callback */
 788:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->XferCpltCallback(hdma);
 789:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 790:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 791:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Transfer Error Interrupt management **************************************/
 792:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else if ((0U != (flag_it & ((uint32_t)DMA_FLAG_TE1 << (hdma->ChannelIndex & 0x1FU))))
 793:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TE)))
 794:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 795:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* When a DMA transfer error occurs */
 796:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* A hardware clear of its EN bits is performed */
 797:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Disable ALL DMA IT */
 798:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
 799:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 800:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear all flags */
 801:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress->IFCR = ((uint32_t)DMA_ISR_GIF1 << (hdma->ChannelIndex & 0x1FU));
 802:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 803:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Update error code */
 804:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_TE;
 805:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 806:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Change the DMA state */
 807:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 808:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 809:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Process Unlocked */
 810:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 811:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 812:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     if (hdma->XferErrorCallback != NULL)
 813:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 814:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       /* Transfer error callback */
 815:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       hdma->XferErrorCallback(hdma);
 816:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 817:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 818:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 819:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 820:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Nothing To Do */
 821:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 822:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return;
 823:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 824:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 825:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 826:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Register callbacks
 827:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma                 pointer to a DMA_HandleTypeDef structure that contains
 828:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                               the configuration information for the specified DMA Channel.
 829:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  CallbackID           User Callback identifer
 830:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                               a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
 831:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  pCallback            pointer to private callbacsk function which has pointer to
 832:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                               a DMA_HandleTypeDef structure as parameter.
 833:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 834:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 835:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef Callb
 836:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 837:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 838:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 839:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Process locked */
 840:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_LOCK(hdma);
 841:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 842:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_STATE_READY == hdma->State)
 843:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 844:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     switch (CallbackID)
 845:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 846:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_CPLT_CB_ID:
 847:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferCpltCallback = pCallback;
 848:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 849:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 850:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_HALFCPLT_CB_ID:
 851:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferHalfCpltCallback = pCallback;
 852:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 853:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 854:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_ERROR_CB_ID:
 855:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferErrorCallback = pCallback;
 856:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 857:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 858:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_ABORT_CB_ID:
 859:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferAbortCallback = pCallback;
 860:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 861:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 862:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       default:
 863:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         status = HAL_ERROR;
 864:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 865:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 866:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 867:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 868:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 869:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_ERROR;
 870:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 871:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 872:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Release Lock */
 873:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 874:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 875:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return status;
 876:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 877:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 878:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 879:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  UnRegister callbacks
 880:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma                 pointer to a DMA_HandleTypeDef structure that contains
 881:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                               the configuration information for the specified DMA Channel.
 882:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  CallbackID           User Callback identifer
 883:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                               a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
 884:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
 885:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 886:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef Cal
 887:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 888:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 889:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 890:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Process locked */
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_LOCK(hdma);
 892:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 893:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (HAL_DMA_STATE_READY == hdma->State)
 894:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 895:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     switch (CallbackID)
 896:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 897:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_CPLT_CB_ID:
 898:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferCpltCallback = NULL;
 899:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 900:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 901:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_HALFCPLT_CB_ID:
 902:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferHalfCpltCallback = NULL;
 903:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 904:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 905:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_ERROR_CB_ID:
 906:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferErrorCallback = NULL;
 907:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 908:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 909:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case  HAL_DMA_XFER_ABORT_CB_ID:
 910:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferAbortCallback = NULL;
 911:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 912:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 913:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       case   HAL_DMA_XFER_ALL_CB_ID:
 914:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferCpltCallback = NULL;
 915:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferHalfCpltCallback = NULL;
 916:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferErrorCallback = NULL;
 917:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferAbortCallback = NULL;
 918:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 919:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 920:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       default:
 921:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         status = HAL_ERROR;
 922:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 923:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 924:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 925:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
 926:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 927:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_ERROR;
 928:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 929:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 930:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Release Lock */
 931:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 932:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 933:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return status;
 934:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 935:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 936:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 937:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @}
 938:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 939:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 940:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 941:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 942:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @defgroup DMA_Exported_Functions_Group3 Peripheral State and Errors functions
 943:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *  @brief    Peripheral State and Errors functions
 944:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *
 945:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** @verbatim
 946:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****  ===============================================================================
 947:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****             ##### Peripheral State and Errors functions #####
 948:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****  ===============================================================================
 949:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     [..]
 950:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     This subsection provides functions allowing to
 951:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (+) Check the DMA state
 952:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       (+) Get error code
 953:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 954:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** @endverbatim
 955:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
 956:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 957:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 958:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 959:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Return the DMA hande state.
 960:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
 961:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *               the configuration information for the specified DMA Channel.
 962:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL state
 963:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 964:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma)
 965:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 966:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Return DMA handle state */
 967:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return hdma->State;
 968:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 969:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 970:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 971:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Return the DMA error code.
 972:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma : pointer to a DMA_HandleTypeDef structure that contains
 973:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *              the configuration information for the specified DMA Channel.
 974:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval DMA Error Code
 975:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 976:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma)
 977:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 978:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return hdma->ErrorCode;
 979:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 980:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 981:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 982:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @}
 983:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 984:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 985:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 986:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @}
 987:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 988:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 989:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /** @addtogroup DMA_Private_Functions
 990:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @{
 991:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
 992:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 993:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
 994:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Sets the DMA Transfer parameter.
 995:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
 996:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                     the configuration information for the specified DMA Channel.
 997:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  SrcAddress The source memory Buffer address
 998:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  DstAddress The destination memory Buffer address
 999:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  DataLength The length of data to be transferred from source to destination
1000:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval HAL status
1001:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
1002:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32
1003:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
  29              		.loc 1 1003 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
1004:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clear the DMAMUX synchro overrun flag */
1005:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannelStatus->CFR = hdma->DMAmuxChannelStatusMask;
  33              		.loc 1 1005 3 view .LVU1
1003:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clear the DMAMUX synchro overrun flag */
  34              		.loc 1 1003 1 is_stmt 0 view .LVU2
  35 0000 70B5     		push	{r4, r5, r6, lr}
  36              		.cfi_def_cfa_offset 16
  37              		.cfi_offset 4, -16
  38              		.cfi_offset 5, -12
  39              		.cfi_offset 6, -8
  40              		.cfi_offset 14, -4
  41              		.loc 1 1005 40 view .LVU3
  42 0002 D0E91345 		ldrd	r4, r5, [r0, #76]
  43              		.loc 1 1005 34 view .LVU4
  44 0006 6560     		str	r5, [r4, #4]
1006:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1007:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if (hdma->DMAmuxRequestGen != 0U)
  45              		.loc 1 1007 3 is_stmt 1 view .LVU5
  46              		.loc 1 1007 6 is_stmt 0 view .LVU6
  47 0008 446D     		ldr	r4, [r0, #84]
  48 000a 14B1     		cbz	r4, .L2
1008:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
1009:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Clear the DMAMUX request generator overrun flag */
1010:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatus->RGCFR = hdma->DMAmuxRequestGenStatusMask;
  49              		.loc 1 1010 5 is_stmt 1 view .LVU7
  50              		.loc 1 1010 47 is_stmt 0 view .LVU8
  51 000c D0E91645 		ldrd	r4, r5, [r0, #88]
  52              		.loc 1 1010 41 view .LVU9
  53 0010 6560     		str	r5, [r4, #4]
  54              	.L2:
1011:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
1012:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1013:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Clear all flags */
1014:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DmaBaseAddress->IFCR = (DMA_ISR_GIF1 << (hdma->ChannelIndex & 0x1FU));
  55              		.loc 1 1014 3 is_stmt 1 view .LVU10
  56              		.loc 1 1014 69 is_stmt 0 view .LVU11
  57 0012 D0E91064 		ldrd	r6, r4, [r0, #64]
  58 0016 04F01F05 		and	r5, r4, #31
  59              		.loc 1 1014 46 view .LVU12
  60 001a 0124     		movs	r4, #1
  61 001c AC40     		lsls	r4, r4, r5
  62              		.loc 1 1014 30 view .LVU13
  63 001e 7460     		str	r4, [r6, #4]
1015:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1016:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Configure DMA Channel data length */
1017:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->Instance->CNDTR = DataLength;
  64              		.loc 1 1017 3 is_stmt 1 view .LVU14
  65              		.loc 1 1017 7 is_stmt 0 view .LVU15
  66 0020 0468     		ldr	r4, [r0]
  67              		.loc 1 1017 25 view .LVU16
  68 0022 6360     		str	r3, [r4, #4]
1018:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1019:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Memory to Peripheral */
1020:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if ((hdma->Init.Direction) == DMA_MEMORY_TO_PERIPH)
  69              		.loc 1 1020 3 is_stmt 1 view .LVU17
  70              		.loc 1 1020 6 is_stmt 0 view .LVU18
  71 0024 8368     		ldr	r3, [r0, #8]
  72              	.LVL1:
  73              		.loc 1 1020 6 view .LVU19
  74 0026 102B     		cmp	r3, #16
1021:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
1022:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Configure DMA Channel destination address */
1023:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->Instance->CPAR = DstAddress;
  75              		.loc 1 1023 5 is_stmt 1 view .LVU20
  76              		.loc 1 1023 26 is_stmt 0 view .LVU21
  77 0028 0BBF     		itete	eq
  78 002a A260     		streq	r2, [r4, #8]
1024:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1025:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Configure DMA Channel source address */
1026:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->Instance->CMAR = SrcAddress;
  79              		.loc 1 1026 5 is_stmt 1 view .LVU22
1027:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
1028:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Peripheral to Memory */
1029:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
1030:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
1031:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Configure DMA Channel source address */
1032:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->Instance->CPAR = SrcAddress;
  80              		.loc 1 1032 26 is_stmt 0 view .LVU23
  81 002c A160     		strne	r1, [r4, #8]
1026:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
  82              		.loc 1 1026 26 view .LVU24
  83 002e E160     		streq	r1, [r4, #12]
  84              		.loc 1 1032 5 is_stmt 1 view .LVU25
1033:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1034:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* Configure DMA Channel destination address */
1035:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->Instance->CMAR = DstAddress;
  85              		.loc 1 1035 5 view .LVU26
  86              		.loc 1 1035 26 is_stmt 0 view .LVU27
  87 0030 E260     		strne	r2, [r4, #12]
1036:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
1037:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
  88              		.loc 1 1037 1 view .LVU28
  89 0032 70BD     		pop	{r4, r5, r6, pc}
  90              		.loc 1 1037 1 view .LVU29
  91              		.cfi_endproc
  92              	.LFE337:
  94              		.section	.text.DMA_CalcDMAMUXChannelBaseAndMask,"ax",%progbits
  95              		.align	1
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu fpv4-sp-d16
 101              	DMA_CalcDMAMUXChannelBaseAndMask:
 102              	.LVL2:
 103              	.LFB338:
1038:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1039:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
1040:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Updates the DMA handle with the DMAMUX  channel and status mask depending on stream num
1041:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma        pointer to a DMA_HandleTypeDef structure that contains
1042:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                     the configuration information for the specified DMA Stream.
1043:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval None
1044:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
1045:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** static void DMA_CalcDMAMUXChannelBaseAndMask(DMA_HandleTypeDef *hdma)
1046:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 104              		.loc 1 1046 1 is_stmt 1 view -0
 105              		.cfi_startproc
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
1047:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t dmamux_base_addr;
 108              		.loc 1 1047 3 view .LVU31
1048:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t channel_number;
 109              		.loc 1 1048 3 view .LVU32
1049:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   DMAMUX_Channel_TypeDef *DMAMUX1_ChannelBase;
 110              		.loc 1 1049 3 view .LVU33
1050:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1051:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* check if instance is not outside the DMA channel range */
1052:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   if ((uint32_t)hdma->Instance < (uint32_t)DMA2_Channel1)
 111              		.loc 1 1052 3 view .LVU34
 112              		.loc 1 1052 7 is_stmt 0 view .LVU35
 113 0000 0368     		ldr	r3, [r0]
1053:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
1054:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* DMA1 */
1055:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMAMUX1_ChannelBase = DMAMUX1_Channel0;
1056:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
1057:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   else
1058:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
1059:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     /* DMA2 */
1060:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** #if defined (STM32G471xx) || defined (STM32G473xx) || defined (STM32G474xx) || defined (STM32G483xx
1061:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMAMUX1_ChannelBase = DMAMUX1_Channel8;
1062:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** #elif defined (STM32G431xx) || defined (STM32G441xx) || defined (STM32GBK1CB)
1063:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMAMUX1_ChannelBase = DMAMUX1_Channel6;
 114              		.loc 1 1063 25 view .LVU36
 115 0002 0D49     		ldr	r1, .L11
 116 0004 0D4A     		ldr	r2, .L11+4
1046:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t dmamux_base_addr;
 117              		.loc 1 1046 1 view .LVU37
 118 0006 10B5     		push	{r4, lr}
 119              		.cfi_def_cfa_offset 8
 120              		.cfi_offset 4, -8
 121              		.cfi_offset 14, -4
 122              		.loc 1 1063 25 view .LVU38
 123 0008 0D4C     		ldr	r4, .L11+8
 124 000a A342     		cmp	r3, r4
 125 000c 88BF     		it	hi
 126 000e 0A46     		movhi	r2, r1
 127              	.LVL3:
1064:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** #else
1065:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     DMAMUX1_ChannelBase = DMAMUX1_Channel7;
1066:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** #endif /* STM32G4x1xx) */
1067:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
1068:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   dmamux_base_addr = (uint32_t)DMAMUX1_ChannelBase;
 128              		.loc 1 1068 3 is_stmt 1 view .LVU39
1069:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   channel_number = (((uint32_t)hdma->Instance & 0xFFU) - 8U) / 20U;
 129              		.loc 1 1069 3 view .LVU40
1070:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannel = (DMAMUX_Channel_TypeDef *)(uint32_t)(dmamux_base_addr + ((hdma->ChannelInde
 130              		.loc 1 1070 3 view .LVU41
 131              		.loc 1 1070 102 is_stmt 0 view .LVU42
 132 0010 416C     		ldr	r1, [r0, #68]
 133              		.loc 1 1070 109 view .LVU43
 134 0012 21F00301 		bic	r1, r1, #3
 135              		.loc 1 1070 51 view .LVU44
 136 0016 0A44     		add	r2, r2, r1
 137              	.LVL4:
 138              		.loc 1 1070 23 view .LVU45
 139 0018 8264     		str	r2, [r0, #72]
1071:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannelStatus = DMAMUX1_ChannelStatus;
 140              		.loc 1 1071 3 is_stmt 1 view .LVU46
1069:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   channel_number = (((uint32_t)hdma->Instance & 0xFFU) - 8U) / 20U;
 141              		.loc 1 1069 47 is_stmt 0 view .LVU47
 142 001a DBB2     		uxtb	r3, r3
 143              	.LVL5:
 144              		.loc 1 1071 29 view .LVU48
 145 001c 094A     		ldr	r2, .L11+12
 146 001e C264     		str	r2, [r0, #76]
1072:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannelStatusMask = 1UL << (channel_number & 0x1FU);
 147              		.loc 1 1072 3 is_stmt 1 view .LVU49
1069:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannel = (DMAMUX_Channel_TypeDef *)(uint32_t)(dmamux_base_addr + ((hdma->ChannelInde
 148              		.loc 1 1069 56 is_stmt 0 view .LVU50
 149 0020 083B     		subs	r3, r3, #8
1069:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxChannel = (DMAMUX_Channel_TypeDef *)(uint32_t)(dmamux_base_addr + ((hdma->ChannelInde
 150              		.loc 1 1069 18 view .LVU51
 151 0022 1422     		movs	r2, #20
 152 0024 B3FBF2F3 		udiv	r3, r3, r2
 153              		.loc 1 1072 39 view .LVU52
 154 0028 0122     		movs	r2, #1
 155              		.loc 1 1072 58 view .LVU53
 156 002a 03F01F03 		and	r3, r3, #31
 157              		.loc 1 1072 39 view .LVU54
 158 002e 02FA03F3 		lsl	r3, r2, r3
 159              		.loc 1 1072 33 view .LVU55
 160 0032 0365     		str	r3, [r0, #80]
1073:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 161              		.loc 1 1073 1 view .LVU56
 162 0034 10BD     		pop	{r4, pc}
 163              	.LVL6:
 164              	.L12:
 165              		.loc 1 1073 1 view .LVU57
 166 0036 00BF     		.align	2
 167              	.L11:
 168 0038 20080240 		.word	1073874976
 169 003c 00080240 		.word	1073874944
 170 0040 07040240 		.word	1073873927
 171 0044 80080240 		.word	1073875072
 172              		.cfi_endproc
 173              	.LFE338:
 175              		.section	.text.HAL_DMA_Init,"ax",%progbits
 176              		.align	1
 177              		.global	HAL_DMA_Init
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv4-sp-d16
 183              	HAL_DMA_Init:
 184              	.LVL7:
 185              	.LFB325:
 153:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t tmp;
 186              		.loc 1 153 1 is_stmt 1 view -0
 187              		.cfi_startproc
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 154:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 190              		.loc 1 154 3 view .LVU59
 157:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 191              		.loc 1 157 3 view .LVU60
 153:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t tmp;
 192              		.loc 1 153 1 is_stmt 0 view .LVU61
 193 0000 10B5     		push	{r4, lr}
 194              		.cfi_def_cfa_offset 8
 195              		.cfi_offset 4, -8
 196              		.cfi_offset 14, -4
 157:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 197              		.loc 1 157 6 view .LVU62
 198 0002 0446     		mov	r4, r0
 199 0004 0028     		cmp	r0, #0
 200 0006 5DD0     		beq	.L20
 163:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_DIRECTION(hdma->Init.Direction));
 201              		.loc 1 163 3 is_stmt 1 view .LVU63
 164:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_INC_STATE(hdma->Init.PeriphInc));
 202              		.loc 1 164 3 view .LVU64
 165:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_INC_STATE(hdma->Init.MemInc));
 203              		.loc 1 165 3 view .LVU65
 166:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(hdma->Init.PeriphDataAlignment));
 204              		.loc 1 166 3 view .LVU66
 167:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_DATA_SIZE(hdma->Init.MemDataAlignment));
 205              		.loc 1 167 3 view .LVU67
 168:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_MODE(hdma->Init.Mode));
 206              		.loc 1 168 3 view .LVU68
 169:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   assert_param(IS_DMA_PRIORITY(hdma->Init.Priority));
 207              		.loc 1 169 3 view .LVU69
 170:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 208              		.loc 1 170 3 view .LVU70
 172:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 209              		.loc 1 172 3 view .LVU71
 175:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 210              		.loc 1 175 3 view .LVU72
 175:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 211              		.loc 1 175 22 is_stmt 0 view .LVU73
 212 0008 0168     		ldr	r1, [r0]
 175:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 213              		.loc 1 175 6 view .LVU74
 214 000a 2F4B     		ldr	r3, .L22
 215 000c 9942     		cmp	r1, r3
 216 000e 4FF01400 		mov	r0, #20
 217              	.LVL8:
 175:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 218              		.loc 1 175 6 view .LVU75
 219 0012 4AD8     		bhi	.L15
 178:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 220              		.loc 1 178 5 is_stmt 1 view .LVU76
 178:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 221              		.loc 1 178 53 is_stmt 0 view .LVU77
 222 0014 2D4A     		ldr	r2, .L22+4
 223 0016 0A44     		add	r2, r2, r1
 178:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 224              		.loc 1 178 80 view .LVU78
 225 0018 B2FBF0F2 		udiv	r2, r2, r0
 178:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 226              		.loc 1 178 135 view .LVU79
 227 001c 9200     		lsls	r2, r2, #2
 178:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 228              		.loc 1 178 24 view .LVU80
 229 001e 6264     		str	r2, [r4, #68]
 179:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 230              		.loc 1 179 5 is_stmt 1 view .LVU81
 179:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 231              		.loc 1 179 26 is_stmt 0 view .LVU82
 232 0020 A3F20743 		subw	r3, r3, #1031
 233              	.L21:
 185:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 234              		.loc 1 185 26 view .LVU83
 235 0024 2364     		str	r3, [r4, #64]
 189:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 236              		.loc 1 189 3 is_stmt 1 view .LVU84
 189:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 237              		.loc 1 189 15 is_stmt 0 view .LVU85
 238 0026 0223     		movs	r3, #2
 239 0028 84F82530 		strb	r3, [r4, #37]
 192:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 240              		.loc 1 192 3 is_stmt 1 view .LVU86
 200:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 241              		.loc 1 200 39 is_stmt 0 view .LVU87
 242 002c D4E90230 		ldrd	r3, r0, [r4, #8]
 243 0030 0343     		orrs	r3, r3, r0
 201:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 244              		.loc 1 201 42 view .LVU88
 245 0032 2069     		ldr	r0, [r4, #16]
 192:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 246              		.loc 1 192 7 view .LVU89
 247 0034 0A68     		ldr	r2, [r1]
 248              	.LVL9:
 195:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                       DMA_CCR_MINC  | DMA_CCR_PINC   | DMA_CCR_CIRC   |
 249              		.loc 1 195 3 is_stmt 1 view .LVU90
 201:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 250              		.loc 1 201 42 is_stmt 0 view .LVU91
 251 0036 0343     		orrs	r3, r3, r0
 201:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 252              		.loc 1 201 72 view .LVU92
 253 0038 6069     		ldr	r0, [r4, #20]
 254 003a 0343     		orrs	r3, r3, r0
 202:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 255              		.loc 1 202 42 view .LVU93
 256 003c A069     		ldr	r0, [r4, #24]
 257 003e 0343     		orrs	r3, r3, r0
 202:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 258              		.loc 1 202 72 view .LVU94
 259 0040 E069     		ldr	r0, [r4, #28]
 260 0042 0343     		orrs	r3, r3, r0
 203:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 261              		.loc 1 203 42 view .LVU95
 262 0044 206A     		ldr	r0, [r4, #32]
 195:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                       DMA_CCR_MINC  | DMA_CCR_PINC   | DMA_CCR_CIRC   |
 263              		.loc 1 195 7 view .LVU96
 264 0046 22F4FF42 		bic	r2, r2, #32640
 265              	.LVL10:
 195:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****                       DMA_CCR_MINC  | DMA_CCR_PINC   | DMA_CCR_CIRC   |
 266              		.loc 1 195 7 view .LVU97
 267 004a 22F07002 		bic	r2, r2, #112
 268              	.LVL11:
 200:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 269              		.loc 1 200 3 is_stmt 1 view .LVU98
 203:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 270              		.loc 1 203 42 is_stmt 0 view .LVU99
 271 004e 0343     		orrs	r3, r3, r0
 200:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 272              		.loc 1 200 7 view .LVU100
 273 0050 1343     		orrs	r3, r3, r2
 274              	.LVL12:
 206:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 275              		.loc 1 206 3 is_stmt 1 view .LVU101
 206:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 276              		.loc 1 206 23 is_stmt 0 view .LVU102
 277 0052 0B60     		str	r3, [r1]
 211:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 278              		.loc 1 211 3 is_stmt 1 view .LVU103
 279 0054 2046     		mov	r0, r4
 280 0056 FFF7FEFF 		bl	DMA_CalcDMAMUXChannelBaseAndMask
 281              	.LVL13:
 213:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 282              		.loc 1 213 3 view .LVU104
 213:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 283              		.loc 1 213 6 is_stmt 0 view .LVU105
 284 005a A368     		ldr	r3, [r4, #8]
 220:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 285              		.loc 1 220 7 view .LVU106
 286 005c A16C     		ldr	r1, [r4, #72]
 213:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 287              		.loc 1 213 6 view .LVU107
 288 005e B3F5804F 		cmp	r3, #16384
 216:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 289              		.loc 1 216 5 is_stmt 1 view .LVU108
 216:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 290              		.loc 1 216 24 is_stmt 0 view .LVU109
 291 0062 04BF     		itt	eq
 292 0064 0023     		moveq	r3, #0
 293 0066 6360     		streq	r3, [r4, #4]
 220:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 294              		.loc 1 220 3 is_stmt 1 view .LVU110
 220:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 295              		.loc 1 220 41 is_stmt 0 view .LVU111
 296 0068 6268     		ldr	r2, [r4, #4]
 220:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 297              		.loc 1 220 50 view .LVU112
 298 006a D3B2     		uxtb	r3, r2
 220:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 299              		.loc 1 220 28 view .LVU113
 300 006c 0B60     		str	r3, [r1]
 223:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 301              		.loc 1 223 3 is_stmt 1 view .LVU114
 223:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 302              		.loc 1 223 40 is_stmt 0 view .LVU115
 303 006e D4E91310 		ldrd	r1, r0, [r4, #76]
 225:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 304              		.loc 1 225 35 view .LVU116
 305 0072 013A     		subs	r2, r2, #1
 225:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 306              		.loc 1 225 6 view .LVU117
 307 0074 032A     		cmp	r2, #3
 223:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 308              		.loc 1 223 34 view .LVU118
 309 0076 4860     		str	r0, [r1, #4]
 225:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 310              		.loc 1 225 3 is_stmt 1 view .LVU119
 225:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 311              		.loc 1 225 6 is_stmt 0 view .LVU120
 312 0078 1FD8     		bhi	.L18
 230:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 313              		.loc 1 230 5 is_stmt 1 view .LVU121
 314              	.LVL14:
 315              	.LBB4:
 316              	.LBI4:
1074:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1075:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** /**
1076:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @brief  Updates the DMA handle with the DMAMUX  request generator params
1077:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @param  hdma        pointer to a DMA_HandleTypeDef structure that contains
1078:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   *                     the configuration information for the specified DMA Channel.
1079:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   * @retval None
1080:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   */
1081:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1082:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** static void DMA_CalcDMAMUXRequestGenBaseAndMask(DMA_HandleTypeDef *hdma)
 317              		.loc 1 1082 13 view .LVU122
 318              	.LBB5:
1083:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
1084:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t request =  hdma->Init.Request & DMAMUX_CxCR_DMAREQ_ID;
 319              		.loc 1 1084 3 view .LVU123
1085:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1086:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* DMA Channels are connected to DMAMUX1 request generator blocks*/
1087:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGen = (DMAMUX_RequestGen_TypeDef *)((uint32_t)(((uint32_t)DMAMUX1_RequestGener
 320              		.loc 1 1087 3 view .LVU124
 321              		.loc 1 1087 58 is_stmt 0 view .LVU125
 322 007a 154A     		ldr	r2, .L22+8
1088:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1089:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGenStatus = DMAMUX1_RequestGenStatus;
 323              		.loc 1 1089 32 view .LVU126
 324 007c 1548     		ldr	r0, .L22+12
 325 007e A065     		str	r0, [r4, #88]
1087:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 326              		.loc 1 1087 58 view .LVU127
 327 0080 1A44     		add	r2, r2, r3
1090:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
1091:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGenStatusMask = 1UL << ((request - 1U) & 0x1FU);
 328              		.loc 1 1091 55 view .LVU128
 329 0082 013B     		subs	r3, r3, #1
 330              	.LVL15:
1087:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 331              		.loc 1 1087 58 view .LVU129
 332 0084 9200     		lsls	r2, r2, #2
 333              		.loc 1 1091 42 view .LVU130
 334 0086 0121     		movs	r1, #1
 335              		.loc 1 1091 61 view .LVU131
 336 0088 03F01F03 		and	r3, r3, #31
 337              	.LVL16:
 338              		.loc 1 1091 42 view .LVU132
 339 008c 01FA03F3 		lsl	r3, r1, r3
 340              	.LBE5:
 341              	.LBE4:
 233:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 342              		.loc 1 233 34 view .LVU133
 343 0090 0021     		movs	r1, #0
 344              	.LBB7:
 345              	.LBB6:
1087:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 346              		.loc 1 1087 26 view .LVU134
 347 0092 6265     		str	r2, [r4, #84]
1089:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 348              		.loc 1 1089 3 is_stmt 1 view .LVU135
 349              		.loc 1 1091 3 view .LVU136
 350              		.loc 1 1091 36 is_stmt 0 view .LVU137
 351 0094 E365     		str	r3, [r4, #92]
 352              	.LVL17:
 353              		.loc 1 1091 36 view .LVU138
 354              	.LBE6:
 355              	.LBE7:
 233:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 356              		.loc 1 233 5 is_stmt 1 view .LVU139
 233:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 357              		.loc 1 233 34 is_stmt 0 view .LVU140
 358 0096 1160     		str	r1, [r2]
 236:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 359              		.loc 1 236 5 is_stmt 1 view .LVU141
 236:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 360              		.loc 1 236 41 is_stmt 0 view .LVU142
 361 0098 4360     		str	r3, [r0, #4]
 362              	.L19:
 246:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 363              		.loc 1 246 3 is_stmt 1 view .LVU143
 246:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 364              		.loc 1 246 19 is_stmt 0 view .LVU144
 365 009a 0020     		movs	r0, #0
 249:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 366              		.loc 1 249 16 view .LVU145
 367 009c 0123     		movs	r3, #1
 246:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 368              		.loc 1 246 19 view .LVU146
 369 009e E063     		str	r0, [r4, #60]
 249:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 370              		.loc 1 249 3 is_stmt 1 view .LVU147
 252:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 371              		.loc 1 252 14 is_stmt 0 view .LVU148
 372 00a0 84F82400 		strb	r0, [r4, #36]
 249:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 373              		.loc 1 249 16 view .LVU149
 374 00a4 84F82530 		strb	r3, [r4, #37]
 252:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 375              		.loc 1 252 3 is_stmt 1 view .LVU150
 254:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 376              		.loc 1 254 3 view .LVU151
 377              	.L14:
 255:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 378              		.loc 1 255 1 is_stmt 0 view .LVU152
 379 00a8 10BD     		pop	{r4, pc}
 380              	.LVL18:
 381              	.L15:
 184:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 382              		.loc 1 184 5 is_stmt 1 view .LVU153
 184:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 383              		.loc 1 184 53 is_stmt 0 view .LVU154
 384 00aa 0B4B     		ldr	r3, .L22+16
 385 00ac 0B44     		add	r3, r3, r1
 184:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 386              		.loc 1 184 80 view .LVU155
 387 00ae B3FBF0F3 		udiv	r3, r3, r0
 184:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 388              		.loc 1 184 135 view .LVU156
 389 00b2 9B00     		lsls	r3, r3, #2
 184:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 390              		.loc 1 184 24 view .LVU157
 391 00b4 6364     		str	r3, [r4, #68]
 185:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 392              		.loc 1 185 5 is_stmt 1 view .LVU158
 185:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 393              		.loc 1 185 26 is_stmt 0 view .LVU159
 394 00b6 094B     		ldr	r3, .L22+20
 395 00b8 B4E7     		b	.L21
 396              	.L18:
 240:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatus = 0U;
 397              		.loc 1 240 5 is_stmt 1 view .LVU160
 240:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatus = 0U;
 398              		.loc 1 240 28 is_stmt 0 view .LVU161
 399 00ba 0023     		movs	r3, #0
 241:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DMAmuxRequestGenStatusMask = 0U;
 400              		.loc 1 241 34 view .LVU162
 401 00bc C4E91533 		strd	r3, r3, [r4, #84]
 242:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 402              		.loc 1 242 5 is_stmt 1 view .LVU163
 242:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 403              		.loc 1 242 38 is_stmt 0 view .LVU164
 404 00c0 E365     		str	r3, [r4, #92]
 405 00c2 EAE7     		b	.L19
 406              	.LVL19:
 407              	.L20:
 159:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 408              		.loc 1 159 12 view .LVU165
 409 00c4 0120     		movs	r0, #1
 410              	.LVL20:
 159:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 411              		.loc 1 159 12 view .LVU166
 412 00c6 EFE7     		b	.L14
 413              	.L23:
 414              		.align	2
 415              	.L22:
 416 00c8 07040240 		.word	1073873927
 417 00cc F8FFFDBF 		.word	-1073872904
 418 00d0 3F820010 		.word	268468799
 419 00d4 40090240 		.word	1073875264
 420 00d8 F8FBFDBF 		.word	-1073873928
 421 00dc 00040240 		.word	1073873920
 422              		.cfi_endproc
 423              	.LFE325:
 425              		.section	.text.HAL_DMA_DeInit,"ax",%progbits
 426              		.align	1
 427              		.global	HAL_DMA_DeInit
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu fpv4-sp-d16
 433              	HAL_DMA_DeInit:
 434              	.LVL21:
 435              	.LFB326:
 264:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 436              		.loc 1 264 1 is_stmt 1 view -0
 437              		.cfi_startproc
 438              		@ args = 0, pretend = 0, frame = 0
 439              		@ frame_needed = 0, uses_anonymous_args = 0
 267:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 440              		.loc 1 267 3 view .LVU168
 264:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 441              		.loc 1 264 1 is_stmt 0 view .LVU169
 442 0000 70B5     		push	{r4, r5, r6, lr}
 443              		.cfi_def_cfa_offset 16
 444              		.cfi_offset 4, -16
 445              		.cfi_offset 5, -12
 446              		.cfi_offset 6, -8
 447              		.cfi_offset 14, -4
 267:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 448              		.loc 1 267 6 view .LVU170
 449 0002 0446     		mov	r4, r0
 450 0004 0028     		cmp	r0, #0
 451 0006 45D0     		beq	.L29
 273:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 452              		.loc 1 273 3 is_stmt 1 view .LVU171
 276:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 453              		.loc 1 276 3 view .LVU172
 454 0008 0168     		ldr	r1, [r0]
 455 000a 0B68     		ldr	r3, [r1]
 456 000c 23F00103 		bic	r3, r3, #1
 457 0010 0B60     		str	r3, [r1]
 279:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 458              		.loc 1 279 3 view .LVU173
 279:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 459              		.loc 1 279 6 is_stmt 0 view .LVU174
 460 0012 214B     		ldr	r3, .L31
 461 0014 9942     		cmp	r1, r3
 462 0016 4FF01400 		mov	r0, #20
 463              	.LVL22:
 279:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 464              		.loc 1 279 6 view .LVU175
 465 001a 33D8     		bhi	.L26
 282:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 466              		.loc 1 282 5 is_stmt 1 view .LVU176
 282:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 467              		.loc 1 282 53 is_stmt 0 view .LVU177
 468 001c 1F4A     		ldr	r2, .L31+4
 469 001e 0A44     		add	r2, r2, r1
 282:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 470              		.loc 1 282 80 view .LVU178
 471 0020 B2FBF0F2 		udiv	r2, r2, r0
 282:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 472              		.loc 1 282 135 view .LVU179
 473 0024 9200     		lsls	r2, r2, #2
 282:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA1;
 474              		.loc 1 282 24 view .LVU180
 475 0026 6264     		str	r2, [r4, #68]
 283:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 476              		.loc 1 283 5 is_stmt 1 view .LVU181
 283:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 477              		.loc 1 283 26 is_stmt 0 view .LVU182
 478 0028 A3F20743 		subw	r3, r3, #1031
 479              	.L30:
 289:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 480              		.loc 1 289 26 view .LVU183
 481 002c 2364     		str	r3, [r4, #64]
 293:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 482              		.loc 1 293 3 is_stmt 1 view .LVU184
 296:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 483              		.loc 1 296 69 is_stmt 0 view .LVU185
 484 002e D4E91023 		ldrd	r2, r3, [r4, #64]
 296:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 485              		.loc 1 296 46 view .LVU186
 486 0032 0125     		movs	r5, #1
 296:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 487              		.loc 1 296 69 view .LVU187
 488 0034 03F01F03 		and	r3, r3, #31
 296:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 489              		.loc 1 296 46 view .LVU188
 490 0038 05FA03F3 		lsl	r3, r5, r3
 293:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 491              		.loc 1 293 24 view .LVU189
 492 003c 0026     		movs	r6, #0
 493 003e 0E60     		str	r6, [r1]
 296:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 494              		.loc 1 296 3 is_stmt 1 view .LVU190
 301:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 495              		.loc 1 301 3 is_stmt 0 view .LVU191
 496 0040 2046     		mov	r0, r4
 296:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 497              		.loc 1 296 30 view .LVU192
 498 0042 5360     		str	r3, [r2, #4]
 301:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 499              		.loc 1 301 3 is_stmt 1 view .LVU193
 500 0044 FFF7FEFF 		bl	DMA_CalcDMAMUXChannelBaseAndMask
 501              	.LVL23:
 304:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 502              		.loc 1 304 3 view .LVU194
 304:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 503              		.loc 1 304 7 is_stmt 0 view .LVU195
 504 0048 A36C     		ldr	r3, [r4, #72]
 310:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 505              		.loc 1 310 19 view .LVU196
 506 004a 6168     		ldr	r1, [r4, #4]
 304:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 507              		.loc 1 304 28 view .LVU197
 508 004c 1E60     		str	r6, [r3]
 307:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 509              		.loc 1 307 3 is_stmt 1 view .LVU198
 307:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 510              		.loc 1 307 40 is_stmt 0 view .LVU199
 511 004e D4E91332 		ldrd	r3, r2, [r4, #76]
 307:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 512              		.loc 1 307 34 view .LVU200
 513 0052 5A60     		str	r2, [r3, #4]
 310:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 514              		.loc 1 310 3 is_stmt 1 view .LVU201
 310:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 515              		.loc 1 310 35 is_stmt 0 view .LVU202
 516 0054 4A1E     		subs	r2, r1, #1
 310:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 517              		.loc 1 310 6 view .LVU203
 518 0056 032A     		cmp	r2, #3
 519 0058 06D8     		bhi	.L28
 520              	.LVL24:
 315:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 521              		.loc 1 315 5 is_stmt 1 view .LVU204
 522              	.LBB10:
 523              	.LBI10:
1082:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** {
 524              		.loc 1 1082 13 view .LVU205
 525              	.LBB11:
1084:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 526              		.loc 1 1084 3 view .LVU206
1087:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 527              		.loc 1 1087 3 view .LVU207
1087:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 528              		.loc 1 1087 58 is_stmt 0 view .LVU208
 529 005a 114B     		ldr	r3, .L31+8
 530 005c 0B44     		add	r3, r3, r1
 531 005e 9B00     		lsls	r3, r3, #2
1089:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 532              		.loc 1 1089 3 is_stmt 1 view .LVU209
 533              		.loc 1 1091 3 view .LVU210
 534              		.loc 1 1091 42 is_stmt 0 view .LVU211
 535 0060 9540     		lsls	r5, r5, r2
 536              	.LVL25:
 537              		.loc 1 1091 42 view .LVU212
 538              	.LBE11:
 539              	.LBE10:
 318:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 540              		.loc 1 318 5 is_stmt 1 view .LVU213
 318:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 541              		.loc 1 318 34 is_stmt 0 view .LVU214
 542 0062 1E60     		str	r6, [r3]
 321:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 543              		.loc 1 321 5 is_stmt 1 view .LVU215
 321:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 544              		.loc 1 321 41 is_stmt 0 view .LVU216
 545 0064 0F4B     		ldr	r3, .L31+12
 546 0066 5D60     		str	r5, [r3, #4]
 547              	.L28:
 324:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGenStatus = 0U;
 548              		.loc 1 324 3 is_stmt 1 view .LVU217
 324:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGenStatus = 0U;
 549              		.loc 1 324 26 is_stmt 0 view .LVU218
 550 0068 0020     		movs	r0, #0
 551              	.LVL26:
 325:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->DMAmuxRequestGenStatusMask = 0U;
 552              		.loc 1 325 32 view .LVU219
 553 006a C4E91500 		strd	r0, r0, [r4, #84]
 326:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 554              		.loc 1 326 3 is_stmt 1 view .LVU220
 330:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->XferErrorCallback = NULL;
 555              		.loc 1 330 30 is_stmt 0 view .LVU221
 556 006e C4E90B00 		strd	r0, r0, [r4, #44]
 332:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 557              		.loc 1 332 27 view .LVU222
 558 0072 C4E90D00 		strd	r0, r0, [r4, #52]
 335:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 559              		.loc 1 335 19 view .LVU223
 560 0076 E063     		str	r0, [r4, #60]
 326:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 561              		.loc 1 326 36 view .LVU224
 562 0078 E065     		str	r0, [r4, #92]
 329:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->XferHalfCpltCallback = NULL;
 563              		.loc 1 329 3 is_stmt 1 view .LVU225
 331:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   hdma->XferAbortCallback = NULL;
 564              		.loc 1 331 3 view .LVU226
 335:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 565              		.loc 1 335 3 view .LVU227
 338:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 566              		.loc 1 338 3 view .LVU228
 338:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 567              		.loc 1 338 15 is_stmt 0 view .LVU229
 568 007a 84F82500 		strb	r0, [r4, #37]
 341:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 569              		.loc 1 341 3 is_stmt 1 view .LVU230
 341:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 570              		.loc 1 341 3 view .LVU231
 571 007e 84F82400 		strb	r0, [r4, #36]
 343:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 572              		.loc 1 343 3 view .LVU232
 573              	.L25:
 344:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 574              		.loc 1 344 1 is_stmt 0 view .LVU233
 575 0082 70BD     		pop	{r4, r5, r6, pc}
 576              	.LVL27:
 577              	.L26:
 288:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 578              		.loc 1 288 5 is_stmt 1 view .LVU234
 288:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 579              		.loc 1 288 53 is_stmt 0 view .LVU235
 580 0084 084B     		ldr	r3, .L31+16
 581 0086 0B44     		add	r3, r3, r1
 288:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 582              		.loc 1 288 80 view .LVU236
 583 0088 B3FBF0F3 		udiv	r3, r3, r0
 288:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 584              		.loc 1 288 135 view .LVU237
 585 008c 9B00     		lsls	r3, r3, #2
 288:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->DmaBaseAddress = DMA2;
 586              		.loc 1 288 24 view .LVU238
 587 008e 6364     		str	r3, [r4, #68]
 289:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 588              		.loc 1 289 5 is_stmt 1 view .LVU239
 289:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 589              		.loc 1 289 26 is_stmt 0 view .LVU240
 590 0090 064B     		ldr	r3, .L31+20
 591 0092 CBE7     		b	.L30
 592              	.LVL28:
 593              	.L29:
 269:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 594              		.loc 1 269 12 view .LVU241
 595 0094 0120     		movs	r0, #1
 596              	.LVL29:
 269:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 597              		.loc 1 269 12 view .LVU242
 598 0096 F4E7     		b	.L25
 599              	.L32:
 600              		.align	2
 601              	.L31:
 602 0098 07040240 		.word	1073873927
 603 009c F8FFFDBF 		.word	-1073872904
 604 00a0 3F820010 		.word	268468799
 605 00a4 40090240 		.word	1073875264
 606 00a8 F8FBFDBF 		.word	-1073873928
 607 00ac 00040240 		.word	1073873920
 608              		.cfi_endproc
 609              	.LFE326:
 611              		.section	.text.HAL_DMA_Start,"ax",%progbits
 612              		.align	1
 613              		.global	HAL_DMA_Start
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu fpv4-sp-d16
 619              	HAL_DMA_Start:
 620              	.LVL30:
 621              	.LFB327:
 379:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 622              		.loc 1 379 1 is_stmt 1 view -0
 623              		.cfi_startproc
 624              		@ args = 0, pretend = 0, frame = 0
 625              		@ frame_needed = 0, uses_anonymous_args = 0
 380:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 626              		.loc 1 380 3 view .LVU244
 383:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 627              		.loc 1 383 3 view .LVU245
 386:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 628              		.loc 1 386 3 view .LVU246
 386:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 629              		.loc 1 386 3 view .LVU247
 379:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 630              		.loc 1 379 1 is_stmt 0 view .LVU248
 631 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 632              		.cfi_def_cfa_offset 24
 633              		.cfi_offset 3, -24
 634              		.cfi_offset 4, -20
 635              		.cfi_offset 5, -16
 636              		.cfi_offset 6, -12
 637              		.cfi_offset 7, -8
 638              		.cfi_offset 14, -4
 386:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 639              		.loc 1 386 3 view .LVU249
 640 0002 90F82450 		ldrb	r5, [r0, #36]	@ zero_extendqisi2
 641 0006 012D     		cmp	r5, #1
 642 0008 1DD0     		beq	.L36
 386:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 643              		.loc 1 386 3 is_stmt 1 discriminator 2 view .LVU250
 644 000a 0125     		movs	r5, #1
 645 000c 80F82450 		strb	r5, [r0, #36]
 388:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 646              		.loc 1 388 3 discriminator 2 view .LVU251
 388:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 647              		.loc 1 388 34 is_stmt 0 discriminator 2 view .LVU252
 648 0010 90F82550 		ldrb	r5, [r0, #37]	@ zero_extendqisi2
 388:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 649              		.loc 1 388 6 discriminator 2 view .LVU253
 650 0014 012D     		cmp	r5, #1
 651 0016 4FF00006 		mov	r6, #0
 652 001a 4FF00205 		mov	r5, #2
 653 001e 10D1     		bne	.L35
 391:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 654              		.loc 1 391 5 is_stmt 1 view .LVU254
 395:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 655              		.loc 1 395 5 is_stmt 0 view .LVU255
 656 0020 0768     		ldr	r7, [r0]
 391:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 657              		.loc 1 391 17 view .LVU256
 658 0022 80F82550 		strb	r5, [r0, #37]
 392:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 659              		.loc 1 392 5 is_stmt 1 view .LVU257
 392:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 660              		.loc 1 392 21 is_stmt 0 view .LVU258
 661 0026 C663     		str	r6, [r0, #60]
 395:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 662              		.loc 1 395 5 is_stmt 1 view .LVU259
 663 0028 3D68     		ldr	r5, [r7]
 664 002a 25F00105 		bic	r5, r5, #1
 665 002e 3D60     		str	r5, [r7]
 398:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 666              		.loc 1 398 5 view .LVU260
 667 0030 FFF7FEFF 		bl	DMA_SetConfig
 668              	.LVL31:
 401:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 669              		.loc 1 401 5 view .LVU261
 670 0034 0268     		ldr	r2, [r0]
 671              	.LVL32:
 401:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 672              		.loc 1 401 5 is_stmt 0 view .LVU262
 673 0036 1368     		ldr	r3, [r2]
 674 0038 43F00103 		orr	r3, r3, #1
 675 003c 1360     		str	r3, [r2]
 380:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 676              		.loc 1 380 21 view .LVU263
 677 003e 3046     		mov	r0, r6
 678              	.LVL33:
 679              	.L34:
 410:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 680              		.loc 1 410 1 view .LVU264
 681 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 682              	.LVL34:
 683              	.L35:
 406:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_BUSY;
 684              		.loc 1 406 5 is_stmt 1 view .LVU265
 406:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     status = HAL_BUSY;
 685              		.loc 1 406 5 view .LVU266
 686 0042 80F82460 		strb	r6, [r0, #36]
 407:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 687              		.loc 1 407 5 view .LVU267
 688              	.LVL35:
 689              	.L36:
 386:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 690              		.loc 1 386 3 is_stmt 0 view .LVU268
 691 0046 0220     		movs	r0, #2
 692              	.LVL36:
 386:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 693              		.loc 1 386 3 view .LVU269
 694 0048 FAE7     		b	.L34
 695              		.cfi_endproc
 696              	.LFE327:
 698              		.section	.text.HAL_DMA_Start_IT,"ax",%progbits
 699              		.align	1
 700              		.global	HAL_DMA_Start_IT
 701              		.syntax unified
 702              		.thumb
 703              		.thumb_func
 704              		.fpu fpv4-sp-d16
 706              	HAL_DMA_Start_IT:
 707              	.LVL37:
 708              	.LFB328:
 423:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 709              		.loc 1 423 1 is_stmt 1 view -0
 710              		.cfi_startproc
 711              		@ args = 0, pretend = 0, frame = 0
 712              		@ frame_needed = 0, uses_anonymous_args = 0
 424:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 713              		.loc 1 424 3 view .LVU271
 427:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 714              		.loc 1 427 3 view .LVU272
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 715              		.loc 1 430 3 view .LVU273
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 716              		.loc 1 430 3 view .LVU274
 423:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 717              		.loc 1 423 1 is_stmt 0 view .LVU275
 718 0000 70B5     		push	{r4, r5, r6, lr}
 719              		.cfi_def_cfa_offset 16
 720              		.cfi_offset 4, -16
 721              		.cfi_offset 5, -12
 722              		.cfi_offset 6, -8
 723              		.cfi_offset 14, -4
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 724              		.loc 1 430 3 view .LVU276
 725 0002 90F82450 		ldrb	r5, [r0, #36]	@ zero_extendqisi2
 726 0006 012D     		cmp	r5, #1
 423:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 727              		.loc 1 423 1 view .LVU277
 728 0008 0446     		mov	r4, r0
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 729              		.loc 1 430 3 view .LVU278
 730 000a 39D0     		beq	.L44
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 731              		.loc 1 430 3 is_stmt 1 discriminator 2 view .LVU279
 732 000c 0125     		movs	r5, #1
 733 000e 80F82450 		strb	r5, [r0, #36]
 432:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 734              		.loc 1 432 3 discriminator 2 view .LVU280
 432:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 735              		.loc 1 432 34 is_stmt 0 discriminator 2 view .LVU281
 736 0012 90F82550 		ldrb	r5, [r0, #37]	@ zero_extendqisi2
 432:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 737              		.loc 1 432 6 discriminator 2 view .LVU282
 738 0016 012D     		cmp	r5, #1
 739 0018 4FF00006 		mov	r6, #0
 740 001c 4FF00205 		mov	r5, #2
 741 0020 2CD1     		bne	.L39
 435:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 742              		.loc 1 435 5 is_stmt 1 view .LVU283
 435:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 743              		.loc 1 435 17 is_stmt 0 view .LVU284
 744 0022 80F82550 		strb	r5, [r0, #37]
 436:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 745              		.loc 1 436 5 is_stmt 1 view .LVU285
 436:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 746              		.loc 1 436 21 is_stmt 0 view .LVU286
 747 0026 C663     		str	r6, [r0, #60]
 439:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 748              		.loc 1 439 5 is_stmt 1 view .LVU287
 749 0028 0668     		ldr	r6, [r0]
 750 002a 3568     		ldr	r5, [r6]
 751 002c 25F00105 		bic	r5, r5, #1
 752 0030 3560     		str	r5, [r6]
 442:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 753              		.loc 1 442 5 view .LVU288
 754 0032 FFF7FEFF 		bl	DMA_SetConfig
 755              	.LVL38:
 446:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 756              		.loc 1 446 5 view .LVU289
 446:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 757              		.loc 1 446 8 is_stmt 0 view .LVU290
 758 0036 026B     		ldr	r2, [r0, #48]
 759              	.LVL39:
 446:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 760              		.loc 1 446 8 view .LVU291
 761 0038 0368     		ldr	r3, [r0]
 762 003a BAB1     		cbz	r2, .L40
 449:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 763              		.loc 1 449 7 is_stmt 1 view .LVU292
 764 003c 1A68     		ldr	r2, [r3]
 765 003e 42F00E02 		orr	r2, r2, #14
 766              	.L51:
 454:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 767              		.loc 1 454 7 is_stmt 0 view .LVU293
 768 0042 1A60     		str	r2, [r3]
 458:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 769              		.loc 1 458 5 is_stmt 1 view .LVU294
 458:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 770              		.loc 1 458 14 is_stmt 0 view .LVU295
 771 0044 A26C     		ldr	r2, [r4, #72]
 458:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 772              		.loc 1 458 29 view .LVU296
 773 0046 1168     		ldr	r1, [r2]
 774              	.LVL40:
 458:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 775              		.loc 1 458 8 view .LVU297
 776 0048 C903     		lsls	r1, r1, #15
 461:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 777              		.loc 1 461 7 is_stmt 1 view .LVU298
 461:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 778              		.loc 1 461 32 is_stmt 0 view .LVU299
 779 004a 42BF     		ittt	mi
 780 004c 1168     		ldrmi	r1, [r2]
 781 004e 41F48071 		orrmi	r1, r1, #256
 782 0052 1160     		strmi	r1, [r2]
 464:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 783              		.loc 1 464 5 is_stmt 1 view .LVU300
 464:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 784              		.loc 1 464 13 is_stmt 0 view .LVU301
 785 0054 626D     		ldr	r2, [r4, #84]
 464:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 786              		.loc 1 464 8 view .LVU302
 787 0056 1AB1     		cbz	r2, .L43
 468:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 788              		.loc 1 468 7 is_stmt 1 view .LVU303
 468:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 789              		.loc 1 468 36 is_stmt 0 view .LVU304
 790 0058 1168     		ldr	r1, [r2]
 791 005a 41F48071 		orr	r1, r1, #256
 792 005e 1160     		str	r1, [r2]
 793              	.L43:
 472:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 794              		.loc 1 472 5 is_stmt 1 view .LVU305
 795 0060 1A68     		ldr	r2, [r3]
 796 0062 42F00102 		orr	r2, r2, #1
 797 0066 1A60     		str	r2, [r3]
 424:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 798              		.loc 1 424 21 is_stmt 0 view .LVU306
 799 0068 0020     		movs	r0, #0
 800              	.LVL41:
 801              	.L38:
 483:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 802              		.loc 1 483 1 view .LVU307
 803 006a 70BD     		pop	{r4, r5, r6, pc}
 804              	.LVL42:
 805              	.L40:
 453:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_TE));
 806              		.loc 1 453 7 is_stmt 1 view .LVU308
 807 006c 1A68     		ldr	r2, [r3]
 808 006e 22F00402 		bic	r2, r2, #4
 809 0072 1A60     		str	r2, [r3]
 454:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 810              		.loc 1 454 7 view .LVU309
 811 0074 1A68     		ldr	r2, [r3]
 812 0076 42F00A02 		orr	r2, r2, #10
 813 007a E2E7     		b	.L51
 814              	.LVL43:
 815              	.L39:
 477:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 816              		.loc 1 477 5 view .LVU310
 477:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 817              		.loc 1 477 5 view .LVU311
 818 007c 80F82460 		strb	r6, [r0, #36]
 480:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 819              		.loc 1 480 5 view .LVU312
 820              	.LVL44:
 821              	.L44:
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 822              		.loc 1 430 3 is_stmt 0 view .LVU313
 823 0080 0220     		movs	r0, #2
 824              	.LVL45:
 430:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 825              		.loc 1 430 3 view .LVU314
 826 0082 F2E7     		b	.L38
 827              		.cfi_endproc
 828              	.LFE328:
 830              		.section	.text.HAL_DMA_Abort,"ax",%progbits
 831              		.align	1
 832              		.global	HAL_DMA_Abort
 833              		.syntax unified
 834              		.thumb
 835              		.thumb_func
 836              		.fpu fpv4-sp-d16
 838              	HAL_DMA_Abort:
 839              	.LVL46:
 840              	.LFB329:
 492:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 841              		.loc 1 492 1 is_stmt 1 view -0
 842              		.cfi_startproc
 843              		@ args = 0, pretend = 0, frame = 0
 844              		@ frame_needed = 0, uses_anonymous_args = 0
 845              		@ link register save eliminated.
 493:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 846              		.loc 1 493 3 view .LVU316
 495:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 847              		.loc 1 495 3 view .LVU317
 495:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 848              		.loc 1 495 10 is_stmt 0 view .LVU318
 849 0000 90F82520 		ldrb	r2, [r0, #37]	@ zero_extendqisi2
 495:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 850              		.loc 1 495 5 view .LVU319
 851 0004 022A     		cmp	r2, #2
 492:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 852              		.loc 1 492 1 view .LVU320
 853 0006 0346     		mov	r3, r0
 495:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 854              		.loc 1 495 5 view .LVU321
 855 0008 09D0     		beq	.L53
 498:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 856              		.loc 1 498 5 is_stmt 1 view .LVU322
 498:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 857              		.loc 1 498 21 is_stmt 0 view .LVU323
 858 000a 0422     		movs	r2, #4
 859 000c C263     		str	r2, [r0, #60]
 500:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 860              		.loc 1 500 5 is_stmt 1 view .LVU324
 861              	.LVL47:
 500:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 862              		.loc 1 500 12 is_stmt 0 view .LVU325
 863 000e 0120     		movs	r0, #1
 864              	.LVL48:
 865              	.L54:
 530:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 866              		.loc 1 530 3 is_stmt 1 view .LVU326
 530:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 867              		.loc 1 530 15 is_stmt 0 view .LVU327
 868 0010 0122     		movs	r2, #1
 869 0012 83F82520 		strb	r2, [r3, #37]
 533:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 870              		.loc 1 533 3 is_stmt 1 view .LVU328
 533:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 871              		.loc 1 533 3 view .LVU329
 872 0016 0022     		movs	r2, #0
 873 0018 83F82420 		strb	r2, [r3, #36]
 535:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 874              		.loc 1 535 3 view .LVU330
 536:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 875              		.loc 1 536 1 is_stmt 0 view .LVU331
 876 001c 7047     		bx	lr
 877              	.LVL49:
 878              	.L53:
 505:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 879              		.loc 1 505 6 is_stmt 1 view .LVU332
 880 001e 0268     		ldr	r2, [r0]
 508:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 881              		.loc 1 508 10 is_stmt 0 view .LVU333
 882 0020 806C     		ldr	r0, [r0, #72]
 883              	.LVL50:
 505:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 884              		.loc 1 505 6 view .LVU334
 885 0022 1168     		ldr	r1, [r2]
 886 0024 21F00E01 		bic	r1, r1, #14
 887 0028 1160     		str	r1, [r2]
 508:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 888              		.loc 1 508 6 is_stmt 1 view .LVU335
 508:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 889              		.loc 1 508 31 is_stmt 0 view .LVU336
 890 002a 0168     		ldr	r1, [r0]
 891 002c 21F48071 		bic	r1, r1, #256
 892 0030 0160     		str	r1, [r0]
 511:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 893              		.loc 1 511 6 is_stmt 1 view .LVU337
 894 0032 1168     		ldr	r1, [r2]
 895 0034 21F00101 		bic	r1, r1, #1
 896 0038 1160     		str	r1, [r2]
 514:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 897              		.loc 1 514 6 view .LVU338
 514:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 898              		.loc 1 514 72 is_stmt 0 view .LVU339
 899 003a D3E91002 		ldrd	r0, r2, [r3, #64]
 900 003e 02F01F01 		and	r1, r2, #31
 514:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 901              		.loc 1 514 49 view .LVU340
 902 0042 0122     		movs	r2, #1
 903 0044 8A40     		lsls	r2, r2, r1
 514:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 904              		.loc 1 514 33 view .LVU341
 905 0046 4260     		str	r2, [r0, #4]
 517:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 906              		.loc 1 517 6 is_stmt 1 view .LVU342
 517:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 907              		.loc 1 517 43 is_stmt 0 view .LVU343
 908 0048 D3E91321 		ldrd	r2, r1, [r3, #76]
 519:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      {
 909              		.loc 1 519 14 view .LVU344
 910 004c 586D     		ldr	r0, [r3, #84]
 517:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 911              		.loc 1 517 37 view .LVU345
 912 004e 5160     		str	r1, [r2, #4]
 519:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      {
 913              		.loc 1 519 6 is_stmt 1 view .LVU346
 519:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      {
 914              		.loc 1 519 9 is_stmt 0 view .LVU347
 915 0050 0028     		cmp	r0, #0
 916 0052 DDD0     		beq	.L54
 523:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 917              		.loc 1 523 8 is_stmt 1 view .LVU348
 523:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      
 918              		.loc 1 523 37 is_stmt 0 view .LVU349
 919 0054 0268     		ldr	r2, [r0]
 920 0056 22F48072 		bic	r2, r2, #256
 921 005a 0260     		str	r2, [r0]
 526:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      }
 922              		.loc 1 526 8 is_stmt 1 view .LVU350
 526:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      }
 923              		.loc 1 526 50 is_stmt 0 view .LVU351
 924 005c D3E91621 		ldrd	r2, r1, [r3, #88]
 493:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 925              		.loc 1 493 21 view .LVU352
 926 0060 0020     		movs	r0, #0
 526:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****      }
 927              		.loc 1 526 44 view .LVU353
 928 0062 5160     		str	r1, [r2, #4]
 929 0064 D4E7     		b	.L54
 930              		.cfi_endproc
 931              	.LFE329:
 933              		.section	.text.HAL_DMA_Abort_IT,"ax",%progbits
 934              		.align	1
 935              		.global	HAL_DMA_Abort_IT
 936              		.syntax unified
 937              		.thumb
 938              		.thumb_func
 939              		.fpu fpv4-sp-d16
 941              	HAL_DMA_Abort_IT:
 942              	.LVL51:
 943              	.LFB330:
 545:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 944              		.loc 1 545 1 is_stmt 1 view -0
 945              		.cfi_startproc
 946              		@ args = 0, pretend = 0, frame = 0
 947              		@ frame_needed = 0, uses_anonymous_args = 0
 546:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 948              		.loc 1 546 3 view .LVU355
 548:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 949              		.loc 1 548 3 view .LVU356
 548:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 950              		.loc 1 548 33 is_stmt 0 view .LVU357
 951 0000 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 548:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 952              		.loc 1 548 6 view .LVU358
 953 0004 022B     		cmp	r3, #2
 545:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 954              		.loc 1 545 1 view .LVU359
 955 0006 10B5     		push	{r4, lr}
 956              		.cfi_def_cfa_offset 8
 957              		.cfi_offset 4, -8
 958              		.cfi_offset 14, -4
 548:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 959              		.loc 1 548 6 view .LVU360
 960 0008 09D0     		beq	.L57
 551:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 961              		.loc 1 551 5 is_stmt 1 view .LVU361
 551:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 962              		.loc 1 551 21 is_stmt 0 view .LVU362
 963 000a 0423     		movs	r3, #4
 964 000c C363     		str	r3, [r0, #60]
 554:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 965              		.loc 1 554 5 is_stmt 1 view .LVU363
 557:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 966              		.loc 1 557 5 is_stmt 0 view .LVU364
 967 000e 0022     		movs	r2, #0
 554:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 968              		.loc 1 554 17 view .LVU365
 969 0010 0123     		movs	r3, #1
 970 0012 80F82530 		strb	r3, [r0, #37]
 557:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 971              		.loc 1 557 5 is_stmt 1 view .LVU366
 557:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 972              		.loc 1 557 5 view .LVU367
 973 0016 80F82420 		strb	r2, [r0, #36]
 559:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 974              		.loc 1 559 5 view .LVU368
 975              	.LVL52:
 976              	.L60:
 546:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 977              		.loc 1 546 21 is_stmt 0 view .LVU369
 978 001a 1846     		mov	r0, r3
 979              	.LVL53:
 546:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 980              		.loc 1 546 21 view .LVU370
 981 001c 2BE0     		b	.L58
 982              	.LVL54:
 983              	.L57:
 564:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 984              		.loc 1 564 5 is_stmt 1 view .LVU371
 985 001e 0368     		ldr	r3, [r0]
 986 0020 1A68     		ldr	r2, [r3]
 987 0022 22F00E02 		bic	r2, r2, #14
 988 0026 1A60     		str	r2, [r3]
 567:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 989              		.loc 1 567 5 view .LVU372
 990 0028 1A68     		ldr	r2, [r3]
 991 002a 22F00102 		bic	r2, r2, #1
 992 002e 1A60     		str	r2, [r3]
 570:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 993              		.loc 1 570 5 view .LVU373
 570:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 994              		.loc 1 570 9 is_stmt 0 view .LVU374
 995 0030 826C     		ldr	r2, [r0, #72]
 570:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 996              		.loc 1 570 30 view .LVU375
 997 0032 1368     		ldr	r3, [r2]
 998 0034 23F48073 		bic	r3, r3, #256
 999 0038 1360     		str	r3, [r2]
 573:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1000              		.loc 1 573 5 is_stmt 1 view .LVU376
 573:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1001              		.loc 1 573 71 is_stmt 0 view .LVU377
 1002 003a D0E91013 		ldrd	r1, r3, [r0, #64]
 1003 003e 03F01F02 		and	r2, r3, #31
 573:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1004              		.loc 1 573 48 view .LVU378
 1005 0042 0123     		movs	r3, #1
 1006 0044 9340     		lsls	r3, r3, r2
 573:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1007              		.loc 1 573 32 view .LVU379
 1008 0046 4B60     		str	r3, [r1, #4]
 576:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1009              		.loc 1 576 5 is_stmt 1 view .LVU380
 576:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1010              		.loc 1 576 42 is_stmt 0 view .LVU381
 1011 0048 D0E91332 		ldrd	r3, r2, [r0, #76]
 576:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1012              		.loc 1 576 36 view .LVU382
 1013 004c 5A60     		str	r2, [r3, #4]
 578:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1014              		.loc 1 578 5 is_stmt 1 view .LVU383
 578:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1015              		.loc 1 578 13 is_stmt 0 view .LVU384
 1016 004e 436D     		ldr	r3, [r0, #84]
 578:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1017              		.loc 1 578 8 view .LVU385
 1018 0050 33B1     		cbz	r3, .L59
 582:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1019              		.loc 1 582 7 is_stmt 1 view .LVU386
 582:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1020              		.loc 1 582 36 is_stmt 0 view .LVU387
 1021 0052 1A68     		ldr	r2, [r3]
 1022 0054 22F48072 		bic	r2, r2, #256
 1023 0058 1A60     		str	r2, [r3]
 585:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1024              		.loc 1 585 7 is_stmt 1 view .LVU388
 585:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1025              		.loc 1 585 49 is_stmt 0 view .LVU389
 1026 005a D0E91632 		ldrd	r3, r2, [r0, #88]
 585:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1027              		.loc 1 585 43 view .LVU390
 1028 005e 5A60     		str	r2, [r3, #4]
 1029              	.L59:
 589:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1030              		.loc 1 589 5 is_stmt 1 view .LVU391
 589:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1031              		.loc 1 589 17 is_stmt 0 view .LVU392
 1032 0060 0123     		movs	r3, #1
 1033 0062 80F82530 		strb	r3, [r0, #37]
 592:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1034              		.loc 1 592 5 is_stmt 1 view .LVU393
 592:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1035              		.loc 1 592 5 view .LVU394
 595:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1036              		.loc 1 595 13 is_stmt 0 view .LVU395
 1037 0066 836B     		ldr	r3, [r0, #56]
 592:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1038              		.loc 1 592 5 view .LVU396
 1039 0068 0024     		movs	r4, #0
 1040 006a 80F82440 		strb	r4, [r0, #36]
 595:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1041              		.loc 1 595 5 is_stmt 1 view .LVU397
 595:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1042              		.loc 1 595 8 is_stmt 0 view .LVU398
 1043 006e 002B     		cmp	r3, #0
 1044 0070 D3D0     		beq	.L60
 597:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1045              		.loc 1 597 7 is_stmt 1 view .LVU399
 1046 0072 9847     		blx	r3
 1047              	.LVL55:
 546:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1048              		.loc 1 546 21 is_stmt 0 view .LVU400
 1049 0074 2046     		mov	r0, r4
 1050              	.LVL56:
 1051              	.L58:
 600:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1052              		.loc 1 600 3 is_stmt 1 view .LVU401
 601:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1053              		.loc 1 601 1 is_stmt 0 view .LVU402
 1054 0076 10BD     		pop	{r4, pc}
 1055              		.cfi_endproc
 1056              	.LFE330:
 1058              		.section	.text.HAL_DMA_PollForTransfer,"ax",%progbits
 1059              		.align	1
 1060              		.global	HAL_DMA_PollForTransfer
 1061              		.syntax unified
 1062              		.thumb
 1063              		.thumb_func
 1064              		.fpu fpv4-sp-d16
 1066              	HAL_DMA_PollForTransfer:
 1067              	.LVL57:
 1068              	.LFB331:
 613:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t temp;
 1069              		.loc 1 613 1 is_stmt 1 view -0
 1070              		.cfi_startproc
 1071              		@ args = 0, pretend = 0, frame = 0
 1072              		@ frame_needed = 0, uses_anonymous_args = 0
 614:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t tickstart;
 1073              		.loc 1 614 3 view .LVU404
 615:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1074              		.loc 1 615 3 view .LVU405
 617:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1075              		.loc 1 617 3 view .LVU406
 613:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t temp;
 1076              		.loc 1 613 1 is_stmt 0 view .LVU407
 1077 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1078              		.cfi_def_cfa_offset 32
 1079              		.cfi_offset 4, -32
 1080              		.cfi_offset 5, -28
 1081              		.cfi_offset 6, -24
 1082              		.cfi_offset 7, -20
 1083              		.cfi_offset 8, -16
 1084              		.cfi_offset 9, -12
 1085              		.cfi_offset 10, -8
 1086              		.cfi_offset 14, -4
 617:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1087              		.loc 1 617 33 view .LVU408
 1088 0004 90F82550 		ldrb	r5, [r0, #37]	@ zero_extendqisi2
 1089 0008 EBB2     		uxtb	r3, r5
 617:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1090              		.loc 1 617 6 view .LVU409
 1091 000a 022B     		cmp	r3, #2
 613:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t temp;
 1092              		.loc 1 613 1 view .LVU410
 1093 000c 0446     		mov	r4, r0
 1094 000e 0E46     		mov	r6, r1
 1095 0010 9046     		mov	r8, r2
 617:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1096              		.loc 1 617 6 view .LVU411
 1097 0012 07D0     		beq	.L65
 620:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 1098              		.loc 1 620 5 is_stmt 1 view .LVU412
 620:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 1099              		.loc 1 620 21 is_stmt 0 view .LVU413
 1100 0014 0423     		movs	r3, #4
 1101 0016 C363     		str	r3, [r0, #60]
 621:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 1102              		.loc 1 621 5 is_stmt 1 view .LVU414
 621:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 1103              		.loc 1 621 5 view .LVU415
 1104 0018 0023     		movs	r3, #0
 1105 001a 80F82430 		strb	r3, [r0, #36]
 622:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1106              		.loc 1 622 5 view .LVU416
 1107              	.LVL58:
 1108              	.L92:
 629:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1109              		.loc 1 629 5 view .LVU417
 629:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1110              		.loc 1 629 12 is_stmt 0 view .LVU418
 1111 001e 0120     		movs	r0, #1
 1112              	.LVL59:
 1113              	.L66:
 733:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1114              		.loc 1 733 1 view .LVU419
 1115 0020 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1116              	.LVL60:
 1117              	.L65:
 626:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1118              		.loc 1 626 3 is_stmt 1 view .LVU420
 626:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1119              		.loc 1 626 18 is_stmt 0 view .LVU421
 1120 0024 0268     		ldr	r2, [r0]
 1121              	.LVL61:
 626:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1122              		.loc 1 626 28 view .LVU422
 1123 0026 1268     		ldr	r2, [r2]
 626:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1124              		.loc 1 626 6 view .LVU423
 1125 0028 9206     		lsls	r2, r2, #26
 1126 002a 03D5     		bpl	.L67
 628:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 1127              		.loc 1 628 5 is_stmt 1 view .LVU424
 628:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     return HAL_ERROR;
 1128              		.loc 1 628 21 is_stmt 0 view .LVU425
 1129 002c 4FF48073 		mov	r3, #256
 1130 0030 C363     		str	r3, [r0, #60]
 1131 0032 F4E7     		b	.L92
 1132              	.L67:
 633:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1133              		.loc 1 633 3 is_stmt 1 view .LVU426
 1134 0034 456C     		ldr	r5, [r0, #68]
 1135 0036 05F01F05 		and	r5, r5, #31
 633:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1136              		.loc 1 633 6 is_stmt 0 view .LVU427
 1137 003a 0029     		cmp	r1, #0
 1138 003c 35D1     		bne	.L68
 1139              	.L91:
 642:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1140              		.loc 1 642 10 view .LVU428
 1141 003e 03FA05F5 		lsl	r5, r3, r5
 1142              	.LVL62:
 646:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1143              		.loc 1 646 3 is_stmt 1 view .LVU429
 646:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1144              		.loc 1 646 15 is_stmt 0 view .LVU430
 1145 0042 FFF7FEFF 		bl	HAL_GetTick
 1146              	.LVL63:
 650:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1147              		.loc 1 650 69 view .LVU431
 1148 0046 4FF0080A 		mov	r10, #8
 646:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1149              		.loc 1 646 15 view .LVU432
 1150 004a 8146     		mov	r9, r0
 1151              	.LVL64:
 648:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1152              		.loc 1 648 3 is_stmt 1 view .LVU433
 1153              	.L70:
 648:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1154              		.loc 1 648 3 is_stmt 0 view .LVU434
 1155 004c D4E91073 		ldrd	r7, r3, [r4, #64]
 1156 0050 03F01F03 		and	r3, r3, #31
 650:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1157              		.loc 1 650 69 view .LVU435
 1158 0054 0AFA03F2 		lsl	r2, r10, r3
 1159              	.L72:
 648:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1160              		.loc 1 648 37 view .LVU436
 1161 0058 3968     		ldr	r1, [r7]
 648:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1162              		.loc 1 648 9 view .LVU437
 1163 005a 2940     		ands	r1, r1, r5
 1164 005c 27D0     		beq	.L74
 688:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1165              		.loc 1 688 3 is_stmt 1 view .LVU438
 688:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1166              		.loc 1 688 11 is_stmt 0 view .LVU439
 1167 005e 626D     		ldr	r2, [r4, #84]
 688:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1168              		.loc 1 688 6 view .LVU440
 1169 0060 6AB1     		cbz	r2, .L75
 691:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1170              		.loc 1 691 5 is_stmt 1 view .LVU441
 691:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1171              		.loc 1 691 14 is_stmt 0 view .LVU442
 1172 0062 A06D     		ldr	r0, [r4, #88]
 691:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1173              		.loc 1 691 51 view .LVU443
 1174 0064 E56D     		ldr	r5, [r4, #92]
 1175              	.LVL65:
 691:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1176              		.loc 1 691 38 view .LVU444
 1177 0066 0168     		ldr	r1, [r0]
 691:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1178              		.loc 1 691 8 view .LVU445
 1179 0068 2942     		tst	r1, r5
 1180 006a 08D0     		beq	.L75
 694:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1181              		.loc 1 694 7 is_stmt 1 view .LVU446
 694:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1182              		.loc 1 694 36 is_stmt 0 view .LVU447
 1183 006c 1168     		ldr	r1, [r2]
 1184 006e 41F48071 		orr	r1, r1, #256
 1185 0072 1160     		str	r1, [r2]
 697:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1186              		.loc 1 697 7 is_stmt 1 view .LVU448
 697:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1187              		.loc 1 697 43 is_stmt 0 view .LVU449
 1188 0074 4560     		str	r5, [r0, #4]
 700:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1189              		.loc 1 700 7 is_stmt 1 view .LVU450
 700:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1190              		.loc 1 700 23 is_stmt 0 view .LVU451
 1191 0076 E26B     		ldr	r2, [r4, #60]
 1192 0078 42F48062 		orr	r2, r2, #1024
 1193 007c E263     		str	r2, [r4, #60]
 1194              	.L75:
 705:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1195              		.loc 1 705 3 is_stmt 1 view .LVU452
 705:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1196              		.loc 1 705 12 is_stmt 0 view .LVU453
 1197 007e E26C     		ldr	r2, [r4, #76]
 705:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1198              		.loc 1 705 45 view .LVU454
 1199 0080 216D     		ldr	r1, [r4, #80]
 705:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1200              		.loc 1 705 33 view .LVU455
 1201 0082 1068     		ldr	r0, [r2]
 705:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1202              		.loc 1 705 6 view .LVU456
 1203 0084 0842     		tst	r0, r1
 708:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1204              		.loc 1 708 5 is_stmt 1 view .LVU457
 708:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1205              		.loc 1 708 36 is_stmt 0 view .LVU458
 1206 0086 1FBF     		itttt	ne
 1207 0088 5160     		strne	r1, [r2, #4]
 711:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1208              		.loc 1 711 5 is_stmt 1 view .LVU459
 711:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1209              		.loc 1 711 21 is_stmt 0 view .LVU460
 1210 008a E26B     		ldrne	r2, [r4, #60]
 1211 008c 42F40072 		orrne	r2, r2, #512
 1212 0090 E263     		strne	r2, [r4, #60]
 714:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1213              		.loc 1 714 3 is_stmt 1 view .LVU461
 714:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1214              		.loc 1 714 6 is_stmt 0 view .LVU462
 1215 0092 76BB     		cbnz	r6, .L77
 717:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1216              		.loc 1 717 5 is_stmt 1 view .LVU463
 717:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1217              		.loc 1 717 58 is_stmt 0 view .LVU464
 1218 0094 0222     		movs	r2, #2
 1219 0096 02FA03F3 		lsl	r3, r2, r3
 717:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1220              		.loc 1 717 32 view .LVU465
 1221 009a 7B60     		str	r3, [r7, #4]
 721:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1222              		.loc 1 721 5 is_stmt 1 view .LVU466
 721:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1223              		.loc 1 721 17 is_stmt 0 view .LVU467
 1224 009c 0123     		movs	r3, #1
 1225 009e 84F82530 		strb	r3, [r4, #37]
 1226              	.L78:
 730:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1227              		.loc 1 730 3 is_stmt 1 view .LVU468
 730:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1228              		.loc 1 730 3 view .LVU469
 1229 00a2 0020     		movs	r0, #0
 1230 00a4 84F82400 		strb	r0, [r4, #36]
 732:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1231              		.loc 1 732 3 view .LVU470
 732:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1232              		.loc 1 732 10 is_stmt 0 view .LVU471
 1233 00a8 BAE7     		b	.L66
 1234              	.LVL66:
 1235              	.L68:
 642:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1236              		.loc 1 642 5 is_stmt 1 view .LVU472
 642:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1237              		.loc 1 642 10 is_stmt 0 view .LVU473
 1238 00aa 0423     		movs	r3, #4
 1239 00ac C7E7     		b	.L91
 1240              	.LVL67:
 1241              	.L74:
 650:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1242              		.loc 1 650 5 is_stmt 1 view .LVU474
 650:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1243              		.loc 1 650 37 is_stmt 0 view .LVU475
 1244 00ae 3868     		ldr	r0, [r7]
 650:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1245              		.loc 1 650 8 view .LVU476
 1246 00b0 1042     		tst	r0, r2
 1247 00b2 09D0     		beq	.L71
 655:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1248              		.loc 1 655 7 is_stmt 1 view .LVU477
 655:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1249              		.loc 1 655 60 is_stmt 0 view .LVU478
 1250 00b4 0120     		movs	r0, #1
 1251 00b6 00FA03F3 		lsl	r3, r0, r3
 655:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1252              		.loc 1 655 34 view .LVU479
 1253 00ba 7B60     		str	r3, [r7, #4]
 658:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1254              		.loc 1 658 7 is_stmt 1 view .LVU480
 658:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1255              		.loc 1 658 23 is_stmt 0 view .LVU481
 1256 00bc E063     		str	r0, [r4, #60]
 661:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1257              		.loc 1 661 7 is_stmt 1 view .LVU482
 664:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1258              		.loc 1 664 7 is_stmt 0 view .LVU483
 1259 00be 84F82410 		strb	r1, [r4, #36]
 661:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1260              		.loc 1 661 19 view .LVU484
 1261 00c2 84F82500 		strb	r0, [r4, #37]
 664:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1262              		.loc 1 664 7 is_stmt 1 view .LVU485
 664:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1263              		.loc 1 664 7 view .LVU486
 666:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1264              		.loc 1 666 7 view .LVU487
 666:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1265              		.loc 1 666 14 is_stmt 0 view .LVU488
 1266 00c6 ABE7     		b	.L66
 1267              	.L71:
 669:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1268              		.loc 1 669 5 is_stmt 1 view .LVU489
 669:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1269              		.loc 1 669 8 is_stmt 0 view .LVU490
 1270 00c8 B8F1FF3F 		cmp	r8, #-1
 1271 00cc C4D0     		beq	.L72
 671:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       {
 1272              		.loc 1 671 7 is_stmt 1 view .LVU491
 671:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       {
 1273              		.loc 1 671 13 is_stmt 0 view .LVU492
 1274 00ce FFF7FEFF 		bl	HAL_GetTick
 1275              	.LVL68:
 671:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       {
 1276              		.loc 1 671 27 view .LVU493
 1277 00d2 A0EB0900 		sub	r0, r0, r9
 671:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       {
 1278              		.loc 1 671 10 view .LVU494
 1279 00d6 4045     		cmp	r0, r8
 1280 00d8 02D8     		bhi	.L73
 671:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       {
 1281              		.loc 1 671 51 discriminator 1 view .LVU495
 1282 00da B8F1000F 		cmp	r8, #0
 1283 00de B5D1     		bne	.L70
 1284              	.L73:
 674:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1285              		.loc 1 674 9 is_stmt 1 view .LVU496
 674:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1286              		.loc 1 674 25 is_stmt 0 view .LVU497
 1287 00e0 2023     		movs	r3, #32
 1288 00e2 E363     		str	r3, [r4, #60]
 677:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1289              		.loc 1 677 9 is_stmt 1 view .LVU498
 677:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1290              		.loc 1 677 21 is_stmt 0 view .LVU499
 1291 00e4 0120     		movs	r0, #1
 680:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1292              		.loc 1 680 9 view .LVU500
 1293 00e6 0023     		movs	r3, #0
 677:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1294              		.loc 1 677 21 view .LVU501
 1295 00e8 84F82500 		strb	r0, [r4, #37]
 680:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1296              		.loc 1 680 9 is_stmt 1 view .LVU502
 680:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1297              		.loc 1 680 9 view .LVU503
 1298 00ec 84F82430 		strb	r3, [r4, #36]
 682:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       }
 1299              		.loc 1 682 9 view .LVU504
 682:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****       }
 1300              		.loc 1 682 16 is_stmt 0 view .LVU505
 1301 00f0 96E7     		b	.L66
 1302              	.LVL69:
 1303              	.L77:
 726:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1304              		.loc 1 726 5 is_stmt 1 view .LVU506
 726:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1305              		.loc 1 726 58 is_stmt 0 view .LVU507
 1306 00f2 0422     		movs	r2, #4
 1307 00f4 02FA03F3 		lsl	r3, r2, r3
 726:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   }
 1308              		.loc 1 726 32 view .LVU508
 1309 00f8 7B60     		str	r3, [r7, #4]
 1310 00fa D2E7     		b	.L78
 1311              		.cfi_endproc
 1312              	.LFE331:
 1314              		.section	.text.HAL_DMA_IRQHandler,"ax",%progbits
 1315              		.align	1
 1316              		.global	HAL_DMA_IRQHandler
 1317              		.syntax unified
 1318              		.thumb
 1319              		.thumb_func
 1320              		.fpu fpv4-sp-d16
 1322              	HAL_DMA_IRQHandler:
 1323              	.LVL70:
 1324              	.LFB332:
 742:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t flag_it = hdma->DmaBaseAddress->ISR;
 1325              		.loc 1 742 1 is_stmt 1 view -0
 1326              		.cfi_startproc
 1327              		@ args = 0, pretend = 0, frame = 0
 1328              		@ frame_needed = 0, uses_anonymous_args = 0
 1329              		@ link register save eliminated.
 743:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t source_it = hdma->Instance->CCR;
 1330              		.loc 1 743 3 view .LVU510
 743:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t source_it = hdma->Instance->CCR;
 1331              		.loc 1 743 26 is_stmt 0 view .LVU511
 1332 0000 016C     		ldr	r1, [r0, #64]
 747:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1333              		.loc 1 747 72 view .LVU512
 1334 0002 426C     		ldr	r2, [r0, #68]
 744:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1335              		.loc 1 744 28 view .LVU513
 1336 0004 0368     		ldr	r3, [r0]
 742:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t flag_it = hdma->DmaBaseAddress->ISR;
 1337              		.loc 1 742 1 view .LVU514
 1338 0006 70B4     		push	{r4, r5, r6}
 1339              		.cfi_def_cfa_offset 12
 1340              		.cfi_offset 4, -12
 1341              		.cfi_offset 5, -8
 1342              		.cfi_offset 6, -4
 747:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1343              		.loc 1 747 72 view .LVU515
 1344 0008 02F01F02 		and	r2, r2, #31
 743:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   uint32_t source_it = hdma->Instance->CCR;
 1345              		.loc 1 743 12 view .LVU516
 1346 000c 0E68     		ldr	r6, [r1]
 1347              	.LVL71:
 744:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1348              		.loc 1 744 3 is_stmt 1 view .LVU517
 744:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1349              		.loc 1 744 12 is_stmt 0 view .LVU518
 1350 000e 1D68     		ldr	r5, [r3]
 1351              	.LVL72:
 747:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1352              		.loc 1 747 3 is_stmt 1 view .LVU519
 747:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1353              		.loc 1 747 49 is_stmt 0 view .LVU520
 1354 0010 0424     		movs	r4, #4
 1355 0012 9440     		lsls	r4, r4, r2
 747:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1356              		.loc 1 747 6 view .LVU521
 1357 0014 3442     		tst	r4, r6
 1358 0016 0ED0     		beq	.L94
 747:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1359              		.loc 1 747 84 discriminator 1 view .LVU522
 1360 0018 15F0040F 		tst	r5, #4
 1361 001c 0BD0     		beq	.L94
 750:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1362              		.loc 1 750 5 is_stmt 1 view .LVU523
 750:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1363              		.loc 1 750 24 is_stmt 0 view .LVU524
 1364 001e 1A68     		ldr	r2, [r3]
 750:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1365              		.loc 1 750 8 view .LVU525
 1366 0020 9206     		lsls	r2, r2, #26
 753:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1367              		.loc 1 753 7 is_stmt 1 view .LVU526
 1368 0022 5EBF     		ittt	pl
 1369 0024 1A68     		ldrpl	r2, [r3]
 1370 0026 22F00402 		bicpl	r2, r2, #4
 1371 002a 1A60     		strpl	r2, [r3]
 756:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1372              		.loc 1 756 5 view .LVU527
 761:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1373              		.loc 1 761 13 is_stmt 0 view .LVU528
 1374 002c 036B     		ldr	r3, [r0, #48]
 756:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1375              		.loc 1 756 32 view .LVU529
 1376 002e 4C60     		str	r4, [r1, #4]
 761:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1377              		.loc 1 761 5 is_stmt 1 view .LVU530
 1378              	.LVL73:
 1379              	.L127:
 812:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1380              		.loc 1 812 8 is_stmt 0 view .LVU531
 1381 0030 73B3     		cbz	r3, .L93
 815:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1382              		.loc 1 815 7 is_stmt 1 view .LVU532
 823:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1383              		.loc 1 823 1 is_stmt 0 view .LVU533
 1384 0032 70BC     		pop	{r4, r5, r6}
 1385              		.cfi_remember_state
 1386              		.cfi_restore 6
 1387              		.cfi_restore 5
 1388              		.cfi_restore 4
 1389              		.cfi_def_cfa_offset 0
 1390              	.LVL74:
 815:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1391              		.loc 1 815 7 view .LVU534
 1392 0034 1847     		bx	r3	@ indirect register sibling call
 1393              	.LVL75:
 1394              	.L94:
 1395              		.cfi_restore_state
 768:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TC)))
 1396              		.loc 1 768 8 is_stmt 1 view .LVU535
 768:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TC)))
 1397              		.loc 1 768 54 is_stmt 0 view .LVU536
 1398 0036 0224     		movs	r4, #2
 1399 0038 9440     		lsls	r4, r4, r2
 768:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TC)))
 1400              		.loc 1 768 11 view .LVU537
 1401 003a 3442     		tst	r4, r6
 1402 003c 12D0     		beq	.L98
 769:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1403              		.loc 1 769 12 view .LVU538
 1404 003e 15F0020F 		tst	r5, #2
 1405 0042 0FD0     		beq	.L98
 771:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1406              		.loc 1 771 5 is_stmt 1 view .LVU539
 771:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1407              		.loc 1 771 24 is_stmt 0 view .LVU540
 1408 0044 1A68     		ldr	r2, [r3]
 771:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1409              		.loc 1 771 8 view .LVU541
 1410 0046 9506     		lsls	r5, r2, #26
 1411              	.LVL76:
 771:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1412              		.loc 1 771 8 view .LVU542
 1413 0048 06D4     		bmi	.L99
 774:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1414              		.loc 1 774 7 is_stmt 1 view .LVU543
 1415 004a 1A68     		ldr	r2, [r3]
 1416 004c 22F00A02 		bic	r2, r2, #10
 1417 0050 1A60     		str	r2, [r3]
 777:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1418              		.loc 1 777 7 view .LVU544
 777:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     }
 1419              		.loc 1 777 19 is_stmt 0 view .LVU545
 1420 0052 0123     		movs	r3, #1
 1421 0054 80F82530 		strb	r3, [r0, #37]
 1422              	.L99:
 780:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1423              		.loc 1 780 5 is_stmt 1 view .LVU546
 783:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1424              		.loc 1 783 5 is_stmt 0 view .LVU547
 1425 0058 0023     		movs	r3, #0
 780:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1426              		.loc 1 780 32 view .LVU548
 1427 005a 4C60     		str	r4, [r1, #4]
 783:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1428              		.loc 1 783 5 is_stmt 1 view .LVU549
 783:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1429              		.loc 1 783 5 view .LVU550
 1430 005c 80F82430 		strb	r3, [r0, #36]
 785:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1431              		.loc 1 785 5 view .LVU551
 785:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1432              		.loc 1 785 13 is_stmt 0 view .LVU552
 1433 0060 C36A     		ldr	r3, [r0, #44]
 1434 0062 E5E7     		b	.L127
 1435              	.LVL77:
 1436              	.L98:
 792:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TE)))
 1437              		.loc 1 792 8 is_stmt 1 view .LVU553
 792:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TE)))
 1438              		.loc 1 792 54 is_stmt 0 view .LVU554
 1439 0064 0824     		movs	r4, #8
 1440 0066 9440     		lsls	r4, r4, r2
 792:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****            && (0U != (source_it & DMA_IT_TE)))
 1441              		.loc 1 792 11 view .LVU555
 1442 0068 3442     		tst	r4, r6
 1443 006a 11D0     		beq	.L93
 793:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1444              		.loc 1 793 12 view .LVU556
 1445 006c 2C07     		lsls	r4, r5, #28
 1446 006e 0FD5     		bpl	.L93
 798:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1447              		.loc 1 798 5 is_stmt 1 view .LVU557
 1448 0070 1C68     		ldr	r4, [r3]
 1449 0072 24F00E04 		bic	r4, r4, #14
 1450 0076 1C60     		str	r4, [r3]
 801:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1451              		.loc 1 801 5 view .LVU558
 801:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1452              		.loc 1 801 58 is_stmt 0 view .LVU559
 1453 0078 0123     		movs	r3, #1
 1454 007a 03FA02F2 		lsl	r2, r3, r2
 801:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1455              		.loc 1 801 32 view .LVU560
 1456 007e 4A60     		str	r2, [r1, #4]
 804:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1457              		.loc 1 804 5 is_stmt 1 view .LVU561
 804:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1458              		.loc 1 804 21 is_stmt 0 view .LVU562
 1459 0080 C363     		str	r3, [r0, #60]
 807:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1460              		.loc 1 807 5 is_stmt 1 view .LVU563
 807:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1461              		.loc 1 807 17 is_stmt 0 view .LVU564
 1462 0082 80F82530 		strb	r3, [r0, #37]
 810:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1463              		.loc 1 810 5 is_stmt 1 view .LVU565
 810:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1464              		.loc 1 810 5 view .LVU566
 1465 0086 0023     		movs	r3, #0
 1466 0088 80F82430 		strb	r3, [r0, #36]
 812:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1467              		.loc 1 812 5 view .LVU567
 812:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1468              		.loc 1 812 13 is_stmt 0 view .LVU568
 1469 008c 436B     		ldr	r3, [r0, #52]
 1470 008e CFE7     		b	.L127
 1471              	.LVL78:
 1472              	.L93:
 823:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1473              		.loc 1 823 1 view .LVU569
 1474 0090 70BC     		pop	{r4, r5, r6}
 1475              		.cfi_restore 6
 1476              		.cfi_restore 5
 1477              		.cfi_restore 4
 1478              		.cfi_def_cfa_offset 0
 1479              	.LVL79:
 823:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1480              		.loc 1 823 1 view .LVU570
 1481 0092 7047     		bx	lr
 1482              		.cfi_endproc
 1483              	.LFE332:
 1485              		.section	.text.HAL_DMA_RegisterCallback,"ax",%progbits
 1486              		.align	1
 1487              		.global	HAL_DMA_RegisterCallback
 1488              		.syntax unified
 1489              		.thumb
 1490              		.thumb_func
 1491              		.fpu fpv4-sp-d16
 1493              	HAL_DMA_RegisterCallback:
 1494              	.LVL80:
 1495              	.LFB333:
 836:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1496              		.loc 1 836 1 is_stmt 1 view -0
 1497              		.cfi_startproc
 1498              		@ args = 0, pretend = 0, frame = 0
 1499              		@ frame_needed = 0, uses_anonymous_args = 0
 837:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1500              		.loc 1 837 3 view .LVU572
 840:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1501              		.loc 1 840 3 view .LVU573
 840:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1502              		.loc 1 840 3 view .LVU574
 1503 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 1504 0004 012B     		cmp	r3, #1
 836:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1505              		.loc 1 836 1 is_stmt 0 view .LVU575
 1506 0006 10B5     		push	{r4, lr}
 1507              		.cfi_def_cfa_offset 8
 1508              		.cfi_offset 4, -8
 1509              		.cfi_offset 14, -4
 836:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1510              		.loc 1 836 1 view .LVU576
 1511 0008 0446     		mov	r4, r0
 840:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1512              		.loc 1 840 3 view .LVU577
 1513 000a 1AD0     		beq	.L137
 840:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1514              		.loc 1 840 3 is_stmt 1 discriminator 2 view .LVU578
 1515 000c 0123     		movs	r3, #1
 1516 000e 80F82430 		strb	r3, [r0, #36]
 842:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1517              		.loc 1 842 3 discriminator 2 view .LVU579
 842:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1518              		.loc 1 842 34 is_stmt 0 discriminator 2 view .LVU580
 1519 0012 90F82500 		ldrb	r0, [r0, #37]	@ zero_extendqisi2
 1520              	.LVL81:
 842:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1521              		.loc 1 842 6 discriminator 2 view .LVU581
 1522 0016 9842     		cmp	r0, r3
 1523 0018 11D1     		bne	.L139
 844:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1524              		.loc 1 844 5 is_stmt 1 view .LVU582
 1525 001a 0329     		cmp	r1, #3
 1526 001c 0FD8     		bhi	.L139
 1527 001e DFE801F0 		tbb	[pc, r1]
 1528              	.L133:
 1529 0022 02       		.byte	(.L136-.L133)/2
 1530 0023 08       		.byte	(.L135-.L133)/2
 1531 0024 0A       		.byte	(.L134-.L133)/2
 1532 0025 0C       		.byte	(.L132-.L133)/2
 1533              		.p2align 1
 1534              	.L136:
 847:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1535              		.loc 1 847 9 view .LVU583
 847:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1536              		.loc 1 847 32 is_stmt 0 view .LVU584
 1537 0026 E262     		str	r2, [r4, #44]
 848:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1538              		.loc 1 848 9 is_stmt 1 view .LVU585
 1539              	.L140:
 852:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1540              		.loc 1 852 9 view .LVU586
 837:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1541              		.loc 1 837 21 is_stmt 0 view .LVU587
 1542 0028 0020     		movs	r0, #0
 1543              	.L131:
 1544              	.LVL82:
 873:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1545              		.loc 1 873 3 is_stmt 1 view .LVU588
 873:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1546              		.loc 1 873 3 view .LVU589
 1547 002a 0023     		movs	r3, #0
 1548 002c 84F82430 		strb	r3, [r4, #36]
 875:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1549              		.loc 1 875 3 view .LVU590
 1550              	.LVL83:
 1551              	.L130:
 876:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1552              		.loc 1 876 1 is_stmt 0 view .LVU591
 1553 0030 10BD     		pop	{r4, pc}
 1554              	.LVL84:
 1555              	.L135:
 851:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1556              		.loc 1 851 9 is_stmt 1 view .LVU592
 851:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1557              		.loc 1 851 36 is_stmt 0 view .LVU593
 1558 0032 2263     		str	r2, [r4, #48]
 1559 0034 F8E7     		b	.L140
 1560              	.L134:
 855:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1561              		.loc 1 855 9 is_stmt 1 view .LVU594
 855:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1562              		.loc 1 855 33 is_stmt 0 view .LVU595
 1563 0036 6263     		str	r2, [r4, #52]
 856:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1564              		.loc 1 856 9 is_stmt 1 view .LVU596
 1565 0038 F6E7     		b	.L140
 1566              	.L132:
 859:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1567              		.loc 1 859 9 view .LVU597
 859:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1568              		.loc 1 859 33 is_stmt 0 view .LVU598
 1569 003a A263     		str	r2, [r4, #56]
 860:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1570              		.loc 1 860 9 is_stmt 1 view .LVU599
 1571 003c F4E7     		b	.L140
 1572              	.L139:
 863:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1573              		.loc 1 863 16 is_stmt 0 view .LVU600
 1574 003e 0120     		movs	r0, #1
 1575 0040 F3E7     		b	.L131
 1576              	.LVL85:
 1577              	.L137:
 840:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1578              		.loc 1 840 3 view .LVU601
 1579 0042 0220     		movs	r0, #2
 1580              	.LVL86:
 840:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1581              		.loc 1 840 3 view .LVU602
 1582 0044 F4E7     		b	.L130
 1583              		.cfi_endproc
 1584              	.LFE333:
 1586              		.section	.text.HAL_DMA_UnRegisterCallback,"ax",%progbits
 1587              		.align	1
 1588              		.global	HAL_DMA_UnRegisterCallback
 1589              		.syntax unified
 1590              		.thumb
 1591              		.thumb_func
 1592              		.fpu fpv4-sp-d16
 1594              	HAL_DMA_UnRegisterCallback:
 1595              	.LVL87:
 1596              	.LFB334:
 887:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1597              		.loc 1 887 1 is_stmt 1 view -0
 1598              		.cfi_startproc
 1599              		@ args = 0, pretend = 0, frame = 0
 1600              		@ frame_needed = 0, uses_anonymous_args = 0
 1601              		@ link register save eliminated.
 888:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1602              		.loc 1 888 3 view .LVU604
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1603              		.loc 1 891 3 view .LVU605
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1604              		.loc 1 891 3 view .LVU606
 1605 0000 90F82420 		ldrb	r2, [r0, #36]	@ zero_extendqisi2
 1606 0004 012A     		cmp	r2, #1
 887:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1607              		.loc 1 887 1 is_stmt 0 view .LVU607
 1608 0006 0346     		mov	r3, r0
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1609              		.loc 1 891 3 view .LVU608
 1610 0008 1FD0     		beq	.L150
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1611              		.loc 1 891 3 is_stmt 1 discriminator 2 view .LVU609
 893:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1612              		.loc 1 893 34 is_stmt 0 discriminator 2 view .LVU610
 1613 000a 93F82520 		ldrb	r2, [r3, #37]	@ zero_extendqisi2
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1614              		.loc 1 891 3 discriminator 2 view .LVU611
 1615 000e 0120     		movs	r0, #1
 1616              	.LVL88:
 893:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1617              		.loc 1 893 6 discriminator 2 view .LVU612
 1618 0010 8242     		cmp	r2, r0
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1619              		.loc 1 891 3 discriminator 2 view .LVU613
 1620 0012 83F82400 		strb	r0, [r3, #36]
 893:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1621              		.loc 1 893 3 is_stmt 1 discriminator 2 view .LVU614
 893:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   {
 1622              		.loc 1 893 6 is_stmt 0 discriminator 2 view .LVU615
 1623 0016 09D1     		bne	.L143
 895:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****     {
 1624              		.loc 1 895 5 is_stmt 1 view .LVU616
 1625 0018 0022     		movs	r2, #0
 1626 001a 0429     		cmp	r1, #4
 1627 001c 13D8     		bhi	.L152
 1628 001e DFE801F0 		tbb	[pc, r1]
 1629              	.L145:
 1630 0022 03       		.byte	(.L149-.L145)/2
 1631 0023 09       		.byte	(.L148-.L145)/2
 1632 0024 0B       		.byte	(.L147-.L145)/2
 1633 0025 10       		.byte	(.L154-.L145)/2
 1634 0026 0D       		.byte	(.L144-.L145)/2
 1635 0027 00       		.p2align 1
 1636              	.L149:
 898:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1637              		.loc 1 898 9 view .LVU617
 898:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1638              		.loc 1 898 32 is_stmt 0 view .LVU618
 1639 0028 DA62     		str	r2, [r3, #44]
 899:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1640              		.loc 1 899 9 is_stmt 1 view .LVU619
 1641              	.L153:
 903:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1642              		.loc 1 903 9 view .LVU620
 888:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1643              		.loc 1 888 21 is_stmt 0 view .LVU621
 1644 002a 0020     		movs	r0, #0
 1645              	.L143:
 1646              	.LVL89:
 931:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1647              		.loc 1 931 3 is_stmt 1 view .LVU622
 931:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1648              		.loc 1 931 3 view .LVU623
 1649 002c 0022     		movs	r2, #0
 1650 002e 83F82420 		strb	r2, [r3, #36]
 933:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1651              		.loc 1 933 3 view .LVU624
 933:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1652              		.loc 1 933 10 is_stmt 0 view .LVU625
 1653 0032 7047     		bx	lr
 1654              	.LVL90:
 1655              	.L148:
 902:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1656              		.loc 1 902 9 is_stmt 1 view .LVU626
 902:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1657              		.loc 1 902 36 is_stmt 0 view .LVU627
 1658 0034 1A63     		str	r2, [r3, #48]
 1659 0036 F8E7     		b	.L153
 1660              	.L147:
 906:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1661              		.loc 1 906 9 is_stmt 1 view .LVU628
 906:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1662              		.loc 1 906 33 is_stmt 0 view .LVU629
 1663 0038 5A63     		str	r2, [r3, #52]
 907:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1664              		.loc 1 907 9 is_stmt 1 view .LVU630
 1665 003a F6E7     		b	.L153
 1666              	.L144:
 914:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferHalfCpltCallback = NULL;
 1667              		.loc 1 914 9 view .LVU631
 915:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferErrorCallback = NULL;
 1668              		.loc 1 915 36 is_stmt 0 view .LVU632
 1669 003c C3E90B22 		strd	r2, r2, [r3, #44]
 916:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferAbortCallback = NULL;
 1670              		.loc 1 916 9 is_stmt 1 view .LVU633
 916:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         hdma->XferAbortCallback = NULL;
 1671              		.loc 1 916 33 is_stmt 0 view .LVU634
 1672 0040 5A63     		str	r2, [r3, #52]
 1673              	.L154:
 917:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1674              		.loc 1 917 9 is_stmt 1 view .LVU635
 917:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1675              		.loc 1 917 33 is_stmt 0 view .LVU636
 1676 0042 9A63     		str	r2, [r3, #56]
 918:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1677              		.loc 1 918 9 is_stmt 1 view .LVU637
 1678 0044 F1E7     		b	.L153
 1679              	.L152:
 921:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****         break;
 1680              		.loc 1 921 16 is_stmt 0 view .LVU638
 1681 0046 0120     		movs	r0, #1
 1682 0048 F0E7     		b	.L143
 1683              	.LVL91:
 1684              	.L150:
 891:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1685              		.loc 1 891 3 view .LVU639
 1686 004a 0220     		movs	r0, #2
 1687              	.LVL92:
 934:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1688              		.loc 1 934 1 view .LVU640
 1689 004c 7047     		bx	lr
 1690              		.cfi_endproc
 1691              	.LFE334:
 1693              		.section	.text.HAL_DMA_GetState,"ax",%progbits
 1694              		.align	1
 1695              		.global	HAL_DMA_GetState
 1696              		.syntax unified
 1697              		.thumb
 1698              		.thumb_func
 1699              		.fpu fpv4-sp-d16
 1701              	HAL_DMA_GetState:
 1702              	.LVL93:
 1703              	.LFB335:
 965:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   /* Return DMA handle state */
 1704              		.loc 1 965 1 is_stmt 1 view -0
 1705              		.cfi_startproc
 1706              		@ args = 0, pretend = 0, frame = 0
 1707              		@ frame_needed = 0, uses_anonymous_args = 0
 1708              		@ link register save eliminated.
 967:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1709              		.loc 1 967 3 view .LVU642
 967:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1710              		.loc 1 967 14 is_stmt 0 view .LVU643
 1711 0000 90F82500 		ldrb	r0, [r0, #37]	@ zero_extendqisi2
 1712              	.LVL94:
 968:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1713              		.loc 1 968 1 view .LVU644
 1714 0004 7047     		bx	lr
 1715              		.cfi_endproc
 1716              	.LFE335:
 1718              		.section	.text.HAL_DMA_GetError,"ax",%progbits
 1719              		.align	1
 1720              		.global	HAL_DMA_GetError
 1721              		.syntax unified
 1722              		.thumb
 1723              		.thumb_func
 1724              		.fpu fpv4-sp-d16
 1726              	HAL_DMA_GetError:
 1727              	.LVL95:
 1728              	.LFB336:
 977:../../..\CubeG4\src/stm32g4xx_hal_dma.c ****   return hdma->ErrorCode;
 1729              		.loc 1 977 1 is_stmt 1 view -0
 1730              		.cfi_startproc
 1731              		@ args = 0, pretend = 0, frame = 0
 1732              		@ frame_needed = 0, uses_anonymous_args = 0
 1733              		@ link register save eliminated.
 978:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1734              		.loc 1 978 3 view .LVU646
 978:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** }
 1735              		.loc 1 978 14 is_stmt 0 view .LVU647
 1736 0000 C06B     		ldr	r0, [r0, #60]
 1737              	.LVL96:
 979:../../..\CubeG4\src/stm32g4xx_hal_dma.c **** 
 1738              		.loc 1 979 1 view .LVU648
 1739 0002 7047     		bx	lr
 1740              		.cfi_endproc
 1741              	.LFE336:
 1743              		.text
 1744              	.Letext0:
 1745              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1746              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1747              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 1748              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 1749              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 1750              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 1751              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_dma.h"
 1752              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 1753              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
