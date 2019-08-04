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
  13              		.file	"stm32g4xx_ll_dma.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_DMA_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_DMA_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_DMA_DeInit:
  27              	.LVL0:
  28              	.LFB321:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_dma.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @file    stm32g4xx_ll_dma.c
   4:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @brief   DMA LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  20:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #if defined(USE_FULL_LL_DRIVER)
  21:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  22:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /* Includes ------------------------------------------------------------------*/
  23:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #include "stm32g4xx_ll_dma.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #include "stm32g4xx_ll_bus.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #ifdef  USE_FULL_ASSERT
  26:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #include "stm32_assert.h"
  27:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #else
  28:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define assert_param(expr) ((void)0U)
  29:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #endif /* USE_FULL_ASSERT */
  30:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  31:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @{
  33:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
  34:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #if defined (DMA1) || defined (DMA2)
  36:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  37:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /** @defgroup DMA_LL DMA
  38:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @{
  39:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
  40:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  41:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /* Private macros ------------------------------------------------------------*/
  45:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /** @addtogroup DMA_LL_Private_Macros
  46:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @{
  47:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
  48:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_DIRECTION(__VALUE__)          (((__VALUE__) == LL_DMA_DIRECTION_PERIPH_TO_MEMORY)
  49:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_DIRECTION_MEMORY_TO_PERIPH)
  50:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_DIRECTION_MEMORY_TO_MEMORY)
  51:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  52:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_MODE(__VALUE__)               (((__VALUE__) == LL_DMA_MODE_NORMAL) || \
  53:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_MODE_CIRCULAR))
  54:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  55:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_PERIPHINCMODE(__VALUE__)      (((__VALUE__) == LL_DMA_PERIPH_INCREMENT) || \
  56:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_PERIPH_NOINCREMENT))
  57:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  58:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_MEMORYINCMODE(__VALUE__)      (((__VALUE__) == LL_DMA_MEMORY_INCREMENT) || \
  59:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_MEMORY_NOINCREMENT))
  60:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  61:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_PERIPHDATASIZE(__VALUE__)     (((__VALUE__) == LL_DMA_PDATAALIGN_BYTE)      || \
  62:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_PDATAALIGN_HALFWORD)  || \
  63:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_PDATAALIGN_WORD))
  64:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  65:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_MEMORYDATASIZE(__VALUE__)     (((__VALUE__) == LL_DMA_MDATAALIGN_BYTE)      || \
  66:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_MDATAALIGN_HALFWORD)  || \
  67:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_MDATAALIGN_WORD))
  68:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  69:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_NBDATA(__VALUE__)             ((__VALUE__)  <= (uint32_t)0x0000FFFFU)
  70:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  71:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_PERIPHREQUEST(__VALUE__)      ((__VALUE__) <= 115U)
  72:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  73:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_PRIORITY(__VALUE__)           (((__VALUE__) == LL_DMA_PRIORITY_LOW)    || \
  74:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_PRIORITY_MEDIUM) || \
  75:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_PRIORITY_HIGH)   || \
  76:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                  ((__VALUE__) == LL_DMA_PRIORITY_VERYHIGH))
  77:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  78:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #if defined (DMA1_Channel8)
  79:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_ALL_CHANNEL_INSTANCE(INSTANCE, CHANNEL)  ((((INSTANCE) == DMA1) && \
  80:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                              (((CHANNEL) == LL_DMA_CHANNEL_1) || \
  81:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_2) || \
  82:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_3) || \
  83:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_4) || \
  84:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_5) || \
  85:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_6) || \
  86:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_7) || \
  87:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_8))) || 
  88:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                             (((INSTANCE) == DMA2) && \
  89:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                              (((CHANNEL) == LL_DMA_CHANNEL_1) || \
  90:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_2) || \
  91:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_3) || \
  92:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_4) || \
  93:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_5) || \
  94:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_6) || \
  95:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_7) || \
  96:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_8))))
  97:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #elif defined (DMA1_Channel6)
  98:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #define IS_LL_DMA_ALL_CHANNEL_INSTANCE(INSTANCE, CHANNEL)  ((((INSTANCE) == DMA1) && \
  99:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                              (((CHANNEL) == LL_DMA_CHANNEL_1) || \
 100:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_2) || \
 101:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_3) || \
 102:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_4) || \
 103:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_5) || \
 104:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_6))) || 
 105:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                             (((INSTANCE) == DMA2) && \
 106:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                              (((CHANNEL) == LL_DMA_CHANNEL_1) || \
 107:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_2) || \
 108:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_3) || \
 109:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_4) || \
 110:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_5) || \
 111:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                                                               ((CHANNEL) == LL_DMA_CHANNEL_6))))
 112:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #endif /* DMA1_Channel8 */
 113:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /**
 114:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @}
 115:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
 116:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 117:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /* Private function prototypes -----------------------------------------------*/
 118:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 119:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /* Exported functions --------------------------------------------------------*/
 120:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /** @addtogroup DMA_LL_Exported_Functions
 121:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @{
 122:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
 123:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 124:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /** @addtogroup DMA_LL_EF_Init
 125:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @{
 126:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
 127:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 128:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /**
 129:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @brief  De-initialize the DMA registers to their default reset values.
 130:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @param  DMAx DMAx Instance
 131:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @param  Channel This parameter can be one of the following values:
 132:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_1
 133:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_2
 134:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_3
 135:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_4
 136:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_5
 137:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_6
 138:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 139:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 140:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_ALL
 141:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         (*) Not on all G4 devices
 142:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @retval An ErrorStatus enumeration value:
 143:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *          - SUCCESS: DMA registers are de-initialized
 144:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *          - ERROR: DMA registers are not de-initialized
 145:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
 146:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** uint32_t LL_DMA_DeInit(DMA_TypeDef *DMAx, uint32_t Channel)
 147:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** {
  30              		.loc 1 147 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
 148:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_Channel_TypeDef *tmp;
  34              		.loc 1 148 3 view .LVU1
 149:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   ErrorStatus status = SUCCESS;
  35              		.loc 1 149 3 view .LVU2
 150:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 151:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /* Check the DMA Instance DMAx and Channel parameters*/
 152:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_ALL_CHANNEL_INSTANCE(DMAx, Channel) || (Channel == LL_DMA_CHANNEL_ALL));
  36              		.loc 1 152 3 view .LVU3
 153:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 154:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   if (Channel == LL_DMA_CHANNEL_ALL)
  37              		.loc 1 154 3 view .LVU4
  38              		.loc 1 154 6 is_stmt 0 view .LVU5
  39 0000 11F5803F 		cmn	r1, #65536
 147:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_Channel_TypeDef *tmp;
  40              		.loc 1 147 1 view .LVU6
  41 0004 10B5     		push	{r4, lr}
  42              		.cfi_def_cfa_offset 8
  43              		.cfi_offset 4, -8
  44              		.cfi_offset 14, -4
  45 0006 444B     		ldr	r3, .L29
  46              		.loc 1 154 6 view .LVU7
  47 0008 1CD1     		bne	.L2
 155:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   {
 156:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     if (DMAx == DMA1)
  48              		.loc 1 156 5 is_stmt 1 view .LVU8
  49              		.loc 1 156 8 is_stmt 0 view .LVU9
  50 000a 9842     		cmp	r0, r3
  51 000c 0BD1     		bne	.L3
 157:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 158:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Force reset of DMA clock */
 159:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_DMA1);
  52              		.loc 1 159 7 is_stmt 1 view .LVU10
  53              	.LVL1:
  54              	.LBB40:
  55              	.LBI40:
  56              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @file    stm32g4xx_ll_bus.h
   4:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief   Header file of BUS LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
   7:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   @verbatim
   8:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****                       ##### RCC Limitations #####
   9:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ==============================================================================
  10:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****     [..]
  11:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       A delay between an RCC peripheral clock enable and the effective peripheral
  12:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       enabling should be taken into account in order to manage the peripheral read/write
  13:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       from/to registers.
  14:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       (+) This delay depends on the peripheral mapping.
  15:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****         (++) AHB & APB peripherals, 1 dummy read is necessary
  16:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  17:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****     [..]
  18:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       Workarounds:
  19:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****       (#) For AHB & APB peripherals, a dummy read to the peripheral register has been
  20:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****           inserted in each LL_{BUS}_GRP{x}_EnableClock() function.
  21:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  22:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   @endverbatim
  23:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ******************************************************************************
  24:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @attention
  25:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
  26:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  27:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * All rights reserved.</center></h2>
  28:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
  29:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  30:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * the "License"; You may not use this file except in compliance with the
  31:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * License. You may obtain a copy of the License at:
  32:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *                        opensource.org/licenses/BSD-3-Clause
  33:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
  34:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   ******************************************************************************
  35:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  36:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  38:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #ifndef STM32G4xx_LL_BUS_H
  39:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define STM32G4xx_LL_BUS_H
  40:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #ifdef __cplusplus
  42:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** extern "C" {
  43:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif
  44:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Includes ------------------------------------------------------------------*/
  46:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #include "stm32g4xx.h"
  47:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  48:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @addtogroup STM32G4xx_LL_Driver
  49:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  50:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  51:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  52:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(RCC)
  53:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  54:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL BUS
  55:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  56:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  57:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  58:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private types -------------------------------------------------------------*/
  59:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private variables ---------------------------------------------------------*/
  60:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  61:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private constants ---------------------------------------------------------*/
  62:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  63:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Private macros ------------------------------------------------------------*/
  64:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  65:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported types ------------------------------------------------------------*/
  66:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported constants --------------------------------------------------------*/
  67:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_Exported_Constants BUS Exported Constants
  68:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  69:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  70:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  71:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_AHB1_GRP1_PERIPH  AHB1 GRP1 PERIPH
  72:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  73:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  74:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_ALL            0xFFFFFFFFU
  75:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_DMA1           RCC_AHB1ENR_DMA1EN
  76:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_DMA2           RCC_AHB1ENR_DMA2EN
  77:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_DMAMUX1        RCC_AHB1ENR_DMAMUX1EN
  78:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_CORDIC         RCC_AHB1ENR_CORDICEN
  79:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_FMAC           RCC_AHB1ENR_FMACEN
  80:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_FLASH          RCC_AHB1ENR_FLASHEN
  81:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_SRAM1          RCC_AHB1SMENR_SRAM1SMEN
  82:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB1_GRP1_PERIPH_CRC            RCC_AHB1ENR_CRCEN
  83:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
  84:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
  85:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  86:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
  87:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_AHB2_GRP1_PERIPH  AHB2 GRP1 PERIPH
  88:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
  89:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
  90:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_ALL            0xFFFFFFFFU
  91:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOA          RCC_AHB2ENR_GPIOAEN
  92:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOB          RCC_AHB2ENR_GPIOBEN
  93:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOC          RCC_AHB2ENR_GPIOCEN
  94:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOD          RCC_AHB2ENR_GPIODEN
  95:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOE          RCC_AHB2ENR_GPIOEEN
  96:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOF          RCC_AHB2ENR_GPIOFEN
  97:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_GPIOG          RCC_AHB2ENR_GPIOGEN
  98:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_CCM            RCC_AHB2SMENR_CCMSMEN
  99:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_SRAM2          RCC_AHB2SMENR_SRAM2SMEN
 100:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_ADC12          RCC_AHB2ENR_ADC12EN
 101:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(ADC345_COMMON)
 102:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_ADC345         RCC_AHB2ENR_ADC345EN
 103:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* ADC345_COMMON */
 104:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC1           RCC_AHB2ENR_DAC1EN
 105:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(DAC2)
 106:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC2           RCC_AHB2ENR_DAC2EN
 107:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* DAC2 */
 108:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC3           RCC_AHB2ENR_DAC3EN
 109:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(DAC4)
 110:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_DAC4           RCC_AHB2ENR_DAC4EN
 111:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* DAC4 */
 112:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(AES)
 113:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_AES            RCC_AHB2ENR_AESEN
 114:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* AES */
 115:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB2_GRP1_PERIPH_RNG            RCC_AHB2ENR_RNGEN
 116:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 117:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 118:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 119:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_AHB3_GRP1_PERIPH  AHB3 GRP1 PERIPH
 121:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 122:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 123:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB3_GRP1_PERIPH_ALL            0xFFFFFFFFU
 124:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(FMC_Bank1_R)
 125:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB3_GRP1_PERIPH_FMC            RCC_AHB3ENR_FMCEN
 126:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* FMC_Bank1_R */
 127:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(QUADSPI)
 128:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_AHB3_GRP1_PERIPH_QSPI           RCC_AHB3ENR_QSPIEN
 129:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* QUADSPI */
 130:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 131:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 132:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 133:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_APB1_GRP1_PERIPH  APB1 GRP1 PERIPH
 135:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 136:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 137:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_ALL            0xFFFFFFFFU
 138:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM2           RCC_APB1ENR1_TIM2EN
 139:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM3           RCC_APB1ENR1_TIM3EN
 140:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM4           RCC_APB1ENR1_TIM4EN
 141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(TIM5)
 142:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM5           RCC_APB1ENR1_TIM5EN
 143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* TIM5 */
 144:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM6           RCC_APB1ENR1_TIM6EN
 145:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_TIM7           RCC_APB1ENR1_TIM7EN
 146:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_CRS            RCC_APB1ENR1_CRSEN
 147:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_RTCAPB         RCC_APB1ENR1_RTCAPBEN
 148:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_WWDG           RCC_APB1ENR1_WWDGEN
 149:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_SPI2           RCC_APB1ENR1_SPI2EN
 150:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_SPI3           RCC_APB1ENR1_SPI3EN
 151:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_USART2         RCC_APB1ENR1_USART2EN
 152:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_USART3         RCC_APB1ENR1_USART3EN
 153:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(UART4)
 154:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_UART4          RCC_APB1ENR1_UART4EN
 155:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* UART4 */
 156:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(UART5)
 157:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_UART5          RCC_APB1ENR1_UART5EN
 158:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* UART5 */
 159:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_I2C1           RCC_APB1ENR1_I2C1EN
 160:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_I2C2           RCC_APB1ENR1_I2C2EN
 161:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_USB            RCC_APB1ENR1_USBEN
 162:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(FDCAN1)
 163:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_FDCAN          RCC_APB1ENR1_FDCANEN
 164:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* FDCAN1 */
 165:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_PWR            RCC_APB1ENR1_PWREN
 166:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_I2C3           RCC_APB1ENR1_I2C3EN
 167:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP1_PERIPH_LPTIM1         RCC_APB1ENR1_LPTIM1EN
 168:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 169:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 170:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 171:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 172:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 173:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_APB1_GRP2_PERIPH  APB1 GRP2 PERIPH
 174:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 175:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 176:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_ALL            0xFFFFFFFFU
 177:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_LPUART1        RCC_APB1ENR2_LPUART1EN
 178:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(I2C4)
 179:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_I2C4           RCC_APB1ENR2_I2C4EN
 180:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* I2C4 */
 181:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB1_GRP2_PERIPH_UCPD1         RCC_APB1ENR2_UCPD1EN
 182:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 183:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 184:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 185:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 186:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EC_APB2_GRP1_PERIPH  APB2 GRP1 PERIPH
 187:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 188:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 189:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_ALL            0xFFFFFFFFU
 190:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SYSCFG         RCC_APB2ENR_SYSCFGEN
 191:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM1           RCC_APB2ENR_TIM1EN
 192:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SPI1           RCC_APB2ENR_SPI1EN
 193:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM8           RCC_APB2ENR_TIM8EN
 194:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_USART1         RCC_APB2ENR_USART1EN
 195:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(SPI4)
 196:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SPI4           RCC_APB2ENR_SPI4EN
 197:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* SPI4 */
 198:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM15          RCC_APB2ENR_TIM15EN
 199:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM16          RCC_APB2ENR_TIM16EN
 200:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM17          RCC_APB2ENR_TIM17EN
 201:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(TIM20)
 202:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_TIM20          RCC_APB2ENR_TIM20EN
 203:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* TIM20 */
 204:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_SAI1           RCC_APB2ENR_SAI1EN
 205:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #if defined(HRTIM1)
 206:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #define LL_APB2_GRP1_PERIPH_HRTIM1         RCC_APB2ENR_HRTIM1EN
 207:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** #endif /* HRTIM1 */
 208:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 209:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 210:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 212:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 213:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 214:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 215:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 216:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported macro ------------------------------------------------------------*/
 217:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /* Exported functions --------------------------------------------------------*/
 218:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_Exported_Functions BUS Exported Functions
 219:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 220:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 221:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 222:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EF_AHB1 AHB1
 223:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 224:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 225:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 226:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 227:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB1 peripherals clock.
 228:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1ENR      DMA1EN        LL_AHB1_GRP1_EnableClock\n
 229:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMA2EN        LL_AHB1_GRP1_EnableClock\n
 230:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMAMMUXEN     LL_AHB1_GRP1_EnableClock\n
 231:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CORDICEN      LL_AHB1_GRP1_EnableClock\n
 232:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FMACEN        LL_AHB1_GRP1_EnableClock\n
 233:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FLASHEN       LL_AHB1_GRP1_EnableClock\n
 234:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CRCEN         LL_AHB1_GRP1_EnableClock
 235:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 236:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 237:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 238:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 239:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 240:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 241:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 242:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 243:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 244:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 245:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_EnableClock(uint32_t Periphs)
 246:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 247:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 248:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1ENR, Periphs);
 249:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 250:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB1ENR, Periphs);
 251:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 252:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 253:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 254:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 255:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if AHB1 peripheral clock is enabled or not
 256:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1ENR      DMA1EN        LL_AHB1_GRP1_IsEnabledClock\n
 257:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMA2EN        LL_AHB1_GRP1_IsEnabledClock\n
 258:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMAMUXEN      LL_AHB1_GRP1_IsEnabledClock\n
 259:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CORDICEN      LL_AHB1_GRP1_IsEnabledClock\n
 260:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FMACEN        LL_AHB1_GRP1_IsEnabledClock\n
 261:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FLASHEN       LL_AHB1_GRP1_IsEnabledClock\n
 262:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CRCEN         LL_AHB1_GRP1_IsEnabledClock
 263:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 264:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 265:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 266:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 267:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 268:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 269:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 270:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 271:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
 272:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 273:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_AHB1_GRP1_IsEnabledClock(uint32_t Periphs)
 274:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 275:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->AHB1ENR, Periphs) == Periphs) ? 1UL : 0UL);
 276:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 277:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 278:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 279:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB1 peripherals clock.
 280:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1ENR      DMA1EN        LL_AHB1_GRP1_DisableClock\n
 281:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMA2EN        LL_AHB1_GRP1_DisableClock\n
 282:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      DMAMUXEN      LL_AHB1_GRP1_DisableClock\n
 283:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CORDICEN      LL_AHB1_GRP1_DisableClock\n
 284:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FMACEN        LL_AHB1_GRP1_DisableClock\n
 285:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      FLASHEN       LL_AHB1_GRP1_DisableClock\n
 286:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1ENR      CRCEN         LL_AHB1_GRP1_DisableClock
 287:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 288:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 289:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 290:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 291:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 292:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 293:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 294:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 295:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 296:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 297:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_DisableClock(uint32_t Periphs)
 298:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 299:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1ENR, Periphs);
 300:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 301:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 302:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 303:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force AHB1 peripherals reset.
 304:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1RSTR     DMA1RST       LL_AHB1_GRP1_ForceReset\n
 305:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMA2RST       LL_AHB1_GRP1_ForceReset\n
 306:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMAMUXRST     LL_AHB1_GRP1_ForceReset\n
 307:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CORDICRST     LL_AHB1_GRP1_ForceReset\n
 308:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FMACRST       LL_AHB1_GRP1_ForceReset\n
 309:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FLASHRST      LL_AHB1_GRP1_ForceReset\n
 310:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CRCRST        LL_AHB1_GRP1_ForceReset
 311:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 312:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_ALL
 313:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 314:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 315:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 316:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 317:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 318:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 319:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 320:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 321:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 322:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_ForceReset(uint32_t Periphs)
  57              		.loc 2 322 22 view .LVU11
  58              	.LBB41:
 323:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 324:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1RSTR, Periphs);
  59              		.loc 2 324 3 view .LVU12
  60 000e 03F58053 		add	r3, r3, #4096
  61 0012 9A6A     		ldr	r2, [r3, #40]
  62 0014 42F00102 		orr	r2, r2, #1
  63 0018 9A62     		str	r2, [r3, #40]
  64              	.LVL2:
  65              		.loc 2 324 3 is_stmt 0 view .LVU13
  66              	.LBE41:
  67              	.LBE40:
 160:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 161:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Release reset of DMA clock */
 162:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_DMA1);
  68              		.loc 1 162 7 is_stmt 1 view .LVU14
  69              	.LBB42:
  70              	.LBI42:
 325:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 326:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 327:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 328:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release AHB1 peripherals reset.
 329:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1RSTR     DMA1RST       LL_AHB1_GRP1_ReleaseReset\n
 330:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMA2RST       LL_AHB1_GRP1_ReleaseReset\n
 331:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     DMAMUXRST     LL_AHB1_GRP1_ReleaseReset\n
 332:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CORDICRST     LL_AHB1_GRP1_ReleaseReset\n
 333:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FMACRST       LL_AHB1_GRP1_ReleaseReset\n
 334:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     FLASHRST      LL_AHB1_GRP1_ReleaseReset\n
 335:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1RSTR     CRCRST        LL_AHB1_GRP1_ReleaseReset
 336:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 337:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_ALL
 338:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 339:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 340:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 341:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 342:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 343:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 344:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 345:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 346:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 347:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_ReleaseReset(uint32_t Periphs)
  71              		.loc 2 347 22 view .LVU15
  72              	.LBB43:
 348:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 349:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1RSTR, Periphs);
  73              		.loc 2 349 3 view .LVU16
  74 001a 9A6A     		ldr	r2, [r3, #40]
  75 001c 22F00102 		bic	r2, r2, #1
  76              	.LVL3:
  77              	.L28:
  78              		.loc 2 349 3 is_stmt 0 view .LVU17
  79              	.LBE43:
  80              	.LBE42:
  81              	.LBB44:
  82              	.LBB45:
  83 0020 9A62     		str	r2, [r3, #40]
  84              	.L26:
  85              	.LBE45:
  86              	.LBE44:
 149:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
  87              		.loc 1 149 15 view .LVU18
  88 0022 0022     		movs	r2, #0
  89 0024 03E0     		b	.L4
  90              	.L3:
 163:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 164:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (DMAx == DMA2)
  91              		.loc 1 164 10 is_stmt 1 view .LVU19
  92              		.loc 1 164 13 is_stmt 0 view .LVU20
  93 0026 3D4B     		ldr	r3, .L29+4
  94 0028 9842     		cmp	r0, r3
  95 002a 02D0     		beq	.L5
  96              	.L22:
 165:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 166:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Force reset of DMA clock */
 167:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_DMA2);
 168:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 169:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Release reset of DMA clock */
 170:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_DMA2);
 171:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 172:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else
 173:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 174:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       status = ERROR;
  97              		.loc 1 174 14 view .LVU21
  98 002c 0122     		movs	r2, #1
  99              	.L4:
 100              	.LVL4:
 175:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 176:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   }
 177:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   else
 178:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   {
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     tmp = (DMA_Channel_TypeDef *)(__LL_DMA_GET_CHANNEL_INSTANCE(DMAx, Channel));
 180:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 181:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     /* Disable the selected DMAx_Channely */
 182:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     CLEAR_BIT(tmp->CCR, DMA_CCR_EN);
 183:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 184:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     /* Reset DMAx_Channely control register */
 185:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     WRITE_REG(tmp->CCR, 0U);
 186:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 187:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     /* Reset DMAx_Channely remaining bytes register */
 188:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     WRITE_REG(tmp->CNDTR, 0U);
 189:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 190:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     /* Reset DMAx_Channely peripheral address register */
 191:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     WRITE_REG(tmp->CPAR, 0U);
 192:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 193:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     /* Reset DMAx_Channely memory address register */
 194:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     WRITE_REG(tmp->CMAR, 0U);
 195:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 196:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     /* Reset Request register field for DMAx Channel */
 197:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     LL_DMA_SetPeriphRequest(DMAx, Channel, LL_DMAMUX_REQ_MEM2MEM);
 198:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 199:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     if (Channel == LL_DMA_CHANNEL_1)
 200:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 201:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel1 */
 202:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI1(DMAx);
 203:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 204:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (Channel == LL_DMA_CHANNEL_2)
 205:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 206:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel2 */
 207:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI2(DMAx);
 208:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 209:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (Channel == LL_DMA_CHANNEL_3)
 210:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 211:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel3 */
 212:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI3(DMAx);
 213:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 214:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (Channel == LL_DMA_CHANNEL_4)
 215:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 216:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel4 */
 217:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI4(DMAx);
 218:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 219:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (Channel == LL_DMA_CHANNEL_5)
 220:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 221:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel5 */
 222:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI5(DMAx);
 223:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 224:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 225:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (Channel == LL_DMA_CHANNEL_6)
 226:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 227:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel6 */
 228:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI6(DMAx);
 229:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 230:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #if defined (DMA1_Channel7)
 231:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (Channel == LL_DMA_CHANNEL_7)
 232:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 233:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel7 */
 234:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI7(DMAx);
 235:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 236:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #endif /* DMA1_Channel7 */
 237:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #if defined (DMA1_Channel8)
 238:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else if (Channel == LL_DMA_CHANNEL_8)
 239:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 240:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       /* Reset interrupt pending bits for DMAx Channel8 */
 241:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       LL_DMA_ClearFlag_GI8(DMAx);
 242:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 243:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** #endif /* DMA1_Channel8 */
 244:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     else
 245:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 246:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****       status = ERROR;
 247:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 248:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   }
 249:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 250:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   return (uint32_t)status;
 101              		.loc 1 250 3 is_stmt 1 view .LVU22
 251:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** }
 102              		.loc 1 251 1 is_stmt 0 view .LVU23
 103 002e 1046     		mov	r0, r2
 104              	.LVL5:
 105              		.loc 1 251 1 view .LVU24
 106 0030 10BD     		pop	{r4, pc}
 107              	.LVL6:
 108              	.L5:
 167:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 109              		.loc 1 167 7 is_stmt 1 view .LVU25
 110              	.LBB47:
 111              	.LBI47:
 322:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 112              		.loc 2 322 22 view .LVU26
 113              	.LBB48:
 324:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 114              		.loc 2 324 3 view .LVU27
 115 0032 3B4B     		ldr	r3, .L29+8
 116 0034 9A6A     		ldr	r2, [r3, #40]
 117 0036 42F00202 		orr	r2, r2, #2
 118 003a 9A62     		str	r2, [r3, #40]
 119              	.LVL7:
 324:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 120              		.loc 2 324 3 is_stmt 0 view .LVU28
 121              	.LBE48:
 122              	.LBE47:
 170:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 123              		.loc 1 170 7 is_stmt 1 view .LVU29
 124              	.LBB49:
 125              	.LBI44:
 347:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 126              		.loc 2 347 22 view .LVU30
 127              	.LBB46:
 128              		.loc 2 349 3 view .LVU31
 129 003c 9A6A     		ldr	r2, [r3, #40]
 130 003e 22F00202 		bic	r2, r2, #2
 131 0042 EDE7     		b	.L28
 132              	.LVL8:
 133              	.L2:
 134              		.loc 2 349 3 is_stmt 0 view .LVU32
 135              	.LBE46:
 136              	.LBE49:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 137              		.loc 1 179 5 is_stmt 1 view .LVU33
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 138              		.loc 1 179 11 is_stmt 0 view .LVU34
 139 0044 9842     		cmp	r0, r3
 140 0046 1DD1     		bne	.L6
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 141              		.loc 1 179 35 discriminator 2 view .LVU35
 142 0048 11BB     		cbnz	r1, .L7
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 143              		.loc 1 179 11 view .LVU36
 144 004a 364B     		ldr	r3, .L29+12
 145              	.L8:
 146              	.LVL9:
 182:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 147              		.loc 1 182 5 is_stmt 1 discriminator 66 view .LVU37
 148 004c 1A68     		ldr	r2, [r3]
 149 004e 22F00102 		bic	r2, r2, #1
 150 0052 1A60     		str	r2, [r3]
 185:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 151              		.loc 1 185 5 discriminator 66 view .LVU38
 152 0054 0022     		movs	r2, #0
 153 0056 1A60     		str	r2, [r3]
 188:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 154              		.loc 1 188 5 discriminator 66 view .LVU39
 155 0058 5A60     		str	r2, [r3, #4]
 191:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 156              		.loc 1 191 5 discriminator 66 view .LVU40
 157 005a 9A60     		str	r2, [r3, #8]
 194:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 158              		.loc 1 194 5 discriminator 66 view .LVU41
 159 005c DA60     		str	r2, [r3, #12]
 197:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 160              		.loc 1 197 5 discriminator 66 view .LVU42
 161              	.LVL10:
 162              	.LBB50:
 163              	.LBI50:
 164              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_dma.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @file    stm32g4xx_ll_dma.h
   4:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief   Header file of DMA LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #ifndef __STM32G4xx_LL_DMA_H
  22:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define __STM32G4xx_LL_DMA_H
  23:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #include "stm32g4xx_ll_dmamux.h"
  31:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  32:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @addtogroup STM32G4xx_LL_Driver
  33:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
  34:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  35:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  36:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1) || defined (DMA2)
  37:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  38:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL DMA
  39:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
  40:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  41:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  42:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Private types -------------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Private variables ---------------------------------------------------------*/
  44:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_Private_Variables DMA Private Variables
  45:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
  46:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  47:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Array used to get the DMA channel register offset versus channel index LL_DMA_CHANNEL_x */
  48:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** static const uint8_t CHANNEL_OFFSET_TAB[] =
  49:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
  50:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel1_BASE - DMA1_BASE),
  51:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel2_BASE - DMA1_BASE),
  52:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel3_BASE - DMA1_BASE),
  53:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel4_BASE - DMA1_BASE),
  54:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel5_BASE - DMA1_BASE),
  55:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel6_BASE - DMA1_BASE)
  56:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel7)
  57:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   ,
  58:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel7_BASE - DMA1_BASE)
  59:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
  60:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
  61:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   ,
  62:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (uint8_t)(DMA1_Channel8_BASE - DMA1_BASE)
  63:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
  64:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** };
  65:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
  66:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
  67:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  68:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  69:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Private constants ---------------------------------------------------------*/
  70:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_Private_Constants DMA Private Constants
  71:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
  72:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  73:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Define used to get CSELR register offset */
  74:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define DMA_CSELR_OFFSET                  (uint32_t)(DMA1_CSELR_BASE - DMA1_BASE)
  75:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  76:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Defines used for the bit position in the register and perform offsets */
  77:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define DMA_POSITION_CSELR_CXS            POSITION_VAL(DMA_CSELR_C1S << ((Channel-1U)*4U))
  78:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
  79:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
  80:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  81:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Private macros ------------------------------------------------------------*/
  83:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined(USE_FULL_LL_DRIVER)
  84:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_Private_Macros DMA Private Macros
  85:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
  86:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  87:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
  88:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
  89:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  90:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /*USE_FULL_LL_DRIVER*/
  91:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
  92:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Exported types ------------------------------------------------------------*/
  93:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined(USE_FULL_LL_DRIVER)
  94:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_ES_INIT DMA Exported Init structure
  95:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
  96:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
  97:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** typedef struct
  98:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
  99:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t PeriphOrM2MSrcAddress;  /*!< Specifies the peripheral base address for DMA transfer
 100:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         or as Source base address in case of memory to memory trans
 101:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 102:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter must be a value between Min_Data = 0 and Max
 103:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 104:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t MemoryOrM2MDstAddress;  /*!< Specifies the memory base address for DMA transfer
 105:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         or as Destination base address in case of memory to memory 
 106:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 107:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter must be a value between Min_Data = 0 and Max
 108:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t Direction;              /*!< Specifies if the data will be transferred from memory to pe
 110:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         from memory to memory or from peripheral to memory.
 111:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMA_LL_EC_DIRECTION
 112:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 113:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 114:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 115:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t Mode;                   /*!< Specifies the normal or circular operation mode.
 116:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMA_LL_EC_MODE
 117:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         @note: The circular buffer mode cannot be used if the memor
 118:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                                data transfer direction is configured on the selecte
 119:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 121:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 122:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t PeriphOrM2MSrcIncMode;  /*!< Specifies whether the Peripheral address or Source address 
 123:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         is incremented or not.
 124:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMA_LL_EC_PERIPH
 125:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 126:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 127:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 128:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t MemoryOrM2MDstIncMode;  /*!< Specifies whether the Memory address or Destination address
 129:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         is incremented or not.
 130:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMA_LL_EC_MEMORY
 131:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 132:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 133:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t PeriphOrM2MSrcDataSize; /*!< Specifies the Peripheral data size alignment or Source data
 135:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         in case of memory to memory transfer direction.
 136:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMA_LL_EC_PDATAALIGN
 137:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 138:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 139:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 140:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t MemoryOrM2MDstDataSize; /*!< Specifies the Memory data size alignment or Destination dat
 141:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         in case of memory to memory transfer direction.
 142:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMA_LL_EC_MDATAALIGN
 143:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 144:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 145:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 146:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t NbData;                 /*!< Specifies the number of data to transfer, in data unit.
 147:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         The data unit is equal to the source buffer configuration s
 148:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         or MemorySize parameters depending in the transfer directio
 149:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter must be a value between Min_Data = 0 and Max
 150:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 151:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 152:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 153:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t PeriphRequest;          /*!< Specifies the peripheral request.
 154:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMAMUX_LL_EC_REQUEST
 155:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 156:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 157:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 158:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t Priority;               /*!< Specifies the channel priority level.
 159:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This parameter can be a value of @ref DMA_LL_EC_PRIORITY
 160:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 161:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                         This feature can be modified afterwards using unitary funct
 162:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 163:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** } LL_DMA_InitTypeDef;
 164:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 165:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 166:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 167:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /*USE_FULL_LL_DRIVER*/
 168:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 169:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Exported constants --------------------------------------------------------*/
 170:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_Exported_Constants DMA Exported Constants
 171:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 172:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 173:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_CLEAR_FLAG Clear Flags Defines
 174:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief    Flags defines which can be used with LL_DMA_WriteReg function
 175:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 176:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 177:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF1                 DMA_IFCR_CGIF1        /*!< Channel 1 global flag         
 178:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF1                DMA_IFCR_CTCIF1       /*!< Channel 1 transfer complete fl
 179:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF1                DMA_IFCR_CHTIF1       /*!< Channel 1 half transfer flag  
 180:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF1                DMA_IFCR_CTEIF1       /*!< Channel 1 transfer error flag 
 181:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF2                 DMA_IFCR_CGIF2        /*!< Channel 2 global flag         
 182:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF2                DMA_IFCR_CTCIF2       /*!< Channel 2 transfer complete fl
 183:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF2                DMA_IFCR_CHTIF2       /*!< Channel 2 half transfer flag  
 184:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF2                DMA_IFCR_CTEIF2       /*!< Channel 2 transfer error flag 
 185:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF3                 DMA_IFCR_CGIF3        /*!< Channel 3 global flag         
 186:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF3                DMA_IFCR_CTCIF3       /*!< Channel 3 transfer complete fl
 187:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF3                DMA_IFCR_CHTIF3       /*!< Channel 3 half transfer flag  
 188:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF3                DMA_IFCR_CTEIF3       /*!< Channel 3 transfer error flag 
 189:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF4                 DMA_IFCR_CGIF4        /*!< Channel 4 global flag         
 190:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF4                DMA_IFCR_CTCIF4       /*!< Channel 4 transfer complete fl
 191:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF4                DMA_IFCR_CHTIF4       /*!< Channel 4 half transfer flag  
 192:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF4                DMA_IFCR_CTEIF4       /*!< Channel 4 transfer error flag 
 193:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF5                 DMA_IFCR_CGIF5        /*!< Channel 5 global flag         
 194:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF5                DMA_IFCR_CTCIF5       /*!< Channel 5 transfer complete fl
 195:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF5                DMA_IFCR_CHTIF5       /*!< Channel 5 half transfer flag  
 196:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF5                DMA_IFCR_CTEIF5       /*!< Channel 5 transfer error flag 
 197:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF6                 DMA_IFCR_CGIF6        /*!< Channel 6 global flag         
 198:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF6                DMA_IFCR_CTCIF6       /*!< Channel 6 transfer complete fl
 199:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF6                DMA_IFCR_CHTIF6       /*!< Channel 6 half transfer flag  
 200:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF6                DMA_IFCR_CTEIF6       /*!< Channel 6 transfer error flag 
 201:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel7)
 202:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF7                 DMA_IFCR_CGIF7        /*!< Channel 7 global flag         
 203:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF7                DMA_IFCR_CTCIF7       /*!< Channel 7 transfer complete fl
 204:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF7                DMA_IFCR_CHTIF7       /*!< Channel 7 half transfer flag  
 205:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF7                DMA_IFCR_CTEIF7       /*!< Channel 7 transfer error flag 
 206:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
 207:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
 208:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CGIF8                 DMA_IFCR_CGIF8        /*!< Channel 8 global flag         
 209:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTCIF8                DMA_IFCR_CTCIF8       /*!< Channel 8 transfer complete fl
 210:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CHTIF8                DMA_IFCR_CHTIF8       /*!< Channel 8 half transfer flag  
 211:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_IFCR_CTEIF8                DMA_IFCR_CTEIF8       /*!< Channel 8 transfer error flag 
 212:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
 213:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 214:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 215:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 216:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 217:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_GET_FLAG Get Flags Defines
 218:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief    Flags defines which can be used with LL_DMA_ReadReg function
 219:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 220:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 221:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF1                   DMA_ISR_GIF1          /*!< Channel 1 global flag         
 222:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF1                  DMA_ISR_TCIF1         /*!< Channel 1 transfer complete fl
 223:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF1                  DMA_ISR_HTIF1         /*!< Channel 1 half transfer flag  
 224:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF1                  DMA_ISR_TEIF1         /*!< Channel 1 transfer error flag 
 225:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF2                   DMA_ISR_GIF2          /*!< Channel 2 global flag         
 226:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF2                  DMA_ISR_TCIF2         /*!< Channel 2 transfer complete fl
 227:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF2                  DMA_ISR_HTIF2         /*!< Channel 2 half transfer flag  
 228:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF2                  DMA_ISR_TEIF2         /*!< Channel 2 transfer error flag 
 229:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF3                   DMA_ISR_GIF3          /*!< Channel 3 global flag         
 230:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF3                  DMA_ISR_TCIF3         /*!< Channel 3 transfer complete fl
 231:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF3                  DMA_ISR_HTIF3         /*!< Channel 3 half transfer flag  
 232:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF3                  DMA_ISR_TEIF3         /*!< Channel 3 transfer error flag 
 233:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF4                   DMA_ISR_GIF4          /*!< Channel 4 global flag         
 234:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF4                  DMA_ISR_TCIF4         /*!< Channel 4 transfer complete fl
 235:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF4                  DMA_ISR_HTIF4         /*!< Channel 4 half transfer flag  
 236:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF4                  DMA_ISR_TEIF4         /*!< Channel 4 transfer error flag 
 237:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF5                   DMA_ISR_GIF5          /*!< Channel 5 global flag         
 238:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF5                  DMA_ISR_TCIF5         /*!< Channel 5 transfer complete fl
 239:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF5                  DMA_ISR_HTIF5         /*!< Channel 5 half transfer flag  
 240:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF5                  DMA_ISR_TEIF5         /*!< Channel 5 transfer error flag 
 241:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF6                   DMA_ISR_GIF6          /*!< Channel 6 global flag         
 242:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF6                  DMA_ISR_TCIF6         /*!< Channel 6 transfer complete fl
 243:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF6                  DMA_ISR_HTIF6         /*!< Channel 6 half transfer flag  
 244:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF6                  DMA_ISR_TEIF6         /*!< Channel 6 transfer error flag 
 245:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel7)
 246:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF7                   DMA_ISR_GIF7          /*!< Channel 7 global flag         
 247:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF7                  DMA_ISR_TCIF7         /*!< Channel 7 transfer complete fl
 248:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF7                  DMA_ISR_HTIF7         /*!< Channel 7 half transfer flag  
 249:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF7                  DMA_ISR_TEIF7         /*!< Channel 7 transfer error flag 
 250:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
 251:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
 252:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_GIF8                   DMA_ISR_GIF8          /*!< Channel 8 global flag         
 253:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TCIF8                  DMA_ISR_TCIF8         /*!< Channel 8 transfer complete fl
 254:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_HTIF8                  DMA_ISR_HTIF8         /*!< Channel 8 half transfer flag  
 255:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ISR_TEIF8                  DMA_ISR_TEIF8         /*!< Channel 8 transfer error flag 
 256:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
 257:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 258:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 259:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 260:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 261:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_IT IT Defines
 262:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief    IT defines which can be used with LL_DMA_ReadReg and  LL_DMA_WriteReg functions
 263:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 264:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 265:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CCR_TCIE                   DMA_CCR_TCIE          /*!< Transfer complete interrupt */
 266:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CCR_HTIE                   DMA_CCR_HTIE          /*!< Half Transfer interrupt     */
 267:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CCR_TEIE                   DMA_CCR_TEIE          /*!< Transfer error interrupt    */
 268:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 269:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 270:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 271:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 272:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_CHANNEL CHANNEL
 273:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 274:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 275:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_1                  0x00000000U /*!< DMA Channel 1 */
 276:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_2                  0x00000001U /*!< DMA Channel 2 */
 277:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_3                  0x00000002U /*!< DMA Channel 3 */
 278:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_4                  0x00000003U /*!< DMA Channel 4 */
 279:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_5                  0x00000004U /*!< DMA Channel 5 */
 280:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_6                  0x00000005U /*!< DMA Channel 6 */
 281:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel7)
 282:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_7                  0x00000006U /*!< DMA Channel 7 */
 283:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
 284:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
 285:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_8                  0x00000007U /*!< DMA Channel 8 */
 286:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
 287:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined(USE_FULL_LL_DRIVER)
 288:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_CHANNEL_ALL                0xFFFF0000U /*!< DMA Channel all (used only for function 
 289:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /*USE_FULL_LL_DRIVER*/
 290:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 291:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 292:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 293:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 294:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_DIRECTION Transfer Direction
 295:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 296:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 297:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_DIRECTION_PERIPH_TO_MEMORY 0x00000000U             /*!< Peripheral to memory directi
 298:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_DIRECTION_MEMORY_TO_PERIPH DMA_CCR_DIR             /*!< Memory to peripheral directi
 299:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_DIRECTION_MEMORY_TO_MEMORY DMA_CCR_MEM2MEM         /*!< Memory to memory direction  
 300:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 301:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 302:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 303:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 304:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_MODE Transfer mode
 305:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 306:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 307:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_MODE_NORMAL                0x00000000U             /*!< Normal Mode                 
 308:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_MODE_CIRCULAR              DMA_CCR_CIRC            /*!< Circular Mode               
 309:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 310:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 311:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 312:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 313:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_PERIPH Peripheral increment mode
 314:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 315:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 316:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PERIPH_INCREMENT           DMA_CCR_PINC            /*!< Peripheral increment mode En
 317:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PERIPH_NOINCREMENT         0x00000000U             /*!< Peripheral increment mode Di
 318:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 319:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 320:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 321:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 322:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_MEMORY Memory increment mode
 323:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 324:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 325:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_MEMORY_INCREMENT           DMA_CCR_MINC            /*!< Memory increment mode Enable
 326:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_MEMORY_NOINCREMENT         0x00000000U             /*!< Memory increment mode Disabl
 327:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 328:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 329:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 330:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 331:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_PDATAALIGN Peripheral data alignment
 332:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 333:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 334:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PDATAALIGN_BYTE            0x00000000U             /*!< Peripheral data alignment : 
 335:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PDATAALIGN_HALFWORD        DMA_CCR_PSIZE_0         /*!< Peripheral data alignment : 
 336:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PDATAALIGN_WORD            DMA_CCR_PSIZE_1         /*!< Peripheral data alignment : 
 337:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 338:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 339:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 340:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 341:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_MDATAALIGN Memory data alignment
 342:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 343:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 344:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_MDATAALIGN_BYTE            0x00000000U             /*!< Memory data alignment : Byte
 345:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_MDATAALIGN_HALFWORD        DMA_CCR_MSIZE_0         /*!< Memory data alignment : Half
 346:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_MDATAALIGN_WORD            DMA_CCR_MSIZE_1         /*!< Memory data alignment : Word
 347:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 348:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 349:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 350:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 351:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EC_PRIORITY Transfer Priority level
 352:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 353:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 354:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PRIORITY_LOW               0x00000000U             /*!< Priority level : Low       *
 355:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PRIORITY_MEDIUM            DMA_CCR_PL_0            /*!< Priority level : Medium    *
 356:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PRIORITY_HIGH              DMA_CCR_PL_1            /*!< Priority level : High      *
 357:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_PRIORITY_VERYHIGH          DMA_CCR_PL              /*!< Priority level : Very_High *
 358:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 359:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 360:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 361:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 362:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 363:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 364:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 365:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 366:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Exported macro ------------------------------------------------------------*/
 367:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_Exported_Macros DMA Exported Macros
 368:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 369:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 370:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 371:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EM_WRITE_READ Common Write and read registers macros
 372:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 373:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 374:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 375:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Write a value in DMA register
 376:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __INSTANCE__ DMA Instance
 377:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __REG__ Register to be written
 378:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __VALUE__ Value to be written in the register
 379:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 380:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 381:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALUE
 382:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 383:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 384:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Read a value in DMA register
 385:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __INSTANCE__ DMA Instance
 386:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __REG__ Register to be read
 387:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Register value
 388:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 389:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define LL_DMA_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 390:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 391:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 392:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 393:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 394:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EM_CONVERT_DMAxCHANNELy Convert DMAxChannely
 395:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 396:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 397:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 398:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Convert DMAx_Channely into DMAx
 399:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __CHANNEL_INSTANCE__ DMAx_Channely
 400:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval DMAx
 401:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 402:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
 403:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define __LL_DMA_GET_INSTANCE(__CHANNEL_INSTANCE__)   \
 404:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (((uint32_t)(__CHANNEL_INSTANCE__) > ((uint32_t)DMA1_Channel8)) ?  DMA2 : DMA1)
 405:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #else
 406:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define __LL_DMA_GET_INSTANCE(__CHANNEL_INSTANCE__)   \
 407:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (((uint32_t)(__CHANNEL_INSTANCE__) > ((uint32_t)DMA1_Channel6)) ?  DMA2 : DMA1)
 408:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
 409:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 410:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Convert DMAx_Channely into LL_DMA_CHANNEL_y
 411:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __CHANNEL_INSTANCE__ DMAx_Channely
 412:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval LL_DMA_CHANNEL_y
 413:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 414:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
 415:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define __LL_DMA_GET_CHANNEL(__CHANNEL_INSTANCE__)   \
 416:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel1)) ? LL_DMA_CHANNEL_1 : \
 417:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel1)) ? LL_DMA_CHANNEL_1 : \
 418:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel2)) ? LL_DMA_CHANNEL_2 : \
 419:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel2)) ? LL_DMA_CHANNEL_2 : \
 420:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel3)) ? LL_DMA_CHANNEL_3 : \
 421:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel3)) ? LL_DMA_CHANNEL_3 : \
 422:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel4)) ? LL_DMA_CHANNEL_4 : \
 423:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel4)) ? LL_DMA_CHANNEL_4 : \
 424:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel5)) ? LL_DMA_CHANNEL_5 : \
 425:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel5)) ? LL_DMA_CHANNEL_5 : \
 426:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel6)) ? LL_DMA_CHANNEL_6 : \
 427:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel6)) ? LL_DMA_CHANNEL_6 : \
 428:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel7)) ? LL_DMA_CHANNEL_7 : \
 429:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel7)) ? LL_DMA_CHANNEL_7 : \
 430:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    LL_DMA_CHANNEL_8)
 431:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #else
 432:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define __LL_DMA_GET_CHANNEL(__CHANNEL_INSTANCE__)   \
 433:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   (((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel1)) ? LL_DMA_CHANNEL_1 : \
 434:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel1)) ? LL_DMA_CHANNEL_1 : \
 435:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel2)) ? LL_DMA_CHANNEL_2 : \
 436:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel2)) ? LL_DMA_CHANNEL_2 : \
 437:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel3)) ? LL_DMA_CHANNEL_3 : \
 438:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel3)) ? LL_DMA_CHANNEL_3 : \
 439:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel4)) ? LL_DMA_CHANNEL_4 : \
 440:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel4)) ? LL_DMA_CHANNEL_4 : \
 441:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA1_Channel5)) ? LL_DMA_CHANNEL_5 : \
 442:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    ((uint32_t)(__CHANNEL_INSTANCE__) == ((uint32_t)DMA2_Channel5)) ? LL_DMA_CHANNEL_5 : \
 443:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    LL_DMA_CHANNEL_6)
 444:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
 445:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 446:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 447:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Convert DMA Instance DMAx and LL_DMA_CHANNEL_y into DMAx_Channely
 448:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __DMA_INSTANCE__ DMAx
 449:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  __CHANNEL__ LL_DMA_CHANNEL_y
 450:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval DMAx_Channely
 451:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 452:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
 453:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define __LL_DMA_GET_CHANNEL_INSTANCE(__DMA_INSTANCE__, __CHANNEL__)   \
 454:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   ((((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 455:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 456:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 457:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 458:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 459:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 460:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 461:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 462:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 463:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 464:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 465:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 466:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 467:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 468:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 469:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    DMA2_Channel8)
 470:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #else
 471:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #define __LL_DMA_GET_CHANNEL_INSTANCE(__DMA_INSTANCE__, __CHANNEL__)   \
 472:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   ((((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 473:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 474:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 475:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 476:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 477:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 478:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 479:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 480:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 481:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA2)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 482:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    (((uint32_t)(__DMA_INSTANCE__) == ((uint32_t)DMA1)) && ((uint32_t)(__CHANNEL__) == ((uint32_t)LL
 483:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****    DMA2_Channel6)
 484:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
 485:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 486:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 487:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 488:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 489:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 490:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 491:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
 492:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 493:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 494:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /* Exported functions --------------------------------------------------------*/
 495:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_Exported_Functions DMA Exported Functions
 496:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 497:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 498:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 499:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EF_Configuration Configuration
 500:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
 501:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 502:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 503:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Enable DMA channel.
 504:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          EN            LL_DMA_EnableChannel
 505:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 506:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 507:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 508:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 509:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 510:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 511:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 512:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 513:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 514:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 515:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 516:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 517:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 518:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_EnableChannel(DMA_TypeDef *DMAx, uint32_t Channel)
 519:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 520:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 521:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   SET_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CCR, 
 522:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 523:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 524:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 525:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Disable DMA channel.
 526:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          EN            LL_DMA_DisableChannel
 527:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 528:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 529:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 530:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 531:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 532:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 533:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 534:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 535:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 536:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 537:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 538:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 539:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 540:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_DisableChannel(DMA_TypeDef *DMAx, uint32_t Channel)
 541:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 542:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 543:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   CLEAR_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CCR
 544:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 545:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 546:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 547:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Check if DMA channel is enabled or disabled.
 548:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          EN            LL_DMA_IsEnabledChannel
 549:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 550:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 551:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 552:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 553:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 554:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 555:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 556:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 557:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 558:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 559:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 560:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
 561:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 562:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsEnabledChannel(DMA_TypeDef *DMAx, uint32_t Channel)
 563:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 564:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 565:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel]
 566:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                     DMA_CCR_EN) == (DMA_CCR_EN)) ? 1UL : 0UL);
 567:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 568:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 569:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 570:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Configure all parameters link to DMA transfer.
 571:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          DIR           LL_DMA_ConfigTransfer\n
 572:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          MEM2MEM       LL_DMA_ConfigTransfer\n
 573:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          CIRC          LL_DMA_ConfigTransfer\n
 574:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          PINC          LL_DMA_ConfigTransfer\n
 575:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          MINC          LL_DMA_ConfigTransfer\n
 576:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          PSIZE         LL_DMA_ConfigTransfer\n
 577:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          MSIZE         LL_DMA_ConfigTransfer\n
 578:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          PL            LL_DMA_ConfigTransfer
 579:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 580:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 581:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 582:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 583:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 584:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 585:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 586:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 587:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 588:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 589:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 590:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Configuration This parameter must be a combination of all the following values:
 591:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_PERIPH_TO_MEMORY or @ref LL_DMA_DIRECTION_MEMORY_TO_PERIPH o
 592:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MODE_NORMAL or @ref LL_DMA_MODE_CIRCULAR
 593:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PERIPH_INCREMENT or @ref LL_DMA_PERIPH_NOINCREMENT
 594:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MEMORY_INCREMENT or @ref LL_DMA_MEMORY_NOINCREMENT
 595:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PDATAALIGN_BYTE or @ref LL_DMA_PDATAALIGN_HALFWORD or @ref LL_DMA_PDAT
 596:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MDATAALIGN_BYTE or @ref LL_DMA_MDATAALIGN_HALFWORD or @ref LL_DMA_MDAT
 597:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_LOW or @ref LL_DMA_PRIORITY_MEDIUM or @ref LL_DMA_PRIORITY_HI
 598:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 599:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 600:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ConfigTransfer(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t Configurat
 601:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 602:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 604:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM | DMA_CCR_CIRC | DMA_CCR_PINC | DMA_CCR_MINC | DMA_CCR_P
 605:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              Configuration);
 606:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 607:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 608:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 609:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set Data transfer direction (read from peripheral or from memory).
 610:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          DIR           LL_DMA_SetDataTransferDirection\n
 611:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          MEM2MEM       LL_DMA_SetDataTransferDirection
 612:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 613:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 614:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 615:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 616:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 617:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 618:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 619:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 620:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 621:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 622:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 623:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Direction This parameter can be one of the following values:
 624:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_PERIPH_TO_MEMORY
 625:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_MEMORY_TO_PERIPH
 626:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_MEMORY_TO_MEMORY
 627:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 628:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 629:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetDataTransferDirection(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t 
 630:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 631:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 632:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 633:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM, Direction);
 634:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 635:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 636:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 637:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Data transfer direction (read from peripheral or from memory).
 638:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          DIR           LL_DMA_GetDataTransferDirection\n
 639:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CCR          MEM2MEM       LL_DMA_GetDataTransferDirection
 640:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 641:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 642:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 643:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 644:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 645:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 646:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 647:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 648:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 649:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 650:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 651:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
 652:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_PERIPH_TO_MEMORY
 653:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_MEMORY_TO_PERIPH
 654:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_MEMORY_TO_MEMORY
 655:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 656:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetDataTransferDirection(DMA_TypeDef *DMAx, uint32_t Channel)
 657:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 658:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 659:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
 660:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CCR_DIR | DMA_CCR_MEM2MEM));
 661:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 662:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 663:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 664:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set DMA mode circular or normal.
 665:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note The circular buffer mode cannot be used if the memory-to-memory
 666:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * data transfer is configured on the selected Channel.
 667:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          CIRC          LL_DMA_SetMode
 668:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 669:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 670:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 671:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 672:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 673:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 674:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 675:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 676:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 677:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 678:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 679:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Mode This parameter can be one of the following values:
 680:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MODE_NORMAL
 681:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MODE_CIRCULAR
 682:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 683:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 684:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetMode(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t Mode)
 685:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 686:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 687:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 688:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              Mode);
 689:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 690:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 691:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 692:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get DMA mode circular or normal.
 693:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          CIRC          LL_DMA_GetMode
 694:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 695:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 696:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 697:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 698:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 699:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 700:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 701:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 702:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 703:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 704:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 705:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
 706:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MODE_NORMAL
 707:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MODE_CIRCULAR
 708:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 709:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetMode(DMA_TypeDef *DMAx, uint32_t Channel)
 710:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 711:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 712:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
 713:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CCR_CIRC));
 714:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 715:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 716:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 717:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set Peripheral increment mode.
 718:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          PINC          LL_DMA_SetPeriphIncMode
 719:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 720:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 721:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 722:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 723:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 724:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 725:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 726:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 727:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 728:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 729:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 730:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  PeriphOrM2MSrcIncMode This parameter can be one of the following values:
 731:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PERIPH_INCREMENT
 732:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PERIPH_NOINCREMENT
 733:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 734:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 735:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetPeriphIncMode(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t PeriphOr
 736:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 737:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 738:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 739:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              PeriphOrM2MSrcIncMode);
 740:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 741:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 742:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 743:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Peripheral increment mode.
 744:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          PINC          LL_DMA_GetPeriphIncMode
 745:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 746:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 747:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 748:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 749:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 750:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 751:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 752:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 753:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 754:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 755:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 756:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
 757:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PERIPH_INCREMENT
 758:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PERIPH_NOINCREMENT
 759:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 760:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetPeriphIncMode(DMA_TypeDef *DMAx, uint32_t Channel)
 761:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 762:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 763:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
 764:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CCR_PINC));
 765:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 766:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 767:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 768:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set Memory increment mode.
 769:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          MINC          LL_DMA_SetMemoryIncMode
 770:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 771:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 772:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 773:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 774:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 775:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 776:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 777:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 778:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 779:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 780:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 781:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  MemoryOrM2MDstIncMode This parameter can be one of the following values:
 782:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MEMORY_INCREMENT
 783:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MEMORY_NOINCREMENT
 784:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 785:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 786:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetMemoryIncMode(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t MemoryOr
 787:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 788:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 789:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 790:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              MemoryOrM2MDstIncMode);
 791:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 792:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 793:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 794:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Memory increment mode.
 795:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          MINC          LL_DMA_GetMemoryIncMode
 796:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 797:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 798:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 799:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 800:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 801:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 802:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 803:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 804:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 805:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 806:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 807:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
 808:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MEMORY_INCREMENT
 809:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MEMORY_NOINCREMENT
 810:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 811:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetMemoryIncMode(DMA_TypeDef *DMAx, uint32_t Channel)
 812:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 813:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 814:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
 815:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CCR_MINC));
 816:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 817:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 818:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 819:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set Peripheral size.
 820:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          PSIZE         LL_DMA_SetPeriphSize
 821:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 822:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 823:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 824:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 825:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 826:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 827:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 828:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 829:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 830:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 831:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 832:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  PeriphOrM2MSrcDataSize This parameter can be one of the following values:
 833:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PDATAALIGN_BYTE
 834:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PDATAALIGN_HALFWORD
 835:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PDATAALIGN_WORD
 836:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 837:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 838:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetPeriphSize(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t PeriphOrM2M
 839:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 840:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 841:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 842:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              PeriphOrM2MSrcDataSize);
 843:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 844:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 845:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 846:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Peripheral size.
 847:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          PSIZE         LL_DMA_GetPeriphSize
 848:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 849:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 850:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 851:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 852:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 853:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 854:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 855:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 856:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 857:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 858:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 859:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
 860:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PDATAALIGN_BYTE
 861:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PDATAALIGN_HALFWORD
 862:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PDATAALIGN_WORD
 863:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 864:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetPeriphSize(DMA_TypeDef *DMAx, uint32_t Channel)
 865:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 866:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 867:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
 868:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CCR_PSIZE));
 869:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 870:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 871:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 872:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set Memory size.
 873:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          MSIZE         LL_DMA_SetMemorySize
 874:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 875:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 876:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 877:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 878:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 879:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 880:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 881:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 882:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 883:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 884:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 885:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  MemoryOrM2MDstDataSize This parameter can be one of the following values:
 886:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MDATAALIGN_BYTE
 887:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MDATAALIGN_HALFWORD
 888:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MDATAALIGN_WORD
 889:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 890:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 891:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetMemorySize(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t MemoryOrM2M
 892:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 893:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 894:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 895:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              MemoryOrM2MDstDataSize);
 896:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 897:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 898:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 899:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Memory size.
 900:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          MSIZE         LL_DMA_GetMemorySize
 901:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 902:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 903:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 904:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 905:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 906:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 907:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 908:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 909:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 910:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 911:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 912:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
 913:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MDATAALIGN_BYTE
 914:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MDATAALIGN_HALFWORD
 915:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_MDATAALIGN_WORD
 916:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 917:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetMemorySize(DMA_TypeDef *DMAx, uint32_t Channel)
 918:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 919:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 920:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
 921:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CCR_MSIZE));
 922:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 923:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 924:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 925:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set Channel priority level.
 926:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          PL            LL_DMA_SetChannelPriorityLevel
 927:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 928:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 929:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 930:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 931:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 932:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 933:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 934:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 935:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 936:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 937:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 938:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Priority This parameter can be one of the following values:
 939:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_LOW
 940:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_MEDIUM
 941:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_HIGH
 942:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_VERYHIGH
 943:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 944:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 945:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetChannelPriorityLevel(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t P
 946:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 947:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 948:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 949:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              Priority);
 950:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 951:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 952:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 953:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel priority level.
 954:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CCR          PL            LL_DMA_GetChannelPriorityLevel
 955:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 956:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 957:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 958:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 959:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 960:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 961:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 962:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 963:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 964:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 965:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 966:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
 967:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_LOW
 968:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_MEDIUM
 969:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_HIGH
 970:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_PRIORITY_VERYHIGH
 971:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 972:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetChannelPriorityLevel(DMA_TypeDef *DMAx, uint32_t Channel)
 973:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 974:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
 975:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
 976:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CCR_PL));
 977:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 978:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
 979:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
 980:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set Number of data to transfer.
 981:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   This action has no effect if
 982:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         channel is enabled.
 983:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CNDTR        NDT           LL_DMA_SetDataLength
 984:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
 985:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
 986:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
 987:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
 988:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
 989:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
 990:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
 991:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
 992:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 993:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 994:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
 995:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  NbData Between Min_Data = 0 and Max_Data = 0x0000FFFF
 996:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
 997:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
 998:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetDataLength(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t NbData)
 999:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1000:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1001:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CN
