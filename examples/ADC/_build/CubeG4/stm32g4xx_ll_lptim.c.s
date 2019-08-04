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
  13              		.file	"stm32g4xx_ll_lptim.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_LPTIM_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_LPTIM_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_LPTIM_DeInit:
  27              	.LVL0:
  28              	.LFB387:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_lptim.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @file    stm32g4xx_ll_lptim.c
   4:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @brief   LPTIM LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *  ******************************************************************************
  17:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  18:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #if defined(USE_FULL_LL_DRIVER)
  19:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  20:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Includes ------------------------------------------------------------------*/
  21:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #include "stm32g4xx_ll_lptim.h"
  22:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #include "stm32g4xx_ll_bus.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #include "stm32g4xx_ll_rcc.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  25:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  26:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #ifdef  USE_FULL_ASSERT
  27:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #include "stm32_assert.h"
  28:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #else
  29:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #define assert_param(expr) ((void)0U)
  30:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #endif
  31:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  32:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /** @addtogroup STM32G4xx_LL_Driver
  33:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @{
  34:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  35:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  37:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  38:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /** @addtogroup LPTIM_LL
  39:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @{
  40:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  41:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  42:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Private types -------------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Private variables ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Private constants ---------------------------------------------------------*/
  45:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Private macros ------------------------------------------------------------*/
  46:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /** @addtogroup LPTIM_LL_Private_Macros
  47:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @{
  48:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  49:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #define IS_LL_LPTIM_CLOCK_SOURCE(__VALUE__) (((__VALUE__) == LL_LPTIM_CLK_SOURCE_INTERNAL) \
  50:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                           || ((__VALUE__) == LL_LPTIM_CLK_SOURCE_EXTERNAL))
  51:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  52:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #define IS_LL_LPTIM_CLOCK_PRESCALER(__VALUE__) (((__VALUE__) == LL_LPTIM_PRESCALER_DIV1)   \
  53:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_PRESCALER_DIV2)   \
  54:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_PRESCALER_DIV4)   \
  55:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_PRESCALER_DIV8)   \
  56:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_PRESCALER_DIV16)  \
  57:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_PRESCALER_DIV32)  \
  58:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_PRESCALER_DIV64)  \
  59:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_PRESCALER_DIV128))
  60:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  61:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #define IS_LL_LPTIM_WAVEFORM(__VALUE__) (((__VALUE__) == LL_LPTIM_OUTPUT_WAVEFORM_PWM) \
  62:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                       || ((__VALUE__) == LL_LPTIM_OUTPUT_WAVEFORM_SETONCE))
  63:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  64:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** #define IS_LL_LPTIM_OUTPUT_POLARITY(__VALUE__) (((__VALUE__) == LL_LPTIM_OUTPUT_POLARITY_REGULAR) \
  65:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                                              || ((__VALUE__) == LL_LPTIM_OUTPUT_POLARITY_INVERSE))
  66:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
  67:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @}
  68:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  69:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  70:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  71:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Private function prototypes -----------------------------------------------*/
  72:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Private functions ---------------------------------------------------------*/
  73:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /** @defgroup LPTIM_Private_Functions LPTIM Private Functions
  74:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @{
  75:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  76:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
  77:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @}
  78:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  79:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /* Exported functions --------------------------------------------------------*/
  80:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /** @addtogroup LPTIM_LL_Exported_Functions
  81:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @{
  82:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  83:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  84:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /** @addtogroup LPTIM_LL_EF_Init
  85:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @{
  86:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  87:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  88:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
  89:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @brief  Set LPTIMx registers to their reset values.
  90:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @param  LPTIMx LP Timer instance
  91:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @retval An ErrorStatus enumeration value:
  92:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *          - SUCCESS: LPTIMx registers are de-initialized
  93:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *          - ERROR: invalid LPTIMx instance
  94:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
  95:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** ErrorStatus LL_LPTIM_DeInit(LPTIM_TypeDef *LPTIMx)
  96:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** {
  30              		.loc 1 96 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
  97:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   ErrorStatus result = SUCCESS;
  35              		.loc 1 97 3 view .LVU1
  98:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
  99:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Check the parameters */
 100:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   assert_param(IS_LPTIM_INSTANCE(LPTIMx));
  36              		.loc 1 100 3 view .LVU2
 101:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 102:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   if (LPTIMx == LPTIM1)
  37              		.loc 1 102 3 view .LVU3
  38              		.loc 1 102 6 is_stmt 0 view .LVU4
  39 0000 084B     		ldr	r3, .L4
  40 0002 9842     		cmp	r0, r3
  41 0004 0BD1     		bne	.L3
  42              	.LBB22:
  43              	.LBI22:
  95:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** {
  44              		.loc 1 95 13 is_stmt 1 view .LVU5
  45              	.LVL1:
  46              	.LBB23:
 103:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   {
 104:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_LPTIM1);
  47              		.loc 1 104 5 view .LVU6
  48              	.LBB24:
  49              	.LBI24:
  50              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
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
 323:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 324:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1RSTR, Periphs);
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
 348:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 349:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1RSTR, Periphs);
 350:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 351:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 352:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 353:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB1 peripheral clocks in Sleep and Stop modes
 354:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1SMENR    DMA1SMEN      LL_AHB1_GRP1_EnableClockStopSleep\n
 355:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMA2SMEN      LL_AHB1_GRP1_EnableClockStopSleep\n
 356:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMAMUXSMEN    LL_AHB1_GRP1_EnableClockStopSleep\n
 357:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CORDICSMEN    LL_AHB1_GRP1_EnableClockStopSleep\n
 358:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FMACSMEN      LL_AHB1_GRP1_EnableClockStopSleep\n
 359:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FLASHSMEN     LL_AHB1_GRP1_EnableClockStopSleep\n
 360:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    SRAM1SMEN     LL_AHB1_GRP1_DisableClockStopSleep\n
 361:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CRCSMEN       LL_AHB1_GRP1_EnableClockStopSleep
 362:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 363:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 364:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 365:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 366:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 367:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 368:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 369:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_SRAM1
 370:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 371:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 372:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 373:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_EnableClockStopSleep(uint32_t Periphs)
 374:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 375:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 376:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB1SMENR, Periphs);
 377:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 378:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB1SMENR, Periphs);
 379:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 380:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 381:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 382:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 383:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB1 peripheral clocks in Sleep and Stop modes
 384:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB1SMENR    DMA1SMEN      LL_AHB1_GRP1_DisableClockStopSleep\n
 385:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMA2SMEN      LL_AHB1_GRP1_DisableClockStopSleep\n
 386:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    DMAMUXSMEN    LL_AHB1_GRP1_DisableClockStopSleep\n
 387:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CORDICSMEN    LL_AHB1_GRP1_DisableClockStopSleep\n
 388:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FMACSMEN      LL_AHB1_GRP1_DisableClockStopSleep\n
 389:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    FLASHSMEN     LL_AHB1_GRP1_DisableClockStopSleep\n
 390:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    SRAM1SMEN     LL_AHB1_GRP1_DisableClockStopSleep\n
 391:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB1SMENR    CRCSMEN       LL_AHB1_GRP1_DisableClockStopSleep
 392:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 393:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA1
 394:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMA2
 395:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_DMAMUX1
 396:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CORDIC
 397:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FMAC
 398:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_FLASH
 399:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_SRAM1
 400:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB1_GRP1_PERIPH_CRC
 401:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 402:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 403:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB1_GRP1_DisableClockStopSleep(uint32_t Periphs)
 404:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 405:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB1SMENR, Periphs);
 406:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 407:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 408:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 409:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 410:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 411:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 412:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EF_AHB2 AHB2
 413:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 414:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 415:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 416:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 417:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB2 peripherals clock.
 418:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2ENR      GPIOAEN       LL_AHB2_GRP1_EnableClock\n
 419:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOBEN       LL_AHB2_GRP1_EnableClock\n
 420:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOCEN       LL_AHB2_GRP1_EnableClock\n
 421:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIODEN       LL_AHB2_GRP1_EnableClock\n
 422:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOEEN       LL_AHB2_GRP1_EnableClock\n
 423:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOFEN       LL_AHB2_GRP1_EnableClock\n
 424:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOGEN       LL_AHB2_GRP1_EnableClock\n
 425:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC12EN       LL_AHB2_GRP1_EnableClock\n
 426:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC345EN      LL_AHB2_GRP1_EnableClock\n
 427:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC1EN        LL_AHB2_GRP1_EnableClock\n
 428:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC2EN        LL_AHB2_GRP1_EnableClock\n
 429:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC3EN        LL_AHB2_GRP1_EnableClock\n
 430:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC4EN        LL_AHB2_GRP1_EnableClock\n
 431:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      AESEN         LL_AHB2_GRP1_EnableClock\n
 432:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      RNGEN         LL_AHB2_GRP1_EnableClock
 433:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 434:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 435:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 436:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 437:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 438:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 439:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 440:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 441:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 442:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 443:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 444:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 445:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 446:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 447:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 448:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 449:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 450:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 451:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 452:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 453:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_EnableClock(uint32_t Periphs)
 454:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 455:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 456:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB2ENR, Periphs);
 457:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 458:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB2ENR, Periphs);
 459:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 460:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 461:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 462:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 463:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if AHB2 peripheral clock is enabled or not
 464:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2ENR      GPIOAEN       LL_AHB2_GRP1_IsEnabledClock\n
 465:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOBEN       LL_AHB2_GRP1_IsEnabledClock\n
 466:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOCEN       LL_AHB2_GRP1_IsEnabledClock\n
 467:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIODEN       LL_AHB2_GRP1_IsEnabledClock\n
 468:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOEEN       LL_AHB2_GRP1_IsEnabledClock\n
 469:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOFEN       LL_AHB2_GRP1_IsEnabledClock\n
 470:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOGEN       LL_AHB2_GRP1_IsEnabledClock\n
 471:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC12EN       LL_AHB2_GRP1_IsEnabledClock\n
 472:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC345EN      LL_AHB2_GRP1_IsEnabledClock\n
 473:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC1EN        LL_AHB2_GRP1_IsEnabledClock\n
 474:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC2EN        LL_AHB2_GRP1_IsEnabledClock\n
 475:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC3EN        LL_AHB2_GRP1_IsEnabledClock\n
 476:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC4EN        LL_AHB2_GRP1_IsEnabledClock\n
 477:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      AESEN         LL_AHB2_GRP1_IsEnabledClock\n
 478:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      RNGEN         LL_AHB2_GRP1_IsEnabledClock
 479:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 480:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 481:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 482:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 483:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 484:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 485:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 486:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 487:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 488:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 489:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 490:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 491:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 492:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 493:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 494:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 495:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 496:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 497:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
 498:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 499:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_AHB2_GRP1_IsEnabledClock(uint32_t Periphs)
 500:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 501:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->AHB2ENR, Periphs) == Periphs) ? 1UL : 0UL);
 502:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 503:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 504:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 505:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB2 peripherals clock.
 506:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2ENR      GPIOAEN       LL_AHB2_GRP1_DisableClock\n
 507:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOBEN       LL_AHB2_GRP1_DisableClock\n
 508:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOCEN       LL_AHB2_GRP1_DisableClock\n
 509:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIODEN       LL_AHB2_GRP1_DisableClock\n
 510:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOEEN       LL_AHB2_GRP1_DisableClock\n
 511:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOFEN       LL_AHB2_GRP1_DisableClock\n
 512:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      GPIOGEN       LL_AHB2_GRP1_DisableClock\n
 513:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC12EN       LL_AHB2_GRP1_DisableClock\n
 514:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      ADC345EN      LL_AHB2_GRP1_DisableClock\n
 515:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC1EN        LL_AHB2_GRP1_DisableClock\n
 516:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC2EN        LL_AHB2_GRP1_DisableClock\n
 517:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC3EN        LL_AHB2_GRP1_DisableClock\n
 518:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      DAC4EN        LL_AHB2_GRP1_DisableClock\n
 519:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      AESEN         LL_AHB2_GRP1_DisableClock\n
 520:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2ENR      RNGEN         LL_AHB2_GRP1_DisableClock
 521:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 522:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 523:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 524:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 525:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 526:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 527:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 528:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 529:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 530:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 531:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 532:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 533:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 534:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 535:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 536:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 537:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 538:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 539:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 540:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 541:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_DisableClock(uint32_t Periphs)
 542:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 543:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB2ENR, Periphs);
 544:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 545:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 546:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 547:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force AHB2 peripherals reset.
 548:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2RSTR      GPIOARST       LL_AHB2_GRP1_ForceReset\n
 549:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOBRST       LL_AHB2_GRP1_ForceReset\n
 550:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOCRST       LL_AHB2_GRP1_ForceReset\n
 551:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIODRST       LL_AHB2_GRP1_ForceReset\n
 552:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOERST       LL_AHB2_GRP1_ForceReset\n
 553:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOFRST       LL_AHB2_GRP1_ForceReset\n
 554:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOGRST       LL_AHB2_GRP1_ForceReset\n
 555:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC12RST       LL_AHB2_GRP1_ForceReset\n
 556:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC345RST      LL_AHB2_GRP1_ForceReset\n
 557:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC1RST        LL_AHB2_GRP1_ForceReset\n
 558:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC2RST        LL_AHB2_GRP1_ForceReset\n
 559:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC3RST        LL_AHB2_GRP1_ForceReset\n
 560:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC4RST        LL_AHB2_GRP1_ForceReset\n
 561:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      AESRST         LL_AHB2_GRP1_ForceReset\n
 562:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      RNGRST         LL_AHB2_GRP1_ForceReset
 563:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 564:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 565:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 566:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 567:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 568:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 569:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 570:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 571:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 572:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 573:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 574:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 575:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 576:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 577:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 578:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 579:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 580:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 581:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 582:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 583:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_ForceReset(uint32_t Periphs)
 584:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 585:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB2RSTR, Periphs);
 586:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 587:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 588:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 589:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release AHB2 peripherals reset.
 590:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2RSTR      GPIOARST       LL_AHB2_GRP1_ReleaseReset\n
 591:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOBRST       LL_AHB2_GRP1_ReleaseReset\n
 592:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOCRST       LL_AHB2_GRP1_ReleaseReset\n
 593:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIODRST       LL_AHB2_GRP1_ReleaseReset\n
 594:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOERST       LL_AHB2_GRP1_ReleaseReset\n
 595:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOFRST       LL_AHB2_GRP1_ReleaseReset\n
 596:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      GPIOGRST       LL_AHB2_GRP1_ReleaseReset\n
 597:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC12RST       LL_AHB2_GRP1_ReleaseReset\n
 598:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      ADC345RST      LL_AHB2_GRP1_ReleaseReset\n
 599:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC1RST        LL_AHB2_GRP1_ReleaseReset\n
 600:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC2RST        LL_AHB2_GRP1_ReleaseReset\n
 601:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC3RST        LL_AHB2_GRP1_ReleaseReset\n
 602:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      DAC4RST        LL_AHB2_GRP1_ReleaseReset\n
 603:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      AESRST         LL_AHB2_GRP1_ReleaseReset\n
 604:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2RSTR      RNGRST         LL_AHB2_GRP1_ReleaseReset
 605:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 606:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 607:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 608:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 609:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 610:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 611:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 612:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 613:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 614:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 615:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 616:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 617:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 618:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 619:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 620:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 621:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 622:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 623:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 624:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 625:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_ReleaseReset(uint32_t Periphs)
 626:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 627:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB2RSTR, Periphs);
 628:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 629:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 630:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 631:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB2 peripheral clocks in Sleep and Stop modes
 632:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2SMENR    GPIOASMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 633:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOBSMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 634:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOCSMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 635:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIODSMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 636:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOESMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 637:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOFSMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 638:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOGSMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 639:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    SRAM2SMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 640:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    CCMSMEN       LL_AHB2_GRP1_EnableClockStopSleep\n
 641:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    ADC12SMEN     LL_AHB2_GRP1_EnableClockStopSleep\n
 642:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    ADC345SMEN    LL_AHB2_GRP1_EnableClockStopSleep\n
 643:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC1SMEN      LL_AHB2_GRP1_EnableClockStopSleep\n
 644:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC2SMEN      LL_AHB2_GRP1_EnableClockStopSleep\n
 645:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC3SMEN      LL_AHB2_GRP1_EnableClockStopSleep\n
 646:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC4SMEN      LL_AHB2_GRP1_EnableClockStopSleep\n
 647:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    AESSMEN       LL_AHB2_GRP1_EnableClockStopSleep\n
 648:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    RNGSMEN       LL_AHB2_GRP1_EnableClockStopSleep
 649:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 650:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 651:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 652:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 653:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 654:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 655:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 656:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 657:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_SRAM2
 658:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_CCM
 659:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 660:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 661:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 662:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 663:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 664:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 665:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 666:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 667:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 668:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 669:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 670:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 671:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_EnableClockStopSleep(uint32_t Periphs)
 672:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 673:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 674:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB2SMENR, Periphs);
 675:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 676:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB2SMENR, Periphs);
 677:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 678:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 679:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 680:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 681:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB2 peripheral clocks in Sleep and Stop modes
 682:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB2SMENR    GPIOASMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 683:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOBSMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 684:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOCSMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 685:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIODSMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 686:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOESMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 687:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOFSMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 688:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    GPIOGSMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 689:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    SRAM2SMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 690:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    CCMSMEN       LL_AHB2_GRP1_DisableClockStopSleep\n
 691:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    ADC12SMEN     LL_AHB2_GRP1_DisableClockStopSleep\n
 692:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    ADC345SMEN    LL_AHB2_GRP1_DisableClockStopSleep\n
 693:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC1SMEN      LL_AHB2_GRP1_DisableClockStopSleep\n
 694:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC2SMEN      LL_AHB2_GRP1_DisableClockStopSleep\n
 695:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC3SMEN      LL_AHB2_GRP1_DisableClockStopSleep\n
 696:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    DAC4SMEN      LL_AHB2_GRP1_DisableClockStopSleep\n
 697:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    AESSMEN       LL_AHB2_GRP1_DisableClockStopSleep\n
 698:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB2SMENR    RNGSMEN       LL_AHB2_GRP1_DisableClockStopSleep
 699:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 700:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOA
 701:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOB
 702:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOC
 703:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOD
 704:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOE
 705:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOF
 706:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_GPIOG
 707:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_SRAM2
 708:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_CCM
 709:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC12
 710:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_ADC345 (*)
 711:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC1
 712:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC2 (*)
 713:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC3
 714:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_DAC4 (*)
 715:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_AES (*)
 716:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB2_GRP1_PERIPH_RNG
 717:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 718:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 719:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 720:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 721:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB2_GRP1_DisableClockStopSleep(uint32_t Periphs)
 722:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 723:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB2SMENR, Periphs);
 724:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 725:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 726:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 727:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 728:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 729:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 730:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EF_AHB3 AHB3
 731:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 732:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 733:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 734:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 735:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB3 peripherals clock.
 736:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB3ENR      FMCEN         LL_AHB3_GRP1_EnableClock\n
 737:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB3ENR      QSPIEN        LL_AHB3_GRP1_EnableClock
 738:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 739:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_FMC (*)
 740:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_QSPI (*)
 741:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 742:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 743:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 744:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 745:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB3_GRP1_EnableClock(uint32_t Periphs)
 746:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 747:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 748:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB3ENR, Periphs);
 749:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 750:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB3ENR, Periphs);
 751:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 752:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 753:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 754:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 755:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if AHB3 peripheral clock is enabled or not
 756:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB3ENR      FMCEN         LL_AHB3_GRP1_IsEnabledClock\n
 757:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB3ENR      QSPIEN        LL_AHB3_GRP1_IsEnabledClock
 758:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 759:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_FMC (*)
 760:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_QSPI (*)
 761:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 762:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 763:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
 764:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 765:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_AHB3_GRP1_IsEnabledClock(uint32_t Periphs)
 766:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 767:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->AHB3ENR, Periphs) == Periphs) ? 1UL : 0UL);
 768:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 769:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 770:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 771:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB3 peripherals clock.
 772:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB3ENR      FMCEN         LL_AHB3_GRP1_DisableClock\n
 773:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB3ENR      QSPIEN        LL_AHB3_GRP1_DisableClock
 774:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 775:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_FMC (*)
 776:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_QSPI (*)
 777:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 778:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 779:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 780:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 781:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB3_GRP1_DisableClock(uint32_t Periphs)
 782:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 783:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB3ENR, Periphs);
 784:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 785:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 786:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 787:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force AHB3 peripherals reset.
 788:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB3RSTR     FMCRST        LL_AHB3_GRP1_ForceReset\n
 789:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB3RSTR     QSPIRST       LL_AHB3_GRP1_ForceReset
 790:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 791:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_ALL
 792:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_FMC (*)
 793:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_QSPI (*)
 794:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 795:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 796:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 797:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 798:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB3_GRP1_ForceReset(uint32_t Periphs)
 799:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 800:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB3RSTR, Periphs);
 801:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 802:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 803:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 804:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release AHB3 peripherals reset.
 805:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB3RSTR     FMCRST        LL_AHB3_GRP1_ReleaseReset\n
 806:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB3RSTR     QSPIRST       LL_AHB3_GRP1_ReleaseReset
 807:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 808:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_ALL
 809:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_FMC (*)
 810:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_QSPI (*)
 811:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 812:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 813:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 814:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 815:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB3_GRP1_ReleaseReset(uint32_t Periphs)
 816:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 817:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB3RSTR, Periphs);
 818:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 819:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 820:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 821:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable AHB3 peripheral clocks in Sleep and Stop modes
 822:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB3SMENR    FMCSMEN       LL_AHB3_GRP1_EnableClockStopSleep\n
 823:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB3SMENR    QSPISMEN      LL_AHB3_GRP1_EnableClockStopSleep
 824:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 825:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_FMC  (*)
 826:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_QSPI (*)
 827:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 828:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 829:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 830:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 831:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB3_GRP1_EnableClockStopSleep(uint32_t Periphs)
 832:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 833:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 834:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->AHB3SMENR, Periphs);
 835:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 836:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->AHB3SMENR, Periphs);
 837:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 838:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 839:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 840:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 841:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable AHB3 peripheral clocks in Sleep and Stop modes
 842:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll AHB3SMENR    FMCSMEN       LL_AHB3_GRP1_DisableClockStopSleep\n
 843:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         AHB3SMENR    QSPISMEN      LL_AHB3_GRP1_DisableClockStopSleep
 844:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 845:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_FMC (*)
 846:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_AHB3_GRP1_PERIPH_QSPI (*)
 847:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 848:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 849:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 850:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 851:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_AHB3_GRP1_DisableClockStopSleep(uint32_t Periphs)
 852:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 853:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->AHB3SMENR, Periphs);
 854:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 855:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 856:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 857:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
 858:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 859:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 860:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EF_APB1 APB1
 861:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
 862:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 863:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 864:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 865:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable APB1 peripherals clock.
 866:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1ENR1     TIM2EN        LL_APB1_GRP1_EnableClock\n
 867:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM3EN        LL_APB1_GRP1_EnableClock\n
 868:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM4EN        LL_APB1_GRP1_EnableClock\n
 869:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM5EN        LL_APB1_GRP1_EnableClock\n
 870:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM6EN        LL_APB1_GRP1_EnableClock\n
 871:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM7EN        LL_APB1_GRP1_EnableClock\n
 872:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     CRSEN         LL_APB1_GRP1_EnableClock\n
 873:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     RTCAPBEN      LL_APB1_GRP1_EnableClock\n
 874:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     WWDGEN        LL_APB1_GRP1_EnableClock\n
 875:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     SPI2EN        LL_APB1_GRP1_EnableClock\n
 876:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     SPI3EN        LL_APB1_GRP1_EnableClock\n
 877:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USART2EN      LL_APB1_GRP1_EnableClock\n
 878:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USART3EN      LL_APB1_GRP1_EnableClock\n
 879:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     UART4EN       LL_APB1_GRP1_EnableClock\n
 880:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     UART5EN       LL_APB1_GRP1_EnableClock\n
 881:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C1EN        LL_APB1_GRP1_EnableClock\n
 882:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C2EN        LL_APB1_GRP1_EnableClock\n
 883:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USBEN         LL_APB1_GRP1_EnableClock\n
 884:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     FDCANEN       LL_APB1_GRP1_EnableClock\n
 885:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     PWREN         LL_APB1_GRP1_EnableClock\n
 886:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C3EN        LL_APB1_GRP1_EnableClock\n
 887:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     LPTIM1EN      LL_APB1_GRP1_EnableClock
 888:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 889:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM2
 890:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM3
 891:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM4
 892:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM5 (*)
 893:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM6
 894:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM7
 895:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_CRS
 896:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_RTCAPB
 897:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_WWDG
 898:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI2
 899:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI3
 900:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART2
 901:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART3
 902:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART4 (*)
 903:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART5 (*)
 904:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C1
 905:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C2
 906:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USB
 907:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_FDCAN (*)
 908:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_PWR
 909:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C3
 910:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_LPTIM1
 911:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 912:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 913:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 914:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 915:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP1_EnableClock(uint32_t Periphs)
 916:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 917:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 918:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1ENR1, Periphs);
 919:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 920:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->APB1ENR1, Periphs);
 921:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 922:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 923:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 924:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 925:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable APB1 peripherals clock.
 926:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1ENR2     LPUART1EN     LL_APB1_GRP2_EnableClock\n
 927:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR2     I2C4EN        LL_APB1_GRP2_EnableClock\n
 928:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR2     UCPD1EN       LL_APB1_GRP2_EnableClock
 929:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 930:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_LPUART1
 931:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_I2C4 (*)
 932:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_UCPD1
 933:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 934:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 935:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
 936:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 937:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP2_EnableClock(uint32_t Periphs)
 938:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 939:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
 940:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1ENR2, Periphs);
 941:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 942:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->APB1ENR2, Periphs);
 943:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 944:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 945:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
 946:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
 947:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if APB1 peripheral clock is enabled or not
 948:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1ENR1     TIM2EN        LL_APB1_GRP1_IsEnabledClock\n
 949:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM3EN        LL_APB1_GRP1_IsEnabledClock\n
 950:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM4EN        LL_APB1_GRP1_IsEnabledClock\n
 951:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM5EN        LL_APB1_GRP1_IsEnabledClock\n
 952:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM6EN        LL_APB1_GRP1_IsEnabledClock\n
 953:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM7EN        LL_APB1_GRP1_IsEnabledClock\n
 954:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     CRSEN         LL_APB1_GRP1_IsEnabledClock\n
 955:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     RTCAPBEN      LL_APB1_GRP1_IsEnabledClock\n
 956:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     WWDGEN        LL_APB1_GRP1_IsEnabledClock\n
 957:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     SPI2EN        LL_APB1_GRP1_IsEnabledClock\n
 958:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     SPI3EN        LL_APB1_GRP1_IsEnabledClock\n
 959:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USART2EN      LL_APB1_GRP1_IsEnabledClock\n
 960:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USART3EN      LL_APB1_GRP1_IsEnabledClock\n
 961:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     UART4EN       LL_APB1_GRP1_IsEnabledClock\n
 962:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     UART5EN       LL_APB1_GRP1_IsEnabledClock\n
 963:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C1EN        LL_APB1_GRP1_IsEnabledClock\n
 964:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C2EN        LL_APB1_GRP1_IsEnabledClock\n
 965:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USBEN         LL_APB1_GRP1_IsEnabledClock\n
 966:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     FDCANEN       LL_APB1_GRP1_IsEnabledClock\n
 967:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     PWREN         LL_APB1_GRP1_IsEnabledClock\n
 968:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C3EN        LL_APB1_GRP1_IsEnabledClock\n
 969:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     LPTIM1EN      LL_APB1_GRP1_IsEnabledClock
 970:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
 971:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM2
 972:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM3
 973:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM4
 974:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM5 (*)
 975:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM6
 976:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM7
 977:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_CRS
 978:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_RTCAPB
 979:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_WWDG
 980:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI2
 981:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI3
 982:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART2
 983:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART3
 984:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART4 (*)
 985:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART5 (*)
 986:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C1
 987:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C2
 988:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USB
 989:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_FDCAN (*)
 990:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_PWR
 991:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C3
 992:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_LPTIM1
 993:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
 994:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
 995:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
 996:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
 997:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_APB1_GRP1_IsEnabledClock(uint32_t Periphs)
 998:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 999:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->APB1ENR1, Periphs) == Periphs) ? 1UL : 0UL);
