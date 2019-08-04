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
  13              		.file	"stm32g4xx_ll_i2c.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_I2C_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_I2C_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_I2C_DeInit:
  27              	.LVL0:
  28              	.LFB306:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_i2c.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @file    stm32g4xx_ll_i2c.c
   4:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @brief   I2C LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #include "stm32g4xx_ll_i2c.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #include "stm32g4xx_ll_bus.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #ifdef  USE_FULL_ASSERT
  25:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #include "stm32_assert.h"
  26:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #else
  27:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #define assert_param(expr) ((void)0U)
  28:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #endif
  29:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  30:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /** @addtogroup STM32G4xx_LL_Driver
  31:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @{
  32:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  33:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  34:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #if defined (I2C1) || defined (I2C2) || defined (I2C3) || defined (I2C4)
  35:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  36:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /** @defgroup I2C_LL I2C
  37:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @{
  38:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  39:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  40:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /* Private types -------------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /* Private variables ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /* Private constants ---------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /* Private macros ------------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /** @addtogroup I2C_LL_Private_Macros
  45:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @{
  46:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  47:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  48:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #define IS_LL_I2C_PERIPHERAL_MODE(__VALUE__)    (((__VALUE__) == LL_I2C_MODE_I2C)          || \
  49:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****                                                  ((__VALUE__) == LL_I2C_MODE_SMBUS_HOST)   || \
  50:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****                                                  ((__VALUE__) == LL_I2C_MODE_SMBUS_DEVICE) || \
  51:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****                                                  ((__VALUE__) == LL_I2C_MODE_SMBUS_DEVICE_ARP))
  52:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  53:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #define IS_LL_I2C_ANALOG_FILTER(__VALUE__)      (((__VALUE__) == LL_I2C_ANALOGFILTER_ENABLE) || \
  54:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****                                                  ((__VALUE__) == LL_I2C_ANALOGFILTER_DISABLE))
  55:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  56:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #define IS_LL_I2C_DIGITAL_FILTER(__VALUE__)     ((__VALUE__) <= 0x0000000FU)
  57:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  58:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #define IS_LL_I2C_OWN_ADDRESS1(__VALUE__)       ((__VALUE__) <= 0x000003FFU)
  59:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  60:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #define IS_LL_I2C_TYPE_ACKNOWLEDGE(__VALUE__)   (((__VALUE__) == LL_I2C_ACK) || \
  61:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****                                                  ((__VALUE__) == LL_I2C_NACK))
  62:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  63:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #define IS_LL_I2C_OWN_ADDRSIZE(__VALUE__)       (((__VALUE__) == LL_I2C_OWNADDRESS1_7BIT) || \
  64:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****                                                  ((__VALUE__) == LL_I2C_OWNADDRESS1_10BIT))
  65:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /**
  66:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @}
  67:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  68:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  69:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /* Private function prototypes -----------------------------------------------*/
  70:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  71:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /* Exported functions --------------------------------------------------------*/
  72:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /** @addtogroup I2C_LL_Exported_Functions
  73:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @{
  74:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  75:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  76:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /** @addtogroup I2C_LL_EF_Init
  77:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @{
  78:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  79:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  80:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /**
  81:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @brief  De-initialize the I2C registers to their default reset values.
  82:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @param  I2Cx I2C Instance.
  83:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @retval An ErrorStatus enumeration value:
  84:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *          - SUCCESS: I2C registers are de-initialized
  85:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *          - ERROR: I2C registers are not de-initialized
  86:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
  87:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** ErrorStatus LL_I2C_DeInit(I2C_TypeDef *I2Cx)
  88:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** {
  30              		.loc 1 88 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
  89:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   ErrorStatus status = SUCCESS;
  35              		.loc 1 89 3 view .LVU1
  90:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  91:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* Check the I2C Instance I2Cx */
  92:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_I2C_ALL_INSTANCE(I2Cx));
  36              		.loc 1 92 3 view .LVU2
  93:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  94:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   if (I2Cx == I2C1)
  37              		.loc 1 94 3 view .LVU3
  38              		.loc 1 94 6 is_stmt 0 view .LVU4
  39 0000 154B     		ldr	r3, .L7
  40 0002 9842     		cmp	r0, r3
  41 0004 0BD1     		bne	.L2
  95:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   {
  96:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Force reset of I2C clock */
  97:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_I2C1);
  42              		.loc 1 97 5 is_stmt 1 view .LVU5
  43              	.LVL1:
  44              	.LBB30:
  45              	.LBI30:
  46              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
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
  47              		.loc 2 1141 22 view .LVU6
  48              	.LBB31:
1142:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1RSTR1, Periphs);
  49              		.loc 2 1143 3 view .LVU7
  50 0006 03F5DE33 		add	r3, r3, #113664
  51 000a 9A6B     		ldr	r2, [r3, #56]
  52 000c 42F40012 		orr	r2, r2, #2097152
  53 0010 9A63     		str	r2, [r3, #56]
  54              	.LVL2:
  55              		.loc 2 1143 3 is_stmt 0 view .LVU8
  56              	.LBE31:
  57              	.LBE30:
  98:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  99:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Release reset of I2C clock */
 100:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_I2C1);
  58              		.loc 1 100 5 is_stmt 1 view .LVU9
  59              	.LBB32:
  60              	.LBI32:
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
  61              		.loc 2 1211 22 view .LVU10
  62              	.LBB33:
1212:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1213:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1RSTR1, Periphs);
  63              		.loc 2 1213 3 view .LVU11
  64 0012 9A6B     		ldr	r2, [r3, #56]
  65 0014 22F40012 		bic	r2, r2, #2097152
  66              	.LVL3:
  67              	.L6:
  68              		.loc 2 1213 3 is_stmt 0 view .LVU12
  69              	.LBE33:
  70              	.LBE32:
  71              	.LBB34:
  72              	.LBB35:
  73 0018 9A63     		str	r2, [r3, #56]
  74              	.LBE35:
  75              	.LBE34:
  89:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  76              		.loc 1 89 15 view .LVU13
  77 001a 0020     		movs	r0, #0
  78              	.LVL4:
  89:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
  79              		.loc 1 89 15 view .LVU14
  80 001c 7047     		bx	lr
  81              	.LVL5:
  82              	.L2:
 101:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   }
 102:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   else if (I2Cx == I2C2)
  83              		.loc 1 102 8 is_stmt 1 view .LVU15
  84              		.loc 1 102 11 is_stmt 0 view .LVU16
  85 001e 0F4B     		ldr	r3, .L7+4
  86 0020 9842     		cmp	r0, r3
  87 0022 09D1     		bne	.L4
 103:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   {
 104:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Force reset of I2C clock */
 105:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_I2C2);
  88              		.loc 1 105 5 is_stmt 1 view .LVU17
  89              	.LVL6:
  90              	.LBB37:
  91              	.LBI37:
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
  92              		.loc 2 1141 22 view .LVU18
  93              	.LBB38:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  94              		.loc 2 1143 3 view .LVU19
  95 0024 03F5DC33 		add	r3, r3, #112640
  96 0028 9A6B     		ldr	r2, [r3, #56]
  97 002a 42F48002 		orr	r2, r2, #4194304
  98 002e 9A63     		str	r2, [r3, #56]
  99              	.LVL7:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 100              		.loc 2 1143 3 is_stmt 0 view .LVU20
 101              	.LBE38:
 102              	.LBE37:
 106:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 107:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Release reset of I2C clock */
 108:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_I2C2);
 103              		.loc 1 108 5 is_stmt 1 view .LVU21
 104              	.LBB39:
 105              	.LBI34:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 106              		.loc 2 1211 22 view .LVU22
 107              	.LBB36:
 108              		.loc 2 1213 3 view .LVU23
 109 0030 9A6B     		ldr	r2, [r3, #56]
 110 0032 22F48002 		bic	r2, r2, #4194304
 111 0036 EFE7     		b	.L6
 112              	.LVL8:
 113              	.L4:
 114              		.loc 2 1213 3 is_stmt 0 view .LVU24
 115              	.LBE36:
 116              	.LBE39:
 109:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 110:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   }
 111:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   else if (I2Cx == I2C3)
 117              		.loc 1 111 8 is_stmt 1 view .LVU25
 118              		.loc 1 111 11 is_stmt 0 view .LVU26
 119 0038 094B     		ldr	r3, .L7+8
 120 003a 9842     		cmp	r0, r3
 121 003c 09D1     		bne	.L5
 112:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   {
 113:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Force reset of I2C clock */
 114:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_I2C3);
 122              		.loc 1 114 5 is_stmt 1 view .LVU27
 123              	.LVL9:
 124              	.LBB40:
 125              	.LBI40:
1141:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 126              		.loc 2 1141 22 view .LVU28
 127              	.LBB41:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 128              		.loc 2 1143 3 view .LVU29
 129 003e 03F5CC33 		add	r3, r3, #104448
 130 0042 9A6B     		ldr	r2, [r3, #56]
 131 0044 42F08042 		orr	r2, r2, #1073741824
 132 0048 9A63     		str	r2, [r3, #56]
 133              	.LVL10:
1143:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 134              		.loc 2 1143 3 is_stmt 0 view .LVU30
 135              	.LBE41:
 136              	.LBE40:
 115:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 116:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Release reset of I2C clock */
 117:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_I2C3);
 137              		.loc 1 117 5 is_stmt 1 view .LVU31
 138              	.LBB42:
 139              	.LBI42:
1211:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 140              		.loc 2 1211 22 view .LVU32
 141              	.LBB43:
 142              		.loc 2 1213 3 view .LVU33
 143 004a 9A6B     		ldr	r2, [r3, #56]
 144 004c 22F08042 		bic	r2, r2, #1073741824
 145 0050 E2E7     		b	.L6
 146              	.LVL11:
 147              	.L5:
 148              		.loc 2 1213 3 is_stmt 0 view .LVU34
 149              	.LBE43:
 150              	.LBE42:
 118:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   }
 119:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #if defined(I2C4)
 120:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   else if (I2Cx == I2C4)
 121:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   {
 122:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Force reset of I2C clock */
 123:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP2_ForceReset(LL_APB1_GRP2_PERIPH_I2C4);
 124:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 125:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     /* Release reset of I2C clock */
 126:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_APB1_GRP2_ReleaseReset(LL_APB1_GRP2_PERIPH_I2C4);
 127:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   }
 128:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** #endif
 129:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   else
 130:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   {
 131:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     status = ERROR;
 151              		.loc 1 131 12 view .LVU35
 152 0052 0120     		movs	r0, #1
 153              	.LVL12:
 132:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   }
 133:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 134:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   return status;
 154              		.loc 1 134 3 is_stmt 1 view .LVU36
 135:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** }
 155              		.loc 1 135 1 is_stmt 0 view .LVU37
 156 0054 7047     		bx	lr
 157              	.L8:
 158 0056 00BF     		.align	2
 159              	.L7:
 160 0058 00540040 		.word	1073763328
 161 005c 00580040 		.word	1073764352
 162 0060 00780040 		.word	1073772544
 163              		.cfi_endproc
 164              	.LFE306:
 166              		.section	.text.LL_I2C_Init,"ax",%progbits
 167              		.align	1
 168              		.global	LL_I2C_Init
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
 172              		.fpu fpv4-sp-d16
 174              	LL_I2C_Init:
 175              	.LVL13:
 176              	.LFB307:
 136:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 137:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /**
 138:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @brief  Initialize the I2C registers according to the specified parameters in I2C_InitStruct.
 139:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @param  I2Cx I2C Instance.
 140:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @param  I2C_InitStruct pointer to a @ref LL_I2C_InitTypeDef structure.
 141:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @retval An ErrorStatus enumeration value:
 142:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *          - SUCCESS: I2C registers are initialized
 143:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   *          - ERROR: Not applicable
 144:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
 145:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** ErrorStatus LL_I2C_Init(I2C_TypeDef *I2Cx, LL_I2C_InitTypeDef *I2C_InitStruct)
 146:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** {
 177              		.loc 1 146 1 is_stmt 1 view -0
 178              		.cfi_startproc
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 147:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* Check the I2C Instance I2Cx */
 148:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_I2C_ALL_INSTANCE(I2Cx));
 181              		.loc 1 148 3 view .LVU39
 149:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 150:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* Check the I2C parameters from I2C_InitStruct */
 151:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_LL_I2C_PERIPHERAL_MODE(I2C_InitStruct->PeripheralMode));
 182              		.loc 1 151 3 view .LVU40
 152:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_LL_I2C_ANALOG_FILTER(I2C_InitStruct->AnalogFilter));
 183              		.loc 1 152 3 view .LVU41
 153:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_LL_I2C_DIGITAL_FILTER(I2C_InitStruct->DigitalFilter));
 184              		.loc 1 153 3 view .LVU42
 154:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_LL_I2C_OWN_ADDRESS1(I2C_InitStruct->OwnAddress1));
 185              		.loc 1 154 3 view .LVU43
 155:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_LL_I2C_TYPE_ACKNOWLEDGE(I2C_InitStruct->TypeAcknowledge));
 186              		.loc 1 155 3 view .LVU44
 156:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   assert_param(IS_LL_I2C_OWN_ADDRSIZE(I2C_InitStruct->OwnAddrSize));
 187              		.loc 1 156 3 view .LVU45
 157:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 158:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* Disable the selected I2Cx Peripheral */
 159:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_Disable(I2Cx);
 188              		.loc 1 159 3 view .LVU46
 189              	.LBB62:
 190              	.LBI62:
 191              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_i2c.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @file    stm32g4xx_ll_i2c.h
   4:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief   Header file of I2C LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #ifndef STM32G4xx_LL_I2C_H
  22:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define STM32G4xx_LL_I2C_H
  23:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #if defined (I2C1) || defined (I2C2) || defined (I2C3) || defined (I2C4)
  36:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL I2C
  38:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  44:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Private constants ---------------------------------------------------------*/
  45:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_Private_Constants I2C Private Constants
  46:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
  47:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  48:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
  49:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
  50:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  51:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  52:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Private macros ------------------------------------------------------------*/
  53:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #if defined(USE_FULL_LL_DRIVER)
  54:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_Private_Macros I2C Private Macros
  55:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
  56:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  57:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
  58:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
  59:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  60:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #endif /*USE_FULL_LL_DRIVER*/
  61:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Exported types ------------------------------------------------------------*/
  63:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #if defined(USE_FULL_LL_DRIVER)
  64:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_ES_INIT I2C Exported Init structure
  65:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
  66:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
  67:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** typedef struct
  68:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
  69:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   uint32_t PeripheralMode;      /*!< Specifies the peripheral mode.
  70:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This parameter can be a value of @ref I2C_LL_EC_PERIPHERAL_MOD
  71:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  72:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This feature can be modified afterwards using unitary function
  73:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  74:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   uint32_t Timing;              /*!< Specifies the SDA setup, hold time and the SCL high, low perio
  75:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This parameter must be set by referring to the STM32CubeMX Too
  76:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      the helper macro @ref __LL_I2C_CONVERT_TIMINGS()
  77:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  78:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This feature can be modified afterwards using unitary function
  79:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  80:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   uint32_t AnalogFilter;        /*!< Enables or disables analog noise filter.
  81:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This parameter can be a value of @ref I2C_LL_EC_ANALOGFILTER_S
  82:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  83:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This feature can be modified afterwards using unitary function
  84:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  85:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   uint32_t DigitalFilter;       /*!< Configures the digital noise filter.
  86:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This parameter can be a number between Min_Data = 0x00 and Max
  87:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  88:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This feature can be modified afterwards using unitary function
  89:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  90:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   uint32_t OwnAddress1;         /*!< Specifies the device own address 1.
  91:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This parameter must be a value between Min_Data = 0x00 and Max
  92:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  93:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This feature can be modified afterwards using unitary function
  94:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  95:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   uint32_t TypeAcknowledge;     /*!< Specifies the ACKnowledge or Non ACKnowledge condition after t
  96:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This parameter can be a value of @ref I2C_LL_EC_I2C_ACKNOWLEDG
  97:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
  98:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This feature can be modified afterwards using unitary function
  99:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   uint32_t OwnAddrSize;         /*!< Specifies the device own address 1 size (7-bit or 10-bit).
 101:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This parameter can be a value of @ref I2C_LL_EC_OWNADDRESS1
 102:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 103:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                      This feature can be modified afterwards using unitary function
 104:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** } LL_I2C_InitTypeDef;
 105:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 106:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 107:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 108:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #endif /*USE_FULL_LL_DRIVER*/
 109:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 110:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Exported constants --------------------------------------------------------*/
 111:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_Exported_Constants I2C Exported Constants
 112:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 113:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 114:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 115:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_CLEAR_FLAG Clear Flags Defines
 116:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief    Flags defines which can be used with LL_I2C_WriteReg function
 117:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 118:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 119:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_ADDRCF                   I2C_ICR_ADDRCF          /*!< Address Matched flag   */
 120:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_NACKCF                   I2C_ICR_NACKCF          /*!< Not Acknowledge flag   */
 121:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_STOPCF                   I2C_ICR_STOPCF          /*!< Stop detection flag    */
 122:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_BERRCF                   I2C_ICR_BERRCF          /*!< Bus error flag         */
 123:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_ARLOCF                   I2C_ICR_ARLOCF          /*!< Arbitration Lost flag  */
 124:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_OVRCF                    I2C_ICR_OVRCF           /*!< Overrun/Underrun flag  */
 125:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_PECCF                    I2C_ICR_PECCF           /*!< PEC error flag         */
 126:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_TIMOUTCF                 I2C_ICR_TIMOUTCF        /*!< Timeout detection flag */
 127:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ICR_ALERTCF                  I2C_ICR_ALERTCF         /*!< Alert flag             */
 128:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 129:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 130:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 131:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 132:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_GET_FLAG Get Flags Defines
 133:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief    Flags defines which can be used with LL_I2C_ReadReg function
 134:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 135:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 136:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_TXE                      I2C_ISR_TXE             /*!< Transmit data register emp
 137:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_TXIS                     I2C_ISR_TXIS            /*!< Transmit interrupt status 
 138:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_RXNE                     I2C_ISR_RXNE            /*!< Receive data register not 
 139:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_ADDR                     I2C_ISR_ADDR            /*!< Address matched (slave mod
 140:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_NACKF                    I2C_ISR_NACKF           /*!< Not Acknowledge received f
 141:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_STOPF                    I2C_ISR_STOPF           /*!< Stop detection flag       
 142:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_TC                       I2C_ISR_TC              /*!< Transfer Complete (master 
 143:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_TCR                      I2C_ISR_TCR             /*!< Transfer Complete Reload  
 144:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_BERR                     I2C_ISR_BERR            /*!< Bus error                 
 145:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_ARLO                     I2C_ISR_ARLO            /*!< Arbitration lost          
 146:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_OVR                      I2C_ISR_OVR             /*!< Overrun/Underrun (slave mo
 147:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_PECERR                   I2C_ISR_PECERR          /*!< PEC Error in reception (SM
 148:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_TIMEOUT                  I2C_ISR_TIMEOUT         /*!< Timeout detection flag (SM
 149:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_ALERT                    I2C_ISR_ALERT           /*!< SMBus alert (SMBus mode)  
 150:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ISR_BUSY                     I2C_ISR_BUSY            /*!< Bus busy                  
 151:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 152:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 153:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 154:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 155:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_IT IT Defines
 156:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief    IT defines which can be used with LL_I2C_ReadReg and  LL_I2C_WriteReg functions
 157:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 158:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 159:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_CR1_TXIE                     I2C_CR1_TXIE            /*!< TX Interrupt enable       
 160:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_CR1_RXIE                     I2C_CR1_RXIE            /*!< RX Interrupt enable       
 161:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_CR1_ADDRIE                   I2C_CR1_ADDRIE          /*!< Address match Interrupt en
 162:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_CR1_NACKIE                   I2C_CR1_NACKIE          /*!< Not acknowledge received I
 163:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_CR1_STOPIE                   I2C_CR1_STOPIE          /*!< STOP detection Interrupt e
 164:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_CR1_TCIE                     I2C_CR1_TCIE            /*!< Transfer Complete interrup
 165:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_CR1_ERRIE                    I2C_CR1_ERRIE           /*!< Error interrupts enable   
 166:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 167:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 168:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 169:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 170:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_PERIPHERAL_MODE Peripheral Mode
 171:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 172:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 173:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_I2C                    0x00000000U              /*!< I2C Master or Slave mode  
 174:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_HOST             I2C_CR1_SMBHEN           /*!< SMBus Host address acknowl
 175:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_DEVICE           0x00000000U              /*!< SMBus Device default mode 
 176:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_DEVICE_ARP       I2C_CR1_SMBDEN           /*!< SMBus Device Default addre
 177:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 178:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 179:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 180:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 181:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_ANALOGFILTER_SELECTION Analog Filter Selection
 182:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 183:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 184:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ANALOGFILTER_ENABLE          0x00000000U             /*!< Analog filter is enabled. 
 185:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ANALOGFILTER_DISABLE         I2C_CR1_ANFOFF          /*!< Analog filter is disabled.
 186:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 187:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 188:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 189:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 190:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_ADDRESSING_MODE Master Addressing Mode
 191:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 192:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 193:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ADDRESSING_MODE_7BIT         0x00000000U              /*!< Master operates in 7-bit 
 194:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ADDRESSING_MODE_10BIT        I2C_CR2_ADD10            /*!< Master operates in 10-bit
 195:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 196:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 197:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 198:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 199:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_OWNADDRESS1 Own Address 1 Length
 200:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 201:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 202:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS1_7BIT             0x00000000U             /*!< Own address 1 is a 7-bit a
 203:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS1_10BIT            I2C_OAR1_OA1MODE        /*!< Own address 1 is a 10-bit 
 204:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 205:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 206:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 207:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 208:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_OWNADDRESS2 Own Address 2 Masks
 209:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 210:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 211:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_NOMASK           I2C_OAR2_OA2NOMASK      /*!< Own Address2 No mask.     
 212:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_MASK01           I2C_OAR2_OA2MASK01      /*!< Only Address2 bits[7:2] ar
 213:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_MASK02           I2C_OAR2_OA2MASK02      /*!< Only Address2 bits[7:3] ar
 214:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_MASK03           I2C_OAR2_OA2MASK03      /*!< Only Address2 bits[7:4] ar
 215:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_MASK04           I2C_OAR2_OA2MASK04      /*!< Only Address2 bits[7:5] ar
 216:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_MASK05           I2C_OAR2_OA2MASK05      /*!< Only Address2 bits[7:6] ar
 217:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_MASK06           I2C_OAR2_OA2MASK06      /*!< Only Address2 bits[7] are 
 218:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_OWNADDRESS2_MASK07           I2C_OAR2_OA2MASK07      /*!< No comparison is done. All
 219:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 220:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 221:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 222:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 223:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_I2C_ACKNOWLEDGE Acknowledge Generation
 224:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 225:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 226:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ACK                          0x00000000U              /*!< ACK is sent after current
 227:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_NACK                         I2C_CR2_NACK             /*!< NACK is sent after curren
 228:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 229:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 230:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 231:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 232:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_ADDRSLAVE Slave Address Length
 233:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 234:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 235:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ADDRSLAVE_7BIT               0x00000000U              /*!< Slave Address in 7-bit. *
 236:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ADDRSLAVE_10BIT              I2C_CR2_ADD10            /*!< Slave Address in 10-bit.*
 237:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 238:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 239:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 240:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 241:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_REQUEST Transfer Request Direction
 242:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 243:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 244:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_REQUEST_WRITE                0x00000000U              /*!< Master request a write tr
 245:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_REQUEST_READ                 I2C_CR2_RD_WRN           /*!< Master request a read tra
 246:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 247:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 248:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 249:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 250:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_MODE Transfer End Mode
 251:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 252:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 253:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_RELOAD                  I2C_CR2_RELOAD                                      /*!
 254:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_AUTOEND                 I2C_CR2_AUTOEND                                     /*!
 255:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SOFTEND                 0x00000000U                                         /*!
 256:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_RELOAD            LL_I2C_MODE_RELOAD                                  /*!
 257:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_AUTOEND_NO_PEC    LL_I2C_MODE_AUTOEND                                 /*!
 258:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_SOFTEND_NO_PEC    LL_I2C_MODE_SOFTEND                                 /*!
 259:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_AUTOEND_WITH_PEC  (uint32_t)(LL_I2C_MODE_AUTOEND | I2C_CR2_PECBYTE)   /*!
 260:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_MODE_SMBUS_SOFTEND_WITH_PEC  (uint32_t)(LL_I2C_MODE_SOFTEND | I2C_CR2_PECBYTE)   /*!
 261:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 262:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 263:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 264:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 265:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_GENERATE Start And Stop Generation
 266:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 267:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 268:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_NOSTARTSTOP         0x00000000U                                            
 269:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_STOP                (uint32_t)(0x80000000U | I2C_CR2_STOP)                 
 270:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_START_READ          (uint32_t)(0x80000000U | I2C_CR2_START | I2C_CR2_RD_WRN
 271:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_START_WRITE         (uint32_t)(0x80000000U | I2C_CR2_START)                
 272:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_RESTART_7BIT_READ   (uint32_t)(0x80000000U | I2C_CR2_START | I2C_CR2_RD_WRN
 273:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_RESTART_7BIT_WRITE  (uint32_t)(0x80000000U | I2C_CR2_START)                
 274:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_RESTART_10BIT_READ  (uint32_t)(0x80000000U | I2C_CR2_START | I2C_CR2_RD_WRN
 275:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_GENERATE_RESTART_10BIT_WRITE (uint32_t)(0x80000000U | I2C_CR2_START)                
 276:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 277:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 278:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 279:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 280:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_DIRECTION Read Write Direction
 281:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 282:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 283:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_DIRECTION_WRITE              0x00000000U              /*!< Write transfer request by
 284:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_DIRECTION_READ               I2C_ISR_DIR              /*!< Read transfer request by 
 285:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 286:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 287:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 288:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 289:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_DMA_REG_DATA DMA Register Data
 290:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 291:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 292:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_DMA_REG_DATA_TRANSMIT        0x00000000U              /*!< Get address of data regis
 293:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_DMA_REG_DATA_RECEIVE         0x00000001U              /*!< Get address of data regis
 294:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 295:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 296:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 297:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 298:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_SMBUS_TIMEOUTA_MODE SMBus TimeoutA Mode SCL SDA Timeout
 299:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 300:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 301:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_SMBUS_TIMEOUTA_MODE_SCL_LOW      0x00000000U          /*!< TimeoutA is used to detec
 302:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_SMBUS_TIMEOUTA_MODE_SDA_SCL_HIGH I2C_TIMEOUTR_TIDLE   /*!< TimeoutA is used to detec
 303:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 304:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 305:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 307:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EC_SMBUS_TIMEOUT_SELECTION SMBus Timeout Selection
 308:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 309:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 310:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_SMBUS_TIMEOUTA               I2C_TIMEOUTR_TIMOUTEN                                  
 311:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_SMBUS_TIMEOUTB               I2C_TIMEOUTR_TEXTEN                                    
 312:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_SMBUS_ALL_TIMEOUT            (uint32_t)(I2C_TIMEOUTR_TIMOUTEN | I2C_TIMEOUTR_TEXTEN)
 313:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 314:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 315:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 316:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 317:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 318:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 319:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 320:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 321:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Exported macro ------------------------------------------------------------*/
 322:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_Exported_Macros I2C Exported Macros
 323:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 324:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 325:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 326:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EM_WRITE_READ Common Write and read registers Macros
 327:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 328:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 329:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 330:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 331:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Write a value in I2C register
 332:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __INSTANCE__ I2C Instance
 333:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __REG__ Register to be written
 334:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __VALUE__ Value to be written in the register
 335:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 336:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 337:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG(__INSTANCE__->__REG__, (__VALUE
 338:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 339:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 340:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Read a value in I2C register
 341:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __INSTANCE__ I2C Instance
 342:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __REG__ Register to be read
 343:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Register value
 344:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 345:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define LL_I2C_ReadReg(__INSTANCE__, __REG__) READ_REG(__INSTANCE__->__REG__)
 346:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 347:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 348:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 349:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 350:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EM_CONVERT_TIMINGS Convert SDA SCL timings
 351:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 352:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 353:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 354:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure the SDA setup, hold time and the SCL high, low period.
 355:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __PRESCALER__ This parameter must be a value between  Min_Data=0 and Max_Data=0xF.
 356:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __DATA_SETUP_TIME__ This parameter must be a value between Min_Data=0 and Max_Data=0xF.
 357:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __DATA_HOLD_TIME__ This parameter must be a value between Min_Data=0 and Max_Data=0xF. 
 358:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __CLOCK_HIGH_PERIOD__ This parameter must be a value between Min_Data=0 and Max_Data=0x
 359:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  __CLOCK_LOW_PERIOD__ This parameter must be a value between  Min_Data=0 and Max_Data=0x
 360:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0 and Max_Data=0xFFFFFFFF
 361:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 362:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** #define __LL_I2C_CONVERT_TIMINGS(__PRESCALER__, __DATA_SETUP_TIME__, __DATA_HOLD_TIME__, __CLOCK_HI
 363:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****         ((((uint32_t)(__PRESCALER__)         << I2C_TIMINGR_PRESC_Pos)  & I2C_TIMINGR_PRESC)   | \
 364:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****          (((uint32_t)(__DATA_SETUP_TIME__)   << I2C_TIMINGR_SCLDEL_Pos) & I2C_TIMINGR_SCLDEL)  | \
 365:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****          (((uint32_t)(__DATA_HOLD_TIME__)    << I2C_TIMINGR_SDADEL_Pos) & I2C_TIMINGR_SDADEL)  | \
 366:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****          (((uint32_t)(__CLOCK_HIGH_PERIOD__) << I2C_TIMINGR_SCLH_Pos)   & I2C_TIMINGR_SCLH)    | \
 367:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****          (((uint32_t)(__CLOCK_LOW_PERIOD__)  << I2C_TIMINGR_SCLL_Pos)   & I2C_TIMINGR_SCLL))
 368:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 369:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 370:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 371:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 372:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 373:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
 374:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 375:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 376:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /* Exported functions --------------------------------------------------------*/
 377:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_Exported_Functions I2C Exported Functions
 378:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 379:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 380:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 381:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EF_Configuration Configuration
 382:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
 383:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 384:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 385:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 386:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable I2C peripheral (PE = 1).
 387:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          PE            LL_I2C_Enable
 388:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 389:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 390:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 391:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_Enable(I2C_TypeDef *I2Cx)
 392:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 393:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_PE);
 394:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 395:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 396:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 397:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable I2C peripheral (PE = 0).
 398:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   When PE = 0, the I2C SCL and SDA lines are released.
 399:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Internal state machines and status bits are put back to their reset value.
 400:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         When cleared, PE must be kept low for at least 3 APB clock cycles.
 401:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          PE            LL_I2C_Disable
 402:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 403:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 404:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 405:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_Disable(I2C_TypeDef *I2Cx)
 192              		.loc 3 405 22 view .LVU47
 193              	.LBB63:
 406:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 407:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_PE);
 194              		.loc 3 407 3 view .LVU48
 195 0000 0368     		ldr	r3, [r0]
 196 0002 23F00103 		bic	r3, r3, #1
 197              	.LBE63:
 198              	.LBE62:
 146:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* Check the I2C Instance I2Cx */
 199              		.loc 1 146 1 is_stmt 0 view .LVU49
 200 0006 10B5     		push	{r4, lr}
 201              		.cfi_def_cfa_offset 8
 202              		.cfi_offset 4, -8
 203              		.cfi_offset 14, -4
 204              	.LBB65:
 205              	.LBB64:
 206              		.loc 3 407 3 view .LVU50
 207 0008 0360     		str	r3, [r0]
 208              	.LVL14:
 209              		.loc 3 407 3 view .LVU51
 210              	.LBE64:
 211              	.LBE65:
 160:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 161:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /*---------------------------- I2Cx CR1 Configuration ------------------------
 162:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * Configure the analog and digital noise filters with parameters :
 163:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * - AnalogFilter: I2C_CR1_ANFOFF bit
 164:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * - DigitalFilter: I2C_CR1_DNF[3:0] bits
 165:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    */
 166:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_ConfigFilters(I2Cx, I2C_InitStruct->AnalogFilter, I2C_InitStruct->DigitalFilter);
 212              		.loc 1 166 3 is_stmt 1 view .LVU52
 213              	.LBB66:
 214              	.LBI66:
 408:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 409:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 410:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 411:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if the I2C peripheral is enabled or disabled.
 412:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          PE            LL_I2C_IsEnabled
 413:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 414:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 415:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 416:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabled(I2C_TypeDef *I2Cx)
 417:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 418:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_PE) == (I2C_CR1_PE)) ? 1UL : 0UL);
 419:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 420:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 421:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 422:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure Noise Filters (Analog and Digital).
 423:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   If the analog filter is also enabled, the digital filter is added to analog filter.
 424:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         The filters can only be programmed when the I2C is disabled (PE = 0).
 425:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ANFOFF        LL_I2C_ConfigFilters\n
 426:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         CR1          DNF           LL_I2C_ConfigFilters
 427:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 428:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  AnalogFilter This parameter can be one of the following values:
 429:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_ANALOGFILTER_ENABLE
 430:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_ANALOGFILTER_DISABLE
 431:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  DigitalFilter This parameter must be a value between Min_Data=0x00 (Digital filter disa
 432:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         This parameter is used to configure the digital noise filter on SDA and SCL input.
 433:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         The digital filter will filter spikes with a length of up to DNF[3:0]*ti2cclk.
 434:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 435:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 436:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ConfigFilters(I2C_TypeDef *I2Cx, uint32_t AnalogFilter, uint32_t Digita
 215              		.loc 3 436 22 view .LVU53
 216              	.LBB67:
 437:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 438:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->CR1, I2C_CR1_ANFOFF | I2C_CR1_DNF, AnalogFilter | (DigitalFilter << I2C_CR1_DNF_
 217              		.loc 3 438 3 view .LVU54
 218 000a D1E90234 		ldrd	r3, r4, [r1, #8]
 219 000e 0268     		ldr	r2, [r0]
 220 0010 43EA0423 		orr	r3, r3, r4, lsl #8
 221 0014 22F4F852 		bic	r2, r2, #7936
 222 0018 1343     		orrs	r3, r3, r2
 223 001a 0360     		str	r3, [r0]
 224              	.LVL15:
 225              		.loc 3 438 3 is_stmt 0 view .LVU55
 226              	.LBE67:
 227              	.LBE66:
 167:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 168:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /*---------------------------- I2Cx TIMINGR Configuration --------------------
 169:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * Configure the SDA setup, hold time and the SCL high, low period with parameter :
 170:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * - Timing: I2C_TIMINGR_PRESC[3:0], I2C_TIMINGR_SCLDEL[3:0], I2C_TIMINGR_SDADEL[3:0],
 171:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    *           I2C_TIMINGR_SCLH[7:0] and I2C_TIMINGR_SCLL[7:0] bits
 172:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    */
 173:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_SetTiming(I2Cx, I2C_InitStruct->Timing);
 228              		.loc 1 173 3 is_stmt 1 view .LVU56
 229 001c 4B68     		ldr	r3, [r1, #4]
 230              	.LVL16:
 231              	.LBB68:
 232              	.LBI68:
 439:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 440:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 441:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 442:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure Digital Noise Filter.
 443:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   If the analog filter is also enabled, the digital filter is added to analog filter.
 444:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         This filter can only be programmed when the I2C is disabled (PE = 0).
 445:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          DNF           LL_I2C_SetDigitalFilter
 446:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 447:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  DigitalFilter This parameter must be a value between Min_Data=0x00 (Digital filter disa
 448:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         This parameter is used to configure the digital noise filter on SDA and SCL input.
 449:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         The digital filter will filter spikes with a length of up to DNF[3:0]*ti2cclk.
 450:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 451:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 452:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetDigitalFilter(I2C_TypeDef *I2Cx, uint32_t DigitalFilter)
 453:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 454:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->CR1, I2C_CR1_DNF, DigitalFilter << I2C_CR1_DNF_Pos);
 455:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 456:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 457:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 458:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the current Digital Noise Filter configuration.
 459:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          DNF           LL_I2C_GetDigitalFilter
 460:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 461:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0x0 and Max_Data=0xF
 462:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 463:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetDigitalFilter(I2C_TypeDef *I2Cx)
 464:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 465:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->CR1, I2C_CR1_DNF) >> I2C_CR1_DNF_Pos);
 466:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 467:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 468:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 469:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable Analog Noise Filter.
 470:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This filter can only be programmed when the I2C is disabled (PE = 0).
 471:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ANFOFF        LL_I2C_EnableAnalogFilter
 472:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 473:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 474:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 475:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableAnalogFilter(I2C_TypeDef *I2Cx)
 476:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 477:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_ANFOFF);
 478:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 479:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 480:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 481:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable Analog Noise Filter.
 482:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This filter can only be programmed when the I2C is disabled (PE = 0).
 483:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ANFOFF        LL_I2C_DisableAnalogFilter
 484:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 485:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 486:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 487:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableAnalogFilter(I2C_TypeDef *I2Cx)
 488:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 489:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_ANFOFF);
 490:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 491:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 492:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 493:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Analog Noise Filter is enabled or disabled.
 494:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ANFOFF        LL_I2C_IsEnabledAnalogFilter
 495:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 496:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 497:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 498:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledAnalogFilter(I2C_TypeDef *I2Cx)
 499:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 500:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_ANFOFF) != (I2C_CR1_ANFOFF)) ? 1UL : 0UL);
 501:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 502:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 503:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 504:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable DMA transmission requests.
 505:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TXDMAEN       LL_I2C_EnableDMAReq_TX
 506:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 507:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 508:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 509:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableDMAReq_TX(I2C_TypeDef *I2Cx)
 510:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 511:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_TXDMAEN);
 512:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 513:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 514:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 515:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable DMA transmission requests.
 516:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TXDMAEN       LL_I2C_DisableDMAReq_TX
 517:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 518:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 519:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 520:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableDMAReq_TX(I2C_TypeDef *I2Cx)
 521:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 522:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_TXDMAEN);
 523:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 524:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 525:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 526:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if DMA transmission requests are enabled or disabled.
 527:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TXDMAEN       LL_I2C_IsEnabledDMAReq_TX
 528:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 529:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 530:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 531:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledDMAReq_TX(I2C_TypeDef *I2Cx)
 532:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 533:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_TXDMAEN) == (I2C_CR1_TXDMAEN)) ? 1UL : 0UL);
 534:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 535:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 536:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 537:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable DMA reception requests.
 538:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          RXDMAEN       LL_I2C_EnableDMAReq_RX
 539:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 540:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 541:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 542:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableDMAReq_RX(I2C_TypeDef *I2Cx)
 543:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 544:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_RXDMAEN);
 545:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 546:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 547:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 548:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable DMA reception requests.
 549:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          RXDMAEN       LL_I2C_DisableDMAReq_RX
 550:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 551:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 552:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 553:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableDMAReq_RX(I2C_TypeDef *I2Cx)
 554:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 555:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_RXDMAEN);
 556:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 557:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 558:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 559:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if DMA reception requests are enabled or disabled.
 560:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          RXDMAEN       LL_I2C_IsEnabledDMAReq_RX
 561:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 562:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 563:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 564:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledDMAReq_RX(I2C_TypeDef *I2Cx)
 565:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 566:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_RXDMAEN) == (I2C_CR1_RXDMAEN)) ? 1UL : 0UL);
 567:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 568:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 569:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 570:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the data register address used for DMA transfer
 571:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TXDR         TXDATA        LL_I2C_DMA_GetRegAddr\n
 572:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         RXDR         RXDATA        LL_I2C_DMA_GetRegAddr
 573:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance
 574:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  Direction This parameter can be one of the following values:
 575:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_DMA_REG_DATA_TRANSMIT
 576:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_DMA_REG_DATA_RECEIVE
 577:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Address of data register
 578:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 579:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_DMA_GetRegAddr(I2C_TypeDef *I2Cx, uint32_t Direction)
 580:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 581:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   register uint32_t data_reg_addr;
 582:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 583:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   if (Direction == LL_I2C_DMA_REG_DATA_TRANSMIT)
 584:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   {
 585:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****     /* return address of TXDR register */
 586:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****     data_reg_addr = (uint32_t) & (I2Cx->TXDR);
 587:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   }
 588:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   else
 589:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   {
 590:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****     /* return address of RXDR register */
 591:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****     data_reg_addr = (uint32_t) & (I2Cx->RXDR);
 592:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   }
 593:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 594:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return data_reg_addr;
 595:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 596:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 597:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 598:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable Clock stretching.
 599:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This bit can only be programmed when the I2C is disabled (PE = 0).
 600:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          NOSTRETCH     LL_I2C_EnableClockStretching
 601:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 602:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 603:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 604:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableClockStretching(I2C_TypeDef *I2Cx)
 605:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 606:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_NOSTRETCH);
 607:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 608:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 609:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 610:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable Clock stretching.
 611:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This bit can only be programmed when the I2C is disabled (PE = 0).
 612:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          NOSTRETCH     LL_I2C_DisableClockStretching
 613:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 614:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 615:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 616:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableClockStretching(I2C_TypeDef *I2Cx)
 617:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 618:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_NOSTRETCH);
 619:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 620:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 621:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 622:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Clock stretching is enabled or disabled.
 623:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          NOSTRETCH     LL_I2C_IsEnabledClockStretching
 624:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 625:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 626:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 627:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledClockStretching(I2C_TypeDef *I2Cx)
 628:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 629:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_NOSTRETCH) != (I2C_CR1_NOSTRETCH)) ? 1UL : 0UL);
 630:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 631:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 632:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 633:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable hardware byte control in slave mode.
 634:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          SBC           LL_I2C_EnableSlaveByteControl
 635:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 636:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 637:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 638:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableSlaveByteControl(I2C_TypeDef *I2Cx)
 639:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 640:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_SBC);
 641:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 642:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 643:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 644:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable hardware byte control in slave mode.
 645:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          SBC           LL_I2C_DisableSlaveByteControl
 646:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 647:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 648:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 649:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableSlaveByteControl(I2C_TypeDef *I2Cx)
 650:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 651:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_SBC);
 652:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 653:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 654:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 655:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if hardware byte control in slave mode is enabled or disabled.
 656:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          SBC           LL_I2C_IsEnabledSlaveByteControl
 657:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 658:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 659:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 660:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledSlaveByteControl(I2C_TypeDef *I2Cx)
 661:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 662:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_SBC) == (I2C_CR1_SBC)) ? 1UL : 0UL);
 663:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 664:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 665:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 666:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable Wakeup from STOP.
 667:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_I2C_WAKEUP_FROMSTOP_INSTANCE(I2Cx) can be used to check whether or not
 668:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         WakeUpFromStop feature is supported by the I2Cx Instance.
 669:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This bit can only be programmed when Digital Filter is disabled.
 670:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          WUPEN         LL_I2C_EnableWakeUpFromStop
 671:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 672:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 673:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 674:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableWakeUpFromStop(I2C_TypeDef *I2Cx)
 675:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 676:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_WUPEN);
 677:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 678:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 679:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 680:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable Wakeup from STOP.
 681:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_I2C_WAKEUP_FROMSTOP_INSTANCE(I2Cx) can be used to check whether or not
 682:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         WakeUpFromStop feature is supported by the I2Cx Instance.
 683:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          WUPEN         LL_I2C_DisableWakeUpFromStop
 684:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 685:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 686:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 687:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableWakeUpFromStop(I2C_TypeDef *I2Cx)
 688:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 689:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_WUPEN);
 690:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 691:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 692:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 693:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Wakeup from STOP is enabled or disabled.
 694:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_I2C_WAKEUP_FROMSTOP_INSTANCE(I2Cx) can be used to check whether or not
 695:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         WakeUpFromStop feature is supported by the I2Cx Instance.
 696:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          WUPEN         LL_I2C_IsEnabledWakeUpFromStop
 697:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 698:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 699:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 700:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledWakeUpFromStop(I2C_TypeDef *I2Cx)
 701:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 702:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_WUPEN) == (I2C_CR1_WUPEN)) ? 1UL : 0UL);
 703:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 704:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 705:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 706:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable General Call.
 707:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   When enabled the Address 0x00 is ACKed.
 708:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          GCEN          LL_I2C_EnableGeneralCall
 709:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 710:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 711:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 712:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableGeneralCall(I2C_TypeDef *I2Cx)
 713:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 714:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_GCEN);
 715:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 716:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 717:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 718:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable General Call.
 719:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   When disabled the Address 0x00 is NACKed.
 720:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          GCEN          LL_I2C_DisableGeneralCall
 721:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 722:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 723:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 724:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableGeneralCall(I2C_TypeDef *I2Cx)
 725:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 726:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_GCEN);
 727:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 728:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 729:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 730:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if General Call is enabled or disabled.
 731:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          GCEN          LL_I2C_IsEnabledGeneralCall
 732:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 733:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 734:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 735:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledGeneralCall(I2C_TypeDef *I2Cx)
 736:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 737:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_GCEN) == (I2C_CR1_GCEN)) ? 1UL : 0UL);
 738:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 739:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 740:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 741:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure the Master to operate in 7-bit or 10-bit addressing mode.
 742:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Changing this bit is not allowed, when the START bit is set.
 743:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          ADD10         LL_I2C_SetMasterAddressingMode
 744:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 745:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  AddressingMode This parameter can be one of the following values:
 746:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_ADDRESSING_MODE_7BIT
 747:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_ADDRESSING_MODE_10BIT
 748:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 749:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 750:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetMasterAddressingMode(I2C_TypeDef *I2Cx, uint32_t AddressingMode)
 751:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 752:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->CR2, I2C_CR2_ADD10, AddressingMode);
 753:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 754:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 755:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 756:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the Master addressing mode.
 757:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          ADD10         LL_I2C_GetMasterAddressingMode
 758:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 759:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Returned value can be one of the following values:
 760:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_ADDRESSING_MODE_7BIT
 761:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_ADDRESSING_MODE_10BIT
 762:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 763:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetMasterAddressingMode(I2C_TypeDef *I2Cx)
 764:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 765:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->CR2, I2C_CR2_ADD10));
 766:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 767:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 768:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 769:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Set the Own Address1.
 770:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR1         OA1           LL_I2C_SetOwnAddress1\n
 771:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         OAR1         OA1MODE       LL_I2C_SetOwnAddress1
 772:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 773:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  OwnAddress1 This parameter must be a value between Min_Data=0 and Max_Data=0x3FF.
 774:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  OwnAddrSize This parameter can be one of the following values:
 775:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS1_7BIT
 776:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS1_10BIT
 777:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 778:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 779:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetOwnAddress1(I2C_TypeDef *I2Cx, uint32_t OwnAddress1, uint32_t OwnAdd
 780:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 781:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->OAR1, I2C_OAR1_OA1 | I2C_OAR1_OA1MODE, OwnAddress1 | OwnAddrSize);
 782:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 783:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 784:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 785:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable acknowledge on Own Address1 match address.
 786:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR1         OA1EN         LL_I2C_EnableOwnAddress1
 787:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 788:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 789:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 790:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableOwnAddress1(I2C_TypeDef *I2Cx)
 791:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 792:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->OAR1, I2C_OAR1_OA1EN);
 793:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 794:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 795:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 796:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable acknowledge on Own Address1 match address.
 797:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR1         OA1EN         LL_I2C_DisableOwnAddress1
 798:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 799:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 800:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 801:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableOwnAddress1(I2C_TypeDef *I2Cx)
 802:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 803:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->OAR1, I2C_OAR1_OA1EN);
 804:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 805:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 806:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 807:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Own Address1 acknowledge is enabled or disabled.
 808:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR1         OA1EN         LL_I2C_IsEnabledOwnAddress1
 809:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 810:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 811:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 812:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledOwnAddress1(I2C_TypeDef *I2Cx)
 813:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 814:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->OAR1, I2C_OAR1_OA1EN) == (I2C_OAR1_OA1EN)) ? 1UL : 0UL);
 815:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 816:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 817:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 818:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Set the 7bits Own Address2.
 819:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This action has no effect if own address2 is enabled.
 820:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR2         OA2           LL_I2C_SetOwnAddress2\n
 821:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         OAR2         OA2MSK        LL_I2C_SetOwnAddress2
 822:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 823:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  OwnAddress2 Value between Min_Data=0 and Max_Data=0x7F.
 824:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  OwnAddrMask This parameter can be one of the following values:
 825:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_NOMASK
 826:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_MASK01
 827:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_MASK02
 828:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_MASK03
 829:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_MASK04
 830:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_MASK05
 831:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_MASK06
 832:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_OWNADDRESS2_MASK07
 833:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 834:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 835:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetOwnAddress2(I2C_TypeDef *I2Cx, uint32_t OwnAddress2, uint32_t OwnAdd
 836:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 837:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->OAR2, I2C_OAR2_OA2 | I2C_OAR2_OA2MSK, OwnAddress2 | OwnAddrMask);
 838:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 839:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 840:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 841:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable acknowledge on Own Address2 match address.
 842:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR2         OA2EN         LL_I2C_EnableOwnAddress2
 843:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 844:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 845:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 846:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableOwnAddress2(I2C_TypeDef *I2Cx)
 847:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 848:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->OAR2, I2C_OAR2_OA2EN);
 849:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 850:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 851:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 852:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable  acknowledge on Own Address2 match address.
 853:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR2         OA2EN         LL_I2C_DisableOwnAddress2
 854:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 855:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 856:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 857:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableOwnAddress2(I2C_TypeDef *I2Cx)
 858:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 859:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->OAR2, I2C_OAR2_OA2EN);
 860:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 861:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 862:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 863:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Own Address1 acknowledge is enabled or disabled.
 864:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll OAR2         OA2EN         LL_I2C_IsEnabledOwnAddress2
 865:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 866:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
 867:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 868:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledOwnAddress2(I2C_TypeDef *I2Cx)
 869:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 870:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->OAR2, I2C_OAR2_OA2EN) == (I2C_OAR2_OA2EN)) ? 1UL : 0UL);
 871:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 872:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 873:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 874:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure the SDA setup, hold time and the SCL high, low period.
 875:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This bit can only be programmed when the I2C is disabled (PE = 0).
 876:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMINGR      TIMINGR       LL_I2C_SetTiming
 877:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 878:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  Timing This parameter must be a value between Min_Data=0 and Max_Data=0xFFFFFFFF.
 879:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This parameter is computed with the STM32CubeMX Tool.
 880:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 881:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 882:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetTiming(I2C_TypeDef *I2Cx, uint32_t Timing)
 233              		.loc 3 882 22 view .LVU57
 234              	.LBB69:
 883:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 884:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   WRITE_REG(I2Cx->TIMINGR, Timing);
 235              		.loc 3 884 3 view .LVU58
 236 001e 0361     		str	r3, [r0, #16]
 237              	.LVL17:
 238              		.loc 3 884 3 is_stmt 0 view .LVU59
 239              	.LBE69:
 240              	.LBE68:
 174:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 175:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* Enable the selected I2Cx Peripheral */
 176:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_Enable(I2Cx);
 241              		.loc 1 176 3 is_stmt 1 view .LVU60
 242              	.LBB70:
 243              	.LBI70:
 391:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 244              		.loc 3 391 22 view .LVU61
 245              	.LBB71:
 393:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 246              		.loc 3 393 3 view .LVU62
 247 0020 0368     		ldr	r3, [r0]
 248              	.LBE71:
 249              	.LBE70:
 177:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 178:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /*---------------------------- I2Cx OAR1 Configuration -----------------------
 179:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * Disable, Configure and Enable I2Cx device own address 1 with parameters :
 180:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * - OwnAddress1:  I2C_OAR1_OA1[9:0] bits
 181:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * - OwnAddrSize:  I2C_OAR1_OA1MODE bit
 182:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    */
 183:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_DisableOwnAddress1(I2Cx);
 184:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_SetOwnAddress1(I2Cx, I2C_InitStruct->OwnAddress1, I2C_InitStruct->OwnAddrSize);
 250              		.loc 1 184 3 is_stmt 0 view .LVU63
 251 0022 0C69     		ldr	r4, [r1, #16]
 252              	.LBB73:
 253              	.LBB72:
 393:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 254              		.loc 3 393 3 view .LVU64
 255 0024 43F00103 		orr	r3, r3, #1
 256 0028 0360     		str	r3, [r0]
 257              	.LVL18:
 393:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 258              		.loc 3 393 3 view .LVU65
 259              	.LBE72:
 260              	.LBE73:
 183:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_SetOwnAddress1(I2Cx, I2C_InitStruct->OwnAddress1, I2C_InitStruct->OwnAddrSize);
 261              		.loc 1 183 3 is_stmt 1 view .LVU66
 262              	.LBB74:
 263              	.LBI74:
 801:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 264              		.loc 3 801 22 view .LVU67
 265              	.LBB75:
 803:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 266              		.loc 3 803 3 view .LVU68
 267 002a 8368     		ldr	r3, [r0, #8]
 268 002c 23F40043 		bic	r3, r3, #32768
 269 0030 8360     		str	r3, [r0, #8]
 270              	.LVL19:
 803:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 271              		.loc 3 803 3 is_stmt 0 view .LVU69
 272              	.LBE75:
 273              	.LBE74:
 274              		.loc 1 184 3 is_stmt 1 view .LVU70
 275              	.LBB76:
 276              	.LBI76:
 779:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 277              		.loc 3 779 22 view .LVU71
 278              	.LBB77:
 781:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 279              		.loc 3 781 3 view .LVU72
 280 0032 8268     		ldr	r2, [r0, #8]
 281 0034 8B69     		ldr	r3, [r1, #24]
 282 0036 22F4FF62 		bic	r2, r2, #2040
 283 003a 2343     		orrs	r3, r3, r4
 284 003c 22F00702 		bic	r2, r2, #7
 285 0040 1343     		orrs	r3, r3, r2
 286 0042 8360     		str	r3, [r0, #8]
 287              	.LVL20:
 781:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 288              		.loc 3 781 3 is_stmt 0 view .LVU73
 289              	.LBE77:
 290              	.LBE76:
 185:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 186:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* OwnAdress1 == 0 is reserved for General Call address */
 187:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   if (I2C_InitStruct->OwnAddress1 != 0U)
 291              		.loc 1 187 3 is_stmt 1 view .LVU74
 292              		.loc 1 187 6 is_stmt 0 view .LVU75
 293 0044 1CB1     		cbz	r4, .L10
 188:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   {
 189:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****     LL_I2C_EnableOwnAddress1(I2Cx);
 294              		.loc 1 189 5 is_stmt 1 view .LVU76
 295              	.LVL21:
 296              	.LBB78:
 297              	.LBI78:
 790:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 298              		.loc 3 790 22 view .LVU77
 299              	.LBB79:
 792:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 300              		.loc 3 792 3 view .LVU78
 301 0046 8368     		ldr	r3, [r0, #8]
 302 0048 43F40043 		orr	r3, r3, #32768
 303 004c 8360     		str	r3, [r0, #8]
 304              	.LVL22:
 305              	.L10:
 792:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 306              		.loc 3 792 3 is_stmt 0 view .LVU79
 307              	.LBE79:
 308              	.LBE78:
 190:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   }
 191:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 192:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /*---------------------------- I2Cx MODE Configuration -----------------------
 193:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * Configure I2Cx peripheral mode with parameter :
 194:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * - PeripheralMode: I2C_CR1_SMBDEN and I2C_CR1_SMBHEN bits
 195:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    */
 196:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_SetMode(I2Cx, I2C_InitStruct->PeripheralMode);
 309              		.loc 1 196 3 is_stmt 1 view .LVU80
 310              	.LBB80:
 311              	.LBI80:
 885:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 886:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 887:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 888:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the Timing Prescaler setting.
 889:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMINGR      PRESC         LL_I2C_GetTimingPrescaler
 890:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 891:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0x0 and Max_Data=0xF
 892:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 893:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetTimingPrescaler(I2C_TypeDef *I2Cx)
 894:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 895:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMINGR, I2C_TIMINGR_PRESC) >> I2C_TIMINGR_PRESC_Pos);
 896:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 897:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 898:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 899:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the SCL low period setting.
 900:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMINGR      SCLL          LL_I2C_GetClockLowPeriod
 901:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 902:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xFF
 903:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 904:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetClockLowPeriod(I2C_TypeDef *I2Cx)
 905:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 906:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMINGR, I2C_TIMINGR_SCLL) >> I2C_TIMINGR_SCLL_Pos);
 907:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 908:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 909:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 910:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the SCL high period setting.
 911:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMINGR      SCLH          LL_I2C_GetClockHighPeriod
 912:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 913:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xFF
 914:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 915:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetClockHighPeriod(I2C_TypeDef *I2Cx)
 916:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 917:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMINGR, I2C_TIMINGR_SCLH) >> I2C_TIMINGR_SCLH_Pos);
 918:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 919:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 920:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 921:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the SDA hold time.
 922:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMINGR      SDADEL        LL_I2C_GetDataHoldTime
 923:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 924:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0x0 and Max_Data=0xF
 925:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 926:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetDataHoldTime(I2C_TypeDef *I2Cx)
 927:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 928:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMINGR, I2C_TIMINGR_SDADEL) >> I2C_TIMINGR_SDADEL_Pos);
 929:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 930:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 931:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 932:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the SDA setup time.
 933:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMINGR      SCLDEL        LL_I2C_GetDataSetupTime
 934:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 935:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0x0 and Max_Data=0xF
 936:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 937:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetDataSetupTime(I2C_TypeDef *I2Cx)
 938:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 939:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMINGR, I2C_TIMINGR_SCLDEL) >> I2C_TIMINGR_SCLDEL_Pos);
 940:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 941:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 942:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 943:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure peripheral mode.
 944:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
 945:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
 946:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          SMBHEN        LL_I2C_SetMode\n
 947:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         CR1          SMBDEN        LL_I2C_SetMode
 948:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 949:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  PeripheralMode This parameter can be one of the following values:
 950:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_I2C
 951:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_SMBUS_HOST
 952:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_SMBUS_DEVICE
 953:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_SMBUS_DEVICE_ARP
 954:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 955:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 956:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetMode(I2C_TypeDef *I2Cx, uint32_t PeripheralMode)
 312              		.loc 3 956 22 view .LVU81
 313              	.LBB81:
 957:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 958:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->CR1, I2C_CR1_SMBHEN | I2C_CR1_SMBDEN, PeripheralMode);
 314              		.loc 3 958 3 view .LVU82
 315 004e 0368     		ldr	r3, [r0]
 316 0050 0A68     		ldr	r2, [r1]
 317 0052 23F44013 		bic	r3, r3, #3145728
 318 0056 1343     		orrs	r3, r3, r2
 319 0058 0360     		str	r3, [r0]
 320              	.LVL23:
 321              		.loc 3 958 3 is_stmt 0 view .LVU83
 322              	.LBE81:
 323              	.LBE80:
 197:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 198:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /*---------------------------- I2Cx CR2 Configuration ------------------------
 199:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * Configure the ACKnowledge or Non ACKnowledge condition
 200:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * after the address receive match code or next received byte with parameter :
 201:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    * - TypeAcknowledge: I2C_CR2_NACK bit
 202:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****    */
 203:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   LL_I2C_AcknowledgeNextData(I2Cx, I2C_InitStruct->TypeAcknowledge);
 324              		.loc 1 203 3 is_stmt 1 view .LVU84
 325              	.LBB82:
 326              	.LBI82:
 959:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 960:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 961:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 962:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get peripheral mode.
 963:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
 964:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
 965:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          SMBHEN        LL_I2C_GetMode\n
 966:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         CR1          SMBDEN        LL_I2C_GetMode
 967:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 968:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Returned value can be one of the following values:
 969:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_I2C
 970:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_SMBUS_HOST
 971:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_SMBUS_DEVICE
 972:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_MODE_SMBUS_DEVICE_ARP
 973:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 974:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetMode(I2C_TypeDef *I2Cx)
 975:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 976:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->CR1, I2C_CR1_SMBHEN | I2C_CR1_SMBDEN));
 977:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 978:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 979:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 980:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable SMBus alert (Host or Device mode)
 981:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
 982:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
 983:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   SMBus Device mode:
 984:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         - SMBus Alert pin is drived low and
 985:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *           Alert Response Address Header acknowledge is enabled.
 986:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus Host mode:
 987:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         - SMBus Alert pin management is supported.
 988:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ALERTEN       LL_I2C_EnableSMBusAlert
 989:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
 990:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
 991:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
 992:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableSMBusAlert(I2C_TypeDef *I2Cx)
 993:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
 994:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_ALERTEN);
 995:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
 996:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
 997:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
 998:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable SMBus alert (Host or Device mode)
 999:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1000:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1001:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   SMBus Device mode:
1002:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         - SMBus Alert pin is not drived (can be used as a standard GPIO) and
1003:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *           Alert Response Address Header acknowledge is disabled.
1004:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus Host mode:
1005:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         - SMBus Alert pin management is not supported.
1006:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ALERTEN       LL_I2C_DisableSMBusAlert
1007:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1008:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1009:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1010:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableSMBusAlert(I2C_TypeDef *I2Cx)
1011:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1012:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_ALERTEN);
1013:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1014:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1015:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1016:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if SMBus alert (Host or Device mode) is enabled or disabled.
1017:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1018:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1019:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ALERTEN       LL_I2C_IsEnabledSMBusAlert
1020:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1021:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1022:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1023:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledSMBusAlert(I2C_TypeDef *I2Cx)
1024:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1025:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_ALERTEN) == (I2C_CR1_ALERTEN)) ? 1UL : 0UL);
1026:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1027:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1028:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1029:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable SMBus Packet Error Calculation (PEC).
1030:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1031:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1032:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          PECEN         LL_I2C_EnableSMBusPEC
1033:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1034:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1035:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1036:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableSMBusPEC(I2C_TypeDef *I2Cx)
1037:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1038:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_PECEN);
1039:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1040:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1041:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1042:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable SMBus Packet Error Calculation (PEC).
1043:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1044:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1045:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          PECEN         LL_I2C_DisableSMBusPEC
1046:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1047:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1048:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1049:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableSMBusPEC(I2C_TypeDef *I2Cx)
1050:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1051:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_PECEN);
1052:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1053:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1054:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1055:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if SMBus Packet Error Calculation (PEC) is enabled or disabled.
1056:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1057:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1058:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          PECEN         LL_I2C_IsEnabledSMBusPEC
1059:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1060:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1061:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1062:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledSMBusPEC(I2C_TypeDef *I2Cx)
1063:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1064:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_PECEN) == (I2C_CR1_PECEN)) ? 1UL : 0UL);
1065:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1066:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1067:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1068:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure the SMBus Clock Timeout.
1069:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1070:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1071:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This configuration can only be programmed when associated Timeout is disabled (TimeoutA
1072:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMEOUTA      LL_I2C_ConfigSMBusTimeout\n
1073:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         TIMEOUTR     TIDLE         LL_I2C_ConfigSMBusTimeout\n
1074:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         TIMEOUTR     TIMEOUTB      LL_I2C_ConfigSMBusTimeout
1075:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1076:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TimeoutA This parameter must be a value between  Min_Data=0 and Max_Data=0xFFF.
1077:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TimeoutAMode This parameter can be one of the following values:
1078:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA_MODE_SCL_LOW
1079:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA_MODE_SDA_SCL_HIGH
1080:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TimeoutB
1081:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1082:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1083:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ConfigSMBusTimeout(I2C_TypeDef *I2Cx, uint32_t TimeoutA, uint32_t Timeo
1084:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****                                                uint32_t TimeoutB)
1085:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1086:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->TIMEOUTR, I2C_TIMEOUTR_TIMEOUTA | I2C_TIMEOUTR_TIDLE | I2C_TIMEOUTR_TIMEOUTB,
1087:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****              TimeoutA | TimeoutAMode | (TimeoutB << I2C_TIMEOUTR_TIMEOUTB_Pos));
1088:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1089:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1090:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1091:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure the SMBus Clock TimeoutA (SCL low timeout or SCL and SDA high timeout depends
1092:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1093:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1094:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   These bits can only be programmed when TimeoutA is disabled.
1095:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMEOUTA      LL_I2C_SetSMBusTimeoutA
1096:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1097:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TimeoutA This parameter must be a value between  Min_Data=0 and Max_Data=0xFFF.
1098:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1099:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1100:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetSMBusTimeoutA(I2C_TypeDef *I2Cx, uint32_t TimeoutA)
1101:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1102:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   WRITE_REG(I2Cx->TIMEOUTR, TimeoutA);
1103:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1104:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1105:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1106:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the SMBus Clock TimeoutA setting.
1107:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1108:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1109:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMEOUTA      LL_I2C_GetSMBusTimeoutA
1110:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1111:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0 and Max_Data=0xFFF
1112:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1113:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetSMBusTimeoutA(I2C_TypeDef *I2Cx)
1114:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1115:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMEOUTR, I2C_TIMEOUTR_TIMEOUTA));
1116:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1117:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1118:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1119:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Set the SMBus Clock TimeoutA mode.
1120:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1121:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1122:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This bit can only be programmed when TimeoutA is disabled.
1123:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIDLE         LL_I2C_SetSMBusTimeoutAMode
1124:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1125:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TimeoutAMode This parameter can be one of the following values:
1126:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA_MODE_SCL_LOW
1127:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA_MODE_SDA_SCL_HIGH
1128:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1129:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1130:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetSMBusTimeoutAMode(I2C_TypeDef *I2Cx, uint32_t TimeoutAMode)
1131:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1132:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   WRITE_REG(I2Cx->TIMEOUTR, TimeoutAMode);
1133:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1134:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1135:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1136:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the SMBus Clock TimeoutA mode.
1137:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1138:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1139:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIDLE         LL_I2C_GetSMBusTimeoutAMode
1140:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1141:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Returned value can be one of the following values:
1142:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA_MODE_SCL_LOW
1143:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA_MODE_SDA_SCL_HIGH
1144:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1145:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetSMBusTimeoutAMode(I2C_TypeDef *I2Cx)
1146:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1147:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMEOUTR, I2C_TIMEOUTR_TIDLE));
1148:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1149:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1150:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1151:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure the SMBus Extended Cumulative Clock TimeoutB (Master or Slave mode).
1152:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1153:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1154:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   These bits can only be programmed when TimeoutB is disabled.
1155:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMEOUTB      LL_I2C_SetSMBusTimeoutB
1156:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1157:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TimeoutB This parameter must be a value between  Min_Data=0 and Max_Data=0xFFF.
1158:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1159:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1160:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetSMBusTimeoutB(I2C_TypeDef *I2Cx, uint32_t TimeoutB)
1161:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1162:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   WRITE_REG(I2Cx->TIMEOUTR, TimeoutB << I2C_TIMEOUTR_TIMEOUTB_Pos);
1163:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1164:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1165:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1166:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the SMBus Extented Cumulative Clock TimeoutB setting.
1167:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1168:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1169:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMEOUTB      LL_I2C_GetSMBusTimeoutB
1170:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1171:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0 and Max_Data=0xFFF
1172:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1173:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetSMBusTimeoutB(I2C_TypeDef *I2Cx)
1174:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1175:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->TIMEOUTR, I2C_TIMEOUTR_TIMEOUTB) >> I2C_TIMEOUTR_TIMEOUTB_Pos);
1176:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1177:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1178:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1179:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable the SMBus Clock Timeout.
1180:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1181:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1182:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMOUTEN      LL_I2C_EnableSMBusTimeout\n
1183:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         TIMEOUTR     TEXTEN        LL_I2C_EnableSMBusTimeout
1184:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1185:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  ClockTimeout This parameter can be one of the following values:
1186:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA
1187:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTB
1188:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_ALL_TIMEOUT
1189:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1190:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1191:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableSMBusTimeout(I2C_TypeDef *I2Cx, uint32_t ClockTimeout)
1192:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1193:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->TIMEOUTR, ClockTimeout);
1194:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1195:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1196:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1197:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable the SMBus Clock Timeout.
1198:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1199:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1200:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMOUTEN      LL_I2C_DisableSMBusTimeout\n
1201:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         TIMEOUTR     TEXTEN        LL_I2C_DisableSMBusTimeout
1202:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1203:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  ClockTimeout This parameter can be one of the following values:
1204:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA
1205:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTB
1206:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_ALL_TIMEOUT
1207:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1208:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1209:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableSMBusTimeout(I2C_TypeDef *I2Cx, uint32_t ClockTimeout)
1210:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1211:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->TIMEOUTR, ClockTimeout);
1212:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1213:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1214:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1215:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if the SMBus Clock Timeout is enabled or disabled.
1216:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1217:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1218:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll TIMEOUTR     TIMOUTEN      LL_I2C_IsEnabledSMBusTimeout\n
1219:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         TIMEOUTR     TEXTEN        LL_I2C_IsEnabledSMBusTimeout
1220:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1221:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  ClockTimeout This parameter can be one of the following values:
1222:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTA
1223:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_TIMEOUTB
1224:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_SMBUS_ALL_TIMEOUT
1225:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1226:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1227:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledSMBusTimeout(I2C_TypeDef *I2Cx, uint32_t ClockTimeout)
1228:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1229:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->TIMEOUTR, (I2C_TIMEOUTR_TIMOUTEN | I2C_TIMEOUTR_TEXTEN)) == (ClockTimeout
1230:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1231:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1232:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1233:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
1234:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1235:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1236:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EF_IT_Management IT_Management
1237:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
1238:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1239:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1240:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1241:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable TXIS interrupt.
1242:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TXIE          LL_I2C_EnableIT_TX
1243:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1244:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1245:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1246:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableIT_TX(I2C_TypeDef *I2Cx)
1247:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1248:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_TXIE);
1249:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1250:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1251:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1252:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable TXIS interrupt.
1253:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TXIE          LL_I2C_DisableIT_TX
1254:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1255:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1256:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1257:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableIT_TX(I2C_TypeDef *I2Cx)
1258:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1259:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_TXIE);
1260:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1261:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1262:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1263:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if the TXIS Interrupt is enabled or disabled.
1264:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TXIE          LL_I2C_IsEnabledIT_TX
1265:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1266:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1267:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1268:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledIT_TX(I2C_TypeDef *I2Cx)
1269:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1270:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_TXIE) == (I2C_CR1_TXIE)) ? 1UL : 0UL);
1271:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1272:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1273:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1274:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable RXNE interrupt.
1275:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          RXIE          LL_I2C_EnableIT_RX
1276:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1277:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1278:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1279:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableIT_RX(I2C_TypeDef *I2Cx)
1280:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1281:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_RXIE);
1282:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1283:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1284:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1285:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable RXNE interrupt.
1286:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          RXIE          LL_I2C_DisableIT_RX
1287:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1288:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1289:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1290:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableIT_RX(I2C_TypeDef *I2Cx)
1291:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1292:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_RXIE);
1293:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1294:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1295:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1296:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if the RXNE Interrupt is enabled or disabled.
1297:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          RXIE          LL_I2C_IsEnabledIT_RX
1298:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1299:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1300:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1301:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledIT_RX(I2C_TypeDef *I2Cx)
1302:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1303:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_RXIE) == (I2C_CR1_RXIE)) ? 1UL : 0UL);
1304:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1305:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1306:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1307:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable Address match interrupt (slave mode only).
1308:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ADDRIE        LL_I2C_EnableIT_ADDR
1309:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1310:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1311:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1312:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableIT_ADDR(I2C_TypeDef *I2Cx)
1313:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1314:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_ADDRIE);
1315:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1316:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1317:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1318:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable Address match interrupt (slave mode only).
1319:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ADDRIE        LL_I2C_DisableIT_ADDR
1320:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1321:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1322:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1323:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableIT_ADDR(I2C_TypeDef *I2Cx)
1324:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1325:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_ADDRIE);
1326:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1327:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1328:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1329:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Address match interrupt is enabled or disabled.
1330:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ADDRIE        LL_I2C_IsEnabledIT_ADDR
1331:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1332:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1333:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1334:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledIT_ADDR(I2C_TypeDef *I2Cx)
1335:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1336:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_ADDRIE) == (I2C_CR1_ADDRIE)) ? 1UL : 0UL);
1337:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1338:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1339:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1340:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable Not acknowledge received interrupt.
1341:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          NACKIE        LL_I2C_EnableIT_NACK
1342:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1343:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1344:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1345:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableIT_NACK(I2C_TypeDef *I2Cx)
1346:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1347:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_NACKIE);
1348:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1349:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1350:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1351:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable Not acknowledge received interrupt.
1352:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          NACKIE        LL_I2C_DisableIT_NACK
1353:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1354:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1355:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1356:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableIT_NACK(I2C_TypeDef *I2Cx)
1357:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1358:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_NACKIE);
1359:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1360:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1361:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1362:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Not acknowledge received interrupt is enabled or disabled.
1363:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          NACKIE        LL_I2C_IsEnabledIT_NACK
1364:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1365:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1366:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1367:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledIT_NACK(I2C_TypeDef *I2Cx)
1368:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1369:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_NACKIE) == (I2C_CR1_NACKIE)) ? 1UL : 0UL);
1370:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1371:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1372:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1373:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable STOP detection interrupt.
1374:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          STOPIE        LL_I2C_EnableIT_STOP
1375:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1376:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1377:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1378:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableIT_STOP(I2C_TypeDef *I2Cx)
1379:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1380:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_STOPIE);
1381:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1382:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1383:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1384:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable STOP detection interrupt.
1385:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          STOPIE        LL_I2C_DisableIT_STOP
1386:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1387:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1388:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1389:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableIT_STOP(I2C_TypeDef *I2Cx)
1390:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1391:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_STOPIE);
1392:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1393:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1394:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1395:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if STOP detection interrupt is enabled or disabled.
1396:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          STOPIE        LL_I2C_IsEnabledIT_STOP
1397:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1398:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1399:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1400:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledIT_STOP(I2C_TypeDef *I2Cx)
1401:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1402:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_STOPIE) == (I2C_CR1_STOPIE)) ? 1UL : 0UL);
1403:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1404:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1405:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1406:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable Transfer Complete interrupt.
1407:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Any of these events will generate interrupt :
1408:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Transfer Complete (TC)
1409:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Transfer Complete Reload (TCR)
1410:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TCIE          LL_I2C_EnableIT_TC
1411:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1412:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1413:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1414:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableIT_TC(I2C_TypeDef *I2Cx)
1415:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1416:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_TCIE);
1417:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1418:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1419:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1420:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable Transfer Complete interrupt.
1421:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Any of these events will generate interrupt :
1422:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Transfer Complete (TC)
1423:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Transfer Complete Reload (TCR)
1424:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TCIE          LL_I2C_DisableIT_TC
1425:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1426:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1427:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1428:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableIT_TC(I2C_TypeDef *I2Cx)
1429:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1430:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_TCIE);
1431:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1432:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1433:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1434:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Transfer Complete interrupt is enabled or disabled.
1435:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          TCIE          LL_I2C_IsEnabledIT_TC
1436:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1437:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1438:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1439:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledIT_TC(I2C_TypeDef *I2Cx)
1440:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1441:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_TCIE) == (I2C_CR1_TCIE)) ? 1UL : 0UL);
1442:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1443:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1444:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1445:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable Error interrupts.
1446:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1447:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1448:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Any of these errors will generate interrupt :
1449:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Arbitration Loss (ARLO)
1450:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Bus Error detection (BERR)
1451:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Overrun/Underrun (OVR)
1452:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus Timeout detection (TIMEOUT)
1453:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus PEC error detection (PECERR)
1454:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus Alert pin event detection (ALERT)
1455:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ERRIE         LL_I2C_EnableIT_ERR
1456:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1457:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1458:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1459:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableIT_ERR(I2C_TypeDef *I2Cx)
1460:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1461:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR1, I2C_CR1_ERRIE);
1462:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1463:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1464:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1465:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable Error interrupts.
1466:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1467:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1468:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Any of these errors will generate interrupt :
1469:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Arbitration Loss (ARLO)
1470:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Bus Error detection (BERR)
1471:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         Overrun/Underrun (OVR)
1472:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus Timeout detection (TIMEOUT)
1473:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus PEC error detection (PECERR)
1474:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus Alert pin event detection (ALERT)
1475:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ERRIE         LL_I2C_DisableIT_ERR
1476:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1477:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1478:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1479:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableIT_ERR(I2C_TypeDef *I2Cx)
1480:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1481:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR1, I2C_CR1_ERRIE);
1482:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1483:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1484:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1485:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if Error interrupts are enabled or disabled.
1486:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR1          ERRIE         LL_I2C_IsEnabledIT_ERR
1487:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1488:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1489:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1490:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledIT_ERR(I2C_TypeDef *I2Cx)
1491:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1492:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR1, I2C_CR1_ERRIE) == (I2C_CR1_ERRIE)) ? 1UL : 0UL);
1493:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1494:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1495:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1496:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
1497:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1498:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1499:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EF_FLAG_management FLAG_management
1500:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
1501:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1502:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1503:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1504:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Transmit data register empty flag.
1505:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: When next data is written in Transmit data register.
1506:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When Transmit data register is empty.
1507:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          TXE           LL_I2C_IsActiveFlag_TXE
1508:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1509:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1510:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1511:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_TXE(I2C_TypeDef *I2Cx)
1512:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1513:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_TXE) == (I2C_ISR_TXE)) ? 1UL : 0UL);
1514:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1515:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1516:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1517:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Transmit interrupt flag.
1518:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: When next data is written in Transmit data register.
1519:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When Transmit data register is empty.
1520:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          TXIS          LL_I2C_IsActiveFlag_TXIS
1521:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1522:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1523:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1524:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_TXIS(I2C_TypeDef *I2Cx)
1525:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1526:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_TXIS) == (I2C_ISR_TXIS)) ? 1UL : 0UL);
1527:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1528:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1529:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1530:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Receive data register not empty flag.
1531:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: When Receive data register is read.
1532:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When the received data is copied in Receive data register.
1533:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          RXNE          LL_I2C_IsActiveFlag_RXNE
1534:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1535:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1536:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1537:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_RXNE(I2C_TypeDef *I2Cx)
1538:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1539:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_RXNE) == (I2C_ISR_RXNE)) ? 1UL : 0UL);
1540:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1541:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1542:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1543:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Address matched flag (slave mode).
1544:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1545:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When the received slave address matched with one of the enabled slave address.
1546:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          ADDR          LL_I2C_IsActiveFlag_ADDR
1547:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1548:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1549:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1550:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_ADDR(I2C_TypeDef *I2Cx)
1551:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1552:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_ADDR) == (I2C_ISR_ADDR)) ? 1UL : 0UL);
1553:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1554:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1555:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1556:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Not Acknowledge received flag.
1557:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1558:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When a NACK is received after a byte transmission.
1559:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          NACKF         LL_I2C_IsActiveFlag_NACK
1560:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1561:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1562:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1563:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_NACK(I2C_TypeDef *I2Cx)
1564:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1565:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_NACKF) == (I2C_ISR_NACKF)) ? 1UL : 0UL);
1566:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1567:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1568:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1569:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Stop detection flag.
1570:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1571:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When a Stop condition is detected.
1572:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          STOPF         LL_I2C_IsActiveFlag_STOP
1573:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1574:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1575:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1576:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_STOP(I2C_TypeDef *I2Cx)
1577:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1578:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_STOPF) == (I2C_ISR_STOPF)) ? 1UL : 0UL);
1579:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1580:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1581:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1582:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Transfer complete flag (master mode).
1583:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1584:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When RELOAD=0, AUTOEND=0 and NBYTES date have been transferred.
1585:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          TC            LL_I2C_IsActiveFlag_TC
1586:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1587:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1588:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1589:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_TC(I2C_TypeDef *I2Cx)
1590:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1591:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_TC) == (I2C_ISR_TC)) ? 1UL : 0UL);
1592:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1593:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1594:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1595:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Transfer complete flag (master mode).
1596:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1597:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When RELOAD=1 and NBYTES date have been transferred.
1598:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          TCR           LL_I2C_IsActiveFlag_TCR
1599:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1600:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1601:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1602:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_TCR(I2C_TypeDef *I2Cx)
1603:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1604:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_TCR) == (I2C_ISR_TCR)) ? 1UL : 0UL);
1605:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1606:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1607:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1608:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Bus error flag.
1609:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1610:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When a misplaced Start or Stop condition is detected.
1611:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          BERR          LL_I2C_IsActiveFlag_BERR
1612:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1613:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1614:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1615:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_BERR(I2C_TypeDef *I2Cx)
1616:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1617:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_BERR) == (I2C_ISR_BERR)) ? 1UL : 0UL);
1618:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1619:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1620:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1621:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Arbitration lost flag.
1622:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1623:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When arbitration lost.
1624:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          ARLO          LL_I2C_IsActiveFlag_ARLO
1625:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1626:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1627:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1628:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_ARLO(I2C_TypeDef *I2Cx)
1629:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1630:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_ARLO) == (I2C_ISR_ARLO)) ? 1UL : 0UL);
1631:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1632:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1633:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1634:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Overrun/Underrun flag (slave mode).
1635:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1636:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When an overrun/underrun error occurs (Clock Stretching Disabled).
1637:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          OVR           LL_I2C_IsActiveFlag_OVR
1638:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1639:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1640:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1641:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_OVR(I2C_TypeDef *I2Cx)
1642:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1643:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_OVR) == (I2C_ISR_OVR)) ? 1UL : 0UL);
1644:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1645:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1646:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1647:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of SMBus PEC error flag in reception.
1648:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1649:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1650:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1651:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When the received PEC does not match with the PEC register content.
1652:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          PECERR        LL_I2C_IsActiveSMBusFlag_PECERR
1653:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1654:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1655:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1656:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveSMBusFlag_PECERR(I2C_TypeDef *I2Cx)
1657:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1658:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_PECERR) == (I2C_ISR_PECERR)) ? 1UL : 0UL);
1659:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1660:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1661:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1662:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of SMBus Timeout detection flag.
1663:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1664:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1665:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1666:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When a timeout or extended clock timeout occurs.
1667:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          TIMEOUT       LL_I2C_IsActiveSMBusFlag_TIMEOUT
1668:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1669:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1670:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1671:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveSMBusFlag_TIMEOUT(I2C_TypeDef *I2Cx)
1672:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1673:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_TIMEOUT) == (I2C_ISR_TIMEOUT)) ? 1UL : 0UL);
1674:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1675:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1676:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1677:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of SMBus alert flag.
1678:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1679:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1680:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1681:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When SMBus host configuration, SMBus alert enabled and
1682:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *              a falling edge event occurs on SMBA pin.
1683:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          ALERT         LL_I2C_IsActiveSMBusFlag_ALERT
1684:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1685:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1686:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1687:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveSMBusFlag_ALERT(I2C_TypeDef *I2Cx)
1688:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1689:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_ALERT) == (I2C_ISR_ALERT)) ? 1UL : 0UL);
1690:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1691:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1692:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1693:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Indicate the status of Bus Busy flag.
1694:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   RESET: Clear default value.
1695:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SET: When a Start condition is detected.
1696:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          BUSY          LL_I2C_IsActiveFlag_BUSY
1697:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1698:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1699:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1700:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsActiveFlag_BUSY(I2C_TypeDef *I2Cx)
1701:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1702:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->ISR, I2C_ISR_BUSY) == (I2C_ISR_BUSY)) ? 1UL : 0UL);
1703:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1704:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1705:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1706:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear Address Matched flag.
1707:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          ADDRCF        LL_I2C_ClearFlag_ADDR
1708:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1709:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1710:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1711:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearFlag_ADDR(I2C_TypeDef *I2Cx)
1712:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1713:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_ADDRCF);
1714:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1715:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1716:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1717:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear Not Acknowledge flag.
1718:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          NACKCF        LL_I2C_ClearFlag_NACK
1719:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1720:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1721:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1722:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearFlag_NACK(I2C_TypeDef *I2Cx)
1723:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1724:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_NACKCF);
1725:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1726:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1727:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1728:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear Stop detection flag.
1729:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          STOPCF        LL_I2C_ClearFlag_STOP
1730:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1731:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1732:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1733:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearFlag_STOP(I2C_TypeDef *I2Cx)
1734:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1735:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_STOPCF);
1736:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1737:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1738:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1739:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear Transmit data register empty flag (TXE).
1740:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   This bit can be clear by software in order to flush the transmit data register (TXDR).
1741:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ISR          TXE           LL_I2C_ClearFlag_TXE
1742:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1743:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1744:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1745:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearFlag_TXE(I2C_TypeDef *I2Cx)
1746:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1747:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   WRITE_REG(I2Cx->ISR, I2C_ISR_TXE);
1748:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1749:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1750:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1751:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear Bus error flag.
1752:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          BERRCF        LL_I2C_ClearFlag_BERR
1753:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1754:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1755:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1756:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearFlag_BERR(I2C_TypeDef *I2Cx)
1757:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1758:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_BERRCF);
1759:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1760:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1761:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1762:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear Arbitration lost flag.
1763:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          ARLOCF        LL_I2C_ClearFlag_ARLO
1764:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1765:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1766:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1767:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearFlag_ARLO(I2C_TypeDef *I2Cx)
1768:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1769:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_ARLOCF);
1770:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1771:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1772:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1773:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear Overrun/Underrun flag.
1774:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          OVRCF         LL_I2C_ClearFlag_OVR
1775:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1776:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1777:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1778:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearFlag_OVR(I2C_TypeDef *I2Cx)
1779:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1780:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_OVRCF);
1781:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1782:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1783:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1784:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear SMBus PEC error flag.
1785:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1786:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1787:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          PECCF         LL_I2C_ClearSMBusFlag_PECERR
1788:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1789:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1790:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1791:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearSMBusFlag_PECERR(I2C_TypeDef *I2Cx)
1792:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1793:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_PECCF);
1794:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1795:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1796:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1797:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear SMBus Timeout detection flag.
1798:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1799:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1800:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          TIMOUTCF      LL_I2C_ClearSMBusFlag_TIMEOUT
1801:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1802:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1803:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1804:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearSMBusFlag_TIMEOUT(I2C_TypeDef *I2Cx)
1805:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1806:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_TIMOUTCF);
1807:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1808:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1809:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1810:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Clear SMBus Alert flag.
1811:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Macro @ref IS_SMBUS_ALL_INSTANCE(I2Cx) can be used to check whether or not
1812:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         SMBus feature is supported by the I2Cx Instance.
1813:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll ICR          ALERTCF       LL_I2C_ClearSMBusFlag_ALERT
1814:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1815:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1816:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1817:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_ClearSMBusFlag_ALERT(I2C_TypeDef *I2Cx)
1818:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1819:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->ICR, I2C_ICR_ALERTCF);
1820:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1821:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1822:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1823:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @}
1824:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1825:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1826:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /** @defgroup I2C_LL_EF_Data_Management Data_Management
1827:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @{
1828:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1829:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1830:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1831:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable automatic STOP condition generation (master mode).
1832:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Automatic end mode : a STOP condition is automatically sent when NBYTES data are transf
1833:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         This bit has no effect in slave mode or when RELOAD bit is set.
1834:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          AUTOEND       LL_I2C_EnableAutoEndMode
1835:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1836:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1837:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1838:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableAutoEndMode(I2C_TypeDef *I2Cx)
1839:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1840:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR2, I2C_CR2_AUTOEND);
1841:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1842:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1843:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1844:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable automatic STOP condition generation (master mode).
1845:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Software end mode : TC flag is set when NBYTES data are transferre, stretching SCL low.
1846:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          AUTOEND       LL_I2C_DisableAutoEndMode
1847:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1848:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1849:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1850:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableAutoEndMode(I2C_TypeDef *I2Cx)
1851:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1852:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR2, I2C_CR2_AUTOEND);
1853:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1854:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1855:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1856:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if automatic STOP condition is enabled or disabled.
1857:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          AUTOEND       LL_I2C_IsEnabledAutoEndMode
1858:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1859:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1860:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1861:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledAutoEndMode(I2C_TypeDef *I2Cx)
1862:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1863:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR2, I2C_CR2_AUTOEND) == (I2C_CR2_AUTOEND)) ? 1UL : 0UL);
1864:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1865:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1866:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1867:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Enable reload mode (master mode).
1868:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   The transfer is not completed after the NBYTES data transfer, NBYTES will be reloaded w
1869:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          RELOAD       LL_I2C_EnableReloadMode
1870:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1871:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1872:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1873:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_EnableReloadMode(I2C_TypeDef *I2Cx)
1874:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1875:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   SET_BIT(I2Cx->CR2, I2C_CR2_RELOAD);
1876:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1877:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1878:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1879:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Disable reload mode (master mode).
1880:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   The transfer is completed after the NBYTES data transfer(STOP or RESTART will follow).
1881:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          RELOAD       LL_I2C_DisableReloadMode
1882:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1883:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1884:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1885:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_DisableReloadMode(I2C_TypeDef *I2Cx)
1886:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1887:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   CLEAR_BIT(I2Cx->CR2, I2C_CR2_RELOAD);
1888:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1889:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1890:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1891:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Check if reload mode is enabled or disabled.
1892:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          RELOAD       LL_I2C_IsEnabledReloadMode
1893:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1894:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval State of bit (1 or 0).
1895:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1896:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_IsEnabledReloadMode(I2C_TypeDef *I2Cx)
1897:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1898:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return ((READ_BIT(I2Cx->CR2, I2C_CR2_RELOAD) == (I2C_CR2_RELOAD)) ? 1UL : 0UL);
1899:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1900:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1901:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1902:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Configure the number of bytes for transfer.
1903:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Changing these bits when START bit is set is not allowed.
1904:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          NBYTES           LL_I2C_SetTransferSize
1905:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1906:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TransferSize This parameter must be a value between Min_Data=0x00 and Max_Data=0xFF.
1907:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1908:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1909:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_SetTransferSize(I2C_TypeDef *I2Cx, uint32_t TransferSize)
1910:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1911:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->CR2, I2C_CR2_NBYTES, TransferSize << I2C_CR2_NBYTES_Pos);
1912:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1913:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1914:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1915:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Get the number of bytes configured for transfer.
1916:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          NBYTES           LL_I2C_GetTransferSize
1917:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1918:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval Value between Min_Data=0x0 and Max_Data=0xFF
1919:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1920:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE uint32_t LL_I2C_GetTransferSize(I2C_TypeDef *I2Cx)
1921:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1922:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   return (uint32_t)(READ_BIT(I2Cx->CR2, I2C_CR2_NBYTES) >> I2C_CR2_NBYTES_Pos);
1923:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** }
1924:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** 
1925:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** /**
1926:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @brief  Prepare the generation of a ACKnowledge or Non ACKnowledge condition after the address 
1927:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @note   Usage in Slave mode only.
1928:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @rmtoll CR2          NACK          LL_I2C_AcknowledgeNextData
1929:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  I2Cx I2C Instance.
1930:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @param  TypeAcknowledge This parameter can be one of the following values:
1931:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_ACK
1932:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   *         @arg @ref LL_I2C_NACK
1933:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   * @retval None
1934:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   */
1935:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** __STATIC_INLINE void LL_I2C_AcknowledgeNextData(I2C_TypeDef *I2Cx, uint32_t TypeAcknowledge)
 327              		.loc 3 1935 22 view .LVU85
 328              	.LBB83:
1936:../../..\CubeG4\include/stm32g4xx_ll_i2c.h **** {
1937:../../..\CubeG4\include/stm32g4xx_ll_i2c.h ****   MODIFY_REG(I2Cx->CR2, I2C_CR2_NACK, TypeAcknowledge);
 329              		.loc 3 1937 3 view .LVU86
 330 005a 4368     		ldr	r3, [r0, #4]
 331 005c 4A69     		ldr	r2, [r1, #20]
 332 005e 23F40043 		bic	r3, r3, #32768
 333 0062 1343     		orrs	r3, r3, r2
 334 0064 4360     		str	r3, [r0, #4]
 335              	.LVL24:
 336              		.loc 3 1937 3 is_stmt 0 view .LVU87
 337              	.LBE83:
 338              	.LBE82:
 204:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 205:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   return SUCCESS;
 339              		.loc 1 205 3 is_stmt 1 view .LVU88
 206:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** }
 340              		.loc 1 206 1 is_stmt 0 view .LVU89
 341 0066 0020     		movs	r0, #0
 342              	.LVL25:
 343              		.loc 1 206 1 view .LVU90
 344 0068 10BD     		pop	{r4, pc}
 345              		.cfi_endproc
 346              	.LFE307:
 348              		.section	.text.LL_I2C_StructInit,"ax",%progbits
 349              		.align	1
 350              		.global	LL_I2C_StructInit
 351              		.syntax unified
 352              		.thumb
 353              		.thumb_func
 354              		.fpu fpv4-sp-d16
 356              	LL_I2C_StructInit:
 357              	.LVL26:
 358              	.LFB308:
 207:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** 
 208:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** /**
 209:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @brief  Set each @ref LL_I2C_InitTypeDef field to default value.
 210:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @param  I2C_InitStruct Pointer to a @ref LL_I2C_InitTypeDef structure.
 211:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   * @retval None
 212:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   */
 213:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** void LL_I2C_StructInit(LL_I2C_InitTypeDef *I2C_InitStruct)
 214:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** {
 359              		.loc 1 214 1 is_stmt 1 view -0
 360              		.cfi_startproc
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363              		@ link register save eliminated.
 215:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   /* Set I2C_InitStruct fields to default values */
 216:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->PeripheralMode  = LL_I2C_MODE_I2C;
 364              		.loc 1 216 3 view .LVU92
 365              		.loc 1 216 35 is_stmt 0 view .LVU93
 366 0000 0023     		movs	r3, #0
 217:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->Timing          = 0U;
 218:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->AnalogFilter    = LL_I2C_ANALOGFILTER_ENABLE;
 219:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->DigitalFilter   = 0U;
 220:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->OwnAddress1     = 0U;
 221:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->TypeAcknowledge = LL_I2C_NACK;
 367              		.loc 1 221 35 view .LVU94
 368 0002 4FF40042 		mov	r2, #32768
 217:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->Timing          = 0U;
 369              		.loc 1 217 35 view .LVU95
 370 0006 C0E90033 		strd	r3, r3, [r0]
 218:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->DigitalFilter   = 0U;
 371              		.loc 1 218 3 is_stmt 1 view .LVU96
 219:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->OwnAddress1     = 0U;
 372              		.loc 1 219 35 is_stmt 0 view .LVU97
 373 000a C0E90233 		strd	r3, r3, [r0, #8]
 220:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->TypeAcknowledge = LL_I2C_NACK;
 374              		.loc 1 220 3 is_stmt 1 view .LVU98
 220:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->TypeAcknowledge = LL_I2C_NACK;
 375              		.loc 1 220 35 is_stmt 0 view .LVU99
 376 000e 0361     		str	r3, [r0, #16]
 377              		.loc 1 221 3 is_stmt 1 view .LVU100
 222:../../..\CubeG4\src/stm32g4xx_ll_i2c.c ****   I2C_InitStruct->OwnAddrSize     = LL_I2C_OWNADDRESS1_7BIT;
 378              		.loc 1 222 35 is_stmt 0 view .LVU101
 379 0010 C0E90523 		strd	r2, r3, [r0, #20]
 223:../../..\CubeG4\src/stm32g4xx_ll_i2c.c **** }
 380              		.loc 1 223 1 view .LVU102
 381 0014 7047     		bx	lr
 382              		.cfi_endproc
 383              	.LFE308:
 385              		.text
 386              	.Letext0:
 387              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 388              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 389              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 390              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 391              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 392              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
