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
  13              		.file	"stm32g4xx_ll_rtc.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_RTC_StructInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_RTC_StructInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_RTC_StructInit:
  27              	.LVL0:
  28              	.LFB396:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_rtc.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @file    stm32g4xx_ll_rtc.c
   4:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief   RTC LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * <h2><center>&copy; COPYRIGHT(c) 2019 STMicroelectronics</center></h2>
  10:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  12:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * the "License"; You may not use this file except in compliance with the
  13:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * License. You may obtain a copy of the License at:
  14:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *                        opensource.org/licenses/BSD-3-Clause
  15:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *
  16:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ******************************************************************************
  17:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
  18:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined(USE_FULL_LL_DRIVER)
  19:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  20:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Includes ------------------------------------------------------------------*/
  21:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #include "stm32g4xx_ll_rtc.h"
  22:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #include "stm32g4xx_ll_cortex.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #ifdef  USE_FULL_ASSERT
  24:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #include "stm32_assert.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #else  /* USE_FULL_ASSERT */
  26:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define assert_param(expr) ((void)0U)
  27:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* USE_FULL_ASSERT */
  28:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  29:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /** @addtogroup STM32G4xx_LL_Driver
  30:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @{
  31:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
  32:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  33:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined(RTC)
  34:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /** @addtogroup RTC_LL
  36:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @{
  37:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
  38:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  39:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Private types -------------------------------------------------------------*/
  40:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Private variables ---------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Private constants ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /** @addtogroup RTC_LL_Private_Constants
  43:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @{
  44:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
  45:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Default values used for prescaler */
  46:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define RTC_ASYNCH_PRESC_DEFAULT     ((uint32_t) 0x0000007FU)
  47:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define RTC_SYNCH_PRESC_DEFAULT      ((uint32_t) 0x000000FFU)
  48:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  49:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Values used for timeout */
  50:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define RTC_INITMODE_TIMEOUT         ((uint32_t) 1000U) /* 1s when tick set to 1ms */
  51:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define RTC_SYNCHRO_TIMEOUT          ((uint32_t) 1000U) /* 1s when tick set to 1ms */
  52:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
  53:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @}
  54:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
  55:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  56:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Private macros ------------------------------------------------------------*/
  57:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /** @addtogroup RTC_LL_Private_Macros
  58:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @{
  59:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
  60:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_HOURFORMAT(__VALUE__) (((__VALUE__) == LL_RTC_HOURFORMAT_24HOUR) \
  61:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                          || ((__VALUE__) == LL_RTC_HOURFORMAT_AMPM))
  62:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  63:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_ASYNCH_PREDIV(__VALUE__)   ((__VALUE__) <= 0x7FU)
  64:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  65:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_SYNCH_PREDIV(__VALUE__)    ((__VALUE__) <= 0x7FFFU)
  66:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  67:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_FORMAT(__VALUE__) (((__VALUE__) == LL_RTC_FORMAT_BIN) \
  68:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                      || ((__VALUE__) == LL_RTC_FORMAT_BCD))
  69:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  70:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_TIME_FORMAT(__VALUE__) (((__VALUE__) == LL_RTC_TIME_FORMAT_AM_OR_24) \
  71:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                           || ((__VALUE__) == LL_RTC_TIME_FORMAT_PM))
  72:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  73:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_HOUR12(__HOUR__)            (((__HOUR__) > 0U) && ((__HOUR__) <= 12U))
  74:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_HOUR24(__HOUR__)            ((__HOUR__) <= 23U)
  75:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_MINUTES(__MINUTES__)        ((__MINUTES__) <= 59U)
  76:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_SECONDS(__SECONDS__)        ((__SECONDS__) <= 59U)
  77:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  78:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_WEEKDAY(__VALUE__) (((__VALUE__) == LL_RTC_WEEKDAY_MONDAY) \
  79:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                       || ((__VALUE__) == LL_RTC_WEEKDAY_TUESDAY) \
  80:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                       || ((__VALUE__) == LL_RTC_WEEKDAY_WEDNESDAY) \
  81:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                       || ((__VALUE__) == LL_RTC_WEEKDAY_THURSDAY) \
  82:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                       || ((__VALUE__) == LL_RTC_WEEKDAY_FRIDAY) \
  83:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                       || ((__VALUE__) == LL_RTC_WEEKDAY_SATURDAY) \
  84:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                       || ((__VALUE__) == LL_RTC_WEEKDAY_SUNDAY))
  85:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  86:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_DAY(__DAY__)    (((__DAY__) >= (uint32_t)1U) && ((__DAY__) <= (uint32_t)31U))
  87:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  88:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_MONTH(__MONTH__) (((__MONTH__) >= 1U) && ((__MONTH__) <= 12U))
  89:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  90:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_YEAR(__YEAR__) ((__YEAR__) <= 99U)
  91:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  92:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_ALMA_MASK(__VALUE__) (((__VALUE__) == LL_RTC_ALMA_MASK_NONE) \
  93:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMA_MASK_DATEWEEKDAY) \
  94:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMA_MASK_HOURS) \
  95:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMA_MASK_MINUTES) \
  96:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMA_MASK_SECONDS) \
  97:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMA_MASK_ALL))
  98:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
  99:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_ALMB_MASK(__VALUE__) (((__VALUE__) == LL_RTC_ALMB_MASK_NONE) \
 100:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMB_MASK_DATEWEEKDAY) \
 101:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMB_MASK_HOURS) \
 102:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMB_MASK_MINUTES) \
 103:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMB_MASK_SECONDS) \
 104:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                         || ((__VALUE__) == LL_RTC_ALMB_MASK_ALL))
 105:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 106:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 107:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_ALMA_DATE_WEEKDAY_SEL(__SEL__) (((__SEL__) == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE) ||
 108:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                                   ((__SEL__) == LL_RTC_ALMA_DATEWEEKDAYSEL_WEEKDAY)
 109:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 110:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #define IS_LL_RTC_ALMB_DATE_WEEKDAY_SEL(__SEL__) (((__SEL__) == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE) ||
 111:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                                                   ((__SEL__) == LL_RTC_ALMB_DATEWEEKDAYSEL_WEEKDAY)
 112:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 113:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @}
 114:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Private function prototypes -----------------------------------------------*/
 116:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /* Exported functions --------------------------------------------------------*/
 117:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /** @addtogroup RTC_LL_Exported_Functions
 118:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @{
 119:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 120:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 121:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /** @addtogroup RTC_LL_EF_Init
 122:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @{
 123:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 124:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 125:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 126:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  De-Initializes the RTC registers to their default reset values.
 127:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   This function does not reset the RTC Clock source and RTC Backup Data
 128:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         registers.
 129:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 130:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 131:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: RTC registers are de-initialized
 132:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: RTC registers are not de-initialized
 133:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 134:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_DeInit(RTC_TypeDef *RTCx)
 135:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 136:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 137:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 138:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameter */
 139:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 140:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_TAMP_ALL_INSTANCE(TAMP));
 141:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 142:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Disable the write protection for RTC registers */
 143:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_DisableWriteProtection(RTCx);
 144:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 145:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Set Initialization mode */
 146:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
 147:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 148:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Reset TR, DR and CR registers */
 149:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->TR,       0x00000000U);
 150:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined(RTC_WAKEUP_SUPPORT)
 151:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->WUTR,     RTC_WUTR_WUT);
 152:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* RTC_WAKEUP_SUPPORT */
 153:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->DR, (RTC_DR_WDU_0 | RTC_DR_MU_0 | RTC_DR_DU_0));
 154:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Reset All CR bits except CR[2:0] */
 155:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined(RTC_WAKEUP_SUPPORT)
 156:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->CR, (READ_REG(RTCx->CR) & RTC_CR_WUCKSEL));
 157:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #else
 158:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->CR, 0x00000000U);
 159:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* RTC_WAKEUP_SUPPORT */
 160:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->PRER, (RTC_PRER_PREDIV_A | RTC_SYNCH_PRESC_DEFAULT));
 161:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMAR,   0x00000000U);
 162:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMBR,   0x00000000U);
 163:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->SHIFTR,   0x00000000U);
 164:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->CALR,     0x00000000U);
 165:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMASSR, 0x00000000U);
 166:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMBSSR, 0x00000000U);
 167:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 168:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Exit Initialization mode */
 169:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_DisableInitMode(RTCx);
 170:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 171:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Wait till the RTC RSF flag is set */
 172:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     status = LL_RTC_WaitForSynchro(RTCx);
 173:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 174:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 175:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Enable the write protection for RTC registers */
 176:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_EnableWriteProtection(RTCx);
 177:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 178:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* DeInitialization of the TAMP */
 179:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Reset TAMP CR1 and CR2 registers */
 180:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->CR1,      0xFFFF0000U);
 181:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->CR2,     0x00000000U);
 182:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined (RTC_OTHER_SUPPORT)
 183:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->CR3,     0x00000000U);
 184:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->SMCR,     0x00000000U);
 185:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->PRIVCR,   0x00000000U);
 186:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* RTC_OTHER_SUPPORT */
 187:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->FLTCR,    0x00000000U);
 188:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined (RTC_ACTIVE_TAMPER_SUPPORT)
 189:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->ATCR1,    0x00000000U);
 190:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->ATCR2,    0x00000000U);
 191:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* RTC_ACTIVE_TAMPER_SUPPORT */
 192:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->IER,      0x00000000U);
 193:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->SCR,      0xFFFFFFFFU);
 194:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined (RTC_OPTION_REG_SUPPORT)
 195:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->OR,       0x00000000U);
 196:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* RTC_OPTION_REG_SUPPORT */
 197:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 198:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return status;
 199:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 200:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 201:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 202:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Initializes the RTC registers according to the specified parameters
 203:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         in RTC_InitStruct.
 204:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 205:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_InitStruct pointer to a @ref LL_RTC_InitTypeDef structure that contains
 206:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         the configuration information for the RTC peripheral.
 207:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   The RTC Prescaler register is write protected and can be written in
 208:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         initialization mode only.
 209:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 210:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: RTC registers are initialized
 211:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: RTC registers are not initialized
 212:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 213:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_Init(RTC_TypeDef *RTCx, LL_RTC_InitTypeDef *RTC_InitStruct)
 214:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 215:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 216:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 217:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameters */
 218:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 219:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_HOURFORMAT(RTC_InitStruct->HourFormat));
 220:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_ASYNCH_PREDIV(RTC_InitStruct->AsynchPrescaler));
 221:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_SYNCH_PREDIV(RTC_InitStruct->SynchPrescaler));
 222:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 223:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Disable the write protection for RTC registers */
 224:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_DisableWriteProtection(RTCx);
 225:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 226:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Set Initialization mode */
 227:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
 228:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 229:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Set Hour Format */
 230:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_SetHourFormat(RTCx, RTC_InitStruct->HourFormat);
 231:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 232:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Configure Synchronous prescaler factor */
 233:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_SetSynchPrescaler(RTCx, RTC_InitStruct->SynchPrescaler);
 234:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Configure Asynchronous prescaler factor */
 235:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_SetAsynchPrescaler(RTCx, RTC_InitStruct->AsynchPrescaler);
 236:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 237:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Exit Initialization mode */
 238:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_DisableInitMode(RTCx);
 239:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 240:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     status = SUCCESS;
 241:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 242:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Enable the write protection for RTC registers */
 243:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_EnableWriteProtection(RTCx);
 244:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 245:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return status;
 246:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 247:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 248:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 249:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set each @ref LL_RTC_InitTypeDef field to default value.
 250:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_InitStruct pointer to a @ref LL_RTC_InitTypeDef structure which will be initialized
 251:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval None
 252:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 253:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** void LL_RTC_StructInit(LL_RTC_InitTypeDef *RTC_InitStruct)
 254:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
  30              		.loc 1 254 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
 255:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Set RTC_InitStruct fields to default values */
 256:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_InitStruct->HourFormat      = LL_RTC_HOURFORMAT_24HOUR;
  35              		.loc 1 256 3 view .LVU1
 257:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_InitStruct->AsynchPrescaler = RTC_ASYNCH_PRESC_DEFAULT;
  36              		.loc 1 257 35 is_stmt 0 view .LVU2
  37 0000 7F23     		movs	r3, #127
  38 0002 0022     		movs	r2, #0
  39 0004 C0E90023 		strd	r2, r3, [r0]
 258:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_InitStruct->SynchPrescaler  = RTC_SYNCH_PRESC_DEFAULT;
  40              		.loc 1 258 3 is_stmt 1 view .LVU3
  41              		.loc 1 258 35 is_stmt 0 view .LVU4
  42 0008 FF23     		movs	r3, #255
  43 000a 8360     		str	r3, [r0, #8]
 259:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
  44              		.loc 1 259 1 view .LVU5
  45 000c 7047     		bx	lr
  46              		.cfi_endproc
  47              	.LFE396:
  49              		.section	.text.LL_RTC_TIME_StructInit,"ax",%progbits
  50              		.align	1
  51              		.global	LL_RTC_TIME_StructInit
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu fpv4-sp-d16
  57              	LL_RTC_TIME_StructInit:
  58              	.LVL1:
  59              	.LFB398:
 260:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 261:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 262:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set the RTC current time.
 263:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 264:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_Format This parameter can be one of the following values:
 265:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BIN
 266:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BCD
 267:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_TimeStruct pointer to a RTC_TimeTypeDef structure that contains
 268:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *                        the time configuration information for the RTC.
 269:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 270:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: RTC Time register is configured
 271:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: RTC Time register is not configured
 272:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 273:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_TIME_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_TimeTypeDef *RTC_TimeSt
 274:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 275:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 276:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 277:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameters */
 278:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 279:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
 280:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 281:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_Format == LL_RTC_FORMAT_BIN)
 282:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 283:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
 284:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 285:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR12(RTC_TimeStruct->Hours));
 286:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_TimeStruct->TimeFormat));
 287:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 288:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 289:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 290:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       RTC_TimeStruct->TimeFormat = 0x00U;
 291:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(RTC_TimeStruct->Hours));
 292:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 293:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MINUTES(RTC_TimeStruct->Minutes));
 294:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_SECONDS(RTC_TimeStruct->Seconds));
 295:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 296:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 297:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 298:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
 299:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 300:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR12(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Hours)));
 301:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_TimeStruct->TimeFormat));
 302:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 303:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 304:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 305:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       RTC_TimeStruct->TimeFormat = 0x00U;
 306:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Hours)));
 307:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 308:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MINUTES(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Minutes)));
 309:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_SECONDS(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Seconds)));
 310:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 311:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 312:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Disable the write protection for RTC registers */
 313:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_DisableWriteProtection(RTCx);
 314:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 315:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Set Initialization mode */
 316:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
 317:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 318:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Check the input parameters format */
 319:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_Format != LL_RTC_FORMAT_BIN)
 320:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 321:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_TIME_Config(RTCx, RTC_TimeStruct->TimeFormat, RTC_TimeStruct->Hours,
 322:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          RTC_TimeStruct->Minutes, RTC_TimeStruct->Seconds);
 323:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 324:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 325:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 326:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_TIME_Config(RTCx, RTC_TimeStruct->TimeFormat, __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct-
 327:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
 328:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Seconds));
 329:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 330:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 331:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Exit Initialization mode */
 332:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_DisableInitMode(RTC);
 333:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 334:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* If  RTC_CR_BYPSHAD bit = 0, wait for synchro else this check is not needed */
 335:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_IsShadowRegBypassEnabled(RTCx) == 0U)
 336:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 337:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       status = LL_RTC_WaitForSynchro(RTCx);
 338:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 339:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 340:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 341:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       status = SUCCESS;
 342:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 343:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 344:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Enable the write protection for RTC registers */
 345:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_EnableWriteProtection(RTCx);
 346:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 347:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return status;
 348:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 349:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 350:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 351:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set each @ref LL_RTC_TimeTypeDef field to default value (Time = 00h:00min:00sec).
 352:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_TimeStruct pointer to a @ref LL_RTC_TimeTypeDef structure which will be initialized
 353:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval None
 354:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 355:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** void LL_RTC_TIME_StructInit(LL_RTC_TimeTypeDef *RTC_TimeStruct)
 356:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
  60              		.loc 1 356 1 is_stmt 1 view -0
  61              		.cfi_startproc
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
 357:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Time = 00h:00min:00sec */
 358:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_TimeStruct->TimeFormat = LL_RTC_TIME_FORMAT_AM_OR_24;
  65              		.loc 1 358 3 view .LVU7
 359:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_TimeStruct->Hours      = 0U;
  66              		.loc 1 359 3 view .LVU8
 360:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_TimeStruct->Minutes    = 0U;
  67              		.loc 1 360 3 view .LVU9
 361:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_TimeStruct->Seconds    = 0U;
  68              		.loc 1 361 3 view .LVU10
 358:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_TimeStruct->Hours      = 0U;
  69              		.loc 1 358 30 is_stmt 0 view .LVU11
  70 0000 0023     		movs	r3, #0
  71 0002 0360     		str	r3, [r0]
 359:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_TimeStruct->Minutes    = 0U;
  72              		.loc 1 359 30 view .LVU12
  73 0004 8380     		strh	r3, [r0, #4]	@ movhi
  74              		.loc 1 361 30 view .LVU13
  75 0006 8371     		strb	r3, [r0, #6]
 362:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
  76              		.loc 1 362 1 view .LVU14
  77 0008 7047     		bx	lr
  78              		.cfi_endproc
  79              	.LFE398:
  81              		.section	.text.LL_RTC_DATE_StructInit,"ax",%progbits
  82              		.align	1
  83              		.global	LL_RTC_DATE_StructInit
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  89              	LL_RTC_DATE_StructInit:
  90              	.LVL2:
  91              	.LFB400:
 363:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 364:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 365:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set the RTC current date.
 366:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 367:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_Format This parameter can be one of the following values:
 368:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BIN
 369:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BCD
 370:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_DateStruct: pointer to a RTC_DateTypeDef structure that contains
 371:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *                         the date configuration information for the RTC.
 372:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 373:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: RTC Day register is configured
 374:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: RTC Day register is not configured
 375:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 376:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_DATE_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_DateTypeDef *RTC_DateSt
 377:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 378:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 379:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 380:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameters */
 381:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 382:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
 383:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 384:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if ((RTC_Format == LL_RTC_FORMAT_BIN) && ((RTC_DateStruct->Month & 0x10U) == 0x10U))
 385:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 386:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     RTC_DateStruct->Month = (uint8_t)(RTC_DateStruct->Month & (uint8_t)~(0x10U)) + 0x0AU;
 387:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 388:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_Format == LL_RTC_FORMAT_BIN)
 389:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 390:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_YEAR(RTC_DateStruct->Year));
 391:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MONTH(RTC_DateStruct->Month));
 392:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_DAY(RTC_DateStruct->Day));
 393:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 394:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 395:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 396:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_YEAR(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Year)));
 397:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MONTH(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Month)));
 398:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_DAY(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Day)));
 399:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 400:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_WEEKDAY(RTC_DateStruct->WeekDay));
 401:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 402:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Disable the write protection for RTC registers */
 403:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_DisableWriteProtection(RTCx);
 404:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 405:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Set Initialization mode */
 406:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
 407:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 408:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Check the input parameters format */
 409:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_Format != LL_RTC_FORMAT_BIN)
 410:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 411:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_DATE_Config(RTCx, RTC_DateStruct->WeekDay, RTC_DateStruct->Day, RTC_DateStruct->Month,
 412:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 413:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 414:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_DATE_Config(RTCx, RTC_DateStruct->WeekDay, __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Da
 416:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 417:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 418:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 419:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Exit Initialization mode */
 420:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_DisableInitMode(RTC);
 421:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 422:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* If  RTC_CR_BYPSHAD bit = 0, wait for synchro else this check is not needed */
 423:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_IsShadowRegBypassEnabled(RTCx) == 0U)
 424:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 425:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       status = LL_RTC_WaitForSynchro(RTCx);
 426:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 427:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 428:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 429:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       status = SUCCESS;
 430:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 431:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 432:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Enable the write protection for RTC registers */
 433:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_EnableWriteProtection(RTCx);
 434:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 435:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return status;
 436:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 437:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 438:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 439:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set each @ref LL_RTC_DateTypeDef field to default value (date = Monday, January 01 xx00
 440:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_DateStruct pointer to a @ref LL_RTC_DateTypeDef structure which will be initialized
 441:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval None
 442:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 443:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** void LL_RTC_DATE_StructInit(LL_RTC_DateTypeDef *RTC_DateStruct)
 444:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
  92              		.loc 1 444 1 is_stmt 1 view -0
  93              		.cfi_startproc
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
 445:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Monday, January 01 xx00 */
 446:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_DateStruct->WeekDay = LL_RTC_WEEKDAY_MONDAY;
  97              		.loc 1 446 3 view .LVU16
  98              		.loc 1 446 27 is_stmt 0 view .LVU17
  99 0000 0123     		movs	r3, #1
 100 0002 0370     		strb	r3, [r0]
 447:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_DateStruct->Day     = 1U;
 101              		.loc 1 447 3 is_stmt 1 view .LVU18
 102              		.loc 1 447 27 is_stmt 0 view .LVU19
 103 0004 8370     		strb	r3, [r0, #2]
 448:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_DateStruct->Month   = LL_RTC_MONTH_JANUARY;
 104              		.loc 1 448 3 is_stmt 1 view .LVU20
 105              		.loc 1 448 27 is_stmt 0 view .LVU21
 106 0006 4370     		strb	r3, [r0, #1]
 449:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_DateStruct->Year    = 0U;
 107              		.loc 1 449 3 is_stmt 1 view .LVU22
 108              		.loc 1 449 27 is_stmt 0 view .LVU23
 109 0008 0023     		movs	r3, #0
 110 000a C370     		strb	r3, [r0, #3]
 450:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 111              		.loc 1 450 1 view .LVU24
 112 000c 7047     		bx	lr
 113              		.cfi_endproc
 114              	.LFE400:
 116              		.section	.text.LL_RTC_ALMA_Init,"ax",%progbits
 117              		.align	1
 118              		.global	LL_RTC_ALMA_Init
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 124              	LL_RTC_ALMA_Init:
 125              	.LVL3:
 126              	.LFB401:
 451:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 452:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 453:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set the RTC Alarm A.
 454:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   The Alarm register can only be written when the corresponding Alarm
 455:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         is disabled (Use @ref LL_RTC_ALMA_Disable function).
 456:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 457:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_Format This parameter can be one of the following values:
 458:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BIN
 459:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BCD
 460:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure that
 461:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *                         contains the alarm configuration parameters.
 462:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 463:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: ALARMA registers are configured
 464:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: ALARMA registers are not configured
 465:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 466:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_ALMA_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_AlarmTypeDef *RTC_Alarm
 467:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 127              		.loc 1 467 1 is_stmt 1 view -0
 128              		.cfi_startproc
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 468:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameters */
 469:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 131              		.loc 1 469 3 view .LVU26
 470:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
 132              		.loc 1 470 3 view .LVU27
 471:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_ALMA_MASK(RTC_AlarmStruct->AlarmMask));
 133              		.loc 1 471 3 view .LVU28
 472:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_ALMA_DATE_WEEKDAY_SEL(RTC_AlarmStruct->AlarmDateWeekDaySel));
 134              		.loc 1 472 3 view .LVU29
 473:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 474:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_Format == LL_RTC_FORMAT_BIN)
 135              		.loc 1 474 3 view .LVU30
 136              	.LBB90:
 137              	.LBB91:
 138              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_rtc.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @file    stm32g4xx_ll_rtc.h
   4:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief   Header file of RTC LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * <h2><center>&copy; COPYRIGHT(c) 2019 STMicroelectronics</center></h2>
  10:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
  11:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  12:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * the "License"; You may not use this file except in compliance with the
  13:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * License. You may obtain a copy of the License at:
  14:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *                        opensource.org/licenses/BSD-3-Clause
  15:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
  16:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   ******************************************************************************
  17:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  18:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  19:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  20:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #ifndef STM32G4xx_LL_RTC_H
  21:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define STM32G4xx_LL_RTC_H
  22:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  23:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #ifdef __cplusplus
  24:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** extern "C" {
  25:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif
  26:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  27:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Includes ------------------------------------------------------------------*/
  28:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #include "stm32g4xx.h"
  29:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  30:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @addtogroup STM32G4xx_LL_Driver
  31:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
  32:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  33:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  34:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined(RTC)
  35:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  36:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL RTC
  37:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
  38:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  39:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  40:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Private types -------------------------------------------------------------*/
  41:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Private variables ---------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Private constants ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_Private_Constants RTC Private Constants
  44:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
  45:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  46:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Masks Definition */
  47:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_LL_INIT_MASK              0xFFFFFFFFU
  48:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_LL_RSF_MASK               0xFFFFFF5FU
  49:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  50:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Write protection defines */
  51:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_WRITE_PROTECTION_DISABLE  (uint8_t)0xFF
  52:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_WRITE_PROTECTION_ENABLE_1 (uint8_t)0xCA
  53:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_WRITE_PROTECTION_ENABLE_2 (uint8_t)0x53
  54:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  55:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Defines used to combine date & time */
  56:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_OFFSET_WEEKDAY            24U
  57:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_OFFSET_DAY                16U
  58:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_OFFSET_MONTH              8U
  59:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_OFFSET_HOUR               16U
  60:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define RTC_OFFSET_MINUTE             8U
  61:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  62:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
  63:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
  64:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  65:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  66:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Private macros ------------------------------------------------------------*/
  67:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined(USE_FULL_LL_DRIVER)
  68:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_Private_Macros RTC Private Macros
  69:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
  70:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  71:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
  72:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
  73:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  74:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /*USE_FULL_LL_DRIVER*/
  75:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  76:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if !defined (UNUSED)
  77:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define UNUSED(x) ((void)(x))
  78:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif
  79:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  80:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Exported types ------------------------------------------------------------*/
  81:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined(USE_FULL_LL_DRIVER)
  82:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_ES_INIT RTC Exported Init structure
  83:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
  84:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  85:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  86:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
  87:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  RTC Init structures definition
  88:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
  89:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** typedef struct
  90:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
  91:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint32_t HourFormat;   /*!< Specifies the RTC Hours Format.
  92:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               This parameter can be a value of @ref RTC_LL_EC_HOURFORMAT
  93:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  94:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               This feature can be modified afterwards using unitary function
  95:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               @ref LL_RTC_SetHourFormat(). */
  96:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
  97:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint32_t AsynchPrescaler; /*!< Specifies the RTC Asynchronous Predivider value.
  98:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               This parameter must be a number between Min_Data = 0x00 and Max_Data 
  99:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 100:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               This feature can be modified afterwards using unitary function
 101:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               @ref LL_RTC_SetAsynchPrescaler(). */
 102:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 103:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint32_t SynchPrescaler;  /*!< Specifies the RTC Synchronous Predivider value.
 104:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               This parameter must be a number between Min_Data = 0x00 and Max_Data 
 105:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 106:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               This feature can be modified afterwards using unitary function
 107:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                               @ref LL_RTC_SetSynchPrescaler(). */
 108:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** } LL_RTC_InitTypeDef;
 109:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 110:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 111:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  RTC Time structure definition
 112:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 113:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** typedef struct
 114:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 115:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint32_t TimeFormat; /*!< Specifies the RTC AM/PM Time.
 116:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This parameter can be a value of @ref RTC_LL_EC_TIME_FORMAT
 117:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 118:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This feature can be modified afterwards using unitary function @ref LL_
 119:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 120:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t Hours;       /*!< Specifies the RTC Time Hours.
 121:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This parameter must be a number between Min_Data = 0 and Max_Data = 12 
 122:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This parameter must be a number between Min_Data = 0 and Max_Data = 23 
 123:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 124:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This feature can be modified afterwards using unitary function @ref LL_
 125:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 126:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t Minutes;     /*!< Specifies the RTC Time Minutes.
 127:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This parameter must be a number between Min_Data = 0 and Max_Data = 59
 128:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 129:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This feature can be modified afterwards using unitary function @ref LL_
 130:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 131:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t Seconds;     /*!< Specifies the RTC Time Seconds.
 132:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This parameter must be a number between Min_Data = 0 and Max_Data = 59
 133:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 134:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                             This feature can be modified afterwards using unitary function @ref LL_
 135:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** } LL_RTC_TimeTypeDef;
 136:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 137:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 138:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  RTC Date structure definition
 139:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 140:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** typedef struct
 141:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 142:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t WeekDay;  /*!< Specifies the RTC Date WeekDay.
 143:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This parameter can be a value of @ref RTC_LL_EC_WEEKDAY
 144:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 145:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This feature can be modified afterwards using unitary function @ref LL_RTC
 146:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 147:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t Month;    /*!< Specifies the RTC Date Month.
 148:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This parameter can be a value of @ref RTC_LL_EC_MONTH
 149:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 150:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This feature can be modified afterwards using unitary function @ref LL_RTC
 151:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 152:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t Day;      /*!< Specifies the RTC Date Day.
 153:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This parameter must be a number between Min_Data = 1 and Max_Data = 31
 154:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 155:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This feature can be modified afterwards using unitary function @ref LL_RTC
 156:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 157:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t Year;     /*!< Specifies the RTC Date Year.
 158:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This parameter must be a number between Min_Data = 0 and Max_Data = 99
 159:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 160:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                          This feature can be modified afterwards using unitary function @ref LL_RTC
 161:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** } LL_RTC_DateTypeDef;
 162:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 163:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 164:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  RTC Alarm structure definition
 165:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 166:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** typedef struct
 167:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 168:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   LL_RTC_TimeTypeDef AlarmTime;  /*!< Specifies the RTC Alarm Time members. */
 169:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 170:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint32_t AlarmMask;            /*!< Specifies the RTC Alarm Masks.
 171:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       This parameter can be a value of @ref RTC_LL_EC_ALMA_MASK for
 172:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 173:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       This feature can be modified afterwards using unitary functio
 174:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       or @ref LL_RTC_ALMB_SetMask() for ALARM B
 175:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                  */
 176:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 177:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint32_t AlarmDateWeekDaySel;  /*!< Specifies the RTC Alarm is on day or WeekDay.
 178:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       This parameter can be a value of @ref RTC_LL_EC_ALMA_WEEKDAY_
 179:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 180:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       This feature can be modified afterwards using unitary functio
 181:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       for ALARM A or @ref LL_RTC_ALMB_EnableWeekday() or @ref LL_RT
 182:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                  */
 183:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 184:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   uint8_t AlarmDateWeekDay;      /*!< Specifies the RTC Alarm Day/WeekDay.
 185:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       If AlarmDateWeekDaySel set to day, this parameter  must be a 
 186:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 187:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       This feature can be modified afterwards using unitary functio
 188:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       for ALARM A or @ref LL_RTC_ALMB_SetDay() for ALARM B.
 189:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 190:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       If AlarmDateWeekDaySel set to Weekday, this parameter can be 
 191:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 192:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       This feature can be modified afterwards using unitary functio
 193:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                       for ALARM A or @ref LL_RTC_ALMB_SetWeekDay() for ALARM B.
 194:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                  */
 195:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** } LL_RTC_AlarmTypeDef;
 196:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 197:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 198:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 199:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 200:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* USE_FULL_LL_DRIVER */
 201:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 202:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Exported constants --------------------------------------------------------*/
 203:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_Exported_Constants RTC Exported Constants
 204:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 205:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 206:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 207:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined(USE_FULL_LL_DRIVER)
 208:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_FORMAT FORMAT
 209:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 210:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 211:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_FORMAT_BIN                  0x00000000U /*!< Binary data format */
 212:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_FORMAT_BCD                  0x00000001U /*!< BCD data format */
 213:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 214:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 215:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 216:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 217:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALMA_WEEKDAY_SELECTION RTC Alarm A Date WeekDay
 218:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 219:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 220:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_DATEWEEKDAYSEL_DATE    0x00000000U             /*!< Alarm A Date is selected */
 221:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_DATEWEEKDAYSEL_WEEKDAY RTC_ALRMAR_WDSEL        /*!< Alarm A WeekDay is selected
 222:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 223:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 224:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 225:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 226:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALMB_WEEKDAY_SELECTION RTC Alarm B Date WeekDay
 227:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 228:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 229:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_DATEWEEKDAYSEL_DATE    0x00000000U             /*!< Alarm B Date is selected */
 230:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_DATEWEEKDAYSEL_WEEKDAY RTC_ALRMBR_WDSEL        /*!< Alarm B WeekDay is selected
 231:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 232:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 233:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 234:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 235:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* USE_FULL_LL_DRIVER */
 236:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 237:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_GET_FLAG Get Flags Defines
 238:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief    Flags defines which can be used with LL_RTC_ReadReg function
 239:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 240:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 241:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_SCR_ITSF                    RTC_SCR_CITSF
 242:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_SCR_TSOVF                   RTC_SCR_CTSOVF
 243:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_SCR_TSF                     RTC_SCR_CTSF
 244:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_SCR_WUTF                    RTC_SCR_CWUTF
 245:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_SCR_ALRBF                   RTC_SCR_CALRBF
 246:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CSR_ALRAF                   RTC_SCR_CALRAF
 247:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 248:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_RECALPF                RTC_ICSR_RECALPF
 249:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_INITF                  RTC_ICSR_INITF
 250:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_RSF                    RTC_ICSR_RSF
 251:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_INITS                  RTC_ICSR_INITS
 252:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_SHPF                   RTC_ICSR_SHPF
 253:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_WUTWF                  RTC_ICSR_WUTWF
 254:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_ALRBWF                 RTC_ICSR_ALRBWF
 255:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ICSR_ALRAWF                 RTC_ICSR_ALRAWF
 256:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 257:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 258:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 259:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 260:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_IT IT Defines
 261:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief    IT defines which can be used with LL_RTC_ReadReg and  LL_RTC_WriteReg functions
 262:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 263:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 264:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CR_TSIE                     RTC_CR_TSIE
 265:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CR_WUTIE                    RTC_CR_WUTIE
 266:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CR_ALRBIE                   RTC_CR_ALRBIE
 267:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CR_ALRAIE                   RTC_CR_ALRAIE
 268:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 269:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 270:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 271:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 272:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_WEEKDAY  WEEK DAY
 273:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 274:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 275:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WEEKDAY_MONDAY              (uint8_t)0x01 /*!< Monday    */
 276:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WEEKDAY_TUESDAY             (uint8_t)0x02 /*!< Tuesday   */
 277:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WEEKDAY_WEDNESDAY           (uint8_t)0x03 /*!< Wednesday */
 278:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WEEKDAY_THURSDAY            (uint8_t)0x04 /*!< Thrusday  */
 279:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WEEKDAY_FRIDAY              (uint8_t)0x05 /*!< Friday    */
 280:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WEEKDAY_SATURDAY            (uint8_t)0x06 /*!< Saturday  */
 281:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WEEKDAY_SUNDAY              (uint8_t)0x07 /*!< Sunday    */
 282:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 283:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 284:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 285:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 286:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_MONTH  MONTH
 287:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 288:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 289:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_JANUARY               (uint8_t)0x01  /*!< January   */
 290:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_FEBRUARY              (uint8_t)0x02  /*!< February  */
 291:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_MARCH                 (uint8_t)0x03  /*!< March     */
 292:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_APRIL                 (uint8_t)0x04  /*!< April     */
 293:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_MAY                   (uint8_t)0x05  /*!< May       */
 294:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_JUNE                  (uint8_t)0x06  /*!< June      */
 295:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_JULY                  (uint8_t)0x07  /*!< July      */
 296:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_AUGUST                (uint8_t)0x08  /*!< August    */
 297:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_SEPTEMBER             (uint8_t)0x09  /*!< September */
 298:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_OCTOBER               (uint8_t)0x10  /*!< October   */
 299:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_NOVEMBER              (uint8_t)0x11  /*!< November  */
 300:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_MONTH_DECEMBER              (uint8_t)0x12  /*!< December  */
 301:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 302:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 303:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 304:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 305:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_HOURFORMAT  HOUR FORMAT
 306:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 307:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 308:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_HOURFORMAT_24HOUR           0x00000000U             /*!< 24 hour/day format */
 309:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_HOURFORMAT_AMPM             RTC_CR_FMT            /*!< AM/PM hour format */
 310:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 311:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 312:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 313:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 314:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALARMOUT  ALARM OUTPUT
 315:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 316:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 317:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALARMOUT_DISABLE            0x00000000U             /*!< Output disabled */
 318:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALARMOUT_ALMA               RTC_CR_OSEL_0           /*!< Alarm A output enabled */
 319:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALARMOUT_ALMB               RTC_CR_OSEL_1           /*!< Alarm B output enabled */
 320:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALARMOUT_WAKEUP             RTC_CR_OSEL             /*!< Wakeup output enabled */
 321:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 322:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 323:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 324:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 325:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALARM_OUTPUTTYPE  ALARM OUTPUT TYPE
 326:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 327:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 328:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALARM_OUTPUTTYPE_OPENDRAIN  RTC_CR_TAMPALRM_TYPE    /*!< RTC_ALARM is open-drain out
 329:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALARM_OUTPUTTYPE_PUSHPULL   0x00000000U             /*!< RTC_ALARM is push-pull outp
 330:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 331:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 332:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 333:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 334:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_OUTPUTPOLARITY_PIN  OUTPUT POLARITY PIN
 335:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 336:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 337:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_OUTPUTPOLARITY_PIN_HIGH     0x00000000U           /*!< Pin is high when ALRAF/ALRBF/
 338:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_OUTPUTPOLARITY_PIN_LOW      RTC_CR_POL            /*!< Pin is low when ALRAF/ALRBF/W
 339:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 340:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 341:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 342:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 343:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TIME_FORMAT TIME FORMAT
 344:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 345:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 346:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TIME_FORMAT_AM_OR_24        0x00000000U           /*!< AM or 24-hour format */
 347:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TIME_FORMAT_PM              RTC_TR_PM             /*!< PM */
 348:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 349:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 350:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 352:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_SHIFT_SECOND  SHIFT SECOND
 353:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 354:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_SHIFT_SECOND_DELAY          0x00000000U           /* Delay (seconds) = SUBFS / (PRED
 356:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_SHIFT_SECOND_ADVANCE        RTC_SHIFTR_ADD1S      /* Advance (seconds) = (1 - (SUBFS
 357:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 358:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 359:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 360:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 361:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALMA_MASK  ALARMA MASK
 362:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 363:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 364:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_MASK_NONE              0x00000000U             /*!< No masks applied on Alarm A
 365:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_MASK_DATEWEEKDAY       RTC_ALRMAR_MSK4         /*!< Date/day do not care in Ala
 366:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_MASK_HOURS             RTC_ALRMAR_MSK3         /*!< Hours do not care in Alarm 
 367:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_MASK_MINUTES           RTC_ALRMAR_MSK2         /*!< Minutes do not care in Alar
 368:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_MASK_SECONDS           RTC_ALRMAR_MSK1         /*!< Seconds do not care in Alar
 369:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_MASK_ALL               (RTC_ALRMAR_MSK4 | RTC_ALRMAR_MSK3 | RTC_ALRMAR_MSK2 | R
 370:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 371:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 372:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 373:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 374:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALMA_TIME_FORMAT  ALARMA TIME FORMAT
 375:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 376:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 377:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_TIME_FORMAT_AM         0x00000000U           /*!< AM or 24-hour format */
 378:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMA_TIME_FORMAT_PM         RTC_ALRMAR_PM         /*!< PM */
 379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 380:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 381:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 382:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 383:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALMB_MASK  ALARMB MASK
 384:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 385:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 386:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_MASK_NONE              0x00000000U             /*!< No masks applied on Alarm B
 387:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_MASK_DATEWEEKDAY       RTC_ALRMBR_MSK4         /*!< Date/day do not care in Ala
 388:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_MASK_HOURS             RTC_ALRMBR_MSK3         /*!< Hours do not care in Alarm 
 389:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_MASK_MINUTES           RTC_ALRMBR_MSK2         /*!< Minutes do not care in Alar
 390:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_MASK_SECONDS           RTC_ALRMBR_MSK1         /*!< Seconds do not care in Alar
 391:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_MASK_ALL               (RTC_ALRMBR_MSK4 | RTC_ALRMBR_MSK3 | RTC_ALRMBR_MSK2 | R
 392:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 393:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 394:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 395:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 396:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_ALMB_TIME_FORMAT  ALARMB TIME FORMAT
 397:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 398:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 399:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_TIME_FORMAT_AM         0x00000000U           /*!< AM or 24-hour format */
 400:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_ALMB_TIME_FORMAT_PM         RTC_ALRMBR_PM         /*!< PM */
 401:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 402:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 403:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 404:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 405:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TIMESTAMP_EDGE  TIMESTAMP EDGE
 406:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 407:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 408:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TIMESTAMP_EDGE_RISING       0x00000000U           /*!< RTC_TS input rising edge gene
 409:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TIMESTAMP_EDGE_FALLING      RTC_CR_TSEDGE         /*!< RTC_TS input falling edge gen
 410:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 411:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 412:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 413:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 414:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TS_TIME_FORMAT  TIMESTAMP TIME FORMAT
 415:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 416:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 417:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TS_TIME_FORMAT_AM           0x00000000U           /*!< AM or 24-hour format */
 418:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TS_TIME_FORMAT_PM           RTC_TSTR_PM           /*!< PM */
 419:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 420:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 421:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 422:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 423:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TAMPER  TAMPER
 424:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 425:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 426:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_1                    TAMP_CR1_TAMP1E /*!< Tamper 1 input detection */
 427:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_2                    TAMP_CR1_TAMP2E /*!< Tamper 2 input detection */
 428:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if (RTC_TAMP_NB == 3)
 429:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_3                    TAMP_CR1_TAMP3E /*!< Tamper 3  input detection */
 430:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #elif (RTC_TAMP_NB == 8)
 431:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_3                    TAMP_CR1_TAMP3E /*!< Tamper 3  input detection */
 432:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_3                    TAMP_CR1_TAMP3E /*!< Tamper 3  input detection */
 433:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_4                    TAMP_CR1_TAMP4E /*!< Tamper 4  input detection */
 434:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_5                    TAMP_CR1_TAMP5E /*!< Tamper 5  input detection */
 435:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_6                    TAMP_CR1_TAMP6E /*!< Tamper 6  input detection */
 436:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_7                    TAMP_CR1_TAMP7E /*!< Tamper 7  input detection */
 437:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_8                    TAMP_CR1_TAMP8E /*!< Tamper 8  input detection */
 438:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #else
 439:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #warning "RTC_TAMP_NB is not correct"
 440:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* (RTC_TAMP_NB) */
 441:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 442:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 443:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 444:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 445:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TAMPER_MASK  TAMPER MASK
 446:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 447:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 448:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER1         TAMP_CR2_TAMP1MF /*!< Tamper 1 event generates a trigger
 449:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER2         TAMP_CR2_TAMP2MF /*!< Tamper 2 event generates a trigger
 450:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if (RTC_TAMP_NB == 3)
 451:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER3         TAMP_CR2_TAMP3MF /*!< Tamper 3 event generates a trigger
 452:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #elif (RTC_TAMP_NB == 8)
 453:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER3         TAMP_CR2_TAMP3MF /*!< Tamper 3 event generates a trigger
 454:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER4         TAMP_CR2_TAMP4MF /*!< Tamper 4 event generates a trigger
 455:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER5         TAMP_CR2_TAMP5MF /*!< Tamper 5 event generates a trigger
 456:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER6         TAMP_CR2_TAMP6MF /*!< Tamper 6 event generates a trigger
 457:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER7         TAMP_CR2_TAMP7MF /*!< Tamper 7 event generates a trigger
 458:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_MASK_TAMPER8         TAMP_CR2_TAMP8MF /*!< Tamper 8 event generates a trigger
 459:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #else
 460:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #warning "RTC_TAMP_NB is not correct"
 461:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* (RTC_TAMP_NB) */
 462:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 463:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 464:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 465:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 466:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TAMPER_NOERASE  TAMPER NO ERASE
 467:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 468:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 469:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER1      TAMP_CR2_TAMP1NOERASE /*!< Tamper 1 event does not erase
 470:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER2      TAMP_CR2_TAMP2NOERASE /*!< Tamper 2 event does not erase
 471:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if (RTC_TAMP_NB == 3)
 472:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER3      TAMP_CR2_TAMP3NOERASE /*!< Tamper 3 event does not erase
 473:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #elif (RTC_TAMP_NB == 8)
 474:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER3      TAMP_CR2_TAMP3NOERASE /*!< Tamper 3 event does not erase
 475:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER4      TAMP_CR2_TAMP4NOERASE /*!< Tamper 4 event does not erase
 476:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER5      TAMP_CR2_TAMP5NOERASE /*!< Tamper 5 event does not erase
 477:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER6      TAMP_CR2_TAMP6NOERASE /*!< Tamper 6 event does not erase
 478:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER7      TAMP_CR2_TAMP7NOERASE /*!< Tamper 7 event does not erase
 479:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_NOERASE_TAMPER8      TAMP_CR2_TAMP8NOERASE /*!< Tamper 8 event does not erase
 480:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #else
 481:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #warning "RTC_TAMP_NB is not correct"
 482:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* (RTC_TAMP_NB) */
 483:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 484:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 485:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 486:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 487:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TAMPER_DURATION  TAMPER DURATION
 488:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 489:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 490:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_DURATION_1RTCCLK     0x00000000U            /*!< Tamper pins are pre-charged 
 491:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_DURATION_2RTCCLK     TAMP_FLTCR_TAMPPRCH_0  /*!< Tamper pins are pre-charged 
 492:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_DURATION_4RTCCLK     TAMP_FLTCR_TAMPPRCH_1  /*!< Tamper pins are pre-charged 
 493:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_DURATION_8RTCCLK     TAMP_FLTCR_TAMPPRCH    /*!< Tamper pins are pre-charged 
 494:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 495:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 496:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 497:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 498:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TAMPER_FILTER  TAMPER FILTER
 499:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 500:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 501:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_FILTER_DISABLE       0x00000000U             /*!< Tamper filter is disabled *
 502:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_FILTER_2SAMPLE       TAMP_FLTCR_TAMPFLT_0    /*!< Tamper is activated after 2
 503:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_FILTER_4SAMPLE       TAMP_FLTCR_TAMPFLT_1    /*!< Tamper is activated after 4
 504:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_FILTER_8SAMPLE       TAMP_FLTCR_TAMPFLT      /*!< Tamper is activated after 8
 505:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 506:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 507:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 508:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 509:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TAMPER_SAMPLFREQDIV  TAMPER SAMPLING FREQUENCY DIVIDER
 510:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 511:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_32768   0x00000000U                                     /*!< Eac
 513:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_16384   TAMP_FLTCR_TAMPFREQ_0                           /*!< Eac
 514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_8192    TAMP_FLTCR_TAMPFREQ_1                           /*!< Eac
 515:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_4096    (TAMP_FLTCR_TAMPFREQ_1 | TAMP_FLTCR_TAMPFREQ_0) /*!< Eac
 516:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_2048    TAMP_FLTCR_TAMPFREQ_2                           /*!< Eac
 517:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_1024    (TAMP_FLTCR_TAMPFREQ_2 | TAMP_FLTCR_TAMPFREQ_0) /*!< Eac
 518:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_512     (TAMP_FLTCR_TAMPFREQ_2 | TAMP_FLTCR_TAMPFREQ_1) /*!< Eac
 519:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_SAMPLFREQDIV_256     TAMP_FLTCR_TAMPFREQ                             /*!< Eac
 520:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 521:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 522:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 523:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 524:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_TAMPER_ACTIVELEVEL  TAMPER ACTIVE LEVEL
 525:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 526:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 527:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP1    TAMP_CR2_TAMP1TRG /*!< Tamper 1 input falling edge (if T
 528:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP2    TAMP_CR2_TAMP2TRG /*!< Tamper 2 input falling edge (if T
 529:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if (RTC_TAMP_NB == 3)
 530:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP3    TAMP_CR2_TAMP3TRG /*!< Tamper 3 input falling edge (if T
 531:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #elif (RTC_TAMP_NB == 8)
 532:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP3    TAMP_CR2_TAMP3TRG /*!< Tamper 3 input falling edge (if T
 533:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP4    TAMP_CR2_TAMP4TRG /*!< Tamper 4 input falling edge (if T
 534:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP5    TAMP_CR2_TAMP5TRG /*!< Tamper 5 input falling edge (if T
 535:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP6    TAMP_CR2_TAMP6TRG /*!< Tamper 6 input falling edge (if T
 536:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP7    TAMP_CR2_TAMP7TRG /*!< Tamper 7 input falling edge (if T
 537:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ACTIVELEVEL_TAMP8    TAMP_CR2_TAMP8TRG /*!< Tamper 8 input falling edge (if T
 538:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* (RTC_TAMP_NB) */
 539:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 540:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 541:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 542:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 543:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 544:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_INTERNAL  INTERNAL TAMPER
 545:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 546:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 547:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP1           TAMP_CR1_ITAMP1E /*!< Internal tamper 1: RTC supply voltage 
 548:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined (RTC_TAMP_INT_2_SUPPORT)
 549:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP2           TAMP_CR1_ITAMP2E /*!< Internal tamper 2: temperature monitor
 550:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* RTC_TAMP_INT_2_SUPPORT */
 551:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP3           TAMP_CR1_ITAMP3E /*!< Internal tamper 3: LSE monitoring */
 552:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP4           TAMP_CR1_ITAMP4E /*!< Internal tamper 4: HSE monitoring */
 553:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP5           TAMP_CR1_ITAMP5E /*!< Internal tamper 5: RTC calendar overfl
 554:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined (RTC_TAMP_INT_6_SUPPORT)
 555:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP6           TAMP_CR1_ITAMP6E /*!< Internal tamper 6: Test mode entry */
 556:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* RTC_TAMP_INT_6_SUPPORT */
 557:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined (RTC_TAMP_INT_7_SUPPORT)
 558:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP7           TAMP_CR1_ITAMP7E /*!< Internal tamper 7: Readout protection 
 559:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* RTC_TAMP_INT_7_SUPPORT */
 560:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if defined (RTC_TAMP_INT_8_SUPPORT)
 561:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_TAMPER_ITAMP8           TAMP_CR1_ITAMP8E /*!< Internal tamper 8: Monotonic counter o
 562:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* RTC_TAMP_INT_8_SUPPORT */
 563:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 564:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 565:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 566:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 567:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 568:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_BKP  BACKUP
 569:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 570:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 571:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_NUMBER                    RTC_BACKUP_NB
 572:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #if (LL_RTC_BKP_NUMBER == 5)
 573:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR0                       0x00U
 574:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR1                       0x01U
 575:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR2                       0x02U
 576:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR3                       0x03U
 577:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR4                       0x04U
 578:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #elif (LL_RTC_BKP_NUMBER == 16)
 579:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR0                       0x00U
 580:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR1                       0x01U
 581:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR2                       0x02U
 582:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR3                       0x03U
 583:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR4                       0x04U
 584:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR5                       0x05U
 585:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR6                       0x06U
 586:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR7                       0x07U
 587:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR8                       0x08U
 588:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR9                       0x09U
 589:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR10                      0x0AU
 590:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR11                      0x0BU
 591:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR12                      0x0CU
 592:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR13                      0x0DU
 593:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR14                      0x0EU
 594:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR15                      0x0FU
 595:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #elif (LL_RTC_BKP_NUMBER == 32)
 596:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR0                       0x00U
 597:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR1                       0x01U
 598:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR2                       0x02U
 599:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR3                       0x03U
 600:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR4                       0x04U
 601:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR5                       0x05U
 602:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR6                       0x06U
 603:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR7                       0x07U
 604:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR8                       0x08U
 605:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR9                       0x09U
 606:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR10                      0x0AU
 607:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR11                      0x0BU
 608:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR12                      0x0CU
 609:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR13                      0x0DU
 610:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR14                      0x0EU
 611:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR15                      0x0FU
 612:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR16                      0x10U
 613:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR17                      0x11U
 614:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR18                      0x12U
 615:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR19                      0x13U
 616:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR20                      0x14U
 617:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR21                      0x15U
 618:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR22                      0x16U
 619:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR23                      0x17U
 620:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR24                      0x18U
 621:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR25                      0x19U
 622:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR26                      0x1AU
 623:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR27                      0x1BU
 624:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR28                      0x1CU
 625:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR29                      0x1DU
 626:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR30                      0x1EU
 627:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_BKP_DR31                      0x1FU
 628:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #else
 629:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #error "no LL Backup Registers Definition"
 630:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #endif /* (LL_RTC_BKP_NUMBER) */
 631:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 632:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 633:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 634:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 635:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 636:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_WAKEUPCLOCK_DIV  WAKEUP CLOCK DIV
 637:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 638:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 639:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WAKEUPCLOCK_DIV_16          0x00000000U                           /*!< RTC/16 clock 
 640:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WAKEUPCLOCK_DIV_8           RTC_CR_WUCKSEL_0                      /*!< RTC/8 clock i
 641:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WAKEUPCLOCK_DIV_4           RTC_CR_WUCKSEL_1                      /*!< RTC/4 clock i
 642:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WAKEUPCLOCK_DIV_2           (RTC_CR_WUCKSEL_1 | RTC_CR_WUCKSEL_0) /*!< RTC/2 clock i
 643:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WAKEUPCLOCK_CKSPRE          RTC_CR_WUCKSEL_2                      /*!< ck_spre (usua
 644:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_WAKEUPCLOCK_CKSPRE_WUT      (RTC_CR_WUCKSEL_2 | RTC_CR_WUCKSEL_1) /*!< ck_spre (usua
 645:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 646:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 647:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 648:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 649:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_CALIB_OUTPUT  Calibration output
 650:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 651:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 652:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_OUTPUT_NONE           0x00000000U                 /*!< Calibration output disa
 653:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_OUTPUT_1HZ            (RTC_CR_COE | RTC_CR_COSEL) /*!< Calibration output is 1
 654:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_OUTPUT_512HZ          RTC_CR_COE                  /*!< Calibration output is 5
 655:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 656:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 657:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 658:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 659:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_CALIB_INSERTPULSE  Calibration pulse insertion
 660:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 661:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 662:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_INSERTPULSE_NONE      0x00000000U           /*!< No RTCCLK pulses are added */
 663:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_INSERTPULSE_SET       RTC_CALR_CALP         /*!< One RTCCLK pulse is effective
 664:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 665:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 666:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 667:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 668:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EC_CALIB_PERIOD  Calibration period
 669:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 670:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 671:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_PERIOD_32SEC          0x00000000U           /*!< Use a 32-second calibration c
 672:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_PERIOD_16SEC          RTC_CALR_CALW16       /*!< Use a 16-second calibration c
 673:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define LL_RTC_CALIB_PERIOD_8SEC           RTC_CALR_CALW8        /*!< Use a 8-second calibration cy
 674:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 675:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 676:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 677:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 678:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 679:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 680:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 681:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 682:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Exported macro ------------------------------------------------------------*/
 683:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EM_Convert Convert helper Macros
 684:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 685:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 686:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 688:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to convert a value from 2 digit decimal format to BCD format
 689:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __VALUE__ Byte to be converted
 690:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Converted byte
 691:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 692:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_CONVERT_BIN2BCD(__VALUE__) (uint8_t)((((__VALUE__) / 10U) << 4U) | ((__VALUE__) % 
 693:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 694:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 695:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to convert a value from BCD format to 2 digit decimal format
 696:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __VALUE__ BCD value to be converted
 697:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Converted byte
 698:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 699:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_CONVERT_BCD2BIN(__VALUE__) ((uint8_t)((((uint8_t)((__VALUE__) & (uint8_t)0xF0U) >>
 700:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 701:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 702:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 703:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 704:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 705:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EM_Date Date helper Macros
 706:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 707:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 708:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 709:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 710:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to retrieve weekday.
 711:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __RTC_DATE__ Date returned by @ref  LL_RTC_DATE_Get function.
 712:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
 713:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
 714:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
 715:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
 716:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
 717:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
 718:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
 719:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
 720:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 721:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_GET_WEEKDAY(__RTC_DATE__) (((__RTC_DATE__) >> RTC_OFFSET_WEEKDAY) & 0x000000FFU)
 722:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 723:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 724:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to retrieve Year in BCD format
 725:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __RTC_DATE__ Value returned by @ref  LL_RTC_DATE_Get
 726:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Year in BCD format (0x00 . . . 0x99)
 727:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 728:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_GET_YEAR(__RTC_DATE__) ((__RTC_DATE__) & 0x000000FFU)
 729:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 730:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 731:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to retrieve Month in BCD format
 732:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __RTC_DATE__ Value returned by @ref  LL_RTC_DATE_Get
 733:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
 734:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JANUARY
 735:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_FEBRUARY
 736:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MARCH
 737:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_APRIL
 738:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MAY
 739:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JUNE
 740:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JULY
 741:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_AUGUST
 742:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_SEPTEMBER
 743:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_OCTOBER
 744:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_NOVEMBER
 745:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_DECEMBER
 746:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 747:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_GET_MONTH(__RTC_DATE__) (((__RTC_DATE__) >>RTC_OFFSET_MONTH) & 0x000000FFU)
 748:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 749:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 750:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to retrieve Day in BCD format
 751:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __RTC_DATE__ Value returned by @ref  LL_RTC_DATE_Get
 752:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Day in BCD format (0x01 . . . 0x31)
 753:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 754:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_GET_DAY(__RTC_DATE__) (((__RTC_DATE__) >>RTC_OFFSET_DAY) & 0x000000FFU)
 755:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 756:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 757:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 758:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 759:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 760:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EM_Time Time helper Macros
 761:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 762:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 763:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 764:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 765:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to retrieve hour in BCD format
 766:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __RTC_TIME__ RTC time returned by @ref LL_RTC_TIME_Get function
 767:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Hours in BCD format (0x01. . .0x12 or between Min_Data=0x00 and Max_Data=0x23)
 768:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 769:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_GET_HOUR(__RTC_TIME__) (((__RTC_TIME__) >> RTC_OFFSET_HOUR) & 0x000000FFU)
 770:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 771:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 772:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to retrieve minute in BCD format
 773:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __RTC_TIME__ RTC time returned by @ref LL_RTC_TIME_Get function
 774:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Minutes in BCD format (0x00. . .0x59)
 775:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 776:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_GET_MINUTE(__RTC_TIME__) (((__RTC_TIME__) >> RTC_OFFSET_MINUTE) & 0x000000FFU)
 777:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 778:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 779:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Helper macro to retrieve second in BCD format
 780:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  __RTC_TIME__ RTC time returned by @ref LL_RTC_TIME_Get function
 781:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Seconds in  format (0x00. . .0x59)
 782:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 783:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** #define __LL_RTC_GET_SECOND(__RTC_TIME__) ((__RTC_TIME__) & 0x000000FFU)
 784:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 785:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 786:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 787:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 788:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 789:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 790:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
 791:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 792:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 793:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /* Exported functions --------------------------------------------------------*/
 794:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_Exported_Functions RTC Exported Functions
 795:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 796:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 797:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 798:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Configuration Configuration
 799:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
 800:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 801:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 802:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 803:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Hours format (24 hour/day or AM/PM hour format)
 804:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
 805:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
 806:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           FMT           LL_RTC_SetHourFormat
 807:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 808:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  HourFormat This parameter can be one of the following values:
 809:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_HOURFORMAT_24HOUR
 810:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_HOURFORMAT_AMPM
 811:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 812:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 813:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_SetHourFormat(RTC_TypeDef *RTCx, uint32_t HourFormat)
 814:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 815:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CR, RTC_CR_FMT, HourFormat);
 816:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 817:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 818:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 819:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Hours format (24 hour/day or AM/PM hour format)
 820:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           FMT           LL_RTC_GetHourFormat
 821:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 822:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
 823:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_HOURFORMAT_24HOUR
 824:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_HOURFORMAT_AMPM
 825:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 826:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_GetHourFormat(RTC_TypeDef *RTCx)
 827:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CR, RTC_CR_FMT));
 139              		.loc 2 828 21 is_stmt 0 view .LVU31
 140 0000 8369     		ldr	r3, [r0, #24]
 141              	.LBE91:
 142              	.LBE90:
 475:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 476:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* initialize the AlarmTime for Binary format */
 477:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
 143              		.loc 1 477 5 is_stmt 1 view .LVU32
 144              	.LVL4:
 145              	.LBB93:
 146              	.LBI90:
 826:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 147              		.loc 2 826 26 view .LVU33
 148              	.LBB92:
 149              		.loc 2 828 3 view .LVU34
 150              		.loc 2 828 3 is_stmt 0 view .LVU35
 151              	.LBE92:
 152              	.LBE93:
 153              		.loc 1 477 8 view .LVU36
 154 0002 5B06     		lsls	r3, r3, #25
 478:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 479:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR12(RTC_AlarmStruct->AlarmTime.Hours));
 480:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
 481:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 482:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 483:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 484:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
 155              		.loc 1 484 7 is_stmt 1 view .LVU37
 467:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameters */
 156              		.loc 1 467 1 is_stmt 0 view .LVU38
 157 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 158              		.cfi_def_cfa_offset 20
 159              		.cfi_offset 4, -20
 160              		.cfi_offset 5, -16
 161              		.cfi_offset 6, -12
 162              		.cfi_offset 7, -8
 163              		.cfi_offset 14, -4
 164              		.loc 1 484 45 view .LVU39
 165 0006 5CBF     		itt	pl
 166 0008 0023     		movpl	r3, #0
 167 000a 1360     		strpl	r3, [r2]
 485:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(RTC_AlarmStruct->AlarmTime.Hours));
 486:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 487:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MINUTES(RTC_AlarmStruct->AlarmTime.Minutes));
 488:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_SECONDS(RTC_AlarmStruct->AlarmTime.Seconds));
 489:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 490:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE)
 491:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 492:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_DAY(RTC_AlarmStruct->AlarmDateWeekDay));
 493:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 494:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 495:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 496:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_WEEKDAY(RTC_AlarmStruct->AlarmDateWeekDay));
 497:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 498:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 499:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 500:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 501:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* initialize the AlarmTime for BCD format */
 502:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
 503:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 504:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR12(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
 505:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
 506:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 507:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 508:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 509:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
 510:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
 511:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 512:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 513:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MINUTES(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Minutes)));
 514:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_SECONDS(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Seconds)));
 515:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 516:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE)
 517:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 518:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_DAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
 519:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 520:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 521:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 522:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_WEEKDAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
 168              		.loc 1 522 7 is_stmt 1 view .LVU40
 523:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 524:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 525:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 526:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Disable the write protection for RTC registers */
 527:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_DisableWriteProtection(RTCx);
 169              		.loc 1 527 3 view .LVU41
 170              	.LVL5:
 171              	.LBB94:
 172              	.LBI94:
 829:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 830:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 831:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 832:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Select the flag to be routed to RTC_ALARM output
 833:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
 834:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           OSEL          LL_RTC_SetAlarmOutEvent
 835:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 836:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  AlarmOutput This parameter can be one of the following values:
 837:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_DISABLE
 838:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_ALMA
 839:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_ALMB
 840:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_WAKEUP
 841:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 842:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 843:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_SetAlarmOutEvent(RTC_TypeDef *RTCx, uint32_t AlarmOutput)
 844:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 845:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CR, RTC_CR_OSEL, AlarmOutput);
 846:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 847:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 848:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 849:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get the flag to be routed to RTC_ALARM output
 850:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           OSEL          LL_RTC_GetAlarmOutEvent
 851:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 852:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
 853:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_DISABLE
 854:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_ALMA
 855:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_ALMB
 856:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARMOUT_WAKEUP
 857:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 858:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_GetAlarmOutEvent(RTC_TypeDef *RTCx)
 859:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 860:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CR, RTC_CR_OSEL));
 861:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 862:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 863:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 864:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set RTC_ALARM output type (ALARM in push-pull or open-drain output)
 865:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPALRM_TYPE          LL_RTC_SetAlarmOutputType
 866:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 867:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Output This parameter can be one of the following values:
 868:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARM_OUTPUTTYPE_OPENDRAIN
 869:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARM_OUTPUTTYPE_PUSHPULL
 870:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 871:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 872:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_SetAlarmOutputType(RTC_TypeDef *RTCx, uint32_t Output)
 873:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 874:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CR, RTC_CR_TAMPALRM_TYPE, Output);
 875:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 876:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 877:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 878:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get RTC_ALARM output type (ALARM in push-pull or open-drain output)
 879:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPALRM_TYPE          LL_RTC_SetAlarmOutputType
 880:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 881:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
 882:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARM_OUTPUTTYPE_OPENDRAIN
 883:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALARM_OUTPUTTYPE_PUSHPULL
 884:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 885:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_GetAlarmOutputType(RTC_TypeDef *RTCx)
 886:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 887:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CR, RTC_CR_TAMPALRM_TYPE));
 888:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 889:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 890:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 891:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 892:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable initialization mode
 893:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Initialization mode is used to program time and date register (RTC_TR and RTC_DR)
 894:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         and prescaler register (RTC_PRER).
 895:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         Counters are stopped and start counting from the new value when INIT is reset.
 896:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ICSR          INIT          LL_RTC_EnableInitMode
 897:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 898:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 899:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 900:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_EnableInitMode(RTC_TypeDef *RTCx)
 901:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 902:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   /* Set the Initialization mode */
 903:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->ICSR, RTC_LL_INIT_MASK);
 904:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 905:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 906:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 907:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable initialization mode (Free running mode)
 908:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ICSR          INIT          LL_RTC_DisableInitMode
 909:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 910:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 911:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DisableInitMode(RTC_TypeDef *RTCx)
 913:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 914:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   /* Exit Initialization mode */
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->ICSR, (uint32_t)~RTC_ICSR_INIT);
 916:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 917:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 918:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 919:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Output polarity (pin is low when ALRAF/ALRBF/WUTF is asserted)
 920:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
 921:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           POL           LL_RTC_SetOutputPolarity
 922:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 923:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Polarity This parameter can be one of the following values:
 924:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_OUTPUTPOLARITY_PIN_HIGH
 925:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_OUTPUTPOLARITY_PIN_LOW
 926:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 927:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 928:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_SetOutputPolarity(RTC_TypeDef *RTCx, uint32_t Polarity)
 929:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 930:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CR, RTC_CR_POL, Polarity);
 931:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 932:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 933:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 934:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Output polarity
 935:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           POL           LL_RTC_GetOutputPolarity
 936:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 937:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
 938:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_OUTPUTPOLARITY_PIN_HIGH
 939:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_OUTPUTPOLARITY_PIN_LOW
 940:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 941:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_GetOutputPolarity(RTC_TypeDef *RTCx)
 942:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 943:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CR, RTC_CR_POL));
 944:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 945:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 946:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 947:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable Bypass the shadow registers
 948:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
 949:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           BYPSHAD       LL_RTC_EnableShadowRegBypass
 950:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 951:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 952:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 953:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_EnableShadowRegBypass(RTC_TypeDef *RTCx)
 954:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 955:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_BYPSHAD);
 956:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 957:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 958:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 959:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable Bypass the shadow registers
 960:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           BYPSHAD       LL_RTC_DisableShadowRegBypass
 961:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 962:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 963:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 964:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DisableShadowRegBypass(RTC_TypeDef *RTCx)
 965:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 966:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_BYPSHAD);
 967:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 968:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 969:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 970:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Check if Shadow registers bypass is enabled or not.
 971:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           BYPSHAD       LL_RTC_IsShadowRegBypassEnabled
 972:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 973:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
 974:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 975:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsShadowRegBypassEnabled(RTC_TypeDef *RTCx)
 976:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->CR, RTC_CR_BYPSHAD) == (RTC_CR_BYPSHAD)) ? 1U : 0U);
 978:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 979:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 980:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 981:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable RTC_REFIN reference clock detection (50 or 60 Hz)
 982:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
 983:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
 984:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           REFCKON       LL_RTC_EnableRefClock
 985:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 986:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
 987:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
 988:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_EnableRefClock(RTC_TypeDef *RTCx)
 989:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 990:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_REFCKON);
 991:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 992:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 993:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
 994:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable RTC_REFIN reference clock detection (50 or 60 Hz)
 995:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
 996:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
 997:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           REFCKON       LL_RTC_DisableRefClock
 998:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
 999:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1000:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1001:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DisableRefClock(RTC_TypeDef *RTCx)
