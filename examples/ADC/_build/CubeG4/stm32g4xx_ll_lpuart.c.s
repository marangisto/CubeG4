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
  13              		.file	"stm32g4xx_ll_lpuart.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_LPUART_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_LPUART_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_LPUART_DeInit:
  27              	.LVL0:
  28              	.LFB468:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_lpuart.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @file    stm32g4xx_ll_lpuart.c
   4:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @brief   LPUART LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #include "stm32g4xx_ll_lpuart.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #include "stm32g4xx_ll_rcc.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #include "stm32g4xx_ll_bus.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #ifdef USE_FULL_ASSERT
  26:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #include "stm32_assert.h"
  27:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #else
  28:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define assert_param(expr) ((void)0U)
  29:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #endif /* USE_FULL_ASSERT */
  30:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  31:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @{
  33:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
  34:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #if defined (LPUART1)
  36:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  37:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /** @addtogroup LPUART_LL
  38:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @{
  39:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
  40:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  41:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /** @addtogroup LPUART_LL_Private_Constants
  45:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @{
  46:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
  47:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  48:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /**
  49:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @}
  50:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
  51:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  52:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  53:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Private macros ------------------------------------------------------------*/
  54:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /** @addtogroup LPUART_LL_Private_Macros
  55:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @{
  56:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
  57:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  58:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Check of parameters for configuration of LPUART registers                  */
  59:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  60:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_PRESCALER(__VALUE__)  (((__VALUE__) == LL_LPUART_PRESCALER_DIV1) \
  61:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV2) \
  62:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV4) \
  63:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV6) \
  64:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV8) \
  65:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV10) \
  66:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV12) \
  67:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV16) \
  68:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV32) \
  69:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV64) \
  70:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV128) \
  71:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                             || ((__VALUE__) == LL_LPUART_PRESCALER_DIV256))
  72:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  73:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* __BAUDRATE__ Depending on constraints applicable for LPUART BRR register   */
  74:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /*              value :                                                       */
  75:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /*                - fck must be in the range [3 x baudrate, 4096 x baudrate]  */
  76:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /*                - LPUART_BRR register value should be >= 0x300              */
  77:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /*                - LPUART_BRR register value should be <= 0xFFFFF (20 bits)  */
  78:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /*              Baudrate specified by the user should belong to [8, 50000000].*/
  79:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_BAUDRATE(__BAUDRATE__) (((__BAUDRATE__) <= 50000000U) && ((__BAUDRATE__) >= 8U
  80:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  81:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* __VALUE__ BRR content must be greater than or equal to 0x300. */
  82:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_BRR_MIN(__VALUE__)   ((__VALUE__) >= 0x300U)
  83:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  84:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* __VALUE__ BRR content must be lower than or equal to 0xFFFFF. */
  85:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_BRR_MAX(__VALUE__)   ((__VALUE__) <= 0x000FFFFFU)
  86:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  87:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_DIRECTION(__VALUE__) (((__VALUE__) == LL_LPUART_DIRECTION_NONE) \
  88:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_DIRECTION_RX) \
  89:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_DIRECTION_TX) \
  90:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_DIRECTION_TX_RX))
  91:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  92:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_PARITY(__VALUE__) (((__VALUE__) == LL_LPUART_PARITY_NONE) \
  93:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                         || ((__VALUE__) == LL_LPUART_PARITY_EVEN) \
  94:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                         || ((__VALUE__) == LL_LPUART_PARITY_ODD))
  95:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  96:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_DATAWIDTH(__VALUE__) (((__VALUE__) == LL_LPUART_DATAWIDTH_7B) \
  97:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_DATAWIDTH_8B) \
  98:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_DATAWIDTH_9B))
  99:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 100:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_STOPBITS(__VALUE__) (((__VALUE__) == LL_LPUART_STOPBITS_1) \
 101:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                           || ((__VALUE__) == LL_LPUART_STOPBITS_2))
 102:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 103:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** #define IS_LL_LPUART_HWCONTROL(__VALUE__) (((__VALUE__) == LL_LPUART_HWCONTROL_NONE) \
 104:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_HWCONTROL_RTS) \
 105:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_HWCONTROL_CTS) \
 106:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                                            || ((__VALUE__) == LL_LPUART_HWCONTROL_RTS_CTS))
 107:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 108:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /**
 109:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @}
 110:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
 111:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 112:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Private function prototypes -----------------------------------------------*/
 113:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 114:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /* Exported functions --------------------------------------------------------*/
 115:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /** @addtogroup LPUART_LL_Exported_Functions
 116:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @{
 117:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
 118:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 119:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /** @addtogroup LPUART_LL_EF_Init
 120:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @{
 121:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
 122:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 123:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /**
 124:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @brief  De-initialize LPUART registers (Registers restored to their default values).
 125:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @param  LPUARTx LPUART Instance
 126:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @retval An ErrorStatus enumeration value:
 127:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *          - SUCCESS: LPUART registers are de-initialized
 128:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *          - ERROR: not applicable
 129:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
 130:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** ErrorStatus LL_LPUART_DeInit(USART_TypeDef *LPUARTx)
 131:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** {
  30              		.loc 1 131 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 132:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   ErrorStatus status = SUCCESS;
  35              		.loc 1 132 3 view .LVU1
 133:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 134:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   /* Check the parameters */
 135:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LPUART_INSTANCE(LPUARTx));
  36              		.loc 1 135 3 view .LVU2
 136:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 137:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   if (LPUARTx == LPUART1)
  37              		.loc 1 137 3 view .LVU3
  38              		.loc 1 137 6 is_stmt 0 view .LVU4
  39 0000 084B     		ldr	r3, .L4
  40 0002 9842     		cmp	r0, r3
  41 0004 0BD1     		bne	.L3
 138:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   {
 139:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /* Force reset of LPUART peripheral */
 140:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     LL_APB1_GRP2_ForceReset(LL_APB1_GRP2_PERIPH_LPUART1);
  42              		.loc 1 140 5 is_stmt 1 view .LVU5
  43              	.LBB10:
  44              	.LBI10:
  45              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
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
1142:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1RSTR1, Periphs);
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
  46              		.loc 2 1159 22 view .LVU6
  47              	.LVL1:
  48              	.LBB11:
1160:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1161:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1RSTR2, Periphs);
  49              		.loc 2 1161 3 view .LVU7
  50 0006 03F5C833 		add	r3, r3, #102400
  51              	.LBE11:
  52              	.LBE10:
 132:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
  53              		.loc 1 132 15 is_stmt 0 view .LVU8
  54 000a 0020     		movs	r0, #0
  55              	.LVL2:
  56              	.LBB13:
  57              	.LBB12:
  58              		.loc 2 1161 3 view .LVU9
  59 000c DA6B     		ldr	r2, [r3, #60]
  60 000e 42F00102 		orr	r2, r2, #1
  61 0012 DA63     		str	r2, [r3, #60]
  62              	.LVL3:
  63              		.loc 2 1161 3 view .LVU10
  64              	.LBE12:
  65              	.LBE13:
 141:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 142:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /* Release reset of LPUART peripheral */
 143:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     LL_APB1_GRP2_ReleaseReset(LL_APB1_GRP2_PERIPH_LPUART1);
  66              		.loc 1 143 5 is_stmt 1 view .LVU11
  67              	.LBB14:
  68              	.LBI14:
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
1214:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1215:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1216:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1217:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release APB1 peripherals reset.
1218:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1RSTR2     LPUART1RST     LL_APB1_GRP2_ReleaseReset\n
1219:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR2     I2C4RST        LL_APB1_GRP2_ReleaseReset\n
1220:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1RSTR2     UCPD1RST       LL_APB1_GRP2_ReleaseReset
1221:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1222:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_LPUART1
1223:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_I2C4 (*)
1224:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_UCPD1
1225:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1226:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1227:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1228:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1229:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP2_ReleaseReset(uint32_t Periphs)
  69              		.loc 2 1229 22 view .LVU12
  70              	.LBB15:
1230:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1231:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1RSTR2, Periphs);
  71              		.loc 2 1231 3 view .LVU13
  72 0014 DA6B     		ldr	r2, [r3, #60]
  73 0016 22F00102 		bic	r2, r2, #1
  74 001a DA63     		str	r2, [r3, #60]
  75 001c 7047     		bx	lr
  76              	.LVL4:
  77              	.L3:
  78              		.loc 2 1231 3 is_stmt 0 view .LVU14
  79              	.LBE15:
  80              	.LBE14:
 144:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   }
 145:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   else
 146:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   {
 147:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     status = ERROR;
  81              		.loc 1 147 12 view .LVU15
  82 001e 0120     		movs	r0, #1
  83              	.LVL5:
 148:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   }
 149:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 150:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   return (status);
  84              		.loc 1 150 3 is_stmt 1 view .LVU16
 151:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** }
  85              		.loc 1 151 1 is_stmt 0 view .LVU17
  86 0020 7047     		bx	lr
  87              	.L5:
  88 0022 00BF     		.align	2
  89              	.L4:
  90 0024 00800040 		.word	1073774592
  91              		.cfi_endproc
  92              	.LFE468:
  94              		.global	__aeabi_uldivmod
  95              		.global	__aeabi_ldivmod
  96              		.section	.text.LL_LPUART_Init,"ax",%progbits
  97              		.align	1
  98              		.global	LL_LPUART_Init
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 104              	LL_LPUART_Init:
 105              	.LVL6:
 106              	.LFB469:
 152:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 153:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /**
 154:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @brief  Initialize LPUART registers according to the specified
 155:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *         parameters in LPUART_InitStruct.
 156:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @note   As some bits in LPUART configuration registers can only be written when the LPUART is d
 157:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *         LPUART Peripheral should be in disabled state prior calling this function. Otherwise, E
 158:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @note   Baud rate value stored in LPUART_InitStruct BaudRate field, should be valid (different 
 159:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @param  LPUARTx LPUART Instance
 160:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @param  LPUART_InitStruct pointer to a @ref LL_LPUART_InitTypeDef structure
 161:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *         that contains the configuration information for the specified LPUART peripheral.
 162:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @retval An ErrorStatus enumeration value:
 163:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *          - SUCCESS: LPUART registers are initialized according to LPUART_InitStruct content
 164:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *          - ERROR: Problem occurred during LPUART Registers initialization
 165:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
 166:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** ErrorStatus LL_LPUART_Init(USART_TypeDef *LPUARTx, LL_LPUART_InitTypeDef *LPUART_InitStruct)
 167:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** {
 107              		.loc 1 167 1 is_stmt 1 view -0
 108              		.cfi_startproc
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		.loc 1 167 1 is_stmt 0 view .LVU19
 112 0000 2DE9F04B 		push	{r4, r5, r6, r7, r8, r9, fp, lr}
 113              		.cfi_def_cfa_offset 32
 114              		.cfi_offset 4, -32
 115              		.cfi_offset 5, -28
 116              		.cfi_offset 6, -24
 117              		.cfi_offset 7, -20
 118              		.cfi_offset 8, -16
 119              		.cfi_offset 9, -12
 120              		.cfi_offset 11, -8
 121              		.cfi_offset 14, -4
 122              	.LBB26:
 123              	.LBB27:
 124              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_lpuart.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @file    stm32g4xx_ll_lpuart.h
   4:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief   Header file of LPUART LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #ifndef STM32G4xx_LL_LPUART_H
  22:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define STM32G4xx_LL_LPUART_H
  23:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #if defined (LPUART1)
  36:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL LPUART
  38:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_Private_Variables LPUART Private Variables
  44:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
  45:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  46:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Array used to get the LPUART prescaler division decimal values versus @ref LPUART_LL_EC_PRESCALE
  47:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** static const uint16_t LPUART_PRESCALER_TAB[] =
  48:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
  49:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)1,
  50:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)2,
  51:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)4,
  52:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)6,
  53:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)8,
  54:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)10,
  55:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)12,
  56:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)16,
  57:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)32,
  58:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)64,
  59:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)128,
  60:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   (uint16_t)256
  61:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** };
  62:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
  63:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
  64:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  65:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  66:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Private constants ---------------------------------------------------------*/
  67:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_Private_Constants LPUART Private Constants
  68:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
  69:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  70:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Defines used in Baud Rate related macros and corresponding register setting computation */
  71:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LPUART_LPUARTDIV_FREQ_MUL     256U
  72:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LPUART_BRR_MASK               0x000FFFFFU
  73:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LPUART_BRR_MIN_VALUE          0x00000300U
  74:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
  75:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
  76:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  77:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  78:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  79:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Private macros ------------------------------------------------------------*/
  80:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #if defined(USE_FULL_LL_DRIVER)
  81:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_Private_Macros LPUART Private Macros
  82:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
  83:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  84:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
  85:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
  86:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  87:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #endif /*USE_FULL_LL_DRIVER*/
  88:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  89:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Exported types ------------------------------------------------------------*/
  90:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #if defined(USE_FULL_LL_DRIVER)
  91:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_ES_INIT LPUART Exported Init structures
  92:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
  93:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  94:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
  95:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
  96:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief LL LPUART Init Structure definition
  97:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
  98:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** typedef struct
  99:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 100:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   uint32_t PrescalerValue;            /*!< Specifies the Prescaler to compute the communication bau
 101:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This parameter can be a value of @ref LPUART_LL_EC_PRESC
 102:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 103:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This feature can be modified afterwards using unitary fu
 104:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 105:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   uint32_t BaudRate;                  /*!< This field defines expected LPUART communication baud ra
 106:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 107:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This feature can be modified afterwards using unitary fu
 108:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   uint32_t DataWidth;                 /*!< Specifies the number of data bits transmitted or receive
 110:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This parameter can be a value of @ref LPUART_LL_EC_DATAW
 111:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 112:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This feature can be modified afterwards using unitary fu
 113:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 114:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   uint32_t StopBits;                  /*!< Specifies the number of stop bits transmitted.
 115:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This parameter can be a value of @ref LPUART_LL_EC_STOPB
 116:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 117:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This feature can be modified afterwards using unitary fu
 118:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 119:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   uint32_t Parity;                    /*!< Specifies the parity mode.
 120:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This parameter can be a value of @ref LPUART_LL_EC_PARIT
 121:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 122:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This feature can be modified afterwards using unitary fu
 123:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 124:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   uint32_t TransferDirection;         /*!< Specifies whether the Receive and/or Transmit mode is en
 125:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This parameter can be a value of @ref LPUART_LL_EC_DIREC
 126:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 127:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This feature can be modified afterwards using unitary fu
 128:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 129:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   uint32_t HardwareFlowControl;       /*!< Specifies whether the hardware flow control mode is enab
 130:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This parameter can be a value of @ref LPUART_LL_EC_HWCON
 131:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 132:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            This feature can be modified afterwards using unitary fu
 133:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** } LL_LPUART_InitTypeDef;
 135:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 136:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 137:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 138:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 139:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #endif /* USE_FULL_LL_DRIVER */
 140:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 141:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Exported constants --------------------------------------------------------*/
 142:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_Exported_Constants LPUART Exported Constants
 143:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 144:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 145:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 146:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_CLEAR_FLAG Clear Flags Defines
 147:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief    Flags defines which can be used with LL_LPUART_WriteReg function
 148:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 149:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 150:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_PECF                 USART_ICR_PECF                /*!< Parity error flag */
 151:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_FECF                 USART_ICR_FECF                /*!< Framing error flag */
 152:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_NCF                  USART_ICR_NECF                /*!< Noise error detected 
 153:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_ORECF                USART_ICR_ORECF               /*!< Overrun error flag */
 154:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_IDLECF               USART_ICR_IDLECF              /*!< Idle line detected fl
 155:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_TXFECF               USART_ICR_TXFECF              /*!< TX FIFO Empty Clear f
 156:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_TCCF                 USART_ICR_TCCF                /*!< Transmission complete
 157:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_CTSCF                USART_ICR_CTSCF               /*!< CTS flag */
 158:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_CMCF                 USART_ICR_CMCF                /*!< Character match flag 
 159:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ICR_WUCF                 USART_ICR_WUCF                /*!< Wakeup from Stop mode
 160:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 161:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 162:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 163:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 164:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_GET_FLAG Get Flags Defines
 165:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief    Flags defines which can be used with LL_LPUART_ReadReg function
 166:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 167:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 168:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_PE                   USART_ISR_PE                  /*!< Parity error flag */
 169:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_FE                   USART_ISR_FE                  /*!< Framing error flag */
 170:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_NE                   USART_ISR_NE                  /*!< Noise detected flag *
 171:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_ORE                  USART_ISR_ORE                 /*!< Overrun error flag */
 172:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_IDLE                 USART_ISR_IDLE                /*!< Idle line detected fl
 173:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_RXNE_RXFNE           USART_ISR_RXNE_RXFNE          /*!< Read data register or
 174:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_TC                   USART_ISR_TC                  /*!< Transmission complete
 175:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_TXE_TXFNF            USART_ISR_TXE_TXFNF           /*!< Transmit data registe
 176:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_CTSIF                USART_ISR_CTSIF               /*!< CTS interrupt flag */
 177:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_CTS                  USART_ISR_CTS                 /*!< CTS flag */
 178:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_BUSY                 USART_ISR_BUSY                /*!< Busy flag */
 179:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_CMF                  USART_ISR_CMF                 /*!< Character match flag 
 180:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_SBKF                 USART_ISR_SBKF                /*!< Send break flag */
 181:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_RWU                  USART_ISR_RWU                 /*!< Receiver wakeup from 
 182:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_WUF                  USART_ISR_WUF                 /*!< Wakeup from Stop mode
 183:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_TEACK                USART_ISR_TEACK               /*!< Transmit enable ackno
 184:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_REACK                USART_ISR_REACK               /*!< Receive enable acknow
 185:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_TXFE                 USART_ISR_TXFE                /*!< TX FIFO empty flag */
 186:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_RXFF                 USART_ISR_RXFF                /*!< RX FIFO full flag */
 187:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_RXFT                 USART_ISR_RXFT                /*!< RX FIFO threshold fla
 188:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ISR_TXFT                 USART_ISR_TXFT                /*!< TX FIFO threshold fla
 189:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 190:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 191:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 192:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 193:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_IT IT Defines
 194:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief    IT defines which can be used with LL_LPUART_ReadReg and  LL_LPUART_WriteReg functions
 195:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 196:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 197:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_IDLEIE               USART_CR1_IDLEIE              /*!< IDLE interrupt enable
 198:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_RXNEIE_RXFNEIE       USART_CR1_RXNEIE_RXFNEIE      /*!< Read data register an
 199:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_TCIE                 USART_CR1_TCIE                /*!< Transmission complete
 200:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_TXEIE_TXFNFIE        USART_CR1_TXEIE_TXFNFIE       /*!< Transmit data registe
 201:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_PEIE                 USART_CR1_PEIE                /*!< Parity error */
 202:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_CMIE                 USART_CR1_CMIE                /*!< Character match inter
 203:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_TXFEIE               USART_CR1_TXFEIE              /*!< TX FIFO empty interru
 204:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR1_RXFFIE               USART_CR1_RXFFIE              /*!< RX FIFO full interrup
 205:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR3_EIE                  USART_CR3_EIE                 /*!< Error interrupt enabl
 206:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR3_CTSIE                USART_CR3_CTSIE               /*!< CTS interrupt enable 
 207:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR3_WUFIE                USART_CR3_WUFIE               /*!< Wakeup from Stop mode
 208:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR3_TXFTIE               USART_CR3_TXFTIE              /*!< TX FIFO threshold int
 209:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_CR3_RXFTIE               USART_CR3_RXFTIE              /*!< RX FIFO threshold int
 210:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 211:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 212:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 213:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 214:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_FIFOTHRESHOLD FIFO Threshold
 215:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 216:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 217:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_FIFOTHRESHOLD_1_8        0x00000000U /*!< FIFO reaches 1/8 of its depth */
 218:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_FIFOTHRESHOLD_1_4        0x00000001U /*!< FIFO reaches 1/4 of its depth */
 219:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_FIFOTHRESHOLD_1_2        0x00000002U /*!< FIFO reaches 1/2 of its depth */
 220:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_FIFOTHRESHOLD_3_4        0x00000003U /*!< FIFO reaches 3/4 of its depth */
 221:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_FIFOTHRESHOLD_7_8        0x00000004U /*!< FIFO reaches 7/8 of its depth */
 222:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_FIFOTHRESHOLD_8_8        0x00000005U /*!< FIFO becomes empty for TX and full for 
 223:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 224:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 225:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 226:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 227:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_DIRECTION Direction
 228:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 229:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 230:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DIRECTION_NONE           0x00000000U                        /*!< Transmitter and 
 231:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DIRECTION_RX             USART_CR1_RE                       /*!< Transmitter is d
 232:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DIRECTION_TX             USART_CR1_TE                       /*!< Transmitter is e
 233:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DIRECTION_TX_RX          (USART_CR1_TE |USART_CR1_RE)       /*!< Transmitter and 
 234:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 235:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 236:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 237:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 238:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_PARITY Parity Control
 239:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 240:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 241:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PARITY_NONE              0x00000000U                        /*!< Parity control d
 242:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PARITY_EVEN              USART_CR1_PCE                      /*!< Parity control e
 243:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PARITY_ODD               (USART_CR1_PCE | USART_CR1_PS)     /*!< Parity control e
 244:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 245:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 246:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 247:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 248:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_WAKEUP Wakeup
 249:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 250:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 251:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_WAKEUP_IDLELINE          0x00000000U                        /*!<  LPUART wake up 
 252:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_WAKEUP_ADDRESSMARK       USART_CR1_WAKE                     /*!<  LPUART wake up 
 253:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 254:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 255:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 256:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 257:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_DATAWIDTH Datawidth
 258:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 259:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 260:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DATAWIDTH_7B             USART_CR1_M1                       /*!< 7 bits word leng
 261:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DATAWIDTH_8B             0x00000000U                        /*!< 8 bits word leng
 262:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DATAWIDTH_9B             USART_CR1_M0                       /*!< 9 bits word leng
 263:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 264:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 265:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 266:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 267:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_PRESCALER Clock Source Prescaler
 268:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 269:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 270:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV1           0x00000000U                                             
 271:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV2           (USART_PRESC_PRESCALER_0)                               
 272:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV4           (USART_PRESC_PRESCALER_1)                               
 273:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV6           (USART_PRESC_PRESCALER_1 | USART_PRESC_PRESCALER_0)     
 274:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV8           (USART_PRESC_PRESCALER_2)                               
 275:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV10          (USART_PRESC_PRESCALER_2 | USART_PRESC_PRESCALER_0)     
 276:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV12          (USART_PRESC_PRESCALER_2 | USART_PRESC_PRESCALER_1)     
 277:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV16          (USART_PRESC_PRESCALER_2 | USART_PRESC_PRESCALER_1 | USA
 278:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV32          (USART_PRESC_PRESCALER_3)                               
 279:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV64          (USART_PRESC_PRESCALER_3 | USART_PRESC_PRESCALER_0)     
 280:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV128         (USART_PRESC_PRESCALER_3 | USART_PRESC_PRESCALER_1)     
 281:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_PRESCALER_DIV256         (USART_PRESC_PRESCALER_3 | USART_PRESC_PRESCALER_1 | USA
 282:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 283:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 284:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 285:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 286:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_STOPBITS Stop Bits
 287:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 288:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 289:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_STOPBITS_1               0x00000000U                        /*!< 1 stop bit */
 290:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_STOPBITS_2               USART_CR2_STOP_1                   /*!< 2 stop bits */
 291:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 292:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 293:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 294:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 295:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_TXRX TX RX Pins Swap
 296:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 297:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 298:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_TXRX_STANDARD            0x00000000U                        /*!< TX/RX pins are u
 299:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_TXRX_SWAPPED             (USART_CR2_SWAP)                   /*!< TX and RX pins f
 300:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 301:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 302:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 303:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 304:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_RXPIN_LEVEL RX Pin Active Level Inversion
 305:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 306:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 307:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_RXPIN_LEVEL_STANDARD     0x00000000U                        /*!< RX pin signal wo
 308:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_RXPIN_LEVEL_INVERTED     (USART_CR2_RXINV)                  /*!< RX pin signal va
 309:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 310:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 311:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 312:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 313:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_TXPIN_LEVEL TX Pin Active Level Inversion
 314:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 315:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 316:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_TXPIN_LEVEL_STANDARD     0x00000000U                        /*!< TX pin signal wo
 317:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_TXPIN_LEVEL_INVERTED     (USART_CR2_TXINV)                  /*!< TX pin signal va
 318:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 319:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 320:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 321:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 322:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_BINARY_LOGIC Binary Data Inversion
 323:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 324:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 325:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_BINARY_LOGIC_POSITIVE    0x00000000U                        /*!< Logical data fro
 326:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_BINARY_LOGIC_NEGATIVE    USART_CR2_DATAINV                  /*!< Logical data fro
 327:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 328:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 329:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 330:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 331:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_BITORDER Bit Order
 332:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 333:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 334:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_BITORDER_LSBFIRST        0x00000000U                        /*!< data is transmit
 335:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_BITORDER_MSBFIRST        USART_CR2_MSBFIRST                 /*!< data is transmit
 336:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 337:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 338:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 339:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 340:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_ADDRESS_DETECT Address Length Detection
 341:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 342:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 343:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ADDRESS_DETECT_4B        0x00000000U                        /*!< 4-bit address de
 344:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ADDRESS_DETECT_7B        USART_CR2_ADDM7                    /*!< 7-bit address de
 345:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 346:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 347:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 348:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 349:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_HWCONTROL Hardware Control
 350:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 351:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 352:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_HWCONTROL_NONE           0x00000000U                        /*!< CTS and RTS hard
 353:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_HWCONTROL_RTS            USART_CR3_RTSE                     /*!< RTS output enabl
 354:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_HWCONTROL_CTS            USART_CR3_CTSE                     /*!< CTS mode enabled
 355:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_HWCONTROL_RTS_CTS        (USART_CR3_RTSE | USART_CR3_CTSE)  /*!< CTS and RTS hard
 356:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 357:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 358:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 359:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 360:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_WAKEUP_ON Wakeup Activation
 361:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 362:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 363:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_WAKEUP_ON_ADDRESS        0x00000000U                             /*!< Wake up act
 364:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_WAKEUP_ON_STARTBIT       USART_CR3_WUS_1                         /*!< Wake up act
 365:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_WAKEUP_ON_RXNE           (USART_CR3_WUS_0 | USART_CR3_WUS_1)     /*!< Wake up act
 366:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 367:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 368:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 369:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 370:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_DE_POLARITY Driver Enable Polarity
 371:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 372:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 373:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DE_POLARITY_HIGH         0x00000000U                        /*!< DE signal is act
 374:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DE_POLARITY_LOW          USART_CR3_DEP                      /*!< DE signal is act
 375:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 376:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 377:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 378:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 379:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EC_DMA_REG_DATA DMA Register Data
 380:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 381:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 382:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DMA_REG_DATA_TRANSMIT    0x00000000U                       /*!< Get address of da
 383:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_DMA_REG_DATA_RECEIVE     0x00000001U                       /*!< Get address of da
 384:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 385:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 386:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 387:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 388:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 389:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 390:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 391:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 392:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Exported macro ------------------------------------------------------------*/
 393:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_Exported_Macros LPUART Exported Macros
 394:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 395:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 396:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 397:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EM_WRITE_READ Common Write and read registers Macros
 398:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 399:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 400:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 401:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 402:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Write a value in LPUART register
 403:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __INSTANCE__ LPUART Instance
 404:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __REG__ Register to be written
 405:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __VALUE__ Value to be written in the register
 406:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 407:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 408:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VA
 409:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 410:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 411:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Read a value in LPUART register
 412:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __INSTANCE__ LPUART Instance
 413:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __REG__ Register to be read
 414:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Register value
 415:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 416:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define LL_LPUART_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 417:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 418:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 419:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 420:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 421:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EM_Exported_Macros_Helper Helper Macros
 422:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 423:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 424:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 425:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 426:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Compute LPUARTDIV value according to Peripheral Clock and
 427:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         expected Baud Rate (20-bit value of LPUARTDIV is returned)
 428:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __PERIPHCLK__ Peripheral Clock frequency used for LPUART Instance
 429:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __PRESCALER__ This parameter can be one of the following values:
 430:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV1
 431:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV2
 432:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV4
 433:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV6
 434:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV8
 435:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV10
 436:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV12
 437:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV16
 438:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV32
 439:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV64
 440:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV128
 441:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV256
 442:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  __BAUDRATE__ Baud Rate value to achieve
 443:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval LPUARTDIV value to be used for BRR register filling
 444:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 445:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** #define __LL_LPUART_DIV(__PERIPHCLK__, __PRESCALER__, __BAUDRATE__) (uint32_t)((((((uint64_t)(__PER
 446:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                                                                 + (uint32_t)((__BAU
 447:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 448:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 449:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 450:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 451:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 452:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 453:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @}
 454:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 455:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 456:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /* Exported functions --------------------------------------------------------*/
 457:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_Exported_Functions LPUART Exported Functions
 458:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 459:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 460:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 461:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /** @defgroup LPUART_LL_EF_Configuration Configuration functions
 462:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @{
 463:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 464:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 465:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 466:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  LPUART Enable
 467:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          UE            LL_LPUART_Enable
 468:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 469:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 470:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 471:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_Enable(USART_TypeDef *LPUARTx)
 472:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 473:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR1, USART_CR1_UE);
 474:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 475:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 476:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 477:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  LPUART Disable
 478:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   When LPUART is disabled, LPUART prescalers and outputs are stopped immediately,
 479:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         and current operations are discarded. The configuration of the LPUART is kept, but all 
 480:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         flags, in the LPUARTx_ISR are set to their default values.
 481:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   In order to go into low-power mode without generating errors on the line,
 482:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         the TE bit must be reset before and the software must wait
 483:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         for the TC bit in the LPUART_ISR to be set before resetting the UE bit.
 484:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         The DMA requests are also reset when UE = 0 so the DMA channel must
 485:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         be disabled before resetting the UE bit.
 486:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          UE            LL_LPUART_Disable
 487:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 488:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 489:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 490:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_Disable(USART_TypeDef *LPUARTx)
 491:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 492:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR1, USART_CR1_UE);
 493:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 494:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 495:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 496:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Indicate if LPUART is enabled
 497:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          UE            LL_LPUART_IsEnabled
 498:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 499:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval State of bit (1 or 0).
 500:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 501:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_IsEnabled(USART_TypeDef *LPUARTx)
 502:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 503:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return ((READ_BIT(LPUARTx->CR1, USART_CR1_UE) == (USART_CR1_UE)) ? 1UL : 0UL);
 125              		.loc 3 503 12 view .LVU20
 126 0004 0468     		ldr	r4, [r0]
 127              		.loc 3 503 74 view .LVU21
 128 0006 14F00104 		ands	r4, r4, #1
 129              	.LBE27:
 130              	.LBE26:
 131              		.loc 1 167 1 view .LVU22
 132 000a 0546     		mov	r5, r0
 168:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   ErrorStatus status = ERROR;
 133              		.loc 1 168 3 is_stmt 1 view .LVU23
 134              	.LVL7:
 169:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   uint32_t periphclk;
 135              		.loc 1 169 3 view .LVU24
 170:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 171:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   /* Check the parameters */
 172:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LPUART_INSTANCE(LPUARTx));
 136              		.loc 1 172 3 view .LVU25
 173:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LL_LPUART_PRESCALER(LPUART_InitStruct->PrescalerValue));
 137              		.loc 1 173 3 view .LVU26
 174:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LL_LPUART_BAUDRATE(LPUART_InitStruct->BaudRate));
 138              		.loc 1 174 3 view .LVU27
 175:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LL_LPUART_DATAWIDTH(LPUART_InitStruct->DataWidth));
 139              		.loc 1 175 3 view .LVU28
 176:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LL_LPUART_STOPBITS(LPUART_InitStruct->StopBits));
 140              		.loc 1 176 3 view .LVU29
 177:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LL_LPUART_PARITY(LPUART_InitStruct->Parity));
 141              		.loc 1 177 3 view .LVU30
 178:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LL_LPUART_DIRECTION(LPUART_InitStruct->TransferDirection));
 142              		.loc 1 178 3 view .LVU31
 179:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   assert_param(IS_LL_LPUART_HWCONTROL(LPUART_InitStruct->HardwareFlowControl));
 143              		.loc 1 179 3 view .LVU32
 180:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 181:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   /* LPUART needs to be in disabled state, in order to be able to configure some bits in
 182:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      CRx registers. Otherwise (LPUART not in Disabled state) => return ERROR */
 183:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   if (LL_LPUART_IsEnabled(LPUARTx) == 0U)
 144              		.loc 1 183 3 view .LVU33
 145              	.LBB30:
 146              	.LBI26:
 501:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 147              		.loc 3 501 26 view .LVU34
 148              	.LBB28:
 149              		.loc 3 503 3 view .LVU35
 150              	.LBE28:
 151              	.LBE30:
 167:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   ErrorStatus status = ERROR;
 152              		.loc 1 167 1 is_stmt 0 view .LVU36
 153 000c 0E46     		mov	r6, r1
 154              	.LBB31:
 155              	.LBB29:
 156              		.loc 3 503 74 view .LVU37
 157 000e 44D1     		bne	.L9
 158              	.LVL8:
 159              		.loc 3 503 74 view .LVU38
 160              	.LBE29:
 161              	.LBE31:
 184:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   {
 185:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /*---------------------------- LPUART CR1 Configuration -----------------------
 186:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * Configure LPUARTx CR1 (LPUART Word Length, Parity and Transfer Direction bits) with paramete
 187:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * - DataWidth:          USART_CR1_M bits according to LPUART_InitStruct->DataWidth value
 188:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * - Parity:             USART_CR1_PCE, USART_CR1_PS bits according to LPUART_InitStruct->Parit
 189:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * - TransferDirection:  USART_CR1_TE, USART_CR1_RE bits according to LPUART_InitStruct->Transf
 190:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      */
 191:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     MODIFY_REG(LPUARTx->CR1,
 162              		.loc 1 191 5 is_stmt 1 view .LVU39
 163 0010 3269     		ldr	r2, [r6, #16]
 164 0012 B368     		ldr	r3, [r6, #8]
 165 0014 0168     		ldr	r1, [r0]
 166              	.LVL9:
 167              		.loc 1 191 5 is_stmt 0 view .LVU40
 168 0016 1343     		orrs	r3, r3, r2
 169 0018 7269     		ldr	r2, [r6, #20]
 170 001a 1343     		orrs	r3, r3, r2
 171 001c 204A     		ldr	r2, .L12
 172 001e 0A40     		ands	r2, r2, r1
 173 0020 1343     		orrs	r3, r3, r2
 174 0022 0360     		str	r3, [r0]
 192:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                (USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE),
 193:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                (LPUART_InitStruct->DataWidth | LPUART_InitStruct->Parity | LPUART_InitStruct->Trans
 194:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 195:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /*---------------------------- LPUART CR2 Configuration -----------------------
 196:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * Configure LPUARTx CR2 (Stop bits) with parameters:
 197:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * - Stop Bits:          USART_CR2_STOP bits according to LPUART_InitStruct->StopBits value.
 198:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      */
 199:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     LL_LPUART_SetStopBitsLength(LPUARTx, LPUART_InitStruct->StopBits);
 175              		.loc 1 199 5 is_stmt 1 view .LVU41
 176              	.LVL10:
 177              	.LBB32:
 178              	.LBI32:
 504:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 505:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 506:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 507:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  FIFO Mode Enable
 508:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          FIFOEN        LL_LPUART_EnableFIFO
 509:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 510:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 511:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 512:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableFIFO(USART_TypeDef *LPUARTx)
 513:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 514:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR1, USART_CR1_FIFOEN);
 515:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 516:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 517:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 518:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  FIFO Mode Disable
 519:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          FIFOEN        LL_LPUART_DisableFIFO
 520:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 521:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 522:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 523:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableFIFO(USART_TypeDef *LPUARTx)
 524:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 525:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR1, USART_CR1_FIFOEN);
 526:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 527:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 528:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 529:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Indicate if FIFO Mode is enabled
 530:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          FIFOEN        LL_LPUART_IsEnabledFIFO
 531:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 532:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval State of bit (1 or 0).
 533:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 534:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_IsEnabledFIFO(USART_TypeDef *LPUARTx)
 535:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 536:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return ((READ_BIT(LPUARTx->CR1, USART_CR1_FIFOEN) == (USART_CR1_FIFOEN)) ? 1UL : 0UL);
 537:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 538:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 539:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 540:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure TX FIFO Threshold
 541:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          TXFTCFG       LL_LPUART_SetTXFIFOThreshold
 542:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 543:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  Threshold This parameter can be one of the following values:
 544:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_8
 545:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_4
 546:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_2
 547:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_3_4
 548:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_7_8
 549:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_8_8
 550:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 551:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 552:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetTXFIFOThreshold(USART_TypeDef *LPUARTx, uint32_t Threshold)
 553:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 554:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR3, USART_CR3_TXFTCFG, Threshold << USART_CR3_TXFTCFG_Pos);
 555:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 556:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 557:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 558:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return TX FIFO Threshold Configuration
 559:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          TXFTCFG       LL_LPUART_GetTXFIFOThreshold
 560:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 561:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 562:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_8
 563:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_4
 564:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_2
 565:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_3_4
 566:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_7_8
 567:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_8_8
 568:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 569:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetTXFIFOThreshold(USART_TypeDef *LPUARTx)
 570:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 571:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR3, USART_CR3_TXFTCFG) >> USART_CR3_TXFTCFG_Pos);
 572:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 573:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 574:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 575:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure RX FIFO Threshold
 576:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          RXFTCFG       LL_LPUART_SetRXFIFOThreshold
 577:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 578:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  Threshold This parameter can be one of the following values:
 579:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_8
 580:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_4
 581:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_2
 582:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_3_4
 583:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_7_8
 584:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_8_8
 585:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 586:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 587:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetRXFIFOThreshold(USART_TypeDef *LPUARTx, uint32_t Threshold)
 588:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 589:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR3, USART_CR3_RXFTCFG, Threshold << USART_CR3_RXFTCFG_Pos);
 590:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 591:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 592:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 593:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return RX FIFO Threshold Configuration
 594:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          RXFTCFG       LL_LPUART_GetRXFIFOThreshold
 595:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 596:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 597:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_8
 598:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_4
 599:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_2
 600:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_3_4
 601:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_7_8
 602:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_8_8
 603:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 604:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetRXFIFOThreshold(USART_TypeDef *LPUARTx)
 605:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 606:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR3, USART_CR3_RXFTCFG) >> USART_CR3_RXFTCFG_Pos);
 607:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 608:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 609:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 610:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure TX and RX FIFOs Threshold
 611:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          TXFTCFG       LL_LPUART_ConfigFIFOsThreshold\n
 612:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR3          RXFTCFG       LL_LPUART_ConfigFIFOsThreshold
 613:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 614:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  TXThreshold This parameter can be one of the following values:
 615:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_8
 616:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_4
 617:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_2
 618:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_3_4
 619:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_7_8
 620:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_8_8
 621:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  RXThreshold This parameter can be one of the following values:
 622:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_8
 623:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_4
 624:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_1_2
 625:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_3_4
 626:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_7_8
 627:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_FIFOTHRESHOLD_8_8
 628:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 629:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 630:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_ConfigFIFOsThreshold(USART_TypeDef *LPUARTx, uint32_t TXThreshold, u
 631:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 632:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR3, USART_CR3_TXFTCFG | USART_CR3_RXFTCFG, (TXThreshold << USART_CR3_TXFTCFG
 633:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 634:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 635:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 636:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  LPUART enabled in STOP Mode
 637:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   When this function is enabled, LPUART is able to wake up the MCU from Stop mode, provid
 638:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         LPUART clock selection is HSI or LSE in RCC.
 639:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          UESM          LL_LPUART_EnableInStopMode
 640:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 641:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 642:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 643:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableInStopMode(USART_TypeDef *LPUARTx)
 644:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 645:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR1, USART_CR1_UESM);
 646:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 647:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 648:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 649:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  LPUART disabled in STOP Mode
 650:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   When this function is disabled, LPUART is not able to wake up the MCU from Stop mode
 651:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          UESM          LL_LPUART_DisableInStopMode
 652:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 653:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 654:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 655:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableInStopMode(USART_TypeDef *LPUARTx)
 656:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 657:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR1, USART_CR1_UESM);
 658:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 659:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 660:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 661:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Indicate if LPUART is enabled in STOP Mode
 662:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         (able to wake up MCU from Stop mode or not)
 663:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          UESM          LL_LPUART_IsEnabledInStopMode
 664:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 665:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval State of bit (1 or 0).
 666:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 667:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_IsEnabledInStopMode(USART_TypeDef *LPUARTx)
 668:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 669:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return ((READ_BIT(LPUARTx->CR1, USART_CR1_UESM) == (USART_CR1_UESM)) ? 1UL : 0UL);
 670:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 671:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 672:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 673:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Receiver Enable (Receiver is enabled and begins searching for a start bit)
 674:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          RE            LL_LPUART_EnableDirectionRx
 675:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 676:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 677:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 678:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableDirectionRx(USART_TypeDef *LPUARTx)
 679:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 680:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR1, USART_CR1_RE);
 681:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 682:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 683:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 684:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Receiver Disable
 685:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          RE            LL_LPUART_DisableDirectionRx
 686:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 687:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 688:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 689:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableDirectionRx(USART_TypeDef *LPUARTx)
 690:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 691:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR1, USART_CR1_RE);
 692:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 693:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 694:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 695:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Transmitter Enable
 696:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          TE            LL_LPUART_EnableDirectionTx
 697:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 698:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 699:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 700:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableDirectionTx(USART_TypeDef *LPUARTx)
 701:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 702:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR1, USART_CR1_TE);
 703:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 704:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 705:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 706:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Transmitter Disable
 707:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          TE            LL_LPUART_DisableDirectionTx
 708:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 709:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 710:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 711:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableDirectionTx(USART_TypeDef *LPUARTx)
 712:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 713:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR1, USART_CR1_TE);
 714:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 715:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 716:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 717:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure simultaneously enabled/disabled states
 718:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         of Transmitter and Receiver
 719:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          RE            LL_LPUART_SetTransferDirection\n
 720:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR1          TE            LL_LPUART_SetTransferDirection
 721:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 722:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  TransferDirection This parameter can be one of the following values:
 723:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_NONE
 724:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_RX
 725:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_TX
 726:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_TX_RX
 727:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 728:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 729:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetTransferDirection(USART_TypeDef *LPUARTx, uint32_t TransferDirect
 730:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 731:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR1, USART_CR1_RE | USART_CR1_TE, TransferDirection);
 732:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 733:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 734:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 735:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return enabled/disabled states of Transmitter and Receiver
 736:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          RE            LL_LPUART_GetTransferDirection\n
 737:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR1          TE            LL_LPUART_GetTransferDirection
 738:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 739:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 740:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_NONE
 741:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_RX
 742:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_TX
 743:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DIRECTION_TX_RX
 744:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 745:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetTransferDirection(USART_TypeDef *LPUARTx)
 746:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 747:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR1, USART_CR1_RE | USART_CR1_TE));
 748:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 749:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 750:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 751:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure Parity (enabled/disabled and parity mode if enabled)
 752:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   This function selects if hardware parity control (generation and detection) is enabled 
 753:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         When the parity control is enabled (Odd or Even), computed parity bit is inserted at th
 754:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         (depending on data width) and parity is checked on the received data.
 755:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          PS            LL_LPUART_SetParity\n
 756:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR1          PCE           LL_LPUART_SetParity
 757:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 758:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  Parity This parameter can be one of the following values:
 759:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_NONE
 760:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_EVEN
 761:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_ODD
 762:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 763:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 764:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetParity(USART_TypeDef *LPUARTx, uint32_t Parity)
 765:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 766:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR1, USART_CR1_PS | USART_CR1_PCE, Parity);
 767:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 768:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 769:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 770:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return Parity configuration (enabled/disabled and parity mode if enabled)
 771:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          PS            LL_LPUART_GetParity\n
 772:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR1          PCE           LL_LPUART_GetParity
 773:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 774:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 775:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_NONE
 776:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_EVEN
 777:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_ODD
 778:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 779:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetParity(USART_TypeDef *LPUARTx)
 780:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 781:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR1, USART_CR1_PS | USART_CR1_PCE));
 782:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 783:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 784:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 785:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Set Receiver Wake Up method from Mute mode.
 786:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          WAKE          LL_LPUART_SetWakeUpMethod
 787:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 788:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  Method This parameter can be one of the following values:
 789:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_IDLELINE
 790:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ADDRESSMARK
 791:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 792:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 793:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetWakeUpMethod(USART_TypeDef *LPUARTx, uint32_t Method)
 794:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 795:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR1, USART_CR1_WAKE, Method);
 796:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 797:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 798:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 799:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return Receiver Wake Up method from Mute mode
 800:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          WAKE          LL_LPUART_GetWakeUpMethod
 801:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 802:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 803:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_IDLELINE
 804:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ADDRESSMARK
 805:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 806:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetWakeUpMethod(USART_TypeDef *LPUARTx)
 807:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 808:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR1, USART_CR1_WAKE));
 809:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 810:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 811:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 812:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Set Word length (nb of data bits, excluding start and stop bits)
 813:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          M             LL_LPUART_SetDataWidth
 814:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 815:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  DataWidth This parameter can be one of the following values:
 816:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_7B
 817:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_8B
 818:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_9B
 819:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 820:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 821:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetDataWidth(USART_TypeDef *LPUARTx, uint32_t DataWidth)
 822:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 823:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR1, USART_CR1_M, DataWidth);
 824:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 825:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 826:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 827:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return Word length (i.e. nb of data bits, excluding start and stop bits)
 828:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          M             LL_LPUART_GetDataWidth
 829:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 830:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 831:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_7B
 832:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_8B
 833:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_9B
 834:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 835:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetDataWidth(USART_TypeDef *LPUARTx)
 836:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 837:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR1, USART_CR1_M));
 838:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 839:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 840:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 841:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Allow switch between Mute Mode and Active mode
 842:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          MME           LL_LPUART_EnableMuteMode
 843:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 844:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 845:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 846:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableMuteMode(USART_TypeDef *LPUARTx)
 847:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 848:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR1, USART_CR1_MME);
 849:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 850:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 851:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 852:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Prevent Mute Mode use. Set Receiver in active mode permanently.
 853:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          MME           LL_LPUART_DisableMuteMode
 854:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 855:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 856:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 857:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableMuteMode(USART_TypeDef *LPUARTx)
 858:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 859:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR1, USART_CR1_MME);
 860:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 861:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 862:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 863:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Indicate if switch between Mute Mode and Active mode is allowed
 864:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          MME           LL_LPUART_IsEnabledMuteMode
 865:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 866:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval State of bit (1 or 0).
 867:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 868:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_IsEnabledMuteMode(USART_TypeDef *LPUARTx)
 869:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 870:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return ((READ_BIT(LPUARTx->CR1, USART_CR1_MME) == (USART_CR1_MME)) ? 1UL : 0UL);
 871:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 872:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 873:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 874:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure Clock source prescaler for baudrate generator and oversampling
 875:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll PRESC        PRESCALER     LL_LPUART_SetPrescaler
 876:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 877:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  PrescalerValue This parameter can be one of the following values:
 878:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV1
 879:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV2
 880:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV4
 881:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV6
 882:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV8
 883:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV10
 884:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV12
 885:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV16
 886:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV32
 887:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV64
 888:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV128
 889:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV256
 890:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 891:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 892:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetPrescaler(USART_TypeDef *LPUARTx, uint32_t PrescalerValue)
 893:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 894:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->PRESC, USART_PRESC_PRESCALER, (uint16_t)PrescalerValue);
 895:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 896:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 897:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 898:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Retrieve the Clock source prescaler for baudrate generator and oversampling
 899:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll PRESC        PRESCALER     LL_LPUART_GetPrescaler
 900:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 901:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 902:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV1
 903:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV2
 904:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV4
 905:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV6
 906:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV8
 907:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV10
 908:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV12
 909:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV16
 910:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV32
 911:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV64
 912:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV128
 913:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV256
 914:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 915:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetPrescaler(USART_TypeDef *LPUARTx)
 916:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 917:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->PRESC, USART_PRESC_PRESCALER));
 918:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 919:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 920:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 921:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Set the length of the stop bits
 922:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          STOP          LL_LPUART_SetStopBitsLength
 923:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 924:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  StopBits This parameter can be one of the following values:
 925:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_STOPBITS_1
 926:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_STOPBITS_2
 927:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 928:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 929:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetStopBitsLength(USART_TypeDef *LPUARTx, uint32_t StopBits)
 179              		.loc 3 929 22 view .LVU42
 180              	.LBB33:
 930:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 931:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_STOP, StopBits);
 181              		.loc 3 931 3 view .LVU43
 182 0024 4368     		ldr	r3, [r0, #4]
 183 0026 F268     		ldr	r2, [r6, #12]
 184 0028 23F44053 		bic	r3, r3, #12288
 185 002c 1343     		orrs	r3, r3, r2
 186 002e 4360     		str	r3, [r0, #4]
 187              	.LVL11:
 188              		.loc 3 931 3 is_stmt 0 view .LVU44
 189              	.LBE33:
 190              	.LBE32:
 200:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 201:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /*---------------------------- LPUART CR3 Configuration -----------------------
 202:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * Configure LPUARTx CR3 (Hardware Flow Control) with parameters:
 203:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * - HardwareFlowControl: USART_CR3_RTSE, USART_CR3_CTSE bits according to LPUART_InitStruct->H
 204:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      */
 205:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     LL_LPUART_SetHWFlowCtrl(LPUARTx, LPUART_InitStruct->HardwareFlowControl);
 191              		.loc 1 205 5 is_stmt 1 view .LVU45
 192              	.LBB34:
 193              	.LBI34:
 932:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 933:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 934:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 935:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Retrieve the length of the stop bits
 936:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          STOP          LL_LPUART_GetStopBitsLength
 937:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 938:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 939:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_STOPBITS_1
 940:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_STOPBITS_2
 941:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 942:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetStopBitsLength(USART_TypeDef *LPUARTx)
 943:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 944:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_STOP));
 945:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 946:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 947:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 948:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure Character frame format (Datawidth, Parity control, Stop Bits)
 949:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   Call of this function is equivalent to following function call sequence :
 950:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         - Data Width configuration using @ref LL_LPUART_SetDataWidth() function
 951:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         - Parity Control and mode configuration using @ref LL_LPUART_SetParity() function
 952:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         - Stop bits configuration using @ref LL_LPUART_SetStopBitsLength() function
 953:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR1          PS            LL_LPUART_ConfigCharacter\n
 954:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR1          PCE           LL_LPUART_ConfigCharacter\n
 955:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR1          M             LL_LPUART_ConfigCharacter\n
 956:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR2          STOP          LL_LPUART_ConfigCharacter
 957:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 958:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  DataWidth This parameter can be one of the following values:
 959:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_7B
 960:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_8B
 961:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_DATAWIDTH_9B
 962:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  Parity This parameter can be one of the following values:
 963:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_NONE
 964:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_EVEN
 965:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PARITY_ODD
 966:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  StopBits This parameter can be one of the following values:
 967:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_STOPBITS_1
 968:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_STOPBITS_2
 969:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 970:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 971:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_ConfigCharacter(USART_TypeDef *LPUARTx, uint32_t DataWidth, uint32_t
 972:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                                uint32_t StopBits)
 973:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 974:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR1, USART_CR1_PS | USART_CR1_PCE | USART_CR1_M, Parity | DataWidth);
 975:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_STOP, StopBits);
 976:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 977:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 978:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 979:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure TX/RX pins swapping setting.
 980:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          SWAP          LL_LPUART_SetTXRXSwap
 981:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 982:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  SwapConfig This parameter can be one of the following values:
 983:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXRX_STANDARD
 984:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXRX_SWAPPED
 985:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
 986:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
 987:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetTXRXSwap(USART_TypeDef *LPUARTx, uint32_t SwapConfig)
 988:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 989:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_SWAP, SwapConfig);
 990:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 991:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
 992:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
 993:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Retrieve TX/RX pins swapping configuration.
 994:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          SWAP          LL_LPUART_GetTXRXSwap
 995:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
 996:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
 997:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXRX_STANDARD
 998:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXRX_SWAPPED
 999:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1000:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetTXRXSwap(USART_TypeDef *LPUARTx)
