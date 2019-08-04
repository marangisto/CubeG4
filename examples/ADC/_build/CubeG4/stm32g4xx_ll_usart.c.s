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
  13              		.file	"stm32g4xx_ll_usart.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_USART_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_USART_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_USART_DeInit:
  27              	.LVL0:
  28              	.LFB558:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_usart.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @file    stm32g4xx_ll_usart.c
   4:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @brief   USART LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #include "stm32g4xx_ll_usart.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #include "stm32g4xx_ll_rcc.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #include "stm32g4xx_ll_bus.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #ifdef USE_FULL_ASSERT
  26:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #include "stm32_assert.h"
  27:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #else
  28:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define assert_param(expr) ((void)0U)
  29:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #endif /* USE_FULL_ASSERT */
  30:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  31:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @{
  33:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
  34:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #if defined (USART1) || defined (USART2) || defined (USART3) || defined (UART4) || defined (UART5)
  36:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  37:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /** @addtogroup USART_LL
  38:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @{
  39:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
  40:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  41:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* Private macros ------------------------------------------------------------*/
  45:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /** @addtogroup USART_LL_Private_Macros
  46:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @{
  47:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
  48:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  49:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_PRESCALER(__VALUE__)  (((__VALUE__) == LL_USART_PRESCALER_DIV1) \
  50:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV2) \
  51:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV4) \
  52:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV6) \
  53:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV8) \
  54:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV10) \
  55:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV12) \
  56:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV16) \
  57:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV32) \
  58:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV64) \
  59:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV128) \
  60:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PRESCALER_DIV256))
  61:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  62:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* __BAUDRATE__ The maximum Baud Rate is derived from the maximum clock available
  63:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****  *              divided by the smallest oversampling used on the USART (i.e. 8)    */
  64:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_BAUDRATE(__BAUDRATE__) ((__BAUDRATE__) <= 18750000U)
  65:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  66:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* __VALUE__ In case of oversampling by 16 and 8, BRR content must be greater than or equal to 16d.
  67:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_BRR_MIN(__VALUE__) ((__VALUE__) >= 16U)
  68:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  69:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* __VALUE__ BRR content must be lower than or equal to 0xFFFF. */
  70:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_BRR_MAX(__VALUE__) ((__VALUE__) <= 0x0000FFFFU)
  71:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  72:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_DIRECTION(__VALUE__) (((__VALUE__) == LL_USART_DIRECTION_NONE) \
  73:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_DIRECTION_RX) \
  74:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_DIRECTION_TX) \
  75:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_DIRECTION_TX_RX))
  76:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  77:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_PARITY(__VALUE__) (((__VALUE__) == LL_USART_PARITY_NONE) \
  78:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                        || ((__VALUE__) == LL_USART_PARITY_EVEN) \
  79:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                        || ((__VALUE__) == LL_USART_PARITY_ODD))
  80:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  81:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_DATAWIDTH(__VALUE__) (((__VALUE__) == LL_USART_DATAWIDTH_7B) \
  82:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_DATAWIDTH_8B) \
  83:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_DATAWIDTH_9B))
  84:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  85:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_OVERSAMPLING(__VALUE__) (((__VALUE__) == LL_USART_OVERSAMPLING_16) \
  86:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                              || ((__VALUE__) == LL_USART_OVERSAMPLING_8))
  87:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  88:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_LASTBITCLKOUTPUT(__VALUE__) (((__VALUE__) == LL_USART_LASTCLKPULSE_NO_OUTPUT) \
  89:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                                  || ((__VALUE__) == LL_USART_LASTCLKPULSE_OUTPUT))
  90:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  91:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_CLOCKPHASE(__VALUE__) (((__VALUE__) == LL_USART_PHASE_1EDGE) \
  92:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                            || ((__VALUE__) == LL_USART_PHASE_2EDGE))
  93:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  94:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_CLOCKPOLARITY(__VALUE__) (((__VALUE__) == LL_USART_POLARITY_LOW) \
  95:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                               || ((__VALUE__) == LL_USART_POLARITY_HIGH))
  96:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  97:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_CLOCKOUTPUT(__VALUE__) (((__VALUE__) == LL_USART_CLOCK_DISABLE) \
  98:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                             || ((__VALUE__) == LL_USART_CLOCK_ENABLE))
  99:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 100:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_STOPBITS(__VALUE__) (((__VALUE__) == LL_USART_STOPBITS_0_5) \
 101:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                          || ((__VALUE__) == LL_USART_STOPBITS_1) \
 102:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                          || ((__VALUE__) == LL_USART_STOPBITS_1_5) \
 103:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                          || ((__VALUE__) == LL_USART_STOPBITS_2))
 104:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 105:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #define IS_LL_USART_HWCONTROL(__VALUE__) (((__VALUE__) == LL_USART_HWCONTROL_NONE) \
 106:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_HWCONTROL_RTS) \
 107:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_HWCONTROL_CTS) \
 108:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                                           || ((__VALUE__) == LL_USART_HWCONTROL_RTS_CTS))
 109:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 110:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /**
 111:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @}
 112:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 113:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 114:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* Private function prototypes -----------------------------------------------*/
 115:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 116:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /* Exported functions --------------------------------------------------------*/
 117:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /** @addtogroup USART_LL_Exported_Functions
 118:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @{
 119:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 120:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 121:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /** @addtogroup USART_LL_EF_Init
 122:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @{
 123:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 124:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 125:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /**
 126:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @brief  De-initialize USART registers (Registers restored to their default values).
 127:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @param  USARTx USART Instance
 128:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @retval An ErrorStatus enumeration value:
 129:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *          - SUCCESS: USART registers are de-initialized
 130:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *          - ERROR: USART registers are not de-initialized
 131:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 132:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** ErrorStatus LL_USART_DeInit(USART_TypeDef *USARTx)
 133:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** {
  30              		.loc 1 133 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 134:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ErrorStatus status = SUCCESS;
  35              		.loc 1 134 3 view .LVU1
 135:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 136:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* Check the parameters */
 137:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_UART_INSTANCE(USARTx));
  36              		.loc 1 137 3 view .LVU2
 138:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 139:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   if (USARTx == USART1)
  37              		.loc 1 139 3 view .LVU3
  38              		.loc 1 139 6 is_stmt 0 view .LVU4
  39 0000 1C4B     		ldr	r3, .L9
  40 0002 9842     		cmp	r0, r3
  41 0004 0BD1     		bne	.L2
 140:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 141:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Force reset of USART clock */
 142:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_USART1);
  42              		.loc 1 142 5 is_stmt 1 view .LVU5
  43              	.LBB24:
  44              	.LBI24:
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
1230:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1231:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1RSTR2, Periphs);
1232:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1233:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1234:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1235:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable APB1 peripheral clocks in Sleep and Stop modes
1236:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1SMENR1     TIM2SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1237:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM3SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1238:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM4SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1239:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM5SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1240:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM6SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1241:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM7SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1242:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     CRSSMEN         LL_APB1_GRP1_EnableClockStopSleep\n
1243:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     RTCAPBSMEN      LL_APB1_GRP1_EnableClockStopSleep\n
1244:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     WWDGSMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1245:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     SPI2SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1246:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     SPI3SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1247:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     USART2SMEN      LL_APB1_GRP1_EnableClockStopSleep\n
1248:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     USART3SMEN      LL_APB1_GRP1_EnableClockStopSleep\n
1249:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     UART4SMEN       LL_APB1_GRP1_EnableClockStopSleep\n
1250:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     UART5SMEN       LL_APB1_GRP1_EnableClockStopSleep\n
1251:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     I2C1SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1252:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     I2C2SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1253:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     USBSMEN         LL_APB1_GRP1_EnableClockStopSleep\n
1254:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     FDCANSMEN       LL_APB1_GRP1_EnableClockStopSleep\n
1255:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     PWRSMEN         LL_APB1_GRP1_EnableClockStopSleep\n
1256:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     I2C3SMEN        LL_APB1_GRP1_EnableClockStopSleep\n
1257:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     LPTIM1SMEN      LL_APB1_GRP1_EnableClockStopSleep
1258:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1259:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM2
1260:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM3
1261:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM4
1262:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM5 (*)
1263:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM6
1264:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM7
1265:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_CRS
1266:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_RTCAPB
1267:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_WWDG
1268:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI2
1269:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI3
1270:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART2
1271:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART3
1272:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART4 (*)
1273:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART5 (*)
1274:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C1
1275:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C2
1276:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USB
1277:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_FDCAN (*)
1278:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_PWR
1279:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C3
1280:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_LPTIM1
1281:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1282:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1283:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1284:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1285:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP1_EnableClockStopSleep(uint32_t Periphs)
1286:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1287:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
1288:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1SMENR1, Periphs);
1289:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
1290:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->APB1SMENR1, Periphs);
1291:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
1292:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1293:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1294:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1295:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable APB1 peripheral clocks in Sleep and Stop modes
1296:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1SMENR2     LPUART1SMEN     LL_APB1_GRP2_EnableClockStopSleep\n
1297:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR2     I2C4SMEN        LL_APB1_GRP2_EnableClockStopSleep\n
1298:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR2     UCPD1SMEN       LL_APB1_GRP2_EnableClockStopSleep
1299:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1300:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_LPUART1
1301:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_I2C4 (*)
1302:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_UCPD1 (*)
1303:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1304:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1305:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1306:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1307:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP2_EnableClockStopSleep(uint32_t Periphs)
1308:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1309:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
1310:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1SMENR2, Periphs);
1311:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
1312:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->APB1SMENR2, Periphs);
1313:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
1314:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1315:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1316:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1317:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable APB1 peripheral clocks in Sleep and Stop modes
1318:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1SMENR1     TIM2SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1319:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM3SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1320:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM4SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1321:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM5SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1322:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM6SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1323:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     TIM7SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1324:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     CRSSMEN         LL_APB1_GRP1_DisableClockStopSleep\n
1325:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     RTCAPBSMEN      LL_APB1_GRP1_DisableClockStopSleep\n
1326:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     WWDGSMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1327:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     SPI2SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1328:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     SPI3SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1329:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     USART2SMEN      LL_APB1_GRP1_DisableClockStopSleep\n
1330:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     USART3SMEN      LL_APB1_GRP1_DisableClockStopSleep\n
1331:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     UART4SMEN       LL_APB1_GRP1_DisableClockStopSleep\n
1332:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     UART5SMEN       LL_APB1_GRP1_DisableClockStopSleep\n
1333:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     I2C1SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1334:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     I2C2SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1335:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     USBSMEN         LL_APB1_GRP1_DisableClockStopSleep\n
1336:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     FDCANSMEN       LL_APB1_GRP1_DisableClockStopSleep\n
1337:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     PWRSMEN         LL_APB1_GRP1_DisableClockStopSleep\n
1338:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     I2C3SMEN        LL_APB1_GRP1_DisableClockStopSleep\n
1339:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR1     LPTIM1SMEN      LL_APB1_GRP1_DisableClockStopSleep
1340:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1341:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM2
1342:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM3
1343:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM4
1344:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM5 (*)
1345:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM6
1346:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_TIM7
1347:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_CRS
1348:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_RTCAPB
1349:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_WWDG
1350:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI2
1351:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_SPI3
1352:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART2
1353:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USART3
1354:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART4 (*)
1355:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_UART5 (*)
1356:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C1
1357:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C2
1358:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_USB
1359:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_FDCAN (*)
1360:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_PWR
1361:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_I2C3
1362:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP1_PERIPH_LPTIM1
1363:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1364:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1365:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1366:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1367:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP1_DisableClockStopSleep(uint32_t Periphs)
1368:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1369:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1SMENR1, Periphs);
1370:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1371:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1372:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1373:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable APB1 peripheral clocks in Sleep and Stop modes
1374:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB1SMENR2     LPUART1SMEN     LL_APB1_GRP2_DisableClockStopSleep\n
1375:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR2     I2C4SMEN        LL_APB1_GRP2_DisableClockStopSleep\n
1376:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB1SMENR2     UCPD1SMEN      LL_APB1_GRP2_DisableClockStopSleep
1377:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1378:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_LPUART1
1379:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_I2C4 (*)
1380:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB1_GRP2_PERIPH_UCPD1 (*)
1381:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1382:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1383:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1384:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1385:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB1_GRP2_DisableClockStopSleep(uint32_t Periphs)
1386:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1387:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1SMENR2, Periphs);
1388:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1389:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1390:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1391:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @}
1392:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1393:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1394:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /** @defgroup BUS_LL_EF_APB2 APB2
1395:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @{
1396:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1397:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1398:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1399:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Enable APB2 peripherals clock.
1400:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB2ENR      SYSCFGEN      LL_APB2_GRP1_EnableClock\n
1401:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM1EN        LL_APB2_GRP1_EnableClock\n
1402:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SPI1EN        LL_APB2_GRP1_EnableClock\n
1403:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM8EN        LL_APB2_GRP1_EnableClock\n
1404:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      USART1EN      LL_APB2_GRP1_EnableClock\n
1405:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SPI4EN        LL_APB2_GRP1_EnableClock\n
1406:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM15EN       LL_APB2_GRP1_EnableClock\n
1407:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM16EN       LL_APB2_GRP1_EnableClock\n
1408:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM17EN       LL_APB2_GRP1_EnableClock\n
1409:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM20EN       LL_APB2_GRP1_EnableClock\n
1410:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SAI1EN        LL_APB2_GRP1_EnableClock\n
1411:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      HRTIM1EN      LL_APB2_GRP1_EnableClock
1412:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1413:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SYSCFG
1414:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM1
1415:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI1
1416:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM8
1417:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_USART1
1418:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI4 (*)
1419:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM15
1420:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM16
1421:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM17
1422:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM20 (*)
1423:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SAI1
1424:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_HRTIM1 (*)
1425:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1426:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1427:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1428:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1429:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB2_GRP1_EnableClock(uint32_t Periphs)
1430:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1431:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   __IO uint32_t tmpreg;
1432:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB2ENR, Periphs);
1433:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
1434:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   tmpreg = READ_BIT(RCC->APB2ENR, Periphs);
1435:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
1436:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1437:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1438:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1439:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Check if APB2 peripheral clock is enabled or not
1440:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB2ENR      SYSCFGEN      LL_APB2_GRP1_IsEnabledClock\n
1441:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM1EN        LL_APB2_GRP1_IsEnabledClock\n
1442:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SPI1EN        LL_APB2_GRP1_IsEnabledClock\n
1443:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM8EN        LL_APB2_GRP1_IsEnabledClock\n
1444:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      USART1EN      LL_APB2_GRP1_IsEnabledClock\n
1445:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SPI4EN        LL_APB2_GRP1_IsEnabledClock\n
1446:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM15EN       LL_APB2_GRP1_IsEnabledClock\n
1447:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM16EN       LL_APB2_GRP1_IsEnabledClock\n
1448:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM17EN       LL_APB2_GRP1_IsEnabledClock\n
1449:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM20EN       LL_APB2_GRP1_IsEnabledClock\n
1450:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SAI1EN        LL_APB2_GRP1_IsEnabledClock\n
1451:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      HRTIM1EN      LL_APB2_GRP1_IsEnabledClock
1452:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1453:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SYSCFG
1454:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM1
1455:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI1
1456:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM8
1457:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_USART1
1458:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI4 (*)
1459:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM15
1460:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM16
1461:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM17
1462:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM20 (*)
1463:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SAI1
1464:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_HRTIM1 (*)
1465:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1466:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1467:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval State of Periphs (1 or 0).
1468:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1469:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE uint32_t LL_APB2_GRP1_IsEnabledClock(uint32_t Periphs)
1470:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1471:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   return ((READ_BIT(RCC->APB2ENR, Periphs) == Periphs) ? 1UL : 0UL);
1472:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1473:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1474:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1475:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Disable APB2 peripherals clock.
1476:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB2ENR      SYSCFGEN      LL_APB2_GRP1_DisableClock\n
1477:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM1EN        LL_APB2_GRP1_DisableClock\n
1478:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SPI1EN        LL_APB2_GRP1_DisableClock\n
1479:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM8EN        LL_APB2_GRP1_DisableClock\n
1480:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      USART1EN      LL_APB2_GRP1_DisableClock\n
1481:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SPI4EN        LL_APB2_GRP1_DisableClock\n
1482:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM15EN       LL_APB2_GRP1_DisableClock\n
1483:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM16EN       LL_APB2_GRP1_DisableClock\n
1484:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM17EN       LL_APB2_GRP1_DisableClock\n
1485:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      TIM20EN       LL_APB2_GRP1_DisableClock\n
1486:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      SAI1EN        LL_APB2_GRP1_DisableClock\n
1487:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2ENR      HRTIM1EN      LL_APB2_GRP1_DisableClock
1488:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1489:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SYSCFG
1490:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM1
1491:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI1
1492:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM8
1493:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_USART1
1494:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI4 (*)
1495:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM15
1496:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM16
1497:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM17
1498:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM20 (*)
1499:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SAI1
1500:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_HRTIM1 (*)
1501:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1502:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1503:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1504:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1505:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB2_GRP1_DisableClock(uint32_t Periphs)
1506:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1507:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB2ENR, Periphs);
1508:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1509:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1510:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1511:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Force APB2 peripherals reset.
1512:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB2RSTR      SYSCFGRST      LL_APB2_GRP1_ForceReset\n
1513:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM1RST        LL_APB2_GRP1_ForceReset\n
1514:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      SPI1RST        LL_APB2_GRP1_ForceReset\n
1515:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM8RST        LL_APB2_GRP1_ForceReset\n
1516:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      USART1RST      LL_APB2_GRP1_ForceReset\n
1517:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      SPI4RST        LL_APB2_GRP1_ForceReset\n
1518:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM15RST       LL_APB2_GRP1_ForceReset\n
1519:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM16RST       LL_APB2_GRP1_ForceReset\n
1520:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM17RST       LL_APB2_GRP1_ForceReset\n
1521:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM20RST       LL_APB2_GRP1_ForceReset\n
1522:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      SAI1RST        LL_APB2_GRP1_ForceReset\n
1523:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      HRTIM1RST      LL_APB2_GRP1_ForceReset
1524:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1525:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SYSCFG
1526:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM1
1527:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI1
1528:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM8
1529:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_USART1
1530:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI4 (*)
1531:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM15
1532:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM16
1533:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM17
1534:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM20 (*)
1535:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SAI1
1536:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_HRTIM1 (*)
1537:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1538:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1539:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1540:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1541:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB2_GRP1_ForceReset(uint32_t Periphs)
  46              		.loc 2 1541 22 view .LVU6
  47              	.LVL1:
  48              	.LBB25:
1542:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1543:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB2RSTR, Periphs);
  49              		.loc 2 1543 3 view .LVU7
  50 0006 03F55843 		add	r3, r3, #55296
  51 000a 1A6C     		ldr	r2, [r3, #64]
  52 000c 42F48042 		orr	r2, r2, #16384
  53 0010 1A64     		str	r2, [r3, #64]
  54              	.LVL2:
  55              		.loc 2 1543 3 is_stmt 0 view .LVU8
  56              	.LBE25:
  57              	.LBE24:
 143:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 144:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Release reset of USART clock */
 145:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_USART1);
  58              		.loc 1 145 5 is_stmt 1 view .LVU9
  59              	.LBB26:
  60              	.LBI26:
1544:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
1545:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** 
1546:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** /**
1547:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @brief  Release APB2 peripherals reset.
1548:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @rmtoll APB2RSTR      SYSCFGRST      LL_APB2_GRP1_ForceReset\n
1549:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM1RST        LL_APB2_GRP1_ForceReset\n
1550:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      SPI1RST        LL_APB2_GRP1_ForceReset\n
1551:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM8RST        LL_APB2_GRP1_ForceReset\n
1552:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      USART1RST      LL_APB2_GRP1_ForceReset\n
1553:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      SPI4RST        LL_APB2_GRP1_ForceReset\n
1554:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM15RST       LL_APB2_GRP1_ForceReset\n
1555:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM16RST       LL_APB2_GRP1_ForceReset\n
1556:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM17RST       LL_APB2_GRP1_ForceReset\n
1557:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      TIM20RST       LL_APB2_GRP1_ForceReset\n
1558:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      SAI1RST        LL_APB2_GRP1_ForceReset\n
1559:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         APB2RSTR      HRTIM1RST      LL_APB2_GRP1_ForceReset
1560:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @param  Periphs This parameter can be a combination of the following values:
1561:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SYSCFG
1562:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM1
1563:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI1
1564:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM8
1565:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_USART1
1566:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SPI4 (*)
1567:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM15
1568:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM16
1569:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM17
1570:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_TIM20 (*)
1571:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_SAI1
1572:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         @arg @ref LL_APB2_GRP1_PERIPH_HRTIM1 (*)
1573:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *
1574:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   *         (*) value not defined in all devices.
1575:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   * @retval None
1576:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   */
1577:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** __STATIC_INLINE void LL_APB2_GRP1_ReleaseReset(uint32_t Periphs)
  61              		.loc 2 1577 22 view .LVU10
  62              	.LBB27:
1578:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1579:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB2RSTR, Periphs);
  63              		.loc 2 1579 3 view .LVU11
  64 0012 1A6C     		ldr	r2, [r3, #64]
  65 0014 22F48042 		bic	r2, r2, #16384
  66 0018 1A64     		str	r2, [r3, #64]
  67              	.LVL3:
  68              	.L7:
  69              		.loc 2 1579 3 is_stmt 0 view .LVU12
  70              	.LBE27:
  71              	.LBE26:
 134:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  72              		.loc 1 134 15 view .LVU13
  73 001a 0020     		movs	r0, #0
  74              	.LVL4:
 134:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
  75              		.loc 1 134 15 view .LVU14
  76 001c 7047     		bx	lr
  77              	.LVL5:
  78              	.L2:
 146:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 147:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   else if (USARTx == USART2)
  79              		.loc 1 147 8 is_stmt 1 view .LVU15
  80              		.loc 1 147 11 is_stmt 0 view .LVU16
  81 001e 164B     		ldr	r3, .L9+4
  82 0020 9842     		cmp	r0, r3
  83 0022 0AD1     		bne	.L4
 148:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 149:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Force reset of USART clock */
 150:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_USART2);
  84              		.loc 1 150 5 is_stmt 1 view .LVU17
  85              	.LVL6:
  86              	.LBB28:
  87              	.LBI28:
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
  88              		.loc 2 1141 22 view .LVU18
  89              	.LBB29:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  90              		.loc 2 1143 3 view .LVU19
  91 0024 03F5E633 		add	r3, r3, #117760
  92 0028 9A6B     		ldr	r2, [r3, #56]
  93 002a 42F40032 		orr	r2, r2, #131072
  94 002e 9A63     		str	r2, [r3, #56]
  95              	.LVL7:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  96              		.loc 2 1143 3 is_stmt 0 view .LVU20
  97              	.LBE29:
  98              	.LBE28:
 151:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 152:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Release reset of USART clock */
 153:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_USART2);
  99              		.loc 1 153 5 is_stmt 1 view .LVU21
 100              	.LBB30:
 101              	.LBI30:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 102              		.loc 2 1211 22 view .LVU22
 103              	.LBB31:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 104              		.loc 2 1213 3 view .LVU23
 105 0030 9A6B     		ldr	r2, [r3, #56]
 106 0032 22F40032 		bic	r2, r2, #131072
 107              	.LVL8:
 108              	.L8:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 109              		.loc 2 1213 3 is_stmt 0 view .LVU24
 110 0036 9A63     		str	r2, [r3, #56]
 111 0038 EFE7     		b	.L7
 112              	.L4:
 113              	.LBE31:
 114              	.LBE30:
 154:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 155:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   else if (USARTx == USART3)
 115              		.loc 1 155 8 is_stmt 1 view .LVU25
 116              		.loc 1 155 11 is_stmt 0 view .LVU26
 117 003a 104B     		ldr	r3, .L9+8
 118 003c 9842     		cmp	r0, r3
 119 003e 09D1     		bne	.L5
 156:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 157:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Force reset of USART clock */
 158:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_USART3);
 120              		.loc 1 158 5 is_stmt 1 view .LVU27
 121              	.LVL9:
 122              	.LBB32:
 123              	.LBI32:
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 124              		.loc 2 1141 22 view .LVU28
 125              	.LBB33:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 126              		.loc 2 1143 3 view .LVU29
 127 0040 03F5E433 		add	r3, r3, #116736
 128 0044 9A6B     		ldr	r2, [r3, #56]
 129 0046 42F48022 		orr	r2, r2, #262144
 130 004a 9A63     		str	r2, [r3, #56]
 131              	.LVL10:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 132              		.loc 2 1143 3 is_stmt 0 view .LVU30
 133              	.LBE33:
 134              	.LBE32:
 159:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 160:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Release reset of USART clock */
 161:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_USART3);
 135              		.loc 1 161 5 is_stmt 1 view .LVU31
 136              	.LBB34:
 137              	.LBI34:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 138              		.loc 2 1211 22 view .LVU32
 139              	.LBB35:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 140              		.loc 2 1213 3 view .LVU33
 141 004c 9A6B     		ldr	r2, [r3, #56]
 142 004e 22F48022 		bic	r2, r2, #262144
 143 0052 F0E7     		b	.L8
 144              	.LVL11:
 145              	.L5:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 146              		.loc 2 1213 3 is_stmt 0 view .LVU34
 147              	.LBE35:
 148              	.LBE34:
 162:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 163:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #if defined(UART4)
 164:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   else if (USARTx == UART4)
 149              		.loc 1 164 8 is_stmt 1 view .LVU35
 150              		.loc 1 164 11 is_stmt 0 view .LVU36
 151 0054 0A4B     		ldr	r3, .L9+12
 152 0056 9842     		cmp	r0, r3
 153 0058 09D1     		bne	.L6
 165:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 166:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Force reset of UART clock */
 167:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_UART4);
 154              		.loc 1 167 5 is_stmt 1 view .LVU37
 155              	.LVL12:
 156              	.LBB36:
 157              	.LBI36:
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 158              		.loc 2 1141 22 view .LVU38
 159              	.LBB37:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 160              		.loc 2 1143 3 view .LVU39
 161 005a 03F5E233 		add	r3, r3, #115712
 162 005e 9A6B     		ldr	r2, [r3, #56]
 163 0060 42F40022 		orr	r2, r2, #524288
 164 0064 9A63     		str	r2, [r3, #56]
 165              	.LVL13:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 166              		.loc 2 1143 3 is_stmt 0 view .LVU40
 167              	.LBE37:
 168              	.LBE36:
 168:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 169:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Release reset of UART clock */
 170:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_UART4);
 169              		.loc 1 170 5 is_stmt 1 view .LVU41
 170              	.LBB38:
 171              	.LBI38:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 172              		.loc 2 1211 22 view .LVU42
 173              	.LBB39:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 174              		.loc 2 1213 3 view .LVU43
 175 0066 9A6B     		ldr	r2, [r3, #56]
 176 0068 22F40022 		bic	r2, r2, #524288
 177 006c E3E7     		b	.L8
 178              	.LVL14:
 179              	.L6:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 180              		.loc 2 1213 3 is_stmt 0 view .LVU44
 181              	.LBE39:
 182              	.LBE38:
 171:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 172:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #endif /* UART4 */
 173:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #if defined(UART5)
 174:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   else if (USARTx == UART5)
 175:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 176:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Force reset of UART clock */
 177:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_UART5);
 178:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 179:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Release reset of UART clock */
 180:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_UART5);
 181:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 182:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #endif /* UART5 */
 183:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   else
 184:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 185:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     status = ERROR;
 183              		.loc 1 185 12 view .LVU45
 184 006e 0120     		movs	r0, #1
 185              	.LVL15:
 186:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 187:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 188:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   return (status);
 186              		.loc 1 188 3 is_stmt 1 view .LVU46
 189:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** }
 187              		.loc 1 189 1 is_stmt 0 view .LVU47
 188 0070 7047     		bx	lr
 189              	.L10:
 190 0072 00BF     		.align	2
 191              	.L9:
 192 0074 00380140 		.word	1073821696
 193 0078 00440040 		.word	1073759232
 194 007c 00480040 		.word	1073760256
 195 0080 004C0040 		.word	1073761280
 196              		.cfi_endproc
 197              	.LFE558:
 199              		.section	.text.LL_USART_Init,"ax",%progbits
 200              		.align	1
 201              		.global	LL_USART_Init
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 207              	LL_USART_Init:
 208              	.LVL16:
 209              	.LFB559:
 190:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 191:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /**
 192:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @brief  Initialize USART registers according to the specified
 193:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *         parameters in USART_InitStruct.
 194:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @note   As some bits in USART configuration registers can only be written when the USART is dis
 195:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *         USART Peripheral should be in disabled state prior calling this function. Otherwise, ER
 196:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @note   Baud rate value stored in USART_InitStruct BaudRate field, should be valid (different f
 197:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @param  USARTx USART Instance
 198:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @param  USART_InitStruct pointer to a LL_USART_InitTypeDef structure
 199:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *         that contains the configuration information for the specified USART peripheral.
 200:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @retval An ErrorStatus enumeration value:
 201:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *          - SUCCESS: USART registers are initialized according to USART_InitStruct content
 202:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *          - ERROR: Problem occurred during USART Registers initialization
 203:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 204:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** ErrorStatus LL_USART_Init(USART_TypeDef *USARTx, LL_USART_InitTypeDef *USART_InitStruct)
 205:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** {
 210              		.loc 1 205 1 is_stmt 1 view -0
 211              		.cfi_startproc
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 206:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ErrorStatus status = ERROR;
 214              		.loc 1 206 3 view .LVU49
 207:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   uint32_t periphclk = LL_RCC_PERIPH_FREQUENCY_NO;
 215              		.loc 1 207 3 view .LVU50
 208:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 209:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* Check the parameters */
 210:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_UART_INSTANCE(USARTx));
 216              		.loc 1 210 3 view .LVU51
 211:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_PRESCALER(USART_InitStruct->PrescalerValue));
 217              		.loc 1 211 3 view .LVU52
 212:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_BAUDRATE(USART_InitStruct->BaudRate));
 218              		.loc 1 212 3 view .LVU53
 213:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_DATAWIDTH(USART_InitStruct->DataWidth));
 219              		.loc 1 213 3 view .LVU54
 214:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_STOPBITS(USART_InitStruct->StopBits));
 220              		.loc 1 214 3 view .LVU55
 215:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_PARITY(USART_InitStruct->Parity));
 221              		.loc 1 215 3 view .LVU56
 216:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_DIRECTION(USART_InitStruct->TransferDirection));
 222              		.loc 1 216 3 view .LVU57
 217:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_HWCONTROL(USART_InitStruct->HardwareFlowControl));
 223              		.loc 1 217 3 view .LVU58
 218:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_OVERSAMPLING(USART_InitStruct->OverSampling));
 224              		.loc 1 218 3 view .LVU59
 219:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 220:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* USART needs to be in disabled state, in order to be able to configure some bits in
 221:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      CRx registers */
 222:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   if (LL_USART_IsEnabled(USARTx) == 0U)
 225              		.loc 1 222 3 view .LVU60
 226              	.LBB50:
 227              	.LBI50:
 228              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_usart.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @file    stm32g4xx_ll_usart.h
   4:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief   Header file of USART LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #ifndef STM32G4xx_LL_USART_H
  22:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define STM32G4xx_LL_USART_H
  23:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #if defined (USART1) || defined (USART2) || defined (USART3) || defined (UART4) || defined (UART5)
  36:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL USART
  38:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_Private_Variables USART Private Variables
  44:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
  45:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  46:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Array used to get the USART prescaler division decimal values versus @ref USART_LL_EC_PRESCALER 
  47:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** static const uint32_t USART_PRESCALER_TAB[] =
  48:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
  49:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   1UL,
  50:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   2UL,
  51:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   4UL,
  52:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   6UL,
  53:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   8UL,
  54:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   10UL,
  55:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   12UL,
  56:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   16UL,
  57:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   32UL,
  58:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   64UL,
  59:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   128UL,
  60:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   256UL
  61:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** };
  62:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
  63:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
  64:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  65:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  66:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Private constants ---------------------------------------------------------*/
  67:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Private macros ------------------------------------------------------------*/
  68:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #if defined(USE_FULL_LL_DRIVER)
  69:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_Private_Macros USART Private Macros
  70:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
  71:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  72:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
  73:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
  74:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  75:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #endif /*USE_FULL_LL_DRIVER*/
  76:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  77:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Exported types ------------------------------------------------------------*/
  78:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #if defined(USE_FULL_LL_DRIVER)
  79:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_ES_INIT USART Exported Init structures
  80:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
  81:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  82:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  83:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
  84:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief LL USART Init Structure definition
  85:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
  86:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** typedef struct
  87:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
  88:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t PrescalerValue;            /*!< Specifies the Prescaler to compute the communication bau
  89:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_PRESCA
  90:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  91:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
  92:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  93:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t BaudRate;                  /*!< This field defines expected Usart communication baud rat
  94:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  95:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
  96:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
  97:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t DataWidth;                 /*!< Specifies the number of data bits transmitted or receive
  98:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_DATAWI
  99:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
 101:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 102:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t StopBits;                  /*!< Specifies the number of stop bits transmitted.
 103:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_STOPBI
 104:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 105:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
 106:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 107:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t Parity;                    /*!< Specifies the parity mode.
 108:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_PARITY
 109:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 110:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
 111:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 112:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t TransferDirection;         /*!< Specifies whether the Receive and/or Transmit mode is en
 113:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_DIRECT
 114:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 115:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
 116:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 117:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t HardwareFlowControl;       /*!< Specifies whether the hardware flow control mode is enab
 118:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_HWCONT
 119:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
 121:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 122:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t OverSampling;              /*!< Specifies whether USART oversampling mode is 16 or 8.
 123:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_OVERSA
 124:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 125:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This feature can be modified afterwards using unitary fu
 126:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 127:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** } LL_USART_InitTypeDef;
 128:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 129:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 130:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief LL USART Clock Init Structure definition
 131:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 132:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** typedef struct
 133:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 134:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t ClockOutput;               /*!< Specifies whether the USART clock is enabled or disabled
 135:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_CLOCK.
 136:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 137:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            USART HW configuration can be modified afterwards using 
 138:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            @ref LL_USART_EnableSCLKOutput() or @ref LL_USART_Disabl
 139:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            For more details, refer to description of this function.
 140:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 141:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t ClockPolarity;             /*!< Specifies the steady state of the serial clock.
 142:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_POLARI
 143:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 144:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            USART HW configuration can be modified afterwards using 
 145:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            For more details, refer to description of this function.
 146:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 147:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t ClockPhase;                /*!< Specifies the clock transition on which the bit capture 
 148:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_PHASE.
 149:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 150:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            USART HW configuration can be modified afterwards using 
 151:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            For more details, refer to description of this function.
 152:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 153:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t LastBitClockPulse;         /*!< Specifies whether the clock pulse corresponding to the l
 154:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            data bit (MSB) has to be output on the SCLK pin in synch
 155:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            This parameter can be a value of @ref USART_LL_EC_LASTCL
 156:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 157:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            USART HW configuration can be modified afterwards using 
 158:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                            For more details, refer to description of this function.
 159:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 160:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** } LL_USART_ClockInitTypeDef;
 161:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 162:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 163:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 164:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 165:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #endif /* USE_FULL_LL_DRIVER */
 166:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 167:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Exported constants --------------------------------------------------------*/
 168:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_Exported_Constants USART Exported Constants
 169:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 170:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 171:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 172:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_CLEAR_FLAG Clear Flags Defines
 173:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief    Flags defines which can be used with LL_USART_WriteReg function
 174:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 175:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 176:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_PECF                       USART_ICR_PECF                /*!< Parity error fla
 177:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_FECF                       USART_ICR_FECF                /*!< Framing error fl
 178:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_NECF                       USART_ICR_NECF                /*!< Noise error dete
 179:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_ORECF                      USART_ICR_ORECF               /*!< Overrun error fl
 180:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_IDLECF                     USART_ICR_IDLECF              /*!< Idle line detect
 181:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_TXFECF                     USART_ICR_TXFECF              /*!< TX FIFO Empty Cl
 182:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_TCCF                       USART_ICR_TCCF                /*!< Transmission com
 183:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_TCBGTCF                    USART_ICR_TCBGTCF             /*!< Transmission com
 184:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_LBDCF                      USART_ICR_LBDCF               /*!< LIN break detect
 185:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_CTSCF                      USART_ICR_CTSCF               /*!< CTS flag */
 186:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_RTOCF                      USART_ICR_RTOCF               /*!< Receiver timeout
 187:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_EOBCF                      USART_ICR_EOBCF               /*!< End of block fla
 188:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_UDRCF                      USART_ICR_UDRCF               /*!< SPI Slave Underr
 189:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_CMCF                       USART_ICR_CMCF                /*!< Character match 
 190:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ICR_WUCF                       USART_ICR_WUCF                /*!< Wakeup from Stop
 191:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 192:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 193:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 194:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 195:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_GET_FLAG Get Flags Defines
 196:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief    Flags defines which can be used with LL_USART_ReadReg function
 197:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 198:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 199:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_PE                         USART_ISR_PE                  /*!< Parity error fla
 200:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_FE                         USART_ISR_FE                  /*!< Framing error fl
 201:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_NE                         USART_ISR_NE                  /*!< Noise detected f
 202:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_ORE                        USART_ISR_ORE                 /*!< Overrun error fl
 203:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_IDLE                       USART_ISR_IDLE                /*!< Idle line detect
 204:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_RXNE_RXFNE                 USART_ISR_RXNE_RXFNE          /*!< Read data regist
 205:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_TC                         USART_ISR_TC                  /*!< Transmission com
 206:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_TXE_TXFNF                  USART_ISR_TXE_TXFNF           /*!< Transmit data re
 207:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_LBDF                       USART_ISR_LBDF                /*!< LIN break detect
 208:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_CTSIF                      USART_ISR_CTSIF               /*!< CTS interrupt fl
 209:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_CTS                        USART_ISR_CTS                 /*!< CTS flag */
 210:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_RTOF                       USART_ISR_RTOF                /*!< Receiver timeout
 211:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_EOBF                       USART_ISR_EOBF                /*!< End of block fla
 212:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_UDR                        USART_ISR_UDR                 /*!< SPI Slave underr
 213:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_ABRE                       USART_ISR_ABRE                /*!< Auto baud rate e
 214:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_ABRF                       USART_ISR_ABRF                /*!< Auto baud rate f
 215:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_BUSY                       USART_ISR_BUSY                /*!< Busy flag */
 216:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_CMF                        USART_ISR_CMF                 /*!< Character match 
 217:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_SBKF                       USART_ISR_SBKF                /*!< Send break flag 
 218:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_RWU                        USART_ISR_RWU                 /*!< Receiver wakeup 
 219:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_WUF                        USART_ISR_WUF                 /*!< Wakeup from Stop
 220:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_TEACK                      USART_ISR_TEACK               /*!< Transmit enable 
 221:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_REACK                      USART_ISR_REACK               /*!< Receive enable a
 222:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_TXFE                       USART_ISR_TXFE                /*!< TX FIFO empty fl
 223:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_RXFF                       USART_ISR_RXFF                /*!< RX FIFO full fla
 224:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_TCBGT                      USART_ISR_TCBGT               /*!< Transmission com
 225:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_RXFT                       USART_ISR_RXFT                /*!< RX FIFO threshol
 226:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ISR_TXFT                       USART_ISR_TXFT                /*!< TX FIFO threshol
 227:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 228:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 229:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 230:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 231:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_IT IT Defines
 232:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief    IT defines which can be used with LL_USART_ReadReg and  LL_USART_WriteReg functions
 233:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 234:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 235:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_IDLEIE                     USART_CR1_IDLEIE              /*!< IDLE interrupt e
 236:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_RXNEIE_RXFNEIE             USART_CR1_RXNEIE_RXFNEIE      /*!< Read data regist
 237:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_TCIE                       USART_CR1_TCIE                /*!< Transmission com
 238:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_TXEIE_TXFNFIE              USART_CR1_TXEIE_TXFNFIE       /*!< Transmit data re
 239:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_PEIE                       USART_CR1_PEIE                /*!< Parity error */
 240:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_CMIE                       USART_CR1_CMIE                /*!< Character match 
 241:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_RTOIE                      USART_CR1_RTOIE               /*!< Receiver timeout
 242:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_EOBIE                      USART_CR1_EOBIE               /*!< End of Block int
 243:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_TXFEIE                     USART_CR1_TXFEIE              /*!< TX FIFO empty in
 244:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR1_RXFFIE                     USART_CR1_RXFFIE              /*!< RX FIFO full int
 245:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR2_LBDIE                      USART_CR2_LBDIE               /*!< LIN break detect
 246:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR3_EIE                        USART_CR3_EIE                 /*!< Error interrupt 
 247:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR3_CTSIE                      USART_CR3_CTSIE               /*!< CTS interrupt en
 248:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR3_WUFIE                      USART_CR3_WUFIE               /*!< Wakeup from Stop
 249:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR3_TXFTIE                     USART_CR3_TXFTIE              /*!< TX FIFO threshol
 250:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR3_TCBGTIE                    USART_CR3_TCBGTIE             /*!< Transmission com
 251:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CR3_RXFTIE                     USART_CR3_RXFTIE              /*!< RX FIFO threshol
 252:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 253:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 254:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 255:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 256:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_FIFOTHRESHOLD FIFO Threshold
 257:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 258:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 259:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_FIFOTHRESHOLD_1_8              0x00000000U /*!< FIFO reaches 1/8 of its depth */
 260:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_FIFOTHRESHOLD_1_4              0x00000001U /*!< FIFO reaches 1/4 of its depth */
 261:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_FIFOTHRESHOLD_1_2              0x00000002U /*!< FIFO reaches 1/2 of its depth */
 262:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_FIFOTHRESHOLD_3_4              0x00000003U /*!< FIFO reaches 3/4 of its depth */
 263:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_FIFOTHRESHOLD_7_8              0x00000004U /*!< FIFO reaches 7/8 of its depth */
 264:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_FIFOTHRESHOLD_8_8              0x00000005U /*!< FIFO becomes empty for TX and full
 265:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 266:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 267:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 268:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 269:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_DIRECTION Communication Direction
 270:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 271:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 272:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DIRECTION_NONE                 0x00000000U                        /*!< Transmitter
 273:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DIRECTION_RX                   USART_CR1_RE                       /*!< Transmitter
 274:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DIRECTION_TX                   USART_CR1_TE                       /*!< Transmitter
 275:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DIRECTION_TX_RX                (USART_CR1_TE |USART_CR1_RE)       /*!< Transmitter
 276:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 277:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 278:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 279:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 280:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_PARITY Parity Control
 281:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 282:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 283:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PARITY_NONE                    0x00000000U                          /*!< Parity co
 284:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PARITY_EVEN                    USART_CR1_PCE                        /*!< Parity co
 285:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PARITY_ODD                     (USART_CR1_PCE | USART_CR1_PS)       /*!< Parity co
 286:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 287:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 288:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 289:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 290:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_WAKEUP Wakeup
 291:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 292:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 293:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_WAKEUP_IDLELINE                0x00000000U           /*!<  USART wake up from Mute
 294:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_WAKEUP_ADDRESSMARK             USART_CR1_WAKE        /*!<  USART wake up from Mute
 295:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 296:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 297:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 298:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 299:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_DATAWIDTH Datawidth
 300:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 301:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 302:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DATAWIDTH_7B                   USART_CR1_M1            /*!< 7 bits word length : S
 303:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DATAWIDTH_8B                   0x00000000U             /*!< 8 bits word length : S
 304:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DATAWIDTH_9B                   USART_CR1_M0            /*!< 9 bits word length : S
 305:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 306:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 307:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 308:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 309:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_OVERSAMPLING Oversampling
 310:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 311:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 312:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_OVERSAMPLING_16                0x00000000U            /*!< Oversampling by 16 */
 313:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_OVERSAMPLING_8                 USART_CR1_OVER8        /*!< Oversampling by 8 */
 314:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 315:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 316:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 317:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 318:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #if defined(USE_FULL_LL_DRIVER)
 319:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_CLOCK Clock Signal
 320:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 321:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 322:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 323:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CLOCK_DISABLE                  0x00000000U            /*!< Clock signal not provid
 324:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_CLOCK_ENABLE                   USART_CR2_CLKEN        /*!< Clock signal provided *
 325:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 326:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 327:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 328:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #endif /*USE_FULL_LL_DRIVER*/
 329:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 330:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_LASTCLKPULSE Last Clock Pulse
 331:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 332:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 333:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_LASTCLKPULSE_NO_OUTPUT         0x00000000U           /*!< The clock pulse of the l
 334:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_LASTCLKPULSE_OUTPUT            USART_CR2_LBCL        /*!< The clock pulse of the l
 335:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 336:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 337:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 338:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 339:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_PHASE Clock Phase
 340:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 341:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 342:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PHASE_1EDGE                    0x00000000U           /*!< The first clock transiti
 343:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PHASE_2EDGE                    USART_CR2_CPHA        /*!< The second clock transit
 344:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 345:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 346:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 347:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 348:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_POLARITY Clock Polarity
 349:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 350:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 351:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_POLARITY_LOW                   0x00000000U           /*!< Steady low value on SCLK
 352:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_POLARITY_HIGH                  USART_CR2_CPOL        /*!< Steady high value on SCL
 353:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 354:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 355:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 356:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 357:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_PRESCALER Clock Source Prescaler
 358:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 359:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 360:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV1                 0x00000000U                                        
 361:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV2                 (USART_PRESC_PRESCALER_0)                          
 362:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV4                 (USART_PRESC_PRESCALER_1)                          
 363:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV6                 (USART_PRESC_PRESCALER_1 | USART_PRESC_PRESCALER_0)
 364:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV8                 (USART_PRESC_PRESCALER_2)                          
 365:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV10                (USART_PRESC_PRESCALER_2 | USART_PRESC_PRESCALER_0)
 366:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV12                (USART_PRESC_PRESCALER_2 | USART_PRESC_PRESCALER_1)
 367:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV16                (USART_PRESC_PRESCALER_2 | USART_PRESC_PRESCALER_1 
 368:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV32                (USART_PRESC_PRESCALER_3)                          
 369:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV64                (USART_PRESC_PRESCALER_3 | USART_PRESC_PRESCALER_0)
 370:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV128               (USART_PRESC_PRESCALER_3 | USART_PRESC_PRESCALER_1)
 371:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_PRESCALER_DIV256               (USART_PRESC_PRESCALER_3 | USART_PRESC_PRESCALER_1 
 372:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 373:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 374:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 375:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 376:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_STOPBITS Stop Bits
 377:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 378:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 379:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_STOPBITS_0_5                   USART_CR2_STOP_0                           /*!< 0.5
 380:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_STOPBITS_1                     0x00000000U                                /*!< 1 s
 381:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_STOPBITS_1_5                   (USART_CR2_STOP_0 | USART_CR2_STOP_1)      /*!< 1.5
 382:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_STOPBITS_2                     USART_CR2_STOP_1                           /*!< 2 s
 383:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 384:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 385:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 386:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 387:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_TXRX TX RX Pins Swap
 388:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 389:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 390:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_TXRX_STANDARD                  0x00000000U           /*!< TX/RX pins are used as d
 391:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_TXRX_SWAPPED                   (USART_CR2_SWAP)      /*!< TX and RX pins functions
 392:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 393:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 394:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 395:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 396:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_RXPIN_LEVEL RX Pin Active Level Inversion
 397:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 398:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 399:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_RXPIN_LEVEL_STANDARD           0x00000000U           /*!< RX pin signal works usin
 400:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_RXPIN_LEVEL_INVERTED           (USART_CR2_RXINV)     /*!< RX pin signal values are
 401:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 402:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 403:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 404:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 405:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_TXPIN_LEVEL TX Pin Active Level Inversion
 406:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 407:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 408:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_TXPIN_LEVEL_STANDARD           0x00000000U           /*!< TX pin signal works usin
 409:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_TXPIN_LEVEL_INVERTED           (USART_CR2_TXINV)     /*!< TX pin signal values are
 410:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 411:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 412:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 413:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 414:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_BINARY_LOGIC Binary Data Inversion
 415:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 416:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 417:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_BINARY_LOGIC_POSITIVE          0x00000000U           /*!< Logical data from the da
 418:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_BINARY_LOGIC_NEGATIVE          USART_CR2_DATAINV     /*!< Logical data from the da
 419:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 420:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 421:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 422:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 423:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_BITORDER Bit Order
 424:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 425:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 426:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_BITORDER_LSBFIRST              0x00000000U           /*!< data is transmitted/rece
 427:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_BITORDER_MSBFIRST              USART_CR2_MSBFIRST    /*!< data is transmitted/rece
 428:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 429:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 430:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 431:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 432:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_AUTOBAUD_DETECT_ON Autobaud Detection
 433:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 434:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 435:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_AUTOBAUD_DETECT_ON_STARTBIT    0x00000000U                                 /*!< Me
 436:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_AUTOBAUD_DETECT_ON_FALLINGEDGE USART_CR2_ABRMODE_0                         /*!< Fa
 437:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_AUTOBAUD_DETECT_ON_7F_FRAME    USART_CR2_ABRMODE_1                         /*!< 0x
 438:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_AUTOBAUD_DETECT_ON_55_FRAME    (USART_CR2_ABRMODE_1 | USART_CR2_ABRMODE_0) /*!< 0x
 439:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 440:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 441:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 442:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 443:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_ADDRESS_DETECT Address Length Detection
 444:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 445:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 446:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ADDRESS_DETECT_4B              0x00000000U           /*!< 4-bit address detection 
 447:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ADDRESS_DETECT_7B              USART_CR2_ADDM7       /*!< 7-bit address detection 
 448:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 449:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 450:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 451:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 452:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_HWCONTROL Hardware Control
 453:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 454:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 455:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_HWCONTROL_NONE                 0x00000000U                          /*!< CTS and R
 456:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_HWCONTROL_RTS                  USART_CR3_RTSE                       /*!< RTS outpu
 457:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_HWCONTROL_CTS                  USART_CR3_CTSE                       /*!< CTS mode 
 458:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_HWCONTROL_RTS_CTS              (USART_CR3_RTSE | USART_CR3_CTSE)    /*!< CTS and R
 459:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 460:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 461:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 462:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 463:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_WAKEUP_ON Wakeup Activation
 464:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 465:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 466:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_WAKEUP_ON_ADDRESS              0x00000000U                             /*!< Wake u
 467:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_WAKEUP_ON_STARTBIT             USART_CR3_WUS_1                         /*!< Wake u
 468:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_WAKEUP_ON_RXNE                 (USART_CR3_WUS_0 | USART_CR3_WUS_1)     /*!< Wake u
 469:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 470:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 471:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 472:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 473:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_IRDA_POWER IrDA Power
 474:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 475:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 476:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_IRDA_POWER_NORMAL              0x00000000U           /*!< IrDA normal power mode *
 477:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_IRDA_POWER_LOW                 USART_CR3_IRLP        /*!< IrDA low power mode */
 478:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 479:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 480:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 481:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 482:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_LINBREAK_DETECT LIN Break Detection Length
 483:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 484:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 485:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_LINBREAK_DETECT_10B            0x00000000U           /*!< 10-bit break detection m
 486:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_LINBREAK_DETECT_11B            USART_CR2_LBDL        /*!< 11-bit break detection m
 487:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 488:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 489:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 490:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 491:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_DE_POLARITY Driver Enable Polarity
 492:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 493:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 494:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DE_POLARITY_HIGH               0x00000000U           /*!< DE signal is active high
 495:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DE_POLARITY_LOW                USART_CR3_DEP         /*!< DE signal is active low 
 496:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 497:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 498:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 499:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 500:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EC_DMA_REG_DATA DMA Register Data
 501:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 502:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 503:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DMA_REG_DATA_TRANSMIT          0x00000000U          /*!< Get address of data regis
 504:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_DMA_REG_DATA_RECEIVE           0x00000001U          /*!< Get address of data regis
 505:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 506:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 507:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 508:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 509:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 510:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 511:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 512:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 513:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Exported macro ------------------------------------------------------------*/
 514:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_Exported_Macros USART Exported Macros
 515:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 516:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 517:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 518:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EM_WRITE_READ Common Write and read registers Macros
 519:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 520:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 521:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 522:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 523:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Write a value in USART register
 524:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __INSTANCE__ USART Instance
 525:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __REG__ Register to be written
 526:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __VALUE__ Value to be written in the register
 527:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 528:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 529:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VAL
 530:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 531:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 532:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Read a value in USART register
 533:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __INSTANCE__ USART Instance
 534:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __REG__ Register to be read
 535:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Register value
 536:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 537:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define LL_USART_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 538:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 539:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 540:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 541:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 542:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EM_Exported_Macros_Helper Exported_Macros_Helper
 543:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 544:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 545:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 546:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 547:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Compute USARTDIV value according to Peripheral Clock and
 548:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         expected Baud Rate in 8 bits sampling mode (32 bits value of USARTDIV is returned)
 549:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __PERIPHCLK__ Peripheral Clock frequency used for USART instance
 550:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __PRESCALER__ This parameter can be one of the following values:
 551:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV1
 552:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV2
 553:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV4
 554:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV6
 555:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV8
 556:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV10
 557:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV12
 558:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV16
 559:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV32
 560:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV64
 561:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV128
 562:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV256
 563:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __BAUDRATE__ Baud rate value to achieve
 564:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval USARTDIV value to be used for BRR register filling in OverSampling_8 case
 565:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 566:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define __LL_USART_DIV_SAMPLING8(__PERIPHCLK__, __PRESCALER__, __BAUDRATE__) (((((__PERIPHCLK__)/(U
 567:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                                                                + ((__BAUDRATE__)/2U
 568:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 569:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 570:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Compute USARTDIV value according to Peripheral Clock and
 571:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         expected Baud Rate in 16 bits sampling mode (32 bits value of USARTDIV is returned)
 572:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __PERIPHCLK__ Peripheral Clock frequency used for USART instance
 573:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __PRESCALER__ This parameter can be one of the following values:
 574:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV1
 575:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV2
 576:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV4
 577:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV6
 578:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV8
 579:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV10
 580:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV12
 581:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV16
 582:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV32
 583:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV64
 584:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV128
 585:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV256
 586:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  __BAUDRATE__ Baud rate value to achieve
 587:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval USARTDIV value to be used for BRR register filling in OverSampling_16 case
 588:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 589:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** #define __LL_USART_DIV_SAMPLING16(__PERIPHCLK__, __PRESCALER__, __BAUDRATE__) ((((__PERIPHCLK__)/(U
 590:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                                                                 + ((__BAUDRATE__)/2
 591:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 592:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 593:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 594:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 595:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 596:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 597:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @}
 598:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 599:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 600:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /* Exported functions --------------------------------------------------------*/
 601:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 602:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_Exported_Functions USART Exported Functions
 603:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 604:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 605:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 606:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /** @defgroup USART_LL_EF_Configuration Configuration functions
 607:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @{
 608:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 609:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 610:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 611:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  USART Enable
 612:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          UE            LL_USART_Enable
 613:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 614:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 615:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 616:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_Enable(USART_TypeDef *USARTx)
 617:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 618:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR1, USART_CR1_UE);
 619:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 620:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 621:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 622:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  USART Disable (all USART prescalers and outputs are disabled)
 623:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   When USART is disabled, USART prescalers and outputs are stopped immediately,
 624:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         and current operations are discarded. The configuration of the USART is kept, but all t
 625:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         flags, in the USARTx_ISR are set to their default values.
 626:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          UE            LL_USART_Disable
 627:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 628:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 629:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 630:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_Disable(USART_TypeDef *USARTx)
 631:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 632:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR1, USART_CR1_UE);
 633:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 634:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 635:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 636:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if USART is enabled
 637:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          UE            LL_USART_IsEnabled
 638:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 639:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
 640:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 641:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabled(USART_TypeDef *USARTx)
 229              		.loc 3 641 26 view .LVU61
 230              	.LBB51:
 642:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 643:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR1, USART_CR1_UE) == (USART_CR1_UE)) ? 1UL : 0UL);
 231              		.loc 3 643 3 view .LVU62
 232              	.LBE51:
 233              	.LBE50:
 205:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ErrorStatus status = ERROR;
 234              		.loc 1 205 1 is_stmt 0 view .LVU63
 235 0000 38B5     		push	{r3, r4, r5, lr}
 236              		.cfi_def_cfa_offset 16
 237              		.cfi_offset 3, -16
 238              		.cfi_offset 4, -12
 239              		.cfi_offset 5, -8
 240              		.cfi_offset 14, -4
 241              	.LBB54:
 242              	.LBB52:
 243              		.loc 3 643 12 view .LVU64
 244 0002 0368     		ldr	r3, [r0]
 245              		.loc 3 643 73 view .LVU65
 246 0004 DB07     		lsls	r3, r3, #31
 247              	.LBE52:
 248              	.LBE54:
 205:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ErrorStatus status = ERROR;
 249              		.loc 1 205 1 view .LVU66
 250 0006 0446     		mov	r4, r0
 251 0008 0D46     		mov	r5, r1
 252              	.LBB55:
 253              	.LBB53:
 254              		.loc 3 643 73 view .LVU67
 255 000a 59D4     		bmi	.L21
 256              	.LVL17:
 257              		.loc 3 643 73 view .LVU68
 258              	.LBE53:
 259              	.LBE55:
 223:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 224:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /*---------------------------- USART CR1 Configuration ---------------------
 225:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * Configure USARTx CR1 (USART Word Length, Parity, Mode and Oversampling bits) with parameters
 226:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - DataWidth:          USART_CR1_M bits according to USART_InitStruct->DataWidth value
 227:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - Parity:             USART_CR1_PCE, USART_CR1_PS bits according to USART_InitStruct->Parity
 228:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - TransferDirection:  USART_CR1_TE, USART_CR1_RE bits according to USART_InitStruct->Transfe
 229:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - Oversampling:       USART_CR1_OVER8 bit according to USART_InitStruct->OverSampling value.
 230:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      */
 231:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     MODIFY_REG(USARTx->CR1,
 260              		.loc 1 231 5 is_stmt 1 view .LVU69
 261 000c 2A69     		ldr	r2, [r5, #16]
 262 000e AB68     		ldr	r3, [r5, #8]
 263 0010 0168     		ldr	r1, [r0]
 264              	.LVL18:
 265              		.loc 1 231 5 is_stmt 0 view .LVU70
 266 0012 1343     		orrs	r3, r3, r2
 267 0014 6A69     		ldr	r2, [r5, #20]
 268 0016 1343     		orrs	r3, r3, r2
 269 0018 EA69     		ldr	r2, [r5, #28]
 270 001a 1343     		orrs	r3, r3, r2
 271 001c 294A     		ldr	r2, .L31
 272 001e 0A40     		ands	r2, r2, r1
 273 0020 1343     		orrs	r3, r3, r2
 274 0022 0360     		str	r3, [r0]
 232:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                (USART_CR1_M | USART_CR1_PCE | USART_CR1_PS |
 233:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                 USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
 234:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                (USART_InitStruct->DataWidth | USART_InitStruct->Parity |
 235:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                 USART_InitStruct->TransferDirection | USART_InitStruct->OverSampling));
 236:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 237:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /*---------------------------- USART CR2 Configuration ---------------------
 238:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * Configure USARTx CR2 (Stop bits) with parameters:
 239:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - Stop Bits:          USART_CR2_STOP bits according to USART_InitStruct->StopBits value.
 240:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - CLKEN, CPOL, CPHA and LBCL bits are to be configured using LL_USART_ClockInit().
 241:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      */
 242:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_USART_SetStopBitsLength(USARTx, USART_InitStruct->StopBits);
 275              		.loc 1 242 5 is_stmt 1 view .LVU71
 276              	.LVL19:
 277              	.LBB56:
 278              	.LBI56:
 644:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 645:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 646:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 647:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  FIFO Mode Enable
 648:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 649:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 650:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          FIFOEN        LL_USART_EnableFIFO
 651:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 652:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 653:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 654:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableFIFO(USART_TypeDef *USARTx)
 655:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 656:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR1, USART_CR1_FIFOEN);
 657:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 658:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 659:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 660:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  FIFO Mode Disable
 661:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 662:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 663:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          FIFOEN        LL_USART_DisableFIFO
 664:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 665:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 666:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 667:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableFIFO(USART_TypeDef *USARTx)
 668:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 669:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR1, USART_CR1_FIFOEN);
 670:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 671:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 672:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 673:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if FIFO Mode is enabled
 674:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 675:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 676:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          FIFOEN        LL_USART_IsEnabledFIFO
 677:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 678:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
 679:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 680:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledFIFO(USART_TypeDef *USARTx)
 681:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 682:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR1, USART_CR1_FIFOEN) == (USART_CR1_FIFOEN)) ? 1UL : 0UL);
 683:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 684:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 685:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 686:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure TX FIFO Threshold
 687:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 688:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 689:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          TXFTCFG       LL_USART_SetTXFIFOThreshold
 690:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 691:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Threshold This parameter can be one of the following values:
 692:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_8
 693:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_4
 694:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_2
 695:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_3_4
 696:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_7_8
 697:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_8_8
 698:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 699:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 700:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetTXFIFOThreshold(USART_TypeDef *USARTx, uint32_t Threshold)
 701:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 702:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR3, USART_CR3_TXFTCFG, Threshold << USART_CR3_TXFTCFG_Pos);
 703:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 704:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 705:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 706:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return TX FIFO Threshold Configuration
 707:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 708:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 709:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          TXFTCFG       LL_USART_GetTXFIFOThreshold
 710:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 711:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
 712:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_8
 713:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_4
 714:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_2
 715:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_3_4
 716:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_7_8
 717:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_8_8
 718:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 719:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetTXFIFOThreshold(USART_TypeDef *USARTx)
 720:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 721:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR3, USART_CR3_TXFTCFG) >> USART_CR3_TXFTCFG_Pos);
 722:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 723:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 724:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 725:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure RX FIFO Threshold
 726:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 727:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 728:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          RXFTCFG       LL_USART_SetRXFIFOThreshold
 729:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 730:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Threshold This parameter can be one of the following values:
 731:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_8
 732:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_4
 733:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_2
 734:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_3_4
 735:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_7_8
 736:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_8_8
 737:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 738:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 739:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetRXFIFOThreshold(USART_TypeDef *USARTx, uint32_t Threshold)
 740:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 741:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR3, USART_CR3_RXFTCFG, Threshold << USART_CR3_RXFTCFG_Pos);
 742:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 743:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 744:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 745:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return RX FIFO Threshold Configuration
 746:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 747:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 748:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          RXFTCFG       LL_USART_GetRXFIFOThreshold
 749:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 750:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
 751:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_8
 752:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_4
 753:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_2
 754:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_3_4
 755:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_7_8
 756:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_8_8
 757:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 758:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetRXFIFOThreshold(USART_TypeDef *USARTx)
 759:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 760:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR3, USART_CR3_RXFTCFG) >> USART_CR3_RXFTCFG_Pos);
 761:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 762:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 763:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 764:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure TX and RX FIFOs Threshold
 765:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
 766:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
 767:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          TXFTCFG       LL_USART_ConfigFIFOsThreshold\n
 768:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR3          RXFTCFG       LL_USART_ConfigFIFOsThreshold
 769:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 770:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  TXThreshold This parameter can be one of the following values:
 771:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_8
 772:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_4
 773:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_2
 774:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_3_4
 775:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_7_8
 776:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_8_8
 777:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  RXThreshold This parameter can be one of the following values:
 778:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_8
 779:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_4
 780:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_1_2
 781:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_3_4
 782:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_7_8
 783:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_FIFOTHRESHOLD_8_8
 784:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 785:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 786:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_ConfigFIFOsThreshold(USART_TypeDef *USARTx, uint32_t TXThreshold, uin
 787:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 788:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR3, USART_CR3_TXFTCFG | USART_CR3_RXFTCFG, (TXThreshold << USART_CR3_TXFTCFG_
 789:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 790:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 791:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 792:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  USART enabled in STOP Mode.
 793:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   When this function is enabled, USART is able to wake up the MCU from Stop mode, provide
 794:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         USART clock selection is HSI or LSE in RCC.
 795:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_WAKEUP_FROMSTOP_INSTANCE(USARTx) can be used to check whether or not
 796:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Wake-up from Stop mode feature is supported by the USARTx instance.
 797:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          UESM          LL_USART_EnableInStopMode
 798:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 799:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 800:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 801:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableInStopMode(USART_TypeDef *USARTx)
 802:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 803:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR1, USART_CR1_UESM);
 804:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 805:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 806:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 807:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  USART disabled in STOP Mode.
 808:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   When this function is disabled, USART is not able to wake up the MCU from Stop mode
 809:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_WAKEUP_FROMSTOP_INSTANCE(USARTx) can be used to check whether or not
 810:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Wake-up from Stop mode feature is supported by the USARTx instance.
 811:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          UESM          LL_USART_DisableInStopMode
 812:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 813:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 814:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 815:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableInStopMode(USART_TypeDef *USARTx)
 816:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 817:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR1, USART_CR1_UESM);
 818:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 819:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 820:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 821:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if USART is enabled in STOP Mode (able to wake up MCU from Stop mode or not)
 822:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_WAKEUP_FROMSTOP_INSTANCE(USARTx) can be used to check whether or not
 823:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Wake-up from Stop mode feature is supported by the USARTx instance.
 824:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          UESM          LL_USART_IsEnabledInStopMode
 825:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 826:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
 827:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 828:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledInStopMode(USART_TypeDef *USARTx)
 829:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 830:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR1, USART_CR1_UESM) == (USART_CR1_UESM)) ? 1UL : 0UL);
 831:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 832:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 833:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 834:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Receiver Enable (Receiver is enabled and begins searching for a start bit)
 835:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          RE            LL_USART_EnableDirectionRx
 836:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 837:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 838:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 839:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableDirectionRx(USART_TypeDef *USARTx)
 840:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 841:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR1, USART_CR1_RE);
 842:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 843:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 844:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 845:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Receiver Disable
 846:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          RE            LL_USART_DisableDirectionRx
 847:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 848:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 849:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 850:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableDirectionRx(USART_TypeDef *USARTx)
 851:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 852:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR1, USART_CR1_RE);
 853:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 854:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 855:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 856:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Transmitter Enable
 857:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          TE            LL_USART_EnableDirectionTx
 858:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 859:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 860:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 861:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableDirectionTx(USART_TypeDef *USARTx)
 862:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 863:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR1, USART_CR1_TE);
 864:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 865:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 866:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 867:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Transmitter Disable
 868:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          TE            LL_USART_DisableDirectionTx
 869:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 870:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 871:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 872:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableDirectionTx(USART_TypeDef *USARTx)
 873:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 874:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR1, USART_CR1_TE);
 875:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 876:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 877:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 878:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure simultaneously enabled/disabled states
 879:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         of Transmitter and Receiver
 880:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          RE            LL_USART_SetTransferDirection\n
 881:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          TE            LL_USART_SetTransferDirection
 882:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 883:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  TransferDirection This parameter can be one of the following values:
 884:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_NONE
 885:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_RX
 886:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_TX
 887:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_TX_RX
 888:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 889:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 890:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetTransferDirection(USART_TypeDef *USARTx, uint32_t TransferDirectio
 891:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 892:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR1, USART_CR1_RE | USART_CR1_TE, TransferDirection);
 893:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 894:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 895:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 896:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return enabled/disabled states of Transmitter and Receiver
 897:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          RE            LL_USART_GetTransferDirection\n
 898:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          TE            LL_USART_GetTransferDirection
 899:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 900:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
 901:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_NONE
 902:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_RX
 903:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_TX
 904:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DIRECTION_TX_RX
 905:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 906:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetTransferDirection(USART_TypeDef *USARTx)
 907:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 908:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_RE | USART_CR1_TE));
 909:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 910:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 911:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 912:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure Parity (enabled/disabled and parity mode if enabled).
 913:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   This function selects if hardware parity control (generation and detection) is enabled 
 914:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         When the parity control is enabled (Odd or Even), computed parity bit is inserted at th
 915:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         (9th or 8th bit depending on data width) and parity is checked on the received data.
 916:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          PS            LL_USART_SetParity\n
 917:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          PCE           LL_USART_SetParity
 918:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 919:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Parity This parameter can be one of the following values:
 920:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_NONE
 921:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_EVEN
 922:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_ODD
 923:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 924:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 925:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetParity(USART_TypeDef *USARTx, uint32_t Parity)
 926:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 927:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE, Parity);
 928:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 929:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 930:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 931:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return Parity configuration (enabled/disabled and parity mode if enabled)
 932:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          PS            LL_USART_GetParity\n
 933:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          PCE           LL_USART_GetParity
 934:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 935:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
 936:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_NONE
 937:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_EVEN
 938:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_ODD
 939:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 940:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetParity(USART_TypeDef *USARTx)
 941:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 942:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE));
 943:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 944:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 945:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 946:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Set Receiver Wake Up method from Mute mode.
 947:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          WAKE          LL_USART_SetWakeUpMethod
 948:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 949:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Method This parameter can be one of the following values:
 950:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_IDLELINE
 951:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ADDRESSMARK
 952:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 953:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 954:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetWakeUpMethod(USART_TypeDef *USARTx, uint32_t Method)
 955:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 956:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR1, USART_CR1_WAKE, Method);
 957:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 958:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 959:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 960:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return Receiver Wake Up method from Mute mode
 961:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          WAKE          LL_USART_GetWakeUpMethod
 962:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 963:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
 964:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_IDLELINE
 965:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ADDRESSMARK
 966:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 967:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetWakeUpMethod(USART_TypeDef *USARTx)
 968:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 969:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_WAKE));
 970:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 971:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 972:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 973:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Set Word length (i.e. nb of data bits, excluding start and stop bits)
 974:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          M0            LL_USART_SetDataWidth\n
 975:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          M1            LL_USART_SetDataWidth
 976:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 977:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  DataWidth This parameter can be one of the following values:
 978:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_7B
 979:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_8B
 980:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_9B
 981:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
 982:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 983:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetDataWidth(USART_TypeDef *USARTx, uint32_t DataWidth)
 984:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 985:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR1, USART_CR1_M, DataWidth);
 986:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 987:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
 988:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
 989:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return Word length (i.e. nb of data bits, excluding start and stop bits)
 990:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          M0            LL_USART_GetDataWidth\n
 991:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          M1            LL_USART_GetDataWidth
 992:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
 993:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
 994:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_7B
 995:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_8B
 996:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_9B
 997:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
 998:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetDataWidth(USART_TypeDef *USARTx)
 999:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1000:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_M));