1000:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1001:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1002:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1003:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if APB1 peripheral clock is enabled or not
1004:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1ENR2     LPUART1EN     LL_APB1_GRP2_IsEnabledClock\n
1005:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR2     I2C4EN        LL_APB1_GRP2_IsEnabledClock\n
1006:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR2     UCPD1EN       LL_APB1_GRP2_IsEnabledClock
1007:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1008:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_LPUART1
1009:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_I2C4 (*)
1010:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_UCPD1
1011:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1012:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1013:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
1014:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1015:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_APB1_GRP2_IsEnabledClock(uint32_t Periphs)
1016:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1017:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->APB1ENR2, Periphs) == Periphs) ? 1UL : 0UL);
1018:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1019:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1020:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1021:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable APB1 peripherals clock.
1022:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1ENR1     TIM2EN        LL_APB1_GRP1_DisableClock\n
1023:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM3EN        LL_APB1_GRP1_DisableClock\n
1024:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM4EN        LL_APB1_GRP1_DisableClock\n
1025:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM5EN        LL_APB1_GRP1_DisableClock\n
1026:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM6EN        LL_APB1_GRP1_DisableClock\n
1027:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     TIM7EN        LL_APB1_GRP1_DisableClock\n
1028:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     CRSEN         LL_APB1_GRP1_DisableClock\n
1029:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     RTCAPBEN      LL_APB1_GRP1_DisableClock\n
1030:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     WWDGEN        LL_APB1_GRP1_DisableClock\n
1031:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     SPI2EN        LL_APB1_GRP1_DisableClock\n
1032:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     SPI3EN        LL_APB1_GRP1_DisableClock\n
1033:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USART2EN      LL_APB1_GRP1_DisableClock\n
1034:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USART3EN      LL_APB1_GRP1_DisableClock\n
1035:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     UART4EN       LL_APB1_GRP1_DisableClock\n
1036:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     UART5EN       LL_APB1_GRP1_DisableClock\n
1037:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C1EN        LL_APB1_GRP1_DisableClock\n
1038:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C2EN        LL_APB1_GRP1_DisableClock\n
1039:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     USBEN         LL_APB1_GRP1_DisableClock\n
1040:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     FDCANEN       LL_APB1_GRP1_DisableClock\n
1041:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     PWREN         LL_APB1_GRP1_DisableClock\n
1042:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     I2C3EN        LL_APB1_GRP1_DisableClock\n
1043:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR1     LPTIM1EN      LL_APB1_GRP1_DisableClock
1044:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1045:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM2
1046:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM3
1047:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM4
1048:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM5 (*)
1049:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM6
1050:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM7
1051:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_CRS
1052:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_RTCAPB
1053:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_WWDG
1054:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI2
1055:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI3
1056:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART2
1057:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART3
1058:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART4 (*)
1059:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART5 (*)
1060:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C1
1061:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C2
1062:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USB
1063:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_FDCAN (*)
1064:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_PWR
1065:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C3
1066:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_LPTIM1
1067:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1068:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1069:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1070:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1071:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP1_DisableClock(uint32_t Periphs)
1072:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1073:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1ENR1, Periphs);
1074:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1075:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1076:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1077:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable APB1 peripherals clock.
1078:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1ENR2     LPUART1EN     LL_APB1_GRP2_DisableClock\n
1079:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR2     I2C4EN        LL_APB1_GRP2_DisableClock\n
1080:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1ENR2     UCPD1EN      LL_APB1_GRP2_DisableClock
1081:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1082:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_LPUART1
1083:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_I2C4 (*)
1084:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_UCPD1
1085:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1086:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1087:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1088:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1089:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP2_DisableClock(uint32_t Periphs)
1090:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1091:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1ENR2, Periphs);
1092:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1093:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1094:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1095:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force APB1 peripherals reset.
1096:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1RSTR1     TIM2RST        LL_APB1_GRP1_ForceReset\n
1097:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM3RST        LL_APB1_GRP1_ForceReset\n
1098:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM4RST        LL_APB1_GRP1_ForceReset\n
1099:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM5RST        LL_APB1_GRP1_ForceReset\n
1100:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM6RST        LL_APB1_GRP1_ForceReset\n
1101:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM7RST        LL_APB1_GRP1_ForceReset\n
1102:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     CRSRST         LL_APB1_GRP1_ForceReset\n
1103:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     SPI2RST        LL_APB1_GRP1_ForceReset\n
1104:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     SPI3RST        LL_APB1_GRP1_ForceReset\n
1105:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     USART2RST      LL_APB1_GRP1_ForceReset\n
1106:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     USART3RST      LL_APB1_GRP1_ForceReset\n
1107:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     UART4RST       LL_APB1_GRP1_ForceReset\n
1108:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     UART5RST       LL_APB1_GRP1_ForceReset\n
1109:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     I2C1RST        LL_APB1_GRP1_ForceReset\n
1110:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     I2C2RST        LL_APB1_GRP1_ForceReset\n
1111:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     USBRST         LL_APB1_GRP1_ForceReset\n
1112:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     FDCANRST       LL_APB1_GRP1_ForceReset\n
1113:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     PWRRST         LL_APB1_GRP1_ForceReset\n
1114:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     I2C3RST        LL_APB1_GRP1_ForceReset\n
1115:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     LPTIM1RST      LL_APB1_GRP1_ForceReset
1116:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1117:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM2
1118:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM3
1119:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM4
1120:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM5 (*)
1121:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM6
1122:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM7
1123:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_CRS
1124:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI2
1125:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI3
1126:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART2
1127:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART3
1128:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART4 (*)
1129:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART5 (*)
1130:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C1
1131:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C2
1132:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USB
1133:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_FDCAN (*)
1134:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_PWR
1135:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C3
1136:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_LPTIM1
1137:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1138:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1139:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1140:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP1_ForceReset(uint32_t Periphs)
  51              		.loc 2 1141 22 view .LVU7
  52              	.LBB25:
1142:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1RSTR1, Periphs);
  53              		.loc 2 1143 3 view .LVU8
  54 0006 03F5CA33 		add	r3, r3, #103424
  55              	.LBE25:
  56              	.LBE24:
  57              	.LBB27:
  58              	.LBB28:
1144:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1145:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1146:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1147:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force APB1 peripherals reset.
1148:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1RSTR2     LPUART1RST     LL_APB1_GRP2_ForceReset\n
1149:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR2     I2C4RST        LL_APB1_GRP2_ForceReset\n
1150:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR2     UCPD1RST       LL_APB1_GRP2_ForceReset
1151:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1152:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_LPUART1
1153:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_I2C4 (*)
1154:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_UCPD1
1155:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1156:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1157:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1158:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1159:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP2_ForceReset(uint32_t Periphs)
1160:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1161:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1RSTR2, Periphs);
1162:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1163:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1164:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1165:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release APB1 peripherals reset.
1166:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1RSTR1     TIM2RST        LL_APB1_GRP1_ReleaseReset\n
1167:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM3RST        LL_APB1_GRP1_ReleaseReset\n
1168:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM4RST        LL_APB1_GRP1_ReleaseReset\n
1169:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM5RST        LL_APB1_GRP1_ReleaseReset\n
1170:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM6RST        LL_APB1_GRP1_ReleaseReset\n
1171:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     TIM7RST        LL_APB1_GRP1_ReleaseReset\n
1172:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     CRSRST         LL_APB1_GRP1_ReleaseReset\n
1173:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     SPI2RST        LL_APB1_GRP1_ReleaseReset\n
1174:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     SPI3RST        LL_APB1_GRP1_ReleaseReset\n
1175:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     USART2RST      LL_APB1_GRP1_ReleaseReset\n
1176:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     USART3RST      LL_APB1_GRP1_ReleaseReset\n
1177:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     UART4RST       LL_APB1_GRP1_ReleaseReset\n
1178:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     UART5RST       LL_APB1_GRP1_ReleaseReset\n
1179:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     I2C1RST        LL_APB1_GRP1_ReleaseReset\n
1180:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     I2C2RST        LL_APB1_GRP1_ReleaseReset\n
1181:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     USBRST         LL_APB1_GRP1_ReleaseReset\n
1182:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     FDCANRST       LL_APB1_GRP1_ReleaseReset\n
1183:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     PWRRST         LL_APB1_GRP1_ReleaseReset\n
1184:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     I2C3RST        LL_APB1_GRP1_ReleaseReset\n
1185:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR1     LPTIM1RST      LL_APB1_GRP1_ReleaseReset
1186:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1187:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM2
1188:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM3
1189:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM4
1190:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM5 (*)
1191:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM6
1192:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM7
1193:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_CRS
1194:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI2
1195:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI3
1196:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART2
1197:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART3
1198:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART4 (*)
1199:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART5 (*)
1200:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C1
1201:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C2
1202:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USB
1203:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_FDCAN (*)
1204:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_PWR
1205:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C3
1206:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_LPTIM1
1207:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1208:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1209:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1210:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP1_ReleaseReset(uint32_t Periphs)
1212:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1RSTR1, Periphs);
  59              		.loc 2 1213 3 is_stmt 0 view .LVU9
  60 000a 0020     		movs	r0, #0
  61              	.LVL2:
  62              		.loc 2 1213 3 view .LVU10
  63              	.LBE28:
  64              	.LBE27:
  65              	.LBB30:
  66              	.LBB26:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  67              		.loc 2 1143 3 view .LVU11
  68 000c 9A6B     		ldr	r2, [r3, #56]
  69 000e 42F00042 		orr	r2, r2, #-2147483648
  70 0012 9A63     		str	r2, [r3, #56]
  71              	.LVL3:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  72              		.loc 2 1143 3 view .LVU12
  73              	.LBE26:
  74              	.LBE30:
 105:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_LPTIM1);
  75              		.loc 1 105 5 is_stmt 1 view .LVU13
  76              	.LBB31:
  77              	.LBI27:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
  78              		.loc 2 1211 22 view .LVU14
  79              	.LBB29:
  80              		.loc 2 1213 3 view .LVU15
  81 0014 9A6B     		ldr	r2, [r3, #56]
  82 0016 22F00042 		bic	r2, r2, #-2147483648
  83 001a 9A63     		str	r2, [r3, #56]
  84              	.LVL4:
  85              		.loc 2 1213 3 is_stmt 0 view .LVU16
  86              	.LBE29:
  87              	.LBE31:
 106:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 107:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   else
 108:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   {
 109:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     result = ERROR;
 110:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 111:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 112:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   return result;
  88              		.loc 1 112 3 is_stmt 1 view .LVU17
  89              		.loc 1 112 3 is_stmt 0 view .LVU18
  90 001c 7047     		bx	lr
  91              	.LVL5:
  92              	.L3:
  93              		.loc 1 112 3 view .LVU19
  94              	.LBE23:
  95              	.LBE22:
 109:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
  96              		.loc 1 109 12 view .LVU20
  97 001e 0120     		movs	r0, #1
  98              	.LVL6:
  99              		.loc 1 112 3 is_stmt 1 view .LVU21
 113:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** }
 100              		.loc 1 113 1 is_stmt 0 view .LVU22
 101 0020 7047     		bx	lr
 102              	.L5:
 103 0022 00BF     		.align	2
 104              	.L4:
 105 0024 007C0040 		.word	1073773568
 106              		.cfi_endproc
 107              	.LFE387:
 109              		.section	.text.LL_LPTIM_StructInit,"ax",%progbits
 110              		.align	1
 111              		.global	LL_LPTIM_StructInit
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
 115              		.fpu fpv4-sp-d16
 117              	LL_LPTIM_StructInit:
 118              	.LVL7:
 119              	.LFB388:
 114:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 115:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
 116:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @brief  Set each fields of the LPTIM_InitStruct structure to its default
 117:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *         value.
 118:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @param  LPTIM_InitStruct pointer to a @ref LL_LPTIM_InitTypeDef structure
 119:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @retval None
 120:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
 121:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** void LL_LPTIM_StructInit(LL_LPTIM_InitTypeDef *LPTIM_InitStruct)
 122:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** {
 120              		.loc 1 122 1 is_stmt 1 view -0
 121              		.cfi_startproc
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124              		@ link register save eliminated.
 123:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Set the default configuration */
 124:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIM_InitStruct->ClockSource = LL_LPTIM_CLK_SOURCE_INTERNAL;
 125              		.loc 1 124 3 view .LVU24
 126              		.loc 1 124 33 is_stmt 0 view .LVU25
 127 0000 0023     		movs	r3, #0
 125:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIM_InitStruct->Prescaler   = LL_LPTIM_PRESCALER_DIV1;
 128              		.loc 1 125 33 view .LVU26
 129 0002 C0E90033 		strd	r3, r3, [r0]
 126:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIM_InitStruct->Waveform    = LL_LPTIM_OUTPUT_WAVEFORM_PWM;
 130              		.loc 1 126 3 is_stmt 1 view .LVU27
 127:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIM_InitStruct->Polarity    = LL_LPTIM_OUTPUT_POLARITY_REGULAR;
 131              		.loc 1 127 33 is_stmt 0 view .LVU28
 132 0006 C0E90233 		strd	r3, r3, [r0, #8]
 128:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** }
 133              		.loc 1 128 1 view .LVU29
 134 000a 7047     		bx	lr
 135              		.cfi_endproc
 136              	.LFE388:
 138              		.section	.text.LL_LPTIM_Init,"ax",%progbits
 139              		.align	1
 140              		.global	LL_LPTIM_Init
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 146              	LL_LPTIM_Init:
 147              	.LVL8:
 148              	.LFB389:
 129:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 130:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
 131:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @brief  Configure the LPTIMx peripheral according to the specified parameters.
 132:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @note LL_LPTIM_Init can only be called when the LPTIM instance is disabled.
 133:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @note LPTIMx can be disabled using unitary function @ref LL_LPTIM_Disable().
 134:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @param  LPTIMx LP Timer Instance
 135:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @param  LPTIM_InitStruct pointer to a @ref LL_LPTIM_InitTypeDef structure
 136:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @retval An ErrorStatus enumeration value:
 137:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *          - SUCCESS: LPTIMx instance has been initialized
 138:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *          - ERROR: LPTIMx instance hasn't been initialized
 139:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
 140:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** ErrorStatus LL_LPTIM_Init(LPTIM_TypeDef *LPTIMx, LL_LPTIM_InitTypeDef *LPTIM_InitStruct)
 141:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** {
 149              		.loc 1 141 1 is_stmt 1 view -0
 150              		.cfi_startproc
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 142:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   ErrorStatus result = SUCCESS;
 153              		.loc 1 142 3 view .LVU31
 143:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Check the parameters */
 144:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   assert_param(IS_LPTIM_INSTANCE(LPTIMx));
 154              		.loc 1 144 3 view .LVU32
 145:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   assert_param(IS_LL_LPTIM_CLOCK_SOURCE(LPTIM_InitStruct->ClockSource));
 155              		.loc 1 145 3 view .LVU33
 146:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   assert_param(IS_LL_LPTIM_CLOCK_PRESCALER(LPTIM_InitStruct->Prescaler));
 156              		.loc 1 146 3 view .LVU34
 147:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   assert_param(IS_LL_LPTIM_WAVEFORM(LPTIM_InitStruct->Waveform));
 157              		.loc 1 147 3 view .LVU35
 148:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   assert_param(IS_LL_LPTIM_OUTPUT_POLARITY(LPTIM_InitStruct->Polarity));
 158              		.loc 1 148 3 view .LVU36
 149:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 150:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* The LPTIMx_CFGR register must only be modified when the LPTIM is disabled
 151:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****      (ENABLE bit is reset to 0).
 152:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
 153:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   if (LL_LPTIM_IsEnabled(LPTIMx) == 1UL)
 159              		.loc 1 153 3 view .LVU37
 160              	.LBB34:
 161              	.LBI34:
 162              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_lptim.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @file    stm32g4xx_ll_lptim.h
   4:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief   Header file of LPTIM LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****     * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #ifndef STM32G4xx_LL_LPTIM_H
  22:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define STM32G4xx_LL_LPTIM_H
  23:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  36:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL LPTIM
  38:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  44:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Private constants ---------------------------------------------------------*/
  45:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  46:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Private macros ------------------------------------------------------------*/
  47:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(USE_FULL_LL_DRIVER)
  48:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_Private_Macros LPTIM Private Macros
  49:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
  50:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  51:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
  52:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
  53:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  54:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /*USE_FULL_LL_DRIVER*/
  55:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  56:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Exported types ------------------------------------------------------------*/
  57:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(USE_FULL_LL_DRIVER)
  58:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_ES_INIT LPTIM Exported Init structure
  59:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
  60:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  61:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
  63:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  LPTIM Init structure definition
  64:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  65:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** typedef struct
  66:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
  67:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   uint32_t ClockSource;    /*!< Specifies the source of the clock used by the LPTIM instance.
  68:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This parameter can be a value of @ref LPTIM_LL_EC_CLK_SOURCE.
  69:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  70:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This feature can be modified afterwards using unitary function @ref
  71:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  72:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   uint32_t Prescaler;      /*!< Specifies the prescaler division ratio.
  73:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This parameter can be a value of @ref LPTIM_LL_EC_PRESCALER.
  74:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  75:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This feature can be modified afterwards using using unitary functio
  76:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  77:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   uint32_t Waveform;       /*!< Specifies the waveform shape.
  78:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This parameter can be a value of @ref LPTIM_LL_EC_OUTPUT_WAVEFORM.
  79:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  80:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This feature can be modified afterwards using unitary function @ref
  81:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   uint32_t Polarity;       /*!< Specifies waveform polarity.
  83:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This parameter can be a value of @ref LPTIM_LL_EC_OUTPUT_POLARITY.
  84:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  85:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****                                 This feature can be modified afterwards using unitary function @ref
  86:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** } LL_LPTIM_InitTypeDef;
  87:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  88:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
  89:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
  90:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  91:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* USE_FULL_LL_DRIVER */
  92:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  93:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Exported constants --------------------------------------------------------*/
  94:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_Exported_Constants LPTIM Exported Constants
  95:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
  96:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
  97:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
  98:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_GET_FLAG Get Flags Defines
  99:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief    Flags defines which can be used with LL_LPTIM_ReadReg function
 100:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 101:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 102:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ISR_CMPM                     LPTIM_ISR_CMPM     /*!< Compare match */
 103:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ISR_ARRM                     LPTIM_ISR_ARRM     /*!< Autoreload match */
 104:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ISR_EXTTRIG                  LPTIM_ISR_EXTTRIG  /*!< External trigger edge event *
 105:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ISR_CMPOK                    LPTIM_ISR_CMPOK    /*!< Compare register update OK */
 106:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ISR_ARROK                    LPTIM_ISR_ARROK    /*!< Autoreload register update OK
 107:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ISR_UP                       LPTIM_ISR_UP       /*!< Counter direction change down
 108:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ISR_DOWN                     LPTIM_ISR_DOWN     /*!< Counter direction change up t
 109:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 110:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 111:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 112:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 113:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_IT IT Defines
 114:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief    IT defines which can be used with LL_LPTIM_ReadReg and  LL_LPTIM_WriteReg functions
 115:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 116:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 117:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_IER_CMPMIE                   LPTIM_IER_CMPMIE       /*!< Compare match Interrupt E
 118:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_IER_ARRMIE                   LPTIM_IER_ARRMIE       /*!< Autoreload match Interrup
 119:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_IER_EXTTRIGIE                LPTIM_IER_EXTTRIGIE    /*!< External trigger valid ed
 120:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_IER_CMPOKIE                  LPTIM_IER_CMPOKIE      /*!< Compare register update O
 121:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_IER_ARROKIE                  LPTIM_IER_ARROKIE      /*!< Autoreload register updat
 122:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_IER_UPIE                     LPTIM_IER_UPIE         /*!< Direction change to UP In
 123:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_IER_DOWNIE                   LPTIM_IER_DOWNIE       /*!< Direction change to down 
 124:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 125:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 126:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 127:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 128:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_OPERATING_MODE Operating Mode
 129:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 130:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 131:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_OPERATING_MODE_CONTINUOUS    LPTIM_CR_CNTSTRT /*!<LP Timer starts in continuous mo
 132:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_OPERATING_MODE_ONESHOT       LPTIM_CR_SNGSTRT /*!<LP Tilmer starts in single mode*
 133:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 134:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 135:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 136:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 137:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_UPDATE_MODE Update Mode
 138:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 139:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 140:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_UPDATE_MODE_IMMEDIATE        0x00000000U        /*!<Preload is disabled: registers
 141:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_UPDATE_MODE_ENDOFPERIOD      LPTIM_CFGR_PRELOAD /*!<preload is enabled: registers 
 142:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 143:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 144:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 145:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 146:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_COUNTER_MODE Counter Mode
 147:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 148:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 149:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_COUNTER_MODE_INTERNAL        0x00000000U          /*!<The counter is incremented f
 150:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_COUNTER_MODE_EXTERNAL        LPTIM_CFGR_COUNTMODE /*!<The counter is incremented f
 151:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 152:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 153:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 154:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 155:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_OUTPUT_WAVEFORM Output Waveform Type
 156:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 157:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 158:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_OUTPUT_WAVEFORM_PWM          0x00000000U     /*!<LPTIM  generates either a PWM wav
 159:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_OUTPUT_WAVEFORM_SETONCE      LPTIM_CFGR_WAVE /*!<LPTIM  generates a Set Once wavef
 160:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 161:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 162:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 163:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 164:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_OUTPUT_POLARITY Output Polarity
 165:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 166:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 167:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_OUTPUT_POLARITY_REGULAR      0x00000000U             /*!<The LPTIM output reflects
 168:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_OUTPUT_POLARITY_INVERSE      LPTIM_CFGR_WAVPOL       /*!<The LPTIM output reflects
 169:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 170:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 171:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 172:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 173:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_PRESCALER Prescaler Value
 174:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 175:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 176:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV1               0x00000000U                               /*!<Prescal
 177:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV2               LPTIM_CFGR_PRESC_0                        /*!<Prescal
 178:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV4               LPTIM_CFGR_PRESC_1                        /*!<Prescal
 179:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV8               (LPTIM_CFGR_PRESC_1 | LPTIM_CFGR_PRESC_0) /*!<Prescal
 180:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV16              LPTIM_CFGR_PRESC_2                        /*!<Prescal
 181:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV32              (LPTIM_CFGR_PRESC_2 | LPTIM_CFGR_PRESC_0) /*!<Prescal
 182:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV64              (LPTIM_CFGR_PRESC_2 | LPTIM_CFGR_PRESC_1) /*!<Prescal
 183:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_PRESCALER_DIV128             LPTIM_CFGR_PRESC                          /*!<Prescal
 184:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 185:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 186:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 187:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 188:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_TRIG_SOURCE Trigger Source
 189:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 190:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 191:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_GPIO             0x00000000U                                          
 192:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_RTCALARMA        LPTIM_CFGR_TRIGSEL_0                                 
 193:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_RTCALARMB        LPTIM_CFGR_TRIGSEL_1                                 
 194:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_RTCTAMP1         (LPTIM_CFGR_TRIGSEL_1 | LPTIM_CFGR_TRIGSEL_0)        
 195:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_RTCTAMP2         LPTIM_CFGR_TRIGSEL_2                                 
 196:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_RTCTAMP3         (LPTIM_CFGR_TRIGSEL_2 | LPTIM_CFGR_TRIGSEL_0)        
 197:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_COMP1            (LPTIM_CFGR_TRIGSEL_2 | LPTIM_CFGR_TRIGSEL_1)        
 198:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_COMP2            (LPTIM_CFGR_TRIGSEL_2 | LPTIM_CFGR_TRIGSEL_1 | LPTIM_
 199:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_COMP3            LPTIM_CFGR_TRIGSEL_3                                 
 200:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_COMP4            (LPTIM_CFGR_TRIGSEL_3 | LPTIM_CFGR_TRIGSEL_0)        
 201:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(COMP5)
 202:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_COMP5            (LPTIM_CFGR_TRIGSEL_3 | LPTIM_CFGR_TRIGSEL_1)        
 203:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* COMP5 */
 204:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(COMP6)
 205:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_COMP6            (LPTIM_CFGR_TRIGSEL_3 | LPTIM_CFGR_TRIGSEL_1 | LPTIM_
 206:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* COMP6 */
 207:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(COMP7)
 208:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_SOURCE_COMP7            (LPTIM_CFGR_TRIGSEL_3 | LPTIM_CFGR_TRIGSEL_2)        
 209:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* COMP7 */
 210:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 211:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 212:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 213:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 214:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_TRIG_FILTER Trigger Filter
 215:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 216:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 217:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_FILTER_NONE             0x00000000U         /*!<Any trigger active level chan
 218:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_FILTER_2                LPTIM_CFGR_TRGFLT_0 /*!<Trigger active level change m
 219:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_FILTER_4                LPTIM_CFGR_TRGFLT_1 /*!<Trigger active level change m
 220:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_FILTER_8                LPTIM_CFGR_TRGFLT   /*!<Trigger active level change m
 221:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 222:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 223:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 224:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 225:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_TRIG_POLARITY Trigger Polarity
 226:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 227:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 228:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_POLARITY_RISING         LPTIM_CFGR_TRIGEN_0 /*!<LPTIM counter starts when a r
 229:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_POLARITY_FALLING        LPTIM_CFGR_TRIGEN_1 /*!<LPTIM counter starts when a f
 230:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_TRIG_POLARITY_RISING_FALLING LPTIM_CFGR_TRIGEN   /*!<LPTIM counter starts when a r
 231:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 232:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 233:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 234:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 235:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_CLK_SOURCE Clock Source
 236:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 237:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 238:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_SOURCE_INTERNAL          0x00000000U      /*!<LPTIM is clocked by internal clo
 239:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_SOURCE_EXTERNAL          LPTIM_CFGR_CKSEL /*!<LPTIM is clocked by an external 
 240:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 241:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 242:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 243:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 244:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_CLK_FILTER Clock Filter
 245:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 246:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 247:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_FILTER_NONE              0x00000000U        /*!<Any external clock signal leve
 248:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_FILTER_2                 LPTIM_CFGR_CKFLT_0 /*!<External clock signal level ch
 249:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_FILTER_4                 LPTIM_CFGR_CKFLT_1 /*!<External clock signal level ch
 250:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_FILTER_8                 LPTIM_CFGR_CKFLT   /*!<External clock signal level ch
 251:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 252:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 253:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 254:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 255:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_CLK_POLARITY Clock Polarity
 256:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 257:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 258:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_POLARITY_RISING          0x00000000U        /*!< The rising edge is the active
 259:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_POLARITY_FALLING         LPTIM_CFGR_CKPOL_0 /*!< The falling edge is the activ
 260:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_CLK_POLARITY_RISING_FALLING  LPTIM_CFGR_CKPOL_1 /*!< Both edges are active edges*/
 261:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 262:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 263:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 264:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 265:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EC_ENCODER_MODE Encoder Mode
 266:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 267:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 268:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ENCODER_MODE_RISING          0x00000000U        /*!< The rising edge is the active
 269:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ENCODER_MODE_FALLING         LPTIM_CFGR_CKPOL_0 /*!< The falling edge is the activ
 270:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ENCODER_MODE_RISING_FALLING  LPTIM_CFGR_CKPOL_1 /*!< Both edges are active edges*/
 271:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 272:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 273:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 274:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 275:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_EC_INPUT1_SRC Input1 Source
 276:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 277:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 278:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT1_SRC_GPIO         0x00000000U
 279:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT1_SRC_COMP1        LPTIM_OR_IN1_0
 280:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT1_SRC_COMP3        (LPTIM_OR_IN1_1 | LPTIM_OR_IN1_0)
 281:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(COMP5)
 282:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT1_SRC_COMP5        (LPTIM_OR_IN1_2 | LPTIM_OR_IN1_0)
 283:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* COMP5 */
 284:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(COMP7)
 285:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT1_SRC_COMP7        (LPTIM_OR_IN1_2 | LPTIM_OR_IN1_1 | LPTIM_OR_IN1_0)
 286:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* COMP7 */
 287:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 288:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 289:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 290:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 291:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_EC_INPUT2_SRC Input2 Source
 292:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 293:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 294:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT2_SRC_GPIO         0x00000000U
 295:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT2_SRC_COMP2        LPTIM_OR_IN2_0
 296:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT2_SRC_COMP4        (LPTIM_OR_IN2_1 | LPTIM_OR_IN2_0)
 297:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(COMP6)
 298:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_INPUT2_SRC_COMP6        (LPTIM_OR_IN2_2 | LPTIM_OR_IN2_0)
 299:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* COMP6 */
 300:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 301:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 302:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 303:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 304:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 305:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 306:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 307:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 308:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 309:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Exported macro ------------------------------------------------------------*/
 310:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_Exported_Macros LPTIM Exported Macros
 311:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 312:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 313:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 314:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EM_WRITE_READ Common Write and read registers Macros
 315:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 316:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 317:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 318:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 319:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Write a value in LPTIM register
 320:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  __INSTANCE__ LPTIM Instance
 321:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  __REG__ Register to be written
 322:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  __VALUE__ Value to be written in the register
 323:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 324:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 325:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG((__INSTANCE__)->__REG__, (__V
 326:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 327:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 328:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Read a value in LPTIM register
 329:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  __INSTANCE__ LPTIM Instance
 330:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  __REG__ Register to be read
 331:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Register value
 332:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 333:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #define LL_LPTIM_ReadReg(__INSTANCE__, __REG__) READ_REG((__INSTANCE__)->__REG__)
 334:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 335:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 336:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 337:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 338:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 339:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 340:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 341:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 342:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /* Exported functions --------------------------------------------------------*/
 343:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_Exported_Functions LPTIM Exported Functions
 344:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 345:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 346:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 347:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #if defined(USE_FULL_LL_DRIVER)
 348:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EF_Init Initialisation and deinitialisation functions
 349:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 350:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 351:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 352:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** ErrorStatus LL_LPTIM_DeInit(LPTIM_TypeDef *LPTIMx);
 353:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** void LL_LPTIM_StructInit(LL_LPTIM_InitTypeDef *LPTIM_InitStruct);
 354:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** ErrorStatus LL_LPTIM_Init(LPTIM_TypeDef *LPTIMx, LL_LPTIM_InitTypeDef *LPTIM_InitStruct);
 355:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** void LL_LPTIM_Disable(LPTIM_TypeDef *LPTIMx);
 356:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 357:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 358:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 359:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** #endif /* USE_FULL_LL_DRIVER */
 360:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 361:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EF_LPTIM_Configuration LPTIM Configuration
 362:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 363:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 364:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 365:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 366:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Enable the LPTIM instance
 367:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note After setting the ENABLE bit, a delay of two counter clock is needed
 368:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       before the LPTIM instance is actually enabled.
 369:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CR           ENABLE        LL_LPTIM_Enable
 370:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 371:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 372:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 373:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_Enable(LPTIM_TypeDef *LPTIMx)
 374:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 375:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->CR, LPTIM_CR_ENABLE);
 376:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 377:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 378:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 379:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Indicates whether the LPTIM instance is enabled.
 380:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CR           ENABLE        LL_LPTIM_IsEnabled
 381:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 382:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
 383:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 384:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsEnabled(LPTIM_TypeDef *LPTIMx)
 163              		.loc 3 384 26 view .LVU38
 164              	.LBB35:
 385:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 386:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->CR, LPTIM_CR_ENABLE) == LPTIM_CR_ENABLE)? 1UL : 0UL));
 165              		.loc 3 386 3 view .LVU39
 166              		.loc 3 386 13 is_stmt 0 view .LVU40
 167 0000 0269     		ldr	r2, [r0, #16]
 168              		.loc 3 386 76 view .LVU41
 169 0002 12F00102 		ands	r2, r2, #1
 170              	.LBE35:
 171              	.LBE34:
 141:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   ErrorStatus result = SUCCESS;
 172              		.loc 1 141 1 view .LVU42
 173 0006 30B5     		push	{r4, r5, lr}
 174              		.cfi_def_cfa_offset 12
 175              		.cfi_offset 4, -12
 176              		.cfi_offset 5, -8
 177              		.cfi_offset 14, -4
 178              	.LBB37:
 179              	.LBB36:
 180              		.loc 3 386 76 view .LVU43
 181 0008 0DD1     		bne	.L9
 182              	.LVL9:
 183              		.loc 3 386 76 view .LVU44
 184              	.LBE36:
 185              	.LBE37:
 154:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   {
 155:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     result = ERROR;
 156:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 157:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   else
 158:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   {
 159:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     /* Set CKSEL bitfield according to ClockSource value */
 160:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     /* Set PRESC bitfield according to Prescaler value */
 161:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     /* Set WAVE bitfield according to Waveform value */
 162:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     /* Set WAVEPOL bitfield according to Polarity value */
 163:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     MODIFY_REG(LPTIMx->CFGR,
 186              		.loc 1 163 5 is_stmt 1 view .LVU45
 187 000a D1E90035 		ldrd	r3, r5, [r1]
 188 000e 2B43     		orrs	r3, r3, r5
 189 0010 8D68     		ldr	r5, [r1, #8]
 190 0012 C968     		ldr	r1, [r1, #12]
 191              	.LVL10:
 192              		.loc 1 163 5 is_stmt 0 view .LVU46
 193 0014 C468     		ldr	r4, [r0, #12]
 194 0016 2B43     		orrs	r3, r3, r5
 195 0018 0B43     		orrs	r3, r3, r1
 196 001a 0449     		ldr	r1, .L10
 197 001c 2140     		ands	r1, r1, r4
 198 001e 0B43     		orrs	r3, r3, r1
 199 0020 C360     		str	r3, [r0, #12]
 142:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Check the parameters */
 200              		.loc 1 142 15 view .LVU47
 201 0022 1046     		mov	r0, r2
 202              	.LVL11:
 203              	.L8:
 164:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                (LPTIM_CFGR_CKSEL | LPTIM_CFGR_PRESC | LPTIM_CFGR_WAVE | LPTIM_CFGR_WAVPOL),
 165:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                LPTIM_InitStruct->ClockSource | \
 166:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                LPTIM_InitStruct->Prescaler | \
 167:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                LPTIM_InitStruct->Waveform | \
 168:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****                LPTIM_InitStruct->Polarity);
 169:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 170:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 171:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   return result;
 204              		.loc 1 171 3 is_stmt 1 view .LVU48
 172:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** }
 205              		.loc 1 172 1 is_stmt 0 view .LVU49
 206 0024 30BD     		pop	{r4, r5, pc}
 207              	.LVL12:
 208              	.L9:
 155:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 209              		.loc 1 155 12 view .LVU50
 210 0026 0120     		movs	r0, #1
 211              	.LVL13:
 155:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 212              		.loc 1 155 12 view .LVU51
 213 0028 FCE7     		b	.L8
 214              	.L11:
 215 002a 00BF     		.align	2
 216              	.L10:
 217 002c FEF1CFFF 		.word	-3149314
 218              		.cfi_endproc
 219              	.LFE389:
 221              		.section	.text.LL_LPTIM_Disable,"ax",%progbits
 222              		.align	1
 223              		.global	LL_LPTIM_Disable
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 229              	LL_LPTIM_Disable:
 230              	.LVL14:
 231              	.LFB390:
 173:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 174:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
 175:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @}
 176:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
 177:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 178:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
 179:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @}
 180:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
 181:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 182:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** /**
 183:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @brief  Disable the LPTIM instance
 184:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @rmtoll CR           ENABLE        LL_LPTIM_Disable
 185:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @param  LPTIMx Low-Power Timer instance
 186:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @note   The following sequence is required to solve LPTIM disable HW limitation.
 187:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *         Please check Errata Sheet ES0335 for more details under "MCU may remain
 188:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   *         stuck in LPTIM interrupt when entering Stop mode" section.
 189:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   * @retval None
 190:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   */
 191:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** void LL_LPTIM_Disable(LPTIM_TypeDef *LPTIMx)
 192:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** {
 232              		.loc 1 192 1 is_stmt 1 view -0
 233              		.cfi_startproc
 234              		@ args = 0, pretend = 0, frame = 16
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 193:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LL_RCC_ClocksTypeDef rcc_clock;
 236              		.loc 1 193 3 view .LVU53
 194:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   uint32_t tmpclksource = 0;
 237              		.loc 1 194 3 view .LVU54
 195:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   uint32_t tmpIER;
 238              		.loc 1 195 3 view .LVU55
 196:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   uint32_t tmpCFGR;
 239              		.loc 1 196 3 view .LVU56
 197:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   uint32_t tmpCMP;
 240              		.loc 1 197 3 view .LVU57
 198:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   uint32_t tmpARR;
 241              		.loc 1 198 3 view .LVU58
 199:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   uint32_t tmpOR;
 242              		.loc 1 199 3 view .LVU59
 200:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 201:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Check the parameters */
 202:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   assert_param(IS_LPTIM_INSTANCE(LPTIMx));
 243              		.loc 1 202 3 view .LVU60
 203:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 204:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   __disable_irq();
 244              		.loc 1 204 3 view .LVU61
 245              	.LBB56:
 246              	.LBI56:
 247              		.file 4 "../../..\\CubeG4\\include/cmsis_gcc.h"
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
 248              		.loc 4 140 27 view .LVU62
 249              	.LBB57:
 141:../../..\CubeG4\include/cmsis_gcc.h **** {
 142:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsid i" : : : "memory");
 250              		.loc 4 142 3 view .LVU63
 251              	.LBE57:
 252              	.LBE56:
 192:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LL_RCC_ClocksTypeDef rcc_clock;
 253              		.loc 1 192 1 is_stmt 0 view .LVU64
 254 0000 2DE9FF47 		push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, lr}
 255              		.cfi_def_cfa_offset 48
 256              		.cfi_offset 4, -32
 257              		.cfi_offset 5, -28
 258              		.cfi_offset 6, -24
 259              		.cfi_offset 7, -20
 260              		.cfi_offset 8, -16
 261              		.cfi_offset 9, -12
 262              		.cfi_offset 10, -8
 263              		.cfi_offset 14, -4
 192:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LL_RCC_ClocksTypeDef rcc_clock;
 264              		.loc 1 192 1 view .LVU65
 265 0004 0446     		mov	r4, r0
 266              	.LBB59:
 267              	.LBB58:
 268              		.loc 4 142 3 view .LVU66
 269              		.syntax unified
 270              	@ 142 "../../..\CubeG4\include/cmsis_gcc.h" 1
 271 0006 72B6     		cpsid i
 272              	@ 0 "" 2
 273              		.thumb
 274              		.syntax unified
 275              	.LBE58:
 276              	.LBE59:
 205:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 206:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /********** Save LPTIM Config *********/
 207:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Save LPTIM source clock */
 208:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   switch ((uint32_t)LPTIMx)
 277              		.loc 1 208 3 is_stmt 1 view .LVU67
 278 0008 374B     		ldr	r3, .L38
 279 000a 9842     		cmp	r0, r3
 209:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   {
 210:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****      case LPTIM1_BASE:
 211:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****        tmpclksource = LL_RCC_GetLPTIMClockSource(LL_RCC_LPTIM1_CLKSOURCE);
 280              		.loc 1 211 8 view .LVU68
 281              	.LVL15:
 282              	.LBB60:
 283              	.LBI60:
 284              		.file 5 "../../..\\CubeG4\\include/stm32g4xx_ll_rcc.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @file    stm32g4xx_ll_rcc.h
   4:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief   Header file of RCC LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #ifndef STM32G4xx_LL_RCC_H
  22:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define STM32G4xx_LL_RCC_H
  23:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL RCC
  36:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  37:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  38:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  39:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private types -------------------------------------------------------------*/
  40:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private variables ---------------------------------------------------------*/
  41:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Private_Variables RCC Private Variables
  42:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  43:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  44:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  46:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  47:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  48:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  49:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private constants ---------------------------------------------------------*/
  50:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Private_Constants RCC Private Constants
  51:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  52:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  53:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Defines used to perform offsets*/
  54:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Offset used to access to RCC_CCIPR and RCC_CCIPR2 registers */
  55:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define RCC_OFFSET_CCIPR        0U
  56:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define RCC_OFFSET_CCIPR2       0x14U
  57:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  58:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  59:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  60:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  61:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Private macros ------------------------------------------------------------*/
  63:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(USE_FULL_LL_DRIVER)
  64:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Private_Macros RCC Private Macros
  65:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  66:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  67:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  68:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  69:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  70:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /*USE_FULL_LL_DRIVER*/
  71:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  72:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported types ------------------------------------------------------------*/
  73:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(USE_FULL_LL_DRIVER)
  74:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Types RCC Exported Types
  75:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  76:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  77:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  78:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup LL_ES_CLOCK_FREQ Clocks Frequency Structure
  79:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
  80:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  81:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  83:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  RCC Clocks Frequency Structure
  84:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  85:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** typedef struct
  86:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
  87:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t SYSCLK_Frequency;        /*!< SYSCLK clock frequency */
  88:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t HCLK_Frequency;          /*!< HCLK clock frequency */
  89:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t PCLK1_Frequency;         /*!< PCLK1 clock frequency */
  90:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   uint32_t PCLK2_Frequency;         /*!< PCLK2 clock frequency */
  91:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** } LL_RCC_ClocksTypeDef;
  92:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  93:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  94:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  95:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
  96:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
  97:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
  98:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
  99:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 100:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* USE_FULL_LL_DRIVER */
 101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 102:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported constants --------------------------------------------------------*/
 103:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Constants RCC Exported Constants
 104:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 105:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 106:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 107:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_OSC_VALUES Oscillator Values adaptation
 108:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    Defines used to adapt values of different oscillators
 109:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note     These values could be modified in the user environment according to
 110:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *           HW set-up.
 111:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 112:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 113:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (HSE_VALUE)
 114:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define HSE_VALUE    8000000U   /*!< Value of the HSE oscillator in Hz */
 115:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* HSE_VALUE */
 116:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 117:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (HSI_VALUE)
 118:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define HSI_VALUE    16000000U  /*!< Value of the HSI oscillator in Hz */
 119:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* HSI_VALUE */
 120:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (LSE_VALUE)
 122:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LSE_VALUE    32768U     /*!< Value of the LSE oscillator in Hz */
 123:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* LSE_VALUE */
 124:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 125:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (LSI_VALUE)
 126:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LSI_VALUE    32000U     /*!< Value of the LSI oscillator in Hz */
 127:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* LSI_VALUE */
 128:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 129:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (HSI48_VALUE)
 130:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define HSI48_VALUE  48000000U  /*!< Value of the HSI48 oscillator in Hz */
 131:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* HSI48_VALUE */
 132:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 133:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if !defined  (EXTERNAL_CLOCK_VALUE)
 134:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define EXTERNAL_CLOCK_VALUE    48000U     /*!< Value of the I2S_CKIN, I2S and SAI1 external clock 
 135:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* EXTERNAL_CLOCK_VALUE */
 136:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 137:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 138:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 139:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 140:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 141:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_CLEAR_FLAG Clear Flags Defines
 142:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    Flags defines which can be used with LL_RCC_WriteReg function
 143:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 144:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 145:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_LSIRDYC                RCC_CICR_LSIRDYC     /*!< LSI Ready Interrupt Clear */
 146:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_LSERDYC                RCC_CICR_LSERDYC     /*!< LSE Ready Interrupt Clear */
 147:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_HSIRDYC                RCC_CICR_HSIRDYC     /*!< HSI Ready Interrupt Clear */
 148:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_HSERDYC                RCC_CICR_HSERDYC     /*!< HSE Ready Interrupt Clear */
 149:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_PLLRDYC                RCC_CICR_PLLRDYC     /*!< PLL Ready Interrupt Clear */
 150:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_HSI48RDYC              RCC_CICR_HSI48RDYC   /*!< HSI48 Ready Interrupt Clear */
 151:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_LSECSSC                RCC_CICR_LSECSSC     /*!< LSE Clock Security System Inte
 152:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CICR_CSSC                   RCC_CICR_CSSC        /*!< Clock Security System Interrup
 153:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 154:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 155:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 156:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 157:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_GET_FLAG Get Flags Defines
 158:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    Flags defines which can be used with LL_RCC_ReadReg function
 159:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 160:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 161:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_LSIRDYF                RCC_CIFR_LSIRDYF     /*!< LSI Ready Interrupt flag */
 162:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_LSERDYF                RCC_CIFR_LSERDYF     /*!< LSE Ready Interrupt flag */
 163:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_HSIRDYF                RCC_CIFR_HSIRDYF     /*!< HSI Ready Interrupt flag */
 164:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_HSERDYF                RCC_CIFR_HSERDYF     /*!< HSE Ready Interrupt flag */
 165:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_PLLRDYF                RCC_CIFR_PLLRDYF     /*!< PLL Ready Interrupt flag */
 166:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_HSI48RDYF              RCC_CIFR_HSI48RDYF   /*!< HSI48 Ready Interrupt flag */
 167:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_LSECSSF                RCC_CIFR_LSECSSF     /*!< LSE Clock Security System Inte
 168:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIFR_CSSF                   RCC_CIFR_CSSF        /*!< Clock Security System Interrup
 169:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_LPWRRSTF                RCC_CSR_LPWRRSTF   /*!< Low-Power reset flag */
 170:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_OBLRSTF                 RCC_CSR_OBLRSTF    /*!< OBL reset flag */
 171:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_PINRSTF                 RCC_CSR_PINRSTF    /*!< PIN reset flag */
 172:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_SFTRSTF                 RCC_CSR_SFTRSTF    /*!< Software Reset flag */
 173:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_IWDGRSTF                RCC_CSR_IWDGRSTF   /*!< Independent Watchdog reset flag 
 174:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_WWDGRSTF                RCC_CSR_WWDGRSTF   /*!< Window watchdog reset flag */
 175:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CSR_BORRSTF                 RCC_CSR_BORRSTF    /*!< BOR reset flag */
 176:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 177:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 178:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 179:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 180:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_IT IT Defines
 181:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief    IT defines which can be used with LL_RCC_ReadReg and  LL_RCC_WriteReg functions
 182:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 183:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 184:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_LSIRDYIE               RCC_CIER_LSIRDYIE      /*!< LSI Ready Interrupt Enable *
 185:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_LSERDYIE               RCC_CIER_LSERDYIE      /*!< LSE Ready Interrupt Enable *
 186:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_HSIRDYIE               RCC_CIER_HSIRDYIE      /*!< HSI Ready Interrupt Enable *
 187:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_HSERDYIE               RCC_CIER_HSERDYIE      /*!< HSE Ready Interrupt Enable *
 188:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_PLLRDYIE               RCC_CIER_PLLRDYIE      /*!< PLL Ready Interrupt Enable *
 189:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_HSI48RDYIE             RCC_CIER_HSI48RDYIE    /*!< HSI48 Ready Interrupt Enable
 190:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_CIER_LSECSSIE               RCC_CIER_LSECSSIE      /*!< LSE CSS Interrupt Enable */
 191:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 192:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 193:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 194:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 195:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LSEDRIVE  LSE oscillator drive capability
 196:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 197:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 198:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_LOW                0x00000000U             /*!< Xtal mode lower driving cap
 199:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_MEDIUMLOW          RCC_BDCR_LSEDRV_0       /*!< Xtal mode medium low drivin
 200:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_MEDIUMHIGH         RCC_BDCR_LSEDRV_1       /*!< Xtal mode medium high drivi
 201:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSEDRIVE_HIGH               RCC_BDCR_LSEDRV         /*!< Xtal mode higher driving ca
 202:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 203:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 204:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 205:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 206:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LSCO_CLKSOURCE  LSCO Selection
 207:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 208:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 209:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSCO_CLKSOURCE_LSI          0x00000000U                 /*!< LSI selection for low s
 210:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LSCO_CLKSOURCE_LSE          RCC_BDCR_LSCOSEL            /*!< LSE selection for low s
 211:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 212:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 213:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 214:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 215:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SYS_CLKSOURCE  System clock switch
 216:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 217:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 218:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_HSI           RCC_CFGR_SW_HSI    /*!< HSI selection as system clock */
 219:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_HSE           RCC_CFGR_SW_HSE    /*!< HSE selection as system clock */
 220:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_PLL           RCC_CFGR_SW_PLL    /*!< PLL selection as system clock */
 221:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 222:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 223:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 224:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 225:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SYS_CLKSOURCE_STATUS  System clock switch status
 226:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 227:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 228:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_STATUS_HSI    RCC_CFGR_SWS_HSI   /*!< HSI used as system clock */
 229:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_STATUS_HSE    RCC_CFGR_SWS_HSE   /*!< HSE used as system clock */
 230:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYS_CLKSOURCE_STATUS_PLL    RCC_CFGR_SWS_PLL   /*!< PLL used as system clock */
 231:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 232:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 233:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 234:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 235:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SYSCLK_DIV  AHB prescaler
 236:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 237:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 238:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_1                RCC_CFGR_HPRE_DIV1   /*!< SYSCLK not divided */
 239:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_2                RCC_CFGR_HPRE_DIV2   /*!< SYSCLK divided by 2 */
 240:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_4                RCC_CFGR_HPRE_DIV4   /*!< SYSCLK divided by 4 */
 241:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_8                RCC_CFGR_HPRE_DIV8   /*!< SYSCLK divided by 8 */
 242:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_16               RCC_CFGR_HPRE_DIV16  /*!< SYSCLK divided by 16 */
 243:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_64               RCC_CFGR_HPRE_DIV64  /*!< SYSCLK divided by 64 */
 244:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_128              RCC_CFGR_HPRE_DIV128 /*!< SYSCLK divided by 128 */
 245:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_256              RCC_CFGR_HPRE_DIV256 /*!< SYSCLK divided by 256 */
 246:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SYSCLK_DIV_512              RCC_CFGR_HPRE_DIV512 /*!< SYSCLK divided by 512 */
 247:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 248:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 249:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 250:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 251:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_APB1_DIV  APB low-speed prescaler (APB1)
 252:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 253:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 254:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_1                  RCC_CFGR_PPRE1_DIV1  /*!< HCLK not divided */
 255:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_2                  RCC_CFGR_PPRE1_DIV2  /*!< HCLK divided by 2 */
 256:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_4                  RCC_CFGR_PPRE1_DIV4  /*!< HCLK divided by 4 */
 257:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_8                  RCC_CFGR_PPRE1_DIV8  /*!< HCLK divided by 8 */
 258:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB1_DIV_16                 RCC_CFGR_PPRE1_DIV16 /*!< HCLK divided by 16 */
 259:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 260:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 261:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 263:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_APB2_DIV  APB high-speed prescaler (APB2)
 264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 265:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 266:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_1                  RCC_CFGR_PPRE2_DIV1  /*!< HCLK not divided */
 267:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_2                  RCC_CFGR_PPRE2_DIV2  /*!< HCLK divided by 2 */
 268:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_4                  RCC_CFGR_PPRE2_DIV4  /*!< HCLK divided by 4 */
 269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_8                  RCC_CFGR_PPRE2_DIV8  /*!< HCLK divided by 8 */
 270:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_APB2_DIV_16                 RCC_CFGR_PPRE2_DIV16 /*!< HCLK divided by 16 */
 271:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 273:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 275:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_MCO1SOURCE  MCO1 SOURCE selection
 276:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 277:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 278:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_NOCLOCK          0x00000000U                            /*!< MCO output d
 279:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_SYSCLK           RCC_CFGR_MCOSEL_0                      /*!< SYSCLK selec
 280:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_HSI              (RCC_CFGR_MCOSEL_0| RCC_CFGR_MCOSEL_1) /*!< HSI16 select
 281:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_HSE              RCC_CFGR_MCOSEL_2                      /*!< HSE selectio
 282:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_PLLCLK           (RCC_CFGR_MCOSEL_0|RCC_CFGR_MCOSEL_2)  /*!< Main PLL sel
 283:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_LSI              (RCC_CFGR_MCOSEL_1|RCC_CFGR_MCOSEL_2)  /*!< LSI selectio
 284:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_LSE              (RCC_CFGR_MCOSEL_0|RCC_CFGR_MCOSEL_1|RCC_CFGR_MCOSEL_2) 
 285:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1SOURCE_HSI48            RCC_CFGR_MCOSEL_3                      /*!< HSI48 select
 286:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 287:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 288:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 289:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 290:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_MCO1_DIV  MCO1 prescaler
 291:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 292:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 293:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_1                  RCC_CFGR_MCOPRE_DIV1       /*!< MCO not divided */
 294:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_2                  RCC_CFGR_MCOPRE_DIV2       /*!< MCO divided by 2 */
 295:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_4                  RCC_CFGR_MCOPRE_DIV4       /*!< MCO divided by 4 */
 296:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_8                  RCC_CFGR_MCOPRE_DIV8       /*!< MCO divided by 8 */
 297:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_MCO1_DIV_16                 RCC_CFGR_MCOPRE_DIV16      /*!< MCO divided by 16 */
 298:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 299:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 300:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 301:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 302:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(USE_FULL_LL_DRIVER)
 303:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PERIPH_FREQUENCY Peripheral clock frequency
 304:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 305:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PERIPH_FREQUENCY_NO         0x00000000U                 /*!< No clock enabled for th
 307:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PERIPH_FREQUENCY_NA         0xFFFFFFFFU                 /*!< Frequency cannot be pro
 308:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 309:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 310:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 311:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* USE_FULL_LL_DRIVER */
 312:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 313:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USARTx_CLKSOURCE  Peripheral USART clock source selection
 314:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 315:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_PCLK2      (RCC_CCIPR_USART1SEL << 16U)                           /
 317:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_SYSCLK     ((RCC_CCIPR_USART1SEL << 16U) | RCC_CCIPR_USART1SEL_0) /
 318:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_HSI        ((RCC_CCIPR_USART1SEL << 16U) | RCC_CCIPR_USART1SEL_1) /
 319:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE_LSE        ((RCC_CCIPR_USART1SEL << 16U) | RCC_CCIPR_USART1SEL)   /
 320:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_PCLK1      (RCC_CCIPR_USART2SEL << 16U)                           /
 321:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_SYSCLK     ((RCC_CCIPR_USART2SEL << 16U) | RCC_CCIPR_USART2SEL_0) /
 322:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_HSI        ((RCC_CCIPR_USART2SEL << 16U) | RCC_CCIPR_USART2SEL_1) /
 323:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE_LSE        ((RCC_CCIPR_USART2SEL << 16U) | RCC_CCIPR_USART2SEL)   /
 324:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_PCLK1      (RCC_CCIPR_USART3SEL << 16U)                           /
 325:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_SYSCLK     ((RCC_CCIPR_USART3SEL << 16U) | RCC_CCIPR_USART3SEL_0) /
 326:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_HSI        ((RCC_CCIPR_USART3SEL << 16U) | RCC_CCIPR_USART3SEL_1) /
 327:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE_LSE        ((RCC_CCIPR_USART3SEL << 16U) | RCC_CCIPR_USART3SEL)   /
 328:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 329:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 330:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 331:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 332:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_UARTx_CLKSOURCE  Peripheral UART clock source selection
 333:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 334:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 335:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART4SEL)
 336:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_PCLK1       (RCC_CCIPR_UART4SEL << 16U)                           /*
 337:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_SYSCLK      ((RCC_CCIPR_UART4SEL << 16U) | RCC_CCIPR_UART4SEL_0)  /*
 338:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_HSI         ((RCC_CCIPR_UART4SEL << 16U) | RCC_CCIPR_UART4SEL_1)  /*
 339:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE_LSE         ((RCC_CCIPR_UART4SEL << 16U) | RCC_CCIPR_UART4SEL)    /*
 340:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART4SEL */
 341:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART5SEL)
 342:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_PCLK1       (RCC_CCIPR_UART5SEL << 16U)                           /*
 343:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_SYSCLK      ((RCC_CCIPR_UART5SEL << 16U) | RCC_CCIPR_UART5SEL_0)  /*
 344:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_HSI         ((RCC_CCIPR_UART5SEL << 16U) | RCC_CCIPR_UART5SEL_1)  /*
 345:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE_LSE         ((RCC_CCIPR_UART5SEL << 16U) | RCC_CCIPR_UART5SEL)    /*
 346:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART5SEL */
 347:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 348:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 349:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 350:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 351:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPUART1_CLKSOURCE  Peripheral LPUART clock source selection
 352:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 353:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 354:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_PCLK1     0x00000000U                     /*!< PCLK1 clock used as
 355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_SYSCLK    RCC_CCIPR_LPUART1SEL_0          /*!< SYSCLK clock used a
 356:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_HSI       RCC_CCIPR_LPUART1SEL_1          /*!< HSI clock used as L
 357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE_LSE       RCC_CCIPR_LPUART1SEL            /*!< LSE clock used as L
 358:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 359:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 360:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 361:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 362:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2Cx_CLKSOURCE  Peripheral I2C clock source selection
 363:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 364:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 365:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 366:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 367:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 368:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 369:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 371:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 373:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 374:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR2_I2C4SEL)
 375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE_PCLK1        ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 376:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE_SYSCLK       ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE_HSI          ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 378:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR2_I2C4SEL */
 379:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 380:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 381:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 382:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 383:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPTIM1_CLKSOURCE  Peripheral LPTIM clock source selection
 384:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 385:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 386:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_PCLK1      0x00000000U                                            /
 387:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_LSI        RCC_CCIPR_LPTIM1SEL_0                                  /
 388:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_HSI        RCC_CCIPR_LPTIM1SEL_1                                  /
 389:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE_LSE        RCC_CCIPR_LPTIM1SEL                                    /
 390:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 391:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 392:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 393:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 394:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SAI1_CLKSOURCE  Peripheral SAI clock source selection
 395:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 396:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 397:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_SYSCLK       0x00000000U                                           /*
 398:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_PLL          RCC_CCIPR_SAI1SEL_0                                   /*
 399:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_PIN          RCC_CCIPR_SAI1SEL_1                                   /*
 400:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE_HSI          (RCC_CCIPR_SAI1SEL_0 | RCC_CCIPR_SAI1SEL_1)           /*
 401:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 402:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 403:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 404:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 405:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2S_CLKSOURCE  Peripheral I2S clock source selection
 406:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 407:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 408:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_SYSCLK       0x00000000U                                          /*!<
 409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_PLL          RCC_CCIPR_I2S23SEL_0                                 /*!<
 410:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_PIN          RCC_CCIPR_I2S23SEL_1                                 /*!<
 411:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE_HSI          (RCC_CCIPR_I2S23SEL_0 | RCC_CCIPR_I2S23SEL_1)        /*!<
 412:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 413:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 414:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 415:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 416:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(FDCAN1)
 417:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_FDCAN_CLKSOURCE  Peripheral FDCAN clock source selection
 418:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 419:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 420:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE_HSE        0x00000000U             /*!< HSE clock used as FDCAN cloc
 421:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE_PLL        RCC_CCIPR_FDCANSEL_0    /*!< PLL clock used as FDCAN cloc
 422:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE_PCLK1      RCC_CCIPR_FDCANSEL_1    /*!< PCLK1 clock used as FDCAN cl
 423:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 424:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 425:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 426:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* FDCAN1 */
 427:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_RNG_CLKSOURCE  Peripheral RNG clock source selection
 429:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 430:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 431:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RNG_CLKSOURCE_HSI48        0x00000000U             /*!< HSI48 clock used as RNG cloc
 432:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RNG_CLKSOURCE_PLL          RCC_CCIPR_CLK48SEL_1    /*!< PLL clock used as RNG clock 
 433:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 434:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 435:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 436:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 437:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USB_CLKSOURCE  Peripheral USB clock source selection
 438:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 439:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 440:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USB_CLKSOURCE_HSI48        0x00000000U             /*!< HSI48 clock used as USB cloc
 441:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USB_CLKSOURCE_PLL          RCC_CCIPR_CLK48SEL_1    /*!< PLL clock used as USB clock 
 442:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 444:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 445:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 446:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_ADC_CLKSOURCE  Peripheral ADC clock source selection
 447:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 448:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 449:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE_NONE        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 450:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE_PLL         ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 451:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE_SYSCLK      ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 452:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_ADC345SEL)
 453:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE_NONE       ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 454:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE_PLL        ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 455:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE_SYSCLK     ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 456:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_ADC345SEL */
 457:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 459:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 460:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 461:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_QUADSPI  Peripheral QUADSPI get clock source
 462:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 463:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 464:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE_SYSCLK    0x00000000U              /*!< SYSCLK used as QuadSPI clo
 465:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE_HSI       RCC_CCIPR2_QSPISEL_0     /*!< HSI used as QuadSPI clock 
 466:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE_PLL       RCC_CCIPR2_QSPISEL_1     /*!< PLL used as QuadSPI clock 
 467:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 468:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 469:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 470:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 471:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 472:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USARTx Peripheral USART get clock source
 473:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 474:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 475:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART1_CLKSOURCE            RCC_CCIPR_USART1SEL /*!< USART1 Clock source selection *
 476:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART2_CLKSOURCE            RCC_CCIPR_USART2SEL /*!< USART2 Clock source selection *
 477:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USART3_CLKSOURCE            RCC_CCIPR_USART3SEL /*!< USART3 Clock source selection *
 478:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 479:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 480:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 481:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 482:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_UARTx Peripheral UART get clock source
 483:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 484:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 485:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART4SEL)
 486:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART4_CLKSOURCE             RCC_CCIPR_UART4SEL /*!< UART4 Clock source selection */
 487:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART4SEL */
 488:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_UART5SEL)
 489:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_UART5_CLKSOURCE             RCC_CCIPR_UART5SEL /*!< UART5 Clock source selection */
 490:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_UART5SEL */
 491:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 492:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 493:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 494:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 495:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPUART1 Peripheral LPUART get clock source
 496:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 497:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 498:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPUART1_CLKSOURCE           RCC_CCIPR_LPUART1SEL /*!< LPUART1 Clock source selection
 499:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 500:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 501:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 502:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 503:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2C1 Peripheral I2C get clock source
 504:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 505:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 506:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C1_CLKSOURCE              ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C1SEL_Pos << 1
 507:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C2_CLKSOURCE              ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C2SEL_Pos << 1
 508:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C3_CLKSOURCE              ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_I2C3SEL_Pos << 1
 509:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR2_I2C4SEL)
 510:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2C4_CLKSOURCE              ((RCC_OFFSET_CCIPR2 << 24U) | (RCC_CCIPR2_I2C4SEL_Pos <<
 511:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR2_I2C4SEL */
 512:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 513:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 514:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 515:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 516:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_LPTIM1 Peripheral LPTIM get clock source
 517:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 518:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 519:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_LPTIM1_CLKSOURCE            RCC_CCIPR_LPTIM1SEL /*!< LPTIM1 Clock source selection *
 520:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 521:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 522:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 523:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 524:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_SAI1  Peripheral SAI get clock source
 525:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 526:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 527:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_SAI1_CLKSOURCE              RCC_CCIPR_SAI1SEL /*!< SAI1 Clock source selection */
 528:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 529:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 530:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 531:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 532:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_I2S  Peripheral I2S get clock source
 533:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 534:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 535:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_I2S_CLKSOURCE              RCC_CCIPR_I2S23SEL /*!< I2S Clock source selection */
 536:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 537:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 538:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 539:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 540:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(FDCAN1)
 541:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_FDCAN  Peripheral FDCAN get clock source
 542:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 543:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 544:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_FDCAN_CLKSOURCE             RCC_CCIPR_FDCANSEL /*!< FDCAN Clock source selection */
 545:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* FDCAN1 */
 546:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 547:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 548:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 549:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 550:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 551:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_RNG  Peripheral RNG get clock source
 552:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 553:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 554:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RNG_CLKSOURCE               RCC_CCIPR_CLK48SEL /*!< RNG Clock source selection */
 555:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 556:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 557:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 558:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 559:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_USB  Peripheral USB get clock source
 560:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 561:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 562:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_USB_CLKSOURCE               RCC_CCIPR_CLK48SEL /*!< USB Clock source selection */
 563:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 564:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 565:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 566:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 567:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_ADC  Peripheral ADC get clock source
 568:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 569:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 570:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC12_CLKSOURCE             ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC12SEL_Pos << 
 571:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(RCC_CCIPR_ADC345SEL_Pos)
 572:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ADC345_CLKSOURCE            ((RCC_OFFSET_CCIPR << 24U) | (RCC_CCIPR_ADC345SEL_Pos <<
 573:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* RCC_CCIPR_ADC345SEL_Pos */
 574:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 575:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 576:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 577:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 578:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_QUADSPI  Peripheral QUADSPI get clock source
 579:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 580:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 581:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_QUADSPI_CLKSOURCE           RCC_CCIPR2_QSPISEL    /*!< QuadSPI Clock source selectio
 582:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 583:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 584:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 585:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 586:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_RTC_CLKSOURCE  RTC clock source selection
 587:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 588:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 589:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_NONE          0x00000000U                   /*!< No clock used as RTC 
 590:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_LSE           RCC_BDCR_RTCSEL_0       /*!< LSE oscillator clock used a
 591:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_LSI           RCC_BDCR_RTCSEL_1       /*!< LSI oscillator clock used a
 592:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_RTC_CLKSOURCE_HSE_DIV32     RCC_BDCR_RTCSEL         /*!< HSE oscillator clock divide
 593:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 594:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 595:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 596:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 597:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 598:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLSOURCE  PLL entry clock source
 599:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 600:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 601:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLSOURCE_NONE              0x00000000U             /*!< No clock */
 602:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLSOURCE_HSI               RCC_PLLCFGR_PLLSRC_HSI  /*!< HSI16 clock selected as PLL
 603:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLSOURCE_HSE               RCC_PLLCFGR_PLLSRC_HSE  /*!< HSE clock selected as PLL e
 604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 605:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 606:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 607:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 608:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLM_DIV  PLL division factor
 609:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 610:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 611:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_1                  0x00000000U                                             
 612:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_2                  RCC_PLLCFGR_PLLM_0                                      
 613:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_3                  RCC_PLLCFGR_PLLM_1                                      
 614:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_4                  (RCC_PLLCFGR_PLLM_1 | RCC_PLLCFGR_PLLM_0)               
 615:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_5                  RCC_PLLCFGR_PLLM_2                                      
 616:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_6                  (RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_PLLM_0)               
 617:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_7                  (RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_PLLM_1)               
 618:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_8                  (RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_PLLM_1 | RCC_PLLCFGR_P
 619:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_9                  RCC_PLLCFGR_PLLM_3                                      
 620:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_10                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_0)               
 621:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_11                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_1)               
 622:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_12                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_1 | RCC_PLLCFGR_P
 623:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_13                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2)               
 624:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_14                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_P
 625:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_15                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_P
 626:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLM_DIV_16                 (RCC_PLLCFGR_PLLM_3 | RCC_PLLCFGR_PLLM_2 | RCC_PLLCFGR_P
 627:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 628:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 629:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 630:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 631:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLR_DIV  PLL division factor (PLLR)
 632:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 633:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 634:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_2                  0x00000000U            /*!< Main PLL division factor for
 635:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_4                  (RCC_PLLCFGR_PLLR_0)   /*!< Main PLL division factor for
 636:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_6                  (RCC_PLLCFGR_PLLR_1)   /*!< Main PLL division factor for
 637:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLR_DIV_8                  (RCC_PLLCFGR_PLLR)     /*!< Main PLL division factor for
 638:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 639:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 640:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 641:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 642:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLP_DIV  PLL division factor (PLLP)
 643:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 644:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 645:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_2                  (RCC_PLLCFGR_PLLPDIV_1)                                 
 646:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_3                  (RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR_PLLPDIV_0)           
 647:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_4                  (RCC_PLLCFGR_PLLPDIV_2)                                 
 648:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_5                  (RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR_PLLPDIV_0)           
 649:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_6                  (RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR_PLLPDIV_1)           
 650:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_7                  (RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR
 651:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_8                  (RCC_PLLCFGR_PLLPDIV_3)                                 
 652:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_9                  (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_0)           
 653:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_10                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_1)           
 654:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_11                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR
 655:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_12                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2)           
 656:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_13                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 657:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_14                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 658:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_15                 (RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 659:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_16                 (RCC_PLLCFGR_PLLPDIV_4)                                 
 660:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_17                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_0)           
 661:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_18                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_1)           
 662:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_19                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_1|RCC_PLLCFGR
 663:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_20                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2)           
 664:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_21                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 665:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_22                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 666:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_23                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_2|RCC_PLLCFGR
 667:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_24                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3)           
 668:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_25                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 669:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_26                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 670:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_27                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 671:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_28                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 672:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_29                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 673:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_30                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 674:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLP_DIV_31                 (RCC_PLLCFGR_PLLPDIV_4|RCC_PLLCFGR_PLLPDIV_3|RCC_PLLCFGR
 675:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 676:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 677:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 678:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 679:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EC_PLLQ_DIV  PLL division factor (PLLQ)
 680:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 681:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 682:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_2                  0x00000000U             /*!< Main PLL division factor fo
 683:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_4                  (RCC_PLLCFGR_PLLQ_0)    /*!< Main PLL division factor fo
 684:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_6                  (RCC_PLLCFGR_PLLQ_1)    /*!< Main PLL division factor fo
 685:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_PLLQ_DIV_8                  (RCC_PLLCFGR_PLLQ)      /*!< Main PLL division factor fo
 686:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 687:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 688:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 689:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 690:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 691:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 692:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 693:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 694:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported macro ------------------------------------------------------------*/
 695:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Macros RCC Exported Macros
 696:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 697:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 698:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 699:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EM_WRITE_READ Common Write and read registers Macros
 700:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 701:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 702:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 703:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 704:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Write a value in RCC register
 705:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __REG__ Register to be written
 706:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __VALUE__ Value to be written in the register
 707:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 708:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 709:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_WriteReg(__REG__, __VALUE__) WRITE_REG(RCC->__REG__, __VALUE__)
 710:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 711:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 712:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Read a value in RCC register
 713:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __REG__ Register to be read
 714:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Register value
 715:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 716:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define LL_RCC_ReadReg(__REG__) READ_REG(RCC->__REG__)
 717:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 718:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 719:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 720:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 721:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EM_CALC_FREQ Calculate frequencies
 722:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 723:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 724:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 725:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 726:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PLLCLK frequency on system domain
 727:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note ex: @ref __LL_RCC_CALC_PLLCLK_FREQ (HSE_VALUE,@ref LL_RCC_PLL_GetDivider (),
 728:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *             @ref LL_RCC_PLL_GetN (), @ref LL_RCC_PLL_GetR ());
 729:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __INPUTFREQ__ PLL Input frequency (based on HSE/HSI)
 730:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLM__ This parameter can be one of the following values:
 731:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
 732:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
 733:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
 734:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
 735:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
 736:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
 737:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
 738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
 739:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
 740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
 741:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
 742:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
 743:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
 744:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
 745:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
 746:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
 747:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLN__ Between Min_Data = 8 and Max_Data = 127
 748:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLR__ This parameter can be one of the following values:
 749:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_2
 750:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_4
 751:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_6
 752:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLR_DIV_8
 753:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PLL clock frequency (in Hz)
 754:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 755:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PLLCLK_FREQ(__INPUTFREQ__, __PLLM__, __PLLN__, __PLLR__) ((__INPUTFREQ__) * (
 756:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****                    ((((__PLLR__) >> RCC_PLLCFGR_PLLR_Pos) + 1U) * 2U))
 757:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 758:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 759:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PLLCLK frequency used on ADC domain
 760:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note ex: @ref __LL_RCC_CALC_PLLCLK_ADC_FREQ (HSE_VALUE,@ref LL_RCC_PLL_GetDivider (),
 761:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *             @ref LL_RCC_PLL_GetN (), @ref LL_RCC_PLL_GetP ());
 762:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __INPUTFREQ__ PLL Input frequency (based on HSE/HSI)
 763:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLM__ This parameter can be one of the following values:
 764:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
 765:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
 766:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
 767:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
 768:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
 769:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
 770:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
 771:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
 772:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
 773:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
 774:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
 775:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
 776:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
 777:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
 778:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
 779:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
 780:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLN__ Between Min_Data = 8 and Max_Data = 127
 782:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLP__ This parameter can be one of the following values:
 783:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_2
 784:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_3
 785:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_4
 786:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_5
 787:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_6
 788:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_7
 789:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_8
 790:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_9
 791:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_10
 792:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_11
 793:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_12
 794:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_13
 795:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_14
 796:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_15
 797:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_16
 798:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_17
 799:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_18
 800:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_19
 801:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_20
 802:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_21
 803:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_22
 804:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_23
 805:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_24
 806:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_25
 807:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_26
 808:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_27
 809:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_28
 810:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_29
 811:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_30
 812:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLP_DIV_31
 813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PLL clock frequency (in Hz)
 814:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 815:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PLLCLK_ADC_FREQ(__INPUTFREQ__, __PLLM__, __PLLN__, __PLLP__) ((__INPUTFREQ__)
 816:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****                    ((__PLLP__) >> RCC_PLLCFGR_PLLPDIV_Pos))
 817:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 818:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 819:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PLLCLK frequency used on 48M domain
 820:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note ex: @ref __LL_RCC_CALC_PLLCLK_48M_FREQ (HSE_VALUE,@ref LL_RCC_PLL_GetDivider (),
 821:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *             @ref LL_RCC_PLL_GetN (), @ref LL_RCC_PLL_GetQ ());
 822:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __INPUTFREQ__ PLL Input frequency (based on HSE/HSI)
 823:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLM__ This parameter can be one of the following values:
 824:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_1
 825:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_2
 826:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_3
 827:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_4
 828:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_5
 829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_6
 830:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_7
 831:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_8
 832:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_9
 833:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_10
 834:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_11
 835:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_12
 836:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_13
 837:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_14
 838:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_15
 839:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLM_DIV_16
 840:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLN__ Between Min_Data = 8 and Max_Data = 127
 841:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __PLLQ__ This parameter can be one of the following values:
 842:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_2
 843:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_4
 844:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_6
 845:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_PLLQ_DIV_8
 846:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PLL clock frequency (in Hz)
 847:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 848:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PLLCLK_48M_FREQ(__INPUTFREQ__, __PLLM__, __PLLN__, __PLLQ__) ((__INPUTFREQ__)
 849:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****                    ((((__PLLQ__) >> RCC_PLLCFGR_PLLQ_Pos) + 1U) << 1U))
 850:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 851:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 852:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the HCLK frequency
 853:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __SYSCLKFREQ__ SYSCLK frequency (based on HSE/HSI/PLLCLK)
 854:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __AHBPRESCALER__ This parameter can be one of the following values:
 855:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_1
 856:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_2
 857:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_4
 858:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_8
 859:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_16
 860:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_64
 861:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_128
 862:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_256
 863:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_512
 864:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval HCLK clock frequency (in Hz)
 865:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 866:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_HCLK_FREQ(__SYSCLKFREQ__,__AHBPRESCALER__) ((__SYSCLKFREQ__) >> (AHBPrescTabl
 867:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 868:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 869:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PCLK1 frequency (ABP1)
 870:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __HCLKFREQ__ HCLK frequency
 871:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __APB1PRESCALER__ This parameter can be one of the following values:
 872:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_1
 873:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_2
 874:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_4
 875:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_8
 876:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_16
 877:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PCLK1 clock frequency (in Hz)
 878:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 879:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PCLK1_FREQ(__HCLKFREQ__, __APB1PRESCALER__) ((__HCLKFREQ__) >> (APBPrescTable
 880:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 881:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 882:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Helper macro to calculate the PCLK2 frequency (ABP2)
 883:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __HCLKFREQ__ HCLK frequency
 884:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  __APB2PRESCALER__ This parameter can be one of the following values:
 885:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_1
 886:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_2
 887:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_4
 888:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_8
 889:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_16
 890:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval PCLK2 clock frequency (in Hz)
 891:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 892:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #define __LL_RCC_CALC_PCLK2_FREQ(__HCLKFREQ__, __APB2PRESCALER__) ((__HCLKFREQ__) >> (APBPrescTable
 893:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 894:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 895:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 896:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 897:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 898:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 899:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 900:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 901:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 902:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /* Exported functions --------------------------------------------------------*/
 903:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_Exported_Functions RCC Exported Functions
 904:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 905:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 906:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 907:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_HSE HSE
 908:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 909:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 910:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 911:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 912:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable the Clock Security System.
 913:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           CSSON         LL_RCC_HSE_EnableCSS
 914:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 915:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 916:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_EnableCSS(void)
 917:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 918:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_CSSON);
 919:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 920:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 921:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 922:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSE external oscillator (HSE Bypass)
 923:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEBYP        LL_RCC_HSE_EnableBypass
 924:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 925:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 926:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_EnableBypass(void)
 927:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 928:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSEBYP);
 929:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 930:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 931:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 932:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSE external oscillator (HSE Bypass)
 933:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEBYP        LL_RCC_HSE_DisableBypass
 934:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 935:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 936:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_DisableBypass(void)
 937:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 938:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEBYP);
 939:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 940:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 941:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 942:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSE crystal oscillator (HSE ON)
 943:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEON         LL_RCC_HSE_Enable
 944:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 945:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 946:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_Enable(void)
 947:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 948:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSEON);
 949:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 950:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 951:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 952:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSE crystal oscillator (HSE ON)
 953:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSEON         LL_RCC_HSE_Disable
 954:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 955:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 956:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSE_Disable(void)
 957:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 958:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEON);
 959:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 960:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 961:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 962:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSE oscillator Ready
 963:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSERDY        LL_RCC_HSE_IsReady
 964:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
 965:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 966:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSE_IsReady(void)
 967:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 968:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CR, RCC_CR_HSERDY) == (RCC_CR_HSERDY)) ? 1UL : 0UL);
 969:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 970:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 971:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 972:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
 973:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 974:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 975:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_HSI HSI
 976:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
 977:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 978:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 979:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 980:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSI even in stop mode
 981:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note HSI oscillator is forced ON even in Stop mode
 982:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSIKERON      LL_RCC_HSI_EnableInStopMode
 983:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 984:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 985:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_EnableInStopMode(void)
 986:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 987:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSIKERON);
 988:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 989:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
 990:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
 991:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSI in stop mode
 992:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSIKERON      LL_RCC_HSI_DisableInStopMode
 993:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
 994:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
 995:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_DisableInStopMode(void)
 996:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 997:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSIKERON);
 998:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 999:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1000:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1001:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSI oscillator
1002:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSION         LL_RCC_HSI_Enable
1003:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1004:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1005:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_Enable(void)
1006:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1007:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CR, RCC_CR_HSION);
1008:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1009:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1010:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1011:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSI oscillator
1012:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSION         LL_RCC_HSI_Disable
1013:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1014:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1015:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_Disable(void)
1016:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1017:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CR, RCC_CR_HSION);
1018:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1019:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1020:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1021:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSI clock is ready
1022:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CR           HSIRDY        LL_RCC_HSI_IsReady
1023:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1024:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1025:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI_IsReady(void)
1026:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1027:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CR, RCC_CR_HSIRDY) == (RCC_CR_HSIRDY)) ? 1UL : 0UL);
1028:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1029:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1030:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1031:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get HSI Calibration value
1032:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note When HSITRIM is written, HSICAL is updated with the sum of
1033:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       HSITRIM and the factory trim value
1034:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll ICSCR        HSICAL        LL_RCC_HSI_GetCalibration
1035:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Between Min_Data = 0x00 and Max_Data = 0xFF
1036:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1037:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI_GetCalibration(void)
1038:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1039:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->ICSCR, RCC_ICSCR_HSICAL) >> RCC_ICSCR_HSICAL_Pos);
1040:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1041:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1042:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1043:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set HSI Calibration trimming
1044:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note user-programmable trimming value that is added to the HSICAL
1045:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Default value is 16, which, when added to the HSICAL value,
1046:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       should trim the HSI to 16 MHz +/- 1 %
1047:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll ICSCR        HSITRIM       LL_RCC_HSI_SetCalibTrimming
1048:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Value Between Min_Data = 0 and Max_Data = 127
1049:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1050:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1051:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI_SetCalibTrimming(uint32_t Value)
1052:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1053:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->ICSCR, RCC_ICSCR_HSITRIM, Value << RCC_ICSCR_HSITRIM_Pos);
1054:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1055:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1056:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1057:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get HSI Calibration trimming
1058:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll ICSCR        HSITRIM       LL_RCC_HSI_GetCalibTrimming
1059:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Between Min_Data = 0 and Max_Data = 127
1060:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1061:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI_GetCalibTrimming(void)
1062:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1063:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->ICSCR, RCC_ICSCR_HSITRIM) >> RCC_ICSCR_HSITRIM_Pos);
1064:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1065:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1066:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1067:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1068:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1069:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1070:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_HSI48 HSI48
1071:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1072:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1073:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1074:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1075:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable HSI48
1076:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48ON       LL_RCC_HSI48_Enable
1077:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1078:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1079:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI48_Enable(void)
1080:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1081:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CRRCR, RCC_CRRCR_HSI48ON);
1082:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1083:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1084:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1085:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable HSI48
1086:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48ON       LL_RCC_HSI48_Disable
1087:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1088:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1089:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_HSI48_Disable(void)
1090:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1091:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CRRCR, RCC_CRRCR_HSI48ON);
1092:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1093:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1094:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1095:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if HSI48 oscillator Ready
1096:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48RDY      LL_RCC_HSI48_IsReady
1097:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1098:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1099:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI48_IsReady(void)
1100:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1101:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) == (RCC_CRRCR_HSI48RDY)) ? 1UL : 0UL);
1102:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1103:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1104:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1105:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get HSI48 Calibration value
1106:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CRRCR          HSI48CAL      LL_RCC_HSI48_GetCalibration
1107:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Between Min_Data = 0x00 and Max_Data = 0x1FF
1108:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1109:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_HSI48_GetCalibration(void)
1110:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1111:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48CAL) >> RCC_CRRCR_HSI48CAL_Pos);
1112:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1113:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1114:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1115:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1116:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1117:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1118:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_LSE LSE
1119:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1120:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1121:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1122:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1123:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable  Low Speed External (LSE) crystal.
1124:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEON         LL_RCC_LSE_Enable
1125:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1126:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1127:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_Enable(void)
1128:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1129:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSEON);
1130:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1131:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1132:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1133:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable  Low Speed External (LSE) crystal.
1134:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEON         LL_RCC_LSE_Disable
1135:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1136:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1137:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_Disable(void)
1138:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1139:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSEON);
1140:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1141:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1142:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1143:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable external clock source (LSE bypass).
1144:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEBYP        LL_RCC_LSE_EnableBypass
1145:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1146:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1147:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_EnableBypass(void)
1148:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1149:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSEBYP);
1150:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1151:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1152:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1153:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable external clock source (LSE bypass).
1154:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEBYP        LL_RCC_LSE_DisableBypass
1155:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1156:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1157:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_DisableBypass(void)
1158:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1159:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSEBYP);
1160:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1161:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1162:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1163:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set LSE oscillator drive capability
1164:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note The oscillator is in Xtal mode when it is not in bypass mode.
1165:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEDRV        LL_RCC_LSE_SetDriveCapability
1166:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LSEDrive This parameter can be one of the following values:
1167:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_LOW
1168:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMLOW
1169:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMHIGH
1170:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_HIGH
1171:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1172:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1173:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_SetDriveCapability(uint32_t LSEDrive)
1174:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1175:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->BDCR, RCC_BDCR_LSEDRV, LSEDrive);
1176:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1177:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1178:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1179:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get LSE oscillator drive capability
1180:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSEDRV        LL_RCC_LSE_GetDriveCapability
1181:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1182:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_LOW
1183:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMLOW
1184:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_MEDIUMHIGH
1185:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSEDRIVE_HIGH
1186:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1187:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSE_GetDriveCapability(void)
1188:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1189:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->BDCR, RCC_BDCR_LSEDRV));
1190:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1191:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1192:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1193:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable Clock security system on LSE.
1194:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSECSSON      LL_RCC_LSE_EnableCSS
1195:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1196:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1197:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_EnableCSS(void)
1198:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1199:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSECSSON);
1200:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1201:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1202:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1203:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable Clock security system on LSE.
1204:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @note Clock security system can be disabled only after a LSE
1205:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *       failure detection. In that case it MUST be disabled by software.
1206:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSECSSON      LL_RCC_LSE_DisableCSS
1207:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1208:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1209:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSE_DisableCSS(void)
1210:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1211:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSECSSON);
1212:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1213:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1214:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1215:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if LSE oscillator Ready
1216:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSERDY        LL_RCC_LSE_IsReady
1217:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1218:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1219:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSE_IsReady(void)
1220:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1221:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == (RCC_BDCR_LSERDY)) ? 1UL : 0UL);
1222:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1223:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1224:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1225:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if CSS on LSE failure Detection
1226:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSECSSD       LL_RCC_LSE_IsCSSDetected
1227:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1228:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1229:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSE_IsCSSDetected(void)
1230:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1231:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->BDCR, RCC_BDCR_LSECSSD) == (RCC_BDCR_LSECSSD)) ? 1UL : 0UL);
1232:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1233:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1234:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1235:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1236:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1237:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1238:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_LSI LSI
1239:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1240:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1241:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1242:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1243:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable LSI Oscillator
1244:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          LSION         LL_RCC_LSI_Enable
1245:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1246:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1247:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSI_Enable(void)
1248:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1249:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->CSR, RCC_CSR_LSION);
1250:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1251:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1252:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1253:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable LSI Oscillator
1254:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          LSION         LL_RCC_LSI_Disable
1255:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1256:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1257:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSI_Disable(void)
1258:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1259:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->CSR, RCC_CSR_LSION);
1260:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1261:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1262:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1263:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Check if LSI is Ready
1264:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CSR          LSIRDY        LL_RCC_LSI_IsReady
1265:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval State of bit (1 or 0).
1266:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1267:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSI_IsReady(void)
1268:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1269:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return ((READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) == (RCC_CSR_LSIRDY)) ? 1UL : 0UL);
1270:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1271:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1272:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1273:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1274:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1275:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1276:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_LSCO LSCO
1277:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1278:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1279:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1280:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1281:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Enable Low speed clock
1282:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOEN        LL_RCC_LSCO_Enable
1283:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1284:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1285:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSCO_Enable(void)
1286:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1287:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   SET_BIT(RCC->BDCR, RCC_BDCR_LSCOEN);
1288:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1289:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1290:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1291:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Disable Low speed clock
1292:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOEN        LL_RCC_LSCO_Disable
1293:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1294:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1295:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSCO_Disable(void)
1296:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1297:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSCOEN);
1298:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1299:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1300:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1301:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure Low speed clock selection
1302:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOSEL       LL_RCC_LSCO_SetSource
1303:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
1304:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSI
1305:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSE
1306:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1307:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1308:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_LSCO_SetSource(uint32_t Source)
1309:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1310:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->BDCR, RCC_BDCR_LSCOSEL, Source);
1311:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1312:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1313:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1314:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get Low speed clock selection
1315:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll BDCR         LSCOSEL       LL_RCC_LSCO_GetSource
1316:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1317:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSI
1318:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LSCO_CLKSOURCE_LSE
1319:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1320:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_LSCO_GetSource(void)
1321:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1322:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->BDCR, RCC_BDCR_LSCOSEL));
1323:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1324:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1325:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1326:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1327:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1328:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1329:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_System System
1330:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1331:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1332:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1333:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1334:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure the system clock source
1335:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         SW            LL_RCC_SetSysClkSource
1336:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
1337:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_HSI
1338:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_HSE
1339:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_PLL
1340:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1341:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1342:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetSysClkSource(uint32_t Source)
1343:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1344:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_SW, Source);
1345:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1346:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1347:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1348:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get the system clock source
1349:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         SWS           LL_RCC_GetSysClkSource
1350:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1351:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_STATUS_HSI
1352:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_STATUS_HSE
1353:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYS_CLKSOURCE_STATUS_PLL
1354:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1355:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetSysClkSource(void)
1356:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1357:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_SWS));
1358:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1359:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1360:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1361:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set AHB prescaler
1362:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         HPRE          LL_RCC_SetAHBPrescaler
1363:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Prescaler This parameter can be one of the following values:
1364:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_1
1365:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_2
1366:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_4
1367:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_8
1368:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_16
1369:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_64
1370:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_128
1371:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_256
1372:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_512
1373:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1374:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1375:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetAHBPrescaler(uint32_t Prescaler)
1376:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1377:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, Prescaler);
1378:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1379:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1380:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1381:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set APB1 prescaler
1382:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE1         LL_RCC_SetAPB1Prescaler
1383:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Prescaler This parameter can be one of the following values:
1384:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_1
1385:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_2
1386:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_4
1387:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_8
1388:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_16
1389:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1390:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1391:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetAPB1Prescaler(uint32_t Prescaler)
1392:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1393:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, Prescaler);
1394:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1395:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1396:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1397:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Set APB2 prescaler
1398:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE2         LL_RCC_SetAPB2Prescaler
1399:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Prescaler This parameter can be one of the following values:
1400:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_1
1401:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_2
1402:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_4
1403:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_8
1404:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_16
1405:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1406:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1407:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetAPB2Prescaler(uint32_t Prescaler)
1408:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1409:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, Prescaler);
1410:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1411:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1412:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1413:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get AHB prescaler
1414:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         HPRE          LL_RCC_GetAHBPrescaler
1415:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1416:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_1
1417:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_2
1418:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_4
1419:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_8
1420:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_16
1421:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_64
1422:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_128
1423:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_256
1424:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SYSCLK_DIV_512
1425:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1426:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetAHBPrescaler(void)
1427:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1428:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_HPRE));
1429:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1430:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1431:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1432:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get APB1 prescaler
1433:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE1         LL_RCC_GetAPB1Prescaler
1434:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1435:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_1
1436:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_2
1437:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_4
1438:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_8
1439:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB1_DIV_16
1440:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1441:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetAPB1Prescaler(void)
1442:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1443:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_PPRE1));
1444:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1445:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1446:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1447:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get APB2 prescaler
1448:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         PPRE2         LL_RCC_GetAPB2Prescaler
1449:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1450:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_1
1451:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_2
1452:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_4
1453:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_8
1454:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_APB2_DIV_16
1455:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1456:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetAPB2Prescaler(void)
1457:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1458:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_PPRE2));
1459:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1460:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1461:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1462:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1463:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1464:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1465:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_MCO MCO
1466:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1467:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1468:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1469:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1470:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure MCOx
1471:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CFGR         MCOSEL        LL_RCC_ConfigMCO\n
1472:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         CFGR         MCOPRE        LL_RCC_ConfigMCO
1473:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  MCOxSource This parameter can be one of the following values:
1474:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_NOCLOCK
1475:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_SYSCLK
1476:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_HSI
1477:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_HSE
1478:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_HSI48
1479:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_PLLCLK
1480:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_LSI
1481:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1SOURCE_LSE
1482:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1483:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1484:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  MCOxPrescaler This parameter can be one of the following values:
1485:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_1
1486:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_2
1487:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_4
1488:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_8
1489:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_MCO1_DIV_16
1490:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1491:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1492:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_ConfigMCO(uint32_t MCOxSource, uint32_t MCOxPrescaler)
1493:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1494:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CFGR, RCC_CFGR_MCOSEL | RCC_CFGR_MCOPRE, MCOxSource | MCOxPrescaler);
1495:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1496:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1497:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1498:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @}
1499:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1500:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1501:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /** @defgroup RCC_LL_EF_Peripheral_Clock_Source Peripheral Clock Source
1502:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @{
1503:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1504:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1505:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1506:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure USARTx clock source
1507:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        USARTxSEL     LL_RCC_SetUSARTClockSource
1508:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  USARTxSource This parameter can be one of the following values:
1509:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_PCLK2
1510:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_SYSCLK
1511:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_HSI
1512:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_LSE
1513:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_PCLK1
1514:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_SYSCLK
1515:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_HSI
1516:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_LSE
1517:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_PCLK1
1518:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_SYSCLK
1519:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_HSI
1520:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_LSE
1521:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1522:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1523:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetUSARTClockSource(uint32_t USARTxSource)
1524:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1525:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, (USARTxSource >> 16U), (USARTxSource & 0x0000FFFFU));
1526:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1527:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1528:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(UART4)
1529:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1530:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure UARTx clock source
1531:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        UARTxSEL      LL_RCC_SetUARTClockSource
1532:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  UARTxSource This parameter can be one of the following values:
1533:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_PCLK1 (*)
1534:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_SYSCLK (*)
1535:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_HSI (*)
1536:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_LSE (*)
1537:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_PCLK1 (*)
1538:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_SYSCLK (*)
1539:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_HSI (*)
1540:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_LSE (*)
1541:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1542:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1543:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1544:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1545:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetUARTClockSource(uint32_t UARTxSource)
1546:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1547:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, (UARTxSource >> 16U), (UARTxSource & 0x0000FFFFU));
1548:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1549:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* UART4 */
1550:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1551:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1552:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure LPUART1x clock source
1553:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPUART1SEL    LL_RCC_SetLPUARTClockSource
1554:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPUARTxSource This parameter can be one of the following values:
1555:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_PCLK1
1556:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_SYSCLK
1557:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_HSI
1558:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_LSE
1559:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1560:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1561:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetLPUARTClockSource(uint32_t LPUARTxSource)
1562:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1563:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_LPUART1SEL, LPUARTxSource);
1564:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1565:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1566:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1567:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure I2Cx clock source
1568:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        I2CxSEL       LL_RCC_SetI2CClockSource
1569:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  I2CxSource This parameter can be one of the following values:
1570:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_PCLK1
1571:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_SYSCLK
1572:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_HSI
1573:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_PCLK1
1574:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_SYSCLK
1575:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_HSI
1576:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_PCLK1
1577:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_SYSCLK
1578:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_HSI
1579:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_PCLK1 (*)
1580:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_SYSCLK (*)
1581:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_HSI (*)
1582:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1583:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1584:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1585:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1586:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetI2CClockSource(uint32_t I2CxSource)
1587:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1588:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   __IO uint32_t *reg = (__IO uint32_t *)(uint32_t)(RCC_BASE + 0x88U + (I2CxSource >> 24U));
1589:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(*reg, 3UL << ((I2CxSource & 0x001F0000U) >> 16U), ((I2CxSource & 0x000000FFU) << ((I2C
1590:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1591:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1592:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1593:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure LPTIMx clock source
1594:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPTIM1SEL     LL_RCC_SetLPTIMClockSource
1595:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPTIMxSource This parameter can be one of the following values:
1596:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_PCLK1
1597:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSI
1598:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_HSI
1599:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSE
1600:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1601:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1602:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetLPTIMClockSource(uint32_t LPTIMxSource)
1603:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_LPTIM1SEL, LPTIMxSource);
1605:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1606:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1607:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1608:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure SAIx clock source
1609:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        SAI1SEL       LL_RCC_SetSAIClockSource
1610:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  SAIxSource This parameter can be one of the following values:
1611:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_SYSCLK
1612:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_PLL
1613:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_PIN
1614:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_SAI1_CLKSOURCE_HSI
1615:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1616:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1617:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1618:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1619:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetSAIClockSource(uint32_t SAIxSource)
1620:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1621:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_SAI1SEL, SAIxSource);
1622:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1623:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1624:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1625:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure I2S clock source
1626:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        I2S23SEL      LL_RCC_SetI2SClockSource
1627:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  I2SxSource This parameter can be one of the following values:
1628:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_SYSCLK
1629:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_PLL
1630:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_PIN
1631:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2S_CLKSOURCE_HSI
1632:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1633:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1634:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetI2SClockSource(uint32_t I2SxSource)
1635:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1636:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_I2S23SEL, I2SxSource);
1637:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1638:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1639:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(FDCAN1)
1640:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1641:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure FDCAN clock source
1642:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        FDCANSEL      LL_RCC_SetFDCANClockSource
1643:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  FDCANxSource This parameter can be one of the following values:
1644:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_HSE
1645:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_PLL
1646:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_FDCAN_CLKSOURCE_PCLK1
1647:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1648:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1649:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetFDCANClockSource(uint32_t FDCANxSource)
1650:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1651:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_FDCANSEL, FDCANxSource);
1652:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1653:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* FDCAN1 */
1654:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1655:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1656:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure RNG clock source
1657:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        CLK48SEL      LL_RCC_SetRNGClockSource
1658:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  RNGxSource This parameter can be one of the following values:
1659:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE_HSI48
1660:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_RNG_CLKSOURCE_PLL
1661:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1662:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1663:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetRNGClockSource(uint32_t RNGxSource)
1664:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1665:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_CLK48SEL, RNGxSource);
1666:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1667:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1668:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1669:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure USB clock source
1670:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        CLK48SEL      LL_RCC_SetUSBClockSource
1671:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  USBxSource This parameter can be one of the following values:
1672:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USB_CLKSOURCE_HSI48
1673:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USB_CLKSOURCE_PLL
1674:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1675:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1676:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetUSBClockSource(uint32_t USBxSource)
1677:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1678:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, RCC_CCIPR_CLK48SEL, USBxSource);
1679:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1680:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1681:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1682:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure ADC clock source
1683:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        ADC12SEL         LL_RCC_SetADCClockSource\n
1684:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         CCIPR        ADC345SEL        LL_RCC_SetADCClockSource
1685:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  ADCxSource This parameter can be one of the following values:
1686:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_NONE
1687:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_PLL
1688:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC12_CLKSOURCE_SYSCLK
1689:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_NONE   (*)
1690:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_PLL    (*)
1691:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_ADC345_CLKSOURCE_SYSCLK (*)
1692:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1693:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1694:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1695:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1696:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetADCClockSource(uint32_t ADCxSource)
1697:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1698:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR, 3U << ((ADCxSource & 0x001F0000U) >> 16U), ((ADCxSource & 0x000000FFU) << 
1699:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1700:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1701:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(QUADSPI)
1702:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1703:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Configure QUADSPI clock source
1704:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR2         QSPISEL     LL_RCC_SetQUADSPIClockSource
1705:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  Source This parameter can be one of the following values:
1706:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_SYSCLK
1707:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_HSI
1708:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_QUADSPI_CLKSOURCE_PLL
1709:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval None
1710:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1711:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE void LL_RCC_SetQUADSPIClockSource(uint32_t Source)
1712:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1713:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   MODIFY_REG(RCC->CCIPR2, RCC_CCIPR2_QSPISEL, Source);
1714:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1715:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* QUADSPI */
1716:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1717:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1718:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get USARTx clock source
1719:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        USARTxSEL     LL_RCC_GetUSARTClockSource
1720:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  USARTx This parameter can be one of the following values:
1721:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE
1722:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE
1723:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE
1724:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1725:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_PCLK2
1726:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_SYSCLK
1727:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_HSI
1728:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART1_CLKSOURCE_LSE
1729:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_PCLK1
1730:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_SYSCLK
1731:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_HSI
1732:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART2_CLKSOURCE_LSE
1733:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_PCLK1
1734:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_SYSCLK
1735:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_HSI
1736:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_USART3_CLKSOURCE_LSE
1737:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1738:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetUSARTClockSource(uint32_t USARTx)
1739:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1740:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, USARTx) | (USARTx << 16U));
1741:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1742:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1743:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #if defined(UART4)
1744:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1745:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get UARTx clock source
1746:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        UARTxSEL      LL_RCC_GetUARTClockSource
1747:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  UARTx This parameter can be one of the following values:
1748:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE (*)
1749:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE (*)
1750:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1751:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_PCLK1 (*)
1752:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_SYSCLK (*)
1753:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_HSI (*)
1754:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART4_CLKSOURCE_LSE (*)
1755:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_PCLK1 (*)
1756:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_SYSCLK (*)
1757:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_HSI (*)
1758:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_UART5_CLKSOURCE_LSE (*)
1759:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1760:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1761:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1762:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetUARTClockSource(uint32_t UARTx)
1763:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1764:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, UARTx) | (UARTx << 16U));
1765:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1766:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** #endif /* UART4 */
1767:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1768:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1769:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get LPUARTx clock source
1770:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPUART1SEL    LL_RCC_GetLPUARTClockSource
1771:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPUARTx This parameter can be one of the following values:
1772:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE
1773:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1774:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_PCLK1
1775:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_SYSCLK
1776:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_HSI
1777:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPUART1_CLKSOURCE_LSE
1778:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1779:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetLPUARTClockSource(uint32_t LPUARTx)
1780:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1781:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, LPUARTx));
1782:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1783:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1784:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1785:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get I2Cx clock source
1786:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        I2CxSEL       LL_RCC_GetI2CClockSource
1787:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  I2Cx This parameter can be one of the following values:
1788:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE
1789:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE
1790:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE
1791:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE (*)
1792:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1793:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1794:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1795:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_PCLK1
1796:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_SYSCLK
1797:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C1_CLKSOURCE_HSI
1798:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_PCLK1
1799:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_SYSCLK
1800:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C2_CLKSOURCE_HSI
1801:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_PCLK1
1802:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_SYSCLK
1803:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C3_CLKSOURCE_HSI
1804:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_PCLK1 (*)
1805:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_SYSCLK (*)
1806:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_I2C4_CLKSOURCE_HSI (*)
1807:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *
1808:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         (*) value not defined in all devices.
1809:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****  */
1810:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetI2CClockSource(uint32_t I2Cx)
1811:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1812:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   __IO const uint32_t *reg = (__IO uint32_t *)(uint32_t)(RCC_BASE + 0x88U + (I2Cx >> 24U));
1813:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)((READ_BIT(*reg, 3UL << ((I2Cx & 0x001F0000U) >> 16U)) >> ((I2Cx & 0x001F0000U) 
1814:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
1815:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** 
1816:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** /**
1817:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @brief  Get LPTIMx clock source
1818:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @rmtoll CCIPR        LPTIMxSEL     LL_RCC_GetLPTIMClockSource
1819:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @param  LPTIMx This parameter can be one of the following values:
1820:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE
1821:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   * @retval Returned value can be one of the following values:
1822:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_PCLK1
1823:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSI
1824:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_HSI
1825:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   *         @arg @ref LL_RCC_LPTIM1_CLKSOURCE_LSE
1826:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   */
1827:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** __STATIC_INLINE uint32_t LL_RCC_GetLPTIMClockSource(uint32_t LPTIMx)
 285              		.loc 5 1827 26 view .LVU69
 286              	.LBB61:
1828:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
1829:../../..\CubeG4\include/stm32g4xx_ll_rcc.h ****   return (uint32_t)(READ_BIT(RCC->CCIPR, LPTIMx));
 287              		.loc 5 1829 3 view .LVU70
 288              		.loc 5 1829 21 is_stmt 0 view .LVU71
 289 000c 0ABF     		itet	eq
 290 000e 03F5CA33 		addeq	r3, r3, #103424
 291              	.LBE61:
 292              	.LBE60:
 194:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   uint32_t tmpIER;
 293              		.loc 1 194 12 view .LVU72
 294 0012 4FF00008 		movne	r8, #0
 295              	.LBB64:
 296              	.LBB62:
 297              		.loc 5 1829 21 view .LVU73
 298 0016 D3F88830 		ldreq	r3, [r3, #136]
 299              	.LBE62:
 300              	.LBE64:
 212:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****        break;
 213:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****      default:
 214:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****        break;
 215:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 216:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 217:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Save LPTIM configuration registers */
 218:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpIER = LPTIMx->IER;
 301              		.loc 1 218 10 view .LVU74
 302 001a 8568     		ldr	r5, [r0, #8]
 219:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpCFGR = LPTIMx->CFGR;
 303              		.loc 1 219 11 view .LVU75
 304 001c C668     		ldr	r6, [r0, #12]
 220:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpCMP = LPTIMx->CMP;
 305              		.loc 1 220 10 view .LVU76
 306 001e D0F81490 		ldr	r9, [r0, #20]
 221:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpARR = LPTIMx->ARR;
 307              		.loc 1 221 10 view .LVU77
 308 0022 D0F818A0 		ldr	r10, [r0, #24]
 222:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpOR = LPTIMx->OR;
 309              		.loc 1 222 9 view .LVU78
 310 0026 076A     		ldr	r7, [r0, #32]
 311              	.LBB65:
 312              	.LBB63:
 313              		.loc 5 1829 10 view .LVU79
 314 0028 08BF     		it	eq
 315 002a 03F44028 		andeq	r8, r3, #786432
 316              	.LVL16:
 317              		.loc 5 1829 10 view .LVU80
 318              	.LBE63:
 319              	.LBE65:
 212:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****      default:
 320              		.loc 1 212 8 is_stmt 1 view .LVU81
 218:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpCFGR = LPTIMx->CFGR;
 321              		.loc 1 218 3 view .LVU82
 219:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpCMP = LPTIMx->CMP;
 322              		.loc 1 219 3 view .LVU83
 220:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpARR = LPTIMx->ARR;
 323              		.loc 1 220 3 view .LVU84
 221:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   tmpOR = LPTIMx->OR;
 324              		.loc 1 221 3 view .LVU85
 325              		.loc 1 222 3 view .LVU86
 223:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 224:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /************* Reset LPTIM ************/
 225:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   (void)LL_LPTIM_DeInit(LPTIMx);
 326              		.loc 1 225 3 view .LVU87
 327              		.loc 1 225 9 is_stmt 0 view .LVU88
 328 002e FFF7FEFF 		bl	LL_LPTIM_DeInit
 329              	.LVL17:
 226:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 227:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /********* Restore LPTIM Config *******/
 228:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LL_RCC_GetSystemClocksFreq(&rcc_clock);
 330              		.loc 1 228 3 is_stmt 1 view .LVU89
 331 0032 6846     		mov	r0, sp
 332 0034 FFF7FEFF 		bl	LL_RCC_GetSystemClocksFreq
 333              	.LVL18:
 229:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 230:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   if ((tmpCMP != 0UL) || (tmpARR != 0UL))
 334              		.loc 1 230 3 view .LVU90
 335              		.loc 1 230 6 is_stmt 0 view .LVU91
 336 0038 B9F1000F 		cmp	r9, #0
 337 003c 0DD1     		bne	.L14
 338              		.loc 1 230 23 discriminator 1 view .LVU92
 339 003e BAF1000F 		cmp	r10, #0
 340 0042 4DD1     		bne	.L15
 341              	.L16:
 231:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   {
 232:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     /* Force LPTIM source kernel clock from APB */
 233:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     switch ((uint32_t)LPTIMx)
 234:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 235:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****        case LPTIM1_BASE:
 236:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****          LL_RCC_SetLPTIMClockSource(LL_RCC_LPTIM1_CLKSOURCE_PCLK1);
 237:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****          break;
 238:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****        default:
 239:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****          break;
 240:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     }
 241:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 242:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     if (tmpCMP != 0UL)
 243:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 244:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       /* Restore CMP and ARR registers (LPTIM should be enabled first) */
 245:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->CR |= LPTIM_CR_ENABLE;
 246:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->CMP = tmpCMP;
 247:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 248:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       /* Polling on CMP write ok status after above restore operation */
 249:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       do
 250:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       {
 251:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****         rcc_clock.SYSCLK_Frequency--; /* Used for timeout */
 252:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       } while (((LL_LPTIM_IsActiveFlag_CMPOK(LPTIMx) != 1UL)) && ((rcc_clock.SYSCLK_Frequency) > 0U
 253:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 254:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LL_LPTIM_ClearFlag_CMPOK(LPTIMx);
 255:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     }
 256:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 257:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     if (tmpARR != 0UL)
 258:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 259:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->CR |= LPTIM_CR_ENABLE;
 260:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->ARR = tmpARR;
 261:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 262:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LL_RCC_GetSystemClocksFreq(&rcc_clock);
 263:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       /* Polling on ARR write ok status after above restore operation */
 264:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       do
 265:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       {
 266:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****         rcc_clock.SYSCLK_Frequency--; /* Used for timeout */
 267:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       } while (((LL_LPTIM_IsActiveFlag_ARROK(LPTIMx) != 1UL)) && ((rcc_clock.SYSCLK_Frequency) > 0U
 268:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 269:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LL_LPTIM_ClearFlag_ARROK(LPTIMx);
 270:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     }
 271:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 272:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     /* Restore LPTIM source kernel clock */
 273:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     LL_RCC_SetLPTIMClockSource(tmpclksource);
 274:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 275:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 276:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   /* Restore configuration registers (LPTIM should be disabled first) */
 277:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIMx->CR &= ~(LPTIM_CR_ENABLE);
 342              		.loc 1 277 3 is_stmt 1 view .LVU93
 343              		.loc 1 277 14 is_stmt 0 view .LVU94
 344 0044 2369     		ldr	r3, [r4, #16]
 345 0046 23F00103 		bic	r3, r3, #1
 346 004a 2361     		str	r3, [r4, #16]
 278:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIMx->IER = tmpIER;
 347              		.loc 1 278 3 is_stmt 1 view .LVU95
 348              		.loc 1 278 15 is_stmt 0 view .LVU96
 349 004c A560     		str	r5, [r4, #8]
 279:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIMx->CFGR = tmpCFGR;
 350              		.loc 1 279 3 is_stmt 1 view .LVU97
 351              		.loc 1 279 16 is_stmt 0 view .LVU98
 352 004e E660     		str	r6, [r4, #12]
 280:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   LPTIMx->OR = tmpOR;
 353              		.loc 1 280 3 is_stmt 1 view .LVU99
 354              		.loc 1 280 14 is_stmt 0 view .LVU100
 355 0050 2762     		str	r7, [r4, #32]
 281:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 282:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   __enable_irq();
 356              		.loc 1 282 3 is_stmt 1 view .LVU101
 357              	.LBB66:
 358              	.LBI66:
 129:../../..\CubeG4\include/cmsis_gcc.h **** {
 359              		.loc 4 129 27 view .LVU102
 360              	.LBB67:
 131:../../..\CubeG4\include/cmsis_gcc.h **** }
 361              		.loc 4 131 3 view .LVU103
 362              		.syntax unified
 363              	@ 131 "../../..\CubeG4\include/cmsis_gcc.h" 1
 364 0052 62B6     		cpsie i
 365              	@ 0 "" 2
 366              		.thumb
 367              		.syntax unified
 368              	.LBE67:
 369              	.LBE66:
 283:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** }
 370              		.loc 1 283 1 is_stmt 0 view .LVU104
 371 0054 04B0     		add	sp, sp, #16
 372              		.cfi_remember_state
 373              		.cfi_def_cfa_offset 32
 374              		@ sp needed
 375 0056 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 376              	.LVL19:
 377              	.L14:
 378              		.cfi_restore_state
 233:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 379              		.loc 1 233 5 is_stmt 1 view .LVU105
 380 005a 234B     		ldr	r3, .L38
 381 005c 9C42     		cmp	r4, r3
 382 005e 09D1     		bne	.L26
 383              	.L25:
 236:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****          break;
 384              		.loc 1 236 10 view .LVU106
 385              	.LVL20:
 386              	.LBB68:
 387              	.LBI68:
1602:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 388              		.loc 5 1602 22 view .LVU107
 389              	.LBB69:
1604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 390              		.loc 5 1604 3 view .LVU108
 391 0060 224A     		ldr	r2, .L38+4
 392 0062 D2F88830 		ldr	r3, [r2, #136]
 393 0066 23F44023 		bic	r3, r3, #786432
 394 006a C2F88830 		str	r3, [r2, #136]
 395              	.LBE69:
 396              	.LBE68:
 242:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 397              		.loc 1 242 5 view .LVU109
 242:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 398              		.loc 1 242 8 is_stmt 0 view .LVU110
 399 006e B9F1000F 		cmp	r9, #0
 400 0072 12D0     		beq	.L17
 401              	.LVL21:
 402              	.L26:
 245:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->CMP = tmpCMP;
 403              		.loc 1 245 7 is_stmt 1 view .LVU111
 245:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->CMP = tmpCMP;
 404              		.loc 1 245 18 is_stmt 0 view .LVU112
 405 0074 2369     		ldr	r3, [r4, #16]
 406 0076 43F00103 		orr	r3, r3, #1
 407 007a 2361     		str	r3, [r4, #16]
 246:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 408              		.loc 1 246 7 is_stmt 1 view .LVU113
 409 007c 009B     		ldr	r3, [sp]
 246:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 410              		.loc 1 246 19 is_stmt 0 view .LVU114
 411 007e C4F81490 		str	r9, [r4, #20]
 412              	.L19:
 249:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       {
 413              		.loc 1 249 7 is_stmt 1 discriminator 2 view .LVU115
 251:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       } while (((LL_LPTIM_IsActiveFlag_CMPOK(LPTIMx) != 1UL)) && ((rcc_clock.SYSCLK_Frequency) > 0U
 414              		.loc 1 251 9 discriminator 2 view .LVU116
 415              	.LBB70:
 416              	.LBB71:
 387:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 388:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 389:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 390:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Starts the LPTIM counter in the desired mode.
 391:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note LPTIM instance must be enabled before starting the counter.
 392:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note It is possible to change on the fly from One Shot mode to
 393:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       Continuous mode.
 394:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CR           CNTSTRT       LL_LPTIM_StartCounter\n
 395:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         CR           SNGSTRT       LL_LPTIM_StartCounter
 396:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 397:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  OperatingMode This parameter can be one of the following values:
 398:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OPERATING_MODE_CONTINUOUS
 399:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OPERATING_MODE_ONESHOT
 400:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 401:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 402:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_StartCounter(LPTIM_TypeDef *LPTIMx, uint32_t OperatingMode)
 403:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 404:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CR, LPTIM_CR_CNTSTRT | LPTIM_CR_SNGSTRT, OperatingMode);
 405:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 406:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 407:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 408:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Enable reset after read.
 409:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note After calling this function any read access to LPTIM_CNT
 410:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *        register will asynchronously reset the LPTIM_CNT register content.
 411:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CR           RSTARE        LL_LPTIM_EnableResetAfterRead
 412:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 413:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 414:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 415:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_EnableResetAfterRead(LPTIM_TypeDef *LPTIMx)
 416:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 417:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->CR, LPTIM_CR_RSTARE);
 418:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 419:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 420:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 421:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Disable reset after read.
 422:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CR           RSTARE        LL_LPTIM_DisableResetAfterRead
 423:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 424:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 425:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 426:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_DisableResetAfterRead(LPTIM_TypeDef *LPTIMx)
 427:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 428:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   CLEAR_BIT(LPTIMx->CR, LPTIM_CR_RSTARE);
 429:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 430:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 431:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 432:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Indicate whether the reset after read feature is enabled.
 433:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CR           RSTARE        LL_LPTIM_IsEnabledResetAfterRead
 434:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 435:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
 436:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 437:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsEnabledResetAfterRead(LPTIM_TypeDef *LPTIMx)
 438:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 439:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->CR, LPTIM_CR_RSTARE) == LPTIM_CR_RSTARE)? 1UL : 0UL));
 440:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 441:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 442:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 443:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Reset of the LPTIM_CNT counter register (synchronous).
 444:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note Due to the synchronous nature of this reset, it only takes
 445:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       place after a synchronization delay of 3 LPTIM core clock cycles
 446:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *      (LPTIM core clock may be different from APB clock).
 447:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note COUNTRST is automatically cleared by hardware
 448:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CR           COUNTRST       LL_LPTIM_ResetCounter\n
 449:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 450:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 451:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 452:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ResetCounter(LPTIM_TypeDef *LPTIMx)
 453:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 454:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->CR, LPTIM_CR_COUNTRST);
 455:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 456:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 457:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 458:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set the LPTIM registers update mode (enable/disable register preload)
 459:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 460:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         PRELOAD       LL_LPTIM_SetUpdateMode
 461:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 462:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  UpdateMode This parameter can be one of the following values:
 463:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_UPDATE_MODE_IMMEDIATE
 464:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_UPDATE_MODE_ENDOFPERIOD
 465:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 466:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 467:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetUpdateMode(LPTIM_TypeDef *LPTIMx, uint32_t UpdateMode)
 468:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 469:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_PRELOAD, UpdateMode);
 470:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 471:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 472:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 473:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get the LPTIM registers update mode
 474:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         PRELOAD       LL_LPTIM_GetUpdateMode
 475:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 476:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 477:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_UPDATE_MODE_IMMEDIATE
 478:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_UPDATE_MODE_ENDOFPERIOD
 479:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 480:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetUpdateMode(LPTIM_TypeDef *LPTIMx)
 481:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 482:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_PRELOAD));
 483:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 484:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 485:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 486:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set the auto reload value
 487:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note The LPTIMx_ARR register content must only be modified when the LPTIM is enabled
 488:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note After a write to the LPTIMx_ARR register a new write operation to the
 489:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       same register can only be performed when the previous write operation
 490:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       is completed. Any successive write before  the ARROK flag be set, will
 491:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       lead to unpredictable results.
 492:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note autoreload value be strictly greater than the compare value.
 493:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ARR          ARR           LL_LPTIM_SetAutoReload
 494:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 495:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  AutoReload Value between Min_Data=0x00 and Max_Data=0xFFFF
 496:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 497:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 498:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetAutoReload(LPTIM_TypeDef *LPTIMx, uint32_t AutoReload)
 499:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 500:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->ARR, LPTIM_ARR_ARR, AutoReload);
 501:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 502:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 503:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 504:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual auto reload value
 505:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ARR          ARR           LL_LPTIM_GetAutoReload
 506:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 507:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval AutoReload Value between Min_Data=0x00 and Max_Data=0xFFFF
 508:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 509:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetAutoReload(LPTIM_TypeDef *LPTIMx)
 510:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 511:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->ARR, LPTIM_ARR_ARR));
 512:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 513:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 514:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 515:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set the compare value
 516:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note After a write to the LPTIMx_CMP register a new write operation to the
 517:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       same register can only be performed when the previous write operation
 518:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       is completed. Any successive write before the CMPOK flag be set, will
 519:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       lead to unpredictable results.
 520:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CMP          CMP           LL_LPTIM_SetCompare
 521:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 522:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  CompareValue Value between Min_Data=0x00 and Max_Data=0xFFFF
 523:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 524:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 525:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetCompare(LPTIM_TypeDef *LPTIMx, uint32_t CompareValue)
 526:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 527:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CMP, LPTIM_CMP_CMP, CompareValue);
 528:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 529:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 530:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 531:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual compare value
 532:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CMP          CMP           LL_LPTIM_GetCompare
 533:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 534:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval CompareValue Value between Min_Data=0x00 and Max_Data=0xFFFF
 535:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 536:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetCompare(LPTIM_TypeDef *LPTIMx)
 537:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 538:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CMP, LPTIM_CMP_CMP));
 539:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 540:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 541:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 542:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual counter value
 543:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note When the LPTIM instance is running with an asynchronous clock, reading
 544:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       the LPTIMx_CNT register may return unreliable values. So in this case
 545:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       it is necessary to perform two consecutive read accesses and verify
 546:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       that the two returned values are identical.
 547:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CNT          CNT           LL_LPTIM_GetCounter
 548:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 549:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Counter value
 550:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 551:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetCounter(LPTIM_TypeDef *LPTIMx)
 552:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 553:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CNT, LPTIM_CNT_CNT));
 554:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 555:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 556:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 557:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set the counter mode (selection of the LPTIM counter clock source).
 558:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note The counter mode can be set only when the LPTIM instance is disabled.
 559:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         COUNTMODE     LL_LPTIM_SetCounterMode
 560:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 561:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  CounterMode This parameter can be one of the following values:
 562:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_COUNTER_MODE_INTERNAL
 563:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_COUNTER_MODE_EXTERNAL
 564:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 565:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 566:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetCounterMode(LPTIM_TypeDef *LPTIMx, uint32_t CounterMode)
 567:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 568:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_COUNTMODE, CounterMode);
 569:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 570:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 571:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 572:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get the counter mode
 573:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         COUNTMODE     LL_LPTIM_GetCounterMode
 574:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 575:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 576:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_COUNTER_MODE_INTERNAL
 577:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_COUNTER_MODE_EXTERNAL
 578:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 579:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetCounterMode(LPTIM_TypeDef *LPTIMx)
 580:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 581:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_COUNTMODE));
 582:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 583:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 584:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 585:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Configure the LPTIM instance output (LPTIMx_OUT)
 586:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 587:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note Regarding the LPTIM output polarity the change takes effect
 588:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       immediately, so the output default value will change immediately after
 589:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       the polarity is re-configured, even before the timer is enabled.
 590:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         WAVE          LL_LPTIM_ConfigOutput\n
 591:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         CFGR         WAVPOL        LL_LPTIM_ConfigOutput
 592:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 593:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Waveform This parameter can be one of the following values:
 594:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_WAVEFORM_PWM
 595:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_WAVEFORM_SETONCE
 596:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Polarity This parameter can be one of the following values:
 597:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_POLARITY_REGULAR
 598:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_POLARITY_INVERSE
 599:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 600:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 601:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ConfigOutput(LPTIM_TypeDef *LPTIMx, uint32_t Waveform, uint32_t Polar
 602:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 603:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_WAVE | LPTIM_CFGR_WAVPOL, Waveform | Polarity);
 604:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 605:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 606:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 607:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set  waveform shape
 608:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         WAVE          LL_LPTIM_SetWaveform
 609:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 610:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Waveform This parameter can be one of the following values:
 611:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_WAVEFORM_PWM
 612:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_WAVEFORM_SETONCE
 613:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 614:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 615:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetWaveform(LPTIM_TypeDef *LPTIMx, uint32_t Waveform)
 616:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 617:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_WAVE, Waveform);
 618:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 619:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 620:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 621:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual waveform shape
 622:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         WAVE          LL_LPTIM_GetWaveform
 623:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 624:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 625:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_WAVEFORM_PWM
 626:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_WAVEFORM_SETONCE
 627:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 628:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetWaveform(LPTIM_TypeDef *LPTIMx)
 629:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 630:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_WAVE));
 631:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 632:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 633:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 634:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set  output polarity
 635:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         WAVPOL        LL_LPTIM_SetPolarity
 636:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 637:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Polarity This parameter can be one of the following values:
 638:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_POLARITY_REGULAR
 639:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_POLARITY_INVERSE
 640:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 641:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 642:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetPolarity(LPTIM_TypeDef *LPTIMx, uint32_t Polarity)
 643:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 644:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_WAVPOL, Polarity);
 645:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 646:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 647:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 648:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual output polarity
 649:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         WAVPOL        LL_LPTIM_GetPolarity
 650:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 651:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 652:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_POLARITY_REGULAR
 653:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_OUTPUT_POLARITY_INVERSE
 654:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 655:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetPolarity(LPTIM_TypeDef *LPTIMx)
 656:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 657:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_WAVPOL));
 658:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 659:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 660:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 661:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set actual prescaler division ratio.
 662:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 663:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note When the LPTIM is configured to be clocked by an internal clock source
 664:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       and the LPTIM counter is configured to be updated by active edges
 665:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       detected on the LPTIM external Input1, the internal clock provided to
 666:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       the LPTIM must be not be prescaled.
 667:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         PRESC         LL_LPTIM_SetPrescaler
 668:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 669:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Prescaler This parameter can be one of the following values:
 670:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV1
 671:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV2
 672:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV4
 673:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV8
 674:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV16
 675:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV32
 676:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV64
 677:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV128
 678:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 679:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 680:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetPrescaler(LPTIM_TypeDef *LPTIMx, uint32_t Prescaler)
 681:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 682:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_PRESC, Prescaler);
 683:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 684:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 685:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 686:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual prescaler division ratio.
 687:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         PRESC         LL_LPTIM_GetPrescaler
 688:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 689:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 690:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV1
 691:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV2
 692:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV4
 693:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV8
 694:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV16
 695:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV32
 696:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV64
 697:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_PRESCALER_DIV128
 698:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 699:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetPrescaler(LPTIM_TypeDef *LPTIMx)
 700:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 701:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_PRESC));
 702:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 703:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 704:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 705:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set LPTIM input 1 source (default GPIO).
 706:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll OR      IN1          LL_LPTIM_SetInput1Src
 707:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 708:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Src This parameter can be one of the following values:
 709:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT1_SRC_GPIO
 710:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT1_SRC_COMP1
 711:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT1_SRC_COMP3
 712:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT1_SRC_COMP5 (*)
 713:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT1_SRC_COMP7 (*)
 714:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         (*) Value not defined for all devices
 715:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 716:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 717:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetInput1Src(LPTIM_TypeDef *LPTIMx, uint32_t Src)
 718:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 719:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   WRITE_REG(LPTIMx->OR, Src);
 720:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 721:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 722:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 723:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set LPTIM input 2 source (default GPIO).
 724:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll OR      IN2          LL_LPTIM_SetInput2Src
 725:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 726:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Src This parameter can be one of the following values:
 727:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT2_SRC_GPIO
 728:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT2_SRC_COMP2
 729:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT2_SRC_COMP4
 730:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_INPUT2_SRC_COMP6 (*)
 731:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         (*) Value not defined for all devices
 732:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 733:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 734:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetInput2Src(LPTIM_TypeDef *LPTIMx, uint32_t Src)
 735:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 736:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   WRITE_REG(LPTIMx->OR, Src);
 737:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 738:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 739:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 740:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 741:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 742:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 743:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EF_Trigger_Configuration Trigger Configuration
 744:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 745:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 746:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 747:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 748:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Enable the timeout function
 749:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 750:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note The first trigger event will start the timer, any successive trigger
 751:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       event will reset the counter and the timer will restart.
 752:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note The timeout value corresponds to the compare value; if no trigger
 753:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       occurs within the expected time frame, the MCU is waked-up by the
 754:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       compare match event.
 755:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TIMOUT        LL_LPTIM_EnableTimeout
 756:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 757:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 758:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 759:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_EnableTimeout(LPTIM_TypeDef *LPTIMx)
 760:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 761:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->CFGR, LPTIM_CFGR_TIMOUT);
 762:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 763:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 764:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 765:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Disable the timeout function
 766:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 767:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note A trigger event arriving when the timer is already started will be
 768:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       ignored.
 769:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TIMOUT        LL_LPTIM_DisableTimeout
 770:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 771:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 772:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 773:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_DisableTimeout(LPTIM_TypeDef *LPTIMx)
 774:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 775:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   CLEAR_BIT(LPTIMx->CFGR, LPTIM_CFGR_TIMOUT);
 776:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 777:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 778:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 779:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Indicate whether the timeout function is enabled.
 780:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TIMOUT        LL_LPTIM_IsEnabledTimeout
 781:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 782:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
 783:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 784:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsEnabledTimeout(LPTIM_TypeDef *LPTIMx)
 785:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 786:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_TIMOUT) == LPTIM_CFGR_TIMOUT)? 1UL : 0UL));
 787:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 788:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 789:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 790:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Start the LPTIM counter
 791:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 792:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TRIGEN        LL_LPTIM_TrigSw
 793:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 794:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 795:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 796:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_TrigSw(LPTIM_TypeDef *LPTIMx)
 797:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 798:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   CLEAR_BIT(LPTIMx->CFGR, LPTIM_CFGR_TRIGEN);
 799:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 800:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 801:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 802:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Configure the external trigger used as a trigger event for the LPTIM.
 803:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 804:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note An internal clock source must be present when a digital filter is
 805:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       required for the trigger.
 806:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TRIGSEL       LL_LPTIM_ConfigTrigger\n
 807:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         CFGR         TRGFLT        LL_LPTIM_ConfigTrigger\n
 808:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         CFGR         TRIGEN        LL_LPTIM_ConfigTrigger
 809:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 810:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Source This parameter can be one of the following values:
 811:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_GPIO
 812:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCALARMA
 813:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCALARMB
 814:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCTAMP1
 815:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCTAMP2
 816:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCTAMP3
 817:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP1
 818:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP2
 819:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP3
 820:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP4
 821:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP5 (*)
 822:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP6 (*)
 823:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP7 (*)
 824:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *
 825:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         (*)  Value not defined in all devices. \n
 826:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *
 827:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Filter This parameter can be one of the following values:
 828:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_NONE
 829:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_2
 830:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_4
 831:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_8
 832:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  Polarity This parameter can be one of the following values:
 833:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_POLARITY_RISING
 834:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_POLARITY_FALLING
 835:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_POLARITY_RISING_FALLING
 836:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 837:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 838:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ConfigTrigger(LPTIM_TypeDef *LPTIMx, uint32_t Source, uint32_t Filter
 839:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 840:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_TRIGSEL | LPTIM_CFGR_TRGFLT | LPTIM_CFGR_TRIGEN, Source | Fil
 841:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 842:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 843:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 844:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual external trigger source.
 845:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TRIGSEL       LL_LPTIM_GetTriggerSource
 846:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 847:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 848:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_GPIO
 849:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCALARMA
 850:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCALARMB
 851:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCTAMP1
 852:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCTAMP2
 853:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_RTCTAMP3
 854:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP1
 855:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP2
 856:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP3
 857:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP4
 858:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP5 (*)
 859:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP6 (*)
 860:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_SOURCE_COMP7 (*)
 861:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *
 862:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         (*)  Value not defined in all devices. \n
 863:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 864:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetTriggerSource(LPTIM_TypeDef *LPTIMx)
 865:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 866:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_TRIGSEL));
 867:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 868:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 869:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 870:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual external trigger filter.
 871:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TRGFLT        LL_LPTIM_GetTriggerFilter
 872:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 873:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 874:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_NONE
 875:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_2
 876:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_4
 877:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_FILTER_8
 878:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 879:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetTriggerFilter(LPTIM_TypeDef *LPTIMx)
 880:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 881:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_TRGFLT));
 882:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 883:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 884:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 885:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual external trigger polarity.
 886:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         TRIGEN        LL_LPTIM_GetTriggerPolarity
 887:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 888:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 889:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_POLARITY_RISING
 890:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_POLARITY_FALLING
 891:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_TRIG_POLARITY_RISING_FALLING
 892:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 893:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetTriggerPolarity(LPTIM_TypeDef *LPTIMx)
 894:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 895:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_TRIGEN));
 896:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 897:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 898:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 899:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 900:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 901:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 902:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EF_Clock_Configuration Clock Configuration
 903:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 904:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 905:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 906:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 907:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Set the source of the clock used by the LPTIM instance.
 908:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 909:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         CKSEL         LL_LPTIM_SetClockSource
 910:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 911:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  ClockSource This parameter can be one of the following values:
 912:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_SOURCE_INTERNAL
 913:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_SOURCE_EXTERNAL
 914:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 915:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 916:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetClockSource(LPTIM_TypeDef *LPTIMx, uint32_t ClockSource)
 917:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 918:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_CKSEL, ClockSource);
 919:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 920:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 921:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 922:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual LPTIM instance clock source.
 923:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         CKSEL         LL_LPTIM_GetClockSource
 924:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 925:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 926:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_SOURCE_INTERNAL
 927:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_SOURCE_EXTERNAL
 928:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 929:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetClockSource(LPTIM_TypeDef *LPTIMx)
 930:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 931:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_CKSEL));
 932:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 933:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 934:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 935:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Configure the active edge or edges used by the counter when the LPTIM is clocked by an 
 936:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
 937:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note When both external clock signal edges are considered active ones,
 938:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       the LPTIM must also be clocked by an internal clock source with a
 939:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       frequency equal to at least four times the external clock frequency.
 940:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note An internal clock source must be present when a digital filter is
 941:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       required for external clock.
 942:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         CKFLT         LL_LPTIM_ConfigClock\n
 943:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         CFGR         CKPOL         LL_LPTIM_ConfigClock
 944:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 945:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  ClockFilter This parameter can be one of the following values:
 946:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_NONE
 947:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_2
 948:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_4
 949:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_8
 950:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  ClockPolarity This parameter can be one of the following values:
 951:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_POLARITY_RISING
 952:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_POLARITY_FALLING
 953:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_POLARITY_RISING_FALLING
 954:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
 955:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 956:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ConfigClock(LPTIM_TypeDef *LPTIMx, uint32_t ClockFilter, uint32_t Clo
 957:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 958:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_CKFLT | LPTIM_CFGR_CKPOL, ClockFilter | ClockPolarity);
 959:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 960:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 961:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 962:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual clock polarity
 963:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         CKPOL         LL_LPTIM_GetClockPolarity
 964:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 965:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 966:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_POLARITY_RISING
 967:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_POLARITY_FALLING
 968:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_POLARITY_RISING_FALLING
 969:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 970:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetClockPolarity(LPTIM_TypeDef *LPTIMx)
 971:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 972:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_CKPOL));
 973:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 974:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 975:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 976:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual clock digital filter
 977:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         CKFLT         LL_LPTIM_GetClockFilter
 978:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
 979:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
 980:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_NONE
 981:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_2
 982:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_4
 983:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_CLK_FILTER_8
 984:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 985:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetClockFilter(LPTIM_TypeDef *LPTIMx)
 986:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 987:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_CKFLT));
 988:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 989:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 990:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 991:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
 992:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 993:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 994:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EF_Encoder_Mode Encoder Mode
 995:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
 996:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
 997:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
 998:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
 999:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Configure the encoder mode.
