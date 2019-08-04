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
  13              		.file	"stm32g4xx_ll_ucpd.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_UCPD_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_UCPD_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_UCPD_DeInit:
  27              	.LVL0:
  28              	.LFB433:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_ucpd.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @file    stm32g4xx_ll_ucpd.c
   4:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @brief   UCPD LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics. 
  10:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * the "License"; You may not use this file except in compliance with the 
  14:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #include "stm32g4xx_ll_ucpd.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #include "stm32g4xx_ll_bus.h"
  24:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #include "stm32g4xx_ll_rcc.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  26:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #ifdef  USE_FULL_ASSERT
  27:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #include "stm32_assert.h"
  28:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #else
  29:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #define assert_param(expr) ((void)0U)
  30:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #endif
  31:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  32:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /** @addtogroup STM32G4xx_LL_Driver
  33:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @{
  34:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  35:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** #if defined (UCPD1)
  36:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /** @addtogroup UCPD_LL
  37:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @{
  38:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  39:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  40:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /* Private types -------------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /* Private variables ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  43:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /** @defgroup UCPD_LL_Private_Constants UCPD Private Constants
  45:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @{
  46:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  47:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  48:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /**
  49:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @}
  50:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  51:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  52:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /* Private macros ------------------------------------------------------------*/
  53:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /** @defgroup UCPD_LL_Private_Macros UCPD Private Macros
  54:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @{
  55:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  56:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  57:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  58:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /**
  59:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @}
  60:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  61:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  62:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /* Private function prototypes -----------------------------------------------*/
  63:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  64:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /* Exported functions --------------------------------------------------------*/
  65:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /** @addtogroup UCPD_LL_Exported_Functions
  66:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @{
  67:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  68:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  69:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /** @addtogroup UCPD_LL_EF_Init
  70:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @{
  71:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  72:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  73:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /**
  74:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @brief  De-initialize the UCPD registers to their default reset values.
  75:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @param  UCPDx ucpd Instance
  76:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @retval An ErrorStatus enumeration value:
  77:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *          - SUCCESS: ucpd registers are de-initialized
  78:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *          - ERROR: ucpd registers are not de-initialized
  79:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
  80:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** ErrorStatus LL_UCPD_DeInit(UCPD_TypeDef *UCPDx)
  81:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** {
  30              		.loc 1 81 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
  82:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   ErrorStatus status = ERROR;
  35              		.loc 1 82 3 view .LVU1
  83:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  84:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   /* Check the parameters */
  85:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   assert_param(IS_UCPD_ALL_INSTANCE(UCPDx));
  36              		.loc 1 85 3 view .LVU2
  86:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   
  87:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   LL_UCPD_Disable(UCPDx);
  37              		.loc 1 87 3 view .LVU3
  38              	.LBB14:
  39              	.LBI14:
  40              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_ucpd.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @file    stm32g4xx_ll_ucpd.h
   4:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief   Header file of UCPD LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #ifndef STM32G4xx_LL_UCPD_H
  22:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define STM32G4xx_LL_UCPD_H
  23:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #if defined (UCPD1)
  36:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL UCPD
  38:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Private macros ------------------------------------------------------------*/
  44:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  45:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Exported types ------------------------------------------------------------*/
  46:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #if defined(USE_FULL_LL_DRIVER)
  47:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_ES_INIT UCPD Exported Init structure
  48:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
  49:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  50:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  51:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
  52:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief  UCPD Init structures definition
  53:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  54:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** typedef struct
  55:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** {
  56:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   uint32_t psc_ucpdclk;         /*!< Specify the prescaler for the UCPD clock.
  57:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                      This parameter can be a value of @ref UCPD_LL_EC_PSC.
  58:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                      This feature can be modified afterwards using unitary function
  59:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  60:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   uint32_t transwin;            /*!< Specify the number of cycles (minus 1) of the half bit clock (
  61:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                     tTransitionWindow (set according to peripheral clock to define 
  62:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                     This parameter can be a value between Min_Data=0x1 and Max_Data
  63:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                     This value can be modified afterwards using unitary function @r
  64:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  65:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   uint32_t IfrGap;              /*!< Specify the definition of the clock divider (minus 1) in order
  66:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                     from the peripheral clock.
  67:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                     This parameter can be a value between Min_Data=0x1 and Max_Data
  68:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                     This feature can be modified afterwards using unitary function 
  69:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  70:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   uint32_t HbitClockDiv;        /*!< Specify the number of cycles (minus one) at UCPD peripheral fo
  71:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                      for a bit clock that takes 8 cycles of the peripheral clock "U
  72:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                      This parameter can be a value between Min_Data=0x0 and Max_Dat
  73:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****                                      This feature can be modified afterwards using unitary function
  74:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  75:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** } LL_UCPD_InitTypeDef;
  76:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  77:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
  78:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
  79:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  80:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #endif /* USE_FULL_LL_DRIVER */
  81:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Exported constants --------------------------------------------------------*/
  83:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_Exported_Constants UCPD Exported Constants
  84:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
  85:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  86:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
  87:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_GET_FLAG Get Flags Defines
  88:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief    Flags defines which can be used with LL_ucpd_ReadReg function
  89:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
  90:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
  91:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TXIS             UCPD_SR_TXIS                  /*!< Transmit interrupt status   
  92:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TXMSGDISC        UCPD_SR_TXMSGDISC             /*!< Transmit message discarded i
  93:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TXMSGSENT        UCPD_SR_TXMSGSENT             /*!< Transmit message sent interr
  94:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TXMSGABT         UCPD_SR_TXMSGABT              /*!< Transmit message abort inter
  95:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_HRSTDISC         UCPD_SR_HRSTDISC              /*!< HRST discarded interrupt    
  96:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_HRSTSENT         UCPD_SR_HRSTSENT              /*!< HRST sent interrupt         
  97:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TXUND            UCPD_SR_TXUND                 /*!< Tx data underrun condition i
  98:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_RXNE             UCPD_SR_RXNE                  /*!< Receive data register not em
  99:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_RXORDDET         UCPD_SR_RXORDDET              /*!< Rx ordered set (4 K-codes) d
 100:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_RXHRSTDET        UCPD_SR_RXHRSTDET             /*!< Rx Hard Reset detect interru
 101:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_RXOVR            UCPD_SR_RXOVR                 /*!< Rx data overflow interrupt  
 102:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_RXMSGEND         UCPD_SR_RXMSGEND              /*!< Rx message received         
 103:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_RXERR            UCPD_SR_RXERR                 /*!< Rx error                    
 104:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TYPECEVT1        UCPD_SR_TYPECEVT1             /*!< Type C voltage level event o
 105:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TYPECEVT2        UCPD_SR_TYPECEVT2             /*!< Type C voltage level event o
 106:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TYPEC_VSTATE_CC1 UCPD_SR_TYPEC_VSTATE_CC1      /*!<Status of DC level on CC1 pin
 107:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_TYPEC_VSTATE_CC2 UCPD_SR_TYPEC_VSTATE_CC2      /*!<Status of DC level on CC2 pin
 108:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SR_FRSEVT           UCPD_SR_FRSEVT                /*!<Fast Role Swap detection even
 109:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 110:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 111:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 112:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 113:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 114:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_IT IT Defines
 115:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief    IT defines which can be used with LL_UCPD_ReadReg and  LL_UCPD_WriteReg functions
 116:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 117:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 118:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_TXIS             UCPD_IMR_TXISIE              /*!< Enable transmit interrupt st
 119:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_TXMSGDISC        UCPD_IMR_TXMSGDISCIE         /*!< Enable transmit message disc
 120:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_TXMSGSENT        UCPD_IMR_TXMSGSENTIE         /*!< Enable transmit message sent
 121:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_TXMSGABT         UCPD_IMR_TXMSGABTIE          /*!< Enable transmit message abor
 122:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_HRSTDISC         UCPD_IMR_HRSTDISCIE          /*!< Enable HRST discarded interr
 123:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_HRSTSENT         UCPD_IMR_HRSTSENTIE          /*!< Enable HRST sent interrupt  
 124:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_TXUND            UCPD_IMR_TXUNDIE             /*!< Enable tx data underrun cond
 125:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_RXNE             UCPD_IMR_RXNEIE              /*!< Enable Receive data register
 126:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_RXORDDET         UCPD_IMR_RXORDDETIE          /*!< Enable Rx ordered set (4 K-c
 127:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_RXHRSTDET        UCPD_IMR_RXHRSTDETIE         /*!< Enable Rx Hard Reset detect 
 128:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_RXOVR            UCPD_IMR_RXOVRIE             /*!< Enable Rx data overflow inte
 129:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_RXMSGEND         UCPD_IMR_RXMSGEND            /*!< Enable Rx message received  
 130:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_RXERR            UCPD_IMR_RXMSGENDIE          /*!< Enable Rx error             
 131:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_TYPECEVT1        UCPD_IMR_TYPECEVT1IE         /*!< Enable Type C voltage level 
 132:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_TYPECEVT2        UCPD_IMR_TYPECEVT2IE         /*!< Enable Type C voltage level 
 133:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_IMR_FRSEVT           UCPD_IMR_FRSEVTIE            /*!< Enable fast Role Swap detect
 134:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 135:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 136:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 137:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 138:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_ORDERSET Ordered sets value
 139:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief    definition of the usual Ordered sets
 140:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 141:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 142:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SYNC1 0x18u                                       /*!< K-code for Startsynch #1    
 143:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SYNC2 0x11u                                       /*!< K-code for Startsynch #2    
 144:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SYNC3 0x06u                                       /*!< K-code for Startsynch #3    
 145:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RST1  0x07u                                       /*!< K-code for Hard Reset #1    
 146:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RST2  0x19u                                       /*!< K-code for Hard Reset #2    
 147:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_EOP   0x0Du                                       /*!< K-code for EOP End of Packet
 148:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 149:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERED_SET_SOP         (LL_UCPD_SYNC1 | (LL_UCPD_SYNC1<<5u) | (LL_UCPD_SYNC1<<10u)
 150:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERED_SET_SOP1        (LL_UCPD_SYNC1 | (LL_UCPD_SYNC1<<5u) | (LL_UCPD_SYNC3<<10u)
 151:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERED_SET_SOP2        (LL_UCPD_SYNC1 | (LL_UCPD_SYNC3<<5u) | (LL_UCPD_SYNC1<<10u)
 152:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERED_SET_HARD_RESET  (LL_UCPD_RST1  | (LL_UCPD_RST1<<5u)  | (LL_UCPD_RST1<<10u) 
 153:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERED_SET_CABLE_RESET (LL_UCPD_RST1  | (LL_UCPD_SYNC1<<5u) | (LL_UCPD_RST1<<10u) 
 154:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERED_SET_SOP1_DEBUG  (LL_UCPD_SYNC1 | (LL_UCPD_RST2<<5u)  | (LL_UCPD_RST2<<10u) 
 155:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERED_SET_SOP2_DEBUG  (LL_UCPD_SYNC1 | (LL_UCPD_RST2<<5u)  | (LL_UCPD_SYNC3<<10u)
 156:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 157:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 158:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 159:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 160:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_MODE Role Mode
 161:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 162:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 163:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ROLE_SNK             UCPD_CR_ANAMODE              /*!< Mode SNK Rd                 
 164:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ROLE_SRC             0x0U                         /*!< Mode SRC Rp                 
 165:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 166:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 167:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 168:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 169:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_RESISTOR Resistor value
 170:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 171:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 172:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RESISTOR_DEFAULT    UCPD_CR_ANASUBMODE_0          /*!< Rp default                  
 173:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RESISTOR_1_5A       UCPD_CR_ANASUBMODE_1          /*!< Rp 1.5 A                    
 174:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RESISTOR_3_0A       UCPD_CR_ANASUBMODE            /*!< Rp 3.0 A                    
 175:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RESISTOR_NONE       0x0U                          /*!< No resistor                 
 176:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 177:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 178:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 179:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 180:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_CFG1_ORDERSET ordered set configuration
 181:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 182:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 183:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_SOP         UCPD_CFG1_RXORDSETEN_0       /*!< SOP Ordered set detection en
 184:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_SOP1        UCPD_CFG1_RXORDSETEN_1       /*!< SOP' Ordered set detection e
 185:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_SOP2        UCPD_CFG1_RXORDSETEN_2       /*!< SOP'' Ordered set detection 
 186:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_HARDRST     UCPD_CFG1_RXORDSETEN_3       /*!< Hard Reset Ordered set detec
 187:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_CABLERST    UCPD_CFG1_RXORDSETEN_4       /*!< Cable Reset Ordered set dete
 188:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_SOP1_DEBUG  UCPD_CFG1_RXORDSETEN_5       /*!< SOP' Debug Ordered set detec
 189:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_SOP2_DEBUG  UCPD_CFG1_RXORDSETEN_6       /*!< SOP'' Debug Ordered set dete
 190:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_SOP_EXT1    UCPD_CFG1_RXORDSETEN_7       /*!< SOP extension#1 Ordered set 
 191:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ORDERSET_SOP_EXT2    UCPD_CFG1_RXORDSETEN_8       /*!< SOP extension#2 Ordered set 
 192:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 193:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 194:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 195:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 196:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_CCxEVT  CCx event
 197:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 198:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 199:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC1_VOPEN      0x00u                                                      /*!< 
 200:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC1_VRP        UCPD_SR_TYPEC_VSTATE_CC1_0                                 /*!< 
 201:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC1_VRP15A     UCPD_SR_TYPEC_VSTATE_CC1_1                                 /*!< 
 202:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC1_VRP30A     (UCPD_SR_TYPEC_VSTATE_CC1_0 | UCPD_SR_TYPEC_VSTATE_CC1_1)  /*!< 
 203:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 204:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC2_VOPEN      0x00u                                                      /*!< 
 205:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC2_VRP        UCPD_SR_TYPEC_VSTATE_CC2_0                                 /*!< 
 206:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC2_VRP15A     UCPD_SR_TYPEC_VSTATE_CC2_1                                 /*!< 
 207:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SNK_CC2_VRP30A     (UCPD_SR_TYPEC_VSTATE_CC2_0 | UCPD_SR_TYPEC_VSTATE_CC2_1)  /*!< 
 208:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 209:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SRC_CC1_VRA        0x0U                                                      /*!< C
 210:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SRC_CC1_VRD        UCPD_SR_TYPEC_VSTATE_CC1_0                                /*!< C
 211:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SRC_CC1_OPEN       UCPD_SR_TYPEC_VSTATE_CC1_1                                /*!< C
 212:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 213:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SRC_CC2_VRA        0x0U                                                      /*!< C
 214:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SRC_CC2_VRD        UCPD_SR_TYPEC_VSTATE_CC2_0                                /*!< C
 215:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_SRC_CC2_OPEN       UCPD_SR_TYPEC_VSTATE_CC2_1                                /*!< C
 216:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 217:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 218:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 219:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 220:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_PSC prescaler for UCPDCLK
 221:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 222:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 223:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_PSC_DIV1            0x0u                                                     /*!< B
 224:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_PSC_DIV2            UCPD_CFG1_PSC_UCPDCLK_0                                  /*!< P
 225:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_PSC_DIV4            UCPD_CFG1_PSC_UCPDCLK_1                                  /*!< P
 226:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_PSC_DIV8            (UCPD_CFG1_PSC_UCPDCLK_1 | UCPD_CFG1_PSC_UCPDCLK_0)      /*!< P
 227:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_PSC_DIV16           UCPD_CFG1_PSC_UCPDCLK_2                                  /*!< P
 228:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 229:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 230:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 231:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 232:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_CCENABLE CC pin enable
 233:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 234:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 235:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_CCENABLE_NONE       0x0U                                                     /*!< N
 236:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_CCENABLE_CC1        UCPD_CR_CCENABLE_0                                       /*!< C
 237:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_CCENABLE_CC2        UCPD_CR_CCENABLE_1                                       /*!< C
 238:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_CCENABLE_CC1CC2     (UCPD_CR_CCENABLE_0 | UCPD_CR_CCENABLE_1)                /*!< C
 239:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 240:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 241:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 242:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 243:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_CCPIN CC pin selection
 244:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 245:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 246:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_CCPIN_CC1           0x0U                    /*!< Use CC1 IO for power delivery comm
 247:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_CCPIN_CC2           UCPD_CR_PHYCCSEL        /*!< Use CC2 IO for power delivery comm
 248:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 249:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 250:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 251:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 252:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_RXMODE Receiver mode
 253:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 254:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 255:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXMODE_NORMAL           0x0U                /*!< Normal receive mode               
 256:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXMODE_BIST_TEST_DATA   UCPD_CR_RXMODE      /*!< BIST receive mode (BIST Test Data 
 257:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 258:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 259:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 260:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 261:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_TXMODE Type of Tx packet
 262:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 263:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 264:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_TXMODE_NORMAL           0x0U                /*!< Initiate the transfer of a Tx mess
 265:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_TXMODE_CABLE_RESET      UCPD_CR_TXMODE_0    /*!< Trigger a the transfer of a Cable 
 266:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_TXMODE_BIST_CARRIER2    UCPD_CR_TXMODE_1    /*!< Trigger a BIST test sequence send 
 267:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 268:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 269:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 270:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 271:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EC_RXORDSET Rx ordered set code detected
 272:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 273:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 274:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_SOP             0x0U                                                      
 275:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_SOP1            UCPD_RX_ORDSET_RXORDSET_0                                 
 276:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_SOP2            UCPD_RX_ORDSET_RXORDSET_1                                 
 277:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_SOP1_DEBUG      (UCPD_RX_ORDSET_RXORDSET_0 | UCPD_RX_ORDSET_RXORDSET_1)   
 278:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_SOP2_DEBUG      UCPD_RX_ORDSET_RXORDSET_2                                 
 279:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_CABLE_RESET     (UCPD_RX_ORDSET_RXORDSET_2 | UCPD_RX_ORDSET_RXORDSET_0)   
 280:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_SOPEXT1         (UCPD_RX_ORDSET_RXORDSET_2 | UCPD_RX_ORDSET_RXORDSET_1)   
 281:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_RXORDSET_SOPEXT2         (UCPD_RX_ORDSET_RXORDSET_2 | UCPD_RX_ORDSET_RXORDSET_1 | U
 282:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 283:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 284:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 285:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 286:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 287:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 288:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 289:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 290:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Exported macro ------------------------------------------------------------*/
 291:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_Exported_Macros UCPD Exported Macros
 292:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 293:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 294:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 295:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EM_WRITE_READ Common Write and read registers Macros
 296:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 297:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 298:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 299:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 300:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief  Write a value in UCPD register
 301:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @param  __INSTANCE__ UCPD Instance
 302:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @param  __REG__ Register to be written
 303:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @param  __VALUE__ Value to be written in the register
 304:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @retval None
 305:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 306:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_WriteReg(__INSTANCE__, __REG__, __VALUE__) WRITE_REG((__INSTANCE__)->__REG__, (__VA
 307:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 308:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 309:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief  Read a value in UCPD register
 310:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @param  __INSTANCE__ UCPD Instance
 311:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @param  __REG__ Register to be read
 312:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @retval Register value
 313:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 314:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** #define LL_UCPD_ReadReg(__INSTANCE__, __REG__) READ_REG((__INSTANCE__)->__REG__)
 315:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 316:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 317:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 318:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 319:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 320:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @}
 321:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 322:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 323:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /* Exported functions --------------------------------------------------------*/
 324:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_Exported_Functions UCPD Exported Functions
 325:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 326:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 327:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 328:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EF_Configuration Configuration
 329:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 330:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 331:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 332:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /** @defgroup UCPD_LL_EF_CFG1 CFG1 register
 333:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @{
 334:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 335:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 336:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief  Enable UCPD peripheral
 337:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @rmtoll CFG1          UCPDEN           LL_UCPD_Enable
 338:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @param  UCPDx UCPD Instance
 339:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @retval None
 340:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 341:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** __STATIC_INLINE void LL_UCPD_Enable(UCPD_TypeDef *UCPDx)
 342:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** {
 343:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   SET_BIT(UCPDx->CFG1, UCPD_CFG1_UCPDEN);
 344:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** }
 345:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** 
 346:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** /**
 347:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @brief  Disable UCPD peripheral
 348:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @note   When disabling the UCPD, follow the procedure described in the Reference Manual.
 349:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @rmtoll CFG1          UCPDEN           LL_UCPD_Disable
 350:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @param  UCPDx UCPD Instance
 351:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   * @retval None
 352:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   */
 353:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** __STATIC_INLINE void LL_UCPD_Disable(UCPD_TypeDef *UCPDx)
  41              		.loc 2 353 22 view .LVU4
  42              	.LBB15:
 354:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** {
 355:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h ****   CLEAR_BIT(UCPDx->CFG1, UCPD_CFG1_UCPDEN);
  43              		.loc 2 355 3 view .LVU5
  44 0000 0368     		ldr	r3, [r0]
  45 0002 23F00043 		bic	r3, r3, #-2147483648
  46 0006 0360     		str	r3, [r0]
  47              	.LVL1:
  48              		.loc 2 355 3 is_stmt 0 view .LVU6
  49              	.LBE15:
  50              	.LBE14:
  88:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  89:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   if (UCPD1 == UCPDx)
  51              		.loc 1 89 3 is_stmt 1 view .LVU7
  52              		.loc 1 89 6 is_stmt 0 view .LVU8
  53 0008 0A4B     		ldr	r3, .L4
  54 000a 9842     		cmp	r0, r3
  55 000c 0FD1     		bne	.L3
  90:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   {
  91:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     /* Force reset of ucpd clock */
  92:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     LL_APB1_GRP2_ForceReset(LL_APB1_GRP2_PERIPH_UCPD1);
  56              		.loc 1 92 5 is_stmt 1 view .LVU9
  57              	.LBB16:
  58              	.LBI16:
  59              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_bus.h"
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
  60              		.loc 3 1159 22 view .LVU10
  61              	.LVL2:
  62              	.LBB17:
1160:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1161:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1RSTR2, Periphs);
  63              		.loc 3 1161 3 view .LVU11
  64 000e 03F5B833 		add	r3, r3, #94208
  65              	.LBE17:
  66              	.LBE16:
  93:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  94:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     /* Release reset of ucpd clock */
  95:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     LL_APB1_GRP2_ReleaseReset(LL_APB1_GRP2_PERIPH_UCPD1);
  96:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  97:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     /* Disbale ucpd clock */
  98:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     LL_APB1_GRP2_DisableClock(LL_APB1_GRP2_PERIPH_UCPD1);
  99:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 100:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     status = SUCCESS;
  67              		.loc 1 100 12 is_stmt 0 view .LVU12
  68 0012 0020     		movs	r0, #0
  69              	.LVL3:
  70              	.LBB19:
  71              	.LBB18:
  72              		.loc 3 1161 3 view .LVU13
  73 0014 DA6B     		ldr	r2, [r3, #60]
  74 0016 42F48072 		orr	r2, r2, #256
  75 001a DA63     		str	r2, [r3, #60]
  76              	.LVL4:
  77              		.loc 3 1161 3 view .LVU14
  78              	.LBE18:
  79              	.LBE19:
  95:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  80              		.loc 1 95 5 is_stmt 1 view .LVU15
  81              	.LBB20:
  82              	.LBI20:
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
  83              		.loc 3 1229 22 view .LVU16
  84              	.LBB21:
1230:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
1231:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   CLEAR_BIT(RCC->APB1RSTR2, Periphs);
  85              		.loc 3 1231 3 view .LVU17
  86 001c DA6B     		ldr	r2, [r3, #60]
  87 001e 22F48072 		bic	r2, r2, #256
  88 0022 DA63     		str	r2, [r3, #60]
  89              	.LVL5:
  90              		.loc 3 1231 3 is_stmt 0 view .LVU18
  91              	.LBE21:
  92              	.LBE20:
  98:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
  93              		.loc 1 98 5 is_stmt 1 view .LVU19
  94              	.LBB22:
  95              	.LBI22:
1089:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
  96              		.loc 3 1089 22 view .LVU20
  97              	.LBB23:
1091:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
  98              		.loc 3 1091 3 view .LVU21
  99 0024 DA6D     		ldr	r2, [r3, #92]
 100 0026 22F48072 		bic	r2, r2, #256
 101 002a DA65     		str	r2, [r3, #92]
 102 002c 7047     		bx	lr
 103              	.LVL6:
 104              	.L3:
1091:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 105              		.loc 3 1091 3 is_stmt 0 view .LVU22
 106              	.LBE23:
 107              	.LBE22:
  82:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 108              		.loc 1 82 15 view .LVU23
 109 002e 0120     		movs	r0, #1
 110              	.LVL7:
 101:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   }
 102:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 103:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   return status;
 111              		.loc 1 103 3 is_stmt 1 view .LVU24
 104:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** }
 112              		.loc 1 104 1 is_stmt 0 view .LVU25
 113 0030 7047     		bx	lr
 114              	.L5:
 115 0032 00BF     		.align	2
 116              	.L4:
 117 0034 00A00040 		.word	1073782784
 118              		.cfi_endproc
 119              	.LFE433:
 121              		.section	.text.LL_UCPD_Init,"ax",%progbits
 122              		.align	1
 123              		.global	LL_UCPD_Init
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu fpv4-sp-d16
 129              	LL_UCPD_Init:
 130              	.LVL8:
 131              	.LFB434:
 105:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 106:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /**
 107:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @brief  Initialize the ucpd registers according to the specified parameters in UCPD_InitStruct.
 108:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @note   As some bits in ucpd configuration registers can only be written when the ucpd is disab
 109:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *         UCPD peripheral should be in disabled state prior calling this function. Otherwise, ERR
 110:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @param  UCPDx UCPD Instance
 111:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @param  UCPD_InitStruct pointer to a @ref LL_UCPD_InitTypeDef structure that contains
 112:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *         the configuration information for the UCPD peripheral.
 113:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @retval An ErrorStatus enumeration value. (Return always SUCCESS)
 114:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** ErrorStatus LL_UCPD_Init(UCPD_TypeDef *UCPDx, LL_UCPD_InitTypeDef *UCPD_InitStruct)
 116:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** {
 132              		.loc 1 116 1 is_stmt 1 view -0
 133              		.cfi_startproc
 134              		@ args = 0, pretend = 0, frame = 8
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 117:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   /* Check the ucpd Instance UCPDx*/
 118:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   assert_param(IS_UCPD_ALL_INSTANCE(UCPDx));
 136              		.loc 1 118 3 view .LVU27
 119:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 120:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   if(UCPD1 == UCPDx)
 137              		.loc 1 120 3 view .LVU28
 138              		.loc 1 120 5 is_stmt 0 view .LVU29
 139 0000 114B     		ldr	r3, .L8
 140 0002 9842     		cmp	r0, r3
 116:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   /* Check the ucpd Instance UCPDx*/
 141              		.loc 1 116 1 view .LVU30
 142 0004 13B5     		push	{r0, r1, r4, lr}
 143              		.cfi_def_cfa_offset 16
 144              		.cfi_offset 4, -8
 145              		.cfi_offset 14, -4
 146              		.loc 1 120 5 view .LVU31
 147 0006 0AD1     		bne	.L7
 121:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   {
 122:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****     LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_UCPD1);
 148              		.loc 1 122 5 is_stmt 1 view .LVU32
 149              	.LBB28:
 150              	.LBI28:
 937:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** {
 151              		.loc 3 937 22 view .LVU33
 152              	.LVL9:
 153              	.LBB29:
 939:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   SET_BIT(RCC->APB1ENR2, Periphs);
 154              		.loc 3 939 3 view .LVU34
 940:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   /* Delay after an RCC peripheral clock enabling */
 155              		.loc 3 940 3 view .LVU35
 156 0008 03F5B833 		add	r3, r3, #94208
 157 000c DA6D     		ldr	r2, [r3, #92]
 158 000e 42F48072 		orr	r2, r2, #256
 159 0012 DA65     		str	r2, [r3, #92]
 942:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 160              		.loc 3 942 3 view .LVU36
 942:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 161              		.loc 3 942 12 is_stmt 0 view .LVU37
 162 0014 DB6D     		ldr	r3, [r3, #92]
 163 0016 03F48073 		and	r3, r3, #256
 942:../../..\CubeG4\include/stm32g4xx_ll_bus.h ****   (void)tmpreg;
 164              		.loc 3 942 10 view .LVU38
 165 001a 0193     		str	r3, [sp, #4]
 943:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 166              		.loc 3 943 3 is_stmt 1 view .LVU39
 167 001c 019B     		ldr	r3, [sp, #4]
 168              	.LVL10:
 169              	.L7:
 943:../../..\CubeG4\include/stm32g4xx_ll_bus.h **** }
 170              		.loc 3 943 3 is_stmt 0 view .LVU40
 171              	.LBE29:
 172              	.LBE28:
 123:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   }
 124:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 125:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 126:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   LL_UCPD_Disable(UCPDx);
 173              		.loc 1 126 3 is_stmt 1 view .LVU41
 174              	.LBB30:
 175              	.LBI30:
 353:../../..\CubeG4\include/stm32g4xx_ll_ucpd.h **** {
 176              		.loc 2 353 22 view .LVU42
 177              	.LBB31:
 178              		.loc 2 355 3 view .LVU43
 179 001e 0368     		ldr	r3, [r0]
 180              	.LBE31:
 181              	.LBE30:
 127:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 128:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   /*---------------------------- UCPDx CFG1 Configuration ------------------------*/
 129:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   MODIFY_REG(UCPDx->CFG1,
 182              		.loc 1 129 3 is_stmt 0 view .LVU44
 183 0020 CA68     		ldr	r2, [r1, #12]
 184              	.LBB33:
 185              	.LBB32:
 186              		.loc 2 355 3 view .LVU45
 187 0022 23F00043 		bic	r3, r3, #-2147483648
 188 0026 0360     		str	r3, [r0]
 189              	.LVL11:
 190              		.loc 2 355 3 view .LVU46
 191              	.LBE32:
 192              	.LBE33:
 193              		.loc 1 129 3 is_stmt 1 view .LVU47
 194 0028 0B68     		ldr	r3, [r1]
 195 002a 0468     		ldr	r4, [r0]
 196 002c 1343     		orrs	r3, r3, r2
 197 002e 4A68     		ldr	r2, [r1, #4]
 198 0030 43EAC223 		orr	r3, r3, r2, lsl #11
 199 0034 8A68     		ldr	r2, [r1, #8]
 200 0036 43EA8213 		orr	r3, r3, r2, lsl #6
 201 003a 044A     		ldr	r2, .L8+4
 202 003c 2240     		ands	r2, r2, r4
 203 003e 1343     		orrs	r3, r3, r2
 204 0040 0360     		str	r3, [r0]
 130:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****              UCPD_CFG1_PSC_UCPDCLK | UCPD_CFG1_TRANSWIN | UCPD_CFG1_IFRGAP | UCPD_CFG1_HBITCLKDIV,
 131:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****              UCPD_InitStruct->psc_ucpdclk | (UCPD_InitStruct->transwin  << UCPD_CFG1_TRANSWIN_Pos) 
 132:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****              (UCPD_InitStruct->IfrGap << UCPD_CFG1_IFRGAP_Pos) | UCPD_InitStruct->HbitClockDiv);
 133:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 134:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   return SUCCESS;
 205              		.loc 1 134 3 view .LVU48
 135:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** }
 206              		.loc 1 135 1 is_stmt 0 view .LVU49
 207 0042 0020     		movs	r0, #0
 208              	.LVL12:
 209              		.loc 1 135 1 view .LVU50
 210 0044 02B0     		add	sp, sp, #8
 211              		.cfi_def_cfa_offset 8
 212              		@ sp needed
 213 0046 10BD     		pop	{r4, pc}
 214              	.L9:
 215              		.align	2
 216              	.L8:
 217 0048 00A00040 		.word	1073782784
 218 004c 0000F1FF 		.word	-983040
 219              		.cfi_endproc
 220              	.LFE434:
 222              		.section	.text.LL_UCPD_StructInit,"ax",%progbits
 223              		.align	1
 224              		.global	LL_UCPD_StructInit
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
 230              	LL_UCPD_StructInit:
 231              	.LVL13:
 232              	.LFB435:
 136:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** 
 137:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** /**
 138:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @brief  Set each @ref LL_UCPD_InitTypeDef field to default value.
 139:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @param  UCPD_InitStruct pointer to a @ref LL_UCPD_InitTypeDef structure
 140:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   *         whose fields will be set to default values.
 141:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   * @retval None
 142:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   */
 143:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** void LL_UCPD_StructInit(LL_UCPD_InitTypeDef *UCPD_InitStruct)
 144:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** {
 233              		.loc 1 144 1 is_stmt 1 view -0
 234              		.cfi_startproc
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 145:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   /* Set UCPD_InitStruct fields to default values */
 146:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   UCPD_InitStruct->psc_ucpdclk  = LL_UCPD_PSC_DIV1;
 238              		.loc 1 146 3 view .LVU52
 147:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   UCPD_InitStruct->transwin     = 0x7;   /* Divide by 8                     */
 239              		.loc 1 147 33 is_stmt 0 view .LVU53
 240 0000 0723     		movs	r3, #7
 241 0002 0022     		movs	r2, #0
 242 0004 C0E90023 		strd	r2, r3, [r0]
 148:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   UCPD_InitStruct->IfrGap       = 0x10;  /* Divide by 17                    */
 243              		.loc 1 148 3 is_stmt 1 view .LVU54
 149:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c ****   UCPD_InitStruct->HbitClockDiv = 0x1A;  /* Divide by 27 to produce HBITCLK */
 244              		.loc 1 149 33 is_stmt 0 view .LVU55
 245 0008 1021     		movs	r1, #16
 246 000a 1A23     		movs	r3, #26
 247 000c C0E90213 		strd	r1, r3, [r0, #8]
 150:../../..\CubeG4\src/stm32g4xx_ll_ucpd.c **** }
 248              		.loc 1 150 1 view .LVU56
 249 0010 7047     		bx	lr
 250              		.cfi_endproc
 251              	.LFE435:
 253              		.text
 254              	.Letext0:
 255              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 256              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 257              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 258              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 259              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 260              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