1002:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1003:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_REFCKON);
1004:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1005:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1006:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1007:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Asynchronous prescaler factor
1008:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_PRER         PREDIV_A      LL_RTC_SetAsynchPrescaler
1009:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1010:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  AsynchPrescaler Value between Min_Data = 0 and Max_Data = 0x7F
1011:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1012:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1013:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_SetAsynchPrescaler(RTC_TypeDef *RTCx, uint32_t AsynchPrescaler)
1014:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1015:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->PRER, RTC_PRER_PREDIV_A, AsynchPrescaler << RTC_PRER_PREDIV_A_Pos);
1016:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1017:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1018:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1019:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Synchronous prescaler factor
1020:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_PRER         PREDIV_S      LL_RTC_SetSynchPrescaler
1021:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1022:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  SynchPrescaler Value between Min_Data = 0 and Max_Data = 0x7FFF
1023:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1024:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1025:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_SetSynchPrescaler(RTC_TypeDef *RTCx, uint32_t SynchPrescaler)
1026:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1027:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->PRER, RTC_PRER_PREDIV_S, SynchPrescaler);
1028:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1029:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1030:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1031:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Asynchronous prescaler factor
1032:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_PRER         PREDIV_A      LL_RTC_GetAsynchPrescaler
1033:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1034:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data = 0 and Max_Data = 0x7F
1035:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1036:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_GetAsynchPrescaler(RTC_TypeDef *RTCx)
1037:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1038:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->PRER, RTC_PRER_PREDIV_A) >> RTC_PRER_PREDIV_A_Pos);
1039:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1040:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1041:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1042:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Synchronous prescaler factor
1043:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_PRER         PREDIV_S      LL_RTC_GetSynchPrescaler
1044:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1045:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data = 0 and Max_Data = 0x7FFF
1046:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1047:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_GetSynchPrescaler(RTC_TypeDef *RTCx)
1048:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1049:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->PRER, RTC_PRER_PREDIV_S));
1050:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1051:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1052:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1053:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable the write protection for RTC registers.
1054:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_WPR          KEY           LL_RTC_EnableWriteProtection
1055:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1056:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1057:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_EnableWriteProtection(RTC_TypeDef *RTCx)
1059:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_DISABLE);
1061:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1062:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1063:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1064:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable the write protection for RTC registers.
1065:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_WPR          KEY           LL_RTC_DisableWriteProtection
1066:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1067:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1068:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DisableWriteProtection(RTC_TypeDef *RTCx)
 173              		.loc 2 1069 22 view .LVU42
 174              	.LBB95:
1070:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_1);
 175              		.loc 2 1071 3 view .LVU43
 176 000c CA23     		movs	r3, #202
 177 000e 4362     		str	r3, [r0, #36]
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 178              		.loc 2 1072 3 view .LVU44
 179 0010 5323     		movs	r3, #83
 180 0012 4362     		str	r3, [r0, #36]
 181              	.LVL6:
 182              		.loc 2 1072 3 is_stmt 0 view .LVU45
 183              	.LBE95:
 184              	.LBE94:
 528:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 529:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Select weekday selection */
 530:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE)
 185              		.loc 1 530 3 is_stmt 1 view .LVU46
 186              		.loc 1 530 6 is_stmt 0 view .LVU47
 187 0014 D368     		ldr	r3, [r2, #12]
 188 0016 147C     		ldrb	r4, [r2, #16]	@ zero_extendqisi2
 189 0018 1768     		ldr	r7, [r2]
 190 001a 002B     		cmp	r3, #0
 191 001c 55D1     		bne	.L8
 531:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 532:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Set the date for ALARM */
 533:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMA_DisableWeekday(RTCx);
 192              		.loc 1 533 5 is_stmt 1 view .LVU48
 193              	.LVL7:
 194              	.LBB96:
 195              	.LBI96:
1073:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1074:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1075:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1076:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable tamper output.
1077:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note When the tamper output is enabled, all external and internal tamper flags
1078:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       are ORed and routed to the TAMPALRM output.
1079:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPOE       LL_RTC_EnableTamperOutput
1080:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1081:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1082:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1083:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_EnableTamperOutput(RTC_TypeDef *RTCx)
1084:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1085:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_TAMPOE);
1086:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1087:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1088:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1089:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable tamper output.
1090:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPOE       LL_RTC_DisableTamperOutput
1091:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1092:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1093:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1094:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DisableTamperOutput(RTC_TypeDef *RTCx)
1095:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1096:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_TAMPOE);
1097:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1098:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1099:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1100:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Check if tamper output is enabled or not.
1101:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPOE       LL_RTC_IsTamperOutputEnabled
1102:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1103:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
1104:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1105:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsTamperOutputEnabled(RTC_TypeDef *RTCx)
1106:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1107:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->CR, RTC_CR_TAMPOE) == (RTC_CR_TAMPOE)) ? 1U : 0U);
1108:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1109:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1110:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1111:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable internal pull-up in output mode.
1112:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPALRM_PU       LL_RTC_EnableAlarmPullUp
1113:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1114:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1115:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1116:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_EnableAlarmPullUp(RTC_TypeDef *RTCx)
1117:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1118:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_TAMPALRM_PU);
1119:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1120:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1121:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1122:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable internal pull-up in output mode.
1123:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPALRM_PU       LL_RTC_EnableAlarmPullUp
1124:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1125:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1126:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1127:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DisableAlarmPullUp(RTC_TypeDef *RTCx)
1128:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1129:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_TAMPALRM_PU);
1130:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1131:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1132:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1133:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Check if internal pull-up in output mode is enabled or not.
1134:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           TAMPALRM_PU       LL_RTC_IsAlarmPullUpEnabled
1135:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1136:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
1137:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1138:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsAlarmPullUpEnabled(RTC_TypeDef *RTCx)
1139:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1140:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->CR, RTC_CR_TAMPALRM_PU) == (RTC_CR_TAMPALRM_PU)) ? 1U : 0U);
1141:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1142:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1143:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1144:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable RTC_OUT2 output
1145:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note RTC_OUT2 mapping depends on both OSEL (@ref LL_RTC_SetAlarmOutEvent)
1146:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       and COE (@ref LL_RTC_CAL_SetOutputFreq) settings.
1147:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note RTC_OUT2 is not available ins VBAT mode.
1148:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           OUT2EN       LL_RTC_EnableOutput2
1149:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1150:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1151:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1152:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_EnableOutput2(RTC_TypeDef *RTCx)
1153:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1154:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_OUT2EN);
1155:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1156:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1157:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1158:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable RTC_OUT2 output
1159:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           OUT2EN       LL_RTC_DisableOutput2
1160:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1161:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1162:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1163:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DisableOutput2(RTC_TypeDef *RTCx)
1164:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1165:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_OUT2EN);
1166:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1167:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1168:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1169:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Check if RTC_OUT2 output is enabled or not.
1170:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           OUT2EN       LL_RTC_IsOutput2Enabled
1171:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1172:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
1173:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1174:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsOutput2Enabled(RTC_TypeDef *RTCx)
1175:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1176:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->CR, RTC_CR_OUT2EN) == (RTC_CR_OUT2EN)) ? 1U : 0U);
1177:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1178:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1179:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1180:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
1181:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1182:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1183:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Time Time
1184:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
1185:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1186:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1187:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1188:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set time format (AM/24-hour or PM notation)
1189:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1190:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
1191:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           PM            LL_RTC_TIME_SetFormat
1192:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1193:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  TimeFormat This parameter can be one of the following values:
1194:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIME_FORMAT_AM_OR_24
1195:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIME_FORMAT_PM
1196:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1197:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1198:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_SetFormat(RTC_TypeDef *RTCx, uint32_t TimeFormat)
1199:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1200:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->TR, RTC_TR_PM, TimeFormat);
1201:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1202:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1203:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1204:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get time format (AM or PM notation)
1205:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1206:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1207:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Read either RTC_SSR or RTC_TR locks the values in the higher-order calendar
1208:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       shadow registers until RTC_DR is read (LL_RTC_ReadReg(RTC, DR)).
1209:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           PM            LL_RTC_TIME_GetFormat
1210:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1211:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
1212:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIME_FORMAT_AM_OR_24
1213:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIME_FORMAT_PM
1214:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1215:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TIME_GetFormat(RTC_TypeDef *RTCx)
1216:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1217:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TR, RTC_TR_PM));
1218:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1219:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1220:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1221:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Hours in BCD format
1222:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1223:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
1224:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert hour from binary to BCD for
1225:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           HT            LL_RTC_TIME_SetHour\n
1226:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           HU            LL_RTC_TIME_SetHour
1227:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1228:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Hours Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Da
1229:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1230:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1231:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_SetHour(RTC_TypeDef *RTCx, uint32_t Hours)
1232:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1233:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->TR, (RTC_TR_HT | RTC_TR_HU),
1234:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Hours & 0xF0U) << (RTC_TR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_TR_HU_Pos)));
1235:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1236:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1237:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1238:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Hours in BCD format
1239:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1240:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1241:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Read either RTC_SSR or RTC_TR locks the values in the higher-order calendar
1242:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       shadow registers until RTC_DR is read (LL_RTC_ReadReg(RTC, DR)).
1243:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert hour from BCD to
1244:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       Binary format
1245:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           HT            LL_RTC_TIME_GetHour\n
1246:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           HU            LL_RTC_TIME_GetHour
1247:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1248:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Data=0x2
1249:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1250:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TIME_GetHour(RTC_TypeDef *RTCx)
1251:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1252:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->TR, (RTC_TR_HT | RTC_TR_HU))) >> RTC_TR_HU_Pos);
1253:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1254:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1255:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1256:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Minutes in BCD format
1257:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1258:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
1259:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Minutes from binary to BCD 
1260:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           MNT           LL_RTC_TIME_SetMinute\n
1261:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           MNU           LL_RTC_TIME_SetMinute
1262:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1263:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Minutes Value between Min_Data=0x00 and Max_Data=0x59
1264:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1265:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1266:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_SetMinute(RTC_TypeDef *RTCx, uint32_t Minutes)
1267:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1268:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->TR, (RTC_TR_MNT | RTC_TR_MNU),
1269:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Minutes & 0xF0U) << (RTC_TR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_TR_MNU_Pos))
1270:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1271:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1272:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1273:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Minutes in BCD format
1274:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1275:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1276:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Read either RTC_SSR or RTC_TR locks the values in the higher-order calendar
1277:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       shadow registers until RTC_DR is read (LL_RTC_ReadReg(RTC, DR)).
1278:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert minute from BCD
1279:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       to Binary format
1280:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           MNT           LL_RTC_TIME_GetMinute\n
1281:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           MNU           LL_RTC_TIME_GetMinute
1282:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1283:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
1284:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1285:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TIME_GetMinute(RTC_TypeDef *RTCx)
1286:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1287:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TR, (RTC_TR_MNT | RTC_TR_MNU)) >> RTC_TR_MNU_Pos);
1288:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1289:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1290:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1291:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Seconds in BCD format
1292:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1293:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
1294:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Seconds from binary to BCD 
1295:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           ST            LL_RTC_TIME_SetSecond\n
1296:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           SU            LL_RTC_TIME_SetSecond
1297:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1298:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Seconds Value between Min_Data=0x00 and Max_Data=0x59
1299:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1300:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1301:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_SetSecond(RTC_TypeDef *RTCx, uint32_t Seconds)
1302:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1303:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->TR, (RTC_TR_ST | RTC_TR_SU),
1304:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Seconds & 0xF0U) << (RTC_TR_ST_Pos - 4U)) | ((Seconds & 0x0FU) << RTC_TR_SU_Pos)));
1305:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1306:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1307:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1308:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Seconds in BCD format
1309:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1310:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1311:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Read either RTC_SSR or RTC_TR locks the values in the higher-order calendar
1312:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       shadow registers until RTC_DR is read (LL_RTC_ReadReg(RTC, DR)).
1313:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Seconds from BCD
1314:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       to Binary format
1315:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           ST            LL_RTC_TIME_GetSecond\n
1316:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           SU            LL_RTC_TIME_GetSecond
1317:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1318:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
1319:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1320:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TIME_GetSecond(RTC_TypeDef *RTCx)
1321:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1322:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TR, (RTC_TR_ST | RTC_TR_SU)) >> RTC_TR_SU_Pos);
1323:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1324:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1325:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1326:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set time (hour, minute and second) in BCD format
1327:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1328:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   It can be written in initialization mode only (@ref LL_RTC_EnableInitMode function)
1329:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note TimeFormat and Hours should follow the same format
1330:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           PM            LL_RTC_TIME_Config\n
1331:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           HT            LL_RTC_TIME_Config\n
1332:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           HU            LL_RTC_TIME_Config\n
1333:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           MNT           LL_RTC_TIME_Config\n
1334:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           MNU           LL_RTC_TIME_Config\n
1335:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           ST            LL_RTC_TIME_Config\n
1336:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           SU            LL_RTC_TIME_Config
1337:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1338:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Format12_24 This parameter can be one of the following values:
1339:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIME_FORMAT_AM_OR_24
1340:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIME_FORMAT_PM
1341:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Hours Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Da
1342:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Minutes Value between Min_Data=0x00 and Max_Data=0x59
1343:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Seconds Value between Min_Data=0x00 and Max_Data=0x59
1344:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1345:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1346:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_Config(RTC_TypeDef *RTCx, uint32_t Format12_24, uint32_t Hours, ui
1347:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                         uint32_t Seconds)
1348:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1349:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t temp;
1350:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   temp = Format12_24                                                                               
1352:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Hours & 0xF0U) << (RTC_TR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_TR_HU_Pos))     | \
1353:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_TR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_TR_MNU_Pos)) | \
1354:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Seconds & 0xF0U) << (RTC_TR_ST_Pos - 4U)) | ((Seconds & 0x0FU) << RTC_TR_SU_Pos));
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->TR, (RTC_TR_PM | RTC_TR_HT | RTC_TR_HU | RTC_TR_MNT | RTC_TR_MNU | RTC_TR_ST | R
1356:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1357:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1358:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1359:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get time (hour, minute and second) in BCD format
1360:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1361:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1362:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Read either RTC_SSR or RTC_TR locks the values in the higher-order calendar
1363:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       shadow registers until RTC_DR is read (LL_RTC_ReadReg(RTC, DR)).
1364:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macros __LL_RTC_GET_HOUR, __LL_RTC_GET_MINUTE and __LL_RTC_GET_SECOND
1365:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       are available to get independently each parameter.
1366:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TR           HT            LL_RTC_TIME_Get\n
1367:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           HU            LL_RTC_TIME_Get\n
1368:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           MNT           LL_RTC_TIME_Get\n
1369:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           MNU           LL_RTC_TIME_Get\n
1370:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           ST            LL_RTC_TIME_Get\n
1371:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TR           SU            LL_RTC_TIME_Get
1372:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1373:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Combination of hours, minutes and seconds (Format: 0x00HHMMSS).
1374:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1375:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TIME_Get(RTC_TypeDef *RTCx)
1376:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1377:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t temp;
1378:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   temp = READ_BIT(RTCx->TR, (RTC_TR_HT | RTC_TR_HU | RTC_TR_MNT | RTC_TR_MNU | RTC_TR_ST | RTC_TR_S
1380:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((((((temp & RTC_TR_HT) >> RTC_TR_HT_Pos) << 4U) | ((temp & RTC_TR_HU) >> RTC_TR
1381:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                     (((((temp & RTC_TR_MNT) >> RTC_TR_MNT_Pos) << 4U) | ((temp & RTC_TR_MNU) >> RTC
1382:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                     ((((temp & RTC_TR_ST) >> RTC_TR_ST_Pos) << 4U) | ((temp & RTC_TR_SU) >> RTC_TR_
1383:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1384:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1385:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1386:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Memorize whether the daylight saving time change has been performed
1387:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1388:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           BKP           LL_RTC_TIME_EnableDayLightStore
1389:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1390:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1391:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1392:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_EnableDayLightStore(RTC_TypeDef *RTCx)
1393:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1394:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_BKP);
1395:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1396:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1397:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1398:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable memorization whether the daylight saving time change has been performed.
1399:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1400:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           BKP           LL_RTC_TIME_DisableDayLightStore
1401:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1402:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1403:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1404:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_DisableDayLightStore(RTC_TypeDef *RTCx)
1405:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1406:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_BKP);
1407:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1408:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1409:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1410:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Check if RTC Day Light Saving stored operation has been enabled or not
1411:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           BKP           LL_RTC_TIME_IsDayLightStoreEnabled
1412:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1413:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
1414:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1415:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TIME_IsDayLightStoreEnabled(RTC_TypeDef *RTCx)
1416:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1417:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->CR, RTC_CR_BKP) == (RTC_CR_BKP)) ? 1U : 0U);
1418:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1419:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1420:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1421:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Subtract 1 hour (winter time change)
1422:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1423:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           SUB1H         LL_RTC_TIME_DecHour
1424:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1425:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1426:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1427:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_DecHour(RTC_TypeDef *RTCx)
1428:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1429:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_SUB1H);
1430:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1431:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1432:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1433:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Add 1 hour (summer time change)
1434:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1435:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ADD1H         LL_RTC_TIME_IncHour
1436:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1437:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1438:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1439:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_IncHour(RTC_TypeDef *RTCx)
1440:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1441:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_ADD1H);
1442:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1443:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1444:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1445:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Sub second value in the synchronous prescaler counter.
1446:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note  You can use both SubSeconds value and SecondFraction (PREDIV_S through
1447:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *        LL_RTC_GetSynchPrescaler function) terms returned to convert Calendar
1448:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *        SubSeconds value in second fraction ratio with time unit following
1449:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *        generic formula:
1450:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *          ==> Seconds fraction ratio * time_unit= [(SecondFraction-SubSeconds)/(SecondFraction+1
1451:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *        This conversion can be performed only if no shift operation is pending
1452:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *        (ie. SHFP=0) when PREDIV_S >= SS.
1453:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SSR          SS            LL_RTC_TIME_GetSubSecond
1454:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1455:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Sub second value (number between 0 and 65535)
1456:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1457:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TIME_GetSubSecond(RTC_TypeDef *RTCx)
1458:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1459:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->SSR, RTC_SSR_SS));
1460:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1461:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1462:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1463:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Synchronize to a remote clock with a high degree of precision.
1464:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   This operation effectively subtracts from (delays) or advance the clock of a fraction o
1465:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1466:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   When REFCKON is set, firmware must not write to Shift control register.
1467:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SHIFTR       ADD1S         LL_RTC_TIME_Synchronize\n
1468:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_SHIFTR       SUBFS         LL_RTC_TIME_Synchronize
1469:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1470:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  ShiftSecond This parameter can be one of the following values:
1471:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_SHIFT_SECOND_DELAY
1472:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_SHIFT_SECOND_ADVANCE
1473:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Fraction Number of Seconds Fractions (any value from 0 to 0x7FFF)
1474:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1475:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1476:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TIME_Synchronize(RTC_TypeDef *RTCx, uint32_t ShiftSecond, uint32_t Frac
1477:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1478:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->SHIFTR, (ShiftSecond | Fraction));
1479:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1480:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1481:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1482:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
1483:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1484:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1485:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Date Date
1486:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
1487:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1488:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1489:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1490:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Year in BCD format
1491:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Year from binary to BCD for
1492:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           YT            LL_RTC_DATE_SetYear\n
1493:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           YU            LL_RTC_DATE_SetYear
1494:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1495:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Year Value between Min_Data=0x00 and Max_Data=0x99
1496:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1497:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1498:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DATE_SetYear(RTC_TypeDef *RTCx, uint32_t Year)
1499:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1500:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->DR, (RTC_DR_YT | RTC_DR_YU),
1501:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Year & 0xF0U) << (RTC_DR_YT_Pos - 4U)) | ((Year & 0x0FU) << RTC_DR_YU_Pos)));
1502:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1503:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1504:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1505:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Year in BCD format
1506:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1507:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1508:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Year from BCD to Binary for
1509:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           YT            LL_RTC_DATE_GetYear\n
1510:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           YU            LL_RTC_DATE_GetYear
1511:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x99
1513:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_DATE_GetYear(RTC_TypeDef *RTCx)
1515:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1516:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->DR, (RTC_DR_YT | RTC_DR_YU))) >> RTC_DR_YU_Pos);
1517:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1518:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1519:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1520:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Week day
1521:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           WDU           LL_RTC_DATE_SetWeekDay
1522:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1523:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  WeekDay This parameter can be one of the following values:
1524:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
1525:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
1526:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
1527:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
1528:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
1529:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
1530:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
1531:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1532:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1533:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DATE_SetWeekDay(RTC_TypeDef *RTCx, uint32_t WeekDay)
1534:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1535:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->DR, RTC_DR_WDU, WeekDay << RTC_DR_WDU_Pos);
1536:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1537:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1538:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1539:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Week day
1540:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1541:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1542:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           WDU           LL_RTC_DATE_GetWeekDay
1543:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1544:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
1545:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
1546:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
1547:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
1548:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
1549:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
1550:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
1551:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
1552:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1553:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_DATE_GetWeekDay(RTC_TypeDef *RTCx)
1554:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1555:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->DR, RTC_DR_WDU) >> RTC_DR_WDU_Pos);
1556:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1557:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1558:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1559:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Month in BCD format
1560:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Month from binary to BCD fo
1561:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           MT            LL_RTC_DATE_SetMonth\n
1562:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           MU            LL_RTC_DATE_SetMonth
1563:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1564:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Month This parameter can be one of the following values:
1565:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JANUARY
1566:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_FEBRUARY
1567:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MARCH
1568:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_APRIL
1569:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MAY
1570:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JUNE
1571:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JULY
1572:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_AUGUST
1573:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_SEPTEMBER
1574:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_OCTOBER
1575:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_NOVEMBER
1576:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_DECEMBER
1577:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1578:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1579:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DATE_SetMonth(RTC_TypeDef *RTCx, uint32_t Month)
1580:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1581:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->DR, (RTC_DR_MT | RTC_DR_MU),
1582:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Month & 0xF0U) << (RTC_DR_MT_Pos - 4U)) | ((Month & 0x0FU) << RTC_DR_MU_Pos)));
1583:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1584:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1585:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1586:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Month in BCD format
1587:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1588:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1589:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Month from BCD to Binary fo
1590:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           MT            LL_RTC_DATE_GetMonth\n
1591:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           MU            LL_RTC_DATE_GetMonth
1592:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1593:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
1594:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JANUARY
1595:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_FEBRUARY
1596:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MARCH
1597:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_APRIL
1598:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MAY
1599:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JUNE
1600:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JULY
1601:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_AUGUST
1602:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_SEPTEMBER
1603:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_OCTOBER
1604:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_NOVEMBER
1605:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_DECEMBER
1606:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1607:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_DATE_GetMonth(RTC_TypeDef *RTCx)
1608:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1609:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->DR, (RTC_DR_MT | RTC_DR_MU))) >> RTC_DR_MU_Pos);
1610:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1611:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1612:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1613:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Day in BCD format
1614:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Day from binary to BCD form
1615:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           DT            LL_RTC_DATE_SetDay\n
1616:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           DU            LL_RTC_DATE_SetDay
1617:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1618:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Day Value between Min_Data=0x01 and Max_Data=0x31
1619:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1620:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1621:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DATE_SetDay(RTC_TypeDef *RTCx, uint32_t Day)
1622:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1623:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->DR, (RTC_DR_DT | RTC_DR_DU),
1624:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Day & 0xF0U) << (RTC_DR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_DR_DU_Pos)));
1625:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1626:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1627:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1628:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Day in BCD format
1629:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1630:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1631:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Day from BCD to Binary form
1632:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           DT            LL_RTC_DATE_GetDay\n
1633:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           DU            LL_RTC_DATE_GetDay
1634:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1635:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x31
1636:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1637:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_DATE_GetDay(RTC_TypeDef *RTCx)
1638:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1639:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->DR, (RTC_DR_DT | RTC_DR_DU))) >> RTC_DR_DU_Pos);
1640:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1641:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1642:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1643:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set date (WeekDay, Day, Month and Year) in BCD format
1644:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           WDU           LL_RTC_DATE_Config\n
1645:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           MT            LL_RTC_DATE_Config\n
1646:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           MU            LL_RTC_DATE_Config\n
1647:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           DT            LL_RTC_DATE_Config\n
1648:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           DU            LL_RTC_DATE_Config\n
1649:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           YT            LL_RTC_DATE_Config\n
1650:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           YU            LL_RTC_DATE_Config
1651:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1652:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  WeekDay This parameter can be one of the following values:
1653:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
1654:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
1655:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
1656:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
1657:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
1658:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
1659:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
1660:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Day Value between Min_Data=0x01 and Max_Data=0x31
1661:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Month This parameter can be one of the following values:
1662:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JANUARY
1663:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_FEBRUARY
1664:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MARCH
1665:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_APRIL
1666:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MAY
1667:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JUNE
1668:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JULY
1669:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_AUGUST
1670:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_SEPTEMBER
1671:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_OCTOBER
1672:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_NOVEMBER
1673:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_DECEMBER
1674:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Year Value between Min_Data=0x00 and Max_Data=0x99
1675:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1676:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1677:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_DATE_Config(RTC_TypeDef *RTCx, uint32_t WeekDay, uint32_t Day, uint32_t
1678:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                         uint32_t Year)
1679:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1680:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t temp;
1681:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1682:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   temp = (WeekDay << RTC_DR_WDU_Pos)                                                        | \
1683:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Year & 0xF0U) << (RTC_DR_YT_Pos - 4U)) | ((Year & 0x0FU) << RTC_DR_YU_Pos))   | \
1684:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Month & 0xF0U) << (RTC_DR_MT_Pos - 4U)) | ((Month & 0x0FU) << RTC_DR_MU_Pos)) | \
1685:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Day & 0xF0U) << (RTC_DR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_DR_DU_Pos));
1686:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->DR, (RTC_DR_WDU | RTC_DR_MT | RTC_DR_MU | RTC_DR_DT | RTC_DR_DU | RTC_DR_YT | RT
1688:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1689:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1690:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1691:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get date (WeekDay, Day, Month and Year) in BCD format
1692:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note if shadow mode is disabled (BYPSHAD=0), need to check if RSF flag is set
1693:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       before reading this bit
1694:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macros __LL_RTC_GET_WEEKDAY, __LL_RTC_GET_YEAR, __LL_RTC_GET_MONTH,
1695:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * and __LL_RTC_GET_DAY are available to get independently each parameter.
1696:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_DR           WDU           LL_RTC_DATE_Get\n
1697:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           MT            LL_RTC_DATE_Get\n
1698:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           MU            LL_RTC_DATE_Get\n
1699:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           DT            LL_RTC_DATE_Get\n
1700:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           DU            LL_RTC_DATE_Get\n
1701:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           YT            LL_RTC_DATE_Get\n
1702:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_DR           YU            LL_RTC_DATE_Get
1703:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1704:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Combination of WeekDay, Day, Month and Year (Format: 0xWWDDMMYY).
1705:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1706:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_DATE_Get(RTC_TypeDef *RTCx)
1707:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1708:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t temp;
1709:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1710:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   temp = READ_BIT(RTCx->DR, (RTC_DR_WDU | RTC_DR_MT | RTC_DR_MU | RTC_DR_DT | RTC_DR_DU | RTC_DR_YT
1711:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((((temp & RTC_DR_WDU) >> RTC_DR_WDU_Pos) << RTC_OFFSET_WEEKDAY) | \
1712:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                     (((((temp & RTC_DR_DT) >> RTC_DR_DT_Pos) << 4U) | ((temp & RTC_DR_DU) >> RTC_DR
1713:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                     (((((temp & RTC_DR_MT) >> RTC_DR_MT_Pos) << 4U) | ((temp & RTC_DR_MU) >> RTC_DR
1714:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                     ((((temp & RTC_DR_YT) >> RTC_DR_YT_Pos) << 4U) | ((temp & RTC_DR_YU) >> RTC_DR_
1715:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1716:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1717:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1718:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
1719:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1720:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1721:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_ALARMA ALARMA
1722:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
1723:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1724:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1725:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1726:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable Alarm A
1727:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1728:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ALRAE         LL_RTC_ALMA_Enable
1729:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1730:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1731:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1732:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_Enable(RTC_TypeDef *RTCx)
1733:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1734:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_ALRAE);
1735:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1736:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1737:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1738:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable Alarm A
1739:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
1740:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ALRAE         LL_RTC_ALMA_Disable
1741:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1742:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1743:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1744:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_Disable(RTC_TypeDef *RTCx)
1745:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1746:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_ALRAE);
1747:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1748:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1749:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1750:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Specify the Alarm A masks.
1751:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       MSK4          LL_RTC_ALMA_SetMask\n
1752:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MSK3          LL_RTC_ALMA_SetMask\n
1753:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MSK2          LL_RTC_ALMA_SetMask\n
1754:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MSK1          LL_RTC_ALMA_SetMask
1755:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1756:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Mask This parameter can be a combination of the following values:
1757:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_NONE
1758:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_DATEWEEKDAY
1759:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_HOURS
1760:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_MINUTES
1761:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_SECONDS
1762:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_ALL
1763:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1764:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1765:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetMask(RTC_TypeDef *RTCx, uint32_t Mask)
1766:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1767:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, RTC_ALRMAR_MSK4 | RTC_ALRMAR_MSK3 | RTC_ALRMAR_MSK2 | RTC_ALRMAR_MSK1, M
1768:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1769:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1770:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1771:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get the Alarm A masks.
1772:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       MSK4          LL_RTC_ALMA_GetMask\n
1773:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MSK3          LL_RTC_ALMA_GetMask\n
1774:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MSK2          LL_RTC_ALMA_GetMask\n
1775:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MSK1          LL_RTC_ALMA_GetMask
1776:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1777:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be can be a combination of the following values:
1778:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_NONE
1779:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_DATEWEEKDAY
1780:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_HOURS
1781:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_MINUTES
1782:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_SECONDS
1783:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_MASK_ALL
1784:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1785:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetMask(RTC_TypeDef *RTCx)
1786:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1787:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMAR, RTC_ALRMAR_MSK4 | RTC_ALRMAR_MSK3 | RTC_ALRMAR_MSK2 | RT
1788:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1789:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1790:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1791:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable AlarmA Week day selection (DU[3:0] represents the week day. DT[1:0] is do not ca
1792:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       WDSEL         LL_RTC_ALMA_EnableWeekday
1793:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1794:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1795:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1796:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_EnableWeekday(RTC_TypeDef *RTCx)
1797:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1798:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->ALRMAR, RTC_ALRMAR_WDSEL);
1799:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1800:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1801:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1802:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable AlarmA Week day selection (DU[3:0] represents the date )
1803:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       WDSEL         LL_RTC_ALMA_DisableWeekday
1804:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1805:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1806:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1807:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_DisableWeekday(RTC_TypeDef *RTCx)
 196              		.loc 2 1807 22 view .LVU49
 197              	.LBB97:
1808:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1809:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->ALRMAR, RTC_ALRMAR_WDSEL);
 198              		.loc 2 1809 3 view .LVU50
 199 001e 036C     		ldr	r3, [r0, #64]
 200 0020 23F08043 		bic	r3, r3, #1073741824
 201 0024 0364     		str	r3, [r0, #64]
 202              	.LVL8:
 203              		.loc 2 1809 3 is_stmt 0 view .LVU51
 204              	.LBE97:
 205              	.LBE96:
 534:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_Format != LL_RTC_FORMAT_BIN)
 206              		.loc 1 534 5 is_stmt 1 view .LVU52
 207              		.loc 1 534 8 is_stmt 0 view .LVU53
 208 0026 F1B1     		cbz	r1, .L9
 535:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 536:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_ALMA_SetDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
 209              		.loc 1 536 7 is_stmt 1 view .LVU54
 210              	.LVL9:
 211              	.LBB98:
 212              	.LBI98:
1810:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1811:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1812:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1813:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM A Day in BCD format
1814:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Day from binary to BCD form
1815:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       DT            LL_RTC_ALMA_SetDay\n
1816:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       DU            LL_RTC_ALMA_SetDay
1817:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1818:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Day Value between Min_Data=0x01 and Max_Data=0x31
1819:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1820:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1821:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetDay(RTC_TypeDef *RTCx, uint32_t Day)
 213              		.loc 2 1821 22 view .LVU55
 214              	.LBB99:
1822:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1823:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, (RTC_ALRMAR_DT | RTC_ALRMAR_DU),
 215              		.loc 2 1823 3 view .LVU56
 216 0028 016C     		ldr	r1, [r0, #64]
 217              	.LVL10:
 218              		.loc 2 1823 3 is_stmt 0 view .LVU57
 219 002a 21F07C51 		bic	r1, r1, #1056964608
 220 002e 41EA0461 		orr	r1, r1, r4, lsl #24
 221 0032 0164     		str	r1, [r0, #64]
 222              	.LBE99:
 223              	.LBE98:
 537:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 538:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 539:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 540:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_ALMA_SetDay(RTCx, __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmDateWeekDay));
 541:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 542:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 543:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 544:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 545:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Set the week day for ALARM */
 546:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMA_EnableWeekday(RTCx);
 547:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMA_SetWeekDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
 548:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 549:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 550:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Configure the Alarm register */
 551:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_Format != LL_RTC_FORMAT_BIN)
 224              		.loc 1 551 3 is_stmt 1 view .LVU58
 225              	.LVL11:
 226              	.L10:
 552:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 553:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMA_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat, RTC_AlarmStruct->AlarmTime.
 227              		.loc 1 553 5 view .LVU59
 228              	.LBB100:
 229              	.LBI100:
1824:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Day & 0xF0U) << (RTC_ALRMAR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_ALRMAR_DU_Pos)));
1825:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1826:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1827:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM A Day in BCD format
1829:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Day from BCD to Binary form
1830:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       DT            LL_RTC_ALMA_GetDay\n
1831:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       DU            LL_RTC_ALMA_GetDay
1832:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1833:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x31
1834:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1835:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetDay(RTC_TypeDef *RTCx)
1836:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1837:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMAR, (RTC_ALRMAR_DT | RTC_ALRMAR_DU))) >> RTC_ALRMAR_DU_Pos)
1838:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1839:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1840:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1841:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM A Weekday
1842:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       DU            LL_RTC_ALMA_SetWeekDay
1843:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1844:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  WeekDay This parameter can be one of the following values:
1845:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
1846:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
1847:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
1848:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
1849:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
1850:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
1851:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
1852:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1853:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1854:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetWeekDay(RTC_TypeDef *RTCx, uint32_t WeekDay)
1855:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1856:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, RTC_ALRMAR_DU, WeekDay << RTC_ALRMAR_DU_Pos);
1857:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1858:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1859:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1860:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM A Weekday
1861:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       DU            LL_RTC_ALMA_GetWeekDay
1862:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1863:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
1864:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
1865:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
1866:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
1867:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
1868:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
1869:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
1870:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
1871:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1872:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetWeekDay(RTC_TypeDef *RTCx)
1873:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1874:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMAR, RTC_ALRMAR_DU) >> RTC_ALRMAR_DU_Pos);
1875:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1876:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1877:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1878:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Alarm A time format (AM/24-hour or PM notation)
1879:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       PM            LL_RTC_ALMA_SetTimeFormat
1880:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1881:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  TimeFormat This parameter can be one of the following values:
1882:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_TIME_FORMAT_AM
1883:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_TIME_FORMAT_PM
1884:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1885:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1886:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetTimeFormat(RTC_TypeDef *RTCx, uint32_t TimeFormat)
1887:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1888:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, RTC_ALRMAR_PM, TimeFormat);
1889:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1890:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1891:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1892:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm A time format (AM or PM notation)
1893:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       PM            LL_RTC_ALMA_GetTimeFormat
1894:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1895:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
1896:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_TIME_FORMAT_AM
1897:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_TIME_FORMAT_PM
1898:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1899:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetTimeFormat(RTC_TypeDef *RTCx)
1900:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1901:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMAR, RTC_ALRMAR_PM));
1902:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1903:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1904:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1905:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM A Hours in BCD format
1906:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Hours from binary to BCD fo
1907:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       HT            LL_RTC_ALMA_SetHour\n
1908:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       HU            LL_RTC_ALMA_SetHour
1909:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1910:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Hours Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Da
1911:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1913:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetHour(RTC_TypeDef *RTCx, uint32_t Hours)
1914:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, (RTC_ALRMAR_HT | RTC_ALRMAR_HU),
1916:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Hours & 0xF0U) << (RTC_ALRMAR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_ALRMAR_HU_Pos
1917:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1918:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1919:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1920:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM A Hours in BCD format
1921:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Hours from BCD to Binary fo
1922:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       HT            LL_RTC_ALMA_GetHour\n
1923:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       HU            LL_RTC_ALMA_GetHour
1924:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1925:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Data=0x2
1926:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1927:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetHour(RTC_TypeDef *RTCx)
1928:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1929:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMAR, (RTC_ALRMAR_HT | RTC_ALRMAR_HU))) >> RTC_ALRMAR_HU_Pos)
1930:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1931:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1932:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1933:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM A Minutes in BCD format
1934:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Minutes from binary to BCD 
1935:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       MNT           LL_RTC_ALMA_SetMinute\n
1936:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MNU           LL_RTC_ALMA_SetMinute
1937:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1938:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Minutes Value between Min_Data=0x00 and Max_Data=0x59
1939:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1940:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1941:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetMinute(RTC_TypeDef *RTCx, uint32_t Minutes)
1942:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1943:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, (RTC_ALRMAR_MNT | RTC_ALRMAR_MNU),
1944:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Minutes & 0xF0U) << (RTC_ALRMAR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMAR_M
1945:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1946:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1947:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1948:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM A Minutes in BCD format
1949:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Minutes from BCD to Binary 
1950:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       MNT           LL_RTC_ALMA_GetMinute\n
1951:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MNU           LL_RTC_ALMA_GetMinute
1952:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1953:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
1954:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1955:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetMinute(RTC_TypeDef *RTCx)
1956:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1957:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMAR, (RTC_ALRMAR_MNT | RTC_ALRMAR_MNU))) >> RTC_ALRMAR_MNU_P
1958:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1959:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1960:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1961:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM A Seconds in BCD format
1962:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Seconds from binary to BCD 
1963:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       ST            LL_RTC_ALMA_SetSecond\n
1964:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       SU            LL_RTC_ALMA_SetSecond
1965:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1966:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Seconds Value between Min_Data=0x00 and Max_Data=0x59
1967:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
1968:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1969:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetSecond(RTC_TypeDef *RTCx, uint32_t Seconds)
1970:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1971:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, (RTC_ALRMAR_ST | RTC_ALRMAR_SU),
1972:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Seconds & 0xF0U) << (RTC_ALRMAR_ST_Pos - 4U)) | ((Seconds & 0x0FU) << RTC_ALRMAR_SU
1973:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1974:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1975:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1976:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM A Seconds in BCD format
1977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Seconds from BCD to Binary 
1978:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       ST            LL_RTC_ALMA_GetSecond\n
1979:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       SU            LL_RTC_ALMA_GetSecond
1980:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1981:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
1982:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
1983:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetSecond(RTC_TypeDef *RTCx)
1984:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
1985:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMAR, (RTC_ALRMAR_ST | RTC_ALRMAR_SU))) >> RTC_ALRMAR_SU_Pos)
1986:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
1987:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
1988:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
1989:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Alarm A Time (hour, minute and second) in BCD format
1990:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       PM            LL_RTC_ALMA_ConfigTime\n
1991:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       HT            LL_RTC_ALMA_ConfigTime\n
1992:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       HU            LL_RTC_ALMA_ConfigTime\n
1993:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MNT           LL_RTC_ALMA_ConfigTime\n
1994:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MNU           LL_RTC_ALMA_ConfigTime\n
1995:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       ST            LL_RTC_ALMA_ConfigTime\n
1996:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       SU            LL_RTC_ALMA_ConfigTime
1997:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
1998:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Format12_24 This parameter can be one of the following values:
1999:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_TIME_FORMAT_AM
2000:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMA_TIME_FORMAT_PM
2001:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Hours Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Da
2002:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Minutes Value between Min_Data=0x00 and Max_Data=0x59
2003:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Seconds Value between Min_Data=0x00 and Max_Data=0x59
2004:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2005:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2006:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_ConfigTime(RTC_TypeDef *RTCx, uint32_t Format12_24, uint32_t Hours
 230              		.loc 2 2006 22 view .LVU60
 231              	.LBB101:
2007:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                             uint32_t Seconds)
2008:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2009:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t temp;
 232              		.loc 2 2009 3 view .LVU61