1002:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CNDTR_NDT, NbData);
1003:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1004:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1005:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1006:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Number of data to transfer.
1007:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Once the channel is enabled, the return value indicate the
1008:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         remaining bytes to be transmitted.
1009:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CNDTR        NDT           LL_DMA_GetDataLength
1010:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1011:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1012:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1013:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1014:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1015:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1016:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1017:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1018:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1019:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1020:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1021:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1022:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1023:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetDataLength(DMA_TypeDef *DMAx, uint32_t Channel)
1024:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1025:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1026:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
1027:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                    DMA_CNDTR_NDT));
1028:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1029:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1030:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1031:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Configure the Source and Destination addresses.
1032:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   This API must not be called when the DMA channel is enabled.
1033:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Each IP using DMA provides an API to get directly the register adress (LL_PPP_DMA_GetRe
1034:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CPAR         PA            LL_DMA_ConfigAddresses\n
1035:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CMAR         MA            LL_DMA_ConfigAddresses
1036:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1037:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1038:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1039:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1040:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1041:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1042:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1043:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1044:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1045:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1046:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1047:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  SrcAddress Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1048:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DstAddress Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1049:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Direction This parameter can be one of the following values:
1050:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_PERIPH_TO_MEMORY
1051:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_MEMORY_TO_PERIPH
1052:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_DIRECTION_MEMORY_TO_MEMORY
1053:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1054:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1055:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ConfigAddresses(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t SrcAddres
1056:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****                                             uint32_t DstAddress, uint32_t Direction)
1057:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1058:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1059:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1060:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   /* Direction Memory to Periph */
1061:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   if (Direction == LL_DMA_DIRECTION_MEMORY_TO_PERIPH)
1062:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   {
1063:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****     WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->C
1064:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****     WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->C
1065:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   }
1066:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   /* Direction Periph to Memory and Memory to Memory */
1067:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   else
1068:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   {
1069:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****     WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->C
1070:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****     WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->C
1071:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   }
1072:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1073:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1074:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1075:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set the Memory address.
1076:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_PERIPH_TO_MEMORY or LL_DMA_DIRECTION_MEMO
1077:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   This API must not be called when the DMA channel is enabled.
1078:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CMAR         MA            LL_DMA_SetMemoryAddress
1079:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1080:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1081:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1082:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1083:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1084:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1085:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1086:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1087:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1088:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1089:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1090:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  MemoryAddress Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1091:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1092:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1093:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetMemoryAddress(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t MemoryAd
1094:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1095:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1096:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CMA
1097:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1098:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1099:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1100:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set the Peripheral address.
1101:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_PERIPH_TO_MEMORY or LL_DMA_DIRECTION_MEMO
1102:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   This API must not be called when the DMA channel is enabled.
1103:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CPAR         PA            LL_DMA_SetPeriphAddress
1104:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1105:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1106:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1107:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1108:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1109:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1110:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1111:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1112:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1113:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1114:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1115:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  PeriphAddress Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1116:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1117:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1118:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetPeriphAddress(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t PeriphAd
1119:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1120:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1121:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CPA
1122:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1123:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1124:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1125:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Memory address.
1126:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_PERIPH_TO_MEMORY or LL_DMA_DIRECTION_MEMO
1127:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CMAR         MA            LL_DMA_GetMemoryAddress
1128:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1129:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1130:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1131:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1132:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1133:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1134:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1135:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1136:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1137:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1138:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1139:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1140:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1141:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetMemoryAddress(DMA_TypeDef *DMAx, uint32_t Channel)
1142:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1143:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1144:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
1145:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1146:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1147:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1148:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Peripheral address.
1149:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_PERIPH_TO_MEMORY or LL_DMA_DIRECTION_MEMO
1150:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CPAR         PA            LL_DMA_GetPeriphAddress
1151:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1152:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1153:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1154:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1155:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1156:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1157:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1158:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1159:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1160:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1161:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1162:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1163:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1164:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetPeriphAddress(DMA_TypeDef *DMAx, uint32_t Channel)
1165:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1166:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1167:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
1168:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1169:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1170:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1171:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set the Memory to Memory Source address.
1172:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_MEMORY_TO_MEMORY only.
1173:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   This API must not be called when the DMA channel is enabled.
1174:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CPAR         PA            LL_DMA_SetM2MSrcAddress
1175:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1176:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1177:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1178:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1179:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1180:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1181:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1182:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1183:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1184:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1185:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1186:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  MemoryAddress Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1187:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1188:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1189:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetM2MSrcAddress(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t MemoryAd
1190:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1191:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1192:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CPA
1193:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1194:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1195:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1196:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set the Memory to Memory Destination address.
1197:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_MEMORY_TO_MEMORY only.
1198:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   This API must not be called when the DMA channel is enabled.
1199:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CMAR         MA            LL_DMA_SetM2MDstAddress
1200:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1201:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1202:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1203:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1204:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1205:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1206:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1207:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1208:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1209:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1210:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1211:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  MemoryAddress Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1212:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1213:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1214:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetM2MDstAddress(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t MemoryAd
1215:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1216:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1217:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CMA
1218:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1219:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1220:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1221:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get the Memory to Memory Source address.
1222:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_MEMORY_TO_MEMORY only.
1223:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CPAR         PA            LL_DMA_GetM2MSrcAddress
1224:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1225:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1226:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1227:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1228:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1229:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1230:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1231:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1232:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1233:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1234:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1235:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1236:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1237:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetM2MSrcAddress(DMA_TypeDef *DMAx, uint32_t Channel)
1238:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1239:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1240:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
1241:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1242:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1243:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1244:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get the Memory to Memory Destination address.
1245:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Interface used for direction LL_DMA_DIRECTION_MEMORY_TO_MEMORY only.
1246:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CMAR         MA            LL_DMA_GetM2MDstAddress
1247:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1248:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1249:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1250:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1251:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1252:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1253:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1254:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1255:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1256:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1257:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1258:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Between Min_Data = 0 and Max_Data = 0xFFFFFFFF
1259:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1260:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetM2MDstAddress(DMA_TypeDef *DMAx, uint32_t Channel)
1261:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1262:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dma_base_addr = (uint32_t)DMAx;
1263:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])
1264:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1265:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1266:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1267:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Set DMA request for DMA instance on Channel x.
1268:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @note   Please refer to Reference Manual to get the available mapping of Request value link to 
1269:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CSELR        C1S           LL_DMA_SetPeriphRequest\n
1270:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C2S           LL_DMA_SetPeriphRequest\n
1271:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C3S           LL_DMA_SetPeriphRequest\n
1272:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C4S           LL_DMA_SetPeriphRequest\n
1273:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C5S           LL_DMA_SetPeriphRequest\n
1274:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C6S           LL_DMA_SetPeriphRequest\n
1275:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C7S           LL_DMA_SetPeriphRequest
1276:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1277:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1278:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1279:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1280:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1281:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1282:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1283:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1284:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1285:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1286:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1287:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  PeriphRequest This parameter can be one of the following values:
1288:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_MEM2MEM
1289:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR0
1290:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR1
1291:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR2
1292:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR3
1293:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC1
1294:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC1_CH1
1295:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC1_CH2
1296:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM6_UP
1297:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM7_UP
1298:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI1_RX
1299:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI1_TX
1300:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI2_RX
1301:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI2_TX
1302:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI3_RX
1303:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI3_TX
1304:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C1_RX
1305:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C1_TX
1306:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C2_RX
1307:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C2_TX
1308:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C3_RX
1309:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C3_TX (*)
1310:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C4_RX (*)
1311:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C4_TX
1312:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART1_RX
1313:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART1_TX
1314:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART2_RX
1315:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART2_TX
1316:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART3_RX
1317:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART3_TX
1318:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART4_RX
1319:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART4_TX
1320:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART5_RX (*)
1321:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART5_TX (*)
1322:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_LPUART1_RX
1323:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_LPUART1_TX
1324:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC2
1325:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC3 (*)
1326:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC4 (*)
1327:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC5 (*)
1328:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_QSPI (*)
1329:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC2_CH1 (*)
1330:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH1
1331:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH2
1332:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH3
1333:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH4
1334:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_UP
1335:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_TRIG
1336:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_COM
1337:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH1
1338:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH2
1339:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH3
1340:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH4
1341:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_UP
1342:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_TRIG
1343:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_COM
1344:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH1
1345:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH2
1346:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH3
1347:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH4
1348:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_UP
1349:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH1
1350:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH2
1351:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH3
1352:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH4
1353:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_UP
1354:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_TRIG
1355:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH1
1356:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH2
1357:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH3
1358:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH4
1359:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_UP
1360:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH1 (*)
1361:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH2 (*)
1362:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH3 (*)
1363:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH4 (*)
1364:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_UP (*)
1365:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_TRIG (*)
1366:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_CH1
1367:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_UP
1368:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_TRIG
1369:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_COM
1370:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM16_CH1
1371:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM16_UP
1372:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM17_CH1
1373:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM17_UP
1374:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH1 (*)
1375:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH2 (*)
1376:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH3 (*)
1377:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH4 (*)
1378:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_UP (*)
1379:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_AES_IN
1380:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_AES_OUT
1381:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_TRIG (*)
1382:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_COM (*)
1383:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_M (*)
1384:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_A (*)
1385:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_B (*)
1386:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_C (*)
1387:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_D (*)
1388:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_E (*)
1389:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_F (*)
1390:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC3_CH1
1391:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC3_CH2
1392:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC4_CH1 (*)
1393:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC4_CH2 (*)
1394:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI4_RX (*)
1395:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI4_TX (*)
1396:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SAI1_A
1397:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SAI1_B
1398:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_FMAC_WRITE
1399:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_FMAC_READ
1400:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_CORDIC_WRITE
1401:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_CORDIC_READ
1402:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UCPD1_RX
1403:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UCPD1_TX
1404:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1405:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1406:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1407:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_SetPeriphRequest(DMA_TypeDef *DMAx, uint32_t Channel, uint32_t PeriphRe
 165              		.loc 3 1407 22 discriminator 66 view .LVU43
 166              	.LBB51:
1408:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1409:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dmamux_ccr_offset = ((((uint32_t)DMAx ^ (uint32_t)DMA1) >> 10U) * 8U);
 167              		.loc 3 1409 3 discriminator 66 view .LVU44
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG((DMAMUX1_Channel0 + Channel + dmamux_ccr_offset)->CCR, DMAMUX_CxCR_DMAREQ_ID, PeriphRe
 168              		.loc 3 1410 3 discriminator 66 view .LVU45
1409:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG((DMAMUX1_Channel0 + Channel + dmamux_ccr_offset)->CCR, DMAMUX_CxCR_DMAREQ_ID, PeriphRe
 169              		.loc 3 1409 68 is_stmt 0 discriminator 66 view .LVU46
 170 005e 324B     		ldr	r3, .L29+16
 171              	.LVL11:
1409:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG((DMAMUX1_Channel0 + Channel + dmamux_ccr_offset)->CCR, DMAMUX_CxCR_DMAREQ_ID, PeriphRe
 172              		.loc 3 1409 68 discriminator 66 view .LVU47
 173 0060 83EA9023 		eor	r3, r3, r0, lsr #10
 174              		.loc 3 1410 3 discriminator 66 view .LVU48
 175 0064 01EBC303 		add	r3, r1, r3, lsl #3
 176 0068 9B00     		lsls	r3, r3, #2
 177 006a 03F18043 		add	r3, r3, #1073741824
 178 006e 03F50233 		add	r3, r3, #133120
 179 0072 1C68     		ldr	r4, [r3]
 180 0074 24F0FF04 		bic	r4, r4, #255
 181 0078 1C60     		str	r4, [r3]
 182              	.LVL12:
 183              		.loc 3 1410 3 discriminator 66 view .LVU49
 184              	.LBE51:
 185              	.LBE50:
 199:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 186              		.loc 1 199 5 is_stmt 1 discriminator 66 view .LVU50
 199:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 187              		.loc 1 199 8 is_stmt 0 discriminator 66 view .LVU51
 188 007a 0029     		cmp	r1, #0
 189 007c 32D1     		bne	.L17
 202:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 190              		.loc 1 202 7 is_stmt 1 view .LVU52
 191              	.LVL13:
 192              	.LBB52:
 193              	.LBI52:
1411:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1412:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1413:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1414:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get DMA request for DMA instance on Channel x.
1415:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll CSELR        C1S           LL_DMA_GetPeriphRequest\n
1416:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C2S           LL_DMA_GetPeriphRequest\n
1417:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C3S           LL_DMA_GetPeriphRequest\n
1418:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C4S           LL_DMA_GetPeriphRequest\n
1419:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C5S           LL_DMA_GetPeriphRequest\n
1420:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C6S           LL_DMA_GetPeriphRequest\n
1421:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         CSELR        C7S           LL_DMA_GetPeriphRequest
1422:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1423:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  Channel This parameter can be one of the following values:
1424:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_1
1425:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_2
1426:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_3
1427:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_4
1428:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_5
1429:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_6
1430:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
1431:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
1432:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1433:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval Returned value can be one of the following values:
1434:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_MEM2MEM
1435:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR0
1436:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR1
1437:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR2
1438:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_GENERATOR3
1439:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC1
1440:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC1_CH1
1441:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC1_CH2
1442:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM6_UP
1443:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM7_UP
1444:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI1_RX
1445:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI1_TX
1446:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI2_RX
1447:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI2_TX
1448:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI3_RX
1449:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI3_TX
1450:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C1_RX
1451:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C1_TX
1452:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C2_RX
1453:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C2_TX
1454:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C3_RX
1455:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C3_TX (*)
1456:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C4_RX (*)
1457:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_I2C4_TX
1458:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART1_RX
1459:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART1_TX
1460:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART2_RX
1461:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART2_TX
1462:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART3_RX
1463:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_USART3_TX
1464:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART4_RX
1465:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART4_TX
1466:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART5_RX (*)
1467:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UART5_TX (*)
1468:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_LPUART1_RX
1469:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_LPUART1_TX
1470:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC2
1471:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC3 (*)
1472:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC4 (*)
1473:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_ADC5 (*)
1474:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_QSPI (*)
1475:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC2_CH1 (*)
1476:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH1
1477:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH2
1478:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH3
1479:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_CH4
1480:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_UP
1481:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_TRIG
1482:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM1_COM
1483:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH1
1484:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH2
1485:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH3
1486:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_CH4
1487:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_UP
1488:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_TRIG
1489:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM8_COM
1490:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH1
1491:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH2
1492:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH3
1493:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_CH4
1494:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM2_UP
1495:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH1
1496:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH2
1497:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH3
1498:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_CH4
1499:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_UP
1500:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM3_TRIG
1501:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH1
1502:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH2
1503:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH3
1504:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_CH4
1505:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM4_UP
1506:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH1 (*)
1507:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH2 (*)
1508:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH3 (*)
1509:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_CH4 (*)
1510:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_UP (*)
1511:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM5_TRIG (*)
1512:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_CH1
1513:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_UP
1514:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_TRIG
1515:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM15_COM
1516:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM16_CH1
1517:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM16_UP
1518:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM17_CH1
1519:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM17_UP
1520:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH1 (*)
1521:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH2 (*)
1522:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH3 (*)
1523:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_CH4 (*)
1524:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_UP (*)
1525:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_AES_IN
1526:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_AES_OUT
1527:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_TRIG (*)
1528:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_TIM20_COM (*)
1529:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_M (*)
1530:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_A (*)
1531:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_B (*)
1532:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_C (*)
1533:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_D (*)
1534:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_E (*)
1535:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_HRTIM1_F (*)
1536:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC3_CH1
1537:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC3_CH2
1538:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC4_CH1 (*)
1539:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_DAC4_CH2 (*)
1540:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI4_RX (*)
1541:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SPI4_TX (*)
1542:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SAI1_A
1543:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_SAI1_B
1544:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_FMAC_WRITE
1545:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_FMAC_READ
1546:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_CORDIC_WRITE
1547:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_CORDIC_READ
1548:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UCPD1_RX
1549:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         @arg @ref LL_DMAMUX_REQ_UCPD1_TX
1550:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   *         (*) Not on all G4 devices
1551:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1552:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_GetPeriphRequest(DMA_TypeDef *DMAx, uint32_t Channel)
1553:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1554:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   uint32_t dmamux_ccr_offset = ((((uint32_t)DMAx ^ (uint32_t)DMA1) >> 10U) * 8U);
1555:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return (READ_BIT((DMAMUX1_Channel0 + Channel + dmamux_ccr_offset)->CCR, DMAMUX_CxCR_DMAREQ_ID));
1556:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1557:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1558:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1559:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @}
1560:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1561:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1562:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /** @defgroup DMA_LL_EF_FLAG_Management FLAG_Management
1563:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @{
1564:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1565:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1566:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1567:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 1 global interrupt flag.
1568:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF1          LL_DMA_IsActiveFlag_GI1
1569:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1570:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1571:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1572:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI1(DMA_TypeDef *DMAx)
1573:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1574:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF1) == (DMA_ISR_GIF1)) ? 1UL : 0UL);
1575:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1576:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1577:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1578:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 2 global interrupt flag.
1579:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF2          LL_DMA_IsActiveFlag_GI2
1580:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1581:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1582:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1583:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI2(DMA_TypeDef *DMAx)
1584:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1585:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF2) == (DMA_ISR_GIF2)) ? 1UL : 0UL);
1586:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1587:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1588:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1589:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 3 global interrupt flag.
1590:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF3          LL_DMA_IsActiveFlag_GI3
1591:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1592:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1593:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1594:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI3(DMA_TypeDef *DMAx)
1595:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1596:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF3) == (DMA_ISR_GIF3)) ? 1UL : 0UL);
1597:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1598:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1599:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1600:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 4 global interrupt flag.
1601:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF4          LL_DMA_IsActiveFlag_GI4
1602:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1604:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1605:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI4(DMA_TypeDef *DMAx)
1606:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1607:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF4) == (DMA_ISR_GIF4)) ? 1UL : 0UL);
1608:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1609:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1610:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1611:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 5 global interrupt flag.
1612:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF5          LL_DMA_IsActiveFlag_GI5
1613:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1614:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1615:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1616:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI5(DMA_TypeDef *DMAx)
1617:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1618:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF5) == (DMA_ISR_GIF5)) ? 1UL : 0UL);
1619:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1620:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1621:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1622:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 6 global interrupt flag.
1623:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF6          LL_DMA_IsActiveFlag_GI6
1624:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1625:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1626:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1627:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI6(DMA_TypeDef *DMAx)
1628:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1629:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF6) == (DMA_ISR_GIF6)) ? 1UL : 0UL);
1630:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1631:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1632:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel7)
1633:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1634:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 7 global interrupt flag.
1635:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF7          LL_DMA_IsActiveFlag_GI7
1636:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1637:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1638:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1639:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI7(DMA_TypeDef *DMAx)
1640:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1641:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF7) == (DMA_ISR_GIF7)) ? 1UL : 0UL);
1642:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1643:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
1644:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1645:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
1646:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1647:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 8 global interrupt flag.
1648:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          GIF8          LL_DMA_IsActiveFlag_GI8
1649:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1650:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1651:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1652:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_GI8(DMA_TypeDef *DMAx)
1653:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1654:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_GIF8) == (DMA_ISR_GIF8)) ? 1UL : 0UL);
1655:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1656:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
1657:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1658:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1659:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 1 transfer complete flag.
1660:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF1         LL_DMA_IsActiveFlag_TC1
1661:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1662:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1663:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1664:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC1(DMA_TypeDef *DMAx)
1665:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1666:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF1) == (DMA_ISR_TCIF1)) ? 1UL : 0UL);
1667:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1668:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1669:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1670:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 2 transfer complete flag.
1671:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF2         LL_DMA_IsActiveFlag_TC2
1672:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1673:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1674:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1675:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC2(DMA_TypeDef *DMAx)
1676:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1677:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF2) == (DMA_ISR_TCIF2)) ? 1UL : 0UL);
1678:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1679:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1680:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1681:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 3 transfer complete flag.
1682:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF3         LL_DMA_IsActiveFlag_TC3
1683:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1684:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1685:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1686:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC3(DMA_TypeDef *DMAx)
1687:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1688:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF3) == (DMA_ISR_TCIF3)) ? 1UL : 0UL);
1689:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1690:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1691:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1692:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 4 transfer complete flag.
1693:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF4         LL_DMA_IsActiveFlag_TC4
1694:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1695:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1696:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1697:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC4(DMA_TypeDef *DMAx)
1698:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1699:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF4) == (DMA_ISR_TCIF4)) ? 1UL : 0UL);
1700:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1701:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1702:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1703:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 5 transfer complete flag.
1704:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF5         LL_DMA_IsActiveFlag_TC5
1705:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1706:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1707:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1708:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC5(DMA_TypeDef *DMAx)
1709:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1710:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF5) == (DMA_ISR_TCIF5)) ? 1UL : 0UL);
1711:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1712:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1713:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1714:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 6 transfer complete flag.
1715:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF6         LL_DMA_IsActiveFlag_TC6
1716:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1717:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1718:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1719:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC6(DMA_TypeDef *DMAx)
1720:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1721:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF6) == (DMA_ISR_TCIF6)) ? 1UL : 0UL);
1722:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1723:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1724:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel7)
1725:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1726:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 7 transfer complete flag.
1727:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF7         LL_DMA_IsActiveFlag_TC7
1728:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1729:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1730:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1731:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC7(DMA_TypeDef *DMAx)
1732:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1733:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF7) == (DMA_ISR_TCIF7)) ? 1UL : 0UL);
1734:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1735:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
1736:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1737:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
1738:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1739:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 8 transfer complete flag.
1740:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TCIF8         LL_DMA_IsActiveFlag_TC8
1741:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1742:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1743:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1744:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TC8(DMA_TypeDef *DMAx)
1745:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1746:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TCIF8) == (DMA_ISR_TCIF8)) ? 1UL : 0UL);
1747:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1748:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
1749:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1750:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1751:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 1 half transfer flag.
1752:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF1         LL_DMA_IsActiveFlag_HT1
1753:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1754:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1755:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1756:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT1(DMA_TypeDef *DMAx)
1757:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1758:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF1) == (DMA_ISR_HTIF1)) ? 1UL : 0UL);
1759:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1760:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1761:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1762:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 2 half transfer flag.
1763:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF2         LL_DMA_IsActiveFlag_HT2
1764:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1765:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1766:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1767:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT2(DMA_TypeDef *DMAx)
1768:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1769:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF2) == (DMA_ISR_HTIF2)) ? 1UL : 0UL);
1770:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1771:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1772:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1773:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 3 half transfer flag.
1774:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF3         LL_DMA_IsActiveFlag_HT3
1775:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1776:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1777:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1778:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT3(DMA_TypeDef *DMAx)
1779:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1780:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF3) == (DMA_ISR_HTIF3)) ? 1UL : 0UL);
1781:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1782:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1783:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1784:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 4 half transfer flag.
1785:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF4         LL_DMA_IsActiveFlag_HT4
1786:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1787:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1788:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1789:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT4(DMA_TypeDef *DMAx)
1790:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1791:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF4) == (DMA_ISR_HTIF4)) ? 1UL : 0UL);
1792:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1793:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1794:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1795:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 5 half transfer flag.
1796:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF5         LL_DMA_IsActiveFlag_HT5
1797:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1798:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1799:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1800:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT5(DMA_TypeDef *DMAx)
1801:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1802:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF5) == (DMA_ISR_HTIF5)) ? 1UL : 0UL);
1803:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1804:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1805:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1806:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 6 half transfer flag.
1807:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF6         LL_DMA_IsActiveFlag_HT6
1808:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1809:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1810:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1811:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT6(DMA_TypeDef *DMAx)
1812:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1813:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF6) == (DMA_ISR_HTIF6)) ? 1UL : 0UL);
1814:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1815:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1816:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
1817:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1818:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 7 half transfer flag.
1819:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF7         LL_DMA_IsActiveFlag_HT7
1820:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1821:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1822:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1823:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT7(DMA_TypeDef *DMAx)
1824:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1825:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF7) == (DMA_ISR_HTIF7)) ? 1UL : 0UL);
1826:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1827:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
1828:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1829:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
1830:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1831:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 8 half transfer flag.
1832:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          HTIF8         LL_DMA_IsActiveFlag_HT8
1833:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1834:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1835:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1836:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_HT8(DMA_TypeDef *DMAx)
1837:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1838:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_HTIF8) == (DMA_ISR_HTIF8)) ? 1UL : 0UL);
1839:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1840:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
1841:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1842:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1843:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 1 transfer error flag.
1844:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF1         LL_DMA_IsActiveFlag_TE1
1845:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1846:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1847:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1848:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE1(DMA_TypeDef *DMAx)
1849:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1850:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF1) == (DMA_ISR_TEIF1)) ? 1UL : 0UL);
1851:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1852:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1853:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1854:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 2 transfer error flag.
1855:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF2         LL_DMA_IsActiveFlag_TE2
1856:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1857:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1858:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1859:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE2(DMA_TypeDef *DMAx)
1860:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1861:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF2) == (DMA_ISR_TEIF2)) ? 1UL : 0UL);
1862:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1863:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1864:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1865:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 3 transfer error flag.
1866:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF3         LL_DMA_IsActiveFlag_TE3
1867:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1868:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1869:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1870:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE3(DMA_TypeDef *DMAx)
1871:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1872:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF3) == (DMA_ISR_TEIF3)) ? 1UL : 0UL);
1873:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1874:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1875:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1876:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 4 transfer error flag.
1877:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF4         LL_DMA_IsActiveFlag_TE4
1878:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1879:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1880:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1881:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE4(DMA_TypeDef *DMAx)
1882:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1883:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF4) == (DMA_ISR_TEIF4)) ? 1UL : 0UL);
1884:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1885:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1886:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1887:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 5 transfer error flag.
1888:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF5         LL_DMA_IsActiveFlag_TE5
1889:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1890:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1891:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1892:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE5(DMA_TypeDef *DMAx)
1893:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1894:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF5) == (DMA_ISR_TEIF5)) ? 1UL : 0UL);
1895:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1896:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1897:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1898:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 6 transfer error flag.
1899:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF6         LL_DMA_IsActiveFlag_TE6
1900:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1901:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1902:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1903:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE6(DMA_TypeDef *DMAx)
1904:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1905:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF6) == (DMA_ISR_TEIF6)) ? 1UL : 0UL);
1906:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1907:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1908:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel7)
1909:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1910:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 7 transfer error flag.
1911:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF7         LL_DMA_IsActiveFlag_TE7
1912:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1913:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1914:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1915:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE7(DMA_TypeDef *DMAx)
1916:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1917:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF7) == (DMA_ISR_TEIF7)) ? 1UL : 0UL);
1918:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1919:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel7 */
1920:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1921:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #if defined (DMA1_Channel8)
1922:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1923:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Get Channel 8 transfer error flag.
1924:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll ISR          TEIF8         LL_DMA_IsActiveFlag_TE8
1925:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1926:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval State of bit (1 or 0).
1927:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1928:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE uint32_t LL_DMA_IsActiveFlag_TE8(DMA_TypeDef *DMAx)
1929:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1930:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   return ((READ_BIT(DMAx->ISR, DMA_ISR_TEIF8) == (DMA_ISR_TEIF8)) ? 1UL : 0UL);
1931:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1932:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** #endif /* DMA1_Channel8 */
1933:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1934:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1935:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Clear Channel 1 global interrupt flag.
1936:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll IFCR         CGIF1         LL_DMA_ClearFlag_GI1
1937:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1938:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1939:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1940:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ClearFlag_GI1(DMA_TypeDef *DMAx)
 194              		.loc 3 1940 22 view .LVU53
 195              	.LBB53:
1941:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1942:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(DMAx->IFCR, DMA_IFCR_CGIF1);
 196              		.loc 3 1942 3 view .LVU54
 197 007e 0123     		movs	r3, #1
 198 0080 4360     		str	r3, [r0, #4]
 199 0082 CEE7     		b	.L26
 200              	.LVL14:
 201              	.L6:
 202              		.loc 3 1942 3 is_stmt 0 view .LVU55
 203              	.LBE53:
 204              	.LBE52:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 205              		.loc 1 179 35 discriminator 3 view .LVU56
 206 0084 254B     		ldr	r3, .L29+4
 207 0086 9842     		cmp	r0, r3
 208 0088 2AD1     		bne	.L23
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 209              		.loc 1 179 35 discriminator 6 view .LVU57
 210 008a 29B9     		cbnz	r1, .L9
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 211              		.loc 1 179 35 view .LVU58
 212 008c 0833     		adds	r3, r3, #8
 213 008e DDE7     		b	.L8
 214              	.L7:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 215              		.loc 1 179 35 discriminator 10 view .LVU59
 216 0090 0129     		cmp	r1, #1
 217 0092 05D1     		bne	.L10
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 218              		.loc 1 179 35 view .LVU60
 219 0094 254B     		ldr	r3, .L29+20
 220 0096 D9E7     		b	.L8
 221              	.L9:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 222              		.loc 1 179 35 discriminator 14 view .LVU61
 223 0098 0129     		cmp	r1, #1
 224 009a 05D1     		bne	.L11
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 225              		.loc 1 179 35 view .LVU62
 226 009c 244B     		ldr	r3, .L29+24
 227 009e D5E7     		b	.L8
 228              	.L10:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 229              		.loc 1 179 35 discriminator 18 view .LVU63
 230 00a0 0229     		cmp	r1, #2
 231 00a2 05D1     		bne	.L12
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 232              		.loc 1 179 35 view .LVU64
 233 00a4 234B     		ldr	r3, .L29+28
 234 00a6 D1E7     		b	.L8
 235              	.L11:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 236              		.loc 1 179 35 discriminator 22 view .LVU65
 237 00a8 0229     		cmp	r1, #2
 238 00aa 05D1     		bne	.L13
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 239              		.loc 1 179 35 view .LVU66
 240 00ac 224B     		ldr	r3, .L29+32
 241 00ae CDE7     		b	.L8
 242              	.L12:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 243              		.loc 1 179 35 discriminator 26 view .LVU67
 244 00b0 0329     		cmp	r1, #3
 245 00b2 05D1     		bne	.L14
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 246              		.loc 1 179 35 view .LVU68
 247 00b4 214B     		ldr	r3, .L29+36
 248 00b6 C9E7     		b	.L8
 249              	.L13:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 250              		.loc 1 179 35 discriminator 30 view .LVU69
 251 00b8 0329     		cmp	r1, #3
 252 00ba 05D1     		bne	.L15
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 253              		.loc 1 179 35 view .LVU70
 254 00bc 204B     		ldr	r3, .L29+40
 255 00be C5E7     		b	.L8
 256              	.L14:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 257              		.loc 1 179 35 discriminator 34 view .LVU71
 258 00c0 0429     		cmp	r1, #4
 259 00c2 07D1     		bne	.L16
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 260              		.loc 1 179 35 view .LVU72
 261 00c4 1F4B     		ldr	r3, .L29+44
 262 00c6 C1E7     		b	.L8
 263              	.L15:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 264              		.loc 1 179 35 discriminator 38 view .LVU73
 265 00c8 1F4B     		ldr	r3, .L29+48
 266 00ca 204A     		ldr	r2, .L29+52
 267 00cc 0429     		cmp	r1, #4
 268 00ce 18BF     		it	ne
 269 00d0 1346     		movne	r3, r2
 270 00d2 BBE7     		b	.L8
 271              	.L16:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 272              		.loc 1 179 35 discriminator 41 view .LVU74
 273 00d4 1E4B     		ldr	r3, .L29+56
 274 00d6 1D4A     		ldr	r2, .L29+52
 275 00d8 0529     		cmp	r1, #5
 276 00da 18BF     		it	ne
 277 00dc 1346     		movne	r3, r2
 278 00de B5E7     		b	.L8
 279              	.L23:
 179:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 280              		.loc 1 179 35 view .LVU75
 281 00e0 1A4B     		ldr	r3, .L29+52
 282 00e2 B3E7     		b	.L8
 283              	.L17:
 204:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 284              		.loc 1 204 10 is_stmt 1 view .LVU76
 204:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 285              		.loc 1 204 13 is_stmt 0 view .LVU77
 286 00e4 0129     		cmp	r1, #1
 287 00e6 02D1     		bne	.L18
 207:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 288              		.loc 1 207 7 is_stmt 1 view .LVU78
 289              	.LVL15:
 290              	.LBB54:
 291              	.LBI54:
1943:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1944:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1945:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1946:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Clear Channel 2 global interrupt flag.
1947:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll IFCR         CGIF2         LL_DMA_ClearFlag_GI2
1948:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1949:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1950:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1951:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ClearFlag_GI2(DMA_TypeDef *DMAx)
 292              		.loc 3 1951 22 view .LVU79
 293              	.LBB55:
1952:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1953:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(DMAx->IFCR, DMA_IFCR_CGIF2);
 294              		.loc 3 1953 3 view .LVU80
 295 00e8 1023     		movs	r3, #16
 296              	.LVL16:
 297              	.L27:
 298              		.loc 3 1953 3 is_stmt 0 view .LVU81
 299              	.LBE55:
 300              	.LBE54:
 301              	.LBB56:
 302              	.LBB57:
1954:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1955:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1956:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1957:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Clear Channel 3 global interrupt flag.
1958:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll IFCR         CGIF3         LL_DMA_ClearFlag_GI3
1959:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1960:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1961:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1962:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ClearFlag_GI3(DMA_TypeDef *DMAx)
1963:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1964:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(DMAx->IFCR, DMA_IFCR_CGIF3);
1965:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1966:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1967:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1968:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Clear Channel 4 global interrupt flag.
1969:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll IFCR         CGIF4         LL_DMA_ClearFlag_GI4
1970:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1971:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1972:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1973:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ClearFlag_GI4(DMA_TypeDef *DMAx)
1974:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1975:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(DMAx->IFCR, DMA_IFCR_CGIF4);
1976:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1977:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1978:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1979:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Clear Channel 5 global interrupt flag.
1980:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll IFCR         CGIF5         LL_DMA_ClearFlag_GI5
1981:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1982:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1983:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1984:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ClearFlag_GI5(DMA_TypeDef *DMAx)
1985:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1986:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(DMAx->IFCR, DMA_IFCR_CGIF5);
1987:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
1988:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** 
1989:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** /**
1990:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @brief  Clear Channel 6 global interrupt flag.
1991:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @rmtoll IFCR         CGIF6         LL_DMA_ClearFlag_GI6
1992:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @param  DMAx DMAx Instance
1993:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   * @retval None
1994:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   */
1995:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** __STATIC_INLINE void LL_DMA_ClearFlag_GI6(DMA_TypeDef *DMAx)
1996:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
1997:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(DMAx->IFCR, DMA_IFCR_CGIF6);
 303              		.loc 3 1997 3 view .LVU82
 304 00ea 4360     		str	r3, [r0, #4]
 305 00ec 9FE7     		b	.L4
 306              	.L18:
 307              		.loc 3 1997 3 view .LVU83
 308              	.LBE57:
 309              	.LBE56:
 209:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 310              		.loc 1 209 10 is_stmt 1 view .LVU84
 209:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 311              		.loc 1 209 13 is_stmt 0 view .LVU85
 312 00ee 0229     		cmp	r1, #2
 313 00f0 02D1     		bne	.L19
 212:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 314              		.loc 1 212 7 is_stmt 1 view .LVU86
 315              	.LVL17:
 316              	.LBB59:
 317              	.LBI59:
1962:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 318              		.loc 3 1962 22 view .LVU87
 319              	.LBB60:
1964:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 320              		.loc 3 1964 3 view .LVU88
 321 00f2 4FF48073 		mov	r3, #256
 322 00f6 F8E7     		b	.L27
 323              	.LVL18:
 324              	.L19:
1964:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 325              		.loc 3 1964 3 is_stmt 0 view .LVU89
 326              	.LBE60:
 327              	.LBE59:
 214:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 328              		.loc 1 214 10 is_stmt 1 view .LVU90
 214:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 329              		.loc 1 214 13 is_stmt 0 view .LVU91
 330 00f8 0329     		cmp	r1, #3
 331 00fa 02D1     		bne	.L20
 217:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 332              		.loc 1 217 7 is_stmt 1 view .LVU92
 333              	.LVL19:
 334              	.LBB61:
 335              	.LBI61:
1973:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 336              		.loc 3 1973 22 view .LVU93
 337              	.LBB62:
1975:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 338              		.loc 3 1975 3 view .LVU94
 339 00fc 4FF48053 		mov	r3, #4096
 340 0100 F3E7     		b	.L27
 341              	.LVL20:
 342              	.L20:
1975:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 343              		.loc 3 1975 3 is_stmt 0 view .LVU95
 344              	.LBE62:
 345              	.LBE61:
 219:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 346              		.loc 1 219 10 is_stmt 1 view .LVU96
 219:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 347              		.loc 1 219 13 is_stmt 0 view .LVU97
 348 0102 0429     		cmp	r1, #4
 349 0104 02D1     		bne	.L21
 222:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 350              		.loc 1 222 7 is_stmt 1 view .LVU98
 351              	.LVL21:
 352              	.LBB63:
 353              	.LBI63:
1984:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 354              		.loc 3 1984 22 view .LVU99
 355              	.LBB64:
1986:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 356              		.loc 3 1986 3 view .LVU100
 357 0106 4FF48033 		mov	r3, #65536
 358 010a EEE7     		b	.L27
 359              	.LVL22:
 360              	.L21:
1986:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 361              		.loc 3 1986 3 is_stmt 0 view .LVU101
 362              	.LBE64:
 363              	.LBE63:
 225:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 364              		.loc 1 225 10 is_stmt 1 view .LVU102
 225:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     {
 365              		.loc 1 225 13 is_stmt 0 view .LVU103
 366 010c 0529     		cmp	r1, #5
 367 010e 8DD1     		bne	.L22
 228:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****     }
 368              		.loc 1 228 7 is_stmt 1 view .LVU104
 369              	.LVL23:
 370              	.LBB65:
 371              	.LBI56:
1995:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 372              		.loc 3 1995 22 view .LVU105
 373              	.LBB58:
 374              		.loc 3 1997 3 view .LVU106
 375 0110 4FF48013 		mov	r3, #1048576
 376 0114 E9E7     		b	.L27
 377              	.L30:
 378 0116 00BF     		.align	2
 379              	.L29:
 380 0118 00000240 		.word	1073872896
 381 011c 00040240 		.word	1073873920
 382 0120 00100240 		.word	1073876992
 383 0124 08000240 		.word	1073872904
 384 0128 80001000 		.word	1048704
 385 012c 1C000240 		.word	1073872924
 386 0130 1C040240 		.word	1073873948
 387 0134 30000240 		.word	1073872944
 388 0138 30040240 		.word	1073873968
 389 013c 44000240 		.word	1073872964
 390 0140 44040240 		.word	1073873988
 391 0144 58000240 		.word	1073872984
 392 0148 58040240 		.word	1073874008
 393 014c 6C040240 		.word	1073874028
 394 0150 6C000240 		.word	1073873004
 395              	.LBE58:
 396              	.LBE65:
 397              		.cfi_endproc
 398              	.LFE321:
 400              		.section	.text.LL_DMA_Init,"ax",%progbits
 401              		.align	1
 402              		.global	LL_DMA_Init
 403              		.syntax unified
 404              		.thumb
 405              		.thumb_func
 406              		.fpu fpv4-sp-d16
 408              	LL_DMA_Init:
 409              	.LVL24:
 410              	.LFB322:
 252:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 253:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /**
 254:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @brief  Initialize the DMA registers according to the specified parameters in DMA_InitStruct.
 255:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @note   To convert DMAx_Channely Instance to DMAx Instance and Channely, use helper macros :
 256:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref __LL_DMA_GET_INSTANCE
 257:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref __LL_DMA_GET_CHANNEL
 258:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @param  DMAx DMAx Instance
 259:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @param  Channel This parameter can be one of the following values:
 260:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_1
 261:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_2
 262:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_3
 263:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_4
 264:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_5
 265:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_6
 266:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_7 (*)
 267:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         @arg @ref LL_DMA_CHANNEL_8 (*)
 268:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *         (*) Not on all G4 devices
 269:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @param  DMA_InitStruct pointer to a @ref LL_DMA_InitTypeDef structure.
 270:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @retval An ErrorStatus enumeration value:
 271:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *          - SUCCESS: DMA registers are initialized
 272:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   *          - ERROR: Not applicable
 273:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
 274:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** uint32_t LL_DMA_Init(DMA_TypeDef *DMAx, uint32_t Channel, LL_DMA_InitTypeDef *DMA_InitStruct)
 275:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** {
 411              		.loc 1 275 1 view -0
 412              		.cfi_startproc
 413              		@ args = 0, pretend = 0, frame = 0
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 276:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /* Check the DMA Instance DMAx and Channel parameters*/
 277:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_ALL_CHANNEL_INSTANCE(DMAx, Channel));
 415              		.loc 1 277 3 view .LVU108
 278:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 279:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /* Check the DMA parameters from DMA_InitStruct */
 280:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_DIRECTION(DMA_InitStruct->Direction));
 416              		.loc 1 280 3 view .LVU109
 281:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_MODE(DMA_InitStruct->Mode));
 417              		.loc 1 281 3 view .LVU110
 282:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_PERIPHINCMODE(DMA_InitStruct->PeriphOrM2MSrcIncMode));
 418              		.loc 1 282 3 view .LVU111
 283:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_MEMORYINCMODE(DMA_InitStruct->MemoryOrM2MDstIncMode));
 419              		.loc 1 283 3 view .LVU112
 284:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_PERIPHDATASIZE(DMA_InitStruct->PeriphOrM2MSrcDataSize));
 420              		.loc 1 284 3 view .LVU113
 285:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_MEMORYDATASIZE(DMA_InitStruct->MemoryOrM2MDstDataSize));
 421              		.loc 1 285 3 view .LVU114
 286:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_NBDATA(DMA_InitStruct->NbData));
 422              		.loc 1 286 3 view .LVU115
 287:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_PERIPHREQUEST(DMA_InitStruct->PeriphRequest));
 423              		.loc 1 287 3 view .LVU116
 288:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   assert_param(IS_LL_DMA_PRIORITY(DMA_InitStruct->Priority));
 424              		.loc 1 288 3 view .LVU117
 289:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 290:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /*---------------------------- DMAx CCR Configuration ------------------------
 291:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * Configure DMAx_Channely: data transfer direction, data transfer mode,
 292:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    *                          peripheral and memory increment mode,
 293:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    *                          data size alignment and  priority level with parameters :
 294:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - Direction:      DMA_CCR_DIR and DMA_CCR_MEM2MEM bits
 295:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - Mode:           DMA_CCR_CIRC bit
 296:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - PeriphOrM2MSrcIncMode:  DMA_CCR_PINC bit
 297:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - MemoryOrM2MDstIncMode:  DMA_CCR_MINC bit
 298:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - PeriphOrM2MSrcDataSize: DMA_CCR_PSIZE[1:0] bits
 299:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - MemoryOrM2MDstDataSize: DMA_CCR_MSIZE[1:0] bits
 300:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - Priority:               DMA_CCR_PL[1:0] bits
 301:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    */
 302:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   LL_DMA_ConfigTransfer(DMAx, Channel, DMA_InitStruct->Direction              | \
 425              		.loc 1 302 3 view .LVU118
 426              	.LBB76:
 427              	.LBI76:
 600:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 428              		.loc 3 600 22 view .LVU119
 429              	.LBB77:
 602:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CC
 430              		.loc 3 602 3 view .LVU120
 603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM | DMA_CCR_CIRC | DMA_CCR_PINC | DMA_CCR_MINC | DMA_CCR_P
 431              		.loc 3 603 3 view .LVU121
 432 0000 194B     		ldr	r3, .L32
 433              	.LBE77:
 434              	.LBE76:
 275:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /* Check the DMA Instance DMAx and Channel parameters*/
 435              		.loc 1 275 1 is_stmt 0 view .LVU122
 436 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 437              		.cfi_def_cfa_offset 20
 438              		.cfi_offset 4, -20
 439              		.cfi_offset 5, -16
 440              		.cfi_offset 6, -12
 441              		.cfi_offset 7, -8
 442              		.cfi_offset 14, -4
 443              	.LBB82:
 444              	.LBB78:
 603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM | DMA_CCR_CIRC | DMA_CCR_PINC | DMA_CCR_MINC | DMA_CCR_P
 445              		.loc 3 603 3 view .LVU123
 446 0004 5E5C     		ldrb	r6, [r3, r1]	@ zero_extendqisi2
 447              	.LBE78:
 448              	.LBE82:
 449              		.loc 1 302 79 view .LVU124
 450 0006 D2E90237 		ldrd	r3, r7, [r2, #8]
 451 000a 3B43     		orrs	r3, r3, r7
 303:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->Mode                   | \
 452              		.loc 1 303 64 view .LVU125
 453 000c 1769     		ldr	r7, [r2, #16]
 454              	.LBB83:
 455              	.LBB79:
 603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM | DMA_CCR_CIRC | DMA_CCR_PINC | DMA_CCR_MINC | DMA_CCR_P
 456              		.loc 3 603 3 view .LVU126
 457 000e 3558     		ldr	r5, [r6, r0]
 458              	.LBE79:
 459              	.LBE83:
 460              		.loc 1 303 64 view .LVU127
 461 0010 3B43     		orrs	r3, r3, r7
 304:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->PeriphOrM2MSrcIncMode  | \
 462              		.loc 1 304 64 view .LVU128
 463 0012 5769     		ldr	r7, [r2, #20]
 464 0014 3B43     		orrs	r3, r3, r7
 305:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->MemoryOrM2MDstIncMode  | \
 465              		.loc 1 305 64 view .LVU129
 466 0016 9769     		ldr	r7, [r2, #24]
 467 0018 3B43     		orrs	r3, r3, r7
 306:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->PeriphOrM2MSrcDataSize | \
 468              		.loc 1 306 64 view .LVU130
 469 001a D769     		ldr	r7, [r2, #28]
 470 001c 3B43     		orrs	r3, r3, r7
 302:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->Mode                   | \
 471              		.loc 1 302 3 view .LVU131
 472 001e 976A     		ldr	r7, [r2, #40]
 473              	.LBB84:
 474              	.LBB80:
 603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM | DMA_CCR_CIRC | DMA_CCR_PINC | DMA_CCR_MINC | DMA_CCR_P
 475              		.loc 3 603 3 view .LVU132
 476 0020 25F4FF45 		bic	r5, r5, #32640
 477              	.LBE80:
 478              	.LBE84:
 302:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->Mode                   | \
 479              		.loc 1 302 3 view .LVU133
 480 0024 3B43     		orrs	r3, r3, r7
 481              	.LBB85:
 482              	.LBB81:
 603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM | DMA_CCR_CIRC | DMA_CCR_PINC | DMA_CCR_MINC | DMA_CCR_P
 483              		.loc 3 603 3 view .LVU134
 484 0026 25F07005 		bic	r5, r5, #112
 485 002a 3418     		adds	r4, r6, r0
 486 002c 2B43     		orrs	r3, r3, r5
 487 002e 3350     		str	r3, [r6, r0]
 488              	.LVL25:
 603:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CCR_DIR | DMA_CCR_MEM2MEM | DMA_CCR_CIRC | DMA_CCR_PINC | DMA_CCR_MINC | DMA_CCR_P
 489              		.loc 3 603 3 view .LVU135
 490              	.LBE81:
 491              	.LBE85:
 307:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->MemoryOrM2MDstDataSize | \
 308:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****                         DMA_InitStruct->Priority);
 309:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 310:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /*-------------------------- DMAx CMAR Configuration -------------------------
 311:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * Configure the memory or destination base address with parameter :
 312:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - MemoryOrM2MDstAddress: DMA_CMAR_MA[31:0] bits
 313:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    */
 314:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   LL_DMA_SetMemoryAddress(DMAx, Channel, DMA_InitStruct->MemoryOrM2MDstAddress);
 492              		.loc 1 314 3 is_stmt 1 view .LVU136
 493 0030 5368     		ldr	r3, [r2, #4]
 494              	.LVL26:
 495              	.LBB86:
 496              	.LBI86:
1093:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 497              		.loc 3 1093 22 view .LVU137
 498              	.LBB87:
1095:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CMA
 499              		.loc 3 1095 3 view .LVU138
1096:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 500              		.loc 3 1096 3 view .LVU139
 501 0032 E360     		str	r3, [r4, #12]
 502              	.LVL27:
1096:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 503              		.loc 3 1096 3 is_stmt 0 view .LVU140
 504              	.LBE87:
 505              	.LBE86:
 315:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 316:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /*-------------------------- DMAx CPAR Configuration -------------------------
 317:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * Configure the peripheral or source base address with parameter :
 318:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - PeriphOrM2MSrcAddress: DMA_CPAR_PA[31:0] bits
 319:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    */
 320:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   LL_DMA_SetPeriphAddress(DMAx, Channel, DMA_InitStruct->PeriphOrM2MSrcAddress);
 506              		.loc 1 320 3 is_stmt 1 view .LVU141
 507 0034 1368     		ldr	r3, [r2]
 508              	.LVL28:
 509              	.LBB88:
 510              	.LBI88:
1118:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 511              		.loc 3 1118 22 view .LVU142
 512              	.LBB89:
1120:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   WRITE_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CPA
 513              		.loc 3 1120 3 view .LVU143
1121:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 514              		.loc 3 1121 3 view .LVU144
 515 0036 A360     		str	r3, [r4, #8]
 516              	.LVL29:
1121:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 517              		.loc 3 1121 3 is_stmt 0 view .LVU145
 518              	.LBE89:
 519              	.LBE88:
 321:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 322:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /*--------------------------- DMAx CNDTR Configuration -----------------------
 323:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * Configure the peripheral base address with parameter :
 324:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - NbData: DMA_CNDTR_NDT[15:0] bits
 325:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    */
 326:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   LL_DMA_SetDataLength(DMAx, Channel, DMA_InitStruct->NbData);
 520              		.loc 1 326 3 is_stmt 1 view .LVU146
 521              	.LBB90:
 522              	.LBI90:
 998:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 523              		.loc 3 998 22 view .LVU147
 524              	.LBB91:
1000:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG(((DMA_Channel_TypeDef *)((uint32_t)(dma_base_addr + CHANNEL_OFFSET_TAB[Channel])))->CN
 525              		.loc 3 1000 3 view .LVU148
1001:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CNDTR_NDT, NbData);
 526              		.loc 3 1001 3 view .LVU149
 527 0038 6368     		ldr	r3, [r4, #4]
 528 003a 156A     		ldr	r5, [r2, #32]
 529              	.LBE91:
 530              	.LBE90:
 531              	.LBB93:
 532              	.LBB94:
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 533              		.loc 3 1410 3 is_stmt 0 view .LVU150
 534 003c 526A     		ldr	r2, [r2, #36]
 535              	.LVL30:
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 536              		.loc 3 1410 3 view .LVU151
 537              	.LBE94:
 538              	.LBE93:
 539              	.LBB97:
 540              	.LBB92:
1001:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CNDTR_NDT, NbData);
 541              		.loc 3 1001 3 view .LVU152
 542 003e 1B0C     		lsrs	r3, r3, #16
 543 0040 1B04     		lsls	r3, r3, #16
 544 0042 2B43     		orrs	r3, r3, r5
 545 0044 6360     		str	r3, [r4, #4]
 546              	.LVL31:
1001:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****              DMA_CNDTR_NDT, NbData);
 547              		.loc 3 1001 3 view .LVU153
 548              	.LBE92:
 549              	.LBE97:
 327:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 328:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /*--------------------------- DMAMUXx CCR Configuration ----------------------
 329:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * Configure the DMA request for DMA Channels on DMAMUX Channel x with parameter :
 330:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    * - PeriphRequest: DMA_CxCR[7:0] bits
 331:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****    */
 332:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   LL_DMA_SetPeriphRequest(DMAx, Channel, DMA_InitStruct->PeriphRequest);
 550              		.loc 1 332 3 is_stmt 1 view .LVU154
 551              	.LBB98:
 552              	.LBI93:
1407:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** {
 553              		.loc 3 1407 22 view .LVU155
 554              	.LBB95:
1409:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG((DMAMUX1_Channel0 + Channel + dmamux_ccr_offset)->CCR, DMAMUX_CxCR_DMAREQ_ID, PeriphRe
 555              		.loc 3 1409 3 view .LVU156
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 556              		.loc 3 1410 3 view .LVU157
1409:../../..\CubeG4\include/stm32g4xx_ll_dma.h ****   MODIFY_REG((DMAMUX1_Channel0 + Channel + dmamux_ccr_offset)->CCR, DMAMUX_CxCR_DMAREQ_ID, PeriphRe
 557              		.loc 3 1409 68 is_stmt 0 view .LVU158
 558 0046 094B     		ldr	r3, .L32+4
 559 0048 83EA9020 		eor	r0, r3, r0, lsr #10
 560              	.LVL32:
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 561              		.loc 3 1410 3 view .LVU159
 562 004c 01EBC001 		add	r1, r1, r0, lsl #3
 563              	.LVL33:
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 564              		.loc 3 1410 3 view .LVU160
 565 0050 8900     		lsls	r1, r1, #2
 566 0052 01F18041 		add	r1, r1, #1073741824
 567 0056 01F50231 		add	r1, r1, #133120
 568              	.LBE95:
 569              	.LBE98:
 333:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 334:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   return (uint32_t)SUCCESS;
 335:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** }
 570              		.loc 1 335 1 view .LVU161
 571 005a 0020     		movs	r0, #0
 572              	.LBB99:
 573              	.LBB96:
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 574              		.loc 3 1410 3 view .LVU162
 575 005c 0B68     		ldr	r3, [r1]
 576 005e 23F0FF03 		bic	r3, r3, #255
 577 0062 1343     		orrs	r3, r3, r2
 578 0064 0B60     		str	r3, [r1]
 579              	.LVL34:
1410:../../..\CubeG4\include/stm32g4xx_ll_dma.h **** }
 580              		.loc 3 1410 3 view .LVU163
 581              	.LBE96:
 582              	.LBE99:
 334:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** }
 583              		.loc 1 334 3 is_stmt 1 view .LVU164
 584              		.loc 1 335 1 is_stmt 0 view .LVU165
 585 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 586              	.L33:
 587              		.align	2
 588              	.L32:
 589 0068 00000000 		.word	.LANCHOR0
 590 006c 80001000 		.word	1048704
 591              		.cfi_endproc
 592              	.LFE322:
 594              		.section	.text.LL_DMA_StructInit,"ax",%progbits
 595              		.align	1
 596              		.global	LL_DMA_StructInit
 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu fpv4-sp-d16
 602              	LL_DMA_StructInit:
 603              	.LVL35:
 604              	.LFB323:
 336:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** 
 337:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** /**
 338:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @brief  Set each @ref LL_DMA_InitTypeDef field to default value.
 339:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @param  DMA_InitStruct Pointer to a @ref LL_DMA_InitTypeDef structure.
 340:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   * @retval None
 341:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   */
 342:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** void LL_DMA_StructInit(LL_DMA_InitTypeDef *DMA_InitStruct)
 343:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** {
 605              		.loc 1 343 1 is_stmt 1 view -0
 606              		.cfi_startproc
 607              		@ args = 0, pretend = 0, frame = 0
 608              		@ frame_needed = 0, uses_anonymous_args = 0
 609              		@ link register save eliminated.
 344:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   /* Set DMA_InitStruct fields to default values */
 345:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->PeriphOrM2MSrcAddress  = (uint32_t)0x00000000U;
 610              		.loc 1 345 3 view .LVU167
 611              		.loc 1 345 42 is_stmt 0 view .LVU168
 612 0000 0023     		movs	r3, #0
 346:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->MemoryOrM2MDstAddress  = (uint32_t)0x00000000U;
 613              		.loc 1 346 42 view .LVU169
 614 0002 C0E90033 		strd	r3, r3, [r0]
 347:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->Direction              = LL_DMA_DIRECTION_PERIPH_TO_MEMORY;
 615              		.loc 1 347 3 is_stmt 1 view .LVU170
 348:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->Mode                   = LL_DMA_MODE_NORMAL;
 616              		.loc 1 348 42 is_stmt 0 view .LVU171
 617 0006 C0E90233 		strd	r3, r3, [r0, #8]
 349:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->PeriphOrM2MSrcIncMode  = LL_DMA_PERIPH_NOINCREMENT;
 618              		.loc 1 349 3 is_stmt 1 view .LVU172
 350:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->MemoryOrM2MDstIncMode  = LL_DMA_MEMORY_NOINCREMENT;
 619              		.loc 1 350 42 is_stmt 0 view .LVU173
 620 000a C0E90433 		strd	r3, r3, [r0, #16]
 351:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->PeriphOrM2MSrcDataSize = LL_DMA_PDATAALIGN_BYTE;
 621              		.loc 1 351 3 is_stmt 1 view .LVU174
 352:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->MemoryOrM2MDstDataSize = LL_DMA_MDATAALIGN_BYTE;
 622              		.loc 1 352 42 is_stmt 0 view .LVU175
 623 000e C0E90633 		strd	r3, r3, [r0, #24]
 353:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->NbData                 = (uint32_t)0x00000000U;
 624              		.loc 1 353 3 is_stmt 1 view .LVU176
 354:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->PeriphRequest          = LL_DMAMUX_REQ_MEM2MEM;
 625              		.loc 1 354 42 is_stmt 0 view .LVU177
 626 0012 C0E90833 		strd	r3, r3, [r0, #32]
 355:../../..\CubeG4\src/stm32g4xx_ll_dma.c ****   DMA_InitStruct->Priority               = LL_DMA_PRIORITY_LOW;
 627              		.loc 1 355 3 is_stmt 1 view .LVU178
 628              		.loc 1 355 42 is_stmt 0 view .LVU179
 629 0016 8362     		str	r3, [r0, #40]
 356:../../..\CubeG4\src/stm32g4xx_ll_dma.c **** }
 630              		.loc 1 356 1 view .LVU180
 631 0018 7047     		bx	lr
 632              		.cfi_endproc
 633              	.LFE323:
 635              		.section	.rodata.CHANNEL_OFFSET_TAB,"a"
 636              		.set	.LANCHOR0,. + 0
 639              	CHANNEL_OFFSET_TAB:
 640 0000 08       		.byte	8
 641 0001 1C       		.byte	28
 642 0002 30       		.byte	48
 643 0003 44       		.byte	68
 644 0004 58       		.byte	88
 645 0005 6C       		.byte	108
 646              		.text
 647              	.Letext0:
 648              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 649              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 650              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 651              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 652              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 653              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
