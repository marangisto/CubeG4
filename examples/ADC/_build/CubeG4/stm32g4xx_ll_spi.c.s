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
  13              		.file	"stm32g4xx_ll_spi.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_SPI_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_SPI_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_SPI_DeInit:
  27              	.LVL0:
  28              	.LFB430:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_spi.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @file    stm32g4xx_ll_spi.c
   4:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief   SPI LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #include "stm32g4xx_ll_spi.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #include "stm32g4xx_ll_bus.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #include "stm32g4xx_ll_rcc.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  26:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #ifdef  USE_FULL_ASSERT
  27:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #include "stm32_assert.h"
  28:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #else
  29:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define assert_param(expr) ((void)0U)
  30:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #endif
  31:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  32:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @addtogroup STM32G4xx_LL_Driver
  33:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
  34:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
  35:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined (SPI1) || defined (SPI2) || defined (SPI3) || defined (SPI4)
  37:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  38:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @addtogroup SPI_LL
  39:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
  40:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
  41:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  42:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private types -------------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private variables ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  45:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private constants ---------------------------------------------------------*/
  46:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @defgroup SPI_LL_Private_Constants SPI Private Constants
  47:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
  48:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
  49:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* SPI registers Masks */
  50:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define SPI_CR1_CLEAR_MASK                 (SPI_CR1_CPHA    | SPI_CR1_CPOL     | SPI_CR1_MSTR   | \
  51:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                             SPI_CR1_BR      | SPI_CR1_LSBFIRST | SPI_CR1_SSI    | \
  52:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                             SPI_CR1_SSM     | SPI_CR1_RXONLY   | SPI_CR1_CRCL   | \
  53:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                             SPI_CR1_CRCNEXT | SPI_CR1_CRCEN    | SPI_CR1_BIDIOE | \
  54:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                             SPI_CR1_BIDIMODE)
  55:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
  56:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @}
  57:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
  58:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  59:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private macros ------------------------------------------------------------*/
  60:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @defgroup SPI_LL_Private_Macros SPI Private Macros
  61:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
  62:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
  63:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_TRANSFER_DIRECTION(__VALUE__) (((__VALUE__) == LL_SPI_FULL_DUPLEX)       \
  64:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                                  || ((__VALUE__) == LL_SPI_SIMPLEX_RX)     \
  65:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                                  || ((__VALUE__) == LL_SPI_HALF_DUPLEX_RX) \
  66:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                                  || ((__VALUE__) == LL_SPI_HALF_DUPLEX_TX))
  67:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  68:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_MODE(__VALUE__) (((__VALUE__) == LL_SPI_MODE_MASTER) \
  69:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                    || ((__VALUE__) == LL_SPI_MODE_SLAVE))
  70:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  71:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_DATAWIDTH(__VALUE__) (((__VALUE__) == LL_SPI_DATAWIDTH_4BIT)     \
  72:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_5BIT)  \
  73:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_6BIT)  \
  74:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_7BIT)  \
  75:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_8BIT)  \
  76:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_9BIT)  \
  77:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_10BIT) \
  78:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_11BIT) \
  79:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_12BIT) \
  80:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_13BIT) \
  81:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_14BIT) \
  82:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_15BIT) \
  83:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                         || ((__VALUE__) == LL_SPI_DATAWIDTH_16BIT))
  84:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  85:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_POLARITY(__VALUE__) (((__VALUE__) == LL_SPI_POLARITY_LOW) \
  86:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_POLARITY_HIGH))
  87:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  88:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_PHASE(__VALUE__) (((__VALUE__) == LL_SPI_PHASE_1EDGE) \
  89:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                     || ((__VALUE__) == LL_SPI_PHASE_2EDGE))
  90:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  91:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_NSS(__VALUE__) (((__VALUE__) == LL_SPI_NSS_SOFT)          \
  92:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                   || ((__VALUE__) == LL_SPI_NSS_HARD_INPUT) \
  93:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                   || ((__VALUE__) == LL_SPI_NSS_HARD_OUTPUT))
  94:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  95:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_BAUDRATE(__VALUE__) (((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV2)      \
  96:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV4)   \
  97:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV8)   \
  98:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV16)  \
  99:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV32)  \
 100:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV64)  \
 101:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV128) \
 102:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV256))
 103:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 104:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_BITORDER(__VALUE__) (((__VALUE__) == LL_SPI_LSB_FIRST) \
 105:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                        || ((__VALUE__) == LL_SPI_MSB_FIRST))
 106:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 107:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_CRCCALCULATION(__VALUE__) (((__VALUE__) == LL_SPI_CRCCALCULATION_ENABLE) \
 108:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                              || ((__VALUE__) == LL_SPI_CRCCALCULATION_DISABLE))
 109:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 110:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_SPI_CRC_POLYNOMIAL(__VALUE__) ((__VALUE__) >= 0x1U)
 111:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 112:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 113:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @}
 114:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 116:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private function prototypes -----------------------------------------------*/
 117:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 118:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Exported functions --------------------------------------------------------*/
 119:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @addtogroup SPI_LL_Exported_Functions
 120:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
 121:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 122:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 123:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @addtogroup SPI_LL_EF_Init
 124:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
 125:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 126:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 127:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 128:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief  De-initialize the SPI registers to their default reset values.
 129:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  SPIx SPI Instance
 130:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @retval An ErrorStatus enumeration value:
 131:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *          - SUCCESS: SPI registers are de-initialized
 132:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *          - ERROR: SPI registers are not de-initialized
 133:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 134:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** ErrorStatus LL_SPI_DeInit(SPI_TypeDef *SPIx)
 135:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
  30              		.loc 1 135 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 136:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ErrorStatus status = ERROR;
  35              		.loc 1 136 3 view .LVU1
 137:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 138:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Check the parameters */
 139:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_SPI_ALL_INSTANCE(SPIx));
  36              		.loc 1 139 3 view .LVU2
 140:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 141:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined(SPI1)
 142:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   if (SPIx == SPI1)
  37              		.loc 1 142 3 view .LVU3
  38              		.loc 1 142 6 is_stmt 0 view .LVU4
  39 0000 154B     		ldr	r3, .L8
  40 0002 9842     		cmp	r0, r3
  41 0004 0BD1     		bne	.L2
 143:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
 144:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Force reset of SPI clock */
 145:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_SPI1);
  42              		.loc 1 145 5 is_stmt 1 view .LVU5
  43              	.LBB18:
  44              	.LBI18:
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
  48              	.LBB19:
1542:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1543:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB2RSTR, Periphs);
  49              		.loc 2 1543 3 view .LVU7
  50 0006 03F56043 		add	r3, r3, #57344
  51 000a 1A6C     		ldr	r2, [r3, #64]
  52 000c 42F48052 		orr	r2, r2, #4096
  53 0010 1A64     		str	r2, [r3, #64]
  54              	.LVL2:
  55              		.loc 2 1543 3 is_stmt 0 view .LVU8
  56              	.LBE19:
  57              	.LBE18:
 146:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 147:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Release reset of SPI clock */
 148:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_SPI1);
  58              		.loc 1 148 5 is_stmt 1 view .LVU9
  59              	.LBB20:
  60              	.LBI20:
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
  62              	.LBB21:
1578:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1579:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB2RSTR, Periphs);
  63              		.loc 2 1579 3 view .LVU11
  64 0012 1A6C     		ldr	r2, [r3, #64]
  65 0014 22F48052 		bic	r2, r2, #4096
  66 0018 1A64     		str	r2, [r3, #64]
  67              	.LVL3:
  68              		.loc 2 1579 3 is_stmt 0 view .LVU12
  69              	.LBE21:
  70              	.LBE20:
 149:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 150:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     status = SUCCESS;
 151:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
 152:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #endif /* SPI1 */
 153:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined(SPI2)
 154:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   if (SPIx == SPI2)
  71              		.loc 1 154 3 is_stmt 1 view .LVU13
 155:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
 156:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Force reset of SPI clock */
 157:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_SPI2);
 158:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 159:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Release reset of SPI clock */
 160:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_SPI2);
 161:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 162:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     status = SUCCESS;
 163:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
 164:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #endif /* SPI2 */
 165:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined(SPI3)
 166:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   if (SPIx == SPI3)
  72              		.loc 1 166 3 view .LVU14
  73              	.L6:
  74              		.loc 1 166 3 view .LVU15
 162:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
  75              		.loc 1 162 12 is_stmt 0 view .LVU16
  76 001a 0020     		movs	r0, #0
  77              	.LVL4:
 162:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
  78              		.loc 1 162 12 view .LVU17
  79 001c 7047     		bx	lr
  80              	.LVL5:
  81              	.L2:
 154:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
  82              		.loc 1 154 3 is_stmt 1 view .LVU18
 154:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
  83              		.loc 1 154 6 is_stmt 0 view .LVU19
  84 001e 0F4B     		ldr	r3, .L8+4
  85 0020 9842     		cmp	r0, r3
  86 0022 0AD1     		bne	.L4
 157:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
  87              		.loc 1 157 5 is_stmt 1 view .LVU20
  88              	.LVL6:
  89              	.LBB22:
  90              	.LBI22:
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
  91              		.loc 2 1141 22 view .LVU21
  92              	.LBB23:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  93              		.loc 2 1143 3 view .LVU22
  94 0024 03F5EC33 		add	r3, r3, #120832
  95 0028 9A6B     		ldr	r2, [r3, #56]
  96 002a 42F48042 		orr	r2, r2, #16384
  97 002e 9A63     		str	r2, [r3, #56]
  98              	.LVL7:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  99              		.loc 2 1143 3 is_stmt 0 view .LVU23
 100              	.LBE23:
 101              	.LBE22:
 160:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 102              		.loc 1 160 5 is_stmt 1 view .LVU24
 103              	.LBB24:
 104              	.LBI24:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 105              		.loc 2 1211 22 view .LVU25
 106              	.LBB25:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 107              		.loc 2 1213 3 view .LVU26
 108 0030 9A6B     		ldr	r2, [r3, #56]
 109 0032 22F48042 		bic	r2, r2, #16384
 110              	.LVL8:
 111              	.L7:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 112              		.loc 2 1213 3 is_stmt 0 view .LVU27
 113 0036 9A63     		str	r2, [r3, #56]
 114 0038 EFE7     		b	.L6
 115              	.L4:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 116              		.loc 2 1213 3 view .LVU28
 117              	.LBE25:
 118              	.LBE24:
 119              		.loc 1 166 3 is_stmt 1 view .LVU29
 120              		.loc 1 166 6 is_stmt 0 view .LVU30
 121 003a 094B     		ldr	r3, .L8+8
 122 003c 9842     		cmp	r0, r3
 123 003e 09D1     		bne	.L5
 124              	.LBB26:
 125              	.LBI26:
 134:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
 126              		.loc 1 134 13 is_stmt 1 view .LVU31
 127              	.LVL9:
 128              	.LBB27:
 167:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
 168:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Force reset of SPI clock */
 169:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_SPI3);
 129              		.loc 1 169 5 view .LVU32
 130              	.LBB28:
 131              	.LBI28:
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 132              		.loc 2 1141 22 view .LVU33
 133              	.LBB29:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 134              		.loc 2 1143 3 view .LVU34
 135 0040 03F5EA33 		add	r3, r3, #119808
 136 0044 9A6B     		ldr	r2, [r3, #56]
 137 0046 42F40042 		orr	r2, r2, #32768
 138 004a 9A63     		str	r2, [r3, #56]
 139              	.LVL10:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 140              		.loc 2 1143 3 is_stmt 0 view .LVU35
 141              	.LBE29:
 142              	.LBE28:
 170:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 171:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Release reset of SPI clock */
 172:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_SPI3);
 143              		.loc 1 172 5 is_stmt 1 view .LVU36
 144              	.LBB30:
 145              	.LBI30:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 146              		.loc 2 1211 22 view .LVU37
 147              	.LBB31:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 148              		.loc 2 1213 3 view .LVU38
 149 004c 9A6B     		ldr	r2, [r3, #56]
 150 004e 22F40042 		bic	r2, r2, #32768
 151 0052 F0E7     		b	.L7
 152              	.LVL11:
 153              	.L5:
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 154              		.loc 2 1213 3 is_stmt 0 view .LVU39
 155              	.LBE31:
 156              	.LBE30:
 157              	.LBE27:
 158              	.LBE26:
 136:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 159              		.loc 1 136 15 view .LVU40
 160 0054 0120     		movs	r0, #1
 161              	.LVL12:
 173:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 174:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     status = SUCCESS;
 175:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
 176:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #endif /* SPI3 */
 177:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined(SPI4)
 178:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   if (SPIx == SPI4)
 179:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
 180:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Force reset of SPI clock */
 181:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_SPI4);
 182:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 183:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Release reset of SPI clock */
 184:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_SPI4);
 185:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 186:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     status = SUCCESS;
 187:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
 188:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #endif /* SPI4 */
 189:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 190:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   return status;
 162              		.loc 1 190 3 is_stmt 1 view .LVU41
 191:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** }
 163              		.loc 1 191 1 is_stmt 0 view .LVU42
 164 0056 7047     		bx	lr
 165              	.L9:
 166              		.align	2
 167              	.L8:
 168 0058 00300140 		.word	1073819648
 169 005c 00380040 		.word	1073756160
 170 0060 003C0040 		.word	1073757184
 171              		.cfi_endproc
 172              	.LFE430:
 174              		.section	.text.LL_SPI_Init,"ax",%progbits
 175              		.align	1
 176              		.global	LL_SPI_Init
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 182              	LL_SPI_Init:
 183              	.LVL13:
 184              	.LFB431:
 192:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 193:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 194:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief  Initialize the SPI registers according to the specified parameters in SPI_InitStruct.
 195:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @note   As some bits in SPI configuration registers can only be written when the SPI is disable
 196:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *         SPI peripheral should be in disabled state prior calling this function. Otherwise, ERRO
 197:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  SPIx SPI Instance
 198:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  SPI_InitStruct pointer to a @ref LL_SPI_InitTypeDef structure
 199:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @retval An ErrorStatus enumeration value. (Return always SUCCESS)
 200:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 201:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** ErrorStatus LL_SPI_Init(SPI_TypeDef *SPIx, LL_SPI_InitTypeDef *SPI_InitStruct)
 202:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
 185              		.loc 1 202 1 is_stmt 1 view -0
 186              		.cfi_startproc
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 203:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ErrorStatus status = ERROR;
 189              		.loc 1 203 3 view .LVU44
 204:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 205:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Check the SPI Instance SPIx*/
 206:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_SPI_ALL_INSTANCE(SPIx));
 190              		.loc 1 206 3 view .LVU45
 207:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 208:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Check the SPI parameters from SPI_InitStruct*/
 209:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_TRANSFER_DIRECTION(SPI_InitStruct->TransferDirection));
 191              		.loc 1 209 3 view .LVU46
 210:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_MODE(SPI_InitStruct->Mode));
 192              		.loc 1 210 3 view .LVU47
 211:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_DATAWIDTH(SPI_InitStruct->DataWidth));
 193              		.loc 1 211 3 view .LVU48
 212:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_POLARITY(SPI_InitStruct->ClockPolarity));
 194              		.loc 1 212 3 view .LVU49
 213:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_PHASE(SPI_InitStruct->ClockPhase));
 195              		.loc 1 213 3 view .LVU50
 214:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_NSS(SPI_InitStruct->NSS));
 196              		.loc 1 214 3 view .LVU51
 215:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_BAUDRATE(SPI_InitStruct->BaudRate));
 197              		.loc 1 215 3 view .LVU52
 216:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_BITORDER(SPI_InitStruct->BitOrder));
 198              		.loc 1 216 3 view .LVU53
 217:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_SPI_CRCCALCULATION(SPI_InitStruct->CRCCalculation));
 199              		.loc 1 217 3 view .LVU54
 218:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 219:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   if (LL_SPI_IsEnabled(SPIx) == 0x00000000U)
 200              		.loc 1 219 3 view .LVU55
 201              	.LBB36:
 202              	.LBI36:
 203              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_spi.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @file    stm32g4xx_ll_spi.h
   4:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief   Header file of SPI LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #ifndef STM32G4xx_LL_SPI_H
  22:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define STM32G4xx_LL_SPI_H
  23:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined (SPI1) || defined (SPI2) || defined (SPI3) || defined (SPI4)
  36:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL SPI
  38:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Private macros ------------------------------------------------------------*/
  44:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported types ------------------------------------------------------------*/
  46:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined(USE_FULL_LL_DRIVER)
  47:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_ES_INIT SPI Exported Init structure
  48:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
  49:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
  50:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  51:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
  52:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  SPI Init structures definition
  53:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
  54:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** typedef struct
  55:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
  56:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t TransferDirection;       /*!< Specifies the SPI unidirectional or bidirectional data mod
  57:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_TRANSFER_M
  58:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  59:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  60:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  61:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t Mode;                    /*!< Specifies the SPI mode (Master/Slave).
  62:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_MODE.
  63:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  64:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  65:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  66:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t DataWidth;               /*!< Specifies the SPI data width.
  67:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_DATAWIDTH.
  68:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  69:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  70:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  71:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t ClockPolarity;           /*!< Specifies the serial clock steady state.
  72:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_POLARITY.
  73:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  74:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  75:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  76:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t ClockPhase;              /*!< Specifies the clock active edge for the bit capture.
  77:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_PHASE.
  78:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  79:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  80:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  81:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t NSS;                     /*!< Specifies whether the NSS signal is managed by hardware (N
  82:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_NSS_MODE.
  83:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  84:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  85:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  86:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t BaudRate;                /*!< Specifies the BaudRate prescaler value which will be used 
  87:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_BAUDRATEPR
  88:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          @note The communication clock is derived from the master c
  89:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  90:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  91:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  92:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t BitOrder;                /*!< Specifies whether data transfers start from MSB or LSB bit
  93:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_BIT_ORDER.
  94:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  95:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
  96:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
  97:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t CRCCalculation;          /*!< Specifies if the CRC calculation is enabled or not.
  98:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref SPI_LL_EC_CRC_CALCUL
  99:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
 101:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 102:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t CRCPoly;                 /*!< Specifies the polynomial used for the CRC calculation.
 103:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter must be a number between Min_Data = 0x00 an
 104:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 105:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
 106:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 107:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** } LL_SPI_InitTypeDef;
 108:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 109:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 110:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 111:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 112:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif /* USE_FULL_LL_DRIVER */
 113:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 114:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported constants --------------------------------------------------------*/
 115:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_Exported_Constants SPI Exported Constants
 116:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 117:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 118:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 119:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_GET_FLAG Get Flags Defines
 120:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief    Flags defines which can be used with LL_SPI_ReadReg function
 121:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 122:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 123:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SR_RXNE                     SPI_SR_RXNE               /*!< Rx buffer not empty flag 
 124:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SR_TXE                      SPI_SR_TXE                /*!< Tx buffer empty flag     
 125:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SR_BSY                      SPI_SR_BSY                /*!< Busy flag                
 126:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SR_CRCERR                   SPI_SR_CRCERR             /*!< CRC error flag           
 127:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SR_MODF                     SPI_SR_MODF               /*!< Mode fault flag          
 128:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SR_OVR                      SPI_SR_OVR                /*!< Overrun flag             
 129:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SR_FRE                      SPI_SR_FRE                /*!< TI mode frame format erro
 130:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 131:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 132:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 133:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_IT IT Defines
 135:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief    IT defines which can be used with LL_SPI_ReadReg and  LL_SPI_WriteReg functions
 136:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 137:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 138:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_CR2_RXNEIE                  SPI_CR2_RXNEIE            /*!< Rx buffer not empty inter
 139:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_CR2_TXEIE                   SPI_CR2_TXEIE             /*!< Tx buffer empty interrupt
 140:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_CR2_ERRIE                   SPI_CR2_ERRIE             /*!< Error interrupt enable   
 141:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 142:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 143:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 144:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 145:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_MODE Operation Mode
 146:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 147:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 148:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_MODE_MASTER                 (SPI_CR1_MSTR | SPI_CR1_SSI)    /*!< Master configuratio
 149:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_MODE_SLAVE                  0x00000000U                     /*!< Slave configuration
 150:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 151:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 152:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 153:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 154:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_PROTOCOL Serial Protocol
 155:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 156:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 157:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_PROTOCOL_MOTOROLA           0x00000000U               /*!< Motorola mode. Used as de
 158:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_PROTOCOL_TI                 (SPI_CR2_FRF)             /*!< TI mode                  
 159:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 160:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 161:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 162:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 163:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_PHASE Clock Phase
 164:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 165:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 166:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_PHASE_1EDGE                 0x00000000U               /*!< First clock transition is
 167:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_PHASE_2EDGE                 (SPI_CR1_CPHA)            /*!< Second clock transition i
 168:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 169:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 170:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 171:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 172:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_POLARITY Clock Polarity
 173:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 174:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 175:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_POLARITY_LOW                0x00000000U               /*!< Clock to 0 when idle */
 176:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_POLARITY_HIGH               (SPI_CR1_CPOL)            /*!< Clock to 1 when idle */
 177:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 178:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 179:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 180:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 181:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_BAUDRATEPRESCALER Baud Rate Prescaler
 182:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 183:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 184:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV2      0x00000000U                                    /*!< Baud
 185:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV4      (SPI_CR1_BR_0)                                 /*!< Baud
 186:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV8      (SPI_CR1_BR_1)                                 /*!< Baud
 187:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV16     (SPI_CR1_BR_1 | SPI_CR1_BR_0)                  /*!< Baud
 188:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV32     (SPI_CR1_BR_2)                                 /*!< Baud
 189:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV64     (SPI_CR1_BR_2 | SPI_CR1_BR_0)                  /*!< Baud
 190:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV128    (SPI_CR1_BR_2 | SPI_CR1_BR_1)                  /*!< Baud
 191:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_BAUDRATEPRESCALER_DIV256    (SPI_CR1_BR_2 | SPI_CR1_BR_1 | SPI_CR1_BR_0)   /*!< Baud
 192:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 193:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 194:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 195:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 196:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_BIT_ORDER Transmission Bit Order
 197:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 198:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 199:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_LSB_FIRST                   (SPI_CR1_LSBFIRST)        /*!< Data is transmitted/recei
 200:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_MSB_FIRST                   0x00000000U               /*!< Data is transmitted/recei
 201:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 202:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 203:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 204:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 205:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_TRANSFER_MODE Transfer Mode
 206:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 207:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 208:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_FULL_DUPLEX                 0x00000000U                          /*!< Full-Duplex mo
 209:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_SIMPLEX_RX                  (SPI_CR1_RXONLY)                     /*!< Simplex Rx mod
 210:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_HALF_DUPLEX_RX              (SPI_CR1_BIDIMODE)                   /*!< Half-Duplex Rx
 211:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_HALF_DUPLEX_TX              (SPI_CR1_BIDIMODE | SPI_CR1_BIDIOE)  /*!< Half-Duplex Tx
 212:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 213:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 214:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 215:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 216:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_NSS_MODE Slave Select Pin Mode
 217:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 218:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 219:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_NSS_SOFT                    (SPI_CR1_SSM)                     /*!< NSS managed inter
 220:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_NSS_HARD_INPUT              0x00000000U                       /*!< NSS pin used in I
 221:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_NSS_HARD_OUTPUT             (((uint32_t)SPI_CR2_SSOE << 16U)) /*!< NSS pin used in O
 222:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 223:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 224:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 225:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 226:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_DATAWIDTH Datawidth
 227:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 228:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 229:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_4BIT              (SPI_CR2_DS_0 | SPI_CR2_DS_1)                           
 230:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_5BIT              (SPI_CR2_DS_2)                                          
 231:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_6BIT              (SPI_CR2_DS_2 | SPI_CR2_DS_0)                           
 232:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_7BIT              (SPI_CR2_DS_2 | SPI_CR2_DS_1)                           
 233:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_8BIT              (SPI_CR2_DS_2 | SPI_CR2_DS_1 | SPI_CR2_DS_0)            
 234:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_9BIT              (SPI_CR2_DS_3)                                          
 235:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_10BIT             (SPI_CR2_DS_3 | SPI_CR2_DS_0)                           
 236:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_11BIT             (SPI_CR2_DS_3 | SPI_CR2_DS_1)                           
 237:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_12BIT             (SPI_CR2_DS_3 | SPI_CR2_DS_1 | SPI_CR2_DS_0)            
 238:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_13BIT             (SPI_CR2_DS_3 | SPI_CR2_DS_2)                           
 239:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_14BIT             (SPI_CR2_DS_3 | SPI_CR2_DS_2 | SPI_CR2_DS_0)            
 240:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_15BIT             (SPI_CR2_DS_3 | SPI_CR2_DS_2 | SPI_CR2_DS_1)            
 241:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DATAWIDTH_16BIT             (SPI_CR2_DS_3 | SPI_CR2_DS_2 | SPI_CR2_DS_1 | SPI_CR2_DS
 242:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 243:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 244:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 245:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined(USE_FULL_LL_DRIVER)
 246:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 247:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_CRC_CALCULATION CRC Calculation
 248:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 249:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 250:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_CRCCALCULATION_DISABLE      0x00000000U               /*!< CRC calculation disabled 
 251:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_CRCCALCULATION_ENABLE       (SPI_CR1_CRCEN)           /*!< CRC calculation enabled  
 252:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 253:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 254:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 255:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif /* USE_FULL_LL_DRIVER */
 256:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 257:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_CRC_LENGTH CRC Length
 258:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 259:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 260:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_CRC_8BIT                    0x00000000U               /*!<  8-bit CRC length */
 261:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_CRC_16BIT                   (SPI_CR1_CRCL)            /*!< 16-bit CRC length */
 262:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 263:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 264:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 265:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 266:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_RX_FIFO_TH RX FIFO Threshold
 267:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 268:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 269:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_RX_FIFO_TH_HALF             0x00000000U               /*!< RXNE event is generated i
 270:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_RX_FIFO_TH_QUARTER          (SPI_CR2_FRXTH)           /*!< RXNE event is generated i
 271:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 272:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 273:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 274:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 275:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_RX_FIFO RX FIFO Level
 276:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 277:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 278:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_RX_FIFO_EMPTY               0x00000000U                       /*!< FIFO reception em
 279:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_RX_FIFO_QUARTER_FULL        (SPI_SR_FRLVL_0)                  /*!< FIFO reception 1/
 280:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_RX_FIFO_HALF_FULL           (SPI_SR_FRLVL_1)                  /*!< FIFO reception 1/
 281:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_RX_FIFO_FULL                (SPI_SR_FRLVL_1 | SPI_SR_FRLVL_0) /*!< FIFO reception fu
 282:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 283:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 284:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 285:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 286:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_TX_FIFO TX FIFO Level
 287:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 288:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 289:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_TX_FIFO_EMPTY               0x00000000U                       /*!< FIFO transmission
 290:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_TX_FIFO_QUARTER_FULL        (SPI_SR_FTLVL_0)                  /*!< FIFO transmission
 291:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_TX_FIFO_HALF_FULL           (SPI_SR_FTLVL_1)                  /*!< FIFO transmission
 292:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_TX_FIFO_FULL                (SPI_SR_FTLVL_1 | SPI_SR_FTLVL_0) /*!< FIFO transmission
 293:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 294:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 295:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 296:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 297:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_DMA_PARITY DMA Parity
 298:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 299:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 300:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DMA_PARITY_EVEN             0x00000000U   /*!< Select DMA parity Even */
 301:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_DMA_PARITY_ODD              0x00000001U   /*!< Select DMA parity Odd  */
 302:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 303:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 304:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 305:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 307:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 308:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 309:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 310:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 311:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported macro ------------------------------------------------------------*/
 312:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_Exported_Macros SPI Exported Macros
 313:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 314:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 315:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 316:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EM_WRITE_READ Common Write and read registers Macros
 317:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 318:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 319:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 320:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 321:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Write a value in SPI register
 322:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __INSTANCE__ SPI Instance
 323:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __REG__ Register to be written
 324:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __VALUE__ Value to be written in the register
 325:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 326:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 327:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALUE
 328:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 329:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 330:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Read a value in SPI register
 331:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __INSTANCE__ SPI Instance
 332:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __REG__ Register to be read
 333:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Register value
 334:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 335:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_SPI_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 336:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 337:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 338:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 339:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 340:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 341:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 342:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 343:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 344:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported functions --------------------------------------------------------*/
 345:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_Exported_Functions SPI Exported Functions
 346:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 347:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 348:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 349:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_Configuration Configuration
 350:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 351:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 352:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 353:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 354:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable SPI peripheral
 355:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          SPE           LL_SPI_Enable
 356:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 357:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 358:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 359:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_Enable(SPI_TypeDef *SPIx)
 360:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 361:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR1, SPI_CR1_SPE);
 362:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 363:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 364:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 365:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable SPI peripheral
 366:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   When disabling the SPI, follow the procedure described in the Reference Manual.
 367:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          SPE           LL_SPI_Disable
 368:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 369:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 370:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 371:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_Disable(SPI_TypeDef *SPIx)
 372:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 373:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR1, SPI_CR1_SPE);
 374:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 375:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 376:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 377:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if SPI peripheral is enabled
 378:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          SPE           LL_SPI_IsEnabled
 379:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 380:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 381:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 382:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabled(SPI_TypeDef *SPIx)
 204              		.loc 3 382 26 view .LVU56
 205              	.LBB37:
 383:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 384:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR1, SPI_CR1_SPE) == (SPI_CR1_SPE)) ? 1UL : 0UL);
 206              		.loc 3 384 3 view .LVU57
 207              	.LBE37:
 208              	.LBE36:
 202:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ErrorStatus status = ERROR;
 209              		.loc 1 202 1 is_stmt 0 view .LVU58
 210 0000 0246     		mov	r2, r0
 211              	.LBB40:
 212              	.LBB38:
 213              		.loc 3 384 12 view .LVU59
 214 0002 0068     		ldr	r0, [r0]
 215              	.LVL14:
 216              		.loc 3 384 69 view .LVU60
 217 0004 10F04000 		ands	r0, r0, #64
 218              	.LBE38:
 219              	.LBE40:
 202:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ErrorStatus status = ERROR;
 220              		.loc 1 202 1 view .LVU61
 221 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 222              		.cfi_def_cfa_offset 20
 223              		.cfi_offset 4, -20
 224              		.cfi_offset 5, -16
 225              		.cfi_offset 6, -12
 226              		.cfi_offset 7, -8
 227              		.cfi_offset 14, -4
 228              	.LBB41:
 229              	.LBB39:
 230              		.loc 3 384 69 view .LVU62
 231 000a 29D1     		bne	.L12
 232              	.LVL15:
 233              		.loc 3 384 69 view .LVU63
 234              	.LBE39:
 235              	.LBE41:
 220:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
 221:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /*---------------------------- SPIx CR1 Configuration ------------------------
 222:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * Configure SPIx CR1 with parameters:
 223:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - TransferDirection:  SPI_CR1_BIDIMODE, SPI_CR1_BIDIOE and SPI_CR1_RXONLY bits
 224:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - Master/Slave Mode:  SPI_CR1_MSTR bit
 225:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - ClockPolarity:      SPI_CR1_CPOL bit
 226:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - ClockPhase:         SPI_CR1_CPHA bit
 227:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - NSS management:     SPI_CR1_SSM bit
 228:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - BaudRate prescaler: SPI_CR1_BR[2:0] bits
 229:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - BitOrder:           SPI_CR1_LSBFIRST bit
 230:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - CRCCalculation:     SPI_CR1_CRCEN bit
 231:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      */
 232:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     MODIFY_REG(SPIx->CR1,
 236              		.loc 1 232 5 is_stmt 1 view .LVU64
 237 000c D1E90037 		ldrd	r3, r7, [r1]
 238 0010 3B43     		orrs	r3, r3, r7
 239 0012 CF68     		ldr	r7, [r1, #12]
 240 0014 4D69     		ldr	r5, [r1, #20]
 241 0016 1668     		ldr	r6, [r2]
 242 0018 0C6A     		ldr	r4, [r1, #32]
 243 001a 3B43     		orrs	r3, r3, r7
 244 001c 0F69     		ldr	r7, [r1, #16]
 245 001e 3B43     		orrs	r3, r3, r7
 246 0020 8F69     		ldr	r7, [r1, #24]
 247 0022 2B43     		orrs	r3, r3, r5
 248 0024 3B43     		orrs	r3, r3, r7
 249 0026 CF69     		ldr	r7, [r1, #28]
 250 0028 26F47F46 		bic	r6, r6, #65280
 251 002c 3B43     		orrs	r3, r3, r7
 252 002e 26F0BF06 		bic	r6, r6, #191
 253 0032 2343     		orrs	r3, r3, r4
 254 0034 3343     		orrs	r3, r3, r6
 255 0036 1360     		str	r3, [r2]
 233:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_CR1_CLEAR_MASK,
 234:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_InitStruct->TransferDirection | SPI_InitStruct->Mode |
 235:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_InitStruct->ClockPolarity | SPI_InitStruct->ClockPhase |
 236:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_InitStruct->NSS | SPI_InitStruct->BaudRate |
 237:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_InitStruct->BitOrder | SPI_InitStruct->CRCCalculation);
 238:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 239:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /*---------------------------- SPIx CR2 Configuration ------------------------
 240:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * Configure SPIx CR2 with parameters:
 241:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - DataWidth:          DS[3:0] bits
 242:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - NSS management:     SSOE bit
 243:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      */
 244:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     MODIFY_REG(SPIx->CR2,
 256              		.loc 1 244 5 view .LVU65
 257 0038 5368     		ldr	r3, [r2, #4]
 258 003a 8E68     		ldr	r6, [r1, #8]
 259 003c 23F47063 		bic	r3, r3, #3840
 260 0040 46EA1545 		orr	r5, r6, r5, lsr #16
 261 0044 23F00403 		bic	r3, r3, #4
 262 0048 1D43     		orrs	r5, r5, r3
 245:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_CR2_DS | SPI_CR2_SSOE,
 246:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_InitStruct->DataWidth | (SPI_InitStruct->NSS >> 16U));
 247:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 248:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /*---------------------------- SPIx CRCPR Configuration ----------------------
 249:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * Configure SPIx CRCPR with parameters:
 250:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - CRCPoly:            CRCPOLY[15:0] bits
 251:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      */
 252:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     if (SPI_InitStruct->CRCCalculation == LL_SPI_CRCCALCULATION_ENABLE)
 263              		.loc 1 252 8 is_stmt 0 view .LVU66
 264 004a B4F5005F 		cmp	r4, #8192
 244:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_CR2_DS | SPI_CR2_SSOE,
 265              		.loc 1 244 5 view .LVU67
 266 004e 5560     		str	r5, [r2, #4]
 267              		.loc 1 252 5 is_stmt 1 view .LVU68
 268              		.loc 1 252 8 is_stmt 0 view .LVU69
 269 0050 01D1     		bne	.L11
 253:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     {
 254:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       assert_param(IS_LL_SPI_CRC_POLYNOMIAL(SPI_InitStruct->CRCPoly));
 270              		.loc 1 254 7 is_stmt 1 view .LVU70
 255:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       LL_SPI_SetCRCPolynomial(SPIx, SPI_InitStruct->CRCPoly);
 271              		.loc 1 255 7 view .LVU71
 272              	.LVL16:
 273              	.LBB42:
 274              	.LBI42:
 385:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 386:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 387:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 388:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set SPI operation mode to Master or Slave
 389:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should not be changed when communication is ongoing.
 390:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          MSTR          LL_SPI_SetMode\n
 391:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         CR1          SSI           LL_SPI_SetMode
 392:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 393:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  Mode This parameter can be one of the following values:
 394:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_MODE_MASTER
 395:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_MODE_SLAVE
 396:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 397:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 398:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetMode(SPI_TypeDef *SPIx, uint32_t Mode)
 399:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 400:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_MSTR | SPI_CR1_SSI, Mode);
 401:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 402:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 403:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 404:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get SPI operation mode (Master or Slave)
 405:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          MSTR          LL_SPI_GetMode\n
 406:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         CR1          SSI           LL_SPI_GetMode
 407:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 408:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 409:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_MODE_MASTER
 410:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_MODE_SLAVE
 411:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 412:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetMode(SPI_TypeDef *SPIx)
 413:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 414:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR1, SPI_CR1_MSTR | SPI_CR1_SSI));
 415:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 416:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 417:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 418:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set serial protocol used
 419:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should be written only when SPI is disabled (SPE = 0) for correct operation.
 420:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          FRF           LL_SPI_SetStandard
 421:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 422:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  Standard This parameter can be one of the following values:
 423:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PROTOCOL_MOTOROLA
 424:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PROTOCOL_TI
 425:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 426:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 427:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetStandard(SPI_TypeDef *SPIx, uint32_t Standard)
 428:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 429:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR2, SPI_CR2_FRF, Standard);
 430:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 431:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 432:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 433:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get serial protocol used
 434:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          FRF           LL_SPI_GetStandard
 435:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 436:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 437:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PROTOCOL_MOTOROLA
 438:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PROTOCOL_TI
 439:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 440:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetStandard(SPI_TypeDef *SPIx)
 441:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 442:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR2, SPI_CR2_FRF));
 443:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 444:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 445:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 446:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set clock phase
 447:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should not be changed when communication is ongoing.
 448:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         This bit is not used in SPI TI mode.
 449:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CPHA          LL_SPI_SetClockPhase
 450:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 451:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  ClockPhase This parameter can be one of the following values:
 452:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PHASE_1EDGE
 453:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PHASE_2EDGE
 454:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 455:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 456:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetClockPhase(SPI_TypeDef *SPIx, uint32_t ClockPhase)
 457:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 458:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_CPHA, ClockPhase);
 459:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 460:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 461:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 462:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get clock phase
 463:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CPHA          LL_SPI_GetClockPhase
 464:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 465:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 466:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PHASE_1EDGE
 467:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_PHASE_2EDGE
 468:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 469:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetClockPhase(SPI_TypeDef *SPIx)
 470:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 471:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR1, SPI_CR1_CPHA));
 472:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 473:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 474:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 475:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set clock polarity
 476:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should not be changed when communication is ongoing.
 477:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         This bit is not used in SPI TI mode.
 478:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CPOL          LL_SPI_SetClockPolarity
 479:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 480:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  ClockPolarity This parameter can be one of the following values:
 481:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_POLARITY_LOW
 482:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_POLARITY_HIGH
 483:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 484:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 485:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetClockPolarity(SPI_TypeDef *SPIx, uint32_t ClockPolarity)
 486:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 487:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_CPOL, ClockPolarity);
 488:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 489:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 490:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 491:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get clock polarity
 492:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CPOL          LL_SPI_GetClockPolarity
 493:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 494:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 495:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_POLARITY_LOW
 496:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_POLARITY_HIGH
 497:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 498:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetClockPolarity(SPI_TypeDef *SPIx)
 499:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 500:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR1, SPI_CR1_CPOL));
 501:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 502:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 503:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 504:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set baud rate prescaler
 505:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   These bits should not be changed when communication is ongoing. SPI BaudRate = fPCLK/Pr
 506:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          BR            LL_SPI_SetBaudRatePrescaler
 507:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 508:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  BaudRate This parameter can be one of the following values:
 509:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV2
 510:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV4
 511:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV8
 512:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV16
 513:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV32
 514:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV64
 515:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV128
 516:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV256
 517:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 518:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 519:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetBaudRatePrescaler(SPI_TypeDef *SPIx, uint32_t BaudRate)
 520:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 521:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_BR, BaudRate);
 522:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 523:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 524:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 525:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get baud rate prescaler
 526:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          BR            LL_SPI_GetBaudRatePrescaler
 527:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 528:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 529:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV2
 530:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV4
 531:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV8
 532:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV16
 533:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV32
 534:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV64
 535:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV128
 536:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_BAUDRATEPRESCALER_DIV256
 537:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 538:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetBaudRatePrescaler(SPI_TypeDef *SPIx)
 539:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 540:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR1, SPI_CR1_BR));
 541:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 542:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 543:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 544:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set transfer bit order
 545:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should not be changed when communication is ongoing. This bit is not used in S
 546:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          LSBFIRST      LL_SPI_SetTransferBitOrder
 547:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 548:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  BitOrder This parameter can be one of the following values:
 549:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_LSB_FIRST
 550:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_MSB_FIRST
 551:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 552:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 553:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetTransferBitOrder(SPI_TypeDef *SPIx, uint32_t BitOrder)
 554:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 555:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_LSBFIRST, BitOrder);
 556:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 557:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 558:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 559:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get transfer bit order
 560:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          LSBFIRST      LL_SPI_GetTransferBitOrder
 561:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 562:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 563:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_LSB_FIRST
 564:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_MSB_FIRST
 565:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 566:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetTransferBitOrder(SPI_TypeDef *SPIx)
 567:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 568:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR1, SPI_CR1_LSBFIRST));
 569:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 570:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 571:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 572:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set transfer direction mode
 573:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   For Half-Duplex mode, Rx Direction is set by default.
 574:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         In master mode, the MOSI pin is used and in slave mode, the MISO pin is used for Half-D
 575:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          RXONLY        LL_SPI_SetTransferDirection\n
 576:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         CR1          BIDIMODE      LL_SPI_SetTransferDirection\n
 577:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         CR1          BIDIOE        LL_SPI_SetTransferDirection
 578:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 579:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  TransferDirection This parameter can be one of the following values:
 580:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_FULL_DUPLEX
 581:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_SIMPLEX_RX
 582:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_HALF_DUPLEX_RX
 583:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_HALF_DUPLEX_TX
 584:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 585:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 586:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetTransferDirection(SPI_TypeDef *SPIx, uint32_t TransferDirection)
 587:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 588:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_RXONLY | SPI_CR1_BIDIMODE | SPI_CR1_BIDIOE, TransferDirection);
 589:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 590:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 591:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 592:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get transfer direction mode
 593:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          RXONLY        LL_SPI_GetTransferDirection\n
 594:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         CR1          BIDIMODE      LL_SPI_GetTransferDirection\n
 595:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         CR1          BIDIOE        LL_SPI_GetTransferDirection
 596:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 597:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 598:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_FULL_DUPLEX
 599:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_SIMPLEX_RX
 600:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_HALF_DUPLEX_RX
 601:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_HALF_DUPLEX_TX
 602:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 603:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetTransferDirection(SPI_TypeDef *SPIx)
 604:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 605:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR1, SPI_CR1_RXONLY | SPI_CR1_BIDIMODE | SPI_CR1_BIDIOE));
 606:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 607:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 608:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 609:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set frame data width
 610:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          DS            LL_SPI_SetDataWidth
 611:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 612:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  DataWidth This parameter can be one of the following values:
 613:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_4BIT
 614:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_5BIT
 615:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_6BIT
 616:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_7BIT
 617:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_8BIT
 618:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_9BIT
 619:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_10BIT
 620:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_11BIT
 621:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_12BIT
 622:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_13BIT
 623:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_14BIT
 624:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_15BIT
 625:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_16BIT
 626:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 627:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 628:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetDataWidth(SPI_TypeDef *SPIx, uint32_t DataWidth)
 629:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 630:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR2, SPI_CR2_DS, DataWidth);
 631:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 632:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 633:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 634:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get frame data width
 635:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          DS            LL_SPI_GetDataWidth
 636:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 637:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 638:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_4BIT
 639:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_5BIT
 640:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_6BIT
 641:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_7BIT
 642:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_8BIT
 643:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_9BIT
 644:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_10BIT
 645:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_11BIT
 646:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_12BIT
 647:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_13BIT
 648:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_14BIT
 649:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_15BIT
 650:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DATAWIDTH_16BIT
 651:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 652:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetDataWidth(SPI_TypeDef *SPIx)
 653:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 654:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR2, SPI_CR2_DS));
 655:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 656:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 657:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 658:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set threshold of RXFIFO that triggers an RXNE event
 659:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          FRXTH         LL_SPI_SetRxFIFOThreshold
 660:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 661:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  Threshold This parameter can be one of the following values:
 662:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_TH_HALF
 663:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_TH_QUARTER
 664:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 665:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 666:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetRxFIFOThreshold(SPI_TypeDef *SPIx, uint32_t Threshold)
 667:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 668:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR2, SPI_CR2_FRXTH, Threshold);
 669:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 670:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 671:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 672:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get threshold of RXFIFO that triggers an RXNE event
 673:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          FRXTH         LL_SPI_GetRxFIFOThreshold
 674:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 675:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 676:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_TH_HALF
 677:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_TH_QUARTER
 678:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 679:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetRxFIFOThreshold(SPI_TypeDef *SPIx)
 680:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 681:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR2, SPI_CR2_FRXTH));
 682:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 683:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 684:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 685:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 686:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 687:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 688:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_CRC_Management CRC Management
 689:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 690:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 691:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 692:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 693:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable CRC
 694:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should be written only when SPI is disabled (SPE = 0) for correct operation.
 695:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CRCEN         LL_SPI_EnableCRC
 696:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 697:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 698:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 699:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_EnableCRC(SPI_TypeDef *SPIx)
 700:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 701:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR1, SPI_CR1_CRCEN);
 702:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 703:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 704:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 705:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable CRC
 706:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should be written only when SPI is disabled (SPE = 0) for correct operation.
 707:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CRCEN         LL_SPI_DisableCRC
 708:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 709:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 710:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 711:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_DisableCRC(SPI_TypeDef *SPIx)
 712:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 713:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR1, SPI_CR1_CRCEN);
 714:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 715:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 716:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 717:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if CRC is enabled
 718:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should be written only when SPI is disabled (SPE = 0) for correct operation.
 719:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CRCEN         LL_SPI_IsEnabledCRC
 720:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 721:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 722:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 723:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabledCRC(SPI_TypeDef *SPIx)
 724:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 725:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR1, SPI_CR1_CRCEN) == (SPI_CR1_CRCEN)) ? 1UL : 0UL);
 726:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 727:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 728:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 729:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set CRC Length
 730:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should be written only when SPI is disabled (SPE = 0) for correct operation.
 731:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CRCL          LL_SPI_SetCRCWidth
 732:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 733:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  CRCLength This parameter can be one of the following values:
 734:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_CRC_8BIT
 735:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_CRC_16BIT
 736:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 737:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 738:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetCRCWidth(SPI_TypeDef *SPIx, uint32_t CRCLength)
 739:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 740:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_CRCL, CRCLength);
 741:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 742:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 743:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 744:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get CRC Length
 745:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CRCL          LL_SPI_GetCRCWidth
 746:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 747:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 748:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_CRC_8BIT
 749:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_CRC_16BIT
 750:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 751:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetCRCWidth(SPI_TypeDef *SPIx)
 752:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 753:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR1, SPI_CR1_CRCL));
 754:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 755:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 756:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 757:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set CRCNext to transfer CRC on the line
 758:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit has to be written as soon as the last data is written in the SPIx_DR register.
 759:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          CRCNEXT       LL_SPI_SetCRCNext
 760:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 761:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 762:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 763:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetCRCNext(SPI_TypeDef *SPIx)
 764:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 765:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR1, SPI_CR1_CRCNEXT);
 766:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 767:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 768:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 769:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set polynomial for CRC calculation
 770:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CRCPR        CRCPOLY       LL_SPI_SetCRCPolynomial
 771:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 772:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  CRCPoly This parameter must be a number between Min_Data = 0x00 and Max_Data = 0xFFFF
 773:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 774:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 775:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetCRCPolynomial(SPI_TypeDef *SPIx, uint32_t CRCPoly)
 275              		.loc 3 775 22 view .LVU72
 276              	.LBB43:
 776:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 777:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   WRITE_REG(SPIx->CRCPR, (uint16_t)CRCPoly);
 277              		.loc 3 777 3 view .LVU73
 278 0052 8B8C     		ldrh	r3, [r1, #36]
 279 0054 1361     		str	r3, [r2, #16]
 280              	.LVL17:
 281              	.L11:
 282              		.loc 3 777 3 is_stmt 0 view .LVU74
 283              	.LBE43:
 284              	.LBE42:
 256:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     }
 257:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     status = SUCCESS;
 258:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
 259:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 260:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined (SPI_I2S_SUPPORT)
 261:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Activate the SPI mode (Reset I2SMOD bit in I2SCFGR register) */
 262:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   CLEAR_BIT(SPIx->I2SCFGR, SPI_I2SCFGR_I2SMOD);
 285              		.loc 1 262 3 is_stmt 1 view .LVU75
 286 0056 D369     		ldr	r3, [r2, #28]
 287 0058 23F40063 		bic	r3, r3, #2048
 288 005c D361     		str	r3, [r2, #28]
 263:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #endif /* SPI_I2S_SUPPORT */
 264:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   return status;
 289              		.loc 1 264 3 view .LVU76
 265:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** }
 290              		.loc 1 265 1 is_stmt 0 view .LVU77
 291 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 292              	.LVL18:
 293              	.L12:
 203:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 294              		.loc 1 203 15 view .LVU78
 295 0060 0120     		movs	r0, #1
 296 0062 F8E7     		b	.L11
 297              		.cfi_endproc
 298              	.LFE431:
 300              		.section	.text.LL_SPI_StructInit,"ax",%progbits
 301              		.align	1
 302              		.global	LL_SPI_StructInit
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 308              	LL_SPI_StructInit:
 309              	.LVL19:
 310              	.LFB432:
 266:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 267:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 268:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief  Set each @ref LL_SPI_InitTypeDef field to default value.
 269:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  SPI_InitStruct pointer to a @ref LL_SPI_InitTypeDef structure
 270:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * whose fields will be set to default values.
 271:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @retval None
 272:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 273:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** void LL_SPI_StructInit(LL_SPI_InitTypeDef *SPI_InitStruct)
 274:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
 311              		.loc 1 274 1 is_stmt 1 view -0
 312              		.cfi_startproc
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 275:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Set SPI_InitStruct fields to default values */
 276:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->TransferDirection = LL_SPI_FULL_DUPLEX;
 316              		.loc 1 276 3 view .LVU80
 317              		.loc 1 276 37 is_stmt 0 view .LVU81
 318 0000 0023     		movs	r3, #0
 277:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->Mode              = LL_SPI_MODE_SLAVE;
 278:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->DataWidth         = LL_SPI_DATAWIDTH_8BIT;
 319              		.loc 1 278 37 view .LVU82
 320 0002 4FF4E062 		mov	r2, #1792
 277:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->Mode              = LL_SPI_MODE_SLAVE;
 321              		.loc 1 277 37 view .LVU83
 322 0006 C0E90033 		strd	r3, r3, [r0]
 323              		.loc 1 278 3 is_stmt 1 view .LVU84
 279:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->ClockPolarity     = LL_SPI_POLARITY_LOW;
 324              		.loc 1 279 37 is_stmt 0 view .LVU85
 325 000a C0E90223 		strd	r2, r3, [r0, #8]
 280:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->ClockPhase        = LL_SPI_PHASE_1EDGE;
 326              		.loc 1 280 3 is_stmt 1 view .LVU86
 281:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->NSS               = LL_SPI_NSS_HARD_INPUT;
 327              		.loc 1 281 37 is_stmt 0 view .LVU87
 328 000e C0E90433 		strd	r3, r3, [r0, #16]
 282:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->BaudRate          = LL_SPI_BAUDRATEPRESCALER_DIV2;
 329              		.loc 1 282 3 is_stmt 1 view .LVU88
 283:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->BitOrder          = LL_SPI_MSB_FIRST;
 330              		.loc 1 283 37 is_stmt 0 view .LVU89
 331 0012 C0E90633 		strd	r3, r3, [r0, #24]
 284:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->CRCCalculation    = LL_SPI_CRCCALCULATION_DISABLE;
 332              		.loc 1 284 3 is_stmt 1 view .LVU90
 333              		.loc 1 284 37 is_stmt 0 view .LVU91
 334 0016 0362     		str	r3, [r0, #32]
 285:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   SPI_InitStruct->CRCPoly           = 7U;
 335              		.loc 1 285 3 is_stmt 1 view .LVU92
 336              		.loc 1 285 37 is_stmt 0 view .LVU93
 337 0018 0723     		movs	r3, #7
 338 001a 4362     		str	r3, [r0, #36]
 286:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** }
 339              		.loc 1 286 1 view .LVU94
 340 001c 7047     		bx	lr
 341              		.cfi_endproc
 342              	.LFE432:
 344              		.section	.text.LL_I2S_DeInit,"ax",%progbits
 345              		.align	1
 346              		.global	LL_I2S_DeInit
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 352              	LL_I2S_DeInit:
 353              	.LVL20:
 354              	.LFB433:
 287:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 288:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 289:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @}
 290:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 291:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 292:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 293:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @}
 294:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 295:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 296:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 297:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @}
 298:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 299:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 300:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #if defined(SPI_I2S_SUPPORT)
 301:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @addtogroup I2S_LL
 302:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
 303:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 304:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 305:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private types -------------------------------------------------------------*/
 306:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private variables ---------------------------------------------------------*/
 307:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private constants ---------------------------------------------------------*/
 308:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @defgroup I2S_LL_Private_Constants I2S Private Constants
 309:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
 310:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 311:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* I2S registers Masks */
 312:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define I2S_I2SCFGR_CLEAR_MASK             (SPI_I2SCFGR_CHLEN   | SPI_I2SCFGR_DATLEN | \
 313:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                             SPI_I2SCFGR_CKPOL   | SPI_I2SCFGR_I2SSTD | \
 314:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                             SPI_I2SCFGR_I2SCFG  | SPI_I2SCFGR_I2SMOD )
 315:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 316:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define I2S_I2SPR_CLEAR_MASK               0x0002U
 317:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 318:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @}
 319:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 320:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private macros ------------------------------------------------------------*/
 321:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @defgroup I2S_LL_Private_Macros I2S Private Macros
 322:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
 323:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 324:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 325:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_DATAFORMAT(__VALUE__)  (((__VALUE__) == LL_I2S_DATAFORMAT_16B)             \
 326:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_DATAFORMAT_16B_EXTENDED) \
 327:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_DATAFORMAT_24B)          \
 328:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_DATAFORMAT_32B))
 329:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 330:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_CPOL(__VALUE__)        (((__VALUE__) == LL_I2S_POLARITY_LOW)  \
 331:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_POLARITY_HIGH))
 332:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 333:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_STANDARD(__VALUE__)    (((__VALUE__) == LL_I2S_STANDARD_PHILIPS)      \
 334:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_STANDARD_MSB)       \
 335:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_STANDARD_LSB)       \
 336:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_STANDARD_PCM_SHORT) \
 337:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_STANDARD_PCM_LONG))
 338:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 339:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_MODE(__VALUE__)        (((__VALUE__) == LL_I2S_MODE_SLAVE_TX)     \
 340:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_MODE_SLAVE_RX)  \
 341:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_MODE_MASTER_TX) \
 342:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_MODE_MASTER_RX))
 343:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 344:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_MCLK_OUTPUT(__VALUE__) (((__VALUE__) == LL_I2S_MCLK_OUTPUT_ENABLE) \
 345:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           || ((__VALUE__) == LL_I2S_MCLK_OUTPUT_DISABLE))
 346:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 347:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_AUDIO_FREQ(__VALUE__) ((((__VALUE__) >= LL_I2S_AUDIOFREQ_8K)       \
 348:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                           && ((__VALUE__) <= LL_I2S_AUDIOFREQ_192K)) \
 349:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                          || ((__VALUE__) == LL_I2S_AUDIOFREQ_DEFAULT))
 350:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 351:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_PRESCALER_LINEAR(__VALUE__)  ((__VALUE__) >= 0x2U)
 352:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 353:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** #define IS_LL_I2S_PRESCALER_PARITY(__VALUE__) (((__VALUE__) == LL_I2S_PRESCALER_PARITY_EVEN) \
 354:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                                                || ((__VALUE__) == LL_I2S_PRESCALER_PARITY_ODD))
 355:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 356:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @}
 357:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 358:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 359:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Private function prototypes -----------------------------------------------*/
 360:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 361:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /* Exported functions --------------------------------------------------------*/
 362:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @addtogroup I2S_LL_Exported_Functions
 363:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
 364:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 365:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 366:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /** @addtogroup I2S_LL_EF_Init
 367:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @{
 368:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 369:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 370:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 371:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief  De-initialize the SPI/I2S registers to their default reset values.
 372:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  SPIx SPI Instance
 373:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @retval An ErrorStatus enumeration value:
 374:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *          - SUCCESS: SPI registers are de-initialized
 375:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *          - ERROR: SPI registers are not de-initialized
 376:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 377:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** ErrorStatus LL_I2S_DeInit(SPI_TypeDef *SPIx)
 378:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
 355              		.loc 1 378 1 is_stmt 1 view -0
 356              		.cfi_startproc
 357              		@ args = 0, pretend = 0, frame = 0
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359              		@ link register save eliminated.
 379:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   return LL_SPI_DeInit(SPIx);
 360              		.loc 1 379 3 view .LVU96
 361              		.loc 1 379 10 is_stmt 0 view .LVU97
 362 0000 FFF7FEBF 		b	LL_SPI_DeInit
 363              	.LVL21:
 364              		.loc 1 379 10 view .LVU98
 365              		.cfi_endproc
 366              	.LFE433:
 368              		.section	.text.LL_I2S_Init,"ax",%progbits
 369              		.align	1
 370              		.global	LL_I2S_Init
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 376              	LL_I2S_Init:
 377              	.LVL22:
 378              	.LFB434:
 380:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** }
 381:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 382:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 383:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief  Initializes the SPI/I2S registers according to the specified parameters in I2S_InitStru
 384:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @note   As some bits in SPI configuration registers can only be written when the SPI is disable
 385:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *         SPI peripheral should be in disabled state prior calling this function. Otherwise, ERRO
 386:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  SPIx SPI Instance
 387:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  I2S_InitStruct pointer to a @ref LL_I2S_InitTypeDef structure
 388:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @retval An ErrorStatus enumeration value:
 389:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *          - SUCCESS: SPI registers are Initialized
 390:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *          - ERROR: SPI registers are not Initialized
 391:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 392:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** ErrorStatus LL_I2S_Init(SPI_TypeDef *SPIx, LL_I2S_InitTypeDef *I2S_InitStruct)
 393:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
 379              		.loc 1 393 1 is_stmt 1 view -0
 380              		.cfi_startproc
 381              		@ args = 0, pretend = 0, frame = 0
 382              		@ frame_needed = 0, uses_anonymous_args = 0
 394:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t i2sdiv = 2U;
 383              		.loc 1 394 3 view .LVU100
 395:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t i2sodd = 0U;
 384              		.loc 1 395 3 view .LVU101
 396:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t packetlength = 1U;
 385              		.loc 1 396 3 view .LVU102
 397:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t tmp;
 386              		.loc 1 397 3 view .LVU103
 398:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t sourceclock;
 387              		.loc 1 398 3 view .LVU104
 399:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   ErrorStatus status = ERROR;
 388              		.loc 1 399 3 view .LVU105
 400:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 401:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Check the I2S parameters */
 402:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_I2S_ALL_INSTANCE(SPIx));
 389              		.loc 1 402 3 view .LVU106
 403:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_MODE(I2S_InitStruct->Mode));
 390              		.loc 1 403 3 view .LVU107
 404:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_STANDARD(I2S_InitStruct->Standard));
 391              		.loc 1 404 3 view .LVU108
 405:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_DATAFORMAT(I2S_InitStruct->DataFormat));
 392              		.loc 1 405 3 view .LVU109
 406:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_MCLK_OUTPUT(I2S_InitStruct->MCLKOutput));
 393              		.loc 1 406 3 view .LVU110
 407:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_AUDIO_FREQ(I2S_InitStruct->AudioFreq));
 394              		.loc 1 407 3 view .LVU111
 408:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_CPOL(I2S_InitStruct->ClockPolarity));
 395              		.loc 1 408 3 view .LVU112
 409:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 410:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   if (LL_I2S_IsEnabled(SPIx) == 0x00000000U)
 396              		.loc 1 410 3 view .LVU113
 397              	.LBB46:
 398              	.LBI46:
 778:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 779:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 780:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 781:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get polynomial for CRC calculation
 782:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CRCPR        CRCPOLY       LL_SPI_GetCRCPolynomial
 783:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 784:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value is a number between Min_Data = 0x00 and Max_Data = 0xFFFF
 785:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 786:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetCRCPolynomial(SPI_TypeDef *SPIx)
 787:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 788:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_REG(SPIx->CRCPR));
 789:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 790:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 791:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 792:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get Rx CRC
 793:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll RXCRCR       RXCRC         LL_SPI_GetRxCRC
 794:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 795:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value is a number between Min_Data = 0x00 and Max_Data = 0xFFFF
 796:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 797:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetRxCRC(SPI_TypeDef *SPIx)
 798:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 799:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_REG(SPIx->RXCRCR));
 800:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 801:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 802:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 803:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get Tx CRC
 804:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll TXCRCR       TXCRC         LL_SPI_GetTxCRC
 805:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 806:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value is a number between Min_Data = 0x00 and Max_Data = 0xFFFF
 807:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 808:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetTxCRC(SPI_TypeDef *SPIx)
 809:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 810:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_REG(SPIx->TXCRCR));
 811:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 812:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 813:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 814:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 815:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 816:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 817:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_NSS_Management Slave Select Pin Management
 818:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 819:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 820:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 821:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 822:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set NSS mode
 823:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   LL_SPI_NSS_SOFT Mode is not used in SPI TI mode.
 824:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          SSM           LL_SPI_SetNSSMode\n
 825:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          SSOE          LL_SPI_SetNSSMode
 826:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 827:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  NSS This parameter can be one of the following values:
 828:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_NSS_SOFT
 829:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_NSS_HARD_INPUT
 830:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_NSS_HARD_OUTPUT
 831:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 832:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 833:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetNSSMode(SPI_TypeDef *SPIx, uint32_t NSS)
 834:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 835:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR1, SPI_CR1_SSM,  NSS);
 836:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR2, SPI_CR2_SSOE, ((uint32_t)(NSS >> 16U)));
 837:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 838:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 839:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 840:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get NSS mode
 841:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR1          SSM           LL_SPI_GetNSSMode\n
 842:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          SSOE          LL_SPI_GetNSSMode
 843:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 844:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 845:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_NSS_SOFT
 846:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_NSS_HARD_INPUT
 847:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_NSS_HARD_OUTPUT
 848:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 849:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetNSSMode(SPI_TypeDef *SPIx)
 850:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 851:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   register uint32_t Ssm  = (READ_BIT(SPIx->CR1, SPI_CR1_SSM));
 852:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   register uint32_t Ssoe = (READ_BIT(SPIx->CR2,  SPI_CR2_SSOE) << 16U);
 853:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (Ssm | Ssoe);
 854:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 855:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 856:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 857:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable NSS pulse management
 858:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should not be changed when communication is ongoing. This bit is not used in S
 859:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          NSSP          LL_SPI_EnableNSSPulseMgt
 860:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 861:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 862:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 863:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_EnableNSSPulseMgt(SPI_TypeDef *SPIx)
 864:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 865:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR2, SPI_CR2_NSSP);
 866:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 867:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 868:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 869:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable NSS pulse management
 870:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should not be changed when communication is ongoing. This bit is not used in S
 871:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          NSSP          LL_SPI_DisableNSSPulseMgt
 872:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 873:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
 874:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 875:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_DisableNSSPulseMgt(SPI_TypeDef *SPIx)
 876:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 877:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR2, SPI_CR2_NSSP);
 878:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 879:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 880:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 881:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if NSS pulse is enabled
 882:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit should not be changed when communication is ongoing. This bit is not used in S
 883:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          NSSP          LL_SPI_IsEnabledNSSPulse
 884:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 885:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 886:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 887:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabledNSSPulse(SPI_TypeDef *SPIx)
 888:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 889:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR2, SPI_CR2_NSSP) == (SPI_CR2_NSSP)) ? 1UL : 0UL);
 890:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 891:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 892:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 893:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
 894:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 895:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 896:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_FLAG_Management FLAG Management
 897:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
 898:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 899:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 900:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 901:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if Rx buffer is not empty
 902:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           RXNE          LL_SPI_IsActiveFlag_RXNE
 903:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 904:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 905:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 906:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsActiveFlag_RXNE(SPI_TypeDef *SPIx)
 907:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 908:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->SR, SPI_SR_RXNE) == (SPI_SR_RXNE)) ? 1UL : 0UL);
 909:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 910:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 911:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 912:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if Tx buffer is empty
 913:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           TXE           LL_SPI_IsActiveFlag_TXE
 914:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 915:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 916:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 917:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsActiveFlag_TXE(SPI_TypeDef *SPIx)
 918:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 919:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->SR, SPI_SR_TXE) == (SPI_SR_TXE)) ? 1UL : 0UL);
 920:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 921:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 922:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 923:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get CRC error flag
 924:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           CRCERR        LL_SPI_IsActiveFlag_CRCERR
 925:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 926:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 927:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 928:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsActiveFlag_CRCERR(SPI_TypeDef *SPIx)
 929:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 930:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->SR, SPI_SR_CRCERR) == (SPI_SR_CRCERR)) ? 1UL : 0UL);
 931:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 932:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 933:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 934:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get mode fault error flag
 935:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           MODF          LL_SPI_IsActiveFlag_MODF
 936:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 937:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 938:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 939:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsActiveFlag_MODF(SPI_TypeDef *SPIx)
 940:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 941:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->SR, SPI_SR_MODF) == (SPI_SR_MODF)) ? 1UL : 0UL);
 942:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 943:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 944:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 945:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get overrun error flag
 946:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           OVR           LL_SPI_IsActiveFlag_OVR
 947:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 948:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 949:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 950:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsActiveFlag_OVR(SPI_TypeDef *SPIx)
 951:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 952:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->SR, SPI_SR_OVR) == (SPI_SR_OVR)) ? 1UL : 0UL);
 953:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 954:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 955:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 956:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get busy flag
 957:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   The BSY flag is cleared under any one of the following conditions:
 958:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * -When the SPI is correctly disabled
 959:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * -When a fault is detected in Master mode (MODF bit set to 1)
 960:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * -In Master mode, when it finishes a data transmission and no new data is ready to be
 961:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * sent
 962:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * -In Slave mode, when the BSY flag is set to '0' for at least one SPI clock cycle between
 963:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * each data transfer.
 964:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           BSY           LL_SPI_IsActiveFlag_BSY
 965:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 966:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 967:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 968:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsActiveFlag_BSY(SPI_TypeDef *SPIx)
 969:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 970:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->SR, SPI_SR_BSY) == (SPI_SR_BSY)) ? 1UL : 0UL);
 971:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 972:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 973:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 974:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get frame format error flag
 975:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           FRE           LL_SPI_IsActiveFlag_FRE
 976:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 977:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
 978:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 979:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsActiveFlag_FRE(SPI_TypeDef *SPIx)
 980:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 981:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->SR, SPI_SR_FRE) == (SPI_SR_FRE)) ? 1UL : 0UL);
 982:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 983:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 984:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
 985:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get FIFO reception Level
 986:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           FRLVL         LL_SPI_GetRxFIFOLevel
 987:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
 988:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
 989:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_EMPTY
 990:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_QUARTER_FULL
 991:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_HALF_FULL
 992:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_RX_FIFO_FULL
 993:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
 994:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetRxFIFOLevel(SPI_TypeDef *SPIx)
 995:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
 996:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->SR, SPI_SR_FRLVL));
 997:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
 998:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
 999:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1000:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get FIFO Transmission Level