1001:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1002:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1003:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1004:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Allow switch between Mute Mode and Active mode
1005:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          MME           LL_USART_EnableMuteMode
1006:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1007:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1008:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1009:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableMuteMode(USART_TypeDef *USARTx)
1010:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1011:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR1, USART_CR1_MME);
1012:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1013:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1014:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1015:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Prevent Mute Mode use. Set Receiver in active mode permanently.
1016:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          MME           LL_USART_DisableMuteMode
1017:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1018:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1019:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1020:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableMuteMode(USART_TypeDef *USARTx)
1021:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1022:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR1, USART_CR1_MME);
1023:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1024:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1025:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1026:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if switch between Mute Mode and Active mode is allowed
1027:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          MME           LL_USART_IsEnabledMuteMode
1028:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1029:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
1030:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1031:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledMuteMode(USART_TypeDef *USARTx)
1032:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1033:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR1, USART_CR1_MME) == (USART_CR1_MME)) ? 1UL : 0UL);
1034:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1035:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1036:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1037:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Set Oversampling to 8-bit or 16-bit mode
1038:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          OVER8         LL_USART_SetOverSampling
1039:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1040:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  OverSampling This parameter can be one of the following values:
1041:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_OVERSAMPLING_16
1042:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_OVERSAMPLING_8
1043:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1044:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1045:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetOverSampling(USART_TypeDef *USARTx, uint32_t OverSampling)
1046:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1047:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR1, USART_CR1_OVER8, OverSampling);
1048:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1049:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1050:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1051:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return Oversampling mode
1052:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          OVER8         LL_USART_GetOverSampling
1053:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1054:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1055:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_OVERSAMPLING_16
1056:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_OVERSAMPLING_8
1057:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1058:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetOverSampling(USART_TypeDef *USARTx)
1059:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1060:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_OVER8));
1061:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1062:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1063:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1064:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure if Clock pulse of the last data bit is output to the SCLK pin or not
1065:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1066:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1067:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          LBCL          LL_USART_SetLastClkPulseOutput
1068:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1069:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  LastBitClockPulse This parameter can be one of the following values:
1070:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_LASTCLKPULSE_NO_OUTPUT
1071:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_LASTCLKPULSE_OUTPUT
1072:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1073:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1074:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetLastClkPulseOutput(USART_TypeDef *USARTx, uint32_t LastBitClockPul
1075:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1076:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_LBCL, LastBitClockPulse);
1077:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1078:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1079:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1080:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Retrieve Clock pulse of the last data bit output configuration
1081:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         (Last bit Clock pulse output to the SCLK pin or not)
1082:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1083:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1084:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          LBCL          LL_USART_GetLastClkPulseOutput
1085:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1086:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1087:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_LASTCLKPULSE_NO_OUTPUT
1088:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_LASTCLKPULSE_OUTPUT
1089:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1090:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetLastClkPulseOutput(USART_TypeDef *USARTx)
1091:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1092:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_LBCL));
1093:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1094:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1095:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1096:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Select the phase of the clock output on the SCLK pin in synchronous mode
1097:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1098:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1099:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CPHA          LL_USART_SetClockPhase
1100:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1101:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  ClockPhase This parameter can be one of the following values:
1102:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PHASE_1EDGE
1103:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PHASE_2EDGE
1104:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1105:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1106:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetClockPhase(USART_TypeDef *USARTx, uint32_t ClockPhase)
1107:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1108:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_CPHA, ClockPhase);
1109:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1110:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1111:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1112:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return phase of the clock output on the SCLK pin in synchronous mode
1113:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1114:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1115:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CPHA          LL_USART_GetClockPhase
1116:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1117:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1118:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PHASE_1EDGE
1119:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PHASE_2EDGE
1120:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1121:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetClockPhase(USART_TypeDef *USARTx)
1122:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1123:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_CPHA));
1124:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1125:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1126:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1127:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Select the polarity of the clock output on the SCLK pin in synchronous mode
1128:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1129:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1130:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CPOL          LL_USART_SetClockPolarity
1131:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1132:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  ClockPolarity This parameter can be one of the following values:
1133:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_POLARITY_LOW
1134:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_POLARITY_HIGH
1135:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1136:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1137:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetClockPolarity(USART_TypeDef *USARTx, uint32_t ClockPolarity)
1138:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1139:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_CPOL, ClockPolarity);
1140:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1141:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1142:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1143:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return polarity of the clock output on the SCLK pin in synchronous mode
1144:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1145:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1146:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CPOL          LL_USART_GetClockPolarity
1147:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1148:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1149:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_POLARITY_LOW
1150:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_POLARITY_HIGH
1151:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1152:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetClockPolarity(USART_TypeDef *USARTx)
1153:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1154:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_CPOL));
1155:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1156:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1157:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1158:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure Clock signal format (Phase Polarity and choice about output of last bit clock
1159:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1160:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1161:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Call of this function is equivalent to following function call sequence :
1162:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         - Clock Phase configuration using @ref LL_USART_SetClockPhase() function
1163:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         - Clock Polarity configuration using @ref LL_USART_SetClockPolarity() function
1164:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         - Output of Last bit Clock pulse configuration using @ref LL_USART_SetLastClkPulseOutpu
1165:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CPHA          LL_USART_ConfigClock\n
1166:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR2          CPOL          LL_USART_ConfigClock\n
1167:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR2          LBCL          LL_USART_ConfigClock
1168:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1169:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Phase This parameter can be one of the following values:
1170:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PHASE_1EDGE
1171:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PHASE_2EDGE
1172:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Polarity This parameter can be one of the following values:
1173:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_POLARITY_LOW
1174:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_POLARITY_HIGH
1175:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  LBCPOutput This parameter can be one of the following values:
1176:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_LASTCLKPULSE_NO_OUTPUT
1177:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_LASTCLKPULSE_OUTPUT
1178:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1179:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1180:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_ConfigClock(USART_TypeDef *USARTx, uint32_t Phase, uint32_t Polarity,
1181:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1182:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_CPHA | USART_CR2_CPOL | USART_CR2_LBCL, Phase | Polarity | LBCP
1183:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1184:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1185:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1186:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure Clock source prescaler for baudrate generator and oversampling
1187:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
1188:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
1189:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll PRESC        PRESCALER     LL_USART_SetPrescaler
1190:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1191:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  PrescalerValue This parameter can be one of the following values:
1192:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV1
1193:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV2
1194:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV4
1195:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV6
1196:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV8
1197:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV10
1198:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV12
1199:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV16
1200:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV32
1201:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV64
1202:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV128
1203:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV256
1204:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1205:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1206:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetPrescaler(USART_TypeDef *USARTx, uint32_t PrescalerValue)
1207:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1208:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->PRESC, USART_PRESC_PRESCALER, (uint16_t)PrescalerValue);
1209:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1210:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1211:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1212:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Retrieve the Clock source prescaler for baudrate generator and oversampling
1213:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_FIFO_INSTANCE(USARTx) can be used to check whether or not
1214:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         FIFO mode feature is supported by the USARTx instance.
1215:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll PRESC        PRESCALER     LL_USART_GetPrescaler
1216:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1217:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1218:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV1
1219:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV2
1220:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV4
1221:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV6
1222:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV8
1223:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV10
1224:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV12
1225:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV16
1226:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV32
1227:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV64
1228:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV128
1229:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV256
1230:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1231:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetPrescaler(USART_TypeDef *USARTx)
1232:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1233:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->PRESC, USART_PRESC_PRESCALER));
1234:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1235:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1236:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1237:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Enable Clock output on SCLK pin
1238:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1239:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1240:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CLKEN         LL_USART_EnableSCLKOutput
1241:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1242:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1243:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1244:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableSCLKOutput(USART_TypeDef *USARTx)
1245:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1246:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR2, USART_CR2_CLKEN);
1247:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1248:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1249:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1250:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Disable Clock output on SCLK pin
1251:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1252:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1253:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CLKEN         LL_USART_DisableSCLKOutput
1254:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1255:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1256:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1257:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableSCLKOutput(USART_TypeDef *USARTx)
1258:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1259:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR2, USART_CR2_CLKEN);
1260:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1261:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1262:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1263:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if Clock output on SCLK pin is enabled
1264:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_INSTANCE(USARTx) can be used to check whether or not
1265:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Synchronous mode is supported by the USARTx instance.
1266:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          CLKEN         LL_USART_IsEnabledSCLKOutput
1267:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1268:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
1269:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1270:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledSCLKOutput(USART_TypeDef *USARTx)
1271:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1272:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR2, USART_CR2_CLKEN) == (USART_CR2_CLKEN)) ? 1UL : 0UL);
1273:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1274:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1275:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1276:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Set the length of the stop bits
1277:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          STOP          LL_USART_SetStopBitsLength
1278:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1279:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  StopBits This parameter can be one of the following values:
1280:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_0_5
1281:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_1
1282:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_1_5
1283:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_2
1284:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1285:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1286:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetStopBitsLength(USART_TypeDef *USARTx, uint32_t StopBits)
 279              		.loc 3 1286 22 view .LVU72
 280              	.LBB57:
1287:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1288:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_STOP, StopBits);
 281              		.loc 3 1288 3 view .LVU73
 282 0024 4368     		ldr	r3, [r0, #4]
 283 0026 EA68     		ldr	r2, [r5, #12]
 284 0028 23F44053 		bic	r3, r3, #12288
 285 002c 1343     		orrs	r3, r3, r2
 286 002e 4360     		str	r3, [r0, #4]
 287              	.LVL20:
 288              		.loc 3 1288 3 is_stmt 0 view .LVU74
 289              	.LBE57:
 290              	.LBE56:
 243:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 244:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /*---------------------------- USART CR3 Configuration ---------------------
 245:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * Configure USARTx CR3 (Hardware Flow Control) with parameters:
 246:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - HardwareFlowControl: USART_CR3_RTSE, USART_CR3_CTSE bits according to USART_InitStruct->Ha
 247:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      */
 248:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_USART_SetHWFlowCtrl(USARTx, USART_InitStruct->HardwareFlowControl);
 291              		.loc 1 248 5 is_stmt 1 view .LVU75
 292              	.LBB58:
 293              	.LBI58:
1289:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1290:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1291:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1292:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Retrieve the length of the stop bits
1293:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          STOP          LL_USART_GetStopBitsLength
1294:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1295:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1296:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_0_5
1297:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_1
1298:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_1_5
1299:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_2
1300:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1301:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetStopBitsLength(USART_TypeDef *USARTx)
1302:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1303:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_STOP));
1304:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1305:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1306:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1307:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure Character frame format (Datawidth, Parity control, Stop Bits)
1308:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Call of this function is equivalent to following function call sequence :
1309:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         - Data Width configuration using @ref LL_USART_SetDataWidth() function
1310:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         - Parity Control and mode configuration using @ref LL_USART_SetParity() function
1311:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         - Stop bits configuration using @ref LL_USART_SetStopBitsLength() function
1312:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR1          PS            LL_USART_ConfigCharacter\n
1313:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          PCE           LL_USART_ConfigCharacter\n
1314:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          M0            LL_USART_ConfigCharacter\n
1315:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR1          M1            LL_USART_ConfigCharacter\n
1316:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR2          STOP          LL_USART_ConfigCharacter
1317:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1318:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  DataWidth This parameter can be one of the following values:
1319:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_7B
1320:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_8B
1321:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_DATAWIDTH_9B
1322:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Parity This parameter can be one of the following values:
1323:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_NONE
1324:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_EVEN
1325:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PARITY_ODD
1326:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  StopBits This parameter can be one of the following values:
1327:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_0_5
1328:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_1
1329:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_1_5
1330:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_STOPBITS_2
1331:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1332:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1333:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_ConfigCharacter(USART_TypeDef *USARTx, uint32_t DataWidth, uint32_t P
1334:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                               uint32_t StopBits)
1335:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1336:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE | USART_CR1_M, Parity | DataWidth);
1337:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_STOP, StopBits);
1338:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1339:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1340:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1341:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure TX/RX pins swapping setting.
1342:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          SWAP          LL_USART_SetTXRXSwap
1343:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1344:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  SwapConfig This parameter can be one of the following values:
1345:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXRX_STANDARD
1346:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXRX_SWAPPED
1347:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1348:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1349:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetTXRXSwap(USART_TypeDef *USARTx, uint32_t SwapConfig)
1350:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1351:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_SWAP, SwapConfig);
1352:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1353:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1354:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1355:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Retrieve TX/RX pins swapping configuration.
1356:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          SWAP          LL_USART_GetTXRXSwap
1357:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1358:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1359:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXRX_STANDARD
1360:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXRX_SWAPPED
1361:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1362:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetTXRXSwap(USART_TypeDef *USARTx)
1363:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1364:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_SWAP));
1365:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1366:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1367:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1368:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure RX pin active level logic
1369:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          RXINV         LL_USART_SetRXPinLevel
1370:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1371:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  PinInvMethod This parameter can be one of the following values:
1372:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_RXPIN_LEVEL_STANDARD
1373:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_RXPIN_LEVEL_INVERTED
1374:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1375:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1376:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetRXPinLevel(USART_TypeDef *USARTx, uint32_t PinInvMethod)
1377:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1378:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_RXINV, PinInvMethod);
1379:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1380:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1381:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1382:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Retrieve RX pin active level logic configuration
1383:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          RXINV         LL_USART_GetRXPinLevel
1384:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1385:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1386:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_RXPIN_LEVEL_STANDARD
1387:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_RXPIN_LEVEL_INVERTED
1388:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1389:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetRXPinLevel(USART_TypeDef *USARTx)
1390:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1391:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_RXINV));
1392:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1393:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1394:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1395:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure TX pin active level logic
1396:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          TXINV         LL_USART_SetTXPinLevel
1397:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1398:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  PinInvMethod This parameter can be one of the following values:
1399:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXPIN_LEVEL_STANDARD
1400:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXPIN_LEVEL_INVERTED
1401:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1402:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1403:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetTXPinLevel(USART_TypeDef *USARTx, uint32_t PinInvMethod)
1404:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1405:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_TXINV, PinInvMethod);
1406:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1407:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1408:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1409:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Retrieve TX pin active level logic configuration
1410:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          TXINV         LL_USART_GetTXPinLevel
1411:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1412:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1413:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXPIN_LEVEL_STANDARD
1414:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_TXPIN_LEVEL_INVERTED
1415:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1416:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetTXPinLevel(USART_TypeDef *USARTx)
1417:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1418:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_TXINV));
1419:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1420:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1421:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1422:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure Binary data logic.
1423:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Allow to define how Logical data from the data register are send/received :
1424:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         either in positive/direct logic (1=H, 0=L) or in negative/inverse logic (1=L, 0=H)
1425:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          DATAINV       LL_USART_SetBinaryDataLogic
1426:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1427:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  DataLogic This parameter can be one of the following values:
1428:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BINARY_LOGIC_POSITIVE
1429:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BINARY_LOGIC_NEGATIVE
1430:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1431:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1432:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetBinaryDataLogic(USART_TypeDef *USARTx, uint32_t DataLogic)
1433:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1434:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_DATAINV, DataLogic);
1435:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1436:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1437:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1438:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Retrieve Binary data configuration
1439:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          DATAINV       LL_USART_GetBinaryDataLogic
1440:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1441:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1442:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BINARY_LOGIC_POSITIVE
1443:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BINARY_LOGIC_NEGATIVE
1444:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1445:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetBinaryDataLogic(USART_TypeDef *USARTx)
1446:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1447:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_DATAINV));
1448:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1449:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1450:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1451:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure transfer bit order (either Less or Most Significant Bit First)
1452:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   MSB First means data is transmitted/received with the MSB first, following the start bi
1453:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         LSB First means data is transmitted/received with data bit 0 first, following the start
1454:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          MSBFIRST      LL_USART_SetTransferBitOrder
1455:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1456:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  BitOrder This parameter can be one of the following values:
1457:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BITORDER_LSBFIRST
1458:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BITORDER_MSBFIRST
1459:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1460:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1461:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetTransferBitOrder(USART_TypeDef *USARTx, uint32_t BitOrder)
1462:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1463:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_MSBFIRST, BitOrder);
1464:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1465:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1466:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1467:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return transfer bit order (either Less or Most Significant Bit First)
1468:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   MSB First means data is transmitted/received with the MSB first, following the start bi
1469:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         LSB First means data is transmitted/received with data bit 0 first, following the start
1470:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          MSBFIRST      LL_USART_GetTransferBitOrder
1471:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1472:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1473:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BITORDER_LSBFIRST
1474:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_BITORDER_MSBFIRST
1475:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1476:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetTransferBitOrder(USART_TypeDef *USARTx)
1477:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1478:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_MSBFIRST));
1479:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1480:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1481:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1482:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Enable Auto Baud-Rate Detection
1483:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_AUTOBAUDRATE_DETECTION_INSTANCE(USARTx) can be used to check whethe
1484:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Auto Baud Rate detection feature is supported by the USARTx instance.
1485:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ABREN         LL_USART_EnableAutoBaudRate
1486:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1487:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1488:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1489:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableAutoBaudRate(USART_TypeDef *USARTx)
1490:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1491:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR2, USART_CR2_ABREN);
1492:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1493:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1494:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1495:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Disable Auto Baud-Rate Detection
1496:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_AUTOBAUDRATE_DETECTION_INSTANCE(USARTx) can be used to check whethe
1497:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Auto Baud Rate detection feature is supported by the USARTx instance.
1498:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ABREN         LL_USART_DisableAutoBaudRate
1499:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1500:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1501:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1502:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableAutoBaudRate(USART_TypeDef *USARTx)
1503:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1504:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR2, USART_CR2_ABREN);
1505:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1506:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1507:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1508:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if Auto Baud-Rate Detection mechanism is enabled
1509:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_AUTOBAUDRATE_DETECTION_INSTANCE(USARTx) can be used to check whethe
1510:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Auto Baud Rate detection feature is supported by the USARTx instance.
1511:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ABREN         LL_USART_IsEnabledAutoBaud
1512:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1513:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
1514:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1515:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledAutoBaud(USART_TypeDef *USARTx)
1516:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1517:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR2, USART_CR2_ABREN) == (USART_CR2_ABREN)) ? 1UL : 0UL);
1518:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1519:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1520:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1521:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Set Auto Baud-Rate mode bits
1522:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_AUTOBAUDRATE_DETECTION_INSTANCE(USARTx) can be used to check whethe
1523:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Auto Baud Rate detection feature is supported by the USARTx instance.
1524:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ABRMODE       LL_USART_SetAutoBaudRateMode
1525:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1526:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  AutoBaudRateMode This parameter can be one of the following values:
1527:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_STARTBIT
1528:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_FALLINGEDGE
1529:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_7F_FRAME
1530:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_55_FRAME
1531:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1532:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1533:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetAutoBaudRateMode(USART_TypeDef *USARTx, uint32_t AutoBaudRateMode)
1534:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1535:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_ABRMODE, AutoBaudRateMode);
1536:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1537:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1538:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1539:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return Auto Baud-Rate mode
1540:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_USART_AUTOBAUDRATE_DETECTION_INSTANCE(USARTx) can be used to check whethe
1541:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Auto Baud Rate detection feature is supported by the USARTx instance.
1542:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ABRMODE       LL_USART_GetAutoBaudRateMode
1543:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1544:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1545:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_STARTBIT
1546:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_FALLINGEDGE
1547:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_7F_FRAME
1548:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_AUTOBAUD_DETECT_ON_55_FRAME
1549:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1550:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetAutoBaudRateMode(USART_TypeDef *USARTx)
1551:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1552:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_ABRMODE));
1553:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1554:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1555:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1556:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Enable Receiver Timeout
1557:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          RTOEN         LL_USART_EnableRxTimeout
1558:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1559:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1560:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1561:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableRxTimeout(USART_TypeDef *USARTx)
1562:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1563:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR2, USART_CR2_RTOEN);
1564:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1565:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1566:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1567:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Disable Receiver Timeout
1568:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          RTOEN         LL_USART_DisableRxTimeout
1569:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1570:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1571:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1572:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableRxTimeout(USART_TypeDef *USARTx)
1573:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1574:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR2, USART_CR2_RTOEN);
1575:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1576:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1577:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1578:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if Receiver Timeout feature is enabled
1579:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          RTOEN         LL_USART_IsEnabledRxTimeout
1580:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1581:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
1582:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1583:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledRxTimeout(USART_TypeDef *USARTx)
1584:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1585:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR2, USART_CR2_RTOEN) == (USART_CR2_RTOEN)) ? 1UL : 0UL);
1586:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1587:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1588:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1589:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Set Address of the USART node.
1590:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   This is used in multiprocessor communication during Mute mode or Stop mode,
1591:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         for wake up with address mark detection.
1592:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   4bits address node is used when 4-bit Address Detection is selected in ADDM7.
1593:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         (b7-b4 should be set to 0)
1594:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         8bits address node is used when 7-bit Address Detection is selected in ADDM7.
1595:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         (This is used in multiprocessor communication during Mute mode or Stop mode,
1596:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         for wake up with 7-bit address mark detection.
1597:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         The MSB of the character sent by the transmitter should be equal to 1.
1598:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         It may also be used for character detection during normal reception,
1599:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Mute mode inactive (for example, end of block detection in ModBus protocol).
1600:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         In this case, the whole received character (8-bit) is compared to the ADD[7:0]
1601:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         value and CMF flag is set on match)
1602:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ADD           LL_USART_ConfigNodeAddress\n
1603:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR2          ADDM7         LL_USART_ConfigNodeAddress
1604:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1605:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  AddressLen This parameter can be one of the following values:
1606:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_ADDRESS_DETECT_4B
1607:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_ADDRESS_DETECT_7B
1608:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  NodeAddress 4 or 7 bit Address of the USART node.
1609:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1610:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1611:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_ConfigNodeAddress(USART_TypeDef *USARTx, uint32_t AddressLen, uint32_
1612:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1613:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR2, USART_CR2_ADD | USART_CR2_ADDM7,
1614:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****              (uint32_t)(AddressLen | (NodeAddress << USART_CR2_ADD_Pos)));
1615:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1616:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1617:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1618:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return 8 bit Address of the USART node as set in ADD field of CR2.
1619:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   If 4-bit Address Detection is selected in ADDM7,
1620:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         only 4bits (b3-b0) of returned value are relevant (b31-b4 are not relevant)
1621:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         If 7-bit Address Detection is selected in ADDM7,
1622:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         only 8bits (b7-b0) of returned value are relevant (b31-b8 are not relevant)
1623:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ADD           LL_USART_GetNodeAddress
1624:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1625:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Address of the USART node (Value between Min_Data=0 and Max_Data=255)
1626:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1627:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetNodeAddress(USART_TypeDef *USARTx)
1628:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1629:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_ADD) >> USART_CR2_ADD_Pos);
1630:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1631:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1632:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1633:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return Length of Node Address used in Address Detection mode (7-bit or 4-bit)
1634:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR2          ADDM7         LL_USART_GetNodeAddressLen
1635:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1636:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1637:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_ADDRESS_DETECT_4B
1638:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_ADDRESS_DETECT_7B
1639:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1640:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetNodeAddressLen(USART_TypeDef *USARTx)
1641:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1642:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_ADDM7));
1643:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1644:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1645:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1646:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Enable RTS HW Flow Control
1647:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_HWFLOW_INSTANCE(USARTx) can be used to check whether or not
1648:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Hardware Flow control feature is supported by the USARTx instance.
1649:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          RTSE          LL_USART_EnableRTSHWFlowCtrl
1650:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1651:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1652:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1653:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableRTSHWFlowCtrl(USART_TypeDef *USARTx)
1654:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1655:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR3, USART_CR3_RTSE);
1656:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1657:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1658:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1659:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Disable RTS HW Flow Control
1660:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_HWFLOW_INSTANCE(USARTx) can be used to check whether or not
1661:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Hardware Flow control feature is supported by the USARTx instance.
1662:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          RTSE          LL_USART_DisableRTSHWFlowCtrl
1663:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1664:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1665:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1666:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableRTSHWFlowCtrl(USART_TypeDef *USARTx)
1667:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1668:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR3, USART_CR3_RTSE);
1669:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1670:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1671:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1672:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Enable CTS HW Flow Control
1673:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_HWFLOW_INSTANCE(USARTx) can be used to check whether or not
1674:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Hardware Flow control feature is supported by the USARTx instance.
1675:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          CTSE          LL_USART_EnableCTSHWFlowCtrl
1676:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1677:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1678:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1679:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableCTSHWFlowCtrl(USART_TypeDef *USARTx)
1680:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1681:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR3, USART_CR3_CTSE);
1682:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1683:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1684:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1685:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Disable CTS HW Flow Control
1686:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_HWFLOW_INSTANCE(USARTx) can be used to check whether or not
1687:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Hardware Flow control feature is supported by the USARTx instance.
1688:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          CTSE          LL_USART_DisableCTSHWFlowCtrl
1689:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1690:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1691:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1692:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableCTSHWFlowCtrl(USART_TypeDef *USARTx)
1693:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1694:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR3, USART_CR3_CTSE);
1695:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1696:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1697:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1698:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure HW Flow Control mode (both CTS and RTS)
1699:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_HWFLOW_INSTANCE(USARTx) can be used to check whether or not
1700:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Hardware Flow control feature is supported by the USARTx instance.
1701:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          RTSE          LL_USART_SetHWFlowCtrl\n
1702:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR3          CTSE          LL_USART_SetHWFlowCtrl
1703:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1704:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  HardwareFlowControl This parameter can be one of the following values:
1705:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_NONE
1706:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_RTS
1707:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_CTS
1708:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_RTS_CTS
1709:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1710:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1711:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetHWFlowCtrl(USART_TypeDef *USARTx, uint32_t HardwareFlowControl)
 294              		.loc 3 1711 22 view .LVU76
 295              	.LBB59:
1712:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1713:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE, HardwareFlowControl);
 296              		.loc 3 1713 3 view .LVU77
 297 0030 8368     		ldr	r3, [r0, #8]
 298 0032 AA69     		ldr	r2, [r5, #24]
 299 0034 23F44073 		bic	r3, r3, #768
 300 0038 1343     		orrs	r3, r3, r2
 301 003a 8360     		str	r3, [r0, #8]
 302              	.LVL21:
 303              		.loc 3 1713 3 is_stmt 0 view .LVU78
 304              	.LBE59:
 305              	.LBE58:
 249:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 250:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /*---------------------------- USART BRR Configuration ---------------------
 251:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * Retrieve Clock frequency used for USART Peripheral
 252:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      */
 253:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     if (USARTx == USART1)
 306              		.loc 1 253 5 is_stmt 1 view .LVU79
 307              		.loc 1 253 8 is_stmt 0 view .LVU80
 308 003c 224B     		ldr	r3, .L31+4
 309 003e 9842     		cmp	r0, r3
 310 0040 20D1     		bne	.L13
 254:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 255:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       periphclk = LL_RCC_GetUSARTClockFreq(LL_RCC_USART1_CLKSOURCE);
 311              		.loc 1 255 7 is_stmt 1 view .LVU81
 312              		.loc 1 255 19 is_stmt 0 view .LVU82
 313 0042 0320     		movs	r0, #3
 314              	.LVL22:
 315              	.L29:
 256:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 257:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     else if (USARTx == USART2)
 258:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 259:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       periphclk = LL_RCC_GetUSARTClockFreq(LL_RCC_USART2_CLKSOURCE);
 316              		.loc 1 259 19 view .LVU83
 317 0044 FFF7FEFF 		bl	LL_RCC_GetUSARTClockFreq
 318              	.LVL23:
 319              	.L14:
 260:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 261:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     else if (USARTx == USART3)
 262:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 263:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       periphclk = LL_RCC_GetUSARTClockFreq(LL_RCC_USART3_CLKSOURCE);
 264:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 265:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #if defined(UART4)
 266:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     else if (USARTx == UART4)
 267:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 268:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       periphclk = LL_RCC_GetUARTClockFreq(LL_RCC_UART4_CLKSOURCE);
 269:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 270:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #endif /* UART4 */
 271:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #if defined(UART5)
 272:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     else if (USARTx == UART5)
 273:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 274:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       periphclk = LL_RCC_GetUARTClockFreq(LL_RCC_UART5_CLKSOURCE);
 275:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 276:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** #endif /* UART5 */
 277:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     else
 278:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 279:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       /* Nothing to do, as error code is already assigned to ERROR value */
 280:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 320              		.loc 1 280 5 is_stmt 1 view .LVU84
 281:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 282:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* Configure the USART Baud Rate :
 283:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        - prescaler value is required
 284:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        - valid baud rate value (different from 0) is required
 285:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        - Peripheral clock as returned by RCC service, should be valid (different from 0).
 286:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     */
 287:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     if ((periphclk != LL_RCC_PERIPH_FREQUENCY_NO)
 321              		.loc 1 287 5 view .LVU85
 322              		.loc 1 287 8 is_stmt 0 view .LVU86
 323 0048 48B3     		cbz	r0, .L19
 288:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****         && (USART_InitStruct->BaudRate != 0U))
 324              		.loc 1 288 29 view .LVU87
 325 004a 6A68     		ldr	r2, [r5, #4]
 326              		.loc 1 288 9 view .LVU88
 327 004c 3AB3     		cbz	r2, .L19
 328 004e 2B68     		ldr	r3, [r5]
 289:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 290:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       status = SUCCESS;
 329              		.loc 1 290 7 is_stmt 1 view .LVU89
 330              	.LVL24:
 291:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       LL_USART_SetBaudRate(USARTx,
 331              		.loc 1 291 7 view .LVU90
 332              	.LBB60:
 333              	.LBI60:
1714:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1715:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1716:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1717:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return HW Flow Control configuration (both CTS and RTS)
1718:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_HWFLOW_INSTANCE(USARTx) can be used to check whether or not
1719:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Hardware Flow control feature is supported by the USARTx instance.
1720:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          RTSE          LL_USART_GetHWFlowCtrl\n
1721:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         CR3          CTSE          LL_USART_GetHWFlowCtrl
1722:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1723:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1724:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_NONE
1725:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_RTS
1726:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_CTS
1727:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_HWCONTROL_RTS_CTS
1728:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1729:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetHWFlowCtrl(USART_TypeDef *USARTx)
1730:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1731:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE));
1732:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1733:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1734:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1735:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Enable One bit sampling method
1736:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          ONEBIT        LL_USART_EnableOneBitSamp
1737:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1738:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1739:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1740:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableOneBitSamp(USART_TypeDef *USARTx)
1741:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1742:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR3, USART_CR3_ONEBIT);
1743:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1744:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1745:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1746:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Disable One bit sampling method
1747:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          ONEBIT        LL_USART_DisableOneBitSamp
1748:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1749:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1750:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1751:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableOneBitSamp(USART_TypeDef *USARTx)
1752:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1753:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR3, USART_CR3_ONEBIT);
1754:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1755:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1756:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1757:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if One bit sampling method is enabled
1758:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          ONEBIT        LL_USART_IsEnabledOneBitSamp
1759:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1760:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
1761:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1762:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledOneBitSamp(USART_TypeDef *USARTx)
1763:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1764:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR3, USART_CR3_ONEBIT) == (USART_CR3_ONEBIT)) ? 1UL : 0UL);
1765:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1766:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1767:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1768:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Enable Overrun detection
1769:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          OVRDIS        LL_USART_EnableOverrunDetect
1770:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1771:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1772:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1773:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_EnableOverrunDetect(USART_TypeDef *USARTx)
1774:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1775:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   CLEAR_BIT(USARTx->CR3, USART_CR3_OVRDIS);
1776:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1777:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1778:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1779:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Disable Overrun detection
1780:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          OVRDIS        LL_USART_DisableOverrunDetect
1781:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1782:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1783:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1784:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_DisableOverrunDetect(USART_TypeDef *USARTx)
1785:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1786:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   SET_BIT(USARTx->CR3, USART_CR3_OVRDIS);
1787:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1788:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1789:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1790:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Indicate if Overrun detection is enabled
1791:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          OVRDIS        LL_USART_IsEnabledOverrunDetect
1792:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1793:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval State of bit (1 or 0).
1794:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1795:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_IsEnabledOverrunDetect(USART_TypeDef *USARTx)
1796:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1797:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return ((READ_BIT(USARTx->CR3, USART_CR3_OVRDIS) != USART_CR3_OVRDIS) ? 1UL : 0UL);
1798:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1799:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1800:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1801:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Select event type for Wake UP Interrupt Flag (WUS[1:0] bits)
1802:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_WAKEUP_FROMSTOP_INSTANCE(USARTx) can be used to check whether or not
1803:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Wake-up from Stop mode feature is supported by the USARTx instance.
1804:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          WUS           LL_USART_SetWKUPType
1805:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1806:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  Type This parameter can be one of the following values:
1807:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ON_ADDRESS
1808:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ON_STARTBIT
1809:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ON_RXNE
1810:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1811:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1812:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetWKUPType(USART_TypeDef *USARTx, uint32_t Type)
1813:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1814:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   MODIFY_REG(USARTx->CR3, USART_CR3_WUS, Type);
1815:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1816:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1817:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1818:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Return event type for Wake UP Interrupt Flag (WUS[1:0] bits)
1819:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Macro @ref IS_UART_WAKEUP_FROMSTOP_INSTANCE(USARTx) can be used to check whether or not
1820:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         Wake-up from Stop mode feature is supported by the USARTx instance.
1821:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll CR3          WUS           LL_USART_GetWKUPType
1822:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1823:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval Returned value can be one of the following values:
1824:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ON_ADDRESS
1825:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ON_STARTBIT
1826:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_WAKEUP_ON_RXNE
1827:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1828:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE uint32_t LL_USART_GetWKUPType(USART_TypeDef *USARTx)
1829:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1830:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   return (uint32_t)(READ_BIT(USARTx->CR3, USART_CR3_WUS));
1831:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
1832:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1833:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** /**
1834:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @brief  Configure USART BRR register for achieving expected Baud Rate value.
1835:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Compute and set USARTDIV value in BRR Register (full BRR content)
1836:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         according to used Peripheral Clock, Oversampling mode, and expected Baud Rate values
1837:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   Peripheral clock and Baud rate values provided as function parameters should be valid
1838:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         (Baud rate value != 0)
1839:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @note   In case of oversampling by 16 and 8, BRR content must be greater than or equal to 16d.
1840:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @rmtoll BRR          BRR           LL_USART_SetBaudRate
1841:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  USARTx USART Instance
1842:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  PeriphClk Peripheral Clock
1843:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  PrescalerValue This parameter can be one of the following values:
1844:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV1
1845:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV2
1846:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV4
1847:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV6
1848:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV8
1849:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV10
1850:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV12
1851:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV16
1852:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV32
1853:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV64
1854:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV128
1855:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_PRESCALER_DIV256
1856:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  OverSampling This parameter can be one of the following values:
1857:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_OVERSAMPLING_16
1858:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   *         @arg @ref LL_USART_OVERSAMPLING_8
1859:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @param  BaudRate Baud Rate
1860:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   * @retval None
1861:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   */
1862:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** __STATIC_INLINE void LL_USART_SetBaudRate(USART_TypeDef *USARTx, uint32_t PeriphClk, uint32_t Presc
 334              		.loc 3 1862 22 view .LVU91
 335              	.LBB61:
1863:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                           uint32_t OverSampling,
1864:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****                                           uint32_t BaudRate)
1865:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
1866:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   uint32_t usartdiv;
 336              		.loc 3 1866 3 view .LVU92
