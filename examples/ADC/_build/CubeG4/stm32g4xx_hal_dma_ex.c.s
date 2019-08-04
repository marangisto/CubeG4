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
  13              		.file	"stm32g4xx_hal_dma_ex.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_DMAEx_ConfigMuxSync,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_DMAEx_ConfigMuxSync
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_DMAEx_ConfigMuxSync:
  27              	.LVL0:
  28              	.LFB325:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_dma_ex.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @file    stm32g4xx_hal_dma_ex.c
   4:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @brief   DMA Extension HAL module driver
   6:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *         This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *         functionalities of the DMA Extension peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *           + Extended features functions
   9:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *
  10:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   @verbatim
  11:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   ==============================================================================
  12:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                         ##### How to use this driver #####
  13:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   ==============================================================================
  14:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   [..]
  15:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   The DMA Extension HAL driver can be used as follows:
  16:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  17:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****    (+) Configure the DMA_MUX Synchronization Block using HAL_DMAEx_ConfigMuxSync function.
  18:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****    (+) Configure the DMA_MUX Request Generator Block using HAL_DMAEx_ConfigMuxRequestGenerator func
  19:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****        Functions HAL_DMAEx_EnableMuxRequestGenerator and HAL_DMAEx_DisableMuxRequestGenerator can t
  20:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****        to respectively enable/disable the request generator.
  21:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  22:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****    (+) To handle the DMAMUX Interrupts, the function  HAL_DMAEx_MUX_IRQHandler should be called fro
  23:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****        the DMAMUX IRQ handler i.e DMAMUX1_OVR_IRQHandler.
  24:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****        As only one interrupt line is available for all DMAMUX channels and request generators , HAL
  25:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****        called with, as parameter, the appropriate DMA handle as many as used DMAs in the user proje
  26:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       (exception done if a given DMA is not using the DMAMUX SYNC block neither a request generator
  27:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  28:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   @endverbatim
  29:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   ******************************************************************************
  30:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @attention
  31:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *
  32:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  33:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * All rights reserved.</center></h2>
  34:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *
  35:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  36:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * the "License"; You may not use this file except in compliance with the
  37:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * License. You may obtain a copy of the License at:
  38:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *                        opensource.org/licenses/BSD-3-Clause
  39:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *
  40:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   ******************************************************************************
  41:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
  42:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  43:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Includes ------------------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** #include "stm32g4xx_hal.h"
  45:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  46:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /** @addtogroup STM32G4xx_HAL_Driver
  47:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @{
  48:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
  49:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  50:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /** @defgroup DMAEx DMAEx
  51:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @brief DMA Extended HAL module driver
  52:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @{
  53:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
  54:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  55:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** #ifdef HAL_DMA_MODULE_ENABLED
  56:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  57:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Private typedef -----------------------------------------------------------*/
  58:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Private define ------------------------------------------------------------*/
  59:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Private macro -------------------------------------------------------------*/
  60:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Private variables ---------------------------------------------------------*/
  61:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Private Constants ---------------------------------------------------------*/
  62:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Private function prototypes -----------------------------------------------*/
  63:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /* Private functions ---------------------------------------------------------*/
  64:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  65:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  66:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /** @defgroup DMAEx_Exported_Functions DMAEx Exported Functions
  67:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @{
  68:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
  69:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  70:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /** @defgroup DMAEx_Exported_Functions_Group1 DMAEx Extended features functions
  71:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *  @brief   Extended features functions
  72:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *
  73:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** @verbatim
  74:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****  ===============================================================================
  75:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                 #####  Extended features functions  #####
  76:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****  ===============================================================================
  77:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     [..]  This section provides functions allowing to:
  78:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  79:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     (+) Configure the DMAMUX Synchronization Block using HAL_DMAEx_ConfigMuxSync function.
  80:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     (+) Configure the DMAMUX Request Generator Block using HAL_DMAEx_ConfigMuxRequestGenerator func
  81:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****        Functions HAL_DMAEx_EnableMuxRequestGenerator and HAL_DMAEx_DisableMuxRequestGenerator can t
  82:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****        to respectively enable/disable the request generator.
  83:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  84:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** @endverbatim
  85:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @{
  86:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
  87:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  88:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  89:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /**
  90:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @brief  Configure the DMAMUX synchronization parameters for a given DMA channel (instance).
  91:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
  92:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *                     the configuration information for the specified DMA channel.
  93:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @param  pSyncConfig : pointer to HAL_DMA_MuxSyncConfigTypeDef : contains the DMAMUX synchroniza
  94:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @retval HAL status
  95:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
  96:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** HAL_StatusTypeDef HAL_DMAEx_ConfigMuxSync(DMA_HandleTypeDef *hdma, HAL_DMA_MuxSyncConfigTypeDef *pS
  97:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** {
  30              		.loc 1 97 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  98:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check the parameters */
  99:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
  34              		.loc 1 99 3 view .LVU1
 100:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 101:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_SYNC_SIGNAL_ID(pSyncConfig->SyncSignalID));
  35              		.loc 1 101 3 view .LVU2
 102:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 103:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_SYNC_POLARITY(pSyncConfig-> SyncPolarity));
  36              		.loc 1 103 3 view .LVU3
 104:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_SYNC_STATE(pSyncConfig->SyncEnable));
  37              		.loc 1 104 3 view .LVU4
 105:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_SYNC_EVENT(pSyncConfig->EventEnable));
  38              		.loc 1 105 3 view .LVU5
 106:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_SYNC_REQUEST_NUMBER(pSyncConfig->RequestNumber));
  39              		.loc 1 106 3 view .LVU6
 107:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 108:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /*Check if the DMA state is ready */
 109:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   if (hdma->State == HAL_DMA_STATE_READY)
  40              		.loc 1 109 3 view .LVU7
  41              		.loc 1 109 11 is_stmt 0 view .LVU8
  42 0000 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
  43              		.loc 1 109 6 view .LVU9
  44 0004 012B     		cmp	r3, #1
  97:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check the parameters */
  45              		.loc 1 97 1 view .LVU10
  46 0006 30B5     		push	{r4, r5, lr}
  47              		.cfi_def_cfa_offset 12
  48              		.cfi_offset 4, -12
  49              		.cfi_offset 5, -8
  50              		.cfi_offset 14, -4
  51              		.loc 1 109 6 view .LVU11
  52 0008 1BD1     		bne	.L3
 110:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 111:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Process Locked */
 112:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     __HAL_LOCK(hdma);
  53              		.loc 1 112 5 is_stmt 1 view .LVU12
  54              		.loc 1 112 5 view .LVU13
  55 000a 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
  56 000e 012B     		cmp	r3, #1
  57 0010 19D0     		beq	.L4
  58              		.loc 1 112 5 discriminator 2 view .LVU14
 113:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 114:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Set the new synchronization parameters (and keep the request ID filled during the Init)*/
 115:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     MODIFY_REG(hdma->DMAmuxChannel->CCR, \
  59              		.loc 1 115 5 discriminator 2 view .LVU15
  60 0012 D1E90043 		ldrd	r4, r3, [r1]
  61 0016 43EA0463 		orr	r3, r3, r4, lsl #24
  62 001a CC68     		ldr	r4, [r1, #12]
  63 001c 856C     		ldr	r5, [r0, #72]
  64 001e 013C     		subs	r4, r4, #1
  65 0020 43EAC443 		orr	r3, r3, r4, lsl #19
  66 0024 0C7A     		ldrb	r4, [r1, #8]	@ zero_extendqisi2
  67 0026 2A68     		ldr	r2, [r5]
  68 0028 497A     		ldrb	r1, [r1, #9]	@ zero_extendqisi2
  69              	.LVL1:
  70              		.loc 1 115 5 is_stmt 0 discriminator 2 view .LVU16
  71 002a 43EA0443 		orr	r3, r3, r4, lsl #16
  72 002e 43EA4123 		orr	r3, r3, r1, lsl #9
  73 0032 D2B2     		uxtb	r2, r2
  74 0034 1343     		orrs	r3, r3, r2
  75 0036 2B60     		str	r3, [r5]
 116:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                (~DMAMUX_CxCR_DMAREQ_ID), \
 117:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                ((pSyncConfig->SyncSignalID) << DMAMUX_CxCR_SYNC_ID_Pos) | ((pSyncConfig->RequestNum
 118:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                pSyncConfig->SyncPolarity | ((uint32_t)pSyncConfig->SyncEnable << DMAMUX_CxCR_SE_Pos
 119:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                ((uint32_t)pSyncConfig->EventEnable << DMAMUX_CxCR_EGE_Pos));
 120:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 121:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Process UnLocked */
 122:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     __HAL_UNLOCK(hdma);
  76              		.loc 1 122 5 is_stmt 1 discriminator 2 view .LVU17
  77              		.loc 1 122 5 discriminator 2 view .LVU18
  78 0038 0023     		movs	r3, #0
  79 003a 80F82430 		strb	r3, [r0, #36]
 123:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 124:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_OK;
  80              		.loc 1 124 5 discriminator 2 view .LVU19
  81              		.loc 1 124 12 is_stmt 0 discriminator 2 view .LVU20
  82 003e 1846     		mov	r0, r3
  83              	.LVL2:
  84              	.L2:
 125:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 126:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   else
 127:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 128:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /*DMA State not Ready*/
 129:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_ERROR;
 130:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 131:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** }
  85              		.loc 1 131 1 view .LVU21
  86 0040 30BD     		pop	{r4, r5, pc}
  87              	.LVL3:
  88              	.L3:
 129:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
  89              		.loc 1 129 12 view .LVU22
  90 0042 0120     		movs	r0, #1
  91              	.LVL4:
 129:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
  92              		.loc 1 129 12 view .LVU23
  93 0044 FCE7     		b	.L2
  94              	.LVL5:
  95              	.L4:
 112:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  96              		.loc 1 112 5 view .LVU24
  97 0046 0220     		movs	r0, #2
  98              	.LVL6:
 112:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
  99              		.loc 1 112 5 view .LVU25
 100 0048 FAE7     		b	.L2
 101              		.cfi_endproc
 102              	.LFE325:
 104              		.section	.text.HAL_DMAEx_ConfigMuxRequestGenerator,"ax",%progbits
 105              		.align	1
 106              		.global	HAL_DMAEx_ConfigMuxRequestGenerator
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 112              	HAL_DMAEx_ConfigMuxRequestGenerator:
 113              	.LVL7:
 114              	.LFB326:
 132:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 133:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /**
 134:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @brief  Configure the DMAMUX request generator block used by the given DMA channel (instance).
 135:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
 136:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *                     the configuration information for the specified DMA channel.
 137:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @param  pRequestGeneratorConfig : pointer to HAL_DMA_MuxRequestGeneratorConfigTypeDef :
 138:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *         contains the request generator parameters.
 139:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *
 140:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @retval HAL status
 141:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
 142:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** HAL_StatusTypeDef HAL_DMAEx_ConfigMuxRequestGenerator(DMA_HandleTypeDef *hdma,
 143:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                                                       HAL_DMA_MuxRequestGeneratorConfigTypeDef *pRe
 144:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** {
 115              		.loc 1 144 1 is_stmt 1 view -0
 116              		.cfi_startproc
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 145:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check the parameters */
 146:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
 119              		.loc 1 146 3 view .LVU27
 147:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 148:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_REQUEST_GEN_SIGNAL_ID(pRequestGeneratorConfig->SignalID));
 120              		.loc 1 148 3 view .LVU28
 149:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 150:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_REQUEST_GEN_POLARITY(pRequestGeneratorConfig->Polarity));
 121              		.loc 1 150 3 view .LVU29
 151:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMAMUX_REQUEST_GEN_REQUEST_NUMBER(pRequestGeneratorConfig->RequestNumber));
 122              		.loc 1 151 3 view .LVU30
 152:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 153:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* check if the DMA state is ready
 154:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****      and DMA is using a DMAMUX request generator block
 155:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
 156:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   if ((hdma->State == HAL_DMA_STATE_READY) && (hdma->DMAmuxRequestGen != 0U))
 123              		.loc 1 156 3 view .LVU31
 124              		.loc 1 156 12 is_stmt 0 view .LVU32
 125 0000 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 126 0004 DBB2     		uxtb	r3, r3
 127              		.loc 1 156 6 view .LVU33
 128 0006 012B     		cmp	r3, #1
 144:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check the parameters */
 129              		.loc 1 144 1 view .LVU34
 130 0008 10B5     		push	{r4, lr}
 131              		.cfi_def_cfa_offset 8
 132              		.cfi_offset 4, -8
 133              		.cfi_offset 14, -4
 134              		.loc 1 156 6 view .LVU35
 135 000a 1AD1     		bne	.L7
 136              		.loc 1 156 52 discriminator 1 view .LVU36
 137 000c 446D     		ldr	r4, [r0, #84]
 138              		.loc 1 156 44 discriminator 1 view .LVU37
 139 000e B4B1     		cbz	r4, .L8
 157:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 158:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Process Locked */
 159:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     __HAL_LOCK(hdma);
 140              		.loc 1 159 5 is_stmt 1 view .LVU38
 141              		.loc 1 159 5 view .LVU39
 142 0010 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 143 0014 012B     		cmp	r3, #1
 144 0016 16D0     		beq	.L9
 145              		.loc 1 159 5 discriminator 2 view .LVU40
 160:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 161:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Set the request generator new parameters */
 162:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     hdma->DMAmuxRequestGen->RGCR = pRequestGeneratorConfig->SignalID | \
 146              		.loc 1 162 5 discriminator 2 view .LVU41
 147              	.LVL8:
 148              	.LBB4:
 149              	.LBI4:
 150              		.file 2 "../../..\\CubeG4\\include/cmsis_gcc.h"
   1:../../..\CubeG4\include/cmsis_gcc.h **** /**************************************************************************//**
   2:../../..\CubeG4\include/cmsis_gcc.h ****  * @file     cmsis_gcc.h
   3:../../..\CubeG4\include/cmsis_gcc.h ****  * @brief    CMSIS compiler GCC header file
   4:../../..\CubeG4\include/cmsis_gcc.h ****  * @version  V5.0.4
   5:../../..\CubeG4\include/cmsis_gcc.h ****  * @date     09. April 2018
   6:../../..\CubeG4\include/cmsis_gcc.h ****  ******************************************************************************/
   7:../../..\CubeG4\include/cmsis_gcc.h **** /*
   8:../../..\CubeG4\include/cmsis_gcc.h ****  * Copyright (c) 2009-2018 Arm Limited. All rights reserved.
   9:../../..\CubeG4\include/cmsis_gcc.h ****  *
  10:../../..\CubeG4\include/cmsis_gcc.h ****  * SPDX-License-Identifier: Apache-2.0
  11:../../..\CubeG4\include/cmsis_gcc.h ****  *
  12:../../..\CubeG4\include/cmsis_gcc.h ****  * Licensed under the Apache License, Version 2.0 (the License); you may
  13:../../..\CubeG4\include/cmsis_gcc.h ****  * not use this file except in compliance with the License.
  14:../../..\CubeG4\include/cmsis_gcc.h ****  * You may obtain a copy of the License at
  15:../../..\CubeG4\include/cmsis_gcc.h ****  *
  16:../../..\CubeG4\include/cmsis_gcc.h ****  * www.apache.org/licenses/LICENSE-2.0
  17:../../..\CubeG4\include/cmsis_gcc.h ****  *
  18:../../..\CubeG4\include/cmsis_gcc.h ****  * Unless required by applicable law or agreed to in writing, software
  19:../../..\CubeG4\include/cmsis_gcc.h ****  * distributed under the License is distributed on an AS IS BASIS, WITHOUT
  20:../../..\CubeG4\include/cmsis_gcc.h ****  * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  21:../../..\CubeG4\include/cmsis_gcc.h ****  * See the License for the specific language governing permissions and
  22:../../..\CubeG4\include/cmsis_gcc.h ****  * limitations under the License.
  23:../../..\CubeG4\include/cmsis_gcc.h ****  */
  24:../../..\CubeG4\include/cmsis_gcc.h **** 
  25:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef __CMSIS_GCC_H
  26:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_H
  27:../../..\CubeG4\include/cmsis_gcc.h **** 
  28:../../..\CubeG4\include/cmsis_gcc.h **** /* ignore some GCC warnings */
  29:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic push
  30:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wsign-conversion"
  31:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wconversion"
  32:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wunused-parameter"
  33:../../..\CubeG4\include/cmsis_gcc.h **** 
  34:../../..\CubeG4\include/cmsis_gcc.h **** /* Fallback for __has_builtin */
  35:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef __has_builtin
  36:../../..\CubeG4\include/cmsis_gcc.h ****   #define __has_builtin(x) (0)
  37:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  38:../../..\CubeG4\include/cmsis_gcc.h **** 
  39:../../..\CubeG4\include/cmsis_gcc.h **** /* CMSIS compiler specific defines */
  40:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __ASM
  41:../../..\CubeG4\include/cmsis_gcc.h ****   #define __ASM                                  __asm
  42:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  43:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __INLINE
  44:../../..\CubeG4\include/cmsis_gcc.h ****   #define __INLINE                               inline
  45:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  46:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __STATIC_INLINE
  47:../../..\CubeG4\include/cmsis_gcc.h ****   #define __STATIC_INLINE                        static inline
  48:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  49:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __STATIC_FORCEINLINE                 
  50:../../..\CubeG4\include/cmsis_gcc.h ****   #define __STATIC_FORCEINLINE                   __attribute__((always_inline)) static inline
  51:../../..\CubeG4\include/cmsis_gcc.h **** #endif                                           
  52:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __NO_RETURN
  53:../../..\CubeG4\include/cmsis_gcc.h ****   #define __NO_RETURN                            __attribute__((__noreturn__))
  54:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  55:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __USED
  56:../../..\CubeG4\include/cmsis_gcc.h ****   #define __USED                                 __attribute__((used))
  57:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  58:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __WEAK
  59:../../..\CubeG4\include/cmsis_gcc.h ****   #define __WEAK                                 __attribute__((weak))
  60:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  61:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED
  62:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED                               __attribute__((packed, aligned(1)))
  63:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  64:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED_STRUCT
  65:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED_STRUCT                        struct __attribute__((packed, aligned(1)))
  66:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  67:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED_UNION
  68:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED_UNION                         union __attribute__((packed, aligned(1)))
  69:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  70:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32        /* deprecated */
  71:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  72:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  73:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  74:../../..\CubeG4\include/cmsis_gcc.h ****   struct __attribute__((packed)) T_UINT32 { uint32_t v; };
  75:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  76:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32(x)                  (((struct T_UINT32 *)(x))->v)
  77:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  78:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT16_WRITE
  79:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  80:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  81:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  82:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT16_WRITE { uint16_t v; };
  83:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  84:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT16_WRITE(addr, val)    (void)((((struct T_UINT16_WRITE *)(void *)(addr))-
  85:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  86:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT16_READ
  87:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  88:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  89:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  90:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT16_READ { uint16_t v; };
  91:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  92:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT16_READ(addr)          (((const struct T_UINT16_READ *)(const void *)(add
  93:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  94:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32_WRITE
  95:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  96:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  97:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  98:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT32_WRITE { uint32_t v; };
  99:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
 100:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32_WRITE(addr, val)    (void)((((struct T_UINT32_WRITE *)(void *)(addr))-
 101:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 102:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32_READ
 103:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
 104:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
 105:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
 106:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT32_READ { uint32_t v; };
 107:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
 108:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32_READ(addr)          (((const struct T_UINT32_READ *)(const void *)(add
 109:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 110:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __ALIGNED
 111:../../..\CubeG4\include/cmsis_gcc.h ****   #define __ALIGNED(x)                           __attribute__((aligned(x)))
 112:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 113:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __RESTRICT
 114:../../..\CubeG4\include/cmsis_gcc.h ****   #define __RESTRICT                             __restrict
 115:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 116:../../..\CubeG4\include/cmsis_gcc.h **** 
 117:../../..\CubeG4\include/cmsis_gcc.h **** 
 118:../../..\CubeG4\include/cmsis_gcc.h **** /* ###########################  Core Function Access  ########################### */
 119:../../..\CubeG4\include/cmsis_gcc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
 120:../../..\CubeG4\include/cmsis_gcc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
 121:../../..\CubeG4\include/cmsis_gcc.h ****   @{
 122:../../..\CubeG4\include/cmsis_gcc.h ****  */
 123:../../..\CubeG4\include/cmsis_gcc.h **** 
 124:../../..\CubeG4\include/cmsis_gcc.h **** /**
 125:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Enable IRQ Interrupts
 126:../../..\CubeG4\include/cmsis_gcc.h ****   \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
 127:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 128:../../..\CubeG4\include/cmsis_gcc.h ****  */
 129:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __enable_irq(void)
 130:../../..\CubeG4\include/cmsis_gcc.h **** {
 131:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsie i" : : : "memory");
 132:../../..\CubeG4\include/cmsis_gcc.h **** }
 133:../../..\CubeG4\include/cmsis_gcc.h **** 
 134:../../..\CubeG4\include/cmsis_gcc.h **** 
 135:../../..\CubeG4\include/cmsis_gcc.h **** /**
 136:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Disable IRQ Interrupts
 137:../../..\CubeG4\include/cmsis_gcc.h ****   \details Disables IRQ interrupts by setting the I-bit in the CPSR.
 138:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 139:../../..\CubeG4\include/cmsis_gcc.h ****  */
 140:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __disable_irq(void)
 141:../../..\CubeG4\include/cmsis_gcc.h **** {
 142:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsid i" : : : "memory");
 143:../../..\CubeG4\include/cmsis_gcc.h **** }
 144:../../..\CubeG4\include/cmsis_gcc.h **** 
 145:../../..\CubeG4\include/cmsis_gcc.h **** 
 146:../../..\CubeG4\include/cmsis_gcc.h **** /**
 147:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Control Register
 148:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the Control Register.
 149:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Control Register value
 150:../../..\CubeG4\include/cmsis_gcc.h ****  */
 151:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_CONTROL(void)
 152:../../..\CubeG4\include/cmsis_gcc.h **** {
 153:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 154:../../..\CubeG4\include/cmsis_gcc.h **** 
 155:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
 156:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 157:../../..\CubeG4\include/cmsis_gcc.h **** }
 158:../../..\CubeG4\include/cmsis_gcc.h **** 
 159:../../..\CubeG4\include/cmsis_gcc.h **** 
 160:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 161:../../..\CubeG4\include/cmsis_gcc.h **** /**
 162:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Control Register (non-secure)
 163:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the non-secure Control Register when in secure mode.
 164:../../..\CubeG4\include/cmsis_gcc.h ****   \return               non-secure Control Register value
 165:../../..\CubeG4\include/cmsis_gcc.h ****  */
 166:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_CONTROL_NS(void)
 167:../../..\CubeG4\include/cmsis_gcc.h **** {
 168:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 169:../../..\CubeG4\include/cmsis_gcc.h **** 
 170:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control_ns" : "=r" (result) );
 171:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 172:../../..\CubeG4\include/cmsis_gcc.h **** }
 173:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 174:../../..\CubeG4\include/cmsis_gcc.h **** 
 175:../../..\CubeG4\include/cmsis_gcc.h **** 
 176:../../..\CubeG4\include/cmsis_gcc.h **** /**
 177:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Control Register
 178:../../..\CubeG4\include/cmsis_gcc.h ****   \details Writes the given value to the Control Register.
 179:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
 180:../../..\CubeG4\include/cmsis_gcc.h ****  */
 181:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_CONTROL(uint32_t control)
 182:../../..\CubeG4\include/cmsis_gcc.h **** {
 183:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
 184:../../..\CubeG4\include/cmsis_gcc.h **** }
 185:../../..\CubeG4\include/cmsis_gcc.h **** 
 186:../../..\CubeG4\include/cmsis_gcc.h **** 
 187:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 188:../../..\CubeG4\include/cmsis_gcc.h **** /**
 189:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Control Register (non-secure)
 190:../../..\CubeG4\include/cmsis_gcc.h ****   \details Writes the given value to the non-secure Control Register when in secure state.
 191:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
 192:../../..\CubeG4\include/cmsis_gcc.h ****  */
 193:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_CONTROL_NS(uint32_t control)
 194:../../..\CubeG4\include/cmsis_gcc.h **** {
 195:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR control_ns, %0" : : "r" (control) : "memory");
 196:../../..\CubeG4\include/cmsis_gcc.h **** }
 197:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 198:../../..\CubeG4\include/cmsis_gcc.h **** 
 199:../../..\CubeG4\include/cmsis_gcc.h **** 
 200:../../..\CubeG4\include/cmsis_gcc.h **** /**
 201:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get IPSR Register
 202:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the IPSR Register.
 203:../../..\CubeG4\include/cmsis_gcc.h ****   \return               IPSR Register value
 204:../../..\CubeG4\include/cmsis_gcc.h ****  */
 205:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_IPSR(void)
 206:../../..\CubeG4\include/cmsis_gcc.h **** {
 207:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 208:../../..\CubeG4\include/cmsis_gcc.h **** 
 209:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 210:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 211:../../..\CubeG4\include/cmsis_gcc.h **** }
 212:../../..\CubeG4\include/cmsis_gcc.h **** 
 213:../../..\CubeG4\include/cmsis_gcc.h **** 
 214:../../..\CubeG4\include/cmsis_gcc.h **** /**
 215:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get APSR Register
 216:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the APSR Register.
 217:../../..\CubeG4\include/cmsis_gcc.h ****   \return               APSR Register value
 218:../../..\CubeG4\include/cmsis_gcc.h ****  */
 219:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_APSR(void)
 220:../../..\CubeG4\include/cmsis_gcc.h **** {
 221:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 222:../../..\CubeG4\include/cmsis_gcc.h **** 
 223:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 224:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 225:../../..\CubeG4\include/cmsis_gcc.h **** }
 226:../../..\CubeG4\include/cmsis_gcc.h **** 
 227:../../..\CubeG4\include/cmsis_gcc.h **** 
 228:../../..\CubeG4\include/cmsis_gcc.h **** /**
 229:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get xPSR Register
 230:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the xPSR Register.
 231:../../..\CubeG4\include/cmsis_gcc.h ****   \return               xPSR Register value
 232:../../..\CubeG4\include/cmsis_gcc.h ****  */
 233:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_xPSR(void)
 234:../../..\CubeG4\include/cmsis_gcc.h **** {
 235:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 236:../../..\CubeG4\include/cmsis_gcc.h **** 
 237:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 238:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 239:../../..\CubeG4\include/cmsis_gcc.h **** }
 240:../../..\CubeG4\include/cmsis_gcc.h **** 
 241:../../..\CubeG4\include/cmsis_gcc.h **** 
 242:../../..\CubeG4\include/cmsis_gcc.h **** /**
 243:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer
 244:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer (PSP).
 245:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSP Register value
 246:../../..\CubeG4\include/cmsis_gcc.h ****  */
 247:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PSP(void)
 248:../../..\CubeG4\include/cmsis_gcc.h **** {
 249:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 250:../../..\CubeG4\include/cmsis_gcc.h **** 
 251:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp"  : "=r" (result) );
 252:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 253:../../..\CubeG4\include/cmsis_gcc.h **** }
 254:../../..\CubeG4\include/cmsis_gcc.h **** 
 255:../../..\CubeG4\include/cmsis_gcc.h **** 
 256:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 257:../../..\CubeG4\include/cmsis_gcc.h **** /**
 258:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer (non-secure)
 259:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Process Stack Pointer (PSP) when in secure s
 260:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSP Register value
 261:../../..\CubeG4\include/cmsis_gcc.h ****  */
 262:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PSP_NS(void)
 263:../../..\CubeG4\include/cmsis_gcc.h **** {
 264:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 265:../../..\CubeG4\include/cmsis_gcc.h **** 
 266:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp_ns"  : "=r" (result) );
 267:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 268:../../..\CubeG4\include/cmsis_gcc.h **** }
 269:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 270:../../..\CubeG4\include/cmsis_gcc.h **** 
 271:../../..\CubeG4\include/cmsis_gcc.h **** 
 272:../../..\CubeG4\include/cmsis_gcc.h **** /**
 273:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer
 274:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer (PSP).
 275:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 276:../../..\CubeG4\include/cmsis_gcc.h ****  */
 277:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PSP(uint32_t topOfProcStack)
 278:../../..\CubeG4\include/cmsis_gcc.h **** {
 279:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
 280:../../..\CubeG4\include/cmsis_gcc.h **** }
 281:../../..\CubeG4\include/cmsis_gcc.h **** 
 282:../../..\CubeG4\include/cmsis_gcc.h **** 
 283:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 284:../../..\CubeG4\include/cmsis_gcc.h **** /**
 285:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer (non-secure)
 286:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Process Stack Pointer (PSP) when in secure sta
 287:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 288:../../..\CubeG4\include/cmsis_gcc.h ****  */
 289:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PSP_NS(uint32_t topOfProcStack)
 290:../../..\CubeG4\include/cmsis_gcc.h **** {
 291:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psp_ns, %0" : : "r" (topOfProcStack) : );
 292:../../..\CubeG4\include/cmsis_gcc.h **** }
 293:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 294:../../..\CubeG4\include/cmsis_gcc.h **** 
 295:../../..\CubeG4\include/cmsis_gcc.h **** 
 296:../../..\CubeG4\include/cmsis_gcc.h **** /**
 297:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer
 298:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer (MSP).
 299:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSP Register value
 300:../../..\CubeG4\include/cmsis_gcc.h ****  */
 301:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_MSP(void)
 302:../../..\CubeG4\include/cmsis_gcc.h **** {
 303:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 304:../../..\CubeG4\include/cmsis_gcc.h **** 
 305:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp" : "=r" (result) );
 306:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 307:../../..\CubeG4\include/cmsis_gcc.h **** }
 308:../../..\CubeG4\include/cmsis_gcc.h **** 
 309:../../..\CubeG4\include/cmsis_gcc.h **** 
 310:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 311:../../..\CubeG4\include/cmsis_gcc.h **** /**
 312:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer (non-secure)
 313:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Main Stack Pointer (MSP) when in secure stat
 314:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSP Register value
 315:../../..\CubeG4\include/cmsis_gcc.h ****  */
 316:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_MSP_NS(void)
 317:../../..\CubeG4\include/cmsis_gcc.h **** {
 318:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 319:../../..\CubeG4\include/cmsis_gcc.h **** 
 320:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp_ns" : "=r" (result) );
 321:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 322:../../..\CubeG4\include/cmsis_gcc.h **** }
 323:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 324:../../..\CubeG4\include/cmsis_gcc.h **** 
 325:../../..\CubeG4\include/cmsis_gcc.h **** 
 326:../../..\CubeG4\include/cmsis_gcc.h **** /**
 327:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer
 328:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer (MSP).
 329:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfMainStack  Main Stack Pointer value to set
 330:../../..\CubeG4\include/cmsis_gcc.h ****  */
 331:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_MSP(uint32_t topOfMainStack)
 332:../../..\CubeG4\include/cmsis_gcc.h **** {
 333:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
 334:../../..\CubeG4\include/cmsis_gcc.h **** }
 335:../../..\CubeG4\include/cmsis_gcc.h **** 
 336:../../..\CubeG4\include/cmsis_gcc.h **** 
 337:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 338:../../..\CubeG4\include/cmsis_gcc.h **** /**
 339:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer (non-secure)
 340:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Main Stack Pointer (MSP) when in secure state.
 341:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfMainStack  Main Stack Pointer value to set
 342:../../..\CubeG4\include/cmsis_gcc.h ****  */
 343:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_MSP_NS(uint32_t topOfMainStack)
 344:../../..\CubeG4\include/cmsis_gcc.h **** {
 345:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msp_ns, %0" : : "r" (topOfMainStack) : );
 346:../../..\CubeG4\include/cmsis_gcc.h **** }
 347:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 348:../../..\CubeG4\include/cmsis_gcc.h **** 
 349:../../..\CubeG4\include/cmsis_gcc.h **** 
 350:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 351:../../..\CubeG4\include/cmsis_gcc.h **** /**
 352:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Stack Pointer (non-secure)
 353:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Stack Pointer (SP) when in secure state.
 354:../../..\CubeG4\include/cmsis_gcc.h ****   \return               SP Register value
 355:../../..\CubeG4\include/cmsis_gcc.h ****  */
 356:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_SP_NS(void)
 357:../../..\CubeG4\include/cmsis_gcc.h **** {
 358:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 359:../../..\CubeG4\include/cmsis_gcc.h **** 
 360:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, sp_ns" : "=r" (result) );
 361:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 362:../../..\CubeG4\include/cmsis_gcc.h **** }
 363:../../..\CubeG4\include/cmsis_gcc.h **** 
 364:../../..\CubeG4\include/cmsis_gcc.h **** 
 365:../../..\CubeG4\include/cmsis_gcc.h **** /**
 366:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Stack Pointer (non-secure)
 367:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Stack Pointer (SP) when in secure state.
 368:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfStack  Stack Pointer value to set
 369:../../..\CubeG4\include/cmsis_gcc.h ****  */
 370:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_SP_NS(uint32_t topOfStack)
 371:../../..\CubeG4\include/cmsis_gcc.h **** {
 372:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR sp_ns, %0" : : "r" (topOfStack) : );
 373:../../..\CubeG4\include/cmsis_gcc.h **** }
 374:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 375:../../..\CubeG4\include/cmsis_gcc.h **** 
 376:../../..\CubeG4\include/cmsis_gcc.h **** 
 377:../../..\CubeG4\include/cmsis_gcc.h **** /**
 378:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Priority Mask
 379:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current state of the priority mask bit from the Priority Mask Register.
 380:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Priority Mask value
 381:../../..\CubeG4\include/cmsis_gcc.h ****  */
 382:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PRIMASK(void)
 383:../../..\CubeG4\include/cmsis_gcc.h **** {
 384:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 385:../../..\CubeG4\include/cmsis_gcc.h **** 
 386:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) :: "memory");
 387:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 388:../../..\CubeG4\include/cmsis_gcc.h **** }
 389:../../..\CubeG4\include/cmsis_gcc.h **** 
 390:../../..\CubeG4\include/cmsis_gcc.h **** 
 391:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 392:../../..\CubeG4\include/cmsis_gcc.h **** /**
 393:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Priority Mask (non-secure)
 394:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current state of the non-secure priority mask bit from the Priority Mask Reg
 395:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Priority Mask value
 396:../../..\CubeG4\include/cmsis_gcc.h ****  */
 397:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PRIMASK_NS(void)
 398:../../..\CubeG4\include/cmsis_gcc.h **** {
 399:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 400:../../..\CubeG4\include/cmsis_gcc.h **** 
 401:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask_ns" : "=r" (result) :: "memory");
 402:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 403:../../..\CubeG4\include/cmsis_gcc.h **** }
 404:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 405:../../..\CubeG4\include/cmsis_gcc.h **** 
 406:../../..\CubeG4\include/cmsis_gcc.h **** 
 407:../../..\CubeG4\include/cmsis_gcc.h **** /**
 408:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Priority Mask
 409:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Priority Mask Register.
 410:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 411:../../..\CubeG4\include/cmsis_gcc.h ****  */
 412:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PRIMASK(uint32_t priMask)
 413:../../..\CubeG4\include/cmsis_gcc.h **** {
 414:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
 415:../../..\CubeG4\include/cmsis_gcc.h **** }
 416:../../..\CubeG4\include/cmsis_gcc.h **** 
 417:../../..\CubeG4\include/cmsis_gcc.h **** 
 418:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 419:../../..\CubeG4\include/cmsis_gcc.h **** /**
 420:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Priority Mask (non-secure)
 421:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Priority Mask Register when in secure state.
 422:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 423:../../..\CubeG4\include/cmsis_gcc.h ****  */
 424:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PRIMASK_NS(uint32_t priMask)
 425:../../..\CubeG4\include/cmsis_gcc.h **** {
 426:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR primask_ns, %0" : : "r" (priMask) : "memory");
 427:../../..\CubeG4\include/cmsis_gcc.h **** }
 428:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 429:../../..\CubeG4\include/cmsis_gcc.h **** 
 430:../../..\CubeG4\include/cmsis_gcc.h **** 
 431:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 432:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 433:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    )
 434:../../..\CubeG4\include/cmsis_gcc.h **** /**
 435:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Enable FIQ
 436:../../..\CubeG4\include/cmsis_gcc.h ****   \details Enables FIQ interrupts by clearing the F-bit in the CPSR.
 437:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 438:../../..\CubeG4\include/cmsis_gcc.h ****  */
 439:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __enable_fault_irq(void)
 440:../../..\CubeG4\include/cmsis_gcc.h **** {
 441:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsie f" : : : "memory");
 442:../../..\CubeG4\include/cmsis_gcc.h **** }
 443:../../..\CubeG4\include/cmsis_gcc.h **** 
 444:../../..\CubeG4\include/cmsis_gcc.h **** 
 445:../../..\CubeG4\include/cmsis_gcc.h **** /**
 446:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Disable FIQ
 447:../../..\CubeG4\include/cmsis_gcc.h ****   \details Disables FIQ interrupts by setting the F-bit in the CPSR.
 448:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 449:../../..\CubeG4\include/cmsis_gcc.h ****  */
 450:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __disable_fault_irq(void)
 451:../../..\CubeG4\include/cmsis_gcc.h **** {
 452:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsid f" : : : "memory");
 453:../../..\CubeG4\include/cmsis_gcc.h **** }
 454:../../..\CubeG4\include/cmsis_gcc.h **** 
 455:../../..\CubeG4\include/cmsis_gcc.h **** 
 456:../../..\CubeG4\include/cmsis_gcc.h **** /**
 457:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Base Priority
 458:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Base Priority register.
 459:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Base Priority register value
 460:../../..\CubeG4\include/cmsis_gcc.h ****  */
 461:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_BASEPRI(void)
 462:../../..\CubeG4\include/cmsis_gcc.h **** {
 463:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 464:../../..\CubeG4\include/cmsis_gcc.h **** 
 465:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri" : "=r" (result) );
 466:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 467:../../..\CubeG4\include/cmsis_gcc.h **** }
 468:../../..\CubeG4\include/cmsis_gcc.h **** 
 469:../../..\CubeG4\include/cmsis_gcc.h **** 
 470:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 471:../../..\CubeG4\include/cmsis_gcc.h **** /**
 472:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Base Priority (non-secure)
 473:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Base Priority register when in secure state.
 474:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Base Priority register value
 475:../../..\CubeG4\include/cmsis_gcc.h ****  */
 476:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_BASEPRI_NS(void)
 477:../../..\CubeG4\include/cmsis_gcc.h **** {
 478:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 479:../../..\CubeG4\include/cmsis_gcc.h **** 
 480:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri_ns" : "=r" (result) );
 481:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 482:../../..\CubeG4\include/cmsis_gcc.h **** }
 483:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 484:../../..\CubeG4\include/cmsis_gcc.h **** 
 485:../../..\CubeG4\include/cmsis_gcc.h **** 
 486:../../..\CubeG4\include/cmsis_gcc.h **** /**
 487:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority
 488:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register.
 489:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 490:../../..\CubeG4\include/cmsis_gcc.h ****  */
 491:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_BASEPRI(uint32_t basePri)
 492:../../..\CubeG4\include/cmsis_gcc.h **** {
 493:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
 494:../../..\CubeG4\include/cmsis_gcc.h **** }
 495:../../..\CubeG4\include/cmsis_gcc.h **** 
 496:../../..\CubeG4\include/cmsis_gcc.h **** 
 497:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 498:../../..\CubeG4\include/cmsis_gcc.h **** /**
 499:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority (non-secure)
 500:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Base Priority register when in secure state.
 501:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 502:../../..\CubeG4\include/cmsis_gcc.h ****  */
 503:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_BASEPRI_NS(uint32_t basePri)
 504:../../..\CubeG4\include/cmsis_gcc.h **** {
 505:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_ns, %0" : : "r" (basePri) : "memory");
 506:../../..\CubeG4\include/cmsis_gcc.h **** }
 507:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 508:../../..\CubeG4\include/cmsis_gcc.h **** 
 509:../../..\CubeG4\include/cmsis_gcc.h **** 
 510:../../..\CubeG4\include/cmsis_gcc.h **** /**
 511:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority with condition
 512:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register only if BASEPRI masking is disable
 513:../../..\CubeG4\include/cmsis_gcc.h ****            or the new value increases the BASEPRI priority level.
 514:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 515:../../..\CubeG4\include/cmsis_gcc.h ****  */
 516:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_BASEPRI_MAX(uint32_t basePri)
 517:../../..\CubeG4\include/cmsis_gcc.h **** {
 518:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
 519:../../..\CubeG4\include/cmsis_gcc.h **** }
 520:../../..\CubeG4\include/cmsis_gcc.h **** 
 521:../../..\CubeG4\include/cmsis_gcc.h **** 
 522:../../..\CubeG4\include/cmsis_gcc.h **** /**
 523:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Fault Mask
 524:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Fault Mask register.
 525:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Fault Mask register value
 526:../../..\CubeG4\include/cmsis_gcc.h ****  */
 527:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_FAULTMASK(void)
 528:../../..\CubeG4\include/cmsis_gcc.h **** {
 529:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 530:../../..\CubeG4\include/cmsis_gcc.h **** 
 531:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask" : "=r" (result) );
 532:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 533:../../..\CubeG4\include/cmsis_gcc.h **** }
 534:../../..\CubeG4\include/cmsis_gcc.h **** 
 535:../../..\CubeG4\include/cmsis_gcc.h **** 
 536:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 537:../../..\CubeG4\include/cmsis_gcc.h **** /**
 538:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Fault Mask (non-secure)
 539:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Fault Mask register when in secure state.
 540:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Fault Mask register value
 541:../../..\CubeG4\include/cmsis_gcc.h ****  */
 542:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_FAULTMASK_NS(void)
 543:../../..\CubeG4\include/cmsis_gcc.h **** {
 544:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 545:../../..\CubeG4\include/cmsis_gcc.h **** 
 546:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask_ns" : "=r" (result) );
 547:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 548:../../..\CubeG4\include/cmsis_gcc.h **** }
 549:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 550:../../..\CubeG4\include/cmsis_gcc.h **** 
 551:../../..\CubeG4\include/cmsis_gcc.h **** 
 552:../../..\CubeG4\include/cmsis_gcc.h **** /**
 553:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Fault Mask
 554:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Fault Mask register.
 555:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 556:../../..\CubeG4\include/cmsis_gcc.h ****  */
 557:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_FAULTMASK(uint32_t faultMask)
 558:../../..\CubeG4\include/cmsis_gcc.h **** {
 559:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
 560:../../..\CubeG4\include/cmsis_gcc.h **** }
 561:../../..\CubeG4\include/cmsis_gcc.h **** 
 562:../../..\CubeG4\include/cmsis_gcc.h **** 
 563:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 564:../../..\CubeG4\include/cmsis_gcc.h **** /**
 565:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Fault Mask (non-secure)
 566:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Fault Mask register when in secure state.
 567:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 568:../../..\CubeG4\include/cmsis_gcc.h ****  */
 569:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_FAULTMASK_NS(uint32_t faultMask)
 570:../../..\CubeG4\include/cmsis_gcc.h **** {
 571:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask_ns, %0" : : "r" (faultMask) : "memory");
 572:../../..\CubeG4\include/cmsis_gcc.h **** }
 573:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 574:../../..\CubeG4\include/cmsis_gcc.h **** 
 575:../../..\CubeG4\include/cmsis_gcc.h **** #endif /* ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 576:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 577:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    ) */
 578:../../..\CubeG4\include/cmsis_gcc.h **** 
 579:../../..\CubeG4\include/cmsis_gcc.h **** 
 580:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) || \
 581:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_BASE__ ) && (__ARM_ARCH_8M_BASE__ == 1))    )
 582:../../..\CubeG4\include/cmsis_gcc.h **** 
 583:../../..\CubeG4\include/cmsis_gcc.h **** /**
 584:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer Limit
 585:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 586:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always in non-secure
 587:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 588:../../..\CubeG4\include/cmsis_gcc.h ****   
 589:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer Limit (PSPLIM).
 590:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSPLIM Register value
 591:../../..\CubeG4\include/cmsis_gcc.h ****  */
 592:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PSPLIM(void)
 593:../../..\CubeG4\include/cmsis_gcc.h **** {
 594:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 595:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 596:../../..\CubeG4\include/cmsis_gcc.h ****     // without main extensions, the non-secure PSPLIM is RAZ/WI
 597:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 598:../../..\CubeG4\include/cmsis_gcc.h **** #else
 599:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 600:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psplim"  : "=r" (result) );
 601:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 602:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 603:../../..\CubeG4\include/cmsis_gcc.h **** }
 604:../../..\CubeG4\include/cmsis_gcc.h **** 
 605:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE) && (__ARM_FEATURE_CMSE == 3))
 606:../../..\CubeG4\include/cmsis_gcc.h **** /**
 607:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer Limit (non-secure)
 608:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 609:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always.
 610:../../..\CubeG4\include/cmsis_gcc.h **** 
 611:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Process Stack Pointer Limit (PSPLIM) when in
 612:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSPLIM Register value
 613:../../..\CubeG4\include/cmsis_gcc.h ****  */
 614:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PSPLIM_NS(void)
 615:../../..\CubeG4\include/cmsis_gcc.h **** {
 616:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 617:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 618:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 619:../../..\CubeG4\include/cmsis_gcc.h **** #else
 620:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 621:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psplim_ns"  : "=r" (result) );
 622:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 623:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 624:../../..\CubeG4\include/cmsis_gcc.h **** }
 625:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 626:../../..\CubeG4\include/cmsis_gcc.h **** 
 627:../../..\CubeG4\include/cmsis_gcc.h **** 
 628:../../..\CubeG4\include/cmsis_gcc.h **** /**
 629:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer Limit
 630:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 631:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored in non-secure
 632:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 633:../../..\CubeG4\include/cmsis_gcc.h ****   
 634:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer Limit (PSPLIM).
 635:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
 636:../../..\CubeG4\include/cmsis_gcc.h ****  */
 637:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PSPLIM(uint32_t ProcStackPtrLimit)
 638:../../..\CubeG4\include/cmsis_gcc.h **** {
 639:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 640:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 641:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 642:../../..\CubeG4\include/cmsis_gcc.h ****   (void)ProcStackPtrLimit;
 643:../../..\CubeG4\include/cmsis_gcc.h **** #else
 644:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psplim, %0" : : "r" (ProcStackPtrLimit));
 645:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 646:../../..\CubeG4\include/cmsis_gcc.h **** }
 647:../../..\CubeG4\include/cmsis_gcc.h **** 
 648:../../..\CubeG4\include/cmsis_gcc.h **** 
 649:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 650:../../..\CubeG4\include/cmsis_gcc.h **** /**
 651:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer (non-secure)
 652:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 653:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored.
 654:../../..\CubeG4\include/cmsis_gcc.h **** 
 655:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Process Stack Pointer Limit (PSPLIM) when in s
 656:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
 657:../../..\CubeG4\include/cmsis_gcc.h ****  */
 658:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PSPLIM_NS(uint32_t ProcStackPtrLimit)
 659:../../..\CubeG4\include/cmsis_gcc.h **** {
 660:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 661:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 662:../../..\CubeG4\include/cmsis_gcc.h ****   (void)ProcStackPtrLimit;
 663:../../..\CubeG4\include/cmsis_gcc.h **** #else
 664:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psplim_ns, %0\n" : : "r" (ProcStackPtrLimit));
 665:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 666:../../..\CubeG4\include/cmsis_gcc.h **** }
 667:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 668:../../..\CubeG4\include/cmsis_gcc.h **** 
 669:../../..\CubeG4\include/cmsis_gcc.h **** 
 670:../../..\CubeG4\include/cmsis_gcc.h **** /**
 671:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer Limit
 672:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 673:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always in non-secure
 674:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 675:../../..\CubeG4\include/cmsis_gcc.h **** 
 676:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer Limit (MSPLIM).
 677:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSPLIM Register value
 678:../../..\CubeG4\include/cmsis_gcc.h ****  */
 679:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_MSPLIM(void)
 680:../../..\CubeG4\include/cmsis_gcc.h **** {
 681:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 682:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 683:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 684:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 685:../../..\CubeG4\include/cmsis_gcc.h **** #else
 686:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 687:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msplim" : "=r" (result) );
 688:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 689:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 690:../../..\CubeG4\include/cmsis_gcc.h **** }
 691:../../..\CubeG4\include/cmsis_gcc.h **** 
 692:../../..\CubeG4\include/cmsis_gcc.h **** 
 693:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 694:../../..\CubeG4\include/cmsis_gcc.h **** /**
 695:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer Limit (non-secure)
 696:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 697:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always.
 698:../../..\CubeG4\include/cmsis_gcc.h **** 
 699:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Main Stack Pointer Limit(MSPLIM) when in sec
 700:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSPLIM Register value
 701:../../..\CubeG4\include/cmsis_gcc.h ****  */
 702:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_MSPLIM_NS(void)
 703:../../..\CubeG4\include/cmsis_gcc.h **** {
 704:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 705:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 706:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 707:../../..\CubeG4\include/cmsis_gcc.h **** #else
 708:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 709:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msplim_ns" : "=r" (result) );
 710:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 711:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 712:../../..\CubeG4\include/cmsis_gcc.h **** }
 713:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 714:../../..\CubeG4\include/cmsis_gcc.h **** 
 715:../../..\CubeG4\include/cmsis_gcc.h **** 
 716:../../..\CubeG4\include/cmsis_gcc.h **** /**
 717:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer Limit
 718:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 719:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored in non-secure
 720:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 721:../../..\CubeG4\include/cmsis_gcc.h **** 
 722:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer Limit (MSPLIM).
 723:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    MainStackPtrLimit  Main Stack Pointer Limit value to set
 724:../../..\CubeG4\include/cmsis_gcc.h ****  */
 725:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_MSPLIM(uint32_t MainStackPtrLimit)
 726:../../..\CubeG4\include/cmsis_gcc.h **** {
 727:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 728:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 729:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 730:../../..\CubeG4\include/cmsis_gcc.h ****   (void)MainStackPtrLimit;
 731:../../..\CubeG4\include/cmsis_gcc.h **** #else
 732:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msplim, %0" : : "r" (MainStackPtrLimit));
 733:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 734:../../..\CubeG4\include/cmsis_gcc.h **** }
 735:../../..\CubeG4\include/cmsis_gcc.h **** 
 736:../../..\CubeG4\include/cmsis_gcc.h **** 
 737:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 738:../../..\CubeG4\include/cmsis_gcc.h **** /**
 739:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer Limit (non-secure)
 740:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 741:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored.
 742:../../..\CubeG4\include/cmsis_gcc.h **** 
 743:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Main Stack Pointer Limit (MSPLIM) when in secu
 744:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    MainStackPtrLimit  Main Stack Pointer value to set
 745:../../..\CubeG4\include/cmsis_gcc.h ****  */
 746:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_MSPLIM_NS(uint32_t MainStackPtrLimit)
 747:../../..\CubeG4\include/cmsis_gcc.h **** {
 748:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 749:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 750:../../..\CubeG4\include/cmsis_gcc.h ****   (void)MainStackPtrLimit;
 751:../../..\CubeG4\include/cmsis_gcc.h **** #else
 752:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msplim_ns, %0" : : "r" (MainStackPtrLimit));
 753:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 754:../../..\CubeG4\include/cmsis_gcc.h **** }
 755:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 756:../../..\CubeG4\include/cmsis_gcc.h **** 
 757:../../..\CubeG4\include/cmsis_gcc.h **** #endif /* ((defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) || \
 758:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_8M_BASE__ ) && (__ARM_ARCH_8M_BASE__ == 1))    ) */
 759:../../..\CubeG4\include/cmsis_gcc.h **** 
 760:../../..\CubeG4\include/cmsis_gcc.h **** 
 761:../../..\CubeG4\include/cmsis_gcc.h **** /**
 762:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get FPSCR
 763:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Floating Point Status/Control register.
 764:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Floating Point Status/Control register value
 765:../../..\CubeG4\include/cmsis_gcc.h ****  */
 766:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_FPSCR(void)
 767:../../..\CubeG4\include/cmsis_gcc.h **** {
 768:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)) && \
 769:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__FPU_USED   ) && (__FPU_USED    == 1U))     )
 770:../../..\CubeG4\include/cmsis_gcc.h **** #if __has_builtin(__builtin_arm_get_fpscr) 
 771:../../..\CubeG4\include/cmsis_gcc.h **** // Re-enable using built-in when GCC has been fixed
 772:../../..\CubeG4\include/cmsis_gcc.h **** // || (__GNUC__ > 7) || (__GNUC__ == 7 && __GNUC_MINOR__ >= 2)
 773:../../..\CubeG4\include/cmsis_gcc.h ****   /* see https://gcc.gnu.org/ml/gcc-patches/2017-04/msg00443.html */
 774:../../..\CubeG4\include/cmsis_gcc.h ****   return __builtin_arm_get_fpscr();
 775:../../..\CubeG4\include/cmsis_gcc.h **** #else
 776:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 777:../../..\CubeG4\include/cmsis_gcc.h **** 
 778:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("VMRS %0, fpscr" : "=r" (result) );
 779:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 780:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 781:../../..\CubeG4\include/cmsis_gcc.h **** #else
 782:../../..\CubeG4\include/cmsis_gcc.h ****   return(0U);
 783:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 784:../../..\CubeG4\include/cmsis_gcc.h **** }
 785:../../..\CubeG4\include/cmsis_gcc.h **** 
 786:../../..\CubeG4\include/cmsis_gcc.h **** 
 787:../../..\CubeG4\include/cmsis_gcc.h **** /**
 788:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set FPSCR
 789:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Floating Point Status/Control register.
 790:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    fpscr  Floating Point Status/Control value to set
 791:../../..\CubeG4\include/cmsis_gcc.h ****  */
 792:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_FPSCR(uint32_t fpscr)
 793:../../..\CubeG4\include/cmsis_gcc.h **** {
 794:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)) && \
 795:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__FPU_USED   ) && (__FPU_USED    == 1U))     )
 796:../../..\CubeG4\include/cmsis_gcc.h **** #if __has_builtin(__builtin_arm_set_fpscr)
 797:../../..\CubeG4\include/cmsis_gcc.h **** // Re-enable using built-in when GCC has been fixed
 798:../../..\CubeG4\include/cmsis_gcc.h **** // || (__GNUC__ > 7) || (__GNUC__ == 7 && __GNUC_MINOR__ >= 2)
 799:../../..\CubeG4\include/cmsis_gcc.h ****   /* see https://gcc.gnu.org/ml/gcc-patches/2017-04/msg00443.html */
 800:../../..\CubeG4\include/cmsis_gcc.h ****   __builtin_arm_set_fpscr(fpscr);
 801:../../..\CubeG4\include/cmsis_gcc.h **** #else
 802:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("VMSR fpscr, %0" : : "r" (fpscr) : "vfpcc", "memory");
 803:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 804:../../..\CubeG4\include/cmsis_gcc.h **** #else
 805:../../..\CubeG4\include/cmsis_gcc.h ****   (void)fpscr;
 806:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 807:../../..\CubeG4\include/cmsis_gcc.h **** }
 808:../../..\CubeG4\include/cmsis_gcc.h **** 
 809:../../..\CubeG4\include/cmsis_gcc.h **** 
 810:../../..\CubeG4\include/cmsis_gcc.h **** /*@} end of CMSIS_Core_RegAccFunctions */
 811:../../..\CubeG4\include/cmsis_gcc.h **** 
 812:../../..\CubeG4\include/cmsis_gcc.h **** 
 813:../../..\CubeG4\include/cmsis_gcc.h **** /* ##########################  Core Instruction Access  ######################### */
 814:../../..\CubeG4\include/cmsis_gcc.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
 815:../../..\CubeG4\include/cmsis_gcc.h ****   Access to dedicated instructions
 816:../../..\CubeG4\include/cmsis_gcc.h ****   @{
 817:../../..\CubeG4\include/cmsis_gcc.h **** */
 818:../../..\CubeG4\include/cmsis_gcc.h **** 
 819:../../..\CubeG4\include/cmsis_gcc.h **** /* Define macros for porting to both thumb1 and thumb2.
 820:../../..\CubeG4\include/cmsis_gcc.h ****  * For thumb1, use low register (r0-r7), specified by constraint "l"
 821:../../..\CubeG4\include/cmsis_gcc.h ****  * Otherwise, use general registers, specified by constraint "r" */
 822:../../..\CubeG4\include/cmsis_gcc.h **** #if defined (__thumb__) && !defined (__thumb2__)
 823:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 824:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_RW_REG(r) "+l" (r)
 825:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 826:../../..\CubeG4\include/cmsis_gcc.h **** #else
 827:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 828:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_RW_REG(r) "+r" (r)
 829:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 830:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 831:../../..\CubeG4\include/cmsis_gcc.h **** 
 832:../../..\CubeG4\include/cmsis_gcc.h **** /**
 833:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   No Operation
 834:../../..\CubeG4\include/cmsis_gcc.h ****   \details No Operation does nothing. This instruction can be used for code alignment purposes.
 835:../../..\CubeG4\include/cmsis_gcc.h ****  */
 836:../../..\CubeG4\include/cmsis_gcc.h **** #define __NOP()                             __ASM volatile ("nop")
 837:../../..\CubeG4\include/cmsis_gcc.h **** 
 838:../../..\CubeG4\include/cmsis_gcc.h **** /**
 839:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Wait For Interrupt
 840:../../..\CubeG4\include/cmsis_gcc.h ****   \details Wait For Interrupt is a hint instruction that suspends execution until one of a number o
 841:../../..\CubeG4\include/cmsis_gcc.h ****  */
 842:../../..\CubeG4\include/cmsis_gcc.h **** #define __WFI()                             __ASM volatile ("wfi")
 843:../../..\CubeG4\include/cmsis_gcc.h **** 
 844:../../..\CubeG4\include/cmsis_gcc.h **** 
 845:../../..\CubeG4\include/cmsis_gcc.h **** /**
 846:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Wait For Event
 847:../../..\CubeG4\include/cmsis_gcc.h ****   \details Wait For Event is a hint instruction that permits the processor to enter
 848:../../..\CubeG4\include/cmsis_gcc.h ****            a low-power state until one of a number of events occurs.
 849:../../..\CubeG4\include/cmsis_gcc.h ****  */
 850:../../..\CubeG4\include/cmsis_gcc.h **** #define __WFE()                             __ASM volatile ("wfe")
 851:../../..\CubeG4\include/cmsis_gcc.h **** 
 852:../../..\CubeG4\include/cmsis_gcc.h **** 
 853:../../..\CubeG4\include/cmsis_gcc.h **** /**
 854:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Send Event
 855:../../..\CubeG4\include/cmsis_gcc.h ****   \details Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 856:../../..\CubeG4\include/cmsis_gcc.h ****  */
 857:../../..\CubeG4\include/cmsis_gcc.h **** #define __SEV()                             __ASM volatile ("sev")
 858:../../..\CubeG4\include/cmsis_gcc.h **** 
 859:../../..\CubeG4\include/cmsis_gcc.h **** 
 860:../../..\CubeG4\include/cmsis_gcc.h **** /**
 861:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Instruction Synchronization Barrier
 862:../../..\CubeG4\include/cmsis_gcc.h ****   \details Instruction Synchronization Barrier flushes the pipeline in the processor,
 863:../../..\CubeG4\include/cmsis_gcc.h ****            so that all instructions following the ISB are fetched from cache or memory,
 864:../../..\CubeG4\include/cmsis_gcc.h ****            after the instruction has been completed.
 865:../../..\CubeG4\include/cmsis_gcc.h ****  */
 866:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __ISB(void)
 867:../../..\CubeG4\include/cmsis_gcc.h **** {
 868:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("isb 0xF":::"memory");
 869:../../..\CubeG4\include/cmsis_gcc.h **** }
 870:../../..\CubeG4\include/cmsis_gcc.h **** 
 871:../../..\CubeG4\include/cmsis_gcc.h **** 
 872:../../..\CubeG4\include/cmsis_gcc.h **** /**
 873:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Data Synchronization Barrier
 874:../../..\CubeG4\include/cmsis_gcc.h ****   \details Acts as a special kind of Data Memory Barrier.
 875:../../..\CubeG4\include/cmsis_gcc.h ****            It completes when all explicit memory accesses before this instruction complete.
 876:../../..\CubeG4\include/cmsis_gcc.h ****  */
 877:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __DSB(void)
 878:../../..\CubeG4\include/cmsis_gcc.h **** {
 879:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("dsb 0xF":::"memory");
 880:../../..\CubeG4\include/cmsis_gcc.h **** }
 881:../../..\CubeG4\include/cmsis_gcc.h **** 
 882:../../..\CubeG4\include/cmsis_gcc.h **** 
 883:../../..\CubeG4\include/cmsis_gcc.h **** /**
 884:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Data Memory Barrier
 885:../../..\CubeG4\include/cmsis_gcc.h ****   \details Ensures the apparent order of the explicit memory operations before
 886:../../..\CubeG4\include/cmsis_gcc.h ****            and after the instruction, without ensuring their completion.
 887:../../..\CubeG4\include/cmsis_gcc.h ****  */
 888:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __DMB(void)
 889:../../..\CubeG4\include/cmsis_gcc.h **** {
 890:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("dmb 0xF":::"memory");
 891:../../..\CubeG4\include/cmsis_gcc.h **** }
 892:../../..\CubeG4\include/cmsis_gcc.h **** 
 893:../../..\CubeG4\include/cmsis_gcc.h **** 
 894:../../..\CubeG4\include/cmsis_gcc.h **** /**
 895:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse byte order (32 bit)
 896:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the byte order in unsigned integer value. For example, 0x12345678 becomes 0x785
 897:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 898:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 899:../../..\CubeG4\include/cmsis_gcc.h ****  */
 900:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __REV(uint32_t value)
 901:../../..\CubeG4\include/cmsis_gcc.h **** {
 902:../../..\CubeG4\include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 5)
 903:../../..\CubeG4\include/cmsis_gcc.h ****   return __builtin_bswap32(value);
 904:../../..\CubeG4\include/cmsis_gcc.h **** #else
 905:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 906:../../..\CubeG4\include/cmsis_gcc.h **** 
 907:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("rev %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 908:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 909:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 910:../../..\CubeG4\include/cmsis_gcc.h **** }
 911:../../..\CubeG4\include/cmsis_gcc.h **** 
 912:../../..\CubeG4\include/cmsis_gcc.h **** 
 913:../../..\CubeG4\include/cmsis_gcc.h **** /**
 914:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse byte order (16 bit)
 915:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the byte order within each halfword of a word. For example, 0x12345678 becomes 
 916:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 917:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 918:../../..\CubeG4\include/cmsis_gcc.h ****  */
 919:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __REV16(uint32_t value)
 920:../../..\CubeG4\include/cmsis_gcc.h **** {
 921:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 922:../../..\CubeG4\include/cmsis_gcc.h **** 
 923:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("rev16 %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 924:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 925:../../..\CubeG4\include/cmsis_gcc.h **** }
 926:../../..\CubeG4\include/cmsis_gcc.h **** 
 927:../../..\CubeG4\include/cmsis_gcc.h **** 
 928:../../..\CubeG4\include/cmsis_gcc.h **** /**
 929:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse byte order (16 bit)
 930:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the byte order in a 16-bit value and returns the signed 16-bit result. For exam
 931:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 932:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 933:../../..\CubeG4\include/cmsis_gcc.h ****  */
 934:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE int16_t __REVSH(int16_t value)
 935:../../..\CubeG4\include/cmsis_gcc.h **** {
 936:../../..\CubeG4\include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 8)
 937:../../..\CubeG4\include/cmsis_gcc.h ****   return (int16_t)__builtin_bswap16(value);
 938:../../..\CubeG4\include/cmsis_gcc.h **** #else
 939:../../..\CubeG4\include/cmsis_gcc.h ****   int16_t result;
 940:../../..\CubeG4\include/cmsis_gcc.h **** 
 941:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("revsh %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 942:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 943:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 944:../../..\CubeG4\include/cmsis_gcc.h **** }
 945:../../..\CubeG4\include/cmsis_gcc.h **** 
 946:../../..\CubeG4\include/cmsis_gcc.h **** 
 947:../../..\CubeG4\include/cmsis_gcc.h **** /**
 948:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Rotate Right in unsigned value (32 bit)
 949:../../..\CubeG4\include/cmsis_gcc.h ****   \details Rotate Right (immediate) provides the value of the contents of a register rotated by a v
 950:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    op1  Value to rotate
 951:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    op2  Number of Bits to rotate
 952:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Rotated value
 953:../../..\CubeG4\include/cmsis_gcc.h ****  */
 954:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __ROR(uint32_t op1, uint32_t op2)
 955:../../..\CubeG4\include/cmsis_gcc.h **** {
 956:../../..\CubeG4\include/cmsis_gcc.h ****   op2 %= 32U;
 957:../../..\CubeG4\include/cmsis_gcc.h ****   if (op2 == 0U)
 958:../../..\CubeG4\include/cmsis_gcc.h ****   {
 959:../../..\CubeG4\include/cmsis_gcc.h ****     return op1;
 960:../../..\CubeG4\include/cmsis_gcc.h ****   }
 961:../../..\CubeG4\include/cmsis_gcc.h ****   return (op1 >> op2) | (op1 << (32U - op2));
 962:../../..\CubeG4\include/cmsis_gcc.h **** }
 963:../../..\CubeG4\include/cmsis_gcc.h **** 
 964:../../..\CubeG4\include/cmsis_gcc.h **** 
 965:../../..\CubeG4\include/cmsis_gcc.h **** /**
 966:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Breakpoint
 967:../../..\CubeG4\include/cmsis_gcc.h ****   \details Causes the processor to enter Debug state.
 968:../../..\CubeG4\include/cmsis_gcc.h ****            Debug tools can use this to investigate system state when the instruction at a particula
 969:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  is ignored by the processor.
 970:../../..\CubeG4\include/cmsis_gcc.h ****                  If required, a debugger can use it to store additional information about the break
 971:../../..\CubeG4\include/cmsis_gcc.h ****  */
 972:../../..\CubeG4\include/cmsis_gcc.h **** #define __BKPT(value)                       __ASM volatile ("bkpt "#value)
 973:../../..\CubeG4\include/cmsis_gcc.h **** 
 974:../../..\CubeG4\include/cmsis_gcc.h **** 
 975:../../..\CubeG4\include/cmsis_gcc.h **** /**
 976:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Reverse bit order of value
 977:../../..\CubeG4\include/cmsis_gcc.h ****   \details Reverses the bit order of the given value.
 978:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 979:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Reversed value
 980:../../..\CubeG4\include/cmsis_gcc.h ****  */
 981:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __RBIT(uint32_t value)
 151              		.loc 2 981 31 discriminator 2 view .LVU42
 152              	.LBB5:
 982:../../..\CubeG4\include/cmsis_gcc.h **** {
 983:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 153              		.loc 2 983 3 discriminator 2 view .LVU43
 984:../../..\CubeG4\include/cmsis_gcc.h **** 
 985:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 986:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 987:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    )
 988:../../..\CubeG4\include/cmsis_gcc.h ****    __ASM volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
 154              		.loc 2 988 4 discriminator 2 view .LVU44
 155 0018 4FF47802 		mov	r2, #16252928
 156              		.syntax unified
 157              	@ 988 "../../..\CubeG4\include/cmsis_gcc.h" 1
 158 001c 92FAA2F2 		rbit r2, r2
 159              	@ 0 "" 2
 160              	.LVL9:
 989:../../..\CubeG4\include/cmsis_gcc.h **** #else
 990:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t s = (4U /*sizeof(v)*/ * 8U) - 1U; /* extra shift needed at end */
 991:../../..\CubeG4\include/cmsis_gcc.h **** 
 992:../../..\CubeG4\include/cmsis_gcc.h ****   result = value;                      /* r will be reversed bits of v; first get LSB of v */
 993:../../..\CubeG4\include/cmsis_gcc.h ****   for (value >>= 1U; value != 0U; value >>= 1U)
 994:../../..\CubeG4\include/cmsis_gcc.h ****   {
 995:../../..\CubeG4\include/cmsis_gcc.h ****     result <<= 1U;
 996:../../..\CubeG4\include/cmsis_gcc.h ****     result |= value & 1U;
 997:../../..\CubeG4\include/cmsis_gcc.h ****     s--;
 998:../../..\CubeG4\include/cmsis_gcc.h ****   }
 999:../../..\CubeG4\include/cmsis_gcc.h ****   result <<= s;                        /* shift when v's highest bits are zero */
1000:../../..\CubeG4\include/cmsis_gcc.h **** #endif
1001:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 161              		.loc 2 1001 3 discriminator 2 view .LVU45
 162              		.loc 2 1001 3 is_stmt 0 discriminator 2 view .LVU46
 163              		.thumb
 164              		.syntax unified
 165              	.LBE5:
 166              	.LBE4:
 163:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                                    ((pRequestGeneratorConfig->RequestNumber - 1U) << (POSITION_VAL(
 167              		.loc 1 163 77 discriminator 2 view .LVU47
 168 0020 8B68     		ldr	r3, [r1, #8]
 169              		.loc 1 163 87 discriminator 2 view .LVU48
 170 0022 B2FA82F2 		clz	r2, r2
 171              		.loc 1 163 121 discriminator 2 view .LVU49
 172 0026 02F01F02 		and	r2, r2, #31
 173              		.loc 1 163 77 discriminator 2 view .LVU50
 174 002a 013B     		subs	r3, r3, #1
 175              		.loc 1 163 83 discriminator 2 view .LVU51
 176 002c 9340     		lsls	r3, r3, r2
 177              		.loc 1 163 131 discriminator 2 view .LVU52
 178 002e D1E90021 		ldrd	r2, r1, [r1]
 179              	.LVL10:
 180              		.loc 1 163 131 discriminator 2 view .LVU53
 181 0032 0A43     		orrs	r2, r2, r1
 182 0034 1343     		orrs	r3, r3, r2
 162:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                                    ((pRequestGeneratorConfig->RequestNumber - 1U) << (POSITION_VAL(
 183              		.loc 1 162 34 discriminator 2 view .LVU54
 184 0036 2360     		str	r3, [r4]
 164:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****                                    pRequestGeneratorConfig->Polarity;
 165:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Process UnLocked */
 166:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     __HAL_UNLOCK(hdma);
 185              		.loc 1 166 5 is_stmt 1 discriminator 2 view .LVU55
 186              		.loc 1 166 5 discriminator 2 view .LVU56
 187 0038 0023     		movs	r3, #0
 188 003a 80F82430 		strb	r3, [r0, #36]
 167:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 168:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_OK;
 189              		.loc 1 168 5 discriminator 2 view .LVU57
 190              	.L8:
 169:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 170:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   else
 171:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 172:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_ERROR;
 191              		.loc 1 172 12 is_stmt 0 view .LVU58
 192 003e 1846     		mov	r0, r3
 193              	.LVL11:
 194              		.loc 1 172 12 view .LVU59
 195 0040 00E0     		b	.L6
 196              	.LVL12:
 197              	.L7:
 198              		.loc 1 172 12 view .LVU60
 199 0042 0120     		movs	r0, #1
 200              	.LVL13:
 201              	.L6:
 173:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 174:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** }
 202              		.loc 1 174 1 view .LVU61
 203 0044 10BD     		pop	{r4, pc}
 204              	.LVL14:
 205              	.L9:
 159:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 206              		.loc 1 159 5 view .LVU62
 207 0046 0220     		movs	r0, #2
 208              	.LVL15:
 159:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 209              		.loc 1 159 5 view .LVU63
 210 0048 FCE7     		b	.L6
 211              		.cfi_endproc
 212              	.LFE326:
 214              		.section	.text.HAL_DMAEx_EnableMuxRequestGenerator,"ax",%progbits
 215              		.align	1
 216              		.global	HAL_DMAEx_EnableMuxRequestGenerator
 217              		.syntax unified
 218              		.thumb
 219              		.thumb_func
 220              		.fpu fpv4-sp-d16
 222              	HAL_DMAEx_EnableMuxRequestGenerator:
 223              	.LVL16:
 224              	.LFB327:
 175:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 176:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /**
 177:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @brief  Enable the DMAMUX request generator block used by the given DMA channel (instance).
 178:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
 179:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *                     the configuration information for the specified DMA channel.
 180:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @retval HAL status
 181:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
 182:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** HAL_StatusTypeDef HAL_DMAEx_EnableMuxRequestGenerator(DMA_HandleTypeDef *hdma)
 183:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** {
 225              		.loc 1 183 1 is_stmt 1 view -0
 226              		.cfi_startproc
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
 229              		@ link register save eliminated.
 184:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check the parameters */
 185:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
 230              		.loc 1 185 3 view .LVU65
 186:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 187:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* check if the DMA state is ready
 188:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****      and DMA is using a DMAMUX request generator block
 189:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
 190:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   if ((hdma->State != HAL_DMA_STATE_RESET) && (hdma->DMAmuxRequestGen != 0))
 231              		.loc 1 190 3 view .LVU66
 232              		.loc 1 190 12 is_stmt 0 view .LVU67
 233 0000 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 234              		.loc 1 190 6 view .LVU68
 235 0004 3BB1     		cbz	r3, .L13
 236              		.loc 1 190 52 discriminator 1 view .LVU69
 237 0006 436D     		ldr	r3, [r0, #84]
 238              		.loc 1 190 44 discriminator 1 view .LVU70
 239 0008 2BB1     		cbz	r3, .L13
 191:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 192:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 193:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Enable the request generator*/
 194:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     hdma->DMAmuxRequestGen->RGCR |= DMAMUX_RGxCR_GE;
 240              		.loc 1 194 5 is_stmt 1 view .LVU71
 241              		.loc 1 194 34 is_stmt 0 view .LVU72
 242 000a 1A68     		ldr	r2, [r3]
 243 000c 42F48032 		orr	r2, r2, #65536
 244 0010 1A60     		str	r2, [r3]
 195:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 196:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_OK;
 245              		.loc 1 196 5 is_stmt 1 view .LVU73
 246              		.loc 1 196 12 is_stmt 0 view .LVU74
 247 0012 0020     		movs	r0, #0
 248              	.LVL17:
 249              		.loc 1 196 12 view .LVU75
 250 0014 7047     		bx	lr
 251              	.LVL18:
 252              	.L13:
 197:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 198:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   else
 199:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 200:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_ERROR;
 253              		.loc 1 200 12 view .LVU76
 254 0016 0120     		movs	r0, #1
 255              	.LVL19:
 201:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 202:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** }
 256              		.loc 1 202 1 view .LVU77
 257 0018 7047     		bx	lr
 258              		.cfi_endproc
 259              	.LFE327:
 261              		.section	.text.HAL_DMAEx_DisableMuxRequestGenerator,"ax",%progbits
 262              		.align	1
 263              		.global	HAL_DMAEx_DisableMuxRequestGenerator
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu fpv4-sp-d16
 269              	HAL_DMAEx_DisableMuxRequestGenerator:
 270              	.LVL20:
 271              	.LFB328:
 203:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 204:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /**
 205:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @brief  Disable the DMAMUX request generator block used by the given DMA channel (instance).
 206:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
 207:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *                     the configuration information for the specified DMA channel.
 208:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @retval HAL status
 209:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
 210:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** HAL_StatusTypeDef HAL_DMAEx_DisableMuxRequestGenerator(DMA_HandleTypeDef *hdma)
 211:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** {
 272              		.loc 1 211 1 is_stmt 1 view -0
 273              		.cfi_startproc
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276              		@ link register save eliminated.
 212:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check the parameters */
 213:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
 277              		.loc 1 213 3 view .LVU79
 214:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 215:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* check if the DMA state is ready
 216:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****      and DMA is using a DMAMUX request generator block
 217:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
 218:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   if ((hdma->State != HAL_DMA_STATE_RESET) && (hdma->DMAmuxRequestGen != 0))
 278              		.loc 1 218 3 view .LVU80
 279              		.loc 1 218 12 is_stmt 0 view .LVU81
 280 0000 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 281              		.loc 1 218 6 view .LVU82
 282 0004 3BB1     		cbz	r3, .L17
 283              		.loc 1 218 52 discriminator 1 view .LVU83
 284 0006 436D     		ldr	r3, [r0, #84]
 285              		.loc 1 218 44 discriminator 1 view .LVU84
 286 0008 2BB1     		cbz	r3, .L17
 219:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 220:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 221:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Disable the request generator*/
 222:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     hdma->DMAmuxRequestGen->RGCR &= ~DMAMUX_RGxCR_GE;
 287              		.loc 1 222 5 is_stmt 1 view .LVU85
 288              		.loc 1 222 34 is_stmt 0 view .LVU86
 289 000a 1A68     		ldr	r2, [r3]
 290 000c 22F48032 		bic	r2, r2, #65536
 291 0010 1A60     		str	r2, [r3]
 223:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 224:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_OK;
 292              		.loc 1 224 5 is_stmt 1 view .LVU87
 293              		.loc 1 224 12 is_stmt 0 view .LVU88
 294 0012 0020     		movs	r0, #0
 295              	.LVL21:
 296              		.loc 1 224 12 view .LVU89
 297 0014 7047     		bx	lr
 298              	.LVL22:
 299              	.L17:
 225:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 226:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   else
 227:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 228:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     return HAL_ERROR;
 300              		.loc 1 228 12 view .LVU90
 301 0016 0120     		movs	r0, #1
 302              	.LVL23:
 229:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 230:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** }
 303              		.loc 1 230 1 view .LVU91
 304 0018 7047     		bx	lr
 305              		.cfi_endproc
 306              	.LFE328:
 308              		.section	.text.HAL_DMAEx_MUX_IRQHandler,"ax",%progbits
 309              		.align	1
 310              		.global	HAL_DMAEx_MUX_IRQHandler
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu fpv4-sp-d16
 316              	HAL_DMAEx_MUX_IRQHandler:
 317              	.LVL24:
 318              	.LFB329:
 231:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 232:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** /**
 233:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @brief  Handles DMAMUX interrupt request.
 234:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 235:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   *               the configuration information for the specified DMA channel.
 236:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   * @retval None
 237:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   */
 238:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** void HAL_DMAEx_MUX_IRQHandler(DMA_HandleTypeDef *hdma)
 239:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** {
 319              		.loc 1 239 1 is_stmt 1 view -0
 320              		.cfi_startproc
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 240:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check for DMAMUX Synchronization overrun */
 241:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   if ((hdma->DMAmuxChannelStatus->CSR & hdma->DMAmuxChannelStatusMask) != 0U)
 323              		.loc 1 241 3 view .LVU93
 324              		.loc 1 241 12 is_stmt 0 view .LVU94
 325 0000 C26C     		ldr	r2, [r0, #76]
 326              		.loc 1 241 45 view .LVU95
 327 0002 016D     		ldr	r1, [r0, #80]
 328              		.loc 1 241 33 view .LVU96
 329 0004 1368     		ldr	r3, [r2]
 330              		.loc 1 241 6 view .LVU97
 331 0006 0B42     		tst	r3, r1
 239:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check for DMAMUX Synchronization overrun */
 332              		.loc 1 239 1 view .LVU98
 333 0008 70B5     		push	{r4, r5, r6, lr}
 334              		.cfi_def_cfa_offset 16
 335              		.cfi_offset 4, -16
 336              		.cfi_offset 5, -12
 337              		.cfi_offset 6, -8
 338              		.cfi_offset 14, -4
 239:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   /* Check for DMAMUX Synchronization overrun */
 339              		.loc 1 239 1 view .LVU99
 340 000a 0446     		mov	r4, r0
 341              		.loc 1 241 6 view .LVU100
 342 000c 0CD0     		beq	.L20
 242:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 243:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Disable the synchro overrun interrupt */
 244:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     hdma->DMAmuxChannel->CCR &= ~DMAMUX_CxCR_SOIE;
 343              		.loc 1 244 5 is_stmt 1 view .LVU101
 344              		.loc 1 244 9 is_stmt 0 view .LVU102
 345 000e 856C     		ldr	r5, [r0, #72]
 346              		.loc 1 244 30 view .LVU103
 347 0010 2B68     		ldr	r3, [r5]
 348 0012 23F48073 		bic	r3, r3, #256
 349 0016 2B60     		str	r3, [r5]
 245:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 246:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Clear the DMAMUX synchro overrun flag */
 247:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     hdma->DMAmuxChannelStatus->CFR = hdma->DMAmuxChannelStatusMask;
 350              		.loc 1 247 5 is_stmt 1 view .LVU104
 351              		.loc 1 247 36 is_stmt 0 view .LVU105
 352 0018 5160     		str	r1, [r2, #4]
 248:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 249:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* Update error code */
 250:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     hdma->ErrorCode |= HAL_DMA_ERROR_SYNC;
 353              		.loc 1 250 5 is_stmt 1 view .LVU106
 354              		.loc 1 250 21 is_stmt 0 view .LVU107
 355 001a C36B     		ldr	r3, [r0, #60]
 356 001c 43F40073 		orr	r3, r3, #512
 357 0020 C363     		str	r3, [r0, #60]
 251:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 252:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     if (hdma->XferErrorCallback != NULL)
 358              		.loc 1 252 5 is_stmt 1 view .LVU108
 359              		.loc 1 252 13 is_stmt 0 view .LVU109
 360 0022 436B     		ldr	r3, [r0, #52]
 361              		.loc 1 252 8 view .LVU110
 362 0024 03B1     		cbz	r3, .L20
 253:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     {
 254:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       /* Transfer error callback */
 255:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       hdma->XferErrorCallback(hdma);
 363              		.loc 1 255 7 is_stmt 1 view .LVU111
 364 0026 9847     		blx	r3
 365              	.LVL25:
 366              	.L20:
 256:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     }
 257:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 258:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 259:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   if (hdma->DMAmuxRequestGen != 0)
 367              		.loc 1 259 3 view .LVU112
 368              		.loc 1 259 11 is_stmt 0 view .LVU113
 369 0028 636D     		ldr	r3, [r4, #84]
 370              		.loc 1 259 6 view .LVU114
 371 002a 9BB1     		cbz	r3, .L18
 260:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   {
 261:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     /* if using a DMAMUX request generator block Check for DMAMUX request generator overrun */
 262:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     if ((hdma->DMAmuxRequestGenStatus->RGSR & hdma->DMAmuxRequestGenStatusMask) != 0U)
 372              		.loc 1 262 5 is_stmt 1 view .LVU115
 373              		.loc 1 262 14 is_stmt 0 view .LVU116
 374 002c A16D     		ldr	r1, [r4, #88]
 375              		.loc 1 262 51 view .LVU117
 376 002e E06D     		ldr	r0, [r4, #92]
 377              		.loc 1 262 38 view .LVU118
 378 0030 0A68     		ldr	r2, [r1]
 379              		.loc 1 262 8 view .LVU119
 380 0032 0242     		tst	r2, r0
 381 0034 0ED0     		beq	.L18
 263:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     {
 264:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       /* Disable the request gen overrun interrupt */
 265:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       hdma->DMAmuxRequestGen->RGCR &= ~DMAMUX_RGxCR_OIE;
 382              		.loc 1 265 7 is_stmt 1 view .LVU120
 383              		.loc 1 265 36 is_stmt 0 view .LVU121
 384 0036 1A68     		ldr	r2, [r3]
 385 0038 22F48072 		bic	r2, r2, #256
 386 003c 1A60     		str	r2, [r3]
 266:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 267:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       /* Clear the DMAMUX request generator overrun flag */
 268:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       hdma->DMAmuxRequestGenStatus->RGCFR = hdma->DMAmuxRequestGenStatusMask;
 387              		.loc 1 268 7 is_stmt 1 view .LVU122
 388              		.loc 1 268 43 is_stmt 0 view .LVU123
 389 003e 4860     		str	r0, [r1, #4]
 269:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 270:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       /* Update error code */
 271:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_REQGEN;
 390              		.loc 1 271 7 is_stmt 1 view .LVU124
 391              		.loc 1 271 23 is_stmt 0 view .LVU125
 392 0040 E36B     		ldr	r3, [r4, #60]
 393 0042 43F48063 		orr	r3, r3, #1024
 394 0046 E363     		str	r3, [r4, #60]
 272:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** 
 273:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       if (hdma->XferErrorCallback != NULL)
 395              		.loc 1 273 7 is_stmt 1 view .LVU126
 396              		.loc 1 273 15 is_stmt 0 view .LVU127
 397 0048 636B     		ldr	r3, [r4, #52]
 398              		.loc 1 273 10 view .LVU128
 399 004a 1BB1     		cbz	r3, .L18
 274:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       {
 275:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****         /* Transfer error callback */
 276:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****         hdma->XferErrorCallback(hdma);
 400              		.loc 1 276 9 is_stmt 1 view .LVU129
 401 004c 2046     		mov	r0, r4
 277:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       }
 278:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****     }
 279:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****   }
 280:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c **** }
 402              		.loc 1 280 1 is_stmt 0 view .LVU130
 403 004e BDE87040 		pop	{r4, r5, r6, lr}
 404              		.cfi_remember_state
 405              		.cfi_restore 14
 406              		.cfi_restore 6
 407              		.cfi_restore 5
 408              		.cfi_restore 4
 409              		.cfi_def_cfa_offset 0
 410              	.LVL26:
 276:../../..\CubeG4\src/stm32g4xx_hal_dma_ex.c ****       }
 411              		.loc 1 276 9 view .LVU131
 412 0052 1847     		bx	r3	@ indirect register sibling call
 413              	.LVL27:
 414              	.L18:
 415              		.cfi_restore_state
 416              		.loc 1 280 1 view .LVU132
 417 0054 70BD     		pop	{r4, r5, r6, pc}
 418              		.loc 1 280 1 view .LVU133
 419              		.cfi_endproc
 420              	.LFE329:
 422              		.text
 423              	.Letext0:
 424              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 425              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 426              		.file 5 "../../..\\CubeG4\\include/core_cm4.h"
 427              		.file 6 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 428              		.file 7 "../../..\\CubeG4\\include/stm32g431xx.h"
 429              		.file 8 "../../..\\CubeG4\\include/stm32g4xx.h"
 430              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 431              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_dma.h"
 432              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_dma_ex.h"
 433              		.file 12 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 434              		.file 13 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