1000:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
1001:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         CKPOL         LL_LPTIM_SetEncoderMode
1002:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1003:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  EncoderMode This parameter can be one of the following values:
1004:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_ENCODER_MODE_RISING
1005:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_ENCODER_MODE_FALLING
1006:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_ENCODER_MODE_RISING_FALLING
1007:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1008:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1009:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_SetEncoderMode(LPTIM_TypeDef *LPTIMx, uint32_t EncoderMode)
1010:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1011:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   MODIFY_REG(LPTIMx->CFGR, LPTIM_CFGR_CKPOL, EncoderMode);
1012:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1013:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1014:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1015:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Get actual encoder mode.
1016:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         CKPOL         LL_LPTIM_GetEncoderMode
1017:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1018:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval Returned value can be one of the following values:
1019:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_ENCODER_MODE_RISING
1020:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_ENCODER_MODE_FALLING
1021:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *         @arg @ref LL_LPTIM_ENCODER_MODE_RISING_FALLING
1022:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1023:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_GetEncoderMode(LPTIM_TypeDef *LPTIMx)
1024:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1025:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (uint32_t)(READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_CKPOL));
1026:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1027:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1028:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1029:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Enable the encoder mode
1030:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
1031:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note In this mode the LPTIM instance must be clocked by an internal clock
1032:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       source. Also, the prescaler division ratio must be equal to 1.
1033:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note LPTIM instance must be configured in continuous mode prior enabling
1034:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   *       the encoder mode.
1035:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         ENC           LL_LPTIM_EnableEncoderMode
1036:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1037:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1038:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1039:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_EnableEncoderMode(LPTIM_TypeDef *LPTIMx)
1040:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1041:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->CFGR, LPTIM_CFGR_ENC);
1042:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1043:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1044:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1045:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Disable the encoder mode
1046:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @note This function must be called when the LPTIM instance is disabled.
1047:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         ENC           LL_LPTIM_DisableEncoderMode
1048:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1049:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1050:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1051:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_DisableEncoderMode(LPTIM_TypeDef *LPTIMx)
1052:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1053:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   CLEAR_BIT(LPTIMx->CFGR, LPTIM_CFGR_ENC);
1054:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1055:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1056:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1057:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Indicates whether the LPTIM operates in encoder mode.
1058:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll CFGR         ENC           LL_LPTIM_IsEnabledEncoderMode
1059:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1060:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
1061:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1062:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsEnabledEncoderMode(LPTIM_TypeDef *LPTIMx)
1063:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1064:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->CFGR, LPTIM_CFGR_ENC) == LPTIM_CFGR_ENC)? 1UL : 0UL));
1065:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1066:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1067:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1068:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @}
1069:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1070:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1071:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /** @defgroup LPTIM_LL_EF_FLAG_Management FLAG Management
1072:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @{
1073:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1074:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1075:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1076:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Clear the compare match flag (CMPMCF)
1077:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ICR          CMPMCF        LL_LPTIM_ClearFLAG_CMPM
1078:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1079:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1080:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1081:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ClearFLAG_CMPM(LPTIM_TypeDef *LPTIMx)
1082:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1083:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->ICR, LPTIM_ICR_CMPMCF);
1084:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1085:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1086:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1087:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Inform application whether a compare match interrupt has occurred.
1088:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ISR          CMPM          LL_LPTIM_IsActiveFlag_CMPM
1089:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1090:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
1091:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1092:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsActiveFlag_CMPM(LPTIM_TypeDef *LPTIMx)
1093:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1094:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->ISR, LPTIM_ISR_CMPM) == LPTIM_ISR_CMPM)? 1UL : 0UL));
1095:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1096:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1097:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1098:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Clear the autoreload match flag (ARRMCF)
1099:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ICR          ARRMCF        LL_LPTIM_ClearFLAG_ARRM
1100:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1101:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1102:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1103:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ClearFLAG_ARRM(LPTIM_TypeDef *LPTIMx)
1104:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1105:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->ICR, LPTIM_ICR_ARRMCF);
1106:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1107:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1108:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1109:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Inform application whether a autoreload match interrupt has occured.
1110:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ISR          ARRM          LL_LPTIM_IsActiveFlag_ARRM
1111:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1112:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
1113:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1114:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsActiveFlag_ARRM(LPTIM_TypeDef *LPTIMx)
1115:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1116:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->ISR, LPTIM_ISR_ARRM) == LPTIM_ISR_ARRM)? 1UL : 0UL));
1117:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1118:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1119:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1120:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Clear the external trigger valid edge flag(EXTTRIGCF).
1121:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ICR          EXTTRIGCF     LL_LPTIM_ClearFlag_EXTTRIG
1122:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1123:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1124:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1125:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ClearFlag_EXTTRIG(LPTIM_TypeDef *LPTIMx)
1126:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1127:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->ICR, LPTIM_ICR_EXTTRIGCF);
1128:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1129:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1130:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1131:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Inform application whether a valid edge on the selected external trigger input has occu
1132:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ISR          EXTTRIG       LL_LPTIM_IsActiveFlag_EXTTRIG
1133:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1134:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
1135:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1136:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsActiveFlag_EXTTRIG(LPTIM_TypeDef *LPTIMx)
1137:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1138:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->ISR, LPTIM_ISR_EXTTRIG) == LPTIM_ISR_EXTTRIG)? 1UL : 0UL));
1139:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1140:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1141:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1142:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Clear the compare register update interrupt flag (CMPOKCF).
1143:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ICR          CMPOKCF       LL_LPTIM_ClearFlag_CMPOK
1144:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1145:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1146:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1147:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ClearFlag_CMPOK(LPTIM_TypeDef *LPTIMx)
1148:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1149:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->ICR, LPTIM_ICR_CMPOKCF);
1150:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1151:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1152:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1153:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Informs application whether the APB bus write operation to the LPTIMx_CMP register has 
1154:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ISR          CMPOK         LL_LPTIM_IsActiveFlag_CMPOK
1155:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1156:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
1157:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1158:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsActiveFlag_CMPOK(LPTIM_TypeDef *LPTIMx)
1159:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1160:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->ISR, LPTIM_ISR_CMPOK) == LPTIM_ISR_CMPOK)? 1UL : 0UL));
 417              		.loc 3 1160 13 is_stmt 0 discriminator 2 view .LVU117
 418 0082 2268     		ldr	r2, [r4]
 419              		.loc 3 1160 77 discriminator 2 view .LVU118
 420 0084 1107     		lsls	r1, r2, #28
 421              	.LBE71:
 422              	.LBE70:
 251:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       } while (((LL_LPTIM_IsActiveFlag_CMPOK(LPTIMx) != 1UL)) && ((rcc_clock.SYSCLK_Frequency) > 0U
 423              		.loc 1 251 35 discriminator 2 view .LVU119
 424 0086 03F1FF33 		add	r3, r3, #-1
 425              	.LVL22:
 426              	.LBB73:
 427              	.LBI70:
1158:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 428              		.loc 3 1158 26 is_stmt 1 discriminator 2 view .LVU120
 429              	.LBB72:
 430              		.loc 3 1160 3 discriminator 2 view .LVU121
 431              		.loc 3 1160 77 is_stmt 0 discriminator 2 view .LVU122
 432 008a 01D4     		bmi	.L18
 433              	.LVL23:
 434              		.loc 3 1160 77 discriminator 2 view .LVU123
 435              	.LBE72:
 436              	.LBE73:
 252:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 437              		.loc 1 252 63 view .LVU124
 438 008c 002B     		cmp	r3, #0
 439 008e F8D1     		bne	.L19
 440              	.L18:
 441 0090 0093     		str	r3, [sp]
 254:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     }
 442              		.loc 1 254 7 is_stmt 1 view .LVU125
 443              	.LVL24:
 444              	.LBB74:
 445              	.LBI74:
1147:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 446              		.loc 3 1147 22 view .LVU126
 447              	.LBB75:
1149:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 448              		.loc 3 1149 3 view .LVU127
 449 0092 6368     		ldr	r3, [r4, #4]
 450 0094 43F00803 		orr	r3, r3, #8
 451 0098 6360     		str	r3, [r4, #4]
 452              	.LVL25:
 453              	.L17:
1149:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 454              		.loc 3 1149 3 is_stmt 0 view .LVU128
 455              	.LBE75:
 456              	.LBE74:
 257:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 457              		.loc 1 257 5 is_stmt 1 view .LVU129
 257:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 458              		.loc 1 257 8 is_stmt 0 view .LVU130
 459 009a BAF1000F 		cmp	r10, #0
 460 009e 15D0     		beq	.L21
 461              	.L27:
 259:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->ARR = tmpARR;
 462              		.loc 1 259 7 is_stmt 1 view .LVU131
 259:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       LPTIMx->ARR = tmpARR;
 463              		.loc 1 259 18 is_stmt 0 view .LVU132
 464 00a0 2369     		ldr	r3, [r4, #16]
 465 00a2 43F00103 		orr	r3, r3, #1
 466 00a6 2361     		str	r3, [r4, #16]
 260:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 467              		.loc 1 260 7 is_stmt 1 view .LVU133
 262:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       /* Polling on ARR write ok status after above restore operation */
 468              		.loc 1 262 7 is_stmt 0 view .LVU134
 469 00a8 6846     		mov	r0, sp
 260:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 470              		.loc 1 260 19 view .LVU135
 471 00aa C4F818A0 		str	r10, [r4, #24]
 262:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       /* Polling on ARR write ok status after above restore operation */
 472              		.loc 1 262 7 is_stmt 1 view .LVU136
 473 00ae FFF7FEFF 		bl	LL_RCC_GetSystemClocksFreq
 474              	.LVL26:
 475 00b2 009B     		ldr	r3, [sp]
 476              	.L23:
 264:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       {
 477              		.loc 1 264 7 discriminator 2 view .LVU137
 266:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       } while (((LL_LPTIM_IsActiveFlag_ARROK(LPTIMx) != 1UL)) && ((rcc_clock.SYSCLK_Frequency) > 0U
 478              		.loc 1 266 9 discriminator 2 view .LVU138
 479              	.LBB76:
 480              	.LBB77:
1161:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1162:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1163:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1164:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Clear the autoreload register update interrupt flag (ARROKCF).
1165:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ICR          ARROKCF       LL_LPTIM_ClearFlag_ARROK
1166:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1167:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval None
1168:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1169:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE void LL_LPTIM_ClearFlag_ARROK(LPTIM_TypeDef *LPTIMx)
1170:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1171:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   SET_BIT(LPTIMx->ICR, LPTIM_ICR_ARROKCF);
1172:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
1173:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** 
1174:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** /**
1175:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @brief  Informs application whether the APB bus write operation to the LPTIMx_ARR register has 
1176:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @rmtoll ISR          ARROK         LL_LPTIM_IsActiveFlag_ARROK
1177:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @param  LPTIMx Low-Power Timer instance
1178:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   * @retval State of bit (1 or 0).
1179:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   */
1180:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** __STATIC_INLINE uint32_t LL_LPTIM_IsActiveFlag_ARROK(LPTIM_TypeDef *LPTIMx)
1181:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
1182:../../..\CubeG4\include/stm32g4xx_ll_lptim.h ****   return (((READ_BIT(LPTIMx->ISR, LPTIM_ISR_ARROK) == LPTIM_ISR_ARROK)? 1UL : 0UL));
 481              		.loc 3 1182 13 is_stmt 0 discriminator 2 view .LVU139
 482 00b4 2268     		ldr	r2, [r4]
 483              		.loc 3 1182 77 discriminator 2 view .LVU140
 484 00b6 D206     		lsls	r2, r2, #27
 485              	.LBE77:
 486              	.LBE76:
 266:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****       } while (((LL_LPTIM_IsActiveFlag_ARROK(LPTIMx) != 1UL)) && ((rcc_clock.SYSCLK_Frequency) > 0U
 487              		.loc 1 266 35 discriminator 2 view .LVU141
 488 00b8 03F1FF33 		add	r3, r3, #-1
 489              	.LVL27:
 490              	.LBB79:
 491              	.LBI76:
1180:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 492              		.loc 3 1180 26 is_stmt 1 discriminator 2 view .LVU142
 493              	.LBB78:
 494              		.loc 3 1182 3 discriminator 2 view .LVU143
 495              		.loc 3 1182 77 is_stmt 0 discriminator 2 view .LVU144
 496 00bc 01D4     		bmi	.L22
 497              	.LVL28:
 498              		.loc 3 1182 77 discriminator 2 view .LVU145
 499              	.LBE78:
 500              	.LBE79:
 267:../../..\CubeG4\src/stm32g4xx_ll_lptim.c **** 
 501              		.loc 1 267 63 view .LVU146
 502 00be 002B     		cmp	r3, #0
 503 00c0 F8D1     		bne	.L23
 504              	.L22:
 505 00c2 0093     		str	r3, [sp]
 269:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     }
 506              		.loc 1 269 7 is_stmt 1 view .LVU147
 507              	.LVL29:
 508              	.LBB80:
 509              	.LBI80:
1169:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** {
 510              		.loc 3 1169 22 view .LVU148
 511              	.LBB81:
1171:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 512              		.loc 3 1171 3 view .LVU149
 513 00c4 6368     		ldr	r3, [r4, #4]
 514 00c6 43F01003 		orr	r3, r3, #16
 515 00ca 6360     		str	r3, [r4, #4]
 516              	.LVL30:
 517              	.L21:
1171:../../..\CubeG4\include/stm32g4xx_ll_lptim.h **** }
 518              		.loc 3 1171 3 is_stmt 0 view .LVU150
 519              	.LBE81:
 520              	.LBE80:
 273:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****   }
 521              		.loc 1 273 5 is_stmt 1 view .LVU151
 522              	.LBB82:
 523              	.LBI82:
1602:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** {
 524              		.loc 5 1602 22 view .LVU152
 525              	.LBB83:
1604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 526              		.loc 5 1604 3 view .LVU153
 527 00cc 074A     		ldr	r2, .L38+4
 528 00ce D2F88830 		ldr	r3, [r2, #136]
 529 00d2 23F44023 		bic	r3, r3, #786432
 530 00d6 43EA0803 		orr	r3, r3, r8
 531 00da C2F88830 		str	r3, [r2, #136]
 532 00de B1E7     		b	.L16
 533              	.LVL31:
 534              	.L15:
1604:../../..\CubeG4\include/stm32g4xx_ll_rcc.h **** }
 535              		.loc 5 1604 3 is_stmt 0 view .LVU154
 536              	.LBE83:
 537              	.LBE82:
 233:../../..\CubeG4\src/stm32g4xx_ll_lptim.c ****     {
 538              		.loc 1 233 5 is_stmt 1 view .LVU155
 539 00e0 014B     		ldr	r3, .L38
 540 00e2 9C42     		cmp	r4, r3
 541 00e4 DCD1     		bne	.L27
 542 00e6 BBE7     		b	.L25
 543              	.L39:
 544              		.align	2
 545              	.L38:
 546 00e8 007C0040 		.word	1073773568
 547 00ec 00100240 		.word	1073876992
 548              		.cfi_endproc
 549              	.LFE390:
 551              		.text
 552              	.Letext0:
 553              		.file 6 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 554              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 555              		.file 8 "../../..\\CubeG4\\include/core_cm4.h"
 556              		.file 9 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 557              		.file 10 "../../..\\CubeG4\\include/stm32g431xx.h"
 558              		.file 11 "../../..\\CubeG4\\include/stm32g4xx.h"