1001:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           FTLVL         LL_SPI_GetTxFIFOLevel
1002:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1003:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
1004:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_TX_FIFO_EMPTY
1005:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_TX_FIFO_QUARTER_FULL
1006:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_TX_FIFO_HALF_FULL
1007:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_TX_FIFO_FULL
1008:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1009:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetTxFIFOLevel(SPI_TypeDef *SPIx)
1010:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1011:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->SR, SPI_SR_FTLVL));
1012:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1013:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1014:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1015:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Clear CRC error flag
1016:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           CRCERR        LL_SPI_ClearFlag_CRCERR
1017:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1018:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1019:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1020:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_ClearFlag_CRCERR(SPI_TypeDef *SPIx)
1021:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1022:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->SR, SPI_SR_CRCERR);
1023:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1024:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1025:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1026:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Clear mode fault error flag
1027:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   Clearing this flag is done by a read access to the SPIx_SR
1028:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         register followed by a write access to the SPIx_CR1 register
1029:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           MODF          LL_SPI_ClearFlag_MODF
1030:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1031:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1032:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1033:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_ClearFlag_MODF(SPI_TypeDef *SPIx)
1034:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1035:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   __IO uint32_t tmpreg_sr;
1036:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   tmpreg_sr = SPIx->SR;
1037:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   (void) tmpreg_sr;
1038:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR1, SPI_CR1_SPE);
1039:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1040:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1041:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1042:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Clear overrun error flag
1043:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   Clearing this flag is done by a read access to the SPIx_DR
1044:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         register followed by a read access to the SPIx_SR register
1045:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           OVR           LL_SPI_ClearFlag_OVR
1046:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1047:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1048:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1049:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_ClearFlag_OVR(SPI_TypeDef *SPIx)
1050:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1051:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   __IO uint32_t tmpreg;
1052:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   tmpreg = SPIx->DR;
1053:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   (void) tmpreg;
1054:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   tmpreg = SPIx->SR;
1055:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   (void) tmpreg;
1056:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1057:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1058:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1059:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Clear frame format error flag
1060:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   Clearing this flag is done by reading SPIx_SR register
1061:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll SR           FRE           LL_SPI_ClearFlag_FRE
1062:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1063:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1064:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1065:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_ClearFlag_FRE(SPI_TypeDef *SPIx)
1066:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1067:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   __IO uint32_t tmpreg;
1068:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   tmpreg = SPIx->SR;
1069:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   (void) tmpreg;
1070:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1071:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1072:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1073:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1074:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1075:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1076:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_IT_Management Interrupt Management
1077:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1078:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1079:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1080:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1081:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable error interrupt
1082:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit controls the generation of an interrupt when an error condition occurs (CRCERR
1083:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          ERRIE         LL_SPI_EnableIT_ERR
1084:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1085:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1086:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1087:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_EnableIT_ERR(SPI_TypeDef *SPIx)
1088:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1089:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR2, SPI_CR2_ERRIE);
1090:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1091:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1092:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1093:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable Rx buffer not empty interrupt
1094:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          RXNEIE        LL_SPI_EnableIT_RXNE
1095:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1096:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1097:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1098:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_EnableIT_RXNE(SPI_TypeDef *SPIx)
1099:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1100:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR2, SPI_CR2_RXNEIE);
1101:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1102:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1103:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1104:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable Tx buffer empty interrupt
1105:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          TXEIE         LL_SPI_EnableIT_TXE
1106:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1107:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1108:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1109:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_EnableIT_TXE(SPI_TypeDef *SPIx)
1110:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1111:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR2, SPI_CR2_TXEIE);
1112:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1113:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1114:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1115:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable error interrupt
1116:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @note   This bit controls the generation of an interrupt when an error condition occurs (CRCERR
1117:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          ERRIE         LL_SPI_DisableIT_ERR
1118:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1119:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1120:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1121:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_DisableIT_ERR(SPI_TypeDef *SPIx)
1122:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1123:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR2, SPI_CR2_ERRIE);
1124:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1125:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1126:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1127:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable Rx buffer not empty interrupt
1128:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          RXNEIE        LL_SPI_DisableIT_RXNE
1129:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1130:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1131:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1132:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_DisableIT_RXNE(SPI_TypeDef *SPIx)
1133:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1134:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR2, SPI_CR2_RXNEIE);
1135:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1136:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1137:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1138:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable Tx buffer empty interrupt
1139:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          TXEIE         LL_SPI_DisableIT_TXE
1140:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1141:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1142:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1143:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_DisableIT_TXE(SPI_TypeDef *SPIx)
1144:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1145:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR2, SPI_CR2_TXEIE);
1146:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1147:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1148:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1149:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if error interrupt is enabled
1150:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          ERRIE         LL_SPI_IsEnabledIT_ERR
1151:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1152:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
1153:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1154:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabledIT_ERR(SPI_TypeDef *SPIx)
1155:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1156:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR2, SPI_CR2_ERRIE) == (SPI_CR2_ERRIE)) ? 1UL : 0UL);
1157:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1158:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1159:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1160:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if Rx buffer not empty interrupt is enabled
1161:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          RXNEIE        LL_SPI_IsEnabledIT_RXNE
1162:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1163:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
1164:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1165:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabledIT_RXNE(SPI_TypeDef *SPIx)
1166:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1167:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR2, SPI_CR2_RXNEIE) == (SPI_CR2_RXNEIE)) ? 1UL : 0UL);
1168:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1169:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1170:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1171:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if Tx buffer empty interrupt
1172:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          TXEIE         LL_SPI_IsEnabledIT_TXE
1173:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1174:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
1175:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1176:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabledIT_TXE(SPI_TypeDef *SPIx)
1177:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1178:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR2, SPI_CR2_TXEIE) == (SPI_CR2_TXEIE)) ? 1UL : 0UL);
1179:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1180:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1181:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1182:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1183:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1184:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1185:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_DMA_Management DMA Management
1186:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1187:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1188:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1189:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1190:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable DMA Rx
1191:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          RXDMAEN       LL_SPI_EnableDMAReq_RX
1192:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1193:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1194:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1195:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_EnableDMAReq_RX(SPI_TypeDef *SPIx)
1196:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1197:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR2, SPI_CR2_RXDMAEN);
1198:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1199:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1200:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1201:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable DMA Rx
1202:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          RXDMAEN       LL_SPI_DisableDMAReq_RX
1203:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1204:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1205:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1206:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_DisableDMAReq_RX(SPI_TypeDef *SPIx)
1207:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1208:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR2, SPI_CR2_RXDMAEN);
1209:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1210:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1211:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1212:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if DMA Rx is enabled
1213:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          RXDMAEN       LL_SPI_IsEnabledDMAReq_RX
1214:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1215:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
1216:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1217:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabledDMAReq_RX(SPI_TypeDef *SPIx)
1218:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1219:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR2, SPI_CR2_RXDMAEN) == (SPI_CR2_RXDMAEN)) ? 1UL : 0UL);
1220:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1221:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1222:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1223:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Enable DMA Tx
1224:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          TXDMAEN       LL_SPI_EnableDMAReq_TX
1225:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1226:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1227:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1228:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_EnableDMAReq_TX(SPI_TypeDef *SPIx)
1229:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1230:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->CR2, SPI_CR2_TXDMAEN);
1231:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1232:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1233:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1234:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable DMA Tx
1235:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          TXDMAEN       LL_SPI_DisableDMAReq_TX
1236:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1237:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1238:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1239:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_DisableDMAReq_TX(SPI_TypeDef *SPIx)
1240:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1241:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->CR2, SPI_CR2_TXDMAEN);
1242:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1243:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1244:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1245:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if DMA Tx is enabled
1246:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          TXDMAEN       LL_SPI_IsEnabledDMAReq_TX
1247:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1248:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
1249:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1250:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_IsEnabledDMAReq_TX(SPI_TypeDef *SPIx)
1251:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1252:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->CR2, SPI_CR2_TXDMAEN) == (SPI_CR2_TXDMAEN)) ? 1UL : 0UL);
1253:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1254:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1255:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1256:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set parity of  Last DMA reception
1257:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          LDMARX        LL_SPI_SetDMAParity_RX
1258:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1259:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  Parity This parameter can be one of the following values:
1260:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_ODD
1261:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_EVEN
1262:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1263:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1264:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetDMAParity_RX(SPI_TypeDef *SPIx, uint32_t Parity)
1265:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1266:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR2, SPI_CR2_LDMARX, (Parity << SPI_CR2_LDMARX_Pos));
1267:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1268:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1269:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1270:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get parity configuration for  Last DMA reception
1271:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          LDMARX        LL_SPI_GetDMAParity_RX
1272:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1273:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
1274:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_ODD
1275:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_EVEN
1276:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1277:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetDMAParity_RX(SPI_TypeDef *SPIx)
1278:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1279:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR2, SPI_CR2_LDMARX) >> SPI_CR2_LDMARX_Pos);
1280:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1281:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1282:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1283:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Set parity of  Last DMA transmission
1284:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          LDMATX        LL_SPI_SetDMAParity_TX
1285:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1286:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  Parity This parameter can be one of the following values:
1287:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_ODD
1288:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_EVEN
1289:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1290:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1291:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_SetDMAParity_TX(SPI_TypeDef *SPIx, uint32_t Parity)
1292:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1293:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   MODIFY_REG(SPIx->CR2, SPI_CR2_LDMATX, (Parity << SPI_CR2_LDMATX_Pos));
1294:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1295:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1296:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1297:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get parity configuration for Last DMA transmission
1298:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll CR2          LDMATX        LL_SPI_GetDMAParity_TX
1299:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1300:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Returned value can be one of the following values:
1301:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_ODD
1302:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         @arg @ref LL_SPI_DMA_PARITY_EVEN
1303:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1304:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_GetDMAParity_TX(SPI_TypeDef *SPIx)
1305:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1306:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t)(READ_BIT(SPIx->CR2, SPI_CR2_LDMATX) >> SPI_CR2_LDMATX_Pos);
1307:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1308:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1309:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1310:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Get the data register address used for DMA transfer
1311:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll DR           DR            LL_SPI_DMA_GetRegAddr
1312:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1313:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Address of data register
1314:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1315:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_SPI_DMA_GetRegAddr(SPI_TypeDef *SPIx)
1316:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1317:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint32_t) &(SPIx->DR);
1318:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1319:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1320:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1321:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1322:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1323:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1324:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_DATA_Management DATA Management
1325:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1326:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1327:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1328:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1329:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Read 8-Bits in the data register
1330:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll DR           DR            LL_SPI_ReceiveData8
1331:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1332:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval RxData Value between Min_Data=0x00 and Max_Data=0xFF
1333:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1334:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint8_t LL_SPI_ReceiveData8(SPI_TypeDef *SPIx)
1335:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1336:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint8_t)(READ_REG(SPIx->DR));
1337:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1338:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1339:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1340:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Read 16-Bits in the data register
1341:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll DR           DR            LL_SPI_ReceiveData16
1342:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1343:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval RxData Value between Min_Data=0x00 and Max_Data=0xFFFF
1344:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1345:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint16_t LL_SPI_ReceiveData16(SPI_TypeDef *SPIx)
1346:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1347:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return (uint16_t)(READ_REG(SPIx->DR));
1348:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1349:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1350:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1351:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Write 8-Bits in the data register
1352:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll DR           DR            LL_SPI_TransmitData8
1353:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1354:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  TxData Value between Min_Data=0x00 and Max_Data=0xFF
1355:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1356:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1357:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_TransmitData8(SPI_TypeDef *SPIx, uint8_t TxData)
1358:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1359:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined (__GNUC__)
1360:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   __IO uint8_t *spidr = ((__IO uint8_t *)&SPIx->DR);
1361:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *spidr = TxData;
1362:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #else
1363:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *((__IO uint8_t *)&SPIx->DR) = TxData;
1364:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif /* __GNUC__ */
1365:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1366:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1367:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1368:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Write 16-Bits in the data register
1369:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll DR           DR            LL_SPI_TransmitData16
1370:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1371:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  TxData Value between Min_Data=0x00 and Max_Data=0xFFFF
1372:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1373:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1374:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_SPI_TransmitData16(SPI_TypeDef *SPIx, uint16_t TxData)
1375:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1376:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined (__GNUC__)
1377:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   __IO uint16_t *spidr = ((__IO uint16_t *)&SPIx->DR);
1378:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *spidr = TxData;
1379:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #else
1380:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SPIx->DR = TxData;
1381:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif /* __GNUC__ */
1382:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1383:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1384:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1385:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1386:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1387:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined(USE_FULL_LL_DRIVER)
1388:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EF_Init Initialization and de-initialization functions
1389:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1390:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1391:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1392:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** ErrorStatus LL_SPI_DeInit(SPI_TypeDef *SPIx);
1393:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** ErrorStatus LL_SPI_Init(SPI_TypeDef *SPIx, LL_SPI_InitTypeDef *SPI_InitStruct);
1394:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** void        LL_SPI_StructInit(LL_SPI_InitTypeDef *SPI_InitStruct);
1395:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1396:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1397:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1398:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1399:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif /* USE_FULL_LL_DRIVER */
1400:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1401:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1402:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1403:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1404:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1405:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1406:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1407:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1408:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined(SPI_I2S_SUPPORT)
1409:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL I2S
1410:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1411:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1412:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1413:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Private variables ---------------------------------------------------------*/
1414:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Private constants ---------------------------------------------------------*/
1415:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Private macros ------------------------------------------------------------*/
1416:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1417:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported types ------------------------------------------------------------*/
1418:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined(USE_FULL_LL_DRIVER)
1419:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_ES_INIT I2S Exported Init structure
1420:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1421:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1422:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1423:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1424:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  I2S Init structure definition
1425:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1426:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1427:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** typedef struct
1428:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1429:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t Mode;                    /*!< Specifies the I2S operating mode.
1430:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref I2S_LL_EC_MODE
1431:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1432:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
1433:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1434:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t Standard;                /*!< Specifies the standard used for the I2S communication.
1435:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref I2S_LL_EC_STANDARD
1436:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1437:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
1438:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1439:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1440:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t DataFormat;              /*!< Specifies the data format for the I2S communication.
1441:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref I2S_LL_EC_DATA_FORMA
1442:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1443:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
1444:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1445:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1446:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t MCLKOutput;              /*!< Specifies whether the I2S MCLK output is enabled or not.
1447:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref I2S_LL_EC_MCLK_OUTPU
1448:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1449:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
1450:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1451:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1452:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t AudioFreq;               /*!< Specifies the frequency selected for the I2S communication
1453:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref I2S_LL_EC_AUDIO_FREQ
1454:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1455:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          Audio Frequency can be modified afterwards using Reference
1456:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          and unitary functions @ref LL_I2S_SetPrescalerLinear() and
1457:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1458:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1459:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   uint32_t ClockPolarity;           /*!< Specifies the idle state of the I2S clock.
1460:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This parameter can be a value of @ref I2S_LL_EC_POLARITY
1461:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1462:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****                                          This feature can be modified afterwards using unitary func
1463:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1464:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** } LL_I2S_InitTypeDef;
1465:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1466:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1467:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1468:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1469:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif /*USE_FULL_LL_DRIVER*/
1470:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1471:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported constants --------------------------------------------------------*/
1472:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_Exported_Constants I2S Exported Constants
1473:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1474:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1475:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1476:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_GET_FLAG Get Flags Defines
1477:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief    Flags defines which can be used with LL_I2S_ReadReg function
1478:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1479:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1480:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_SR_RXNE                     LL_SPI_SR_RXNE            /*!< Rx buffer not empty flag 
1481:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_SR_TXE                      LL_SPI_SR_TXE             /*!< Tx buffer empty flag     
1482:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_SR_BSY                      LL_SPI_SR_BSY             /*!< Busy flag                
1483:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_SR_UDR                      SPI_SR_UDR                /*!< Underrun flag            
1484:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_SR_OVR                      LL_SPI_SR_OVR             /*!< Overrun flag             
1485:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_SR_FRE                      LL_SPI_SR_FRE             /*!< TI mode frame format erro
1486:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1487:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1488:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1489:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1490:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup SPI_LL_EC_IT IT Defines
1491:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief    IT defines which can be used with LL_SPI_ReadReg and  LL_SPI_WriteReg functions
1492:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1493:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1494:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_CR2_RXNEIE                  LL_SPI_CR2_RXNEIE         /*!< Rx buffer not empty inter
1495:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_CR2_TXEIE                   LL_SPI_CR2_TXEIE          /*!< Tx buffer empty interrupt
1496:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_CR2_ERRIE                   LL_SPI_CR2_ERRIE          /*!< Error interrupt enable   
1497:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1498:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1499:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1500:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1501:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_DATA_FORMAT Data format
1502:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1503:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1504:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_DATAFORMAT_16B              0x00000000U                                   /*!< Data 
1505:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_DATAFORMAT_16B_EXTENDED     (SPI_I2SCFGR_CHLEN)                           /*!< Data 
1506:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_DATAFORMAT_24B              (SPI_I2SCFGR_CHLEN | SPI_I2SCFGR_DATLEN_0)    /*!< Data 
1507:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_DATAFORMAT_32B              (SPI_I2SCFGR_CHLEN | SPI_I2SCFGR_DATLEN_1)    /*!< Data 
1508:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1509:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1510:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1511:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1512:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_POLARITY Clock Polarity
1513:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1514:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1515:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_POLARITY_LOW                0x00000000U               /*!< Clock steady state is low
1516:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_POLARITY_HIGH               (SPI_I2SCFGR_CKPOL)       /*!< Clock steady state is hig
1517:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1518:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1519:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1520:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1521:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_STANDARD I2s Standard
1522:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1523:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1524:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_STANDARD_PHILIPS            0x00000000U                                             
1525:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_STANDARD_MSB                (SPI_I2SCFGR_I2SSTD_0)                                  
1526:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_STANDARD_LSB                (SPI_I2SCFGR_I2SSTD_1)                                  
1527:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_STANDARD_PCM_SHORT          (SPI_I2SCFGR_I2SSTD_0 | SPI_I2SCFGR_I2SSTD_1)           
1528:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_STANDARD_PCM_LONG           (SPI_I2SCFGR_I2SSTD_0 | SPI_I2SCFGR_I2SSTD_1 | SPI_I2SCF
1529:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1530:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1531:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1532:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1533:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_MODE Operation Mode
1534:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1535:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1536:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_MODE_SLAVE_TX               0x00000000U                                   /*!< Slave
1537:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_MODE_SLAVE_RX               (SPI_I2SCFGR_I2SCFG_0)                        /*!< Slave
1538:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_MODE_MASTER_TX              (SPI_I2SCFGR_I2SCFG_1)                        /*!< Maste
1539:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_MODE_MASTER_RX              (SPI_I2SCFGR_I2SCFG_0 | SPI_I2SCFGR_I2SCFG_1) /*!< Maste
1540:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1541:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1542:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1543:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1544:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_PRESCALER_FACTOR Prescaler Factor
1545:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1546:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1547:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_PRESCALER_PARITY_EVEN       0x00000000U               /*!< Odd factor: Real divider 
1548:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_PRESCALER_PARITY_ODD        (SPI_I2SPR_ODD >> 8U)     /*!< Odd factor: Real divider 
1549:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1550:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1551:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1552:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1553:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #if defined(USE_FULL_LL_DRIVER)
1554:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1555:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_MCLK_OUTPUT MCLK Output
1556:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1557:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1558:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_MCLK_OUTPUT_DISABLE         0x00000000U               /*!< Master clock output is di
1559:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_MCLK_OUTPUT_ENABLE          (SPI_I2SPR_MCKOE)         /*!< Master clock output is en
1560:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1561:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1562:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1563:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1564:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EC_AUDIO_FREQ Audio Frequency
1565:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1566:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1567:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1568:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_192K              192000U       /*!< Audio Frequency configuration 192000 
1569:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_96K               96000U        /*!< Audio Frequency configuration  96000 
1570:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_48K               48000U        /*!< Audio Frequency configuration  48000 
1571:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_44K               44100U        /*!< Audio Frequency configuration  44100 
1572:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_32K               32000U        /*!< Audio Frequency configuration  32000 
1573:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_22K               22050U        /*!< Audio Frequency configuration  22050 
1574:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_16K               16000U        /*!< Audio Frequency configuration  16000 
1575:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_11K               11025U        /*!< Audio Frequency configuration  11025 
1576:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_8K                8000U         /*!< Audio Frequency configuration   8000 
1577:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_AUDIOFREQ_DEFAULT           2U            /*!< Audio Freq not specified. Register I2
1578:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1579:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1580:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1581:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #endif /* USE_FULL_LL_DRIVER */
1582:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1583:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1584:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1585:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1586:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1587:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported macro ------------------------------------------------------------*/
1588:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_Exported_Macros I2S Exported Macros
1589:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1590:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1591:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1592:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EM_WRITE_READ Common Write and read registers Macros
1593:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1594:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1595:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1596:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1597:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Write a value in I2S register
1598:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __INSTANCE__ I2S Instance
1599:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __REG__ Register to be written
1600:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __VALUE__ Value to be written in the register
1601:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1602:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1603:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALUE
1604:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1605:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1606:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Read a value in I2S register
1607:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __INSTANCE__ I2S Instance
1608:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  __REG__ Register to be read
1609:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval Register value
1610:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1611:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** #define LL_I2S_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
1612:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1613:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1614:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1615:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1616:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1617:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @}
1618:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1619:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1620:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1621:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /* Exported functions --------------------------------------------------------*/
1622:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1623:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_Exported_Functions I2S Exported Functions
1624:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1625:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1626:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1627:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /** @defgroup I2S_LL_EF_Configuration Configuration
1628:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @{
1629:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1630:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1631:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1632:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Select I2S mode and Enable I2S peripheral
1633:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll I2SCFGR      I2SMOD        LL_I2S_Enable\n
1634:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   *         I2SCFGR      I2SE          LL_I2S_Enable
1635:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1636:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1637:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1638:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_I2S_Enable(SPI_TypeDef *SPIx)
1639:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1640:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   SET_BIT(SPIx->I2SCFGR, SPI_I2SCFGR_I2SMOD | SPI_I2SCFGR_I2SE);
1641:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1642:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1643:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1644:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Disable I2S peripheral
1645:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll I2SCFGR      I2SE          LL_I2S_Disable
1646:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1647:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval None
1648:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1649:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE void LL_I2S_Disable(SPI_TypeDef *SPIx)
1650:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1651:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   CLEAR_BIT(SPIx->I2SCFGR, SPI_I2SCFGR_I2SMOD | SPI_I2SCFGR_I2SE);
1652:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** }
1653:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** 
1654:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** /**
1655:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @brief  Check if I2S peripheral is enabled
1656:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @rmtoll I2SCFGR      I2SE          LL_I2S_IsEnabled
1657:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @param  SPIx SPI Instance
1658:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   * @retval State of bit (1 or 0).
1659:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   */
1660:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** __STATIC_INLINE uint32_t LL_I2S_IsEnabled(SPI_TypeDef *SPIx)
 399              		.loc 3 1660 26 view .LVU114
 400              	.LBB47:
1661:../../..\CubeG4\include/stm32g4xx_ll_spi.h **** {
1662:../../..\CubeG4\include/stm32g4xx_ll_spi.h ****   return ((READ_BIT(SPIx->I2SCFGR, SPI_I2SCFGR_I2SE) == (SPI_I2SCFGR_I2SE)) ? 1UL : 0UL);
 401              		.loc 3 1662 3 view .LVU115
 402              		.loc 3 1662 12 is_stmt 0 view .LVU116
 403 0000 C369     		ldr	r3, [r0, #28]
 404              		.loc 3 1662 83 view .LVU117
 405 0002 5B05     		lsls	r3, r3, #21
 406              	.LBE47:
 407              	.LBE46:
 393:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t i2sdiv = 2U;
 408              		.loc 1 393 1 view .LVU118
 409 0004 70B5     		push	{r4, r5, r6, lr}
 410              		.cfi_def_cfa_offset 16
 411              		.cfi_offset 4, -16
 412              		.cfi_offset 5, -12
 413              		.cfi_offset 6, -8
 414              		.cfi_offset 14, -4
 393:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t i2sdiv = 2U;
 415              		.loc 1 393 1 view .LVU119
 416 0006 0446     		mov	r4, r0
 417 0008 0D46     		mov	r5, r1
 418              	.LBB49:
 419              	.LBB48:
 420              		.loc 3 1662 83 view .LVU120
 421 000a 3DD4     		bmi	.L24
 422              	.LVL23:
 423              		.loc 3 1662 83 view .LVU121
 424              	.LBE48:
 425              	.LBE49:
 411:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   {
 412:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /*---------------------------- SPIx I2SCFGR Configuration --------------------
 413:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * Configure SPIx I2SCFGR with parameters:
 414:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - Mode:          SPI_I2SCFGR_I2SCFG[1:0] bit
 415:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - Standard:      SPI_I2SCFGR_I2SSTD[1:0] and SPI_I2SCFGR_PCMSYNC bits
 416:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - DataFormat:    SPI_I2SCFGR_CHLEN and SPI_I2SCFGR_DATLEN bits
 417:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - ClockPolarity: SPI_I2SCFGR_CKPOL bit
 418:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      */
 419:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 420:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Write to SPIx I2SCFGR */
 421:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     MODIFY_REG(SPIx->I2SCFGR,
 426              		.loc 1 421 5 is_stmt 1 view .LVU122
 427 000c C269     		ldr	r2, [r0, #28]
 428 000e 8968     		ldr	r1, [r1, #8]
 429              	.LVL24:
 430              		.loc 1 421 5 is_stmt 0 view .LVU123
 431 0010 D5E90030 		ldrd	r3, r0, [r5]
 432              	.LVL25:
 433              		.loc 1 421 5 view .LVU124
 434 0014 22F43362 		bic	r2, r2, #2864
 435 0018 22F00F02 		bic	r2, r2, #15
 436 001c 0343     		orrs	r3, r3, r0
 437 001e 1343     		orrs	r3, r3, r2
 438 0020 6A69     		ldr	r2, [r5, #20]
 439 0022 0B43     		orrs	r3, r3, r1
 440 0024 1343     		orrs	r3, r3, r2
 441 0026 43F40063 		orr	r3, r3, #2048
 442 002a E361     		str	r3, [r4, #28]
 422:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                I2S_I2SCFGR_CLEAR_MASK,
 423:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                I2S_InitStruct->Mode | I2S_InitStruct->Standard |
 424:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                I2S_InitStruct->DataFormat | I2S_InitStruct->ClockPolarity |
 425:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****                SPI_I2SCFGR_I2SMOD);
 426:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 427:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /*---------------------------- SPIx I2SPR Configuration ----------------------
 428:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * Configure SPIx I2SPR with parameters:
 429:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - MCLKOutput:    SPI_I2SPR_MCKOE bit
 430:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * - AudioFreq:     SPI_I2SPR_I2SDIV[7:0] and SPI_I2SPR_ODD bits
 431:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      */
 432:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 433:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* If the requested audio frequency is not the default, compute the prescaler (i2sodd, i2sdiv)
 434:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      * else, default values are used:  i2sodd = 0U, i2sdiv = 2U.
 435:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****      */
 436:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     if (I2S_InitStruct->AudioFreq != LL_I2S_AUDIOFREQ_DEFAULT)
 443              		.loc 1 436 5 is_stmt 1 view .LVU125
 444              		.loc 1 436 8 is_stmt 0 view .LVU126
 445 002c 2B69     		ldr	r3, [r5, #16]
 446 002e 022B     		cmp	r3, #2
 447 0030 07D1     		bne	.L18
 448              	.LVL26:
 449              	.L23:
 395:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t packetlength = 1U;
 450              		.loc 1 395 12 view .LVU127
 451 0032 0022     		movs	r2, #0
 394:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   uint32_t i2sodd = 0U;
 452              		.loc 1 394 12 view .LVU128
 453 0034 0223     		movs	r3, #2
 454              	.L19:
 455              	.LVL27:
 437:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     {
 438:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Check the frame length (For the Prescaler computing)
 439:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****        * Default value: LL_I2S_DATAFORMAT_16B (packetlength = 1U).
 440:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****        */
 441:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       if (I2S_InitStruct->DataFormat != LL_I2S_DATAFORMAT_16B)
 442:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       {
 443:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****         /* Packet length is 32 bits */
 444:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****         packetlength = 2U;
 445:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 446:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 447:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* If an external I2S clock has to be used, the specific define should be set
 448:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       in the project configuration or in the stm32g4xx_ll_rcc.h file */
 449:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Get the I2S source clock value */
 450:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       sourceclock = LL_RCC_GetI2SClockFreq(LL_RCC_I2S_CLKSOURCE);
 451:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 452:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Compute the Real divider depending on the MCLK output state with a floating point */
 453:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       if (I2S_InitStruct->MCLKOutput == LL_I2S_MCLK_OUTPUT_ENABLE)
 454:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       {
 455:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****         /* MCLK output is enabled */
 456:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****         tmp = (((((sourceclock / 256U) * 10U) / I2S_InitStruct->AudioFreq)) + 5U);
 457:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 458:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       else
 459:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       {
 460:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****         /* MCLK output is disabled */
 461:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****         tmp = (((((sourceclock / (32U * packetlength)) * 10U) / I2S_InitStruct->AudioFreq)) + 5U);
 462:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 463:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 464:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Remove the floating point */
 465:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       tmp = tmp / 10U;
 466:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 467:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Check the parity of the divider */
 468:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       i2sodd = (tmp & (uint16_t)0x0001U);
 469:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 470:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Compute the i2sdiv prescaler */
 471:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       i2sdiv = ((tmp - i2sodd) / 2U);
 472:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 473:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Get the Mask for the Odd bit (SPI_I2SPR[8]) register */
 474:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       i2sodd = (i2sodd << 8U);
 475:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     }
 476:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 477:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Test if the divider is 1 or 0 or greater than 0xFF */
 478:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     if ((i2sdiv < 2U) || (i2sdiv > 0xFFU))
 479:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     {
 480:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       /* Set the default values */
 481:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       i2sdiv = 2U;
 482:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       i2sodd = 0U;
 483:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     }
 484:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 485:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     /* Write to SPIx I2SPR register the computed value */
 486:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     WRITE_REG(SPIx->I2SPR, i2sdiv | i2sodd | I2S_InitStruct->MCLKOutput);
 456              		.loc 1 486 5 is_stmt 1 view .LVU129
 457 0036 1343     		orrs	r3, r3, r2
 458              	.LVL28:
 459              		.loc 1 486 5 is_stmt 0 view .LVU130
 460 0038 EA68     		ldr	r2, [r5, #12]
 461              	.LVL29:
 462              		.loc 1 486 5 view .LVU131
 463 003a 1343     		orrs	r3, r3, r2
 464 003c 2362     		str	r3, [r4, #32]
 487:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 488:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     status = SUCCESS;
 465              		.loc 1 488 5 is_stmt 1 view .LVU132
 466              	.LVL30:
 467              		.loc 1 488 12 is_stmt 0 view .LVU133
 468 003e 0020     		movs	r0, #0
 469              	.LVL31:
 470              	.L17:
 489:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   }
 490:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   return status;
 471              		.loc 1 490 3 is_stmt 1 view .LVU134
 491:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** }
 472              		.loc 1 491 1 is_stmt 0 view .LVU135
 473 0040 70BD     		pop	{r4, r5, r6, pc}
 474              	.LVL32:
 475              	.L18:
 441:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       {
 476              		.loc 1 441 7 is_stmt 1 view .LVU136
 444:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 477              		.loc 1 444 22 is_stmt 0 view .LVU137
 478 0042 0029     		cmp	r1, #0
 450:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 479              		.loc 1 450 21 view .LVU138
 480 0044 4FF44000 		mov	r0, #12582912
 444:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 481              		.loc 1 444 22 view .LVU139
 482 0048 14BF     		ite	ne
 483 004a 0226     		movne	r6, #2
 484 004c 0126     		moveq	r6, #1
 485              	.LVL33:
 450:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 486              		.loc 1 450 7 is_stmt 1 view .LVU140
 450:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 487              		.loc 1 450 21 is_stmt 0 view .LVU141
 488 004e FFF7FEFF 		bl	LL_RCC_GetI2SClockFreq
 489              	.LVL34:
 453:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       {
 490              		.loc 1 453 7 is_stmt 1 view .LVU142
 453:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       {
 491              		.loc 1 453 10 is_stmt 0 view .LVU143
 492 0052 EB68     		ldr	r3, [r5, #12]
 493 0054 2A69     		ldr	r2, [r5, #16]
 494 0056 B3F5007F 		cmp	r3, #512
 456:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 495              		.loc 1 456 32 view .LVU144
 496 005a 08BF     		it	eq
 497 005c 000A     		lsreq	r0, r0, #8
 498              	.LVL35:
 456:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 499              		.loc 1 456 32 view .LVU145
 500 005e 4FF00A03 		mov	r3, #10
 456:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 501              		.loc 1 456 9 is_stmt 1 view .LVU146
 461:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 502              		.loc 1 461 9 view .LVU147
 461:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 503              		.loc 1 461 39 is_stmt 0 view .LVU148
 504 0062 1CBF     		itt	ne
 505 0064 7601     		lslne	r6, r6, #5
 506              	.LVL36:
 461:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 507              		.loc 1 461 32 view .LVU149
 508 0066 B0FBF6F0 		udivne	r0, r0, r6
 461:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 509              		.loc 1 461 56 view .LVU150
 510 006a 4343     		muls	r3, r0, r3
 461:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 511              		.loc 1 461 63 view .LVU151
 512 006c B3FBF2F3 		udiv	r3, r3, r2
 465:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 513              		.loc 1 465 11 view .LVU152
 514 0070 0A22     		movs	r2, #10
 461:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****       }
 515              		.loc 1 461 13 view .LVU153
 516 0072 0533     		adds	r3, r3, #5
 517              	.LVL37:
 465:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 518              		.loc 1 465 7 is_stmt 1 view .LVU154
 465:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 519              		.loc 1 465 11 is_stmt 0 view .LVU155
 520 0074 B3FBF2F3 		udiv	r3, r3, r2
 521              	.LVL38:
 468:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 522              		.loc 1 468 7 is_stmt 1 view .LVU156
 471:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 523              		.loc 1 471 7 view .LVU157
 471:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 524              		.loc 1 471 22 is_stmt 0 view .LVU158
 525 0078 03F00102 		and	r2, r3, #1
 526              	.LVL39:
 471:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 527              		.loc 1 471 14 view .LVU159
 528 007c 5B08     		lsrs	r3, r3, #1
 529              	.LVL40:
 474:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     }
 530              		.loc 1 474 7 is_stmt 1 view .LVU160
 478:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     {
 531              		.loc 1 478 5 view .LVU161
 478:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     {
 532              		.loc 1 478 23 is_stmt 0 view .LVU162
 533 007e 991E     		subs	r1, r3, #2
 478:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     {
 534              		.loc 1 478 8 view .LVU163
 535 0080 FD29     		cmp	r1, #253
 536 0082 D6D8     		bhi	.L23
 474:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     }
 537              		.loc 1 474 14 view .LVU164
 538 0084 1202     		lsls	r2, r2, #8
 539              	.LVL41:
 474:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****     }
 540              		.loc 1 474 14 view .LVU165
 541 0086 D6E7     		b	.L19
 542              	.LVL42:
 543              	.L24:
 399:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 544              		.loc 1 399 15 view .LVU166
 545 0088 0120     		movs	r0, #1
 546              	.LVL43:
 399:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 547              		.loc 1 399 15 view .LVU167
 548 008a D9E7     		b	.L17
 549              		.cfi_endproc
 550              	.LFE434:
 552              		.section	.text.LL_I2S_StructInit,"ax",%progbits
 553              		.align	1
 554              		.global	LL_I2S_StructInit
 555              		.syntax unified
 556              		.thumb
 557              		.thumb_func
 558              		.fpu fpv4-sp-d16
 560              	LL_I2S_StructInit:
 561              	.LVL44:
 562              	.LFB435:
 492:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 493:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 494:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief  Set each @ref LL_I2S_InitTypeDef field to default value.
 495:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  I2S_InitStruct pointer to a @ref LL_I2S_InitTypeDef structure
 496:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *         whose fields will be set to default values.
 497:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @retval None
 498:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 499:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** void LL_I2S_StructInit(LL_I2S_InitTypeDef *I2S_InitStruct)
 500:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
 563              		.loc 1 500 1 is_stmt 1 view -0
 564              		.cfi_startproc
 565              		@ args = 0, pretend = 0, frame = 0
 566              		@ frame_needed = 0, uses_anonymous_args = 0
 567              		@ link register save eliminated.
 501:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /*--------------- Reset I2S init structure parameters values -----------------*/
 502:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->Mode              = LL_I2S_MODE_SLAVE_TX;
 568              		.loc 1 502 3 view .LVU169
 569              		.loc 1 502 37 is_stmt 0 view .LVU170
 570 0000 0023     		movs	r3, #0
 503:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->Standard          = LL_I2S_STANDARD_PHILIPS;
 504:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->DataFormat        = LL_I2S_DATAFORMAT_16B;
 505:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->MCLKOutput        = LL_I2S_MCLK_OUTPUT_DISABLE;
 506:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->AudioFreq         = LL_I2S_AUDIOFREQ_DEFAULT;
 571              		.loc 1 506 37 view .LVU171
 572 0002 0222     		movs	r2, #2
 503:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->Standard          = LL_I2S_STANDARD_PHILIPS;
 573              		.loc 1 503 37 view .LVU172
 574 0004 C0E90033 		strd	r3, r3, [r0]
 504:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->MCLKOutput        = LL_I2S_MCLK_OUTPUT_DISABLE;
 575              		.loc 1 504 3 is_stmt 1 view .LVU173
 505:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->AudioFreq         = LL_I2S_AUDIOFREQ_DEFAULT;
 576              		.loc 1 505 37 is_stmt 0 view .LVU174
 577 0008 C0E90233 		strd	r3, r3, [r0, #8]
 578              		.loc 1 506 3 is_stmt 1 view .LVU175
 507:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   I2S_InitStruct->ClockPolarity     = LL_I2S_POLARITY_LOW;
 579              		.loc 1 507 37 is_stmt 0 view .LVU176
 580 000c C0E90423 		strd	r2, r3, [r0, #16]
 508:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** }
 581              		.loc 1 508 1 view .LVU177
 582 0010 7047     		bx	lr
 583              		.cfi_endproc
 584              	.LFE435:
 586              		.section	.text.LL_I2S_ConfigPrescaler,"ax",%progbits
 587              		.align	1
 588              		.global	LL_I2S_ConfigPrescaler
 589              		.syntax unified
 590              		.thumb
 591              		.thumb_func
 592              		.fpu fpv4-sp-d16
 594              	LL_I2S_ConfigPrescaler:
 595              	.LVL45:
 596              	.LFB436:
 509:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 510:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** /**
 511:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @brief  Set linear and parity prescaler.
 512:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @note   To calculate value of PrescalerLinear(I2SDIV[7:0] bits) and PrescalerParity(ODD bit)\n
 513:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *         Check Audio frequency table and formulas inside Reference Manual (SPI/I2S).
 514:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  SPIx SPI Instance
 515:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  PrescalerLinear value Min_Data=0x02 and Max_Data=0xFF.
 516:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @param  PrescalerParity This parameter can be one of the following values:
 517:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *         @arg @ref LL_I2S_PRESCALER_PARITY_EVEN
 518:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   *         @arg @ref LL_I2S_PRESCALER_PARITY_ODD
 519:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   * @retval None
 520:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   */
 521:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** void LL_I2S_ConfigPrescaler(SPI_TypeDef *SPIx, uint32_t PrescalerLinear, uint32_t PrescalerParity)
 522:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** {
 597              		.loc 1 522 1 is_stmt 1 view -0
 598              		.cfi_startproc
 599              		@ args = 0, pretend = 0, frame = 0
 600              		@ frame_needed = 0, uses_anonymous_args = 0
 601              		@ link register save eliminated.
 523:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Check the I2S parameters */
 524:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_I2S_ALL_INSTANCE(SPIx));
 602              		.loc 1 524 3 view .LVU179
 525:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_PRESCALER_LINEAR(PrescalerLinear));
 603              		.loc 1 525 3 view .LVU180
 526:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   assert_param(IS_LL_I2S_PRESCALER_PARITY(PrescalerParity));
 604              		.loc 1 526 3 view .LVU181
 527:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** 
 528:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   /* Write to SPIx I2SPR */
 529:../../..\CubeG4\src/stm32g4xx_ll_spi.c ****   MODIFY_REG(SPIx->I2SPR, SPI_I2SPR_I2SDIV | SPI_I2SPR_ODD, PrescalerLinear | (PrescalerParity << 8
 605              		.loc 1 529 3 view .LVU182
 606 0000 036A     		ldr	r3, [r0, #32]
 607 0002 23F4FF73 		bic	r3, r3, #510
 608 0006 41EA0222 		orr	r2, r1, r2, lsl #8
 609              	.LVL46:
 610              		.loc 1 529 3 is_stmt 0 view .LVU183
 611 000a 23F00103 		bic	r3, r3, #1
 612 000e 1343     		orrs	r3, r3, r2
 613 0010 0362     		str	r3, [r0, #32]
 530:../../..\CubeG4\src/stm32g4xx_ll_spi.c **** }
 614              		.loc 1 530 1 view .LVU184
 615 0012 7047     		bx	lr
 616              		.cfi_endproc
 617              	.LFE436:
 619              		.text
 620              	.Letext0:
 621              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 622              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 623              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 624              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 625              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 626              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
 627              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_ll_rcc.h"