1867:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   register uint32_t brrtemp;
 337              		.loc 3 1867 3 view .LVU93
1868:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** 
1869:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   if (PrescalerValue > LL_USART_PRESCALER_DIV256)
 338              		.loc 3 1869 3 view .LVU94
 339              		.loc 3 1869 6 is_stmt 0 view .LVU95
 340 0050 0B2B     		cmp	r3, #11
 341 0052 15D8     		bhi	.L22
1870:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   {
1871:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****     /* Do not overstep the size of USART_PRESCALER_TAB */
1872:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   }
1873:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   else if (OverSampling == LL_USART_OVERSAMPLING_8)
 342              		.loc 3 1873 8 is_stmt 1 view .LVU96
 343 0054 1D49     		ldr	r1, .L31+8
 344 0056 51F82330 		ldr	r3, [r1, r3, lsl #2]
 345              	.LVL25:
 346              		.loc 3 1873 11 is_stmt 0 view .LVU97
 347 005a E969     		ldr	r1, [r5, #28]
 348 005c B0FBF3F0 		udiv	r0, r0, r3
 349              	.LVL26:
 350              		.loc 3 1873 11 view .LVU98
 351 0060 B1F5004F 		cmp	r1, #32768
 352 0064 4FEA5203 		lsr	r3, r2, #1
 353 0068 25D1     		bne	.L20
1874:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   {
1875:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****     usartdiv = (uint16_t)(__LL_USART_DIV_SAMPLING8(PeriphClk, (uint8_t)PrescalerValue, BaudRate));
 354              		.loc 3 1875 5 is_stmt 1 view .LVU99
 355              		.loc 3 1875 27 is_stmt 0 view .LVU100
 356 006a 03EB4003 		add	r3, r3, r0, lsl #1
 357 006e B3FBF2F3 		udiv	r3, r3, r2
 358              	.LVL27:
1876:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****     brrtemp = usartdiv & 0xFFF0U;
 359              		.loc 3 1876 5 is_stmt 1 view .LVU101
 360              		.loc 3 1876 13 is_stmt 0 view .LVU102
 361 0072 4FF6F072 		movw	r2, #65520
 362              	.LVL28:
 363              		.loc 3 1876 13 view .LVU103
 364 0076 1A40     		ands	r2, r2, r3
 365              	.LVL29:
1877:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****     brrtemp |= (uint16_t)((usartdiv & (uint16_t)0x000FU) >> 1U);
 366              		.loc 3 1877 5 is_stmt 1 view .LVU104
 367              		.loc 3 1877 16 is_stmt 0 view .LVU105
 368 0078 C3F34203 		ubfx	r3, r3, #1, #3
 369              	.LVL30:
 370              		.loc 3 1877 13 view .LVU106
 371 007c 1343     		orrs	r3, r3, r2
 372              	.LVL31:
1878:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****     USARTx->BRR = brrtemp;
 373              		.loc 3 1878 5 is_stmt 1 view .LVU107
 374              	.L30:
1879:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   }
1880:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   else
1881:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****   {
1882:../../..\CubeG4\include/stm32g4xx_ll_usart.h ****     USARTx->BRR = (uint16_t)(__LL_USART_DIV_SAMPLING16(PeriphClk, (uint8_t)PrescalerValue, BaudRate
 375              		.loc 3 1882 17 is_stmt 0 view .LVU108
 376 007e E360     		str	r3, [r4, #12]
 377              	.LVL32:
 378              	.L22:
 379              		.loc 3 1882 17 view .LVU109
 380              	.LBE61:
 381              	.LBE60:
 290:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       LL_USART_SetBaudRate(USARTx,
 382              		.loc 1 290 14 view .LVU110
 383 0080 0020     		movs	r0, #0
 384 0082 0DE0     		b	.L18
 385              	.LVL33:
 386              	.L13:
 257:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 387              		.loc 1 257 10 is_stmt 1 view .LVU111
 257:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 388              		.loc 1 257 13 is_stmt 0 view .LVU112
 389 0084 124B     		ldr	r3, .L31+12
 390 0086 9842     		cmp	r0, r3
 391 0088 01D1     		bne	.L15
 259:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 392              		.loc 1 259 7 is_stmt 1 view .LVU113
 259:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 393              		.loc 1 259 19 is_stmt 0 view .LVU114
 394 008a 0C20     		movs	r0, #12
 395              	.LVL34:
 259:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 396              		.loc 1 259 19 view .LVU115
 397 008c DAE7     		b	.L29
 398              	.LVL35:
 399              	.L15:
 261:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 400              		.loc 1 261 10 is_stmt 1 view .LVU116
 261:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 401              		.loc 1 261 13 is_stmt 0 view .LVU117
 402 008e 114B     		ldr	r3, .L31+16
 403 0090 9842     		cmp	r0, r3
 404 0092 01D1     		bne	.L16
 263:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 405              		.loc 1 263 7 is_stmt 1 view .LVU118
 263:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 406              		.loc 1 263 19 is_stmt 0 view .LVU119
 407 0094 3020     		movs	r0, #48
 408              	.LVL36:
 263:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 409              		.loc 1 263 19 view .LVU120
 410 0096 D5E7     		b	.L29
 411              	.LVL37:
 412              	.L16:
 266:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 413              		.loc 1 266 10 is_stmt 1 view .LVU121
 266:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 414              		.loc 1 266 13 is_stmt 0 view .LVU122
 415 0098 0F4B     		ldr	r3, .L31+20
 416 009a 9842     		cmp	r0, r3
 417 009c 07D0     		beq	.L17
 418              	.LVL38:
 419              	.L19:
 206:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   uint32_t periphclk = LL_RCC_PERIPH_FREQUENCY_NO;
 420              		.loc 1 206 15 view .LVU123
 421 009e 0120     		movs	r0, #1
 422              	.LVL39:
 423              	.L18:
 292:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                            periphclk,
 293:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                            USART_InitStruct->PrescalerValue,
 294:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                            USART_InitStruct->OverSampling,
 295:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                            USART_InitStruct->BaudRate);
 296:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 297:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       /* Check BRR is greater than or equal to 16d */
 298:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_LL_USART_BRR_MIN(USARTx->BRR));
 424              		.loc 1 298 7 is_stmt 1 view .LVU124
 299:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 300:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       /* Check BRR is lower than or equal to 0xFFFF */
 301:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_LL_USART_BRR_MAX(USARTx->BRR));
 425              		.loc 1 301 7 view .LVU125
 302:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 303:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 304:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /*---------------------------- USART PRESC Configuration -----------------------
 305:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * Configure USARTx PRESC (Prescaler) with parameters:
 306:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      * - PrescalerValue: USART_PRESC_PRESCALER bits according to USART_InitStruct->PrescalerValue v
 307:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      */
 308:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     LL_USART_SetPrescaler(USARTx, USART_InitStruct->PrescalerValue);
 426              		.loc 1 308 5 view .LVU126
 427              	.LBB63:
 428              	.LBI63:
1206:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 429              		.loc 3 1206 22 view .LVU127
 430              	.LBB64:
1208:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 431              		.loc 3 1208 3 view .LVU128
 432 00a0 E26A     		ldr	r2, [r4, #44]
 433 00a2 2B88     		ldrh	r3, [r5]
 434 00a4 22F00F02 		bic	r2, r2, #15
 435 00a8 1343     		orrs	r3, r3, r2
 436 00aa E362     		str	r3, [r4, #44]
 437              	.LVL40:
 438              	.L12:
1208:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 439              		.loc 3 1208 3 is_stmt 0 view .LVU129
 440              	.LBE64:
 441              	.LBE63:
 309:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 310:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* Endif (=> USART not in Disabled state => return ERROR) */
 311:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 312:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   return (status);
 442              		.loc 1 312 3 is_stmt 1 view .LVU130
 313:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** }
 443              		.loc 1 313 1 is_stmt 0 view .LVU131
 444 00ac 38BD     		pop	{r3, r4, r5, pc}
 445              	.LVL41:
 446              	.L17:
 268:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 447              		.loc 1 268 7 is_stmt 1 view .LVU132
 268:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 448              		.loc 1 268 19 is_stmt 0 view .LVU133
 449 00ae C020     		movs	r0, #192
 450              	.LVL42:
 268:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 451              		.loc 1 268 19 view .LVU134
 452 00b0 FFF7FEFF 		bl	LL_RCC_GetUARTClockFreq
 453              	.LVL43:
 268:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 454              		.loc 1 268 19 view .LVU135
 455 00b4 C8E7     		b	.L14
 456              	.LVL44:
 457              	.L20:
 458              	.LBB65:
 459              	.LBB62:
 460              		.loc 3 1882 5 is_stmt 1 view .LVU136
 461              		.loc 3 1882 30 is_stmt 0 view .LVU137
 462 00b6 0344     		add	r3, r3, r0
 463 00b8 B3FBF2F3 		udiv	r3, r3, r2
 464 00bc 9BB2     		uxth	r3, r3
 465 00be DEE7     		b	.L30
 466              	.LVL45:
 467              	.L21:
 468              		.loc 3 1882 30 view .LVU138
 469              	.LBE62:
 470              	.LBE65:
 206:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   uint32_t periphclk = LL_RCC_PERIPH_FREQUENCY_NO;
 471              		.loc 1 206 15 view .LVU139
 472 00c0 0120     		movs	r0, #1
 473              	.LVL46:
 206:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   uint32_t periphclk = LL_RCC_PERIPH_FREQUENCY_NO;
 474              		.loc 1 206 15 view .LVU140
 475 00c2 F3E7     		b	.L12
 476              	.L32:
 477              		.align	2
 478              	.L31:
 479 00c4 F369FFEF 		.word	-268473869
 480 00c8 00380140 		.word	1073821696
 481 00cc 00000000 		.word	.LANCHOR0
 482 00d0 00440040 		.word	1073759232
 483 00d4 00480040 		.word	1073760256
 484 00d8 004C0040 		.word	1073761280
 485              		.cfi_endproc
 486              	.LFE559:
 488              		.section	.text.LL_USART_StructInit,"ax",%progbits
 489              		.align	1
 490              		.global	LL_USART_StructInit
 491              		.syntax unified
 492              		.thumb
 493              		.thumb_func
 494              		.fpu fpv4-sp-d16
 496              	LL_USART_StructInit:
 497              	.LVL47:
 498              	.LFB560:
 314:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 315:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /**
 316:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @brief Set each @ref LL_USART_InitTypeDef field to default value.
 317:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @param USART_InitStruct pointer to a @ref LL_USART_InitTypeDef structure
 318:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *                         whose fields will be set to default values.
 319:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @retval None
 320:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 321:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 322:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** void LL_USART_StructInit(LL_USART_InitTypeDef *USART_InitStruct)
 323:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** {
 499              		.loc 1 323 1 is_stmt 1 view -0
 500              		.cfi_startproc
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 324:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* Set USART_InitStruct fields to default values */
 325:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->PrescalerValue      = LL_USART_PRESCALER_DIV1;
 504              		.loc 1 325 3 view .LVU142
 326:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->BaudRate            = 9600U;
 505              		.loc 1 326 41 is_stmt 0 view .LVU143
 506 0000 0023     		movs	r3, #0
 507 0002 4FF41652 		mov	r2, #9600
 508 0006 C0E90032 		strd	r3, r2, [r0]
 327:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->DataWidth           = LL_USART_DATAWIDTH_8B;
 509              		.loc 1 327 3 is_stmt 1 view .LVU144
 328:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->StopBits            = LL_USART_STOPBITS_1;
 329:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->Parity              = LL_USART_PARITY_NONE ;
 330:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->TransferDirection   = LL_USART_DIRECTION_TX_RX;
 510              		.loc 1 330 41 is_stmt 0 view .LVU145
 511 000a 0C22     		movs	r2, #12
 328:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->StopBits            = LL_USART_STOPBITS_1;
 512              		.loc 1 328 41 view .LVU146
 513 000c C0E90233 		strd	r3, r3, [r0, #8]
 329:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->TransferDirection   = LL_USART_DIRECTION_TX_RX;
 514              		.loc 1 329 3 is_stmt 1 view .LVU147
 329:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->TransferDirection   = LL_USART_DIRECTION_TX_RX;
 515              		.loc 1 329 41 is_stmt 0 view .LVU148
 516 0010 0361     		str	r3, [r0, #16]
 517              		.loc 1 330 3 is_stmt 1 view .LVU149
 331:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->HardwareFlowControl = LL_USART_HWCONTROL_NONE;
 518              		.loc 1 331 41 is_stmt 0 view .LVU150
 519 0012 C0E90523 		strd	r2, r3, [r0, #20]
 332:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_InitStruct->OverSampling        = LL_USART_OVERSAMPLING_16;
 520              		.loc 1 332 3 is_stmt 1 view .LVU151
 521              		.loc 1 332 41 is_stmt 0 view .LVU152
 522 0016 C361     		str	r3, [r0, #28]
 333:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** }
 523              		.loc 1 333 1 view .LVU153
 524 0018 7047     		bx	lr
 525              		.cfi_endproc
 526              	.LFE560:
 528              		.section	.text.LL_USART_ClockInit,"ax",%progbits
 529              		.align	1
 530              		.global	LL_USART_ClockInit
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv4-sp-d16
 536              	LL_USART_ClockInit:
 537              	.LVL48:
 538              	.LFB561:
 334:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 335:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /**
 336:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @brief  Initialize USART Clock related settings according to the
 337:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *         specified parameters in the USART_ClockInitStruct.
 338:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @note   As some bits in USART configuration registers can only be written when the USART is dis
 339:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *         USART Peripheral should be in disabled state prior calling this function. Otherwise, ER
 340:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @param  USARTx USART Instance
 341:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @param  USART_ClockInitStruct pointer to a @ref LL_USART_ClockInitTypeDef structure
 342:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *         that contains the Clock configuration information for the specified USART peripheral.
 343:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @retval An ErrorStatus enumeration value:
 344:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *          - SUCCESS: USART registers related to Clock settings are initialized according to USAR
 345:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *          - ERROR: Problem occurred during USART Registers initialization
 346:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 347:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** ErrorStatus LL_USART_ClockInit(USART_TypeDef *USARTx, LL_USART_ClockInitTypeDef *USART_ClockInitStr
 348:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** {
 539              		.loc 1 348 1 is_stmt 1 view -0
 540              		.cfi_startproc
 541              		@ args = 0, pretend = 0, frame = 0
 542              		@ frame_needed = 0, uses_anonymous_args = 0
 349:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ErrorStatus status = SUCCESS;
 543              		.loc 1 349 3 view .LVU155
 350:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 351:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* Check USART Instance and Clock signal output parameters */
 352:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_UART_INSTANCE(USARTx));
 544              		.loc 1 352 3 view .LVU156
 353:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   assert_param(IS_LL_USART_CLOCKOUTPUT(USART_ClockInitStruct->ClockOutput));
 545              		.loc 1 353 3 view .LVU157
 354:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 355:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* USART needs to be in disabled state, in order to be able to configure some bits in
 356:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****      CRx registers */
 357:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   if (LL_USART_IsEnabled(USARTx) == 0U)
 546              		.loc 1 357 3 view .LVU158
 547              	.LBB70:
 548              	.LBI70:
 641:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 549              		.loc 3 641 26 view .LVU159
 550              	.LBB71:
 643:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 551              		.loc 3 643 3 view .LVU160
 643:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 552              		.loc 3 643 12 is_stmt 0 view .LVU161
 553 0000 0268     		ldr	r2, [r0]
 643:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 554              		.loc 3 643 73 view .LVU162
 555 0002 12F00102 		ands	r2, r2, #1
 556              	.LBE71:
 557              	.LBE70:
 348:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   ErrorStatus status = SUCCESS;
 558              		.loc 1 348 1 view .LVU163
 559 0006 30B5     		push	{r4, r5, lr}
 560              		.cfi_def_cfa_offset 12
 561              		.cfi_offset 4, -12
 562              		.cfi_offset 5, -8
 563              		.cfi_offset 14, -4
 564              	.LBB73:
 565              	.LBB72:
 643:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 566              		.loc 3 643 73 view .LVU164
 567 0008 15D1     		bne	.L37
 568              	.LVL49:
 643:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 569              		.loc 3 643 73 view .LVU165
 570              	.LBE72:
 571              	.LBE73:
 358:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 359:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /*---------------------------- USART CR2 Configuration -----------------------*/
 360:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     /* If Clock signal has to be output */
 361:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     if (USART_ClockInitStruct->ClockOutput == LL_USART_CLOCK_DISABLE)
 572              		.loc 1 361 5 is_stmt 1 view .LVU166
 573              		.loc 1 361 8 is_stmt 0 view .LVU167
 574 000a 0C68     		ldr	r4, [r1]
 575 000c 2CB9     		cbnz	r4, .L36
 362:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 363:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       /* Deactivate Clock signal delivery :
 364:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        * - Disable Clock Output:        USART_CR2_CLKEN cleared
 365:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        */
 366:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       LL_USART_DisableSCLKOutput(USARTx);
 576              		.loc 1 366 7 is_stmt 1 view .LVU168
 577              	.LVL50:
 578              	.LBB74:
 579              	.LBI74:
1257:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** {
 580              		.loc 3 1257 22 view .LVU169
 581              	.LBB75:
1259:../../..\CubeG4\include/stm32g4xx_ll_usart.h **** }
 582              		.loc 3 1259 3 view .LVU170
 583 000e 4368     		ldr	r3, [r0, #4]
 584 0010 23F40063 		bic	r3, r3, #2048
 585 0014 4360     		str	r3, [r0, #4]
 586              	.LBE75:
 587              	.LBE74:
 349:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 588              		.loc 1 349 15 is_stmt 0 view .LVU171
 589 0016 2046     		mov	r0, r4
 590              	.LVL51:
 591              	.L35:
 367:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 368:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     else
 369:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     {
 370:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       /* Ensure USART instance is USART capable */
 371:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_USART_INSTANCE(USARTx));
 372:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 373:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       /* Check clock related parameters */
 374:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_LL_USART_CLOCKPOLARITY(USART_ClockInitStruct->ClockPolarity));
 375:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_LL_USART_CLOCKPHASE(USART_ClockInitStruct->ClockPhase));
 376:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_LL_USART_LASTBITCLKOUTPUT(USART_ClockInitStruct->LastBitClockPulse));
 377:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 378:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       /*---------------------------- USART CR2 Configuration -----------------------
 379:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        * Configure USARTx CR2 (Clock signal related bits) with parameters:
 380:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        * - Enable Clock Output:         USART_CR2_CLKEN set
 381:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        * - Clock Polarity:              USART_CR2_CPOL bit according to USART_ClockInitStruct->Cloc
 382:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        * - Clock Phase:                 USART_CR2_CPHA bit according to USART_ClockInitStruct->Cloc
 383:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        * - Last Bit Clock Pulse Output: USART_CR2_LBCL bit according to USART_ClockInitStruct->Last
 384:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****        */
 385:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       MODIFY_REG(USARTx->CR2,
 386:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                  USART_CR2_CLKEN | USART_CR2_CPHA | USART_CR2_CPOL | USART_CR2_LBCL,
 387:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                  USART_CR2_CLKEN | USART_ClockInitStruct->ClockPolarity |
 388:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                  USART_ClockInitStruct->ClockPhase | USART_ClockInitStruct->LastBitClockPulse);
 389:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     }
 390:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 391:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* Else (USART not in Disabled state => return ERROR */
 392:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   else
 393:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   {
 394:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****     status = ERROR;
 395:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 396:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 397:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   return (status);
 592              		.loc 1 397 3 is_stmt 1 view .LVU172
 398:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** }
 593              		.loc 1 398 1 is_stmt 0 view .LVU173
 594 0018 30BD     		pop	{r4, r5, pc}
 595              	.LVL52:
 596              	.L36:
 371:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 597              		.loc 1 371 7 is_stmt 1 view .LVU174
 374:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_LL_USART_CLOCKPHASE(USART_ClockInitStruct->ClockPhase));
 598              		.loc 1 374 7 view .LVU175
 375:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****       assert_param(IS_LL_USART_LASTBITCLKOUTPUT(USART_ClockInitStruct->LastBitClockPulse));
 599              		.loc 1 375 7 view .LVU176
 376:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 600              		.loc 1 376 7 view .LVU177
 385:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                  USART_CR2_CLKEN | USART_CR2_CPHA | USART_CR2_CPOL | USART_CR2_LBCL,
 601              		.loc 1 385 7 view .LVU178
 602 001a D1E90135 		ldrd	r3, r5, [r1, #4]
 603 001e 4468     		ldr	r4, [r0, #4]
 604 0020 C968     		ldr	r1, [r1, #12]
 605              	.LVL53:
 385:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****                  USART_CR2_CLKEN | USART_CR2_CPHA | USART_CR2_CPOL | USART_CR2_LBCL,
 606              		.loc 1 385 7 is_stmt 0 view .LVU179
 607 0022 2B43     		orrs	r3, r3, r5
 608 0024 24F47064 		bic	r4, r4, #3840
 609 0028 2343     		orrs	r3, r3, r4
 610 002a 0B43     		orrs	r3, r3, r1
 611 002c 43F40063 		orr	r3, r3, #2048
 612 0030 4360     		str	r3, [r0, #4]
 349:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 613              		.loc 1 349 15 view .LVU180
 614 0032 1046     		mov	r0, r2
 615              	.LVL54:
 349:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 616              		.loc 1 349 15 view .LVU181
 617 0034 F0E7     		b	.L35
 618              	.LVL55:
 619              	.L37:
 394:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 620              		.loc 1 394 12 view .LVU182
 621 0036 0120     		movs	r0, #1
 622              	.LVL56:
 394:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   }
 623              		.loc 1 394 12 view .LVU183
 624 0038 EEE7     		b	.L35
 625              		.cfi_endproc
 626              	.LFE561:
 628              		.section	.text.LL_USART_ClockStructInit,"ax",%progbits
 629              		.align	1
 630              		.global	LL_USART_ClockStructInit
 631              		.syntax unified
 632              		.thumb
 633              		.thumb_func
 634              		.fpu fpv4-sp-d16
 636              	LL_USART_ClockStructInit:
 637              	.LVL57:
 638              	.LFB562:
 399:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** 
 400:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** /**
 401:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @brief Set each field of a @ref LL_USART_ClockInitTypeDef type structure to default value.
 402:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @param USART_ClockInitStruct pointer to a @ref LL_USART_ClockInitTypeDef structure
 403:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   *                              whose fields will be set to default values.
 404:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   * @retval None
 405:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   */
 406:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** void LL_USART_ClockStructInit(LL_USART_ClockInitTypeDef *USART_ClockInitStruct)
 407:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** {
 639              		.loc 1 407 1 is_stmt 1 view -0
 640              		.cfi_startproc
 641              		@ args = 0, pretend = 0, frame = 0
 642              		@ frame_needed = 0, uses_anonymous_args = 0
 643              		@ link register save eliminated.
 408:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   /* Set LL_USART_ClockInitStruct fields with default values */
 409:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_ClockInitStruct->ClockOutput       = LL_USART_CLOCK_DISABLE;
 644              		.loc 1 409 3 view .LVU185
 645              		.loc 1 409 44 is_stmt 0 view .LVU186
 646 0000 0023     		movs	r3, #0
 410:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_ClockInitStruct->ClockPolarity     = LL_USART_POLARITY_LOW;            /* Not relevant when
 647              		.loc 1 410 44 view .LVU187
 648 0002 C0E90033 		strd	r3, r3, [r0]
 411:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_ClockInitStruct->ClockPhase        = LL_USART_PHASE_1EDGE;             /* Not relevant when
 649              		.loc 1 411 3 is_stmt 1 view .LVU188
 412:../../..\CubeG4\src/stm32g4xx_ll_usart.c ****   USART_ClockInitStruct->LastBitClockPulse = LL_USART_LASTCLKPULSE_NO_OUTPUT;  /* Not relevant when
 650              		.loc 1 412 44 is_stmt 0 view .LVU189
 651 0006 C0E90233 		strd	r3, r3, [r0, #8]
 413:../../..\CubeG4\src/stm32g4xx_ll_usart.c **** }
 652              		.loc 1 413 1 view .LVU190
 653 000a 7047     		bx	lr
 654              		.cfi_endproc
 655              	.LFE562:
 657              		.section	.rodata.USART_PRESCALER_TAB,"a"
 658              		.align	2
 659              		.set	.LANCHOR0,. + 0
 662              	USART_PRESCALER_TAB:
 663 0000 01000000 		.word	1
 664 0004 02000000 		.word	2
 665 0008 04000000 		.word	4
 666 000c 06000000 		.word	6
 667 0010 08000000 		.word	8
 668 0014 0A000000 		.word	10
 669 0018 0C000000 		.word	12
 670 001c 10000000 		.word	16
 671 0020 20000000 		.word	32
 672 0024 40000000 		.word	64
 673 0028 80000000 		.word	128
 674 002c 00010000 		.word	256
 675              		.text
 676              	.Letext0:
 677              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 678              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 679              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 680              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 681              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 682              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
 683              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_ll_rcc.h"