2010:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2011:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   temp = Format12_24 | (((Hours & 0xF0U) << (RTC_ALRMAR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_ALR
 233              		.loc 2 2011 3 view .LVU62
2012:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMAR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMAR_MNU_P
2013:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Seconds & 0xF0U) << (RTC_ALRMAR_ST_Pos - 4U)) | ((Seconds & 0x0FU) << RTC_ALRMAR_SU_Pos
2014:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2015:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMAR, RTC_ALRMAR_PM | RTC_ALRMAR_HT | RTC_ALRMAR_HU | RTC_ALRMAR_MNT | RTC_ALR
 234              		.loc 2 2015 3 view .LVU63
 235              	.LBE101:
 236              	.LBE100:
 237              		.loc 1 553 5 is_stmt 0 view .LVU64
 238 0034 9379     		ldrb	r3, [r2, #6]	@ zero_extendqisi2
 239              	.LVL12:
 240              		.loc 1 553 5 view .LVU65
 241 0036 1479     		ldrb	r4, [r2, #4]	@ zero_extendqisi2
 242              	.LVL13:
 243              	.LBB104:
 244              	.LBB102:
 245              		.loc 2 2015 3 view .LVU66
 246 0038 016C     		ldr	r1, [r0, #64]
2011:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMAR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMAR_MNU_P
 247              		.loc 2 2011 8 view .LVU67
 248 003a 3B43     		orrs	r3, r3, r7
 249              	.LVL14:
2011:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMAR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMAR_MNU_P
 250              		.loc 2 2011 8 view .LVU68
 251 003c 43EA0443 		orr	r3, r3, r4, lsl #16
 252              	.LBE102:
 253              	.LBE104:
 254              		.loc 1 553 5 view .LVU69
 255 0040 5479     		ldrb	r4, [r2, #5]	@ zero_extendqisi2
 256              	.LVL15:
 257              	.LBB105:
 258              	.LBB103:
 259              		.loc 2 2015 3 view .LVU70
 260 0042 21F07F11 		bic	r1, r1, #8323199
2011:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMAR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMAR_MNU_P
 261              		.loc 2 2011 8 view .LVU71
 262 0046 43EA0423 		orr	r3, r3, r4, lsl #8
 263              		.loc 2 2015 3 view .LVU72
 264 004a 21F4FE41 		bic	r1, r1, #32512
 265 004e 0B43     		orrs	r3, r3, r1
 266              	.LVL16:
 267              	.L20:
 268              		.loc 2 2015 3 view .LVU73
 269              	.LBE103:
 270              	.LBE105:
 271              	.LBB106:
 272              	.LBB107:
 273 0050 0364     		str	r3, [r0, #64]
 274              	.LBE107:
 275              	.LBE106:
 554:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            RTC_AlarmStruct->AlarmTime.Minutes, RTC_AlarmStruct->AlarmTime.Seconds);
 555:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 556:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 557:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 558:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMA_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat,
 559:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 560:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 561:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
 562:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 563:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Set ALARM mask */
 564:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_ALMA_SetMask(RTCx, RTC_AlarmStruct->AlarmMask);
 276              		.loc 1 564 3 is_stmt 1 view .LVU74
 277              	.LVL17:
 278              	.LBB115:
 279              	.LBI115:
1765:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 280              		.loc 2 1765 22 view .LVU75
 281              	.LBB116:
1767:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 282              		.loc 2 1767 3 view .LVU76
 283 0052 036C     		ldr	r3, [r0, #64]
 284 0054 9268     		ldr	r2, [r2, #8]
 285              	.LVL18:
1767:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 286              		.loc 2 1767 3 is_stmt 0 view .LVU77
 287 0056 03F07F33 		and	r3, r3, #2139062143
 288 005a 1343     		orrs	r3, r3, r2
 289 005c 0364     		str	r3, [r0, #64]
 290              	.LVL19:
1767:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 291              		.loc 2 1767 3 view .LVU78
 292              	.LBE116:
 293              	.LBE115:
 565:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 566:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Enable the write protection for RTC registers */
 567:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_EnableWriteProtection(RTCx);
 294              		.loc 1 567 3 is_stmt 1 view .LVU79
 295              	.LBB117:
 296              	.LBI117:
1058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 297              		.loc 2 1058 22 view .LVU80
 298              	.LBB118:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 299              		.loc 2 1060 3 view .LVU81
 300 005e FF23     		movs	r3, #255
 301 0060 4362     		str	r3, [r0, #36]
 302              	.LVL20:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 303              		.loc 2 1060 3 is_stmt 0 view .LVU82
 304              	.LBE118:
 305              	.LBE117:
 568:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 569:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return SUCCESS;
 306              		.loc 1 569 3 is_stmt 1 view .LVU83
 570:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 307              		.loc 1 570 1 is_stmt 0 view .LVU84
 308 0062 0020     		movs	r0, #0
 309              	.LVL21:
 310              		.loc 1 570 1 view .LVU85
 311 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 312              	.LVL22:
 313              	.L9:
 540:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 314              		.loc 1 540 7 is_stmt 1 view .LVU86
 315              	.LBB119:
 316              	.LBI119:
1821:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 317              		.loc 2 1821 22 view .LVU87
 318              	.LBB120:
1823:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Day & 0xF0U) << (RTC_ALRMAR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_ALRMAR_DU_Pos)));
 319              		.loc 2 1823 3 view .LVU88
 320 0066 036C     		ldr	r3, [r0, #64]
 321              	.LBE120:
 322              	.LBE119:
 540:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 323              		.loc 1 540 32 is_stmt 0 view .LVU89
 324 0068 0A21     		movs	r1, #10
 325              	.LVL23:
 540:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 326              		.loc 1 540 32 view .LVU90
 327 006a B4FBF1F5 		udiv	r5, r4, r1
 328 006e 01FB1541 		mls	r1, r1, r5, r4
 329 0072 41EA0511 		orr	r1, r1, r5, lsl #4
 330              	.LBB122:
 331              	.LBB121:
1823:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Day & 0xF0U) << (RTC_ALRMAR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_ALRMAR_DU_Pos)));
 332              		.loc 2 1823 3 view .LVU91
 333 0076 23F07C53 		bic	r3, r3, #1056964608
 334 007a 43EA0161 		orr	r1, r3, r1, lsl #24
 335 007e 0164     		str	r1, [r0, #64]
 336              	.LBE121:
 337              	.LBE122:
 551:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 338              		.loc 1 551 3 is_stmt 1 view .LVU92
 339              	.LVL24:
 340              	.L11:
 558:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 341              		.loc 1 558 5 view .LVU93
 561:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 342              		.loc 1 561 28 is_stmt 0 view .LVU94
 343 0080 9379     		ldrb	r3, [r2, #6]	@ zero_extendqisi2
 344              	.LVL25:
 345              	.LBB123:
 346              	.LBB108:
 347              		.loc 2 2015 3 view .LVU95
 348 0082 066C     		ldr	r6, [r0, #64]
 349              	.LBE108:
 350              	.LBE123:
 559:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 351              		.loc 1 559 28 view .LVU96
 352 0084 1479     		ldrb	r4, [r2, #4]	@ zero_extendqisi2
 353              	.LVL26:
 560:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
 354              		.loc 1 560 28 view .LVU97
 355 0086 5579     		ldrb	r5, [r2, #5]	@ zero_extendqisi2
 356              	.LVL27:
 357              	.LBB124:
 358              	.LBI106:
2006:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                             uint32_t Seconds)
 359              		.loc 2 2006 22 is_stmt 1 view .LVU98
 360              	.LBB109:
2009:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 361              		.loc 2 2009 3 view .LVU99
2011:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMAR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMAR_MNU_P
 362              		.loc 2 2011 3 view .LVU100
 363              		.loc 2 2015 3 view .LVU101
 364              	.LBE109:
 365              	.LBE124:
 561:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 366              		.loc 1 561 28 is_stmt 0 view .LVU102
 367 0088 0A21     		movs	r1, #10
 368              	.LBB125:
 369              	.LBB110:
 370              		.loc 2 2015 3 view .LVU103
 371 008a 26F07F16 		bic	r6, r6, #8323199
 372              	.LBE110:
 373              	.LBE125:
 561:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 374              		.loc 1 561 28 view .LVU104
 375 008e B3FBF1FC 		udiv	ip, r3, r1
 376 0092 01FB1C33 		mls	r3, r1, ip, r3
 377              	.LVL28:
 561:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 378              		.loc 1 561 28 view .LVU105
 379 0096 43EA0C13 		orr	r3, r3, ip, lsl #4
 380              	.LBB126:
 381              	.LBB111:
 382              		.loc 2 2015 3 view .LVU106
 383 009a 26F4FE46 		bic	r6, r6, #32512
 384 009e 3E43     		orrs	r6, r6, r7
 385              	.LBE111:
 386              	.LBE126:
 558:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 387              		.loc 1 558 5 view .LVU107
 388 00a0 DBB2     		uxtb	r3, r3
 389              	.LBB127:
 390              	.LBB112:
 391              		.loc 2 2015 3 view .LVU108
 392 00a2 3343     		orrs	r3, r3, r6
 393              	.LBE112:
 394              	.LBE127:
 559:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 395              		.loc 1 559 28 view .LVU109
 396 00a4 B4FBF1F6 		udiv	r6, r4, r1
 397 00a8 01FB1644 		mls	r4, r1, r6, r4
 398              	.LVL29:
 559:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 399              		.loc 1 559 28 view .LVU110
 400 00ac 44EA0614 		orr	r4, r4, r6, lsl #4
 558:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 401              		.loc 1 558 5 view .LVU111
 402 00b0 E4B2     		uxtb	r4, r4
 403              	.LBB128:
 404              	.LBB113:
 405              		.loc 2 2015 3 view .LVU112
 406 00b2 43EA0443 		orr	r3, r3, r4, lsl #16
 407              	.LBE113:
 408              	.LBE128:
 560:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
 409              		.loc 1 560 28 view .LVU113
 410 00b6 B5FBF1F4 		udiv	r4, r5, r1
 411 00ba 01FB1451 		mls	r1, r1, r4, r5
 412 00be 41EA0411 		orr	r1, r1, r4, lsl #4
 558:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 413              		.loc 1 558 5 view .LVU114
 414 00c2 C9B2     		uxtb	r1, r1
 415              	.LBB129:
 416              	.LBB114:
 417              		.loc 2 2015 3 view .LVU115
 418 00c4 43EA0123 		orr	r3, r3, r1, lsl #8
 419 00c8 C2E7     		b	.L20
 420              	.LVL30:
 421              	.L8:
 422              		.loc 2 2015 3 view .LVU116
 423              	.LBE114:
 424              	.LBE129:
 546:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMA_SetWeekDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
 425              		.loc 1 546 5 is_stmt 1 view .LVU117
 426              	.LBB130:
 427              	.LBI130:
1796:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 428              		.loc 2 1796 22 view .LVU118
 429              	.LBB131:
1798:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 430              		.loc 2 1798 3 view .LVU119
 431 00ca 036C     		ldr	r3, [r0, #64]
 432 00cc 43F08043 		orr	r3, r3, #1073741824
 433 00d0 0364     		str	r3, [r0, #64]
 434              	.LVL31:
1798:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 435              		.loc 2 1798 3 is_stmt 0 view .LVU120
 436              	.LBE131:
 437              	.LBE130:
 547:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 438              		.loc 1 547 5 is_stmt 1 view .LVU121
 439              	.LBB132:
 440              	.LBI132:
1854:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 441              		.loc 2 1854 22 view .LVU122
 442              	.LBB133:
1856:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 443              		.loc 2 1856 3 view .LVU123
 444 00d2 036C     		ldr	r3, [r0, #64]
 445 00d4 23F07063 		bic	r3, r3, #251658240
 446 00d8 43EA0463 		orr	r3, r3, r4, lsl #24
 447 00dc 0364     		str	r3, [r0, #64]
 448              	.LBE133:
 449              	.LBE132:
 551:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 450              		.loc 1 551 3 view .LVU124
 551:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 451              		.loc 1 551 6 is_stmt 0 view .LVU125
 452 00de 0029     		cmp	r1, #0
 453 00e0 CED0     		beq	.L11
 454 00e2 A7E7     		b	.L10
 455              		.cfi_endproc
 456              	.LFE401:
 458              		.section	.text.LL_RTC_ALMB_Init,"ax",%progbits
 459              		.align	1
 460              		.global	LL_RTC_ALMB_Init
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu fpv4-sp-d16
 466              	LL_RTC_ALMB_Init:
 467              	.LVL32:
 468              	.LFB402:
 571:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 572:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 573:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set the RTC Alarm B.
 574:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   The Alarm register can only be written when the corresponding Alarm
 575:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         is disabled (@ref LL_RTC_ALMB_Disable function).
 576:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 577:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_Format This parameter can be one of the following values:
 578:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BIN
 579:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @arg @ref LL_RTC_FORMAT_BCD
 580:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure that
 581:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *                         contains the alarm configuration parameters.
 582:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 583:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: ALARMB registers are configured
 584:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: ALARMB registers are not configured
 585:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 586:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_ALMB_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_AlarmTypeDef *RTC_Alarm
 587:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 469              		.loc 1 587 1 is_stmt 1 view -0
 470              		.cfi_startproc
 471              		@ args = 0, pretend = 0, frame = 0
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 588:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameters */
 589:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 473              		.loc 1 589 3 view .LVU127
 590:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
 474              		.loc 1 590 3 view .LVU128
 591:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_ALMB_MASK(RTC_AlarmStruct->AlarmMask));
 475              		.loc 1 591 3 view .LVU129
 592:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_ALMB_DATE_WEEKDAY_SEL(RTC_AlarmStruct->AlarmDateWeekDaySel));
 476              		.loc 1 592 3 view .LVU130
 593:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 594:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_Format == LL_RTC_FORMAT_BIN)
 477              		.loc 1 594 3 view .LVU131
 478              	.LBB158:
 479              	.LBB159:
 828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 480              		.loc 2 828 21 is_stmt 0 view .LVU132
 481 0000 8369     		ldr	r3, [r0, #24]
 482              	.LBE159:
 483              	.LBE158:
 595:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 596:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* initialize the AlarmTime for Binary format */
 597:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
 484              		.loc 1 597 5 is_stmt 1 view .LVU133
 485              	.LVL33:
 486              	.LBB161:
 487              	.LBI158:
 826:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 488              		.loc 2 826 26 view .LVU134
 489              	.LBB160:
 828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 490              		.loc 2 828 3 view .LVU135
 828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 491              		.loc 2 828 3 is_stmt 0 view .LVU136
 492              	.LBE160:
 493              	.LBE161:
 494              		.loc 1 597 8 view .LVU137
 495 0002 5B06     		lsls	r3, r3, #25
 598:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 599:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR12(RTC_AlarmStruct->AlarmTime.Hours));
 600:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
 601:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 602:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 603:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 604:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
 496              		.loc 1 604 7 is_stmt 1 view .LVU138
 587:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameters */
 497              		.loc 1 587 1 is_stmt 0 view .LVU139
 498 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 499              		.cfi_def_cfa_offset 20
 500              		.cfi_offset 4, -20
 501              		.cfi_offset 5, -16
 502              		.cfi_offset 6, -12
 503              		.cfi_offset 7, -8
 504              		.cfi_offset 14, -4
 505              		.loc 1 604 45 view .LVU140
 506 0006 5CBF     		itt	pl
 507 0008 0023     		movpl	r3, #0
 508 000a 1360     		strpl	r3, [r2]
 605:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(RTC_AlarmStruct->AlarmTime.Hours));
 606:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 607:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MINUTES(RTC_AlarmStruct->AlarmTime.Minutes));
 608:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_SECONDS(RTC_AlarmStruct->AlarmTime.Seconds));
 609:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 610:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE)
 611:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 612:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_DAY(RTC_AlarmStruct->AlarmDateWeekDay));
 613:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 614:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 615:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 616:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_WEEKDAY(RTC_AlarmStruct->AlarmDateWeekDay));
 617:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 618:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 619:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 620:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 621:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* initialize the AlarmTime for BCD format */
 622:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
 623:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 624:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR12(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
 625:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
 626:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 627:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 628:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 629:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
 630:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
 631:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 632:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 633:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MINUTES(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Minutes)));
 634:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_SECONDS(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Seconds)));
 635:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 636:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE)
 637:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 638:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_DAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
 639:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 640:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 641:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 642:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_WEEKDAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
 509              		.loc 1 642 7 is_stmt 1 view .LVU141
 643:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 644:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 645:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 646:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Disable the write protection for RTC registers */
 647:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_DisableWriteProtection(RTCx);
 510              		.loc 1 647 3 view .LVU142
 511              	.LVL34:
 512              	.LBB162:
 513              	.LBI162:
1069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 514              		.loc 2 1069 22 view .LVU143
 515              	.LBB163:
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 516              		.loc 2 1071 3 view .LVU144
 517 000c CA23     		movs	r3, #202
 518 000e 4362     		str	r3, [r0, #36]
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 519              		.loc 2 1072 3 view .LVU145
 520 0010 5323     		movs	r3, #83
 521 0012 4362     		str	r3, [r0, #36]
 522              	.LVL35:
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 523              		.loc 2 1072 3 is_stmt 0 view .LVU146
 524              	.LBE163:
 525              	.LBE162:
 648:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 649:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Select weekday selection */
 650:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE)
 526              		.loc 1 650 3 is_stmt 1 view .LVU147
 527              		.loc 1 650 6 is_stmt 0 view .LVU148
 528 0014 D368     		ldr	r3, [r2, #12]
 529 0016 147C     		ldrb	r4, [r2, #16]	@ zero_extendqisi2
 530 0018 1768     		ldr	r7, [r2]
 531 001a 002B     		cmp	r3, #0
 532 001c 55D1     		bne	.L25
 651:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 652:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Set the date for ALARM */
 653:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMB_DisableWeekday(RTCx);
 533              		.loc 1 653 5 is_stmt 1 view .LVU149
 534              	.LVL36:
 535              	.LBB164:
 536              	.LBI164:
2016:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              | RTC_ALRMAR_SU, temp);
2017:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2018:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2019:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2020:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm B Time (hour, minute and second) in BCD format
2021:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macros __LL_RTC_GET_HOUR, __LL_RTC_GET_MINUTE and __LL_RTC_GET_SECOND
2022:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * are available to get independently each parameter.
2023:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMAR       HT            LL_RTC_ALMA_GetTime\n
2024:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       HU            LL_RTC_ALMA_GetTime\n
2025:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MNT           LL_RTC_ALMA_GetTime\n
2026:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       MNU           LL_RTC_ALMA_GetTime\n
2027:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       ST            LL_RTC_ALMA_GetTime\n
2028:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMAR       SU            LL_RTC_ALMA_GetTime
2029:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2030:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Combination of hours, minutes and seconds.
2031:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2032:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetTime(RTC_TypeDef *RTCx)
2033:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2034:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((LL_RTC_ALMA_GetHour(RTCx) << RTC_OFFSET_HOUR) | (LL_RTC_ALMA_GetMinute(RTCx) <
2035:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2036:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2037:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2038:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Alarm A Mask the most-significant bits starting at this bit
2039:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note This register can be written only when ALRAE is reset in RTC_CR register,
2040:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       or in initialization mode.
2041:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMASSR     MASKSS        LL_RTC_ALMA_SetSubSecondMask
2042:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2043:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Mask Value between Min_Data=0x00 and Max_Data=0xF
2044:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2045:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2046:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetSubSecondMask(RTC_TypeDef *RTCx, uint32_t Mask)
2047:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2048:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMASSR, RTC_ALRMASSR_MASKSS, Mask << RTC_ALRMASSR_MASKSS_Pos);
2049:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2050:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2051:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2052:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm A Mask the most-significant bits starting at this bit
2053:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMASSR     MASKSS        LL_RTC_ALMA_GetSubSecondMask
2054:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2055:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xF
2056:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2057:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetSubSecondMask(RTC_TypeDef *RTCx)
2058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2059:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMASSR, RTC_ALRMASSR_MASKSS) >> RTC_ALRMASSR_MASKSS_Pos);
2060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2061:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2062:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2063:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Alarm A Sub seconds value
2064:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RCT_ALRMASSR     SS            LL_RTC_ALMA_SetSubSecond
2065:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2066:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Subsecond Value between Min_Data=0x00 and Max_Data=0x7FFF
2067:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2068:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMA_SetSubSecond(RTC_TypeDef *RTCx, uint32_t Subsecond)
2070:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMASSR, RTC_ALRMASSR_SS, Subsecond);
2072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2073:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2074:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2075:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm A Sub seconds value
2076:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RCT_ALRMASSR     SS            LL_RTC_ALMA_GetSubSecond
2077:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2078:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x7FFF
2079:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2080:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMA_GetSubSecond(RTC_TypeDef *RTCx)
2081:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2082:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMASSR, RTC_ALRMASSR_SS));
2083:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2084:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2085:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2086:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
2087:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2088:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2089:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_ALARMB ALARMB
2090:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
2091:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2092:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2093:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2094:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable Alarm B
2095:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2096:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ALRBE         LL_RTC_ALMB_Enable
2097:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2098:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2099:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2100:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_Enable(RTC_TypeDef *RTCx)
2101:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2102:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_ALRBE);
2103:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2104:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2105:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2106:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable Alarm B
2107:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2108:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ALRBE         LL_RTC_ALMB_Disable
2109:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2110:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2111:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2112:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_Disable(RTC_TypeDef *RTCx)
2113:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2114:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_ALRBE);
2115:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2116:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2117:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2118:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Specify the Alarm B masks.
2119:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       MSK4          LL_RTC_ALMB_SetMask\n
2120:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MSK3          LL_RTC_ALMB_SetMask\n
2121:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MSK2          LL_RTC_ALMB_SetMask\n
2122:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MSK1          LL_RTC_ALMB_SetMask
2123:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2124:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Mask This parameter can be a combination of the following values:
2125:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_NONE
2126:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_DATEWEEKDAY
2127:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_HOURS
2128:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_MINUTES
2129:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_SECONDS
2130:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_ALL
2131:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2132:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2133:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetMask(RTC_TypeDef *RTCx, uint32_t Mask)
2134:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2135:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, RTC_ALRMBR_MSK4 | RTC_ALRMBR_MSK3 | RTC_ALRMBR_MSK2 | RTC_ALRMBR_MSK1, M
2136:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2137:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2138:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2139:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get the Alarm B masks.
2140:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       MSK4          LL_RTC_ALMB_GetMask\n
2141:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MSK3          LL_RTC_ALMB_GetMask\n
2142:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MSK2          LL_RTC_ALMB_GetMask\n
2143:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MSK1          LL_RTC_ALMB_GetMask
2144:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2145:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be can be a combination of the following values:
2146:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_NONE
2147:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_DATEWEEKDAY
2148:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_HOURS
2149:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_MINUTES
2150:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_SECONDS
2151:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_MASK_ALL
2152:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2153:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetMask(RTC_TypeDef *RTCx)
2154:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2155:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMBR, RTC_ALRMBR_MSK4 | RTC_ALRMBR_MSK3 | RTC_ALRMBR_MSK2 | RT
2156:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2157:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2158:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2159:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable AlarmB Week day selection (DU[3:0] represents the week day. DT[1:0] is do not ca
2160:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       WDSEL         LL_RTC_ALMB_EnableWeekday
2161:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2162:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2163:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2164:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_EnableWeekday(RTC_TypeDef *RTCx)
2165:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2166:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->ALRMBR, RTC_ALRMBR_WDSEL);
2167:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2168:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2169:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2170:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable AlarmB Week day selection (DU[3:0] represents the date )
2171:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       WDSEL         LL_RTC_ALMB_DisableWeekday
2172:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2173:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2174:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2175:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_DisableWeekday(RTC_TypeDef *RTCx)
 537              		.loc 2 2175 22 view .LVU150
 538              	.LBB165:
2176:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2177:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->ALRMBR, RTC_ALRMBR_WDSEL);
 539              		.loc 2 2177 3 view .LVU151
 540 001e 836C     		ldr	r3, [r0, #72]
 541 0020 23F08043 		bic	r3, r3, #1073741824
 542 0024 8364     		str	r3, [r0, #72]
 543              	.LVL37:
 544              		.loc 2 2177 3 is_stmt 0 view .LVU152
 545              	.LBE165:
 546              	.LBE164:
 654:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (RTC_Format != LL_RTC_FORMAT_BIN)
 547              		.loc 1 654 5 is_stmt 1 view .LVU153
 548              		.loc 1 654 8 is_stmt 0 view .LVU154
 549 0026 F1B1     		cbz	r1, .L26
 655:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 656:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_ALMB_SetDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
 550              		.loc 1 656 7 is_stmt 1 view .LVU155
 551              	.LVL38:
 552              	.LBB166:
 553              	.LBI166:
2178:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2179:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2180:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2181:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM B Day in BCD format
2182:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Day from binary to BCD form
2183:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       DT            LL_RTC_ALMB_SetDay\n
2184:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       DU            LL_RTC_ALMB_SetDay
2185:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2186:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Day Value between Min_Data=0x01 and Max_Data=0x31
2187:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2188:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2189:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetDay(RTC_TypeDef *RTCx, uint32_t Day)
 554              		.loc 2 2189 22 view .LVU156
 555              	.LBB167:
2190:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2191:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, (RTC_ALRMBR_DT | RTC_ALRMBR_DU),
 556              		.loc 2 2191 3 view .LVU157
 557 0028 816C     		ldr	r1, [r0, #72]
 558              	.LVL39:
 559              		.loc 2 2191 3 is_stmt 0 view .LVU158
 560 002a 21F07C51 		bic	r1, r1, #1056964608
 561 002e 41EA0461 		orr	r1, r1, r4, lsl #24
 562 0032 8164     		str	r1, [r0, #72]
 563              	.LBE167:
 564              	.LBE166:
 657:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 658:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     else
 659:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 660:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       LL_RTC_ALMB_SetDay(RTCx, __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmDateWeekDay));
 661:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 662:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 663:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 664:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 665:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Set the week day for ALARM */
 666:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMB_EnableWeekday(RTCx);
 667:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMB_SetWeekDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
 668:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 669:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 670:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Configure the Alarm register */
 671:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (RTC_Format != LL_RTC_FORMAT_BIN)
 565              		.loc 1 671 3 is_stmt 1 view .LVU159
 566              	.LVL40:
 567              	.L27:
 672:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 673:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMB_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat, RTC_AlarmStruct->AlarmTime.
 568              		.loc 1 673 5 view .LVU160
 569              	.LBB168:
 570              	.LBI168:
2192:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Day & 0xF0U) << (RTC_ALRMBR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_ALRMBR_DU_Pos)));
2193:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2194:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2195:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2196:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM B Day in BCD format
2197:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Day from BCD to Binary form
2198:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       DT            LL_RTC_ALMB_GetDay\n
2199:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       DU            LL_RTC_ALMB_GetDay
2200:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2201:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x31
2202:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2203:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetDay(RTC_TypeDef *RTCx)
2204:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2205:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMBR, (RTC_ALRMBR_DT | RTC_ALRMBR_DU))) >> RTC_ALRMBR_DU_Pos)
2206:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2207:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2208:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2209:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM B Weekday
2210:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       DU            LL_RTC_ALMB_SetWeekDay
2211:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2212:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  WeekDay This parameter can be one of the following values:
2213:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
2214:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
2215:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
2216:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
2217:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
2218:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
2219:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
2220:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2221:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2222:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetWeekDay(RTC_TypeDef *RTCx, uint32_t WeekDay)
2223:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2224:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, RTC_ALRMBR_DU, WeekDay << RTC_ALRMBR_DU_Pos);
2225:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2226:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2227:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2228:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM B Weekday
2229:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       DU            LL_RTC_ALMB_GetWeekDay
2230:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2231:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2232:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
2233:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
2234:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
2235:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
2236:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
2237:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
2238:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
2239:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2240:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetWeekDay(RTC_TypeDef *RTCx)
2241:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2242:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMBR, RTC_ALRMBR_DU) >> RTC_ALRMBR_DU_Pos);
2243:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2244:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2245:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2246:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM B time format (AM/24-hour or PM notation)
2247:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       PM            LL_RTC_ALMB_SetTimeFormat
2248:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2249:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  TimeFormat This parameter can be one of the following values:
2250:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_TIME_FORMAT_AM
2251:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_TIME_FORMAT_PM
2252:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2253:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2254:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetTimeFormat(RTC_TypeDef *RTCx, uint32_t TimeFormat)
2255:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2256:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, RTC_ALRMBR_PM, TimeFormat);
2257:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2258:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2259:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2260:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM B time format (AM or PM notation)
2261:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       PM            LL_RTC_ALMB_GetTimeFormat
2262:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2263:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2264:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_TIME_FORMAT_AM
2265:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_TIME_FORMAT_PM
2266:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2267:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetTimeFormat(RTC_TypeDef *RTCx)
2268:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2269:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMBR, RTC_ALRMBR_PM));
2270:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2271:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2272:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2273:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM B Hours in BCD format
2274:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Hours from binary to BCD fo
2275:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       HT            LL_RTC_ALMB_SetHour\n
2276:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       HU            LL_RTC_ALMB_SetHour
2277:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2278:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Hours Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Da
2279:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2280:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2281:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetHour(RTC_TypeDef *RTCx, uint32_t Hours)
2282:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2283:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, (RTC_ALRMBR_HT | RTC_ALRMBR_HU),
2284:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Hours & 0xF0U) << (RTC_ALRMBR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_ALRMBR_HU_Pos
2285:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2286:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2287:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2288:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM B Hours in BCD format
2289:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Hours from BCD to Binary fo
2290:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       HT            LL_RTC_ALMB_GetHour\n
2291:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       HU            LL_RTC_ALMB_GetHour
2292:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2293:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Data=0x2
2294:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2295:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetHour(RTC_TypeDef *RTCx)
2296:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2297:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMBR, (RTC_ALRMBR_HT | RTC_ALRMBR_HU))) >> RTC_ALRMBR_HU_Pos)
2298:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2299:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2300:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2301:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM B Minutes in BCD format
2302:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Minutes from binary to BCD 
2303:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       MNT           LL_RTC_ALMB_SetMinute\n
2304:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MNU           LL_RTC_ALMB_SetMinute
2305:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2306:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Minutes between Min_Data=0x00 and Max_Data=0x59
2307:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2308:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2309:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetMinute(RTC_TypeDef *RTCx, uint32_t Minutes)
2310:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2311:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, (RTC_ALRMBR_MNT | RTC_ALRMBR_MNU),
2312:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Minutes & 0xF0U) << (RTC_ALRMBR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMBR_M
2313:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2314:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2315:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2316:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM B Minutes in BCD format
2317:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Minutes from BCD to Binary 
2318:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       MNT           LL_RTC_ALMB_GetMinute\n
2319:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MNU           LL_RTC_ALMB_GetMinute
2320:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2321:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
2322:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2323:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetMinute(RTC_TypeDef *RTCx)
2324:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2325:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMBR, (RTC_ALRMBR_MNT | RTC_ALRMBR_MNU))) >> RTC_ALRMBR_MNU_P
2326:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2327:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2328:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2329:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set ALARM B Seconds in BCD format
2330:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BIN2BCD is available to convert Seconds from binary to BCD 
2331:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       ST            LL_RTC_ALMB_SetSecond\n
2332:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       SU            LL_RTC_ALMB_SetSecond
2333:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2334:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Seconds Value between Min_Data=0x00 and Max_Data=0x59
2335:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2336:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2337:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetSecond(RTC_TypeDef *RTCx, uint32_t Seconds)
2338:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2339:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, (RTC_ALRMBR_ST | RTC_ALRMBR_SU),
2340:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Seconds & 0xF0U) << (RTC_ALRMBR_ST_Pos - 4U)) | ((Seconds & 0x0FU) << RTC_ALRMBR_SU
2341:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2342:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2343:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2344:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get ALARM B Seconds in BCD format
2345:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Seconds from BCD to Binary 
2346:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       ST            LL_RTC_ALMB_GetSecond\n
2347:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       SU            LL_RTC_ALMB_GetSecond
2348:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2349:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
2350:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetSecond(RTC_TypeDef *RTCx)
2352:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2353:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((READ_BIT(RTCx->ALRMBR, (RTC_ALRMBR_ST | RTC_ALRMBR_SU))) >> RTC_ALRMBR_SU_Pos)
2354:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2356:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2357:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Alarm B Time (hour, minute and second) in BCD format
2358:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       PM            LL_RTC_ALMB_ConfigTime\n
2359:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       HT            LL_RTC_ALMB_ConfigTime\n
2360:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       HU            LL_RTC_ALMB_ConfigTime\n
2361:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MNT           LL_RTC_ALMB_ConfigTime\n
2362:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MNU           LL_RTC_ALMB_ConfigTime\n
2363:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       ST            LL_RTC_ALMB_ConfigTime\n
2364:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       SU            LL_RTC_ALMB_ConfigTime
2365:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2366:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Format12_24 This parameter can be one of the following values:
2367:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_TIME_FORMAT_AM
2368:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_ALMB_TIME_FORMAT_PM
2369:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Hours Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Da
2370:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Minutes Value between Min_Data=0x00 and Max_Data=0x59
2371:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Seconds Value between Min_Data=0x00 and Max_Data=0x59
2372:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2373:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2374:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_ConfigTime(RTC_TypeDef *RTCx, uint32_t Format12_24, uint32_t Hours
 571              		.loc 2 2374 22 view .LVU161
 572              	.LBB169:
2375:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                             uint32_t Seconds)
2376:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2377:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t temp;
 573              		.loc 2 2377 3 view .LVU162
2378:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   temp = Format12_24 | (((Hours & 0xF0U) << (RTC_ALRMBR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_ALR
 574              		.loc 2 2379 3 view .LVU163
2380:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMBR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMBR_MNU_P
2381:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Seconds & 0xF0U) << (RTC_ALRMBR_ST_Pos - 4U)) | ((Seconds & 0x0FU) << RTC_ALRMBR_SU_Pos
2382:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2383:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBR, RTC_ALRMBR_PM | RTC_ALRMBR_HT | RTC_ALRMBR_HU | RTC_ALRMBR_MNT | RTC_ALR
 575              		.loc 2 2383 3 view .LVU164
 576              	.LBE169:
 577              	.LBE168:
 578              		.loc 1 673 5 is_stmt 0 view .LVU165
 579 0034 9379     		ldrb	r3, [r2, #6]	@ zero_extendqisi2
 580              	.LVL41:
 581              		.loc 1 673 5 view .LVU166
 582 0036 1479     		ldrb	r4, [r2, #4]	@ zero_extendqisi2
 583              	.LVL42:
 584              	.LBB172:
 585              	.LBB170:
 586              		.loc 2 2383 3 view .LVU167
 587 0038 816C     		ldr	r1, [r0, #72]
2379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMBR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMBR_MNU_P
 588              		.loc 2 2379 8 view .LVU168
 589 003a 3B43     		orrs	r3, r3, r7
 590              	.LVL43:
2379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMBR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMBR_MNU_P
 591              		.loc 2 2379 8 view .LVU169
 592 003c 43EA0443 		orr	r3, r3, r4, lsl #16
 593              	.LBE170:
 594              	.LBE172:
 595              		.loc 1 673 5 view .LVU170
 596 0040 5479     		ldrb	r4, [r2, #5]	@ zero_extendqisi2
 597              	.LVL44:
 598              	.LBB173:
 599              	.LBB171:
 600              		.loc 2 2383 3 view .LVU171
 601 0042 21F07F11 		bic	r1, r1, #8323199
2379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMBR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMBR_MNU_P
 602              		.loc 2 2379 8 view .LVU172
 603 0046 43EA0423 		orr	r3, r3, r4, lsl #8
 604              		.loc 2 2383 3 view .LVU173
 605 004a 21F4FE41 		bic	r1, r1, #32512
 606 004e 0B43     		orrs	r3, r3, r1
 607              	.LVL45:
 608              	.L37:
 609              		.loc 2 2383 3 view .LVU174
 610              	.LBE171:
 611              	.LBE173:
 612              	.LBB174:
 613              	.LBB175:
 614 0050 8364     		str	r3, [r0, #72]
 615              	.LBE175:
 616              	.LBE174:
 674:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            RTC_AlarmStruct->AlarmTime.Minutes, RTC_AlarmStruct->AlarmTime.Seconds);
 675:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 676:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   else
 677:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 678:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMB_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat,
 679:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 680:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 681:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
 682:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 683:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Set ALARM mask */
 684:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_ALMB_SetMask(RTCx, RTC_AlarmStruct->AlarmMask);
 617              		.loc 1 684 3 is_stmt 1 view .LVU175
 618              	.LVL46:
 619              	.LBB183:
 620              	.LBI183:
2133:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 621              		.loc 2 2133 22 view .LVU176
 622              	.LBB184:
2135:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 623              		.loc 2 2135 3 view .LVU177
 624 0052 836C     		ldr	r3, [r0, #72]
 625 0054 9268     		ldr	r2, [r2, #8]
 626              	.LVL47:
2135:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 627              		.loc 2 2135 3 is_stmt 0 view .LVU178
 628 0056 03F07F33 		and	r3, r3, #2139062143
 629 005a 1343     		orrs	r3, r3, r2
 630 005c 8364     		str	r3, [r0, #72]
 631              	.LVL48:
2135:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 632              		.loc 2 2135 3 view .LVU179
 633              	.LBE184:
 634              	.LBE183:
 685:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 686:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Enable the write protection for RTC registers */
 687:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_EnableWriteProtection(RTCx);
 635              		.loc 1 687 3 is_stmt 1 view .LVU180
 636              	.LBB185:
 637              	.LBI185:
1058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 638              		.loc 2 1058 22 view .LVU181
 639              	.LBB186:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 640              		.loc 2 1060 3 view .LVU182
 641 005e FF23     		movs	r3, #255
 642 0060 4362     		str	r3, [r0, #36]
 643              	.LVL49:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 644              		.loc 2 1060 3 is_stmt 0 view .LVU183
 645              	.LBE186:
 646              	.LBE185:
 688:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 689:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return SUCCESS;
 647              		.loc 1 689 3 is_stmt 1 view .LVU184
 690:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 648              		.loc 1 690 1 is_stmt 0 view .LVU185
 649 0062 0020     		movs	r0, #0
 650              	.LVL50:
 651              		.loc 1 690 1 view .LVU186
 652 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 653              	.LVL51:
 654              	.L26:
 660:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 655              		.loc 1 660 7 is_stmt 1 view .LVU187
 656              	.LBB187:
 657              	.LBI187:
2189:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 658              		.loc 2 2189 22 view .LVU188
 659              	.LBB188:
2191:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Day & 0xF0U) << (RTC_ALRMBR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_ALRMBR_DU_Pos)));
 660              		.loc 2 2191 3 view .LVU189
 661 0066 836C     		ldr	r3, [r0, #72]
 662              	.LBE188:
 663              	.LBE187:
 660:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 664              		.loc 1 660 32 is_stmt 0 view .LVU190
 665 0068 0A21     		movs	r1, #10
 666              	.LVL52:
 660:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 667              		.loc 1 660 32 view .LVU191
 668 006a B4FBF1F5 		udiv	r5, r4, r1
 669 006e 01FB1541 		mls	r1, r1, r5, r4
 670 0072 41EA0511 		orr	r1, r1, r5, lsl #4
 671              	.LBB190:
 672              	.LBB189:
2191:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              (((Day & 0xF0U) << (RTC_ALRMBR_DT_Pos - 4U)) | ((Day & 0x0FU) << RTC_ALRMBR_DU_Pos)));
 673              		.loc 2 2191 3 view .LVU192
 674 0076 23F07C53 		bic	r3, r3, #1056964608
 675 007a 43EA0161 		orr	r1, r3, r1, lsl #24
 676 007e 8164     		str	r1, [r0, #72]
 677              	.LBE189:
 678              	.LBE190:
 671:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 679              		.loc 1 671 3 is_stmt 1 view .LVU193
 680              	.LVL53:
 681              	.L28:
 678:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 682              		.loc 1 678 5 view .LVU194
 681:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 683              		.loc 1 681 28 is_stmt 0 view .LVU195
 684 0080 9379     		ldrb	r3, [r2, #6]	@ zero_extendqisi2
 685              	.LVL54:
 686              	.LBB191:
 687              	.LBB176:
 688              		.loc 2 2383 3 view .LVU196
 689 0082 866C     		ldr	r6, [r0, #72]
 690              	.LBE176:
 691              	.LBE191:
 679:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 692              		.loc 1 679 28 view .LVU197
 693 0084 1479     		ldrb	r4, [r2, #4]	@ zero_extendqisi2
 694              	.LVL55:
 680:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
 695              		.loc 1 680 28 view .LVU198
 696 0086 5579     		ldrb	r5, [r2, #5]	@ zero_extendqisi2
 697              	.LVL56:
 698              	.LBB192:
 699              	.LBI174:
2374:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                             uint32_t Seconds)
 700              		.loc 2 2374 22 is_stmt 1 view .LVU199
 701              	.LBB177:
2377:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 702              		.loc 2 2377 3 view .LVU200
2379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Minutes & 0xF0U) << (RTC_ALRMBR_MNT_Pos - 4U)) | ((Minutes & 0x0FU) << RTC_ALRMBR_MNU_P
 703              		.loc 2 2379 3 view .LVU201
 704              		.loc 2 2383 3 view .LVU202
 705              	.LBE177:
 706              	.LBE192:
 681:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 707              		.loc 1 681 28 is_stmt 0 view .LVU203
 708 0088 0A21     		movs	r1, #10
 709              	.LBB193:
 710              	.LBB178:
 711              		.loc 2 2383 3 view .LVU204
 712 008a 26F07F16 		bic	r6, r6, #8323199
 713              	.LBE178:
 714              	.LBE193:
 681:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 715              		.loc 1 681 28 view .LVU205
 716 008e B3FBF1FC 		udiv	ip, r3, r1
 717 0092 01FB1C33 		mls	r3, r1, ip, r3
 718              	.LVL57:
 681:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 719              		.loc 1 681 28 view .LVU206
 720 0096 43EA0C13 		orr	r3, r3, ip, lsl #4
 721              	.LBB194:
 722              	.LBB179:
 723              		.loc 2 2383 3 view .LVU207
 724 009a 26F4FE46 		bic	r6, r6, #32512
 725 009e 3E43     		orrs	r6, r6, r7
 726              	.LBE179:
 727              	.LBE194:
 678:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 728              		.loc 1 678 5 view .LVU208
 729 00a0 DBB2     		uxtb	r3, r3
 730              	.LBB195:
 731              	.LBB180:
 732              		.loc 2 2383 3 view .LVU209
 733 00a2 3343     		orrs	r3, r3, r6
 734              	.LBE180:
 735              	.LBE195:
 679:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 736              		.loc 1 679 28 view .LVU210
 737 00a4 B4FBF1F6 		udiv	r6, r4, r1
 738 00a8 01FB1644 		mls	r4, r1, r6, r4
 739              	.LVL58:
 679:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
 740              		.loc 1 679 28 view .LVU211
 741 00ac 44EA0614 		orr	r4, r4, r6, lsl #4
 678:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 742              		.loc 1 678 5 view .LVU212
 743 00b0 E4B2     		uxtb	r4, r4
 744              	.LBB196:
 745              	.LBB181:
 746              		.loc 2 2383 3 view .LVU213
 747 00b2 43EA0443 		orr	r3, r3, r4, lsl #16
 748              	.LBE181:
 749              	.LBE196:
 680:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
 750              		.loc 1 680 28 view .LVU214
 751 00b6 B5FBF1F4 		udiv	r4, r5, r1
 752 00ba 01FB1451 		mls	r1, r1, r4, r5
 753 00be 41EA0411 		orr	r1, r1, r4, lsl #4
 678:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
 754              		.loc 1 678 5 view .LVU215
 755 00c2 C9B2     		uxtb	r1, r1
 756              	.LBB197:
 757              	.LBB182:
 758              		.loc 2 2383 3 view .LVU216
 759 00c4 43EA0123 		orr	r3, r3, r1, lsl #8
 760 00c8 C2E7     		b	.L37
 761              	.LVL59:
 762              	.L25:
 763              		.loc 2 2383 3 view .LVU217
 764              	.LBE182:
 765              	.LBE197:
 666:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_ALMB_SetWeekDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
 766              		.loc 1 666 5 is_stmt 1 view .LVU218
 767              	.LBB198:
 768              	.LBI198:
2164:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 769              		.loc 2 2164 22 view .LVU219
 770              	.LBB199:
2166:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 771              		.loc 2 2166 3 view .LVU220
 772 00ca 836C     		ldr	r3, [r0, #72]
 773 00cc 43F08043 		orr	r3, r3, #1073741824
 774 00d0 8364     		str	r3, [r0, #72]
 775              	.LVL60:
2166:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 776              		.loc 2 2166 3 is_stmt 0 view .LVU221
 777              	.LBE199:
 778              	.LBE198:
 667:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 779              		.loc 1 667 5 is_stmt 1 view .LVU222
 780              	.LBB200:
 781              	.LBI200:
2222:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 782              		.loc 2 2222 22 view .LVU223
 783              	.LBB201:
2224:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 784              		.loc 2 2224 3 view .LVU224
 785 00d2 836C     		ldr	r3, [r0, #72]
 786 00d4 23F07063 		bic	r3, r3, #251658240
 787 00d8 43EA0463 		orr	r3, r3, r4, lsl #24
 788 00dc 8364     		str	r3, [r0, #72]
 789              	.LBE201:
 790              	.LBE200:
 671:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 791              		.loc 1 671 3 view .LVU225
 671:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 792              		.loc 1 671 6 is_stmt 0 view .LVU226
 793 00de 0029     		cmp	r1, #0
 794 00e0 CED0     		beq	.L28
 795 00e2 A7E7     		b	.L27
 796              		.cfi_endproc
 797              	.LFE402:
 799              		.section	.text.LL_RTC_ALMA_StructInit,"ax",%progbits
 800              		.align	1
 801              		.global	LL_RTC_ALMA_StructInit
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 807              	LL_RTC_ALMA_StructInit:
 808              	.LVL61:
 809              	.LFB403:
 691:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 692:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 693:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set each @ref LL_RTC_AlarmTypeDef of ALARMA field to default value (Time = 00h:00mn:00s
 694:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         Day = 1st day of the month/Mask = all fields are masked).
 695:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure which will be initializ
 696:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval None
 697:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 698:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** void LL_RTC_ALMA_StructInit(LL_RTC_AlarmTypeDef *RTC_AlarmStruct)
 699:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 810              		.loc 1 699 1 is_stmt 1 view -0
 811              		.cfi_startproc
 812              		@ args = 0, pretend = 0, frame = 0
 813              		@ frame_needed = 0, uses_anonymous_args = 0
 814              		@ link register save eliminated.
 700:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Alarm Time Settings : Time = 00h:00mn:00sec */
 701:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.TimeFormat = LL_RTC_ALMA_TIME_FORMAT_AM;
 815              		.loc 1 701 3 view .LVU228
 702:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Hours      = 0U;
 816              		.loc 1 702 3 view .LVU229
 703:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Minutes    = 0U;
 817              		.loc 1 703 3 view .LVU230
 704:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Seconds    = 0U;
 818              		.loc 1 704 3 view .LVU231
 701:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Hours      = 0U;
 819              		.loc 1 701 41 is_stmt 0 view .LVU232
 820 0000 0023     		movs	r3, #0
 705:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 706:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Alarm Day Settings : Day = 1st day of the month */
 707:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmDateWeekDaySel = LL_RTC_ALMA_DATEWEEKDAYSEL_DATE;
 708:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmDateWeekDay    = 1U;
 821              		.loc 1 708 40 view .LVU233
 822 0002 0122     		movs	r2, #1
 701:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Hours      = 0U;
 823              		.loc 1 701 41 view .LVU234
 824 0004 0360     		str	r3, [r0]
 702:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Minutes    = 0U;
 825              		.loc 1 702 41 view .LVU235
 826 0006 8380     		strh	r3, [r0, #4]	@ movhi
 704:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 827              		.loc 1 704 41 view .LVU236
 828 0008 8371     		strb	r3, [r0, #6]
 707:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmDateWeekDay    = 1U;
 829              		.loc 1 707 3 is_stmt 1 view .LVU237
 707:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmDateWeekDay    = 1U;
 830              		.loc 1 707 40 is_stmt 0 view .LVU238
 831 000a C360     		str	r3, [r0, #12]
 832              		.loc 1 708 3 is_stmt 1 view .LVU239
 833              		.loc 1 708 40 is_stmt 0 view .LVU240
 834 000c 0274     		strb	r2, [r0, #16]
 709:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 710:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Alarm Masks Settings : Mask =  all fields are not masked */
 711:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmMask           = LL_RTC_ALMA_MASK_NONE;
 835              		.loc 1 711 3 is_stmt 1 view .LVU241
 836              		.loc 1 711 40 is_stmt 0 view .LVU242
 837 000e 8360     		str	r3, [r0, #8]
 712:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 838              		.loc 1 712 1 view .LVU243
 839 0010 7047     		bx	lr
 840              		.cfi_endproc
 841              	.LFE403:
 843              		.section	.text.LL_RTC_ALMB_StructInit,"ax",%progbits
 844              		.align	1
 845              		.global	LL_RTC_ALMB_StructInit
 846              		.syntax unified
 847              		.thumb
 848              		.thumb_func
 849              		.fpu fpv4-sp-d16
 851              	LL_RTC_ALMB_StructInit:
 852              	.LFB409:
 853              		.cfi_startproc
 854              		@ args = 0, pretend = 0, frame = 0
 855              		@ frame_needed = 0, uses_anonymous_args = 0
 856              		@ link register save eliminated.
 857 0000 FFF7FEBF 		b	LL_RTC_ALMA_StructInit
 858              		.cfi_endproc
 859              	.LFE409:
 861              		.section	.text.LL_RTC_EnterInitMode,"ax",%progbits
 862              		.align	1
 863              		.global	LL_RTC_EnterInitMode
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu fpv4-sp-d16
 869              	LL_RTC_EnterInitMode:
 870              	.LVL62:
 871              	.LFB405:
 713:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 714:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 715:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Set each @ref LL_RTC_AlarmTypeDef of ALARMB field to default value (Time = 00h:00mn:00s
 716:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         Day = 1st day of the month/Mask = all fields are masked).
 717:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure which will be initializ
 718:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval None
 719:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 720:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** void LL_RTC_ALMB_StructInit(LL_RTC_AlarmTypeDef *RTC_AlarmStruct)
 721:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 722:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Alarm Time Settings : Time = 00h:00mn:00sec */
 723:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.TimeFormat = LL_RTC_ALMB_TIME_FORMAT_AM;
 724:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Hours      = 0U;
 725:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Minutes    = 0U;
 726:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmTime.Seconds    = 0U;
 727:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 728:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Alarm Day Settings : Day = 1st day of the month */
 729:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmDateWeekDaySel = LL_RTC_ALMB_DATEWEEKDAYSEL_DATE;
 730:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmDateWeekDay    = 1U;
 731:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 732:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Alarm Masks Settings : Mask =  all fields are not masked */
 733:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   RTC_AlarmStruct->AlarmMask           = LL_RTC_ALMB_MASK_NONE;
 734:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 735:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 736:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 737:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Enters the RTC Initialization mode.
 738:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   The RTC Initialization mode is write protected, use the
 739:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @ref LL_RTC_DisableWriteProtection before calling this function.
 740:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 741:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 742:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: RTC is in Init mode
 743:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: RTC is not in Init mode
 744:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 745:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_EnterInitMode(RTC_TypeDef *RTCx)
 746:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 872              		.loc 1 746 1 is_stmt 1 view -0
 873              		.cfi_startproc
 874              		@ args = 0, pretend = 0, frame = 8
 875              		@ frame_needed = 0, uses_anonymous_args = 0
 747:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   __IO uint32_t timeout = RTC_INITMODE_TIMEOUT;
 876              		.loc 1 747 3 view .LVU245
 746:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   __IO uint32_t timeout = RTC_INITMODE_TIMEOUT;
 877              		.loc 1 746 1 is_stmt 0 view .LVU246
 878 0000 13B5     		push	{r0, r1, r4, lr}
 879              		.cfi_def_cfa_offset 16
 880              		.cfi_offset 4, -8
 881              		.cfi_offset 14, -4
 882              		.loc 1 747 17 view .LVU247
 883 0002 4FF47A73 		mov	r3, #1000
 884 0006 0193     		str	r3, [sp, #4]
 748:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = SUCCESS;
 885              		.loc 1 748 3 is_stmt 1 view .LVU248
 886              	.LVL63:
 749:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   uint32_t tmp;
 887              		.loc 1 749 3 view .LVU249
 750:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 751:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameter */
 752:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 888              		.loc 1 752 3 view .LVU250
 753:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 754:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check if the Initialization mode is set */
 755:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (LL_RTC_IsActiveFlag_INIT(RTCx) == 0U)
 889              		.loc 1 755 3 view .LVU251
 890              	.LBB212:
 891              	.LBI212:
2384:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****              | RTC_ALRMBR_SU, temp);
2385:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2386:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2387:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2388:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm B Time (hour, minute and second) in BCD format
2389:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macros __LL_RTC_GET_HOUR, __LL_RTC_GET_MINUTE and __LL_RTC_GET_SECOND
2390:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * are available to get independently each parameter.
2391:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBR       HT            LL_RTC_ALMB_GetTime\n
2392:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       HU            LL_RTC_ALMB_GetTime\n
2393:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MNT           LL_RTC_ALMB_GetTime\n
2394:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       MNU           LL_RTC_ALMB_GetTime\n
2395:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       ST            LL_RTC_ALMB_GetTime\n
2396:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_ALRMBR       SU            LL_RTC_ALMB_GetTime
2397:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2398:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Combination of hours, minutes and seconds.
2399:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2400:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetTime(RTC_TypeDef *RTCx)
2401:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2402:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)((LL_RTC_ALMB_GetHour(RTCx) << RTC_OFFSET_HOUR) | (LL_RTC_ALMB_GetMinute(RTCx) <
2403:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2404:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2405:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2406:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Alarm B Mask the most-significant bits starting at this bit
2407:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note This register can be written only when ALRBE is reset in RTC_CR register,
2408:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *       or in initialization mode.
2409:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBSSR     MASKSS        LL_RTC_ALMB_SetSubSecondMask
2410:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2411:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Mask Value between Min_Data=0x00 and Max_Data=0xF
2412:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2413:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2414:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetSubSecondMask(RTC_TypeDef *RTCx, uint32_t Mask)
2415:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2416:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBSSR, RTC_ALRMBSSR_MASKSS, Mask << RTC_ALRMBSSR_MASKSS_Pos);
2417:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2418:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2419:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2420:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm B Mask the most-significant bits starting at this bit
2421:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBSSR     MASKSS        LL_RTC_ALMB_GetSubSecondMask
2422:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2423:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xF
2424:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2425:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetSubSecondMask(RTC_TypeDef *RTCx)
2426:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2427:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMBSSR, RTC_ALRMBSSR_MASKSS)  >> RTC_ALRMBSSR_MASKSS_Pos);
2428:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2429:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2430:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2431:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Alarm B Sub seconds value
2432:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBSSR     SS            LL_RTC_ALMB_SetSubSecond
2433:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2434:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Subsecond Value between Min_Data=0x00 and Max_Data=0x7FFF
2435:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2436:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2437:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ALMB_SetSubSecond(RTC_TypeDef *RTCx, uint32_t Subsecond)
2438:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2439:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->ALRMBSSR, RTC_ALRMBSSR_SS, Subsecond);
2440:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2441:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2442:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2443:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm B Sub seconds value
2444:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ALRMBSSR     SS            LL_RTC_ALMB_GetSubSecond
2445:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2446:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x7FFF
2447:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2448:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_ALMB_GetSubSecond(RTC_TypeDef *RTCx)
2449:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2450:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->ALRMBSSR, RTC_ALRMBSSR_SS));
2451:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2452:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2453:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2454:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
2455:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2456:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2457:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Timestamp Timestamp
2458:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
2459:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2460:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2461:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2462:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable internal event timestamp
2463:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2464:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ITSE          LL_RTC_TS_EnableInternalEvent
2465:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2466:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2467:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2468:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TS_EnableInternalEvent(RTC_TypeDef *RTCx)
2469:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2470:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_ITSE);
2471:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2472:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2473:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2474:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable internal event timestamp
2475:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2476:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ITSE          LL_RTC_TS_DisableInternalEvent
2477:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2478:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2479:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2480:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TS_DisableInternalEvent(RTC_TypeDef *RTCx)
2481:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2482:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_ITSE);
2483:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2484:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2485:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2486:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable Timestamp
2487:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2488:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ITSE           LL_RTC_TS_Enable
2489:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2490:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2491:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2492:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TS_Enable(RTC_TypeDef *RTCx)
2493:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2494:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_TSE);
2495:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2496:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2497:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2498:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable Timestamp
2499:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2500:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ITSE           LL_RTC_TS_Disable
2501:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2502:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2503:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2504:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TS_Disable(RTC_TypeDef *RTCx)
2505:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2506:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_TSE);
2507:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2508:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2509:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2510:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Time-stamp event active edge
2511:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note TSE must be reset when TSEDGE is changed to avoid unwanted TSF setting
2513:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ITSEDGE        LL_RTC_TS_SetActiveEdge
2514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2515:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Edge This parameter can be one of the following values:
2516:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIMESTAMP_EDGE_RISING
2517:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIMESTAMP_EDGE_FALLING
2518:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2519:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2520:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TS_SetActiveEdge(RTC_TypeDef *RTCx, uint32_t Edge)
2521:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2522:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CR, RTC_CR_TSEDGE, Edge);
2523:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2524:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2525:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2526:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Time-stamp event active edge
2527:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
2528:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           ITSEDGE        LL_RTC_TS_GetActiveEdge
2529:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2530:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2531:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIMESTAMP_EDGE_RISING
2532:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TIMESTAMP_EDGE_FALLING
2533:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2534:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetActiveEdge(RTC_TypeDef *RTCx)
2535:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2536:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CR, RTC_CR_TSEDGE));
2537:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2538:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2539:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2540:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp AM/PM notation (AM or 24-hour format)
2541:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSTR         PM            LL_RTC_TS_GetTimeFormat
2542:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2543:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2544:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TS_TIME_FORMAT_AM
2545:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TS_TIME_FORMAT_PM
2546:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2547:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetTimeFormat(RTC_TypeDef *RTCx)
2548:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2549:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSTR, RTC_TSTR_PM));
2550:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2551:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2552:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2553:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp Hours in BCD format
2554:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Hours from BCD to Binary fo
2555:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSTR         HT            LL_RTC_TS_GetHour\n
2556:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         HU            LL_RTC_TS_GetHour
2557:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2558:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x12 or between Min_Data=0x00 and Max_Data=0x2
2559:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2560:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetHour(RTC_TypeDef *RTCx)
2561:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2562:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSTR, RTC_TSTR_HT | RTC_TSTR_HU) >> RTC_TSTR_HU_Pos);
2563:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2564:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2565:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2566:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp Minutes in BCD format
2567:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Minutes from BCD to Binary 
2568:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSTR         MNT           LL_RTC_TS_GetMinute\n
2569:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         HU           LL_RTC_TS_GetMinute
2570:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2571:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
2572:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2573:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetMinute(RTC_TypeDef *RTCx)
2574:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2575:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSTR, RTC_TSTR_MNT | RTC_TSTR_MNU) >> RTC_TSTR_MNU_Pos);
2576:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2577:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2578:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2579:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp Seconds in BCD format
2580:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Seconds from BCD to Binary 
2581:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSTR         ST            LL_RTC_TS_GetSecond\n
2582:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         HU            LL_RTC_TS_GetSecond
2583:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2584:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0x59
2585:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2586:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetSecond(RTC_TypeDef *RTCx)
2587:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2588:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSTR, RTC_TSTR_ST | RTC_TSTR_SU));
2589:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2590:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2591:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2592:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp time (hour, minute and second) in BCD format
2593:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macros __LL_RTC_GET_HOUR, __LL_RTC_GET_MINUTE and __LL_RTC_GET_SECOND
2594:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * are available to get independently each parameter.
2595:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSTR         HT            LL_RTC_TS_GetTime\n
2596:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         HU            LL_RTC_TS_GetTime\n
2597:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         MNT           LL_RTC_TS_GetTime\n
2598:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         MNU           LL_RTC_TS_GetTime\n
2599:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         ST            LL_RTC_TS_GetTime\n
2600:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSTR         SU            LL_RTC_TS_GetTime
2601:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2602:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Combination of hours, minutes and seconds.
2603:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2604:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetTime(RTC_TypeDef *RTCx)
2605:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2606:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSTR,
2607:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                              RTC_TSTR_HT | RTC_TSTR_HU | RTC_TSTR_MNT | RTC_TSTR_MNU | RTC_TSTR_ST 
2608:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2609:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2610:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2611:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp Week day
2612:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSDR         WDU           LL_RTC_TS_GetWeekDay
2613:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2614:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2615:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_MONDAY
2616:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_TUESDAY
2617:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_WEDNESDAY
2618:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_THURSDAY
2619:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_FRIDAY
2620:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SATURDAY
2621:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WEEKDAY_SUNDAY
2622:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2623:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetWeekDay(RTC_TypeDef *RTCx)
2624:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2625:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSDR, RTC_TSDR_WDU) >> RTC_TSDR_WDU_Pos);
2626:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2627:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2628:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2629:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp Month in BCD format
2630:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Month from BCD to Binary fo
2631:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSDR         MT            LL_RTC_TS_GetMonth\n
2632:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSDR         MU            LL_RTC_TS_GetMonth
2633:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2634:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2635:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JANUARY
2636:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_FEBRUARY
2637:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MARCH
2638:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_APRIL
2639:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_MAY
2640:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JUNE
2641:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_JULY
2642:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_AUGUST
2643:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_SEPTEMBER
2644:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_OCTOBER
2645:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_NOVEMBER
2646:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_MONTH_DECEMBER
2647:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2648:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetMonth(RTC_TypeDef *RTCx)
2649:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2650:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSDR, RTC_TSDR_MT | RTC_TSDR_MU) >> RTC_TSDR_MU_Pos);
2651:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2652:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2653:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2654:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp Day in BCD format
2655:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macro __LL_RTC_CONVERT_BCD2BIN is available to convert Day from BCD to Binary form
2656:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSDR         DT            LL_RTC_TS_GetDay\n
2657:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSDR         DU            LL_RTC_TS_GetDay
2658:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2659:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x01 and Max_Data=0x31
2660:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2661:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetDay(RTC_TypeDef *RTCx)
2662:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2663:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSDR, RTC_TSDR_DT | RTC_TSDR_DU));
2664:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2665:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2666:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2667:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Timestamp date (WeekDay, Day and Month) in BCD format
2668:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note helper macros __LL_RTC_GET_WEEKDAY, __LL_RTC_GET_MONTH,
2669:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * and __LL_RTC_GET_DAY are available to get independently each parameter.
2670:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSDR         WDU           LL_RTC_TS_GetDate\n
2671:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSDR         MT            LL_RTC_TS_GetDate\n
2672:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSDR         MU            LL_RTC_TS_GetDate\n
2673:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSDR         DT            LL_RTC_TS_GetDate\n
2674:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_TSDR         DU            LL_RTC_TS_GetDate
2675:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2676:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Combination of Weekday, Day and Month
2677:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2678:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetDate(RTC_TypeDef *RTCx)
2679:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2680:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSDR, RTC_TSDR_WDU | RTC_TSDR_MT | RTC_TSDR_MU | RTC_TSDR_DT | R
2681:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2682:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2683:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2684:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get time-stamp sub second value
2685:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_TSDR         SS            LL_RTC_TS_GetSubSecond
2686:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xFFFF
2688:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2689:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TS_GetSubSecond(RTC_TypeDef *RTCx)
2690:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2691:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->TSSSR, RTC_TSSSR_SS));
2692:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2693:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2694:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2695:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Activate timestamp on tamper detection event
2696:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR       TAMPTS        LL_RTC_TS_EnableOnTamper
2697:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2698:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2699:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2700:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TS_EnableOnTamper(RTC_TypeDef *RTCx)
2701:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2702:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_TAMPTS);
2703:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2704:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2705:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2706:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable timestamp on tamper detection event
2707:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR       TAMPTS        LL_RTC_TS_DisableOnTamper
2708:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2709:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2710:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2711:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TS_DisableOnTamper(RTC_TypeDef *RTCx)
2712:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2713:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_TAMPTS);
2714:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2715:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2716:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2717:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2718:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
2719:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2720:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2721:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Tamper Tamper
2722:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
2723:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2724:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2725:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2726:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable TAMPx input detection
2727:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR1       TAMP1E        LL_RTC_TAMPER_Enable\n
2728:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       TAMP2E...     LL_RTC_TAMPER_Enable
2729:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2730:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Tamper This parameter can be a combination of the following values:
2731:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_1
2732:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_2
2733:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2734:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2735:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2736:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_Enable(RTC_TypeDef *RTCx, uint32_t Tamper)
2737:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2738:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2739:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(TAMP->CR1, Tamper);
2740:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2741:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2742:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2743:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear TAMPx input detection
2744:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR1       TAMP1E         LL_RTC_TAMPER_Disable\n
2745:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       TAMP2E...      LL_RTC_TAMPER_Disable
2746:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2747:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Tamper This parameter can be a combination of the following values:
2748:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_1
2749:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_2
2750:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2751:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2752:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2753:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_Disable(RTC_TypeDef *RTCx, uint32_t Tamper)
2754:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2755:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2756:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(TAMP->CR1, Tamper);
2757:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2758:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2759:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2760:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable Tamper mask flag
2761:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Associated Tamper IT must not enabled when tamper mask is set.
2762:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR2       TAMP1MF       LL_RTC_TAMPER_EnableMask\n
2763:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR2       TAMP2MF...    LL_RTC_TAMPER_EnableMask
2764:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2765:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Mask This parameter can be a combination of the following values:
2766:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_MASK_TAMPER1
2767:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_MASK_TAMPER2
2768:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2769:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2770:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2771:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_EnableMask(RTC_TypeDef *RTCx, uint32_t Mask)
2772:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2773:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2774:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(TAMP->CR2, Mask);
2775:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2776:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2777:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2778:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable Tamper mask flag
2779:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR2       TAMP1MF       LL_RTC_TAMPER_DisableMask\n
2780:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR2       TAMP2MF...    LL_RTC_TAMPER_DisableMask
2781:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2782:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Mask This parameter can be a combination of the following values:
2783:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_MASK_TAMPER1
2784:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_MASK_TAMPER2
2785:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2786:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2787:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2788:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_DisableMask(RTC_TypeDef *RTCx, uint32_t Mask)
2789:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2790:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2791:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(TAMP->CR2, Mask);
2792:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2793:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2794:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2795:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable backup register erase after Tamper event detection
2796:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR2       TAMP1NOERASE     LL_RTC_TAMPER_EnableEraseBKP\n
2797:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR2       TAMP2NOERASE...  LL_RTC_TAMPER_EnableEraseBKP
2798:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2799:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Tamper This parameter can be a combination of the following values:
2800:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_NOERASE_TAMPER1
2801:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_NOERASE_TAMPER2
2802:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2803:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2804:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2805:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_EnableEraseBKP(RTC_TypeDef *RTCx, uint32_t Tamper)
2806:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2807:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2808:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(TAMP->CR2, Tamper);
2809:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2810:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2811:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2812:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable backup register erase after Tamper event detection
2813:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR2       TAMP1NOERASE     LL_RTC_TAMPER_DisableEraseBKP\n
2814:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR2       TAMP2NOERASE...  LL_RTC_TAMPER_DisableEraseBKP
2815:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2816:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Tamper This parameter can be a combination of the following values:
2817:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_NOERASE_TAMPER1
2818:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_NOERASE_TAMPER2
2819:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2820:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2821:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2822:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_DisableEraseBKP(RTC_TypeDef *RTCx, uint32_t Tamper)
2823:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2824:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2825:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(TAMP->CR2, Tamper);
2826:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2827:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2829:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable RTC_TAMPx pull-up disable (Disable precharge of RTC_TAMPx pins)
2830:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPPUDIS     LL_RTC_TAMPER_DisablePullUp
2831:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2832:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2833:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2834:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_DisablePullUp(RTC_TypeDef *RTCx)
2835:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2836:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2837:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(TAMP->FLTCR, TAMP_FLTCR_TAMPPUDIS);
2838:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2839:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2840:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2841:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable RTC_TAMPx pull-up disable ( Precharge RTC_TAMPx pins before sampling)
2842:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPPUDIS     LL_RTC_TAMPER_EnablePullUp
2843:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2844:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2845:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2846:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_EnablePullUp(RTC_TypeDef *RTCx)
2847:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2848:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2849:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(TAMP->FLTCR, TAMP_FLTCR_TAMPPUDIS);
2850:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2851:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2852:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2853:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set RTC_TAMPx precharge duration
2854:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPPRCH      LL_RTC_TAMPER_SetPrecharge
2855:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2856:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Duration This parameter can be one of the following values:
2857:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_1RTCCLK
2858:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_2RTCCLK
2859:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_4RTCCLK
2860:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_8RTCCLK
2861:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2862:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2863:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_SetPrecharge(RTC_TypeDef *RTCx, uint32_t Duration)
2864:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2865:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2866:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(TAMP->FLTCR, TAMP_FLTCR_TAMPPRCH, Duration);
2867:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2868:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2869:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2870:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get RTC_TAMPx precharge duration
2871:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPPRCH      LL_RTC_TAMPER_GetPrecharge
2872:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2873:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2874:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_1RTCCLK
2875:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_2RTCCLK
2876:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_4RTCCLK
2877:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_DURATION_8RTCCLK
2878:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2879:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TAMPER_GetPrecharge(RTC_TypeDef *RTCx)
2880:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2881:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2882:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(TAMP->FLTCR, TAMP_FLTCR_TAMPPRCH));
2883:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2884:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2885:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2886:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set RTC_TAMPx filter count
2887:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPFLT       LL_RTC_TAMPER_SetFilterCount
2888:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2889:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  FilterCount This parameter can be one of the following values:
2890:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_DISABLE
2891:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_2SAMPLE
2892:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_4SAMPLE
2893:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_8SAMPLE
2894:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2895:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2896:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_SetFilterCount(RTC_TypeDef *RTCx, uint32_t FilterCount)
2897:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2898:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2899:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(TAMP->FLTCR, TAMP_FLTCR_TAMPFLT, FilterCount);
2900:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2901:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2902:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2903:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get RTC_TAMPx filter count
2904:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPFLT       LL_RTC_TAMPER_GetFilterCount
2905:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2906:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2907:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_DISABLE
2908:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_2SAMPLE
2909:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_4SAMPLE
2910:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_FILTER_8SAMPLE
2911:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TAMPER_GetFilterCount(RTC_TypeDef *RTCx)
2913:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2914:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(TAMP->FLTCR, TAMP_FLTCR_TAMPFLT));
2916:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2917:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2918:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2919:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Tamper sampling frequency
2920:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPFREQ      LL_RTC_TAMPER_SetSamplingFreq
2921:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2922:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  SamplingFreq This parameter can be one of the following values:
2923:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_32768
2924:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_16384
2925:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_8192
2926:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_4096
2927:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_2048
2928:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_1024
2929:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_512
2930:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_256
2931:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2932:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2933:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_SetSamplingFreq(RTC_TypeDef *RTCx, uint32_t SamplingFreq)
2934:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2935:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2936:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(TAMP->FLTCR, TAMP_FLTCR_TAMPFREQ, SamplingFreq);
2937:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2938:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2939:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2940:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Tamper sampling frequency
2941:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_FLTCR       TAMPFREQ      LL_RTC_TAMPER_GetSamplingFreq
2942:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2943:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
2944:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_32768
2945:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_16384
2946:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_8192
2947:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_4096
2948:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_2048
2949:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_1024
2950:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_512
2951:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_SAMPLFREQDIV_256
2952:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2953:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_TAMPER_GetSamplingFreq(RTC_TypeDef *RTCx)
2954:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2955:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2956:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(TAMP->FLTCR, TAMP_FLTCR_TAMPFREQ));
2957:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2958:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2959:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2960:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable Active level for Tamper input
2961:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR2       TAMP1TRG       LL_RTC_TAMPER_EnableActiveLevel\n
2962:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR2       TAMP2TRG...    LL_RTC_TAMPER_EnableActiveLevel
2963:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2964:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Tamper This parameter can be a combination of the following values:
2965:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ACTIVELEVEL_TAMP1
2966:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ACTIVELEVEL_TAMP2
2967:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2968:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2969:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2970:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_EnableActiveLevel(RTC_TypeDef *RTCx, uint32_t Tamper)
2971:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2972:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2973:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(TAMP->CR2, Tamper);
2974:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2975:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2976:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable Active level for Tamper input
2978:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR2       TAMP1TRG      LL_RTC_TAMPER_DisableActiveLevel\n
2979:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR2       TAMP2TRG...   LL_RTC_TAMPER_DisableActiveLevel
2980:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
2981:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Tamper This parameter can be a combination of the following values:
2982:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ACTIVELEVEL_TAMP1
2983:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ACTIVELEVEL_TAMP2
2984:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
2985:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
2986:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2987:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_DisableActiveLevel(RTC_TypeDef *RTCx, uint32_t Tamper)
2988:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
2989:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
2990:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(TAMP->CR2, Tamper);
2991:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
2992:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2993:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
2994:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
2995:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
2996:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
2997:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Internal_Tamper Internal Tamper
2998:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
2999:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3000:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3001:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3002:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable internal tamper detection.
3003:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR1       ITAMP1E       LL_RTC_TAMPER_ITAMP_Enable\n
3004:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP3E       LL_RTC_TAMPER_ITAMP_Enable\n
3005:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP4E       LL_RTC_TAMPER_ITAMP_Enable\n
3006:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP5E       LL_RTC_TAMPER_ITAMP_Enable\n
3007:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP6E       LL_RTC_TAMPER_ITAMP_Enable\n
3008:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP7E...    LL_RTC_TAMPER_ITAMP_Enable
3009:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3010:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  InternalTamper This parameter can be a combination of the following values:
3011:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP1
3012:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP3
3013:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP4
3014:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP5
3015:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP6
3016:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   @if RTC_TAMP_INT_7_SUPPORT
3017:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP7
3018:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   @endif
3019:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
3020:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3021:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3022:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_ITAMP_Enable(RTC_TypeDef *RTCx, uint32_t InternalTamper)
3023:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3024:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
3025:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(TAMP->CR1, InternalTamper);
3026:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3027:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3028:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3029:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable internal tamper detection.
3030:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_CR1       ITAMP1E       LL_RTC_TAMPER_ITAMP_Disable\n
3031:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP3E       LL_RTC_TAMPER_ITAMP_Disable\n
3032:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP4E       LL_RTC_TAMPER_ITAMP_Disable\n
3033:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP5E       LL_RTC_TAMPER_ITAMP_Disable\n
3034:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP6E       LL_RTC_TAMPER_ITAMP_Disable\n
3035:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         TAMP_CR1       ITAMP7E...    LL_RTC_TAMPER_ITAMP_Disable
3036:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3037:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  InternalTamper This parameter can be a combination of the following values:
3038:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP1
3039:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP3
3040:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP4
3041:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP5
3042:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP6
3043:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   @if RTC_TAMP_INT_7_SUPPORT
3044:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_TAMPER_ITAMP7
3045:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   @endif
3046:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *
3047:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3048:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3049:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_TAMPER_ITAMP_Disable(RTC_TypeDef *RTCx, uint32_t InternalTamper)
3050:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3051:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
3052:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(TAMP->CR1, InternalTamper);
3053:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3054:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3055:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3056:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
3057:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3059:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Wakeup Wakeup
3061:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
3062:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3063:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3064:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3065:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Enable Wakeup timer
3066:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
3067:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           WUTE          LL_RTC_WAKEUP_Enable
3068:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3070:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_WAKEUP_Enable(RTC_TypeDef *RTCx)
3072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3073:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->CR, RTC_CR_WUTE);
3074:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3075:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3076:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3077:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Disable Wakeup timer
3078:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
3079:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           WUTE          LL_RTC_WAKEUP_Disable
3080:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3081:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3082:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3083:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_WAKEUP_Disable(RTC_TypeDef *RTCx)
3084:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3085:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   CLEAR_BIT(RTCx->CR, RTC_CR_WUTE);
3086:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3087:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3088:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3089:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Check if Wakeup timer is enabled or not
3090:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           WUTE          LL_RTC_WAKEUP_IsEnabled
3091:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3092:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3093:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3094:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_WAKEUP_IsEnabled(RTC_TypeDef *RTCx)
3095:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3096:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->CR, RTC_CR_WUTE) == (RTC_CR_WUTE)) ? 1U : 0U);
3097:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3098:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3099:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3100:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Select Wakeup clock
3101:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
3102:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit can be written only when RTC_CR WUTE bit = 0 and RTC_ICSR WUTWF bit = 1
3103:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           WUCKSEL       LL_RTC_WAKEUP_SetClock
3104:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3105:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  WakeupClock This parameter can be one of the following values:
3106:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_16
3107:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_8
3108:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_4
3109:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_2
3110:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_CKSPRE
3111:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_CKSPRE_WUT
3112:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3113:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3114:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_WAKEUP_SetClock(RTC_TypeDef *RTCx, uint32_t WakeupClock)
3115:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3116:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CR, RTC_CR_WUCKSEL, WakeupClock);
3117:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3118:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3119:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3120:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Wakeup clock
3121:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           WUCKSEL       LL_RTC_WAKEUP_GetClock
3122:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3123:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
3124:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_16
3125:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_8
3126:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_4
3127:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_DIV_2
3128:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_CKSPRE
3129:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_WAKEUPCLOCK_CKSPRE_WUT
3130:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3131:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_WAKEUP_GetClock(RTC_TypeDef *RTCx)
3132:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3133:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CR, RTC_CR_WUCKSEL));
3134:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3135:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3136:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3137:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Wakeup auto-reload value
3138:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit can be written only when WUTWF is set to 1 in RTC_ICSR
3139:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_WUTR         WUT           LL_RTC_WAKEUP_SetAutoReload
3140:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3141:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Value Value between Min_Data=0x00 and Max_Data=0xFFFF
3142:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3143:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3144:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_WAKEUP_SetAutoReload(RTC_TypeDef *RTCx, uint32_t Value)
3145:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3146:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->WUTR, RTC_WUTR_WUT, Value);
3147:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3148:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3149:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3150:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Wakeup auto-reload value
3151:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_WUTR         WUT           LL_RTC_WAKEUP_GetAutoReload
3152:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3153:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xFFFF
3154:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3155:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_WAKEUP_GetAutoReload(RTC_TypeDef *RTCx)
3156:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3157:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->WUTR, RTC_WUTR_WUT));
3158:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3159:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3160:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3161:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
3162:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3163:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3164:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Backup_Registers Backup_Registers
3165:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
3166:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3167:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3168:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3169:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Writes a data in a specified Backup data register.
3170:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_BKPxR        BKP           LL_RTC_BKP_SetRegister
3171:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3172:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  BackupRegister This parameter can be one of the following values:
3173:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR0
3174:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR1
3175:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR2
3176:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR3
3177:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         ...
3178:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Data Value between Min_Data=0x00 and Max_Data=0xFFFFFFFF
3179:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3180:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3181:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_BKP_SetRegister(RTC_TypeDef *RTCx, uint32_t BackupRegister, uint32_t Da
3182:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3183:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t tmp = 0U;
3184:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3185:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
3186:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3187:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   tmp = (uint32_t)(&(TAMP->BKP0R));
3188:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   tmp += (BackupRegister * 4U);
3189:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3190:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   /* Write the specified register */
3191:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *(__IO uint32_t *)tmp = (uint32_t)Data;
3192:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3193:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3194:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3195:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Reads data from the specified RTC Backup data Register.
3196:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll TAMP_BKPxR        BKP           LL_RTC_BKP_GetRegister
3197:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3198:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  BackupRegister This parameter can be one of the following values:
3199:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR0
3200:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR1
3201:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR2
3202:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_BKP_DR3
3203:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         ...
3204:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data=0xFFFFFFFF
3205:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3206:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_BKP_GetRegister(RTC_TypeDef *RTCx, uint32_t BackupRegister)
3207:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3208:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   register uint32_t tmp = 0U;
3209:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3210:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   UNUSED(RTCx);
3211:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3212:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   tmp = (uint32_t)(&(TAMP->BKP0R));
3213:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   tmp += (BackupRegister * 4U);
3214:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3215:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   /* Read the specified register */
3216:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (*(__IO uint32_t *)tmp);
3217:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3218:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3219:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3220:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
3221:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3222:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3223:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_Calibration Calibration
3224:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
3225:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3226:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3227:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3228:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Calibration output frequency (1 Hz or 512 Hz)
3229:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Bits are write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
3230:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           COE           LL_RTC_CAL_SetOutputFreq\n
3231:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_CR           COSEL         LL_RTC_CAL_SetOutputFreq
3232:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3233:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Frequency This parameter can be one of the following values:
3234:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_OUTPUT_NONE
3235:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_OUTPUT_1HZ
3236:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_OUTPUT_512HZ
3237:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3238:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3239:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_CAL_SetOutputFreq(RTC_TypeDef *RTCx, uint32_t Frequency)
3240:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3241:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CR, RTC_CR_COE | RTC_CR_COSEL, Frequency);
3242:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3243:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3244:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3245:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Calibration output frequency (1 Hz or 512 Hz)
3246:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CR           COE           LL_RTC_CAL_GetOutputFreq\n
3247:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_CR           COSEL         LL_RTC_CAL_GetOutputFreq
3248:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3249:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
3250:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_OUTPUT_NONE
3251:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_OUTPUT_1HZ
3252:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_OUTPUT_512HZ
3253:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3254:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_CAL_GetOutputFreq(RTC_TypeDef *RTCx)
3255:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3256:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CR, RTC_CR_COE | RTC_CR_COSEL));
3257:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3258:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3259:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3260:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Insert or not One RTCCLK pulse every 2exp11 pulses (frequency increased by 488.5 ppm)
3261:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
3262:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note Bit can be written only when RECALPF is set to 0 in RTC_ICSR
3263:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CALR         CALP          LL_RTC_CAL_SetPulse
3264:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3265:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Pulse This parameter can be one of the following values:
3266:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_INSERTPULSE_NONE
3267:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_INSERTPULSE_SET
3268:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3269:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3270:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_CAL_SetPulse(RTC_TypeDef *RTCx, uint32_t Pulse)
3271:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3272:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CALR, RTC_CALR_CALP, Pulse);
3273:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3274:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3275:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3276:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Check if one RTCCLK has been inserted or not every 2exp11 pulses (frequency increased b
3277:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CALR         CALP          LL_RTC_CAL_IsPulseInserted
3278:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3279:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3280:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3281:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_CAL_IsPulseInserted(RTC_TypeDef *RTCx)
3282:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3283:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->CALR, RTC_CALR_CALP) == (RTC_CALR_CALP)) ? 1U : 0U);
3284:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3285:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3286:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3287:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set the calibration cycle period
3288:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
3289:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit can be written only when RECALPF is set to 0 in RTC_ICSR
3290:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CALR         CALW8         LL_RTC_CAL_SetPeriod\n
3291:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_CALR         CALW16        LL_RTC_CAL_SetPeriod
3292:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3293:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  Period This parameter can be one of the following values:
3294:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_PERIOD_32SEC
3295:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_PERIOD_16SEC
3296:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_PERIOD_8SEC
3297:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3298:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3299:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_CAL_SetPeriod(RTC_TypeDef *RTCx, uint32_t Period)
3300:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3301:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CALR, RTC_CALR_CALW8 | RTC_CALR_CALW16, Period);
3302:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3303:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3304:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3305:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get the calibration cycle period
3306:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CALR         CALW8         LL_RTC_CAL_GetPeriod\n
3307:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         RTC_CALR         CALW16        LL_RTC_CAL_GetPeriod
3308:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3309:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Returned value can be one of the following values:
3310:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_PERIOD_32SEC
3311:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_PERIOD_16SEC
3312:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   *         @arg @ref LL_RTC_CALIB_PERIOD_8SEC
3313:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3314:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_CAL_GetPeriod(RTC_TypeDef *RTCx)
3315:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3316:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CALR, RTC_CALR_CALW8 | RTC_CALR_CALW16));
3317:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3318:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3319:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3320:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Set Calibration minus
3321:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit is write-protected. @ref LL_RTC_DisableWriteProtection function should be called be
3322:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @note   Bit can be written only when RECALPF is set to 0 in RTC_ICSR
3323:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CALR         CALM          LL_RTC_CAL_SetMinus
3324:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3325:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  CalibMinus Value between Min_Data=0x00 and Max_Data=0x1FF
3326:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3327:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3328:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_CAL_SetMinus(RTC_TypeDef *RTCx, uint32_t CalibMinus)
3329:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3330:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   MODIFY_REG(RTCx->CALR, RTC_CALR_CALM, CalibMinus);
3331:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3332:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3333:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3334:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Calibration minus
3335:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_CALR         CALM          LL_RTC_CAL_GetMinus
3336:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3337:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval Value between Min_Data=0x00 and Max_Data= 0x1FF
3338:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3339:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_CAL_GetMinus(RTC_TypeDef *RTCx)
3340:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3341:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return (uint32_t)(READ_BIT(RTCx->CALR, RTC_CALR_CALM));
3342:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3343:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3344:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3345:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @}
3346:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3347:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3348:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /** @defgroup RTC_LL_EF_FLAG_Management FLAG_Management
3349:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @{
3350:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3352:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3353:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Internal Time-stamp flag
3354:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SR          ITSF          LL_RTC_IsActiveFlag_ITS
3355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3356:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3357:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3358:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_ITS(RTC_TypeDef *RTCx)
3359:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3360:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->SR, RTC_SR_ITSF) == (RTC_SR_ITSF)) ? 1U : 0U);
3361:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3362:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3363:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3364:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Recalibration pending Flag
3365:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ICSR          RECALPF       LL_RTC_IsActiveFlag_RECALP
3366:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3367:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3368:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3369:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_RECALP(RTC_TypeDef *RTCx)
3370:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3371:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->ICSR, RTC_ICSR_RECALPF) == (RTC_ICSR_RECALPF)) ? 1U : 0U);
3372:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3373:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3374:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3375:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Time-stamp overflow flag
3376:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SR          TSOVF         LL_RTC_IsActiveFlag_TSOV
3377:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3378:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3379:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3380:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_TSOV(RTC_TypeDef *RTCx)
3381:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3382:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->SR, RTC_SR_TSOVF) == (RTC_SR_TSOVF)) ? 1U : 0U);
3383:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3384:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3385:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3386:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Time-stamp flag
3387:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SR          TSF           LL_RTC_IsActiveFlag_TS
3388:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3389:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3390:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3391:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_TS(RTC_TypeDef *RTCx)
3392:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3393:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->SR, RTC_SR_TSF) == (RTC_SR_TSF)) ? 1U : 0U);
3394:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3395:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3396:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3397:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Wakeup timer flag
3398:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SR          WUTF          LL_RTC_IsActiveFlag_WUT
3399:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3400:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3401:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3402:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_WUT(RTC_TypeDef *RTCx)
3403:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3404:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->SR, RTC_SR_WUTF) == (RTC_SR_WUTF)) ? 1U : 0U);
3405:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3406:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3407:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3408:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm B flag
3409:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SR          ALRBF         LL_RTC_IsActiveFlag_ALRB
3410:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3411:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3412:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3413:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_ALRB(RTC_TypeDef *RTCx)
3414:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3415:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->SR, RTC_SR_ALRBF) == (RTC_SR_ALRBF)) ? 1U : 0U);
3416:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3417:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3418:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3419:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Alarm A flag
3420:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SR          ALRAF         LL_RTC_IsActiveFlag_ALRA
3421:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3422:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3423:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3424:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_ALRA(RTC_TypeDef *RTCx)
3425:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3426:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->SR, RTC_SR_ALRAF) == (RTC_SR_ALRAF)) ? 1U : 0U);
3427:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3428:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3429:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3430:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear Internal Time-stamp flag
3431:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SCR          CITSF          LL_RTC_ClearFlag_ITS
3432:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3433:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3434:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3435:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ClearFlag_ITS(RTC_TypeDef *RTCx)
3436:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3437:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->SCR, RTC_SCR_CITSF);
3438:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3439:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3440:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3441:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear Time-stamp overflow flag
3442:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SCR          CTSOVF         LL_RTC_ClearFlag_TSOV
3443:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3444:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3445:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3446:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ClearFlag_TSOV(RTC_TypeDef *RTCx)
3447:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3448:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->SCR, RTC_SCR_CTSOVF);
3449:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3450:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3451:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3452:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear Time-stamp flag
3453:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SCR          CTSF           LL_RTC_ClearFlag_TS
3454:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3455:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3456:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3457:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ClearFlag_TS(RTC_TypeDef *RTCx)
3458:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3459:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->SCR, RTC_SCR_CTSF);
3460:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3461:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3462:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3463:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear Wakeup timer flag
3464:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SCR          CWUTF          LL_RTC_ClearFlag_WUT
3465:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3466:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3467:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3468:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ClearFlag_WUT(RTC_TypeDef *RTCx)
3469:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3470:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->SCR, RTC_SCR_CWUTF);
3471:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3472:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3473:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3474:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear Alarm B flag
3475:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SCR          CALRBF         LL_RTC_ClearFlag_ALRB
3476:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3477:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3478:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3479:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ClearFlag_ALRB(RTC_TypeDef *RTCx)
3480:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3481:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->SCR, RTC_SCR_CALRBF);
3482:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3483:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3484:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3485:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear Alarm A flag
3486:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_SCR          CALRAF         LL_RTC_ClearFlag_ALRA
3487:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3488:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3489:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3490:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ClearFlag_ALRA(RTC_TypeDef *RTCx)
3491:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3492:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   SET_BIT(RTCx->SCR, RTC_SCR_CALRAF);
3493:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3494:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3495:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3496:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Initialization flag
3497:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ICSR          INITF         LL_RTC_IsActiveFlag_INIT
3498:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3499:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3500:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3501:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_INIT(RTC_TypeDef *RTCx)
 892              		.loc 2 3501 26 view .LVU252
 893              	.LBB213:
3502:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3503:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->ICSR, RTC_ICSR_INITF) == (RTC_ICSR_INITF)) ? 1U : 0U);
 894              		.loc 2 3503 3 view .LVU253
 895              		.loc 2 3503 12 is_stmt 0 view .LVU254
 896 0008 C368     		ldr	r3, [r0, #12]
 897              		.loc 2 3503 75 view .LVU255
 898 000a 13F04003 		ands	r3, r3, #64
 899              	.LBE213:
 900              	.LBE212:
 746:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   __IO uint32_t timeout = RTC_INITMODE_TIMEOUT;
 901              		.loc 1 746 1 view .LVU256
 902 000e 0146     		mov	r1, r0
 903              	.LBB215:
 904              	.LBB214:
 905              		.loc 2 3503 75 view .LVU257
 906 0010 1BD1     		bne	.L46
 907              	.LVL64:
 908              		.loc 2 3503 75 view .LVU258
 909              	.LBE214:
 910              	.LBE215:
 756:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 757:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Set the Initialization mode */
 758:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     LL_RTC_EnableInitMode(RTCx);
 911              		.loc 1 758 5 is_stmt 1 view .LVU259
 912              	.LBB216:
 913              	.LBI216:
 900:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 914              		.loc 2 900 22 view .LVU260
 915              	.LBB217:
 903:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 916              		.loc 2 903 3 view .LVU261
 917 0012 4FF0FF32 		mov	r2, #-1
 918 0016 C260     		str	r2, [r0, #12]
 919              	.LVL65:
 903:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 920              		.loc 2 903 3 is_stmt 0 view .LVU262
 921              	.LBE217:
 922              	.LBE216:
 759:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 760:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Wait till RTC is in INIT state and if Time out is reached exit */
 761:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     tmp = LL_RTC_IsActiveFlag_INIT(RTCx);
 923              		.loc 1 761 5 is_stmt 1 view .LVU263
 924              	.LBB218:
 925              	.LBI218:
3501:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 926              		.loc 2 3501 26 view .LVU264
 927              	.LBB219:
 928              		.loc 2 3503 3 view .LVU265
 929              		.loc 2 3503 12 is_stmt 0 view .LVU266
 930 0018 C268     		ldr	r2, [r0, #12]
 931              	.LBE219:
 932              	.LBE218:
 933              	.LBB221:
 934              	.LBB222:
 935              		.file 3 "../../..\\CubeG4\\include/stm32g4xx_ll_cortex.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @file    stm32g4xx_ll_cortex.h
   4:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @brief   Header file of CORTEX LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   @verbatim
   7:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   ==============================================================================
   8:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****                      ##### How to use this driver #####
   9:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   ==============================================================================
  10:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****     [..]
  11:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****     The LL CORTEX driver contains a set of generic APIs that can be
  12:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****     used by user:
  13:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****       (+) SYSTICK configuration used by @ref LL_mDelay and @ref LL_Init1msTick
  14:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****           functions
  15:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****       (+) Low power mode configuration (SCB register of Cortex-MCU)
  16:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****       (+) MPU API to configure and enable regions
  17:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****       (+) API to access to MCU info (CPUID register)
  18:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****       (+) API to enable fault handler (SHCSR accesses)
  19:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   @endverbatim
  21:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   ******************************************************************************
  22:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @attention
  23:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   *
  24:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  25:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * All rights reserved.</center></h2>
  26:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   *
  27:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  28:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * the "License"; You may not use this file except in compliance with the
  29:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * License. You may obtain a copy of the License at:
  30:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   *                        opensource.org/licenses/BSD-3-Clause
  31:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   *
  32:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   ******************************************************************************
  33:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  36:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #ifndef __STM32G4xx_LL_CORTEX_H
  37:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define __STM32G4xx_LL_CORTEX_H
  38:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  39:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #ifdef __cplusplus
  40:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** extern "C" {
  41:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #endif
  42:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  43:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Includes ------------------------------------------------------------------*/
  44:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #include "stm32g4xx.h"
  45:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  46:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @addtogroup STM32G4xx_LL_Driver
  47:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
  48:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  49:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  50:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL CORTEX
  51:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
  52:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  53:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  54:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Private types -------------------------------------------------------------*/
  55:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Private variables ---------------------------------------------------------*/
  56:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  57:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Private constants ---------------------------------------------------------*/
  58:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  59:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Private macros ------------------------------------------------------------*/
  60:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  61:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Exported types ------------------------------------------------------------*/
  62:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Exported constants --------------------------------------------------------*/
  63:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_Exported_Constants CORTEX Exported Constants
  64:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
  65:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  66:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  67:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_CLKSOURCE_HCLK SYSTICK Clock Source
  68:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
  69:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  70:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_SYSTICK_CLKSOURCE_HCLK_DIV8     0x00000000U                 /*!< AHB clock divided by 8 
  71:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_SYSTICK_CLKSOURCE_HCLK          SysTick_CTRL_CLKSOURCE_Msk  /*!< AHB clock selected as S
  72:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
  73:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
  74:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  75:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  76:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_FAULT Handler Fault type
  77:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
  78:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  79:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_HANDLER_FAULT_USG               SCB_SHCSR_USGFAULTENA_Msk              /*!< Usage fault 
  80:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_HANDLER_FAULT_BUS               SCB_SHCSR_BUSFAULTENA_Msk              /*!< Bus fault */
  81:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_HANDLER_FAULT_MEM               SCB_SHCSR_MEMFAULTENA_Msk              /*!< Memory manag
  82:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
  83:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
  84:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  85:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  86:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #if __MPU_PRESENT
  87:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  88:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_CTRL_HFNMI_PRIVDEF MPU Control
  89:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
  90:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  91:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_CTRL_HFNMI_PRIVDEF_NONE     0x00000000U                                       /*!< D
  92:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_CTRL_HARDFAULT_NMI          MPU_CTRL_HFNMIENA_Msk                             /*!< E
  93:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_CTRL_PRIVILEGED_DEFAULT     MPU_CTRL_PRIVDEFENA_Msk                           /*!< E
  94:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_CTRL_HFNMI_PRIVDEF          (MPU_CTRL_HFNMIENA_Msk | MPU_CTRL_PRIVDEFENA_Msk) /*!< E
  95:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
  96:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
  97:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
  98:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
  99:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_REGION MPU Region Number
 100:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 101:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 102:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER0              0x00U /*!< REGION Number 0 */
 103:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER1              0x01U /*!< REGION Number 1 */
 104:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER2              0x02U /*!< REGION Number 2 */
 105:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER3              0x03U /*!< REGION Number 3 */
 106:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER4              0x04U /*!< REGION Number 4 */
 107:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER5              0x05U /*!< REGION Number 5 */
 108:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER6              0x06U /*!< REGION Number 6 */
 109:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NUMBER7              0x07U /*!< REGION Number 7 */
 110:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 111:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 112:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 113:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 114:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_REGION_SIZE MPU Region Size
 115:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 116:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 117:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_32B             (0x04U << MPU_RASR_SIZE_Pos) /*!< 32B Size of the MPU pr
 118:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_64B             (0x05U << MPU_RASR_SIZE_Pos) /*!< 64B Size of the MPU pr
 119:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_128B            (0x06U << MPU_RASR_SIZE_Pos) /*!< 128B Size of the MPU p
 120:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_256B            (0x07U << MPU_RASR_SIZE_Pos) /*!< 256B Size of the MPU p
 121:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_512B            (0x08U << MPU_RASR_SIZE_Pos) /*!< 512B Size of the MPU p
 122:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_1KB             (0x09U << MPU_RASR_SIZE_Pos) /*!< 1KB Size of the MPU pr
 123:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_2KB             (0x0AU << MPU_RASR_SIZE_Pos) /*!< 2KB Size of the MPU pr
 124:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_4KB             (0x0BU << MPU_RASR_SIZE_Pos) /*!< 4KB Size of the MPU pr
 125:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_8KB             (0x0CU << MPU_RASR_SIZE_Pos) /*!< 8KB Size of the MPU pr
 126:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_16KB            (0x0DU << MPU_RASR_SIZE_Pos) /*!< 16KB Size of the MPU p
 127:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_32KB            (0x0EU << MPU_RASR_SIZE_Pos) /*!< 32KB Size of the MPU p
 128:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_64KB            (0x0FU << MPU_RASR_SIZE_Pos) /*!< 64KB Size of the MPU p
 129:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_128KB           (0x10U << MPU_RASR_SIZE_Pos) /*!< 128KB Size of the MPU 
 130:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_256KB           (0x11U << MPU_RASR_SIZE_Pos) /*!< 256KB Size of the MPU 
 131:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_512KB           (0x12U << MPU_RASR_SIZE_Pos) /*!< 512KB Size of the MPU 
 132:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_1MB             (0x13U << MPU_RASR_SIZE_Pos) /*!< 1MB Size of the MPU pr
 133:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_2MB             (0x14U << MPU_RASR_SIZE_Pos) /*!< 2MB Size of the MPU pr
 134:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_4MB             (0x15U << MPU_RASR_SIZE_Pos) /*!< 4MB Size of the MPU pr
 135:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_8MB             (0x16U << MPU_RASR_SIZE_Pos) /*!< 8MB Size of the MPU pr
 136:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_16MB            (0x17U << MPU_RASR_SIZE_Pos) /*!< 16MB Size of the MPU p
 137:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_32MB            (0x18U << MPU_RASR_SIZE_Pos) /*!< 32MB Size of the MPU p
 138:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_64MB            (0x19U << MPU_RASR_SIZE_Pos) /*!< 64MB Size of the MPU p
 139:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_128MB           (0x1AU << MPU_RASR_SIZE_Pos) /*!< 128MB Size of the MPU 
 140:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_256MB           (0x1BU << MPU_RASR_SIZE_Pos) /*!< 256MB Size of the MPU 
 141:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_512MB           (0x1CU << MPU_RASR_SIZE_Pos) /*!< 512MB Size of the MPU 
 142:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_1GB             (0x1DU << MPU_RASR_SIZE_Pos) /*!< 1GB Size of the MPU pr
 143:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_2GB             (0x1EU << MPU_RASR_SIZE_Pos) /*!< 2GB Size of the MPU pr
 144:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_SIZE_4GB             (0x1FU << MPU_RASR_SIZE_Pos) /*!< 4GB Size of the MPU pr
 145:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 146:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 147:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 148:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 149:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_REGION_PRIVILEDGES MPU Region Privileges
 150:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 151:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 152:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_NO_ACCESS            (0x00U << MPU_RASR_AP_Pos) /*!< No access*/
 153:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_PRIV_RW              (0x01U << MPU_RASR_AP_Pos) /*!< RW privileged (privilege
 154:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_PRIV_RW_URO          (0x02U << MPU_RASR_AP_Pos) /*!< RW privileged - RO user 
 155:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_FULL_ACCESS          (0x03U << MPU_RASR_AP_Pos) /*!< RW privileged & user (Fu
 156:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_PRIV_RO              (0x05U << MPU_RASR_AP_Pos) /*!< RO privileged (privilege
 157:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_REGION_PRIV_RO_URO          (0x06U << MPU_RASR_AP_Pos) /*!< RO privileged & user (re
 158:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 159:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 160:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 161:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 162:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_TEX MPU TEX Level
 163:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 164:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 165:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_TEX_LEVEL0                  (0x00U << MPU_RASR_TEX_Pos) /*!< b000 for TEX bits */
 166:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_TEX_LEVEL1                  (0x01U << MPU_RASR_TEX_Pos) /*!< b001 for TEX bits */
 167:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_TEX_LEVEL2                  (0x02U << MPU_RASR_TEX_Pos) /*!< b010 for TEX bits */
 168:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_TEX_LEVEL4                  (0x04U << MPU_RASR_TEX_Pos) /*!< b100 for TEX bits */
 169:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 170:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 171:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 172:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 173:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_INSTRUCTION_ACCESS MPU Instruction Access
 174:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 175:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 176:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_INSTRUCTION_ACCESS_ENABLE   0x00U            /*!< Instruction fetches enabled */
 177:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_INSTRUCTION_ACCESS_DISABLE  MPU_RASR_XN_Msk  /*!< Instruction fetches disabled*/
 178:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 179:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 180:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 181:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 182:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_SHAREABLE_ACCESS MPU Shareable Access
 183:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 184:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 185:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_ACCESS_SHAREABLE            MPU_RASR_S_Msk   /*!< Shareable memory attribute */
 186:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_ACCESS_NOT_SHAREABLE        0x00U            /*!< Not Shareable memory attribute */
 187:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 188:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 189:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 190:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 191:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_CACHEABLE_ACCESS MPU Cacheable Access
 192:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 193:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 194:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_ACCESS_CACHEABLE            MPU_RASR_C_Msk   /*!< Cacheable memory attribute */
 195:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_ACCESS_NOT_CACHEABLE        0x00U            /*!< Not Cacheable memory attribute */
 196:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 197:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 198:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 199:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 200:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EC_BUFFERABLE_ACCESS MPU Bufferable Access
 201:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 202:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 203:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_ACCESS_BUFFERABLE           MPU_RASR_B_Msk   /*!< Bufferable memory attribute */
 204:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #define LL_MPU_ACCESS_NOT_BUFFERABLE       0x00U            /*!< Not Bufferable memory attribute */
 205:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 206:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 207:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 208:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** #endif /* __MPU_PRESENT */
 209:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 210:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @}
 211:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 212:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 213:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Exported macro ------------------------------------------------------------*/
 214:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 215:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /* Exported functions --------------------------------------------------------*/
 216:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_Exported_Functions CORTEX Exported Functions
 217:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 218:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 219:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 220:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /** @defgroup CORTEX_LL_EF_SYSTICK SYSTICK
 221:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @{
 222:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 223:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** 
 224:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** /**
 225:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @brief  This function checks if the Systick counter flag is active or not.
 226:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @note   It can be used in timeout function on application side.
 227:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @rmtoll STK_CTRL     COUNTFLAG     LL_SYSTICK_IsActiveCounterFlag
 228:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   * @retval State of bit (1 or 0).
 229:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   */
 230:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** __STATIC_INLINE uint32_t LL_SYSTICK_IsActiveCounterFlag(void)
 231:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** {
 232:../../..\CubeG4\include/stm32g4xx_ll_cortex.h ****   return (((SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) == (SysTick_CTRL_COUNTFLAG_Msk)) ? 1UL : 0U
 936              		.loc 3 232 20 view .LVU267
 937 001a 0D4C     		ldr	r4, .L53
 938              	.LBE222:
 939              	.LBE221:
 940              	.LBB224:
 941              	.LBB220:
 942              		.loc 2 3503 75 view .LVU268
 943 001c C2F38012 		ubfx	r2, r2, #6, #1
 944 0020 1846     		mov	r0, r3
 945              	.LVL66:
 946              	.L42:
 947              		.loc 2 3503 75 view .LVU269
 948              	.LBE220:
 949              	.LBE224:
 762:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     while ((timeout != 0U) && (tmp != 1U))
 950              		.loc 1 762 21 view .LVU270
 951 0022 019B     		ldr	r3, [sp, #4]
 952              		.loc 1 762 11 view .LVU271
 953 0024 03B1     		cbz	r3, .L41
 954              		.loc 1 762 28 discriminator 1 view .LVU272
 955 0026 0AB1     		cbz	r2, .L45
 956              	.LVL67:
 957              	.L41:
 763:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 764:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       if (LL_SYSTICK_IsActiveCounterFlag() == 1U)
 765:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 766:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****         timeout --;
 767:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 768:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       tmp = LL_RTC_IsActiveFlag_INIT(RTCx);
 769:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       if (timeout == 0U)
 770:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 771:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****         status = ERROR;
 772:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 773:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 774:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 775:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return status;
 958              		.loc 1 775 3 is_stmt 1 view .LVU273
 776:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 959              		.loc 1 776 1 is_stmt 0 view .LVU274
 960 0028 02B0     		add	sp, sp, #8
 961              		.cfi_remember_state
 962              		.cfi_def_cfa_offset 8
 963              		@ sp needed
 964 002a 10BD     		pop	{r4, pc}
 965              	.LVL68:
 966              	.L45:
 967              		.cfi_restore_state
 764:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 968              		.loc 1 764 7 is_stmt 1 view .LVU275
 969              	.LBB225:
 970              	.LBI221:
 230:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** {
 971              		.loc 3 230 26 view .LVU276
 972              	.LBB223:
 973              		.loc 3 232 3 view .LVU277
 974              		.loc 3 232 20 is_stmt 0 view .LVU278
 975 002c 2368     		ldr	r3, [r4]
 976              		.loc 3 232 96 view .LVU279
 977 002e DB03     		lsls	r3, r3, #15
 978              	.LBE223:
 979              	.LBE225:
 766:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 980              		.loc 1 766 9 is_stmt 1 view .LVU280
 766:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 981              		.loc 1 766 17 is_stmt 0 view .LVU281
 982 0030 42BF     		ittt	mi
 983 0032 019B     		ldrmi	r3, [sp, #4]
 984 0034 03F1FF33 		addmi	r3, r3, #-1
 985 0038 0193     		strmi	r3, [sp, #4]
 768:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       if (timeout == 0U)
 986              		.loc 1 768 7 is_stmt 1 view .LVU282
 987              	.LVL69:
 988              	.LBB226:
 989              	.LBI226:
3501:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 990              		.loc 2 3501 26 view .LVU283
 991              	.LBB227:
 992              		.loc 2 3503 3 view .LVU284
 993              		.loc 2 3503 12 is_stmt 0 view .LVU285
 994 003a CA68     		ldr	r2, [r1, #12]
 995              	.LVL70:
 996              		.loc 2 3503 12 view .LVU286
 997              	.LBE227:
 998              	.LBE226:
 769:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 999              		.loc 1 769 19 view .LVU287
 1000 003c 019B     		ldr	r3, [sp, #4]
 771:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1001              		.loc 1 771 16 view .LVU288
 1002 003e 002B     		cmp	r3, #0
 1003              	.LBB229:
 1004              	.LBB228:
 1005              		.loc 2 3503 75 view .LVU289
 1006 0040 C2F38012 		ubfx	r2, r2, #6, #1
 1007              	.LVL71:
 1008              		.loc 2 3503 75 view .LVU290
 1009              	.LBE228:
 1010              	.LBE229:
 769:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 1011              		.loc 1 769 7 is_stmt 1 view .LVU291
 771:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1012              		.loc 1 771 16 is_stmt 0 view .LVU292
 1013 0044 08BF     		it	eq
 1014 0046 0120     		moveq	r0, #1
 1015              	.LVL72:
 771:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1016              		.loc 1 771 16 view .LVU293
 1017 0048 EBE7     		b	.L42
 1018              	.LVL73:
 1019              	.L46:
 748:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   uint32_t tmp;
 1020              		.loc 1 748 15 view .LVU294
 1021 004a 0020     		movs	r0, #0
 1022              	.LVL74:
 748:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   uint32_t tmp;
 1023              		.loc 1 748 15 view .LVU295
 1024 004c ECE7     		b	.L41
 1025              	.L54:
 1026 004e 00BF     		.align	2
 1027              	.L53:
 1028 0050 10E000E0 		.word	-536813552
 1029              		.cfi_endproc
 1030              	.LFE405:
 1032              		.section	.text.LL_RTC_Init,"ax",%progbits
 1033              		.align	1
 1034              		.global	LL_RTC_Init
 1035              		.syntax unified
 1036              		.thumb
 1037              		.thumb_func
 1038              		.fpu fpv4-sp-d16
 1040              	LL_RTC_Init:
 1041              	.LVL75:
 1042              	.LFB395:
 214:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1043              		.loc 1 214 1 is_stmt 1 view -0
 1044              		.cfi_startproc
 1045              		@ args = 0, pretend = 0, frame = 0
 1046              		@ frame_needed = 0, uses_anonymous_args = 0
 215:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1047              		.loc 1 215 3 view .LVU297
 218:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_HOURFORMAT(RTC_InitStruct->HourFormat));
 1048              		.loc 1 218 3 view .LVU298
 219:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_ASYNCH_PREDIV(RTC_InitStruct->AsynchPrescaler));
 1049              		.loc 1 219 3 view .LVU299
 220:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_SYNCH_PREDIV(RTC_InitStruct->SynchPrescaler));
 1050              		.loc 1 220 3 view .LVU300
 221:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1051              		.loc 1 221 3 view .LVU301
 224:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1052              		.loc 1 224 3 view .LVU302
 1053              	.LBB242:
 1054              	.LBI242:
1069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1055              		.loc 2 1069 22 view .LVU303
 1056              	.LBB243:
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 1057              		.loc 2 1071 3 view .LVU304
 1058              	.LBE243:
 1059              	.LBE242:
 214:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1060              		.loc 1 214 1 is_stmt 0 view .LVU305
 1061 0000 38B5     		push	{r3, r4, r5, lr}
 1062              		.cfi_def_cfa_offset 16
 1063              		.cfi_offset 3, -16
 1064              		.cfi_offset 4, -12
 1065              		.cfi_offset 5, -8
 1066              		.cfi_offset 14, -4
 1067              	.LBB245:
 1068              	.LBB244:
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 1069              		.loc 2 1071 3 view .LVU306
 1070 0002 CA23     		movs	r3, #202
 1071 0004 4362     		str	r3, [r0, #36]
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1072              		.loc 2 1072 3 is_stmt 1 view .LVU307
 1073 0006 5323     		movs	r3, #83
 1074 0008 4362     		str	r3, [r0, #36]
 1075              	.LVL76:
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1076              		.loc 2 1072 3 is_stmt 0 view .LVU308
 1077              	.LBE244:
 1078              	.LBE245:
 227:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1079              		.loc 1 227 3 is_stmt 1 view .LVU309
 214:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1080              		.loc 1 214 1 is_stmt 0 view .LVU310
 1081 000a 0446     		mov	r4, r0
 1082 000c 0D46     		mov	r5, r1
 227:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1083              		.loc 1 227 7 view .LVU311
 1084 000e FFF7FEFF 		bl	LL_RTC_EnterInitMode
 1085              	.LVL77:
 227:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1086              		.loc 1 227 6 view .LVU312
 1087 0012 0128     		cmp	r0, #1
 1088 0014 18D0     		beq	.L56
 230:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1089              		.loc 1 230 5 is_stmt 1 view .LVU313
 1090              	.LVL78:
 1091              	.LBB246:
 1092              	.LBI246:
 813:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1093              		.loc 2 813 22 view .LVU314
 1094              	.LBB247:
 815:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1095              		.loc 2 815 3 view .LVU315
 1096 0016 A369     		ldr	r3, [r4, #24]
 1097 0018 2A68     		ldr	r2, [r5]
 1098 001a 23F04003 		bic	r3, r3, #64
 1099 001e 1343     		orrs	r3, r3, r2
 1100 0020 A361     		str	r3, [r4, #24]
 1101              	.LVL79:
 815:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1102              		.loc 2 815 3 is_stmt 0 view .LVU316
 1103              	.LBE247:
 1104              	.LBE246:
 233:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Configure Asynchronous prescaler factor */
 1105              		.loc 1 233 5 is_stmt 1 view .LVU317
 1106              	.LBB248:
 1107              	.LBI248:
1025:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1108              		.loc 2 1025 22 view .LVU318
 1109              	.LBB249:
1027:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1110              		.loc 2 1027 3 view .LVU319
 1111 0022 2369     		ldr	r3, [r4, #16]
 1112 0024 AA68     		ldr	r2, [r5, #8]
 1113 0026 23F4FF43 		bic	r3, r3, #32640
 1114 002a 23F07F03 		bic	r3, r3, #127
 1115 002e 1343     		orrs	r3, r3, r2
 1116 0030 2361     		str	r3, [r4, #16]
 1117              	.LVL80:
1027:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1118              		.loc 2 1027 3 is_stmt 0 view .LVU320
 1119              	.LBE249:
 1120              	.LBE248:
 235:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1121              		.loc 1 235 5 is_stmt 1 view .LVU321
 1122              	.LBB250:
 1123              	.LBI250:
1013:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1124              		.loc 2 1013 22 view .LVU322
 1125              	.LBB251:
1015:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1126              		.loc 2 1015 3 view .LVU323
 1127 0032 2369     		ldr	r3, [r4, #16]
 1128 0034 6A68     		ldr	r2, [r5, #4]
 1129 0036 23F4FE03 		bic	r3, r3, #8323072
 1130 003a 43EA0243 		orr	r3, r3, r2, lsl #16
 1131 003e 2361     		str	r3, [r4, #16]
 1132              	.LVL81:
1015:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1133              		.loc 2 1015 3 is_stmt 0 view .LVU324
 1134              	.LBE251:
 1135              	.LBE250:
 238:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1136              		.loc 1 238 5 is_stmt 1 view .LVU325
 1137              	.LBB252:
 1138              	.LBI252:
 912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1139              		.loc 2 912 22 view .LVU326
 1140              	.LBB253:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1141              		.loc 2 915 3 view .LVU327
 1142 0040 6FF08003 		mvn	r3, #128
 1143 0044 E360     		str	r3, [r4, #12]
 1144              	.LVL82:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1145              		.loc 2 915 3 is_stmt 0 view .LVU328
 1146              	.LBE253:
 1147              	.LBE252:
 240:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1148              		.loc 1 240 5 is_stmt 1 view .LVU329
 240:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1149              		.loc 1 240 12 is_stmt 0 view .LVU330
 1150 0046 0020     		movs	r0, #0
 1151              	.LVL83:
 1152              	.L56:
 243:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1153              		.loc 1 243 3 is_stmt 1 view .LVU331
 1154              	.LBB254:
 1155              	.LBI254:
1058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1156              		.loc 2 1058 22 view .LVU332
 1157              	.LBB255:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1158              		.loc 2 1060 3 view .LVU333
 1159 0048 FF23     		movs	r3, #255
 1160 004a 6362     		str	r3, [r4, #36]
 1161              	.LVL84:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1162              		.loc 2 1060 3 is_stmt 0 view .LVU334
 1163              	.LBE255:
 1164              	.LBE254:
 245:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 1165              		.loc 1 245 3 is_stmt 1 view .LVU335
 246:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1166              		.loc 1 246 1 is_stmt 0 view .LVU336
 1167 004c 38BD     		pop	{r3, r4, r5, pc}
 246:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1168              		.loc 1 246 1 view .LVU337
 1169              		.cfi_endproc
 1170              	.LFE395:
 1172              		.section	.text.LL_RTC_ExitInitMode,"ax",%progbits
 1173              		.align	1
 1174              		.global	LL_RTC_ExitInitMode
 1175              		.syntax unified
 1176              		.thumb
 1177              		.thumb_func
 1178              		.fpu fpv4-sp-d16
 1180              	LL_RTC_ExitInitMode:
 1181              	.LVL85:
 1182              	.LFB406:
 777:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 778:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 779:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Exit the RTC Initialization mode.
 780:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   When the initialization sequence is complete, the calendar restarts
 781:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         counting after 4 RTCCLK cycles.
 782:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   The RTC Initialization mode is write protected, use the
 783:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @ref LL_RTC_DisableWriteProtection before calling this function.
 784:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 785:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 786:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: RTC exited from in Init mode
 787:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: Not applicable
 788:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 789:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_ExitInitMode(RTC_TypeDef *RTCx)
 790:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 1183              		.loc 1 790 1 is_stmt 1 view -0
 1184              		.cfi_startproc
 1185              		@ args = 0, pretend = 0, frame = 0
 1186              		@ frame_needed = 0, uses_anonymous_args = 0
 1187              		@ link register save eliminated.
 791:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameter */
 792:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 1188              		.loc 1 792 3 view .LVU339
 793:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 794:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Disable initialization mode */
 795:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_DisableInitMode(RTCx);
 1189              		.loc 1 795 3 view .LVU340
 1190              	.LBB256:
 1191              	.LBI256:
 912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1192              		.loc 2 912 22 view .LVU341
 1193              	.LBB257:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1194              		.loc 2 915 3 view .LVU342
 1195 0000 6FF08003 		mvn	r3, #128
 1196 0004 C360     		str	r3, [r0, #12]
 1197              	.LVL86:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1198              		.loc 2 915 3 is_stmt 0 view .LVU343
 1199              	.LBE257:
 1200              	.LBE256:
 796:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 797:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return SUCCESS;
 1201              		.loc 1 797 3 is_stmt 1 view .LVU344
 798:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 1202              		.loc 1 798 1 is_stmt 0 view .LVU345
 1203 0006 0020     		movs	r0, #0
 1204              	.LVL87:
 1205              		.loc 1 798 1 view .LVU346
 1206 0008 7047     		bx	lr
 1207              		.cfi_endproc
 1208              	.LFE406:
 1210              		.section	.text.LL_RTC_WaitForSynchro,"ax",%progbits
 1211              		.align	1
 1212              		.global	LL_RTC_WaitForSynchro
 1213              		.syntax unified
 1214              		.thumb
 1215              		.thumb_func
 1216              		.fpu fpv4-sp-d16
 1218              	LL_RTC_WaitForSynchro:
 1219              	.LVL88:
 1220              	.LFB407:
 799:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 800:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** /**
 801:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @brief  Waits until the RTC Time and Day registers (RTC_TR and RTC_DR) are
 802:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         synchronized with RTC APB clock.
 803:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   The RTC Resynchronization mode is write protected, use the
 804:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         @ref LL_RTC_DisableWriteProtection before calling this function.
 805:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @note   To read the calendar through the shadow registers after Calendar
 806:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         initialization, calendar update or after wakeup from low power modes
 807:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         the software must first clear the RSF flag.
 808:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         The software must then wait until it is set again before reading
 809:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         the calendar, which means that the calendar registers have been
 810:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *         correctly copied into the RTC_TR and RTC_DR shadow registers.
 811:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @param  RTCx RTC Instance
 812:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   * @retval An ErrorStatus enumeration value:
 813:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - SUCCESS: RTC registers are synchronised
 814:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   *          - ERROR: RTC registers are not synchronised
 815:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   */
 816:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** ErrorStatus LL_RTC_WaitForSynchro(RTC_TypeDef *RTCx)
 817:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** {
 1221              		.loc 1 817 1 is_stmt 1 view -0
 1222              		.cfi_startproc
 1223              		@ args = 0, pretend = 0, frame = 8
 1224              		@ frame_needed = 0, uses_anonymous_args = 0
 818:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   __IO uint32_t timeout = RTC_SYNCHRO_TIMEOUT;
 1225              		.loc 1 818 3 view .LVU348
 817:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   __IO uint32_t timeout = RTC_SYNCHRO_TIMEOUT;
 1226              		.loc 1 817 1 is_stmt 0 view .LVU349
 1227 0000 13B5     		push	{r0, r1, r4, lr}
 1228              		.cfi_def_cfa_offset 16
 1229              		.cfi_offset 4, -8
 1230              		.cfi_offset 14, -4
 1231              		.loc 1 818 17 view .LVU350
 1232 0002 4FF47A73 		mov	r3, #1000
 1233 0006 0193     		str	r3, [sp, #4]
 819:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = SUCCESS;
 1234              		.loc 1 819 3 is_stmt 1 view .LVU351
 1235              	.LVL89:
 820:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   uint32_t tmp;
 1236              		.loc 1 820 3 view .LVU352
 821:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 822:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Check the parameter */
 823:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
 1237              		.loc 1 823 3 view .LVU353
 824:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 825:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Clear RSF flag */
 826:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   LL_RTC_ClearFlag_RS(RTCx);
 1238              		.loc 1 826 3 view .LVU354
 1239              	.LBB272:
 1240              	.LBI272:
3504:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3505:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3506:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3507:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Get Registers synchronization flag
3508:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ICSR          RSF           LL_RTC_IsActiveFlag_RS
3509:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3510:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval State of bit (1 or 0).
3511:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE uint32_t LL_RTC_IsActiveFlag_RS(RTC_TypeDef *RTCx)
3513:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   return ((READ_BIT(RTCx->ICSR, RTC_ICSR_RSF) == (RTC_ICSR_RSF)) ? 1U : 0U);
3515:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
3516:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
3517:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** /**
3518:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @brief  Clear Registers synchronization flag
3519:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @rmtoll RTC_ICSR          RSF           LL_RTC_ClearFlag_RS
3520:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @param  RTCx RTC Instance
3521:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   * @retval None
3522:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   */
3523:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** __STATIC_INLINE void LL_RTC_ClearFlag_RS(RTC_TypeDef *RTCx)
 1241              		.loc 2 3523 22 view .LVU355
 1242              	.LBB273:
3524:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
3525:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->ICSR, (~((RTC_ICSR_RSF | RTC_ICSR_INIT) & 0x000000FFU) | (RTCx->ICSR & RTC_ICSR_I
 1243              		.loc 2 3525 3 view .LVU356
 1244 0008 C368     		ldr	r3, [r0, #12]
 1245              	.LBE273:
 1246              	.LBE272:
 1247              	.LBB275:
 1248              	.LBB276:
 1249              		.loc 3 232 20 is_stmt 0 view .LVU357
 1250 000a 1D49     		ldr	r1, .L83
 1251              	.LBE276:
 1252              	.LBE275:
 1253              	.LBB278:
 1254              	.LBB274:
 1255              		.loc 2 3525 3 view .LVU358
 1256 000c 03F08003 		and	r3, r3, #128
 1257 0010 63F0A003 		orn	r3, r3, #160
 1258 0014 C360     		str	r3, [r0, #12]
 1259              	.LVL90:
 1260              		.loc 2 3525 3 view .LVU359
 1261              	.LBE274:
 1262              	.LBE278:
 827:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 828:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   /* Wait the registers to be synchronised */
 829:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   tmp = LL_RTC_IsActiveFlag_RS(RTCx);
 1263              		.loc 1 829 3 is_stmt 1 view .LVU360
 1264              	.LBB279:
 1265              	.LBI279:
3512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1266              		.loc 2 3512 26 view .LVU361
 1267              	.LBB280:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1268              		.loc 2 3514 3 view .LVU362
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1269              		.loc 2 3514 12 is_stmt 0 view .LVU363
 1270 0016 C268     		ldr	r2, [r0, #12]
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1271              		.loc 2 3514 71 view .LVU364
 1272 0018 0023     		movs	r3, #0
 1273 001a C2F34012 		ubfx	r2, r2, #5, #1
 1274              	.LVL91:
 1275              	.L62:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1276              		.loc 2 3514 71 view .LVU365
 1277              	.LBE280:
 1278              	.LBE279:
 830:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   while ((timeout != 0U) && (tmp != 0U))
 1279              		.loc 1 830 19 view .LVU366
 1280 001e 019C     		ldr	r4, [sp, #4]
 1281              		.loc 1 830 9 view .LVU367
 1282 0020 74B9     		cbnz	r4, .L65
 1283              	.L69:
 831:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 832:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (LL_SYSTICK_IsActiveCounterFlag() == 1U)
 833:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 834:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       timeout--;
 835:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 836:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     tmp = LL_RTC_IsActiveFlag_RS(RTCx);
 837:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (timeout == 0U)
 838:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 839:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       status = ERROR;
 840:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 841:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 842:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 843:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   if (status != ERROR)
 1284              		.loc 1 843 3 is_stmt 1 view .LVU368
 1285              		.loc 1 843 6 is_stmt 0 view .LVU369
 1286 0022 012B     		cmp	r3, #1
 1287 0024 09D0     		beq	.L67
 844:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 845:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     timeout = RTC_SYNCHRO_TIMEOUT;
 1288              		.loc 1 845 5 is_stmt 1 view .LVU370
 1289              		.loc 1 845 13 is_stmt 0 view .LVU371
 1290 0026 4FF47A72 		mov	r2, #1000
 1291              	.LVL92:
 1292              		.loc 1 845 13 view .LVU372
 1293 002a 0192     		str	r2, [sp, #4]
 846:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     tmp = LL_RTC_IsActiveFlag_RS(RTCx);
 1294              		.loc 1 846 5 is_stmt 1 view .LVU373
 1295              	.LVL93:
 1296              	.LBB281:
 1297              	.LBI281:
3512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1298              		.loc 2 3512 26 view .LVU374
 1299              	.LBB282:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1300              		.loc 2 3514 3 view .LVU375
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1301              		.loc 2 3514 12 is_stmt 0 view .LVU376
 1302 002c C268     		ldr	r2, [r0, #12]
 1303              	.LBE282:
 1304              	.LBE281:
 1305              	.LBB284:
 1306              	.LBB285:
 1307              		.loc 3 232 20 view .LVU377
 1308 002e 1449     		ldr	r1, .L83
 1309              	.LBE285:
 1310              	.LBE284:
 1311              	.LBB287:
 1312              	.LBB283:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1313              		.loc 2 3514 71 view .LVU378
 1314 0030 C2F34012 		ubfx	r2, r2, #5, #1
 1315              	.LVL94:
 1316              	.L70:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1317              		.loc 2 3514 71 view .LVU379
 1318              	.LBE283:
 1319              	.LBE287:
 847:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     while ((timeout != 0U) && (tmp != 1U))
 1320              		.loc 1 847 21 view .LVU380
 1321 0034 019C     		ldr	r4, [sp, #4]
 1322              		.loc 1 847 11 view .LVU381
 1323 0036 04B1     		cbz	r4, .L67
 1324              		.loc 1 847 28 discriminator 1 view .LVU382
 1325 0038 9AB1     		cbz	r2, .L73
 1326              	.LVL95:
 1327              	.L67:
 848:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 849:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       if (LL_SYSTICK_IsActiveCounterFlag() == 1U)
 850:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 851:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****         timeout--;
 852:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 853:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       tmp = LL_RTC_IsActiveFlag_RS(RTCx);
 854:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       if (timeout == 0U)
 855:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 856:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****         status = ERROR;
 857:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 858:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 859:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 860:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 861:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   return (status);
 1328              		.loc 1 861 3 is_stmt 1 view .LVU383
 862:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 1329              		.loc 1 862 1 is_stmt 0 view .LVU384
 1330 003a 1846     		mov	r0, r3
 1331              	.LVL96:
 1332              		.loc 1 862 1 view .LVU385
 1333 003c 02B0     		add	sp, sp, #8
 1334              		.cfi_remember_state
 1335              		.cfi_def_cfa_offset 8
 1336              		@ sp needed
 1337 003e 10BD     		pop	{r4, pc}
 1338              	.LVL97:
 1339              	.L65:
 1340              		.cfi_restore_state
 830:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1341              		.loc 1 830 26 discriminator 1 view .LVU386
 1342 0040 002A     		cmp	r2, #0
 1343 0042 EED0     		beq	.L69
 832:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1344              		.loc 1 832 5 is_stmt 1 view .LVU387
 1345              	.LBB288:
 1346              	.LBI275:
 230:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** {
 1347              		.loc 3 230 26 view .LVU388
 1348              	.LBB277:
 1349              		.loc 3 232 3 view .LVU389
 1350              		.loc 3 232 20 is_stmt 0 view .LVU390
 1351 0044 0A68     		ldr	r2, [r1]
 1352              	.LVL98:
 1353              		.loc 3 232 96 view .LVU391
 1354 0046 D403     		lsls	r4, r2, #15
 1355              	.LBE277:
 1356              	.LBE288:
 834:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1357              		.loc 1 834 7 is_stmt 1 view .LVU392
 834:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1358              		.loc 1 834 14 is_stmt 0 view .LVU393
 1359 0048 42BF     		ittt	mi
 1360 004a 019A     		ldrmi	r2, [sp, #4]
 1361 004c 02F1FF32 		addmi	r2, r2, #-1
 1362 0050 0192     		strmi	r2, [sp, #4]
 836:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     if (timeout == 0U)
 1363              		.loc 1 836 5 is_stmt 1 view .LVU394
 1364              	.LVL99:
 1365              	.LBB289:
 1366              	.LBI289:
3512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1367              		.loc 2 3512 26 view .LVU395
 1368              	.LBB290:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1369              		.loc 2 3514 3 view .LVU396
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1370              		.loc 2 3514 12 is_stmt 0 view .LVU397
 1371 0052 C268     		ldr	r2, [r0, #12]
 1372              	.LBE290:
 1373              	.LBE289:
 837:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1374              		.loc 1 837 17 view .LVU398
 1375 0054 019C     		ldr	r4, [sp, #4]
 839:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1376              		.loc 1 839 14 view .LVU399
 1377 0056 002C     		cmp	r4, #0
 1378              	.LBB292:
 1379              	.LBB291:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1380              		.loc 2 3514 71 view .LVU400
 1381 0058 C2F34012 		ubfx	r2, r2, #5, #1
 1382              	.LVL100:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1383              		.loc 2 3514 71 view .LVU401
 1384              	.LBE291:
 1385              	.LBE292:
 837:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1386              		.loc 1 837 5 is_stmt 1 view .LVU402
 839:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1387              		.loc 1 839 14 is_stmt 0 view .LVU403
 1388 005c 08BF     		it	eq
 1389 005e 0123     		moveq	r3, #1
 1390              	.LVL101:
 839:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1391              		.loc 1 839 14 view .LVU404
 1392 0060 DDE7     		b	.L62
 1393              	.LVL102:
 1394              	.L73:
 849:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 1395              		.loc 1 849 7 is_stmt 1 view .LVU405
 1396              	.LBB293:
 1397              	.LBI284:
 230:../../..\CubeG4\include/stm32g4xx_ll_cortex.h **** {
 1398              		.loc 3 230 26 view .LVU406
 1399              	.LBB286:
 1400              		.loc 3 232 3 view .LVU407
 1401              		.loc 3 232 20 is_stmt 0 view .LVU408
 1402 0062 0A68     		ldr	r2, [r1]
 1403              	.LVL103:
 1404              		.loc 3 232 96 view .LVU409
 1405 0064 D203     		lsls	r2, r2, #15
 1406              	.LBE286:
 1407              	.LBE293:
 851:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1408              		.loc 1 851 9 is_stmt 1 view .LVU410
 851:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1409              		.loc 1 851 16 is_stmt 0 view .LVU411
 1410 0066 42BF     		ittt	mi
 1411 0068 019A     		ldrmi	r2, [sp, #4]
 1412 006a 02F1FF32 		addmi	r2, r2, #-1
 1413 006e 0192     		strmi	r2, [sp, #4]
 853:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       if (timeout == 0U)
 1414              		.loc 1 853 7 is_stmt 1 view .LVU412
 1415              	.LVL104:
 1416              	.LBB294:
 1417              	.LBI294:
3512:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1418              		.loc 2 3512 26 view .LVU413
 1419              	.LBB295:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1420              		.loc 2 3514 3 view .LVU414
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1421              		.loc 2 3514 12 is_stmt 0 view .LVU415
 1422 0070 C268     		ldr	r2, [r0, #12]
 1423              	.LBE295:
 1424              	.LBE294:
 854:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 1425              		.loc 1 854 19 view .LVU416
 1426 0072 019C     		ldr	r4, [sp, #4]
 856:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1427              		.loc 1 856 16 view .LVU417
 1428 0074 002C     		cmp	r4, #0
 1429              	.LBB297:
 1430              	.LBB296:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1431              		.loc 2 3514 71 view .LVU418
 1432 0076 C2F34012 		ubfx	r2, r2, #5, #1
 1433              	.LVL105:
3514:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1434              		.loc 2 3514 71 view .LVU419
 1435              	.LBE296:
 1436              	.LBE297:
 854:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       {
 1437              		.loc 1 854 7 is_stmt 1 view .LVU420
 856:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1438              		.loc 1 856 16 is_stmt 0 view .LVU421
 1439 007a 08BF     		it	eq
 1440 007c 0123     		moveq	r3, #1
 1441              	.LVL106:
 856:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       }
 1442              		.loc 1 856 16 view .LVU422
 1443 007e D9E7     		b	.L70
 1444              	.L84:
 1445              		.align	2
 1446              	.L83:
 1447 0080 10E000E0 		.word	-536813552
 1448              		.cfi_endproc
 1449              	.LFE407:
 1451              		.section	.text.LL_RTC_DeInit,"ax",%progbits
 1452              		.align	1
 1453              		.global	LL_RTC_DeInit
 1454              		.syntax unified
 1455              		.thumb
 1456              		.thumb_func
 1457              		.fpu fpv4-sp-d16
 1459              	LL_RTC_DeInit:
 1460              	.LVL107:
 1461              	.LFB394:
 135:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1462              		.loc 1 135 1 is_stmt 1 view -0
 1463              		.cfi_startproc
 1464              		@ args = 0, pretend = 0, frame = 0
 1465              		@ frame_needed = 0, uses_anonymous_args = 0
 136:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1466              		.loc 1 136 3 view .LVU424
 139:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_TAMP_ALL_INSTANCE(TAMP));
 1467              		.loc 1 139 3 view .LVU425
 140:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1468              		.loc 1 140 3 view .LVU426
 143:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1469              		.loc 1 143 3 view .LVU427
 1470              	.LBB298:
 1471              	.LBI298:
1069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1472              		.loc 2 1069 22 view .LVU428
 1473              	.LBB299:
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 1474              		.loc 2 1071 3 view .LVU429
 1475 0000 CA23     		movs	r3, #202
 1476              	.LBE299:
 1477              	.LBE298:
 135:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1478              		.loc 1 135 1 is_stmt 0 view .LVU430
 1479 0002 10B5     		push	{r4, lr}
 1480              		.cfi_def_cfa_offset 8
 1481              		.cfi_offset 4, -8
 1482              		.cfi_offset 14, -4
 1483              	.LBB301:
 1484              	.LBB300:
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 1485              		.loc 2 1071 3 view .LVU431
 1486 0004 4362     		str	r3, [r0, #36]
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1487              		.loc 2 1072 3 is_stmt 1 view .LVU432
 1488 0006 5323     		movs	r3, #83
 1489 0008 4362     		str	r3, [r0, #36]
 1490              	.LVL108:
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1491              		.loc 2 1072 3 is_stmt 0 view .LVU433
 1492              	.LBE300:
 1493              	.LBE301:
 146:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1494              		.loc 1 146 3 is_stmt 1 view .LVU434
 135:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1495              		.loc 1 135 1 is_stmt 0 view .LVU435
 1496 000a 0446     		mov	r4, r0
 146:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1497              		.loc 1 146 7 view .LVU436
 1498 000c FFF7FEFF 		bl	LL_RTC_EnterInitMode
 1499              	.LVL109:
 146:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1500              		.loc 1 146 6 view .LVU437
 1501 0010 0128     		cmp	r0, #1
 1502 0012 13D0     		beq	.L86
 149:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined(RTC_WAKEUP_SUPPORT)
 1503              		.loc 1 149 5 is_stmt 1 view .LVU438
 1504 0014 0023     		movs	r3, #0
 153:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Reset All CR bits except CR[2:0] */
 1505              		.loc 1 153 5 is_stmt 0 view .LVU439
 1506 0016 42F20112 		movw	r2, #8449
 149:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined(RTC_WAKEUP_SUPPORT)
 1507              		.loc 1 149 5 view .LVU440
 1508 001a 2360     		str	r3, [r4]
 153:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     /* Reset All CR bits except CR[2:0] */
 1509              		.loc 1 153 5 is_stmt 1 view .LVU441
 1510 001c 6260     		str	r2, [r4, #4]
 158:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* RTC_WAKEUP_SUPPORT */
 1511              		.loc 1 158 5 view .LVU442
 160:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMAR,   0x00000000U);
 1512              		.loc 1 160 5 is_stmt 0 view .LVU443
 1513 001e 0E4A     		ldr	r2, .L90
 158:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #endif /* RTC_WAKEUP_SUPPORT */
 1514              		.loc 1 158 5 view .LVU444
 1515 0020 A361     		str	r3, [r4, #24]
 160:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMAR,   0x00000000U);
 1516              		.loc 1 160 5 is_stmt 1 view .LVU445
 1517 0022 2261     		str	r2, [r4, #16]
 161:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMBR,   0x00000000U);
 1518              		.loc 1 161 5 view .LVU446
 1519 0024 2364     		str	r3, [r4, #64]
 162:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->SHIFTR,   0x00000000U);
 1520              		.loc 1 162 5 view .LVU447
 1521 0026 A364     		str	r3, [r4, #72]
 163:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->CALR,     0x00000000U);
 1522              		.loc 1 163 5 view .LVU448
 1523 0028 E362     		str	r3, [r4, #44]
 164:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMASSR, 0x00000000U);
 1524              		.loc 1 164 5 view .LVU449
 1525 002a A362     		str	r3, [r4, #40]
 165:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     WRITE_REG(RTCx->ALRMBSSR, 0x00000000U);
 1526              		.loc 1 165 5 view .LVU450
 1527 002c 6364     		str	r3, [r4, #68]
 166:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1528              		.loc 1 166 5 view .LVU451
 1529 002e E364     		str	r3, [r4, #76]
 169:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1530              		.loc 1 169 5 view .LVU452
 1531              	.LVL110:
 1532              	.LBB302:
 1533              	.LBI302:
 912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1534              		.loc 2 912 22 view .LVU453
 1535              	.LBB303:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1536              		.loc 2 915 3 view .LVU454
 1537 0030 6FF08003 		mvn	r3, #128
 1538 0034 E360     		str	r3, [r4, #12]
 1539              	.LVL111:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1540              		.loc 2 915 3 is_stmt 0 view .LVU455
 1541              	.LBE303:
 1542              	.LBE302:
 172:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1543              		.loc 1 172 5 is_stmt 1 view .LVU456
 172:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1544              		.loc 1 172 14 is_stmt 0 view .LVU457
 1545 0036 2046     		mov	r0, r4
 1546 0038 FFF7FEFF 		bl	LL_RTC_WaitForSynchro
 1547              	.LVL112:
 1548              	.L86:
 176:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1549              		.loc 1 176 3 is_stmt 1 view .LVU458
 1550              	.LBB304:
 1551              	.LBI304:
1058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1552              		.loc 2 1058 22 view .LVU459
 1553              	.LBB305:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1554              		.loc 2 1060 3 view .LVU460
 1555 003c FF23     		movs	r3, #255
 1556 003e 6362     		str	r3, [r4, #36]
 1557              	.LVL113:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1558              		.loc 2 1060 3 is_stmt 0 view .LVU461
 1559              	.LBE305:
 1560              	.LBE304:
 180:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->CR2,     0x00000000U);
 1561              		.loc 1 180 3 is_stmt 1 view .LVU462
 1562 0040 064B     		ldr	r3, .L90+4
 1563 0042 074A     		ldr	r2, .L90+8
 1564 0044 1A60     		str	r2, [r3]
 181:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined (RTC_OTHER_SUPPORT)
 1565              		.loc 1 181 3 view .LVU463
 1566 0046 0022     		movs	r2, #0
 1567 0048 5A60     		str	r2, [r3, #4]
 187:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined (RTC_ACTIVE_TAMPER_SUPPORT)
 1568              		.loc 1 187 3 view .LVU464
 1569 004a DA60     		str	r2, [r3, #12]
 192:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   WRITE_REG(TAMP->SCR,      0xFFFFFFFFU);
 1570              		.loc 1 192 3 view .LVU465
 1571 004c DA62     		str	r2, [r3, #44]
 193:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** #if defined (RTC_OPTION_REG_SUPPORT)
 1572              		.loc 1 193 3 view .LVU466
 1573 004e 4FF0FF32 		mov	r2, #-1
 1574 0052 DA63     		str	r2, [r3, #60]
 198:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 1575              		.loc 1 198 3 view .LVU467
 199:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1576              		.loc 1 199 1 is_stmt 0 view .LVU468
 1577 0054 10BD     		pop	{r4, pc}
 1578              	.LVL114:
 1579              	.L91:
 199:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1580              		.loc 1 199 1 view .LVU469
 1581 0056 00BF     		.align	2
 1582              	.L90:
 1583 0058 FF007F00 		.word	8323327
 1584 005c 00240040 		.word	1073751040
 1585 0060 0000FFFF 		.word	-65536
 1586              		.cfi_endproc
 1587              	.LFE394:
 1589              		.section	.text.LL_RTC_TIME_Init,"ax",%progbits
 1590              		.align	1
 1591              		.global	LL_RTC_TIME_Init
 1592              		.syntax unified
 1593              		.thumb
 1594              		.thumb_func
 1595              		.fpu fpv4-sp-d16
 1597              	LL_RTC_TIME_Init:
 1598              	.LVL115:
 1599              	.LFB397:
 274:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1600              		.loc 1 274 1 is_stmt 1 view -0
 1601              		.cfi_startproc
 1602              		@ args = 0, pretend = 0, frame = 0
 1603              		@ frame_needed = 0, uses_anonymous_args = 0
 275:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1604              		.loc 1 275 3 view .LVU471
 278:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
 1605              		.loc 1 278 3 view .LVU472
 279:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1606              		.loc 1 279 3 view .LVU473
 281:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1607              		.loc 1 281 3 view .LVU474
 1608              	.LBB322:
 1609              	.LBB323:
 828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1610              		.loc 2 828 21 is_stmt 0 view .LVU475
 1611 0000 8369     		ldr	r3, [r0, #24]
 1612              	.LBE323:
 1613              	.LBE322:
 283:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1614              		.loc 1 283 5 is_stmt 1 view .LVU476
 1615              	.LVL116:
 1616              	.LBB325:
 1617              	.LBI322:
 826:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1618              		.loc 2 826 26 view .LVU477
 1619              	.LBB324:
 828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1620              		.loc 2 828 3 view .LVU478
 828:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1621              		.loc 2 828 3 is_stmt 0 view .LVU479
 1622              	.LBE324:
 1623              	.LBE325:
 274:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1624              		.loc 1 274 1 view .LVU480
 1625 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1626              		.cfi_def_cfa_offset 24
 1627              		.cfi_offset 4, -24
 1628              		.cfi_offset 5, -20
 1629              		.cfi_offset 6, -16
 1630              		.cfi_offset 7, -12
 1631              		.cfi_offset 8, -8
 1632              		.cfi_offset 14, -4
 274:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1633              		.loc 1 274 1 view .LVU481
 1634 0006 1646     		mov	r6, r2
 283:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1635              		.loc 1 283 8 view .LVU482
 1636 0008 5A06     		lsls	r2, r3, #25
 1637              	.LVL117:
 290:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(RTC_TimeStruct->Hours));
 1638              		.loc 1 290 7 is_stmt 1 view .LVU483
 290:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****       assert_param(IS_LL_RTC_HOUR24(RTC_TimeStruct->Hours));
 1639              		.loc 1 290 34 is_stmt 0 view .LVU484
 1640 000a 5CBF     		itt	pl
 1641 000c 0023     		movpl	r3, #0
 1642 000e 3360     		strpl	r3, [r6]
 306:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1643              		.loc 1 306 7 is_stmt 1 view .LVU485
 308:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_SECONDS(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Seconds)));
 1644              		.loc 1 308 5 view .LVU486
 309:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1645              		.loc 1 309 5 view .LVU487
 313:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1646              		.loc 1 313 3 view .LVU488
 1647              	.LVL118:
 1648              	.LBB326:
 1649              	.LBI326:
1069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1650              		.loc 2 1069 22 view .LVU489
 1651              	.LBB327:
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 1652              		.loc 2 1071 3 view .LVU490
 1653 0010 CA23     		movs	r3, #202
 1654 0012 4362     		str	r3, [r0, #36]
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1655              		.loc 2 1072 3 view .LVU491
 1656 0014 5323     		movs	r3, #83
 1657 0016 4362     		str	r3, [r0, #36]
 1658              	.LVL119:
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1659              		.loc 2 1072 3 is_stmt 0 view .LVU492
 1660              	.LBE327:
 1661              	.LBE326:
 316:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1662              		.loc 1 316 3 is_stmt 1 view .LVU493
 274:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1663              		.loc 1 274 1 is_stmt 0 view .LVU494
 1664 0018 0446     		mov	r4, r0
 281:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1665              		.loc 1 281 6 view .LVU495
 1666 001a 8846     		mov	r8, r1
 316:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1667              		.loc 1 316 7 view .LVU496
 1668 001c FFF7FEFF 		bl	LL_RTC_EnterInitMode
 1669              	.LVL120:
 316:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1670              		.loc 1 316 6 view .LVU497
 1671 0020 0128     		cmp	r0, #1
 1672 0022 1CD0     		beq	.L96
 319:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1673              		.loc 1 319 5 is_stmt 1 view .LVU498
 1674 0024 3768     		ldr	r7, [r6]
 1675 0026 3079     		ldrb	r0, [r6, #4]	@ zero_extendqisi2
 1676 0028 7579     		ldrb	r5, [r6, #5]	@ zero_extendqisi2
 1677 002a B379     		ldrb	r3, [r6, #6]	@ zero_extendqisi2
 319:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1678              		.loc 1 319 8 is_stmt 0 view .LVU499
 1679 002c B8F1000F 		cmp	r8, #0
 1680 0030 19D0     		beq	.L97
 321:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          RTC_TimeStruct->Minutes, RTC_TimeStruct->Seconds);
 1681              		.loc 1 321 7 is_stmt 1 view .LVU500
 1682              	.LVL121:
 1683              	.LBB328:
 1684              	.LBI328:
1346:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                         uint32_t Seconds)
 1685              		.loc 2 1346 22 view .LVU501
 1686              	.LBB329:
1349:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 1687              		.loc 2 1349 3 view .LVU502
1351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Hours & 0xF0U) << (RTC_TR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_TR_HU_Pos))     | \
 1688              		.loc 2 1351 3 view .LVU503
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1689              		.loc 2 1355 3 view .LVU504
 1690 0032 2268     		ldr	r2, [r4]
1351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Hours & 0xF0U) << (RTC_TR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_TR_HU_Pos))     | \
 1691              		.loc 2 1351 8 is_stmt 0 view .LVU505
 1692 0034 3B43     		orrs	r3, r3, r7
 1693              	.LVL122:
1351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Hours & 0xF0U) << (RTC_TR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_TR_HU_Pos))     | \
 1694              		.loc 2 1351 8 view .LVU506
 1695 0036 43EA0043 		orr	r3, r3, r0, lsl #16
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1696              		.loc 2 1355 3 view .LVU507
 1697 003a 22F07F12 		bic	r2, r2, #8323199
1351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Hours & 0xF0U) << (RTC_TR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_TR_HU_Pos))     | \
 1698              		.loc 2 1351 8 view .LVU508
 1699 003e 43EA0523 		orr	r3, r3, r5, lsl #8
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1700              		.loc 2 1355 3 view .LVU509
 1701 0042 22F4FE42 		bic	r2, r2, #32512
 1702 0046 1343     		orrs	r3, r3, r2
 1703              	.LVL123:
 1704              	.L107:
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1705              		.loc 2 1355 3 view .LVU510
 1706              	.LBE329:
 1707              	.LBE328:
 1708              	.LBB330:
 1709              	.LBB331:
 1710 0048 2360     		str	r3, [r4]
 1711              	.LBE331:
 1712              	.LBE330:
 332:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1713              		.loc 1 332 5 is_stmt 1 view .LVU511
 1714              	.LVL124:
 1715              	.LBB338:
 1716              	.LBI338:
 912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1717              		.loc 2 912 22 view .LVU512
 1718              	.LBB339:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1719              		.loc 2 915 3 view .LVU513
 1720 004a 194B     		ldr	r3, .L108
 1721 004c 6FF08002 		mvn	r2, #128
 1722 0050 DA60     		str	r2, [r3, #12]
 1723              	.LVL125:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1724              		.loc 2 915 3 is_stmt 0 view .LVU514
 1725              	.LBE339:
 1726              	.LBE338:
 335:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1727              		.loc 1 335 5 is_stmt 1 view .LVU515
 1728              	.LBB340:
 1729              	.LBI340:
 975:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1730              		.loc 2 975 26 view .LVU516
 1731              	.LBB341:
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1732              		.loc 2 977 3 view .LVU517
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1733              		.loc 2 977 12 is_stmt 0 view .LVU518
 1734 0052 A369     		ldr	r3, [r4, #24]
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1735              		.loc 2 977 73 view .LVU519
 1736 0054 9B06     		lsls	r3, r3, #26
 1737 0056 28D4     		bmi	.L99
 1738              	.LVL126:
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1739              		.loc 2 977 73 view .LVU520
 1740              	.LBE341:
 1741              	.LBE340:
 337:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1742              		.loc 1 337 7 is_stmt 1 view .LVU521
 337:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1743              		.loc 1 337 16 is_stmt 0 view .LVU522
 1744 0058 2046     		mov	r0, r4
 1745 005a FFF7FEFF 		bl	LL_RTC_WaitForSynchro
 1746              	.LVL127:
 1747              	.L96:
 345:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1748              		.loc 1 345 3 is_stmt 1 view .LVU523
 1749              	.LBB342:
 1750              	.LBI342:
1058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1751              		.loc 2 1058 22 view .LVU524
 1752              	.LBB343:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1753              		.loc 2 1060 3 view .LVU525
 1754 005e FF23     		movs	r3, #255
 1755 0060 6362     		str	r3, [r4, #36]
 1756              	.LVL128:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1757              		.loc 2 1060 3 is_stmt 0 view .LVU526
 1758              	.LBE343:
 1759              	.LBE342:
 347:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 1760              		.loc 1 347 3 is_stmt 1 view .LVU527
 348:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1761              		.loc 1 348 1 is_stmt 0 view .LVU528
 1762 0062 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1763              	.LVL129:
 1764              	.L97:
 326:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
 1765              		.loc 1 326 7 is_stmt 1 view .LVU529
 1766              	.LBB344:
 1767              	.LBI330:
1346:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                         uint32_t Seconds)
 1768              		.loc 2 1346 22 view .LVU530
 1769              	.LBB332:
1349:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 1770              		.loc 2 1349 3 view .LVU531
1351:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Hours & 0xF0U) << (RTC_TR_HT_Pos - 4U)) | ((Hours & 0x0FU) << RTC_TR_HU_Pos))     | \
 1771              		.loc 2 1351 3 view .LVU532
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1772              		.loc 2 1355 3 view .LVU533
 1773 0066 2168     		ldr	r1, [r4]
 1774              	.LBE332:
 1775              	.LBE344:
 328:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1776              		.loc 1 328 26 is_stmt 0 view .LVU534
 1777 0068 0A22     		movs	r2, #10
 1778              	.LBB345:
 1779              	.LBB333:
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1780              		.loc 2 1355 3 view .LVU535
 1781 006a 21F07F11 		bic	r1, r1, #8323199
 1782              	.LBE333:
 1783              	.LBE345:
 328:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1784              		.loc 1 328 26 view .LVU536
 1785 006e B3FBF2F6 		udiv	r6, r3, r2
 1786              	.LVL130:
 328:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1787              		.loc 1 328 26 view .LVU537
 1788 0072 02FB1633 		mls	r3, r2, r6, r3
 1789              	.LVL131:
 328:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1790              		.loc 1 328 26 view .LVU538
 1791 0076 43EA0613 		orr	r3, r3, r6, lsl #4
 1792              	.LBB346:
 1793              	.LBB334:
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1794              		.loc 2 1355 3 view .LVU539
 1795 007a 21F4FE41 		bic	r1, r1, #32512
 1796 007e 3943     		orrs	r1, r1, r7
 1797              	.LBE334:
 1798              	.LBE346:
 326:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
 1799              		.loc 1 326 7 view .LVU540
 1800 0080 DBB2     		uxtb	r3, r3
 1801              	.LBB347:
 1802              	.LBB335:
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1803              		.loc 2 1355 3 view .LVU541
 1804 0082 0B43     		orrs	r3, r3, r1
 1805              	.LBE335:
 1806              	.LBE347:
 326:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
 1807              		.loc 1 326 60 view .LVU542
 1808 0084 B0FBF2F1 		udiv	r1, r0, r2
 1809 0088 02FB1100 		mls	r0, r2, r1, r0
 1810              	.LVL132:
 326:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
 1811              		.loc 1 326 60 view .LVU543
 1812 008c 40EA0110 		orr	r0, r0, r1, lsl #4
 327:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Seconds));
 1813              		.loc 1 327 26 view .LVU544
 1814 0090 B5FBF2F1 		udiv	r1, r5, r2
 1815 0094 02FB1152 		mls	r2, r2, r1, r5
 326:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
 1816              		.loc 1 326 7 view .LVU545
 1817 0098 C0B2     		uxtb	r0, r0
 327:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Seconds));
 1818              		.loc 1 327 26 view .LVU546
 1819 009a 42EA0112 		orr	r2, r2, r1, lsl #4
 1820              	.LBB348:
 1821              	.LBB336:
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1822              		.loc 2 1355 3 view .LVU547
 1823 009e 43EA0043 		orr	r3, r3, r0, lsl #16
 1824              	.LBE336:
 1825              	.LBE348:
 326:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
 1826              		.loc 1 326 7 view .LVU548
 1827 00a2 D2B2     		uxtb	r2, r2
 1828              	.LBB349:
 1829              	.LBB337:
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1830              		.loc 2 1355 3 view .LVU549
 1831 00a4 43EA0223 		orr	r3, r3, r2, lsl #8
 1832 00a8 CEE7     		b	.L107
 1833              	.LVL133:
 1834              	.L99:
1355:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1835              		.loc 2 1355 3 view .LVU550
 1836              	.LBE337:
 1837              	.LBE349:
 341:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1838              		.loc 1 341 14 view .LVU551
 1839 00aa 0020     		movs	r0, #0
 1840 00ac D7E7     		b	.L96
 1841              	.L109:
 1842 00ae 00BF     		.align	2
 1843              	.L108:
 1844 00b0 00280040 		.word	1073752064
 1845              		.cfi_endproc
 1846              	.LFE397:
 1848              		.section	.text.LL_RTC_DATE_Init,"ax",%progbits
 1849              		.align	1
 1850              		.global	LL_RTC_DATE_Init
 1851              		.syntax unified
 1852              		.thumb
 1853              		.thumb_func
 1854              		.fpu fpv4-sp-d16
 1856              	LL_RTC_DATE_Init:
 1857              	.LVL134:
 1858              	.LFB399:
 377:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1859              		.loc 1 377 1 is_stmt 1 view -0
 1860              		.cfi_startproc
 1861              		@ args = 0, pretend = 0, frame = 0
 1862              		@ frame_needed = 0, uses_anonymous_args = 0
 378:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1863              		.loc 1 378 3 view .LVU553
 381:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
 1864              		.loc 1 381 3 view .LVU554
 382:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1865              		.loc 1 382 3 view .LVU555
 384:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1866              		.loc 1 384 3 view .LVU556
 377:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1867              		.loc 1 377 1 is_stmt 0 view .LVU557
 1868 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1869              		.cfi_def_cfa_offset 24
 1870              		.cfi_offset 4, -24
 1871              		.cfi_offset 5, -20
 1872              		.cfi_offset 6, -16
 1873              		.cfi_offset 7, -12
 1874              		.cfi_offset 8, -8
 1875              		.cfi_offset 14, -4
 377:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   ErrorStatus status = ERROR;
 1876              		.loc 1 377 1 view .LVU558
 1877 0004 0446     		mov	r4, r0
 1878 0006 1646     		mov	r6, r2
 384:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1879              		.loc 1 384 6 view .LVU559
 1880 0008 8846     		mov	r8, r1
 1881 000a 31B9     		cbnz	r1, .L111
 384:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1882              		.loc 1 384 60 discriminator 1 view .LVU560
 1883 000c 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 384:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1884              		.loc 1 384 41 discriminator 1 view .LVU561
 1885 000e DA06     		lsls	r2, r3, #27
 1886              	.LVL135:
 386:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1887              		.loc 1 386 5 is_stmt 1 discriminator 1 view .LVU562
 386:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1888              		.loc 1 386 29 is_stmt 0 discriminator 1 view .LVU563
 1889 0010 42BF     		ittt	mi
 1890 0012 23F01003 		bicmi	r3, r3, #16
 386:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1891              		.loc 1 386 82 discriminator 1 view .LVU564
 1892 0016 0A33     		addmi	r3, r3, #10
 386:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1893              		.loc 1 386 27 discriminator 1 view .LVU565
 1894 0018 7370     		strbmi	r3, [r6, #1]
 1895              	.L111:
 388:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1896              		.loc 1 388 3 is_stmt 1 view .LVU566
 396:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_MONTH(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Month)));
 1897              		.loc 1 396 5 view .LVU567
 397:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     assert_param(IS_LL_RTC_DAY(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Day)));
 1898              		.loc 1 397 5 view .LVU568
 398:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   }
 1899              		.loc 1 398 5 view .LVU569
 400:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1900              		.loc 1 400 3 view .LVU570
 403:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1901              		.loc 1 403 3 view .LVU571
 1902              	.LVL136:
 1903              	.LBB362:
 1904              	.LBI362:
1069:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1905              		.loc 2 1069 22 view .LVU572
 1906              	.LBB363:
1071:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****   WRITE_REG(RTCx->WPR, RTC_WRITE_PROTECTION_ENABLE_2);
 1907              		.loc 2 1071 3 view .LVU573
 1908 001a CA23     		movs	r3, #202
 1909 001c 6362     		str	r3, [r4, #36]
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1910              		.loc 2 1072 3 view .LVU574
 1911 001e 5323     		movs	r3, #83
 1912 0020 6362     		str	r3, [r4, #36]
 1913              	.LVL137:
1072:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1914              		.loc 2 1072 3 is_stmt 0 view .LVU575
 1915              	.LBE363:
 1916              	.LBE362:
 406:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1917              		.loc 1 406 3 is_stmt 1 view .LVU576
 406:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1918              		.loc 1 406 7 is_stmt 0 view .LVU577
 1919 0022 2046     		mov	r0, r4
 1920              	.LVL138:
 406:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1921              		.loc 1 406 7 view .LVU578
 1922 0024 FFF7FEFF 		bl	LL_RTC_EnterInitMode
 1923              	.LVL139:
 406:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****   {
 1924              		.loc 1 406 6 view .LVU579
 1925 0028 0128     		cmp	r0, #1
 1926 002a 1BD0     		beq	.L112
 409:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1927              		.loc 1 409 5 is_stmt 1 view .LVU580
 1928 002c B378     		ldrb	r3, [r6, #2]	@ zero_extendqisi2
 1929 002e 7578     		ldrb	r5, [r6, #1]	@ zero_extendqisi2
 1930 0030 F078     		ldrb	r0, [r6, #3]	@ zero_extendqisi2
 1931 0032 3678     		ldrb	r6, [r6]	@ zero_extendqisi2
 1932              	.LVL140:
 409:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1933              		.loc 1 409 5 is_stmt 0 view .LVU581
 1934 0034 7703     		lsls	r7, r6, #13
 409:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1935              		.loc 1 409 8 view .LVU582
 1936 0036 B8F1000F 		cmp	r8, #0
 1937 003a 17D0     		beq	.L113
 411:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1938              		.loc 1 411 7 is_stmt 1 view .LVU583
 1939              	.LVL141:
 1940              	.LBB364:
 1941              	.LBI364:
1677:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                         uint32_t Year)
 1942              		.loc 2 1677 22 view .LVU584
 1943              	.LBB365:
1680:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 1944              		.loc 2 1680 3 view .LVU585
1682:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Year & 0xF0U) << (RTC_DR_YT_Pos - 4U)) | ((Year & 0x0FU) << RTC_DR_YU_Pos))   | \
 1945              		.loc 2 1682 3 view .LVU586
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1946              		.loc 2 1687 3 view .LVU587
 1947 003c 6268     		ldr	r2, [r4, #4]
 1948 003e 1E49     		ldr	r1, .L122
 1949 0040 1140     		ands	r1, r1, r2
 1950 0042 0B43     		orrs	r3, r3, r1
 1951              	.LVL142:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1952              		.loc 2 1687 3 is_stmt 0 view .LVU588
 1953 0044 3B43     		orrs	r3, r3, r7
 1954 0046 43EA0042 		orr	r2, r3, r0, lsl #16
 1955 004a 42EA0522 		orr	r2, r2, r5, lsl #8
 1956 004e 6260     		str	r2, [r4, #4]
 1957              	.LVL143:
 1958              	.L114:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1959              		.loc 2 1687 3 view .LVU589
 1960              	.LBE365:
 1961              	.LBE364:
 420:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1962              		.loc 1 420 5 is_stmt 1 view .LVU590
 1963              	.LBB366:
 1964              	.LBI366:
 912:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1965              		.loc 2 912 22 view .LVU591
 1966              	.LBB367:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1967              		.loc 2 915 3 view .LVU592
 1968 0050 1A4B     		ldr	r3, .L122+4
 1969 0052 6FF08002 		mvn	r2, #128
 1970 0056 DA60     		str	r2, [r3, #12]
 1971              	.LVL144:
 915:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1972              		.loc 2 915 3 is_stmt 0 view .LVU593
 1973              	.LBE367:
 1974              	.LBE366:
 423:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     {
 1975              		.loc 1 423 5 is_stmt 1 view .LVU594
 1976              	.LBB368:
 1977              	.LBI368:
 975:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1978              		.loc 2 975 26 view .LVU595
 1979              	.LBB369:
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1980              		.loc 2 977 3 view .LVU596
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1981              		.loc 2 977 12 is_stmt 0 view .LVU597
 1982 0058 A369     		ldr	r3, [r4, #24]
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1983              		.loc 2 977 73 view .LVU598
 1984 005a 9B06     		lsls	r3, r3, #26
 1985 005c 29D4     		bmi	.L115
 1986              	.LVL145:
 977:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 1987              		.loc 2 977 73 view .LVU599
 1988              	.LBE369:
 1989              	.LBE368:
 425:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1990              		.loc 1 425 7 is_stmt 1 view .LVU600
 425:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 1991              		.loc 1 425 16 is_stmt 0 view .LVU601
 1992 005e 2046     		mov	r0, r4
 1993 0060 FFF7FEFF 		bl	LL_RTC_WaitForSynchro
 1994              	.LVL146:
 1995              	.L112:
 433:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 1996              		.loc 1 433 3 is_stmt 1 view .LVU602
 1997              	.LBB370:
 1998              	.LBI370:
1058:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** {
 1999              		.loc 2 1058 22 view .LVU603
 2000              	.LBB371:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2001              		.loc 2 1060 3 view .LVU604
 2002 0064 FF23     		movs	r3, #255
 2003 0066 6362     		str	r3, [r4, #36]
 2004              	.LVL147:
1060:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2005              		.loc 2 1060 3 is_stmt 0 view .LVU605
 2006              	.LBE371:
 2007              	.LBE370:
 435:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** }
 2008              		.loc 1 435 3 is_stmt 1 view .LVU606
 436:../../..\CubeG4\src/stm32g4xx_ll_rtc.c **** 
 2009              		.loc 1 436 1 is_stmt 0 view .LVU607
 2010 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2011              	.LVL148:
 2012              	.L113:
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 2013              		.loc 1 415 7 is_stmt 1 view .LVU608
 2014              	.LBB372:
 2015              	.LBI372:
1677:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****                                         uint32_t Year)
 2016              		.loc 2 1677 22 view .LVU609
 2017              	.LBB373:
1680:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** 
 2018              		.loc 2 1680 3 view .LVU610
1682:../../..\CubeG4\include/stm32g4xx_ll_rtc.h ****          (((Year & 0xF0U) << (RTC_DR_YT_Pos - 4U)) | ((Year & 0x0FU) << RTC_DR_YU_Pos))   | \
 2019              		.loc 2 1682 3 view .LVU611
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2020              		.loc 2 1687 3 view .LVU612
 2021              	.LBE373:
 2022              	.LBE372:
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 2023              		.loc 1 415 57 is_stmt 0 view .LVU613
 2024 006c 0A22     		movs	r2, #10
 2025              	.LBB380:
 2026              	.LBB374:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2027              		.loc 2 1687 3 view .LVU614
 2028 006e D4F804C0 		ldr	ip, [r4, #4]
 2029 0072 114E     		ldr	r6, .L122
 2030              	.LBE374:
 2031              	.LBE380:
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 2032              		.loc 1 415 57 view .LVU615
 2033 0074 B3FBF2F1 		udiv	r1, r3, r2
 2034 0078 02FB1133 		mls	r3, r2, r1, r3
 2035              	.LVL149:
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 2036              		.loc 1 415 57 view .LVU616
 2037 007c 43EA0113 		orr	r3, r3, r1, lsl #4
 2038              	.LBB381:
 2039              	.LBB375:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2040              		.loc 2 1687 3 view .LVU617
 2041 0080 0CEA0606 		and	r6, ip, r6
 2042              	.LBE375:
 2043              	.LBE381:
 416:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 2044              		.loc 1 416 75 view .LVU618
 2045 0084 B0FBF2F1 		udiv	r1, r0, r2
 2046 0088 02FB1100 		mls	r0, r2, r1, r0
 2047              	.LVL150:
 416:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 2048              		.loc 1 416 75 view .LVU619
 2049 008c 40EA0110 		orr	r0, r0, r1, lsl #4
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 2050              		.loc 1 415 7 view .LVU620
 2051 0090 DBB2     		uxtb	r3, r3
 416:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 2052              		.loc 1 416 26 view .LVU621
 2053 0092 B5FBF2F1 		udiv	r1, r5, r2
 2054              	.LBB382:
 2055              	.LBB376:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2056              		.loc 2 1687 3 view .LVU622
 2057 0096 3E43     		orrs	r6, r6, r7
 2058              	.LBE376:
 2059              	.LBE382:
 416:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 2060              		.loc 1 416 26 view .LVU623
 2061 0098 02FB1152 		mls	r2, r2, r1, r5
 2062              	.LBB383:
 2063              	.LBB377:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2064              		.loc 2 1687 3 view .LVU624
 2065 009c 3343     		orrs	r3, r3, r6
 2066              	.LBE377:
 2067              	.LBE383:
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 2068              		.loc 1 415 7 view .LVU625
 2069 009e C0B2     		uxtb	r0, r0
 416:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 2070              		.loc 1 416 26 view .LVU626
 2071 00a0 42EA0112 		orr	r2, r2, r1, lsl #4
 2072              	.LBB384:
 2073              	.LBB378:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2074              		.loc 2 1687 3 view .LVU627
 2075 00a4 43EA0043 		orr	r3, r3, r0, lsl #16
 2076              	.LBE378:
 2077              	.LBE384:
 415:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(
 2078              		.loc 1 415 7 view .LVU628
 2079 00a8 D2B2     		uxtb	r2, r2
 2080              	.LBB385:
 2081              	.LBB379:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2082              		.loc 2 1687 3 view .LVU629
 2083 00aa 43EA0223 		orr	r3, r3, r2, lsl #8
 2084 00ae 6360     		str	r3, [r4, #4]
 2085              	.LVL151:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2086              		.loc 2 1687 3 view .LVU630
 2087 00b0 CEE7     		b	.L114
 2088              	.LVL152:
 2089              	.L115:
1687:../../..\CubeG4\include/stm32g4xx_ll_rtc.h **** }
 2090              		.loc 2 1687 3 view .LVU631
 2091              	.LBE379:
 2092              	.LBE385:
 429:../../..\CubeG4\src/stm32g4xx_ll_rtc.c ****     }
 2093              		.loc 1 429 14 view .LVU632
 2094 00b2 0020     		movs	r0, #0
 2095 00b4 D6E7     		b	.L112
 2096              	.L123:
 2097 00b6 00BF     		.align	2
 2098              	.L122:
 2099 00b8 C00000FF 		.word	-16777024
 2100 00bc 00280040 		.word	1073752064
 2101              		.cfi_endproc
 2102              	.LFE399:
 2104              		.text
 2105              	.Letext0:
 2106              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2107              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 2108              		.file 6 "../../..\\CubeG4\\include/core_cm4.h"
 2109              		.file 7 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 2110              		.file 8 "../../..\\CubeG4\\include/stm32g431xx.h"
 2111              		.file 9 "../../..\\CubeG4\\include/stm32g4xx.h"