1001:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1002:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_SWAP));
1003:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1004:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1005:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1006:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure RX pin active level logic
1007:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          RXINV         LL_LPUART_SetRXPinLevel
1008:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1009:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  PinInvMethod This parameter can be one of the following values:
1010:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_RXPIN_LEVEL_STANDARD
1011:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_RXPIN_LEVEL_INVERTED
1012:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1013:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1014:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetRXPinLevel(USART_TypeDef *LPUARTx, uint32_t PinInvMethod)
1015:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1016:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_RXINV, PinInvMethod);
1017:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1018:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1019:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1020:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Retrieve RX pin active level logic configuration
1021:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          RXINV         LL_LPUART_GetRXPinLevel
1022:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1023:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
1024:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_RXPIN_LEVEL_STANDARD
1025:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_RXPIN_LEVEL_INVERTED
1026:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1027:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetRXPinLevel(USART_TypeDef *LPUARTx)
1028:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1029:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_RXINV));
1030:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1031:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1032:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1033:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure TX pin active level logic
1034:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          TXINV         LL_LPUART_SetTXPinLevel
1035:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1036:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  PinInvMethod This parameter can be one of the following values:
1037:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXPIN_LEVEL_STANDARD
1038:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXPIN_LEVEL_INVERTED
1039:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1040:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1041:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetTXPinLevel(USART_TypeDef *LPUARTx, uint32_t PinInvMethod)
1042:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1043:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_TXINV, PinInvMethod);
1044:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1045:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1046:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1047:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Retrieve TX pin active level logic configuration
1048:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          TXINV         LL_LPUART_GetTXPinLevel
1049:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1050:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
1051:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXPIN_LEVEL_STANDARD
1052:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_TXPIN_LEVEL_INVERTED
1053:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1054:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetTXPinLevel(USART_TypeDef *LPUARTx)
1055:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1056:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_TXINV));
1057:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1058:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1059:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1060:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure Binary data logic.
1061:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *
1062:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   Allow to define how Logical data from the data register are send/received :
1063:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         either in positive/direct logic (1=H, 0=L) or in negative/inverse logic (1=L, 0=H)
1064:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          DATAINV       LL_LPUART_SetBinaryDataLogic
1065:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1066:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  DataLogic This parameter can be one of the following values:
1067:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BINARY_LOGIC_POSITIVE
1068:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BINARY_LOGIC_NEGATIVE
1069:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1070:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1071:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetBinaryDataLogic(USART_TypeDef *LPUARTx, uint32_t DataLogic)
1072:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1073:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_DATAINV, DataLogic);
1074:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1075:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1076:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1077:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Retrieve Binary data configuration
1078:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          DATAINV       LL_LPUART_GetBinaryDataLogic
1079:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1080:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
1081:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BINARY_LOGIC_POSITIVE
1082:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BINARY_LOGIC_NEGATIVE
1083:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1084:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetBinaryDataLogic(USART_TypeDef *LPUARTx)
1085:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1086:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_DATAINV));
1087:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1088:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1089:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1090:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure transfer bit order (either Less or Most Significant Bit First)
1091:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   MSB First means data is transmitted/received with the MSB first, following the start bi
1092:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         LSB First means data is transmitted/received with data bit 0 first, following the start
1093:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          MSBFIRST      LL_LPUART_SetTransferBitOrder
1094:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1095:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  BitOrder This parameter can be one of the following values:
1096:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BITORDER_LSBFIRST
1097:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BITORDER_MSBFIRST
1098:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1099:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1100:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetTransferBitOrder(USART_TypeDef *LPUARTx, uint32_t BitOrder)
1101:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1102:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_MSBFIRST, BitOrder);
1103:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1104:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1105:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1106:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return transfer bit order (either Less or Most Significant Bit First)
1107:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   MSB First means data is transmitted/received with the MSB first, following the start bi
1108:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         LSB First means data is transmitted/received with data bit 0 first, following the start
1109:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          MSBFIRST      LL_LPUART_GetTransferBitOrder
1110:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1111:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
1112:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BITORDER_LSBFIRST
1113:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_BITORDER_MSBFIRST
1114:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1115:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetTransferBitOrder(USART_TypeDef *LPUARTx)
1116:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1117:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_MSBFIRST));
1118:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1119:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1120:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1121:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Set Address of the LPUART node.
1122:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   This is used in multiprocessor communication during Mute mode or Stop mode,
1123:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         for wake up with address mark detection.
1124:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   4bits address node is used when 4-bit Address Detection is selected in ADDM7.
1125:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         (b7-b4 should be set to 0)
1126:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         8bits address node is used when 7-bit Address Detection is selected in ADDM7.
1127:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         (This is used in multiprocessor communication during Mute mode or Stop mode,
1128:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         for wake up with 7-bit address mark detection.
1129:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         The MSB of the character sent by the transmitter should be equal to 1.
1130:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         It may also be used for character detection during normal reception,
1131:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         Mute mode inactive (for example, end of block detection in ModBus protocol).
1132:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         In this case, the whole received character (8-bit) is compared to the ADD[7:0]
1133:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         value and CMF flag is set on match)
1134:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          ADD           LL_LPUART_ConfigNodeAddress\n
1135:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR2          ADDM7         LL_LPUART_ConfigNodeAddress
1136:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1137:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  AddressLen This parameter can be one of the following values:
1138:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_ADDRESS_DETECT_4B
1139:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_ADDRESS_DETECT_7B
1140:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  NodeAddress 4 or 7 bit Address of the LPUART node.
1141:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1142:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1143:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_ConfigNodeAddress(USART_TypeDef *LPUARTx, uint32_t AddressLen, uint3
1144:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1145:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR2, USART_CR2_ADD | USART_CR2_ADDM7,
1146:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****              (uint32_t)(AddressLen | (NodeAddress << USART_CR2_ADD_Pos)));
1147:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1148:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1149:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1150:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return 8 bit Address of the LPUART node as set in ADD field of CR2.
1151:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   If 4-bit Address Detection is selected in ADDM7,
1152:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         only 4bits (b3-b0) of returned value are relevant (b31-b4 are not relevant)
1153:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         If 7-bit Address Detection is selected in ADDM7,
1154:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         only 8bits (b7-b0) of returned value are relevant (b31-b8 are not relevant)
1155:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          ADD           LL_LPUART_GetNodeAddress
1156:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1157:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Address of the LPUART node (Value between Min_Data=0 and Max_Data=255)
1158:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1159:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetNodeAddress(USART_TypeDef *LPUARTx)
1160:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1161:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_ADD) >> USART_CR2_ADD_Pos);
1162:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1163:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1164:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1165:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return Length of Node Address used in Address Detection mode (7-bit or 4-bit)
1166:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR2          ADDM7         LL_LPUART_GetNodeAddressLen
1167:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1168:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
1169:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_ADDRESS_DETECT_4B
1170:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_ADDRESS_DETECT_7B
1171:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1172:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetNodeAddressLen(USART_TypeDef *LPUARTx)
1173:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1174:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR2, USART_CR2_ADDM7));
1175:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1176:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1177:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1178:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Enable RTS HW Flow Control
1179:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          RTSE          LL_LPUART_EnableRTSHWFlowCtrl
1180:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1181:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1182:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1183:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableRTSHWFlowCtrl(USART_TypeDef *LPUARTx)
1184:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1185:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR3, USART_CR3_RTSE);
1186:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1187:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1188:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1189:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Disable RTS HW Flow Control
1190:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          RTSE          LL_LPUART_DisableRTSHWFlowCtrl
1191:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1192:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1193:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1194:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableRTSHWFlowCtrl(USART_TypeDef *LPUARTx)
1195:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1196:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR3, USART_CR3_RTSE);
1197:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1198:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1199:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1200:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Enable CTS HW Flow Control
1201:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          CTSE          LL_LPUART_EnableCTSHWFlowCtrl
1202:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1203:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1204:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1205:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableCTSHWFlowCtrl(USART_TypeDef *LPUARTx)
1206:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1207:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR3, USART_CR3_CTSE);
1208:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1209:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1210:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1211:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Disable CTS HW Flow Control
1212:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          CTSE          LL_LPUART_DisableCTSHWFlowCtrl
1213:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1214:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1215:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1216:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableCTSHWFlowCtrl(USART_TypeDef *LPUARTx)
1217:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1218:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR3, USART_CR3_CTSE);
1219:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1220:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1221:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1222:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure HW Flow Control mode (both CTS and RTS)
1223:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          RTSE          LL_LPUART_SetHWFlowCtrl\n
1224:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR3          CTSE          LL_LPUART_SetHWFlowCtrl
1225:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1226:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  HardwareFlowControl This parameter can be one of the following values:
1227:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_NONE
1228:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_RTS
1229:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_CTS
1230:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_RTS_CTS
1231:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1232:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1233:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetHWFlowCtrl(USART_TypeDef *LPUARTx, uint32_t HardwareFlowControl)
 194              		.loc 3 1233 22 view .LVU46
 195              	.LBB35:
1234:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1235:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE, HardwareFlowControl);
 196              		.loc 3 1235 3 view .LVU47
 197 0030 8368     		ldr	r3, [r0, #8]
 198 0032 B269     		ldr	r2, [r6, #24]
 199 0034 23F44073 		bic	r3, r3, #768
 200 0038 1343     		orrs	r3, r3, r2
 201 003a 8360     		str	r3, [r0, #8]
 202              	.LVL12:
 203              		.loc 3 1235 3 is_stmt 0 view .LVU48
 204              	.LBE35:
 205              	.LBE34:
 206:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 207:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /*---------------------------- LPUART BRR Configuration -----------------------
 208:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * Retrieve Clock frequency used for LPUART Peripheral
 209:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      */
 210:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     periphclk = LL_RCC_GetLPUARTClockFreq(LL_RCC_LPUART1_CLKSOURCE);
 206              		.loc 1 210 5 is_stmt 1 view .LVU49
 207              		.loc 1 210 17 is_stmt 0 view .LVU50
 208 003c 4FF44060 		mov	r0, #3072
 209              	.LVL13:
 210              		.loc 1 210 17 view .LVU51
 211 0040 FFF7FEFF 		bl	LL_RCC_GetLPUARTClockFreq
 212              	.LVL14:
 211:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 212:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /* Configure the LPUART Baud Rate :
 213:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****        - prescaler value is required
 214:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****        - valid baud rate value (different from 0) is required
 215:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****        - Peripheral clock as returned by RCC service, should be valid (different from 0).
 216:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     */
 217:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     if ((periphclk != LL_RCC_PERIPH_FREQUENCY_NO)
 213              		.loc 1 217 5 is_stmt 1 view .LVU52
 214 0044 3768     		ldr	r7, [r6]
 215              		.loc 1 217 8 is_stmt 0 view .LVU53
 216 0046 30B3     		cbz	r0, .L11
 218:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****         && (LPUART_InitStruct->BaudRate != 0U))
 217              		.loc 1 218 30 view .LVU54
 218 0048 7668     		ldr	r6, [r6, #4]
 219              	.LVL15:
 220              		.loc 1 218 9 view .LVU55
 221 004a 26B3     		cbz	r6, .L11
 219:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     {
 220:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****       status = SUCCESS;
 222              		.loc 1 220 7 is_stmt 1 view .LVU56
 223              	.LVL16:
 221:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****       LL_LPUART_SetBaudRate(LPUARTx,
 224              		.loc 1 221 7 view .LVU57
 225              	.LBB36:
 226              	.LBI36:
1236:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1237:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1238:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1239:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return HW Flow Control configuration (both CTS and RTS)
1240:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          RTSE          LL_LPUART_GetHWFlowCtrl\n
1241:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         CR3          CTSE          LL_LPUART_GetHWFlowCtrl
1242:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1243:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
1244:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_NONE
1245:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_RTS
1246:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_CTS
1247:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_HWCONTROL_RTS_CTS
1248:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1249:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetHWFlowCtrl(USART_TypeDef *LPUARTx)
1250:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1251:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE));
1252:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1253:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1254:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1255:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Enable Overrun detection
1256:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          OVRDIS        LL_LPUART_EnableOverrunDetect
1257:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1258:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1259:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1260:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_EnableOverrunDetect(USART_TypeDef *LPUARTx)
1261:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1262:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   CLEAR_BIT(LPUARTx->CR3, USART_CR3_OVRDIS);
1263:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1264:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1265:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1266:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Disable Overrun detection
1267:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          OVRDIS        LL_LPUART_DisableOverrunDetect
1268:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1269:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1270:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1271:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_DisableOverrunDetect(USART_TypeDef *LPUARTx)
1272:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1273:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   SET_BIT(LPUARTx->CR3, USART_CR3_OVRDIS);
1274:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1275:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1276:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1277:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Indicate if Overrun detection is enabled
1278:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          OVRDIS        LL_LPUART_IsEnabledOverrunDetect
1279:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1280:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval State of bit (1 or 0).
1281:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1282:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_IsEnabledOverrunDetect(USART_TypeDef *LPUARTx)
1283:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1284:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return ((READ_BIT(LPUARTx->CR3, USART_CR3_OVRDIS) != USART_CR3_OVRDIS) ? 1UL : 0UL);
1285:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1286:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1287:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1288:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Select event type for Wake UP Interrupt Flag (WUS[1:0] bits)
1289:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          WUS           LL_LPUART_SetWKUPType
1290:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1291:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  Type This parameter can be one of the following values:
1292:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ON_ADDRESS
1293:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ON_STARTBIT
1294:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ON_RXNE
1295:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1296:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1297:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetWKUPType(USART_TypeDef *LPUARTx, uint32_t Type)
1298:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1299:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   MODIFY_REG(LPUARTx->CR3, USART_CR3_WUS, Type);
1300:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1301:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1302:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1303:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Return event type for Wake UP Interrupt Flag (WUS[1:0] bits)
1304:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll CR3          WUS           LL_LPUART_GetWKUPType
1305:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1306:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval Returned value can be one of the following values:
1307:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ON_ADDRESS
1308:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ON_STARTBIT
1309:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_WAKEUP_ON_RXNE
1310:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1311:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE uint32_t LL_LPUART_GetWKUPType(USART_TypeDef *LPUARTx)
1312:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1313:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   return (uint32_t)(READ_BIT(LPUARTx->CR3, USART_CR3_WUS));
1314:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
1315:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** 
1316:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** /**
1317:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @brief  Configure LPUART BRR register for achieving expected Baud Rate value.
1318:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *
1319:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   Compute and set LPUARTDIV value in BRR Register (full BRR content)
1320:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         according to used Peripheral Clock and expected Baud Rate values
1321:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   Peripheral clock and Baud Rate values provided as function parameters should be valid
1322:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         (Baud rate value != 0).
1323:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @note   Provided that LPUARTx_BRR must be > = 0x300 and LPUART_BRR is 20-bit,
1324:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         a care should be taken when generating high baud rates using high PeriphClk
1325:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         values. PeriphClk must be in the range [3 x BaudRate, 4096 x BaudRate].
1326:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @rmtoll BRR          BRR           LL_LPUART_SetBaudRate
1327:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  LPUARTx LPUART Instance
1328:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  PeriphClk Peripheral Clock
1329:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  PrescalerValue This parameter can be one of the following values:
1330:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV1
1331:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV2
1332:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV4
1333:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV6
1334:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV8
1335:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV10
1336:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV12
1337:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV16
1338:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV32
1339:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV64
1340:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV128
1341:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   *         @arg @ref LL_LPUART_PRESCALER_DIV256
1342:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @param  BaudRate Baud Rate
1343:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   * @retval None
1344:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   */
1345:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** __STATIC_INLINE void LL_LPUART_SetBaudRate(USART_TypeDef *LPUARTx, uint32_t PeriphClk, uint32_t Pre
 227              		.loc 3 1345 22 view .LVU58
 228              	.LBB37:
1346:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****                                            uint32_t BaudRate)
1347:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
1348:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h ****   LPUARTx->BRR = __LL_LPUART_DIV(PeriphClk, PrescalerValue, BaudRate);
 229              		.loc 3 1348 3 view .LVU59
 230              		.loc 3 1348 18 is_stmt 0 view .LVU60
 231 004c BBB2     		uxth	r3, r7
 232 004e 154A     		ldr	r2, .L12+4
 233 0050 2146     		mov	r1, r4
 234 0052 32F81320 		ldrh	r2, [r2, r3, lsl #1]
 235 0056 0023     		movs	r3, #0
 236 0058 FFF7FEFF 		bl	__aeabi_uldivmod
 237              	.LVL17:
 238              		.loc 3 1348 18 view .LVU61
 239 005c 4FEA0129 		lsl	r9, r1, #8
 240 0060 49EA1069 		orr	r9, r9, r0, lsr #24
 241 0064 4FEA0028 		lsl	r8, r0, #8
 242 0068 7008     		lsrs	r0, r6, #1
 243 006a 18EB000B 		adds	fp, r8, r0
 244 006e 49F1000C 		adc	ip, r9, #0
 245 0072 3246     		mov	r2, r6
 246 0074 2346     		mov	r3, r4
 247 0076 5846     		mov	r0, fp
 248 0078 6146     		mov	r1, ip
 249 007a FFF7FEFF 		bl	__aeabi_uldivmod
 250              	.LVL18:
 251 007e C0F31300 		ubfx	r0, r0, #0, #20
 252              		.loc 3 1348 16 view .LVU62
 253 0082 E860     		str	r0, [r5, #12]
 254              	.LBE37:
 255              	.LBE36:
 220:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****       LL_LPUART_SetBaudRate(LPUARTx,
 256              		.loc 1 220 14 view .LVU63
 257 0084 2046     		mov	r0, r4
 258              	.LVL19:
 259              	.L8:
 222:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                             periphclk,
 223:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                             LPUART_InitStruct->PrescalerValue,
 224:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****                             LPUART_InitStruct->BaudRate);
 225:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 226:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****       /* Check BRR is greater than or equal to 0x300 */
 227:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****       assert_param(IS_LL_LPUART_BRR_MIN(LPUARTx->BRR));
 260              		.loc 1 227 7 is_stmt 1 view .LVU64
 228:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 229:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****       /* Check BRR is lower than or equal to 0xFFFFF */
 230:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****       assert_param(IS_LL_LPUART_BRR_MAX(LPUARTx->BRR));
 261              		.loc 1 230 7 view .LVU65
 231:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     }
 232:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 233:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     /*---------------------------- LPUART PRESC Configuration -----------------------
 234:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * Configure LPUARTx PRESC (Prescaler) with parameters:
 235:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      * - PrescalerValue: LPUART_PRESC_PRESCALER bits according to LPUART_InitStruct->PrescalerValue
 236:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****      */
 237:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****     LL_LPUART_SetPrescaler(LPUARTx, LPUART_InitStruct->PrescalerValue);
 262              		.loc 1 237 5 view .LVU66
 263              	.LBB38:
 264              	.LBI38:
 892:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** {
 265              		.loc 3 892 22 view .LVU67
 266              	.LBB39:
 894:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 267              		.loc 3 894 3 view .LVU68
 268 0086 EB6A     		ldr	r3, [r5, #44]
 269 0088 BFB2     		uxth	r7, r7
 270 008a 23F00F03 		bic	r3, r3, #15
 271 008e 1F43     		orrs	r7, r7, r3
 272 0090 EF62     		str	r7, [r5, #44]
 273              	.LVL20:
 274              	.L7:
 894:../../..\CubeG4\include/stm32g4xx_ll_lpuart.h **** }
 275              		.loc 3 894 3 is_stmt 0 view .LVU69
 276              	.LBE39:
 277              	.LBE38:
 238:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   }
 239:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 240:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   return (status);
 278              		.loc 1 240 3 is_stmt 1 view .LVU70
 241:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** }
 279              		.loc 1 241 1 is_stmt 0 view .LVU71
 280 0092 BDE8F08B 		pop	{r4, r5, r6, r7, r8, r9, fp, pc}
 281              	.LVL21:
 282              	.L11:
 168:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   uint32_t periphclk;
 283              		.loc 1 168 15 view .LVU72
 284 0096 0120     		movs	r0, #1
 285              	.LVL22:
 168:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   uint32_t periphclk;
 286              		.loc 1 168 15 view .LVU73
 287 0098 F5E7     		b	.L8
 288              	.LVL23:
 289              	.L9:
 168:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   uint32_t periphclk;
 290              		.loc 1 168 15 view .LVU74
 291 009a 0120     		movs	r0, #1
 292              	.LVL24:
 168:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   uint32_t periphclk;
 293              		.loc 1 168 15 view .LVU75
 294 009c F9E7     		b	.L7
 295              	.L13:
 296 009e 00BF     		.align	2
 297              	.L12:
 298 00a0 F3E9FFEF 		.word	-268441101
 299 00a4 00000000 		.word	.LANCHOR0
 300              		.cfi_endproc
 301              	.LFE469:
 303              		.section	.text.LL_LPUART_StructInit,"ax",%progbits
 304              		.align	1
 305              		.global	LL_LPUART_StructInit
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 311              	LL_LPUART_StructInit:
 312              	.LVL25:
 313              	.LFB470:
 242:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 243:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** /**
 244:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @brief Set each @ref LL_LPUART_InitTypeDef field to default value.
 245:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @param LPUART_InitStruct pointer to a @ref LL_LPUART_InitTypeDef structure
 246:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   *                          whose fields will be set to default values.
 247:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   * @retval None
 248:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   */
 249:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** 
 250:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** void LL_LPUART_StructInit(LL_LPUART_InitTypeDef *LPUART_InitStruct)
 251:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** {
 314              		.loc 1 251 1 is_stmt 1 view -0
 315              		.cfi_startproc
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 252:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   /* Set LPUART_InitStruct fields to default values */
 253:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->PrescalerValue      = LL_LPUART_PRESCALER_DIV1;
 319              		.loc 1 253 3 view .LVU77
 254:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->BaudRate            = 9600U;
 320              		.loc 1 254 42 is_stmt 0 view .LVU78
 321 0000 0023     		movs	r3, #0
 322 0002 4FF41652 		mov	r2, #9600
 323 0006 C0E90032 		strd	r3, r2, [r0]
 255:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->DataWidth           = LL_LPUART_DATAWIDTH_8B;
 324              		.loc 1 255 3 is_stmt 1 view .LVU79
 256:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->StopBits            = LL_LPUART_STOPBITS_1;
 257:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->Parity              = LL_LPUART_PARITY_NONE ;
 258:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->TransferDirection   = LL_LPUART_DIRECTION_TX_RX;
 325              		.loc 1 258 42 is_stmt 0 view .LVU80
 326 000a 0C22     		movs	r2, #12
 256:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->StopBits            = LL_LPUART_STOPBITS_1;
 327              		.loc 1 256 42 view .LVU81
 328 000c C0E90233 		strd	r3, r3, [r0, #8]
 257:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->TransferDirection   = LL_LPUART_DIRECTION_TX_RX;
 329              		.loc 1 257 3 is_stmt 1 view .LVU82
 257:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->TransferDirection   = LL_LPUART_DIRECTION_TX_RX;
 330              		.loc 1 257 42 is_stmt 0 view .LVU83
 331 0010 0361     		str	r3, [r0, #16]
 332              		.loc 1 258 3 is_stmt 1 view .LVU84
 259:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c ****   LPUART_InitStruct->HardwareFlowControl = LL_LPUART_HWCONTROL_NONE;
 333              		.loc 1 259 42 is_stmt 0 view .LVU85
 334 0012 C0E90523 		strd	r2, r3, [r0, #20]
 260:../../..\CubeG4\src/stm32g4xx_ll_lpuart.c **** }
 335              		.loc 1 260 1 view .LVU86
 336 0016 7047     		bx	lr
 337              		.cfi_endproc
 338              	.LFE470:
 340              		.section	.rodata.LPUART_PRESCALER_TAB,"a"
 341              		.align	1
 342              		.set	.LANCHOR0,. + 0
 345              	LPUART_PRESCALER_TAB:
 346 0000 0100     		.short	1
 347 0002 0200     		.short	2
 348 0004 0400     		.short	4
 349 0006 0600     		.short	6
 350 0008 0800     		.short	8
 351 000a 0A00     		.short	10
 352 000c 0C00     		.short	12
 353 000e 1000     		.short	16
 354 0010 2000     		.short	32
 355 0012 4000     		.short	64
 356 0014 8000     		.short	128
 357 0016 0001     		.short	256
 358              		.text
 359              	.Letext0:
 360              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 361              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 362              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 363              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 364              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 365              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
 366              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_ll_rcc.h"
