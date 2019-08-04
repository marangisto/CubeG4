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
  13              		.file	"stm32g4xx_ll_exti.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.LL_EXTI_DeInit,"ax",%progbits
  18              		.align	1
  19              		.global	LL_EXTI_DeInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	LL_EXTI_DeInit:
  27              	.LFB162:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_ll_exti.c"
   1:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @file    stm32g4xx_ll_exti.c
   4:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @brief   EXTI LL module driver.
   6:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   ******************************************************************************
   7:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @attention
   8:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   *
   9:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   *
  17:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   ******************************************************************************
  18:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  19:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #if defined(USE_FULL_LL_DRIVER)
  20:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  21:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /* Includes ------------------------------------------------------------------*/
  22:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #include "stm32g4xx_ll_exti.h"
  23:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #ifdef  USE_FULL_ASSERT
  24:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #include "stm32_assert.h"
  25:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #else
  26:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #define assert_param(expr) ((void)0U)
  27:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #endif /* USE_FULL_ASSERT */
  28:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  29:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /** @addtogroup STM32G4xx_LL_Driver
  30:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @{
  31:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  32:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  33:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #if defined (EXTI)
  34:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  35:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /** @defgroup EXTI_LL EXTI
  36:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @{
  37:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  38:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  39:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /* Private types -------------------------------------------------------------*/
  40:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /* Private variables ---------------------------------------------------------*/
  41:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /* Private constants ---------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /* Private macros ------------------------------------------------------------*/
  43:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /** @addtogroup EXTI_LL_Private_Macros
  44:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @{
  45:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  46:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  47:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #define IS_LL_EXTI_LINE_0_31(__VALUE__)              (((__VALUE__) & ~LL_EXTI_LINE_ALL_0_31) == 0x0
  48:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #define IS_LL_EXTI_LINE_32_63(__VALUE__)             (((__VALUE__) & ~LL_EXTI_LINE_ALL_32_63) == 0x
  49:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  50:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #define IS_LL_EXTI_MODE(__VALUE__)                   (((__VALUE__) == LL_EXTI_MODE_IT)            \
  51:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****                                                       || ((__VALUE__) == LL_EXTI_MODE_EVENT)       
  52:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****                                                       || ((__VALUE__) == LL_EXTI_MODE_IT_EVENT))
  53:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  54:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  55:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #define IS_LL_EXTI_TRIGGER(__VALUE__)                (((__VALUE__) == LL_EXTI_TRIGGER_NONE)       \
  56:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****                                                       || ((__VALUE__) == LL_EXTI_TRIGGER_RISING)   
  57:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****                                                       || ((__VALUE__) == LL_EXTI_TRIGGER_FALLING)  
  58:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****                                                       || ((__VALUE__) == LL_EXTI_TRIGGER_RISING_FAL
  59:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  60:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /**
  61:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @}
  62:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  63:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  64:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /* Private function prototypes -----------------------------------------------*/
  65:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  66:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /* Exported functions --------------------------------------------------------*/
  67:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /** @addtogroup EXTI_LL_Exported_Functions
  68:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @{
  69:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  70:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  71:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /** @addtogroup EXTI_LL_EF_Init
  72:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @{
  73:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  74:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  75:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /**
  76:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @brief  De-initialize the EXTI registers to their default reset values.
  77:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @retval An ErrorStatus enumeration value:
  78:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   *          - 0x00: EXTI registers are de-initialized
  79:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
  80:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** uint32_t LL_EXTI_DeInit(void)
  81:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** {
  29              		.loc 1 81 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
  82:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Interrupt mask register set to default reset values */
  83:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(IMR1,   0x1F840000U);
  34              		.loc 1 83 3 view .LVU1
  35 0000 094B     		ldr	r3, .L2
  36 0002 0A4A     		ldr	r2, .L2+4
  37 0004 1A60     		str	r2, [r3]
  84:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Event mask register set to default reset values */
  85:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(EMR1,   0x00000000U);
  38              		.loc 1 85 3 view .LVU2
  39 0006 0020     		movs	r0, #0
  86:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Rising Trigger selection register set to default reset values */
  87:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(RTSR1,  0x00000000U);
  88:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Falling Trigger selection register set to default reset values */
  89:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(FTSR1,  0x00000000U);
  90:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Software interrupt event register set to default reset values */
  91:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(SWIER1, 0x00000000U);
  92:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Pending register clear */
  93:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(PR1,    0x007DFFFFU);
  40              		.loc 1 93 3 is_stmt 0 view .LVU3
  41 0008 094A     		ldr	r2, .L2+8
  85:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Rising Trigger selection register set to default reset values */
  42              		.loc 1 85 3 view .LVU4
  43 000a 5860     		str	r0, [r3, #4]
  87:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Falling Trigger selection register set to default reset values */
  44              		.loc 1 87 3 is_stmt 1 view .LVU5
  45 000c 9860     		str	r0, [r3, #8]
  89:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Software interrupt event register set to default reset values */
  46              		.loc 1 89 3 view .LVU6
  47 000e D860     		str	r0, [r3, #12]
  91:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Pending register clear */
  48              		.loc 1 91 3 view .LVU7
  49 0010 1861     		str	r0, [r3, #16]
  50              		.loc 1 93 3 view .LVU8
  51 0012 5A61     		str	r2, [r3, #20]
  94:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
  95:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Interrupt mask register 2 set to default reset values */
  96:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #if defined(LL_EXTI_LINE_32) && defined(LL_EXTI_LINE_33) && defined(LL_EXTI_LINE_35) && defined(LL_
  97:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(IMR2,        0x0000043CU);
  98:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #else
  99:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(IMR2,        0x00000034U);
  52              		.loc 1 99 3 view .LVU9
  53 0014 3422     		movs	r2, #52
  54 0016 1A62     		str	r2, [r3, #32]
 100:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** #endif /* LL_EXTI_LINE_xx */
 101:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Event mask register 2 set to default reset values */
 102:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(EMR2,        0x00000000U);
  55              		.loc 1 102 3 view .LVU10
 103:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Rising Trigger selection register 2 set to default reset values */
 104:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(RTSR2,       0x00000000U);
 105:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Falling Trigger selection register 2 set to default reset values */
 106:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(FTSR2,       0x00000000U);
 107:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Software interrupt event register 2 set to default reset values */
 108:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(SWIER2,      0x00000000U);
 109:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Pending register 2 clear */
 110:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   LL_EXTI_WriteReg(PR2,         0x00000078U);
  56              		.loc 1 110 3 is_stmt 0 view .LVU11
  57 0018 7822     		movs	r2, #120
 102:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Rising Trigger selection register 2 set to default reset values */
  58              		.loc 1 102 3 view .LVU12
  59 001a 5862     		str	r0, [r3, #36]
 104:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Falling Trigger selection register 2 set to default reset values */
  60              		.loc 1 104 3 is_stmt 1 view .LVU13
  61 001c 9862     		str	r0, [r3, #40]
 106:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Software interrupt event register 2 set to default reset values */
  62              		.loc 1 106 3 view .LVU14
  63 001e D862     		str	r0, [r3, #44]
 108:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Pending register 2 clear */
  64              		.loc 1 108 3 view .LVU15
  65 0020 1863     		str	r0, [r3, #48]
  66              		.loc 1 110 3 view .LVU16
  67 0022 5A63     		str	r2, [r3, #52]
 111:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 112:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   return 0x00u;
  68              		.loc 1 112 3 view .LVU17
 113:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** }
  69              		.loc 1 113 1 is_stmt 0 view .LVU18
  70 0024 7047     		bx	lr
  71              	.L3:
  72 0026 00BF     		.align	2
  73              	.L2:
  74 0028 00040140 		.word	1073808384
  75 002c 0000841F 		.word	528744448
  76 0030 FFFF7D00 		.word	8257535
  77              		.cfi_endproc
  78              	.LFE162:
  80              		.section	.text.LL_EXTI_Init,"ax",%progbits
  81              		.align	1
  82              		.global	LL_EXTI_Init
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu fpv4-sp-d16
  88              	LL_EXTI_Init:
  89              	.LVL0:
  90              	.LFB163:
 114:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 115:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /**
 116:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @brief  Initialize the EXTI registers according to the specified parameters in EXTI_InitStruct.
 117:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @param  EXTI_InitStruct pointer to a @ref LL_EXTI_InitTypeDef structure.
 118:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @retval An ErrorStatus enumeration value:
 119:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   *          - 0x00: EXTI registers are initialized
 120:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   *          - any other calue : wrong configuration
 121:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
 122:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** uint32_t LL_EXTI_Init(LL_EXTI_InitTypeDef *EXTI_InitStruct)
 123:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** {
  91              		.loc 1 123 1 is_stmt 1 view -0
  92              		.cfi_startproc
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
 124:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   uint32_t status = 0x00u;
  95              		.loc 1 124 3 view .LVU20
 125:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 126:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* Check the parameters */
 127:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   assert_param(IS_LL_EXTI_LINE_0_31(EXTI_InitStruct->Line_0_31));
  96              		.loc 1 127 3 view .LVU21
 128:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   assert_param(IS_LL_EXTI_LINE_32_63(EXTI_InitStruct->Line_32_63));
  97              		.loc 1 128 3 view .LVU22
 129:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   assert_param(IS_FUNCTIONAL_STATE(EXTI_InitStruct->LineCommand));
  98              		.loc 1 129 3 view .LVU23
 130:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   assert_param(IS_LL_EXTI_MODE(EXTI_InitStruct->Mode));
  99              		.loc 1 130 3 view .LVU24
 131:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 132:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* ENABLE LineCommand */
 133:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   if (EXTI_InitStruct->LineCommand != DISABLE)
 100              		.loc 1 133 3 view .LVU25
 123:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   uint32_t status = 0x00u;
 101              		.loc 1 123 1 is_stmt 0 view .LVU26
 102 0000 0146     		mov	r1, r0
 103 0002 D0E90032 		ldrd	r3, r2, [r0]
 104              		.loc 1 133 6 view .LVU27
 105 0006 007A     		ldrb	r0, [r0, #8]	@ zero_extendqisi2
 106              	.LVL1:
 123:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   uint32_t status = 0x00u;
 107              		.loc 1 123 1 view .LVU28
 108 0008 30B5     		push	{r4, r5, lr}
 109              		.cfi_def_cfa_offset 12
 110              		.cfi_offset 4, -12
 111              		.cfi_offset 5, -8
 112              		.cfi_offset 14, -4
 113              		.loc 1 133 6 view .LVU29
 114 000a 0028     		cmp	r0, #0
 115 000c 00F08580 		beq	.L5
 134:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   {
 135:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     assert_param(IS_LL_EXTI_TRIGGER(EXTI_InitStruct->Trigger));
 116              		.loc 1 135 5 is_stmt 1 view .LVU30
 136:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 137:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* Configure EXTI Lines in range from 0 to 31 */
 138:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     if (EXTI_InitStruct->Line_0_31 != LL_EXTI_LINE_NONE)
 117              		.loc 1 138 5 view .LVU31
 118              		.loc 1 138 8 is_stmt 0 view .LVU32
 119 0010 002B     		cmp	r3, #0
 120 0012 4AD0     		beq	.L23
 139:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     {
 140:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       switch (EXTI_InitStruct->Mode)
 121              		.loc 1 140 7 is_stmt 1 view .LVU33
 122              		.loc 1 140 30 is_stmt 0 view .LVU34
 123 0014 4C7A     		ldrb	r4, [r1, #9]	@ zero_extendqisi2
 124              		.loc 1 140 7 view .LVU35
 125 0016 012C     		cmp	r4, #1
 126 0018 29D0     		beq	.L7
 127 001a 60B2     		sxtb	r0, r4
 128 001c F0B1     		cbz	r0, .L8
 129 001e 022C     		cmp	r4, #2
 130 0020 2FD0     		beq	.L9
 141:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       {
 142:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         case LL_EXTI_MODE_IT:
 143:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* First Disable Event on provided Lines */
 144:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_DisableEvent_0_31(EXTI_InitStruct->Line_0_31);
 145:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable IT on provided Lines */
 146:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableIT_0_31(EXTI_InitStruct->Line_0_31);
 147:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 148:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         case LL_EXTI_MODE_EVENT:
 149:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* First Disable IT on provided Lines */
 150:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_DisableIT_0_31(EXTI_InitStruct->Line_0_31);
 151:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable Event on provided Lines */
 152:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableEvent_0_31(EXTI_InitStruct->Line_0_31);
 153:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 154:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         case LL_EXTI_MODE_IT_EVENT:
 155:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Directly Enable IT on provided Lines */
 156:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableIT_0_31(EXTI_InitStruct->Line_0_31);
 157:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Directly Enable Event on provided Lines */
 158:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableEvent_0_31(EXTI_InitStruct->Line_0_31);
 159:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 160:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         default:
 161:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           status = 0x01u;
 131              		.loc 1 161 18 view .LVU36
 132 0022 0120     		movs	r0, #1
 133              	.L10:
 134              	.LVL2:
 162:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 163:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       }
 164:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       if (EXTI_InitStruct->Trigger != LL_EXTI_TRIGGER_NONE)
 135              		.loc 1 164 7 is_stmt 1 view .LVU37
 136              		.loc 1 164 26 is_stmt 0 view .LVU38
 137 0024 8C7A     		ldrb	r4, [r1, #10]	@ zero_extendqisi2
 138              		.loc 1 164 10 view .LVU39
 139 0026 6CB1     		cbz	r4, .L6
 165:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       {
 166:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         switch (EXTI_InitStruct->Trigger)
 140              		.loc 1 166 9 is_stmt 1 view .LVU40
 141 0028 022C     		cmp	r4, #2
 142 002a 2ED0     		beq	.L11
 143 002c 032C     		cmp	r4, #3
 144 002e 35D0     		beq	.L12
 145 0030 012C     		cmp	r4, #1
 146 0032 37D1     		bne	.L13
 167:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         {
 168:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           case LL_EXTI_TRIGGER_RISING:
 169:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* First Disable Falling Trigger on provided Lines */
 170:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_DisableFallingTrig_0_31(EXTI_InitStruct->Line_0_31);
 147              		.loc 1 170 13 view .LVU41
 148              	.LVL3:
 149              	.LBB58:
 150              	.LBI58:
 151              		.file 2 "../../..\\CubeG4\\include/stm32g4xx_ll_exti.h"
   1:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
   2:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   ******************************************************************************
   3:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @file    stm32g4xx_ll_exti.h
   4:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @author  MCD Application Team
   5:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief   Header file of EXTI LL module.
   6:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   ******************************************************************************
   7:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @attention
   8:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *
   9:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  10:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * All rights reserved.</center></h2>
  11:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *
  12:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * This software component is licensed by ST under BSD 3-Clause license,
  13:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * the "License"; You may not use this file except in compliance with the
  14:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * License. You may obtain a copy of the License at:
  15:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *                        opensource.org/licenses/BSD-3-Clause
  16:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *
  17:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   ******************************************************************************
  18:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  19:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  20:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Define to prevent recursive inclusion -------------------------------------*/
  21:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #ifndef __STM32G4xx_LL_EXTI_H
  22:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define __STM32G4xx_LL_EXTI_H
  23:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  24:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #ifdef __cplusplus
  25:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** extern "C" {
  26:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif
  27:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  28:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Includes ------------------------------------------------------------------*/
  29:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #include "stm32g4xx.h"
  30:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  31:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @addtogroup STM32G4xx_LL_Driver
  32:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
  33:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  34:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  35:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined (EXTI)
  36:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  37:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL EXTI
  38:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
  39:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  40:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  41:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Private types -------------------------------------------------------------*/
  42:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Private variables ---------------------------------------------------------*/
  43:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Private constants ---------------------------------------------------------*/
  44:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Private Macros ------------------------------------------------------------*/
  45:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(USE_FULL_LL_DRIVER)
  46:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_Private_Macros EXTI Private Macros
  47:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
  48:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  49:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
  50:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
  51:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  52:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /*USE_FULL_LL_DRIVER*/
  53:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Exported types ------------------------------------------------------------*/
  54:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(USE_FULL_LL_DRIVER)
  55:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_ES_INIT EXTI Exported Init structure
  56:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
  57:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  58:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** typedef struct
  59:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
  60:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  61:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   uint32_t Line_0_31;           /*!< Specifies the EXTI lines to be enabled or disabled for Lines i
  62:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****                                      This parameter can be any combination of @ref EXTI_LL_EC_LINE 
  63:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  64:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   uint32_t Line_32_63;          /*!< Specifies the EXTI lines to be enabled or disabled for Lines i
  65:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****                                      This parameter can be any combination of @ref EXTI_LL_EC_LINE 
  66:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  67:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   FunctionalState LineCommand;  /*!< Specifies the new state of the selected EXTI lines.
  68:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****                                      This parameter can be set either to ENABLE or DISABLE */
  69:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  70:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   uint8_t Mode;                 /*!< Specifies the mode for the EXTI lines.
  71:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****                                      This parameter can be a value of @ref EXTI_LL_EC_MODE. */
  72:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  73:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   uint8_t Trigger;              /*!< Specifies the trigger signal active edge for the EXTI lines.
  74:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****                                      This parameter can be a value of @ref EXTI_LL_EC_TRIGGER. */
  75:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** } LL_EXTI_InitTypeDef;
  76:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  77:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
  78:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
  79:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  80:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /*USE_FULL_LL_DRIVER*/
  81:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  82:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Exported constants --------------------------------------------------------*/
  83:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_Exported_Constants EXTI Exported Constants
  84:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
  85:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  86:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
  87:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EC_LINE LINE
  88:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
  89:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
  90:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_0                 EXTI_IMR1_IM0           /*!< Extended line 0 */
  91:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_1                 EXTI_IMR1_IM1           /*!< Extended line 1 */
  92:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_2                 EXTI_IMR1_IM2           /*!< Extended line 2 */
  93:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_3                 EXTI_IMR1_IM3           /*!< Extended line 3 */
  94:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_4                 EXTI_IMR1_IM4           /*!< Extended line 4 */
  95:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_5                 EXTI_IMR1_IM5           /*!< Extended line 5 */
  96:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_6                 EXTI_IMR1_IM6           /*!< Extended line 6 */
  97:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_7                 EXTI_IMR1_IM7           /*!< Extended line 7 */
  98:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_8                 EXTI_IMR1_IM8           /*!< Extended line 8 */
  99:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_9                 EXTI_IMR1_IM9           /*!< Extended line 9 */
 100:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_10                EXTI_IMR1_IM10          /*!< Extended line 10 */
 101:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_11                EXTI_IMR1_IM11          /*!< Extended line 11 */
 102:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_12                EXTI_IMR1_IM12          /*!< Extended line 12 */
 103:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_13                EXTI_IMR1_IM13          /*!< Extended line 13 */
 104:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_14                EXTI_IMR1_IM14          /*!< Extended line 14 */
 105:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_15                EXTI_IMR1_IM15          /*!< Extended line 15 */
 106:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM16)
 107:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_16                EXTI_IMR1_IM16          /*!< Extended line 16 */
 108:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM16 */
 109:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_17                EXTI_IMR1_IM17          /*!< Extended line 17 */
 110:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM18)
 111:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_18                EXTI_IMR1_IM18          /*!< Extended line 18 */
 112:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM18 */
 113:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_19                EXTI_IMR1_IM19          /*!< Extended line 19 */
 114:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM20)
 115:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_20                EXTI_IMR1_IM20          /*!< Extended line 20 */
 116:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM20 */
 117:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM21)
 118:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_21                EXTI_IMR1_IM21          /*!< Extended line 21 */
 119:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM21 */
 120:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM22)
 121:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_22                EXTI_IMR1_IM22          /*!< Extended line 22 */
 122:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM22 */
 123:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_23                EXTI_IMR1_IM23          /*!< Extended line 23 */
 124:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM24)
 125:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_24                EXTI_IMR1_IM24          /*!< Extended line 24 */
 126:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM24 */
 127:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM25)
 128:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_25                EXTI_IMR1_IM25          /*!< Extended line 25 */
 129:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM25 */
 130:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM26)
 131:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_26                EXTI_IMR1_IM26          /*!< Extended line 26 */
 132:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM26 */
 133:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM27)
 134:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_27                EXTI_IMR1_IM27          /*!< Extended line 27 */
 135:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM27 */
 136:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM28)
 137:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_28                EXTI_IMR1_IM28          /*!< Extended line 28 */
 138:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM28 */
 139:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM29)
 140:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_29                EXTI_IMR1_IM29          /*!< Extended line 29 */
 141:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM29 */
 142:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM30)
 143:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_30                EXTI_IMR1_IM30          /*!< Extended line 30 */
 144:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM30 */
 145:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR1_IM31)
 146:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_31                EXTI_IMR1_IM31          /*!< Extended line 31 */
 147:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR1_IM31 */
 148:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_ALL_0_31          EXTI_IMR1_IM            /*!< All Extended line not reserved*
 149:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 150:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM32)
 151:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_32                EXTI_IMR2_IM32          /*!< Extended line 32 */
 152:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM32 */
 153:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM33)
 154:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_33                EXTI_IMR2_IM33          /*!< Extended line 33 */
 155:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM33 */
 156:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM34)
 157:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_34                EXTI_IMR2_IM34          /*!< Extended line 34 */
 158:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM34 */
 159:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM35)
 160:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_35                EXTI_IMR2_IM35          /*!< Extended line 35 */
 161:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM35 */
 162:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM36)
 163:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_36                EXTI_IMR2_IM36          /*!< Extended line 36 */
 164:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM36 */
 165:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM37)
 166:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_37                EXTI_IMR2_IM37          /*!< Extended line 37 */
 167:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM37 */
 168:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM38)
 169:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_38                EXTI_IMR2_IM38          /*!< Extended line 38 */
 170:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM38 */
 171:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM39)
 172:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_39                EXTI_IMR2_IM39          /*!< Extended line 39 */
 173:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM39 */
 174:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM40)
 175:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_40                EXTI_IMR2_IM40          /*!< Extended line 40 */
 176:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM40 */
 177:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM41)
 178:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_41                EXTI_IMR2_IM41          /*!< Extended line 41 */
 179:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM41 */
 180:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(EXTI_IMR2_IM42)
 181:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_42                EXTI_IMR2_IM42          /*!< Extended line 42 */
 182:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /* EXTI_IMR2_IM42 */
 183:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_ALL_32_63         EXTI_IMR2_IM            /*!< All Extended line not reserved*
 184:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 185:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 186:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_ALL               (0xFFFFFFFFU)  /*!< All Extended line */
 187:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 188:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(USE_FULL_LL_DRIVER)
 189:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_LINE_NONE              0x00000000U             /*!< None Extended line */
 190:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /*USE_FULL_LL_DRIVER*/
 191:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 192:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 193:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 194:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 195:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #if defined(USE_FULL_LL_DRIVER)
 196:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 197:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EC_MODE Mode
 198:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 199:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 200:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_MODE_IT                 ((uint8_t)0x00U) /*!< Interrupt Mode */
 201:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_MODE_EVENT              ((uint8_t)0x01U) /*!< Event Mode */
 202:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_MODE_IT_EVENT           ((uint8_t)0x02U) /*!< Interrupt & Event Mode */
 203:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 204:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 205:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 206:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 207:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EC_TRIGGER Edge Trigger
 208:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 209:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 210:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_TRIGGER_NONE            ((uint8_t)0x00U) /*!< No Trigger Mode */
 211:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_TRIGGER_RISING          ((uint8_t)0x01U) /*!< Trigger Rising Mode */
 212:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_TRIGGER_FALLING         ((uint8_t)0x02U) /*!< Trigger Falling Mode */
 213:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_TRIGGER_RISING_FALLING  ((uint8_t)0x03U) /*!< Trigger Rising & Falling Mode */
 214:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 215:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 216:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 217:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 218:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 219:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 220:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #endif /*USE_FULL_LL_DRIVER*/
 221:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 222:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 223:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 224:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 225:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 226:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 227:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Exported macro ------------------------------------------------------------*/
 228:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_Exported_Macros EXTI Exported Macros
 229:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 230:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 231:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 232:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EM_WRITE_READ Common Write and read registers Macros
 233:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 234:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 235:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 236:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 237:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Write a value in EXTI register
 238:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  __REG__ Register to be written
 239:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  __VALUE__ Value to be written in the register
 240:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 241:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 242:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_WriteReg(__REG__, __VALUE__) WRITE_REG(EXTI->__REG__, (__VALUE__))
 243:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 244:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 245:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Read a value in EXTI register
 246:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  __REG__ Register to be read
 247:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval Register value
 248:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 249:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** #define LL_EXTI_ReadReg(__REG__) READ_REG(EXTI->__REG__)
 250:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 251:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 252:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 253:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 254:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 255:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 256:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 257:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 258:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 259:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 260:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 261:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /* Exported functions --------------------------------------------------------*/
 262:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_Exported_Functions EXTI Exported Functions
 263:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 264:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 265:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EF_IT_Management IT_Management
 266:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 267:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 268:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 269:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 270:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Interrupt request for Lines in range 0 to 31
 271:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The reset value for the direct or internal lines (see RM)
 272:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       is set to 1 in order to enable the interrupt by default.
 273:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Bits are set automatically at Power on.
 274:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll IMR1         IMx           LL_EXTI_EnableIT_0_31
 275:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 276:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 277:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 278:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 279:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 280:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 281:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 282:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 283:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 284:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 285:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 286:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 287:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 288:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 289:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 290:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 291:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 292:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 293:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_17
 294:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 295:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 296:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 297:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 298:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 299:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_23
 300:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_24
 301:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_25
 302:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_26
 303:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_27
 304:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_28
 305:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 306:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 307:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
 308:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_0_31
 309:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 310:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 311:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 312:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 313:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableIT_0_31(uint32_t ExtiLine)
 314:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 315:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->IMR1, ExtiLine);
 316:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 317:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 318:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Interrupt request for Lines in range 32 to 63
 319:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The reset value for the direct lines (lines from 32 to 34, line
 320:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       39) is set to 1 in order to enable the interrupt by default.
 321:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Bits are set automatically at Power on.
 322:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll IMR2         IMx           LL_EXTI_EnableIT_32_63
 323:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 324:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 325:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 326:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_34
 327:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_35 (*)
 328:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_36
 329:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_37
 330:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 331:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 332:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 333:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 334:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_42(*)
 335:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_32_63
 336:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 337:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 338:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 339:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableIT_32_63(uint32_t ExtiLine)
 340:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 341:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->IMR2, ExtiLine);
 342:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 343:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 344:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 345:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Interrupt request for Lines in range 0 to 31
 346:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The reset value for the direct or internal lines (see RM)
 347:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       is set to 1 in order to enable the interrupt by default.
 348:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Bits are set automatically at Power on.
 349:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll IMR1         IMx           LL_EXTI_DisableIT_0_31
 350:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 351:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 352:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 353:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 354:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 355:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 356:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 357:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 358:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 359:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 360:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 361:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 362:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 363:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 364:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 365:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 366:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 367:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 368:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_17
 369:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 370:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 371:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 372:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 373:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 374:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_23
 375:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_24
 376:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_25
 377:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_26
 378:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_27
 379:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_28
 380:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 381:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 382:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31
 383:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_0_31 (*)
 384:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 385:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 386:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 387:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 388:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableIT_0_31(uint32_t ExtiLine)
 389:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 390:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->IMR1, ExtiLine);
 391:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 392:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 393:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 394:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Interrupt request for Lines in range 32 to 63
 395:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The reset value for the direct lines (lines from 32 to 34, line
 396:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       39) is set to 1 in order to enable the interrupt by default.
 397:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Bits are set automatically at Power on.
 398:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll IMR2         IMx           LL_EXTI_DisableIT_32_63
 399:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 400:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 401:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 402:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_34
 403:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_35 (*)
 404:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_36
 405:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_37
 406:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 407:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 408:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 409:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 410:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_42(*)
 411:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_32_63
 412:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 413:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 414:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 415:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableIT_32_63(uint32_t ExtiLine)
 416:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 417:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->IMR2, ExtiLine);
 418:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 419:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 420:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 421:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Indicate if ExtiLine Interrupt request is enabled for Lines in range 0 to 31
 422:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The reset value for the direct or internal lines (see RM)
 423:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       is set to 1 in order to enable the interrupt by default.
 424:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Bits are set automatically at Power on.
 425:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll IMR1         IMx           LL_EXTI_IsEnabledIT_0_31
 426:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 427:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 428:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 429:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 430:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 431:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 432:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 433:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 434:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 435:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 436:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 437:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 438:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 439:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 440:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 441:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 442:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 443:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 444:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_17
 445:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 446:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 447:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 448:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 449:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 450:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_23
 451:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_24
 452:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_25
 453:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_26
 454:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_27
 455:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_28
 456:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 457:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 458:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
 459:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_0_31
 460:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 461:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 462:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval State of bit (1 or 0).
 463:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 464:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE uint32_t LL_EXTI_IsEnabledIT_0_31(uint32_t ExtiLine)
 465:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 466:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   return ((READ_BIT(EXTI->IMR1, ExtiLine) == (ExtiLine)) ? 1UL : 0UL);
 467:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 468:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 469:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 470:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Indicate if ExtiLine Interrupt request is enabled for Lines in range 32 to 63
 471:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The reset value for the direct lines (lines from 32 to 34, line
 472:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       39) is set to 1 in order to enable the interrupt by default.
 473:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Bits are set automatically at Power on.
 474:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll IMR2         IMx           LL_EXTI_IsEnabledIT_32_63
 475:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 476:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 477:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 478:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_34
 479:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_35 (*)
 480:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_36
 481:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_37
 482:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 483:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 484:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 485:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 486:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_42(*)
 487:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_32_63
 488:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 489:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval State of bit (1 or 0).
 490:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 491:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE uint32_t LL_EXTI_IsEnabledIT_32_63(uint32_t ExtiLine)
 492:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 493:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   return ((READ_BIT(EXTI->IMR2, ExtiLine) == (ExtiLine)) ? 1UL : 0UL);
 494:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 495:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 496:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 497:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 498:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 499:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 500:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EF_Event_Management Event_Management
 501:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 502:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 503:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 504:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 505:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Event request for Lines in range 0 to 31
 506:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll EMR1         EMx           LL_EXTI_EnableEvent_0_31
 507:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 508:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 509:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 510:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 511:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 512:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 513:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 514:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 515:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 516:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 517:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 518:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 519:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 520:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 521:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 522:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 523:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 524:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 525:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_17
 526:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 527:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 528:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 529:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 530:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 531:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_23
 532:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_24
 533:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_25
 534:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_26
 535:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_27
 536:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_28
 537:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 538:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 539:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31
 540:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_0_31 (*)
 541:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 542:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 543:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 544:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 545:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableEvent_0_31(uint32_t ExtiLine)
 546:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 547:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->EMR1, ExtiLine);
 548:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 549:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 550:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 551:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 552:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Event request for Lines in range 32 to 63
 553:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll EMR2         EMx           LL_EXTI_EnableEvent_32_63
 554:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 555:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 556:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 557:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_34
 558:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_35 (*)
 559:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_36
 560:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_37
 561:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 562:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 563:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 564:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 565:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_42(*)
 566:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_32_63
 567:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 568:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 569:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 570:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableEvent_32_63(uint32_t ExtiLine)
 571:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 572:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->EMR2, ExtiLine);
 573:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 574:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 575:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 576:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Event request for Lines in range 0 to 31
 577:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll EMR1         EMx           LL_EXTI_DisableEvent_0_31
 578:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 579:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 580:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 581:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 582:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 583:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 584:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 585:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 586:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 587:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 588:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 589:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 590:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 591:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 592:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 593:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 594:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 595:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 596:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_17
 597:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 598:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 599:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 600:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 601:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 602:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_23
 603:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_24
 604:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_25
 605:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_26
 606:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_27
 607:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_28
 608:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 609:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 610:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
 611:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_0_31
 612:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 613:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 614:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 615:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 616:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableEvent_0_31(uint32_t ExtiLine)
 617:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 618:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->EMR1, ExtiLine);
 619:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 620:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 621:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 622:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Event request for Lines in range 32 to 63
 623:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll EMR2         EMx           LL_EXTI_DisableEvent_32_63
 624:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 625:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 626:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 627:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_34
 628:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_35 (*)
 629:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_36
 630:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_37
 631:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 632:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 633:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 634:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 635:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_42(*)
 636:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_32_63
 637:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 638:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 639:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 640:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableEvent_32_63(uint32_t ExtiLine)
 641:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 642:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->EMR2, ExtiLine);
 643:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 644:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 645:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 646:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Indicate if ExtiLine Event request is enabled for Lines in range 0 to 31
 647:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll EMR1         EMx           LL_EXTI_IsEnabledEvent_0_31
 648:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be one of the following values:
 649:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 650:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 651:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 652:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 653:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 654:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 655:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 656:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 657:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 658:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 659:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 660:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 661:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 662:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 663:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 664:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 665:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 666:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_17
 667:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 668:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 669:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 670:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 671:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 672:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_23
 673:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_24
 674:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_25
 675:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_26
 676:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_27
 677:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_28
 678:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 679:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 680:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31
 681:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_0_31 (*)
 682:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 683:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 684:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval State of bit (1 or 0).
 685:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 686:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE uint32_t LL_EXTI_IsEnabledEvent_0_31(uint32_t ExtiLine)
 687:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 688:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   return ((READ_BIT(EXTI->EMR1, ExtiLine) == (ExtiLine)) ? 1UL : 0UL);
 689:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 690:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 691:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 692:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 693:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Indicate if ExtiLine Event request is enabled for Lines in range 32 to 63
 694:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll EMR2         EMx           LL_EXTI_IsEnabledEvent_32_63
 695:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 696:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 697:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 698:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_34
 699:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_35 (*)
 700:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_36
 701:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_37
 702:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 703:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 704:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 705:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 706:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_42(*)
 707:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_ALL_32_63
 708:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 709:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval State of bit (1 or 0).
 710:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 711:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE uint32_t LL_EXTI_IsEnabledEvent_32_63(uint32_t ExtiLine)
 712:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 713:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   return ((READ_BIT(EXTI->EMR2, ExtiLine) == (ExtiLine)) ? 1UL : 0UL);
 714:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 715:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 716:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 717:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 718:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 719:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 720:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EF_Rising_Trigger_Management Rising_Trigger_Management
 721:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 722:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 723:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 724:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 725:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Rising Edge Trigger for Lines in range 0 to 31
 726:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
 727:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a rising edge on a configurable interrupt
 728:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_RTSR register, the
 729:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.
 730:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Rising and falling edge triggers can be set for
 731:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       the same interrupt line. In this case, both generate a trigger
 732:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       condition.
 733:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll RTSR1        RTx           LL_EXTI_EnableRisingTrig_0_31
 734:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 735:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 736:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 737:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 738:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 739:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 740:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 741:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 742:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 743:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 744:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 745:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 746:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 747:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 748:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 749:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 750:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 751:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 752:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 753:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 754:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 755:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 756:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 757:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 758:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 759:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
 760:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 761:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 762:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 763:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 764:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableRisingTrig_0_31(uint32_t ExtiLine)
 765:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 766:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->RTSR1, ExtiLine);
 767:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 768:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 769:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 770:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 771:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Rising Edge Trigger for Lines in range 32 to 63
 772:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
 773:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a rising edge on a configurable interrupt
 774:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_RTSR register, the
 775:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.Rising and falling edge triggers can be set for
 776:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       the same interrupt line. In this case, both generate a trigger
 777:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       condition.
 778:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll RTSR2        RTx           LL_EXTI_EnableRisingTrig_32_63
 779:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 780:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 781:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 782:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 783:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 784:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 785:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 786:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 787:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 788:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 789:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableRisingTrig_32_63(uint32_t ExtiLine)
 790:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 791:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->RTSR2, ExtiLine);
 792:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 793:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 794:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 795:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Rising Edge Trigger for Lines in range 0 to 31
 796:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
 797:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a rising edge on a configurable interrupt
 798:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_RTSR register, the
 799:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.
 800:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Rising and falling edge triggers can be set for
 801:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       the same interrupt line. In this case, both generate a trigger
 802:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       condition.
 803:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll RTSR1        RTx           LL_EXTI_DisableRisingTrig_0_31
 804:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 805:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 806:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 807:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 808:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 809:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 810:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 811:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 812:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 813:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 814:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 815:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 816:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 817:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 818:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 819:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 820:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 821:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 822:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 823:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 824:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 825:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 826:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 827:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 828:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 829:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
 830:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 831:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 832:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 833:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 834:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableRisingTrig_0_31(uint32_t ExtiLine)
 835:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 836:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->RTSR1, ExtiLine);
 837:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 838:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 839:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 840:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 841:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Rising Edge Trigger for Lines in range 32 to 63
 842:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
 843:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a rising edge on a configurable interrupt
 844:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_RTSR register, the
 845:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.
 846:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Rising and falling edge triggers can be set for
 847:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       the same interrupt line. In this case, both generate a trigger
 848:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       condition.
 849:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll RTSR2        RTx           LL_EXTI_DisableRisingTrig_32_63
 850:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 851:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 852:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 853:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 854:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 855:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 856:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 857:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 858:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 859:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 860:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableRisingTrig_32_63(uint32_t ExtiLine)
 861:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 862:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->RTSR2, ExtiLine);
 863:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 864:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 865:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 866:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Check if rising edge trigger is enabled for Lines in range 0 to 31
 867:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll RTSR1        RTx           LL_EXTI_IsEnabledRisingTrig_0_31
 868:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 869:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 870:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 871:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 872:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 873:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 874:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 875:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 876:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 877:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 878:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 879:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 880:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 881:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 882:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 883:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 884:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 885:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 886:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 887:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 888:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 889:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 890:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 891:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 892:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 893:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
 894:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 895:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 896:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval State of bit (1 or 0).
 897:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 898:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE uint32_t LL_EXTI_IsEnabledRisingTrig_0_31(uint32_t ExtiLine)
 899:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 900:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   return ((READ_BIT(EXTI->RTSR1, ExtiLine) == (ExtiLine)) ? 1UL : 0UL);
 901:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 902:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 903:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 904:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Check if rising edge trigger is enabled for Lines in range 32 to 63
 905:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll RTSR2        RTx           LL_EXTI_IsEnabledRisingTrig_32_63
 906:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 907:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 908:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 909:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 910:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 911:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 912:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 913:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 914:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval State of bit (1 or 0).
 915:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 916:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE uint32_t LL_EXTI_IsEnabledRisingTrig_32_63(uint32_t ExtiLine)
 917:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 918:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   return ((READ_BIT(EXTI->RTSR2, ExtiLine) == (ExtiLine)) ? 1UL : 0UL);
 919:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 920:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 921:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 922:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @}
 923:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 924:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 925:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /** @defgroup EXTI_LL_EF_Falling_Trigger_Management Falling_Trigger_Management
 926:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @{
 927:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 928:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 929:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 930:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Falling Edge Trigger for Lines in range 0 to 31
 931:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
 932:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a falling edge on a configurable interrupt
 933:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_FTSR register, the
 934:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.
 935:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Rising and falling edge triggers can be set for
 936:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       the same interrupt line. In this case, both generate a trigger
 937:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       condition.
 938:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll FTSR1        FTx           LL_EXTI_EnableFallingTrig_0_31
 939:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 940:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
 941:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
 942:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
 943:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
 944:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
 945:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
 946:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
 947:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
 948:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
 949:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
 950:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
 951:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
 952:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
 953:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
 954:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
 955:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
 956:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
 957:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
 958:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
 959:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
 960:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
 961:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
 962:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
 963:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
 964:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
 965:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 966:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
 967:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 968:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 969:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableFallingTrig_0_31(uint32_t ExtiLine)
 970:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 971:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->FTSR1, ExtiLine);
 972:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 973:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 974:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
 975:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Enable ExtiLine Falling Edge Trigger for Lines in range 32 to 63
 976:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
 977:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a Falling edge on a configurable interrupt
 978:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_FTSR register, the
 979:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.
 980:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Rising and falling edge triggers can be set for
 981:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       the same interrupt line. In this case, both generate a trigger
 982:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       condition.
 983:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll FTSR2        FTx           LL_EXTI_EnableFallingTrig_32_63
 984:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
 985:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
 986:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
 987:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
 988:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
 989:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
 990:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
 991:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
 992:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
 993:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
 994:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_EnableFallingTrig_32_63(uint32_t ExtiLine)
 995:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 996:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   SET_BIT(EXTI->FTSR2, ExtiLine);
 997:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 998:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 999:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
1000:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Falling Edge Trigger for Lines in range 0 to 31
1001:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
1002:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a Falling edge on a configurable interrupt
1003:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_FTSR register, the
1004:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.
1005:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Rising and falling edge triggers can be set for the same interrupt line.
1006:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       In this case, both generate a trigger condition.
1007:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll FTSR1        FTx           LL_EXTI_DisableFallingTrig_0_31
1008:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
1009:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_0
1010:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_1
1011:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_2
1012:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_3
1013:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_4
1014:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_5
1015:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_6
1016:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_7
1017:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_8
1018:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_9
1019:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_10
1020:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_11
1021:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_12
1022:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_13
1023:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_14
1024:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_15
1025:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_16
1026:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_18
1027:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_19
1028:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_20
1029:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_21
1030:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_22
1031:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_29
1032:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_30
1033:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_31 (*)
1034:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
1035:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   Please check each device line mapping for EXTI Line availability
1036:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
1037:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
1038:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableFallingTrig_0_31(uint32_t ExtiLine)
 152              		.loc 2 1038 22 view .LVU42
 153              	.LBB59:
1039:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
1040:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->FTSR1, ExtiLine);
 154              		.loc 2 1040 3 view .LVU43
 155 0034 414C     		ldr	r4, .L38
 156 0036 E568     		ldr	r5, [r4, #12]
 157 0038 25EA0305 		bic	r5, r5, r3
 158 003c E560     		str	r5, [r4, #12]
 159              		.loc 2 1040 3 is_stmt 0 view .LVU44
 160              	.LBE59:
 161              	.LBE58:
 171:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Then Enable Rising Trigger on provided Lines */
 172:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableRisingTrig_0_31(EXTI_InitStruct->Line_0_31);
 162              		.loc 1 172 13 is_stmt 1 view .LVU45
 163              	.LVL4:
 164              	.LBB60:
 165              	.LBI60:
 764:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 166              		.loc 2 764 22 view .LVU46
 167              	.LBB61:
 766:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 168              		.loc 2 766 3 view .LVU47
 169 003e A568     		ldr	r5, [r4, #8]
 170 0040 2B43     		orrs	r3, r3, r5
 171 0042 A360     		str	r3, [r4, #8]
 172              	.LVL5:
 173              	.L6:
 766:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 174              		.loc 2 766 3 is_stmt 0 view .LVU48
 175              	.LBE61:
 176              	.LBE60:
 173:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 174:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           case LL_EXTI_TRIGGER_FALLING:
 175:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* First Disable Rising Trigger on provided Lines */
 176:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_DisableRisingTrig_0_31(EXTI_InitStruct->Line_0_31);
 177:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Then Enable Falling Trigger on provided Lines */
 178:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableFallingTrig_0_31(EXTI_InitStruct->Line_0_31);
 179:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 180:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           case LL_EXTI_TRIGGER_RISING_FALLING:
 181:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Enable Rising Trigger on provided Lines */
 182:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableRisingTrig_0_31(EXTI_InitStruct->Line_0_31);
 183:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Enable Falling Trigger on provided Lines */
 184:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableFallingTrig_0_31(EXTI_InitStruct->Line_0_31);
 185:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 186:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           default:
 187:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             status |= 0x02u;
 188:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 189:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         }
 190:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       }
 191:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     }
 192:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* Configure EXTI Lines in range from 32 to 63 */
 193:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     if (EXTI_InitStruct->Line_32_63 != LL_EXTI_LINE_NONE)
 177              		.loc 1 193 5 is_stmt 1 view .LVU49
 178              		.loc 1 193 8 is_stmt 0 view .LVU50
 179 0044 002A     		cmp	r2, #0
 180 0046 4AD0     		beq	.L4
 194:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     {
 195:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       switch (EXTI_InitStruct->Mode)
 181              		.loc 1 195 7 is_stmt 1 view .LVU51
 182              		.loc 1 195 30 is_stmt 0 view .LVU52
 183 0048 4B7A     		ldrb	r3, [r1, #9]	@ zero_extendqisi2
 184              		.loc 1 195 7 view .LVU53
 185 004a 012B     		cmp	r3, #1
 186 004c 48D0     		beq	.L15
 187 004e 002B     		cmp	r3, #0
 188 0050 2DD0     		beq	.L16
 189 0052 022B     		cmp	r3, #2
 190 0054 4DD0     		beq	.L17
 196:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       {
 197:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         case LL_EXTI_MODE_IT:
 198:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* First Disable Event on provided Lines */
 199:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_DisableEvent_32_63(EXTI_InitStruct->Line_32_63);
 200:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable IT on provided Lines */
 201:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableIT_32_63(EXTI_InitStruct->Line_32_63);
 202:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 203:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         case LL_EXTI_MODE_EVENT:
 204:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* First Disable IT on provided Lines */
 205:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_DisableIT_32_63(EXTI_InitStruct->Line_32_63);
 206:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable Event on provided Lines */
 207:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableEvent_32_63(EXTI_InitStruct->Line_32_63);
 208:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 209:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         case LL_EXTI_MODE_IT_EVENT:
 210:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Directly Enable IT on provided Lines */
 211:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableIT_32_63(EXTI_InitStruct->Line_32_63);
 212:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Directly Enable IT on provided Lines */
 213:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           LL_EXTI_EnableEvent_32_63(EXTI_InitStruct->Line_32_63);
 214:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 215:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         default:
 216:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           status |= 0x04u;
 191              		.loc 1 216 11 is_stmt 1 view .LVU54
 192              		.loc 1 216 18 is_stmt 0 view .LVU55
 193 0056 40F00400 		orr	r0, r0, #4
 194              	.LVL6:
 217:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 195              		.loc 1 217 11 is_stmt 1 view .LVU56
 196 005a 30E0     		b	.L19
 197              	.LVL7:
 198              	.L8:
 144:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable IT on provided Lines */
 199              		.loc 1 144 11 view .LVU57
 200              	.LBB62:
 201              	.LBI62:
 616:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 202              		.loc 2 616 22 view .LVU58
 203              	.LBB63:
 618:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 204              		.loc 2 618 3 view .LVU59
 205 005c 374C     		ldr	r4, .L38
 206 005e 6568     		ldr	r5, [r4, #4]
 207 0060 25EA0305 		bic	r5, r5, r3
 208 0064 6560     		str	r5, [r4, #4]
 209              	.LVL8:
 618:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 210              		.loc 2 618 3 is_stmt 0 view .LVU60
 211              	.LBE63:
 212              	.LBE62:
 146:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 213              		.loc 1 146 11 is_stmt 1 view .LVU61
 214              	.LBB64:
 215              	.LBI64:
 313:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 216              		.loc 2 313 22 view .LVU62
 217              	.LBB65:
 315:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 218              		.loc 2 315 3 view .LVU63
 219 0066 2568     		ldr	r5, [r4]
 220 0068 1D43     		orrs	r5, r5, r3
 221 006a 2560     		str	r5, [r4]
 222 006c DAE7     		b	.L10
 223              	.L7:
 315:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 224              		.loc 2 315 3 is_stmt 0 view .LVU64
 225              	.LBE65:
 226              	.LBE64:
 150:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable Event on provided Lines */
 227              		.loc 1 150 11 is_stmt 1 view .LVU65
 228              	.LVL9:
 229              	.LBB66:
 230              	.LBI66:
 388:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 231              		.loc 2 388 22 view .LVU66
 232              	.LBB67:
 390:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 233              		.loc 2 390 3 view .LVU67
 234 006e 3348     		ldr	r0, .L38
 235 0070 0468     		ldr	r4, [r0]
 236 0072 24EA0304 		bic	r4, r4, r3
 237              	.LVL10:
 238              	.L34:
 390:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 239              		.loc 2 390 3 is_stmt 0 view .LVU68
 240              	.LBE67:
 241              	.LBE66:
 242              	.LBB68:
 243              	.LBB69:
 315:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 244              		.loc 2 315 3 view .LVU69
 245 0076 0460     		str	r4, [r0]
 246              	.LBE69:
 247              	.LBE68:
 158:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 248              		.loc 1 158 11 is_stmt 1 view .LVU70
 249              	.LVL11:
 250              	.LBB71:
 251              	.LBI71:
 545:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 252              		.loc 2 545 22 view .LVU71
 253              	.LBB72:
 547:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 254              		.loc 2 547 3 view .LVU72
 255 0078 4468     		ldr	r4, [r0, #4]
 256 007a 1C43     		orrs	r4, r4, r3
 257 007c 4460     		str	r4, [r0, #4]
 258              	.LBE72:
 259              	.LBE71:
 124:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 260              		.loc 1 124 12 is_stmt 0 view .LVU73
 261 007e 0020     		movs	r0, #0
 262 0080 D0E7     		b	.L10
 263              	.L9:
 156:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Directly Enable Event on provided Lines */
 264              		.loc 1 156 11 is_stmt 1 view .LVU74
 265              	.LVL12:
 266              	.LBB73:
 267              	.LBI68:
 313:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 268              		.loc 2 313 22 view .LVU75
 269              	.LBB70:
 315:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 270              		.loc 2 315 3 view .LVU76
 271 0082 2E48     		ldr	r0, .L38
 272 0084 0468     		ldr	r4, [r0]
 273 0086 1C43     		orrs	r4, r4, r3
 274 0088 F5E7     		b	.L34
 275              	.LVL13:
 276              	.L11:
 315:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 277              		.loc 2 315 3 is_stmt 0 view .LVU77
 278              	.LBE70:
 279              	.LBE73:
 176:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Then Enable Falling Trigger on provided Lines */
 280              		.loc 1 176 13 is_stmt 1 view .LVU78
 281              	.LBB74:
 282              	.LBI74:
 834:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 283              		.loc 2 834 22 view .LVU79
 284              	.LBB75:
 836:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 285              		.loc 2 836 3 view .LVU80
 286 008a 2C4C     		ldr	r4, .L38
 287 008c A568     		ldr	r5, [r4, #8]
 288 008e 25EA0305 		bic	r5, r5, r3
 289              	.L35:
 836:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 290              		.loc 2 836 3 is_stmt 0 view .LVU81
 291              	.LBE75:
 292              	.LBE74:
 293              	.LBB76:
 294              	.LBB77:
 766:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 295              		.loc 2 766 3 view .LVU82
 296 0092 A560     		str	r5, [r4, #8]
 297              	.LBE77:
 298              	.LBE76:
 184:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 299              		.loc 1 184 13 is_stmt 1 view .LVU83
 300              	.LVL14:
 301              	.LBB79:
 302              	.LBI79:
 969:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 303              		.loc 2 969 22 view .LVU84
 304              	.LBB80:
 971:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 305              		.loc 2 971 3 view .LVU85
 306 0094 E568     		ldr	r5, [r4, #12]
 307 0096 2B43     		orrs	r3, r3, r5
 308 0098 E360     		str	r3, [r4, #12]
 309 009a D3E7     		b	.L6
 310              	.L12:
 971:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 311              		.loc 2 971 3 is_stmt 0 view .LVU86
 312              	.LBE80:
 313              	.LBE79:
 182:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Enable Falling Trigger on provided Lines */
 314              		.loc 1 182 13 is_stmt 1 view .LVU87
 315              	.LVL15:
 316              	.LBB81:
 317              	.LBI76:
 764:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 318              		.loc 2 764 22 view .LVU88
 319              	.LBB78:
 766:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 320              		.loc 2 766 3 view .LVU89
 321 009c 274C     		ldr	r4, .L38
 322 009e A568     		ldr	r5, [r4, #8]
 323 00a0 1D43     		orrs	r5, r5, r3
 324 00a2 F6E7     		b	.L35
 325              	.L13:
 766:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
 326              		.loc 2 766 3 is_stmt 0 view .LVU90
 327              	.LBE78:
 328              	.LBE81:
 187:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 329              		.loc 1 187 13 is_stmt 1 view .LVU91
 187:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 330              		.loc 1 187 20 is_stmt 0 view .LVU92
 331 00a4 40F00200 		orr	r0, r0, #2
 332              	.LVL16:
 188:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         }
 333              		.loc 1 188 13 is_stmt 1 view .LVU93
 334 00a8 CCE7     		b	.L6
 335              	.LVL17:
 336              	.L23:
 124:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 337              		.loc 1 124 12 is_stmt 0 view .LVU94
 338 00aa 1846     		mov	r0, r3
 339 00ac CAE7     		b	.L6
 340              	.LVL18:
 341              	.L16:
 199:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable IT on provided Lines */
 342              		.loc 1 199 11 is_stmt 1 view .LVU95
 343              	.LBB82:
 344              	.LBI82:
 640:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 345              		.loc 2 640 22 view .LVU96
 346              	.LBB83:
 642:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 347              		.loc 2 642 3 view .LVU97
 348 00ae 234B     		ldr	r3, .L38
 349 00b0 5C6A     		ldr	r4, [r3, #36]
 350 00b2 24EA0204 		bic	r4, r4, r2
 351 00b6 5C62     		str	r4, [r3, #36]
 352              	.LVL19:
 642:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 353              		.loc 2 642 3 is_stmt 0 view .LVU98
 354              	.LBE83:
 355              	.LBE82:
 201:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 356              		.loc 1 201 11 is_stmt 1 view .LVU99
 357              	.LBB84:
 358              	.LBI84:
 339:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 359              		.loc 2 339 22 view .LVU100
 360              	.LBB85:
 341:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 361              		.loc 2 341 3 view .LVU101
 362 00b8 1C6A     		ldr	r4, [r3, #32]
 363 00ba 1443     		orrs	r4, r4, r2
 364 00bc 1C62     		str	r4, [r3, #32]
 365              	.L19:
 341:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 366              		.loc 2 341 3 is_stmt 0 view .LVU102
 367              	.LBE85:
 368              	.LBE84:
 218:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       }
 219:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       if (EXTI_InitStruct->Trigger != LL_EXTI_TRIGGER_NONE)
 369              		.loc 1 219 7 is_stmt 1 view .LVU103
 370              		.loc 1 219 26 is_stmt 0 view .LVU104
 371 00be 8B7A     		ldrb	r3, [r1, #10]	@ zero_extendqisi2
 372              		.loc 1 219 10 view .LVU105
 373 00c0 6BB1     		cbz	r3, .L4
 220:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       {
 221:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         switch (EXTI_InitStruct->Trigger)
 374              		.loc 1 221 9 is_stmt 1 view .LVU106
 375 00c2 022B     		cmp	r3, #2
 376 00c4 19D0     		beq	.L20
 377 00c6 032B     		cmp	r3, #3
 378 00c8 20D0     		beq	.L21
 379 00ca 012B     		cmp	r3, #1
 380 00cc 22D1     		bne	.L22
 222:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         {
 223:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           case LL_EXTI_TRIGGER_RISING:
 224:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* First Disable Falling Trigger on provided Lines */
 225:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_DisableFallingTrig_32_63(EXTI_InitStruct->Line_32_63);
 381              		.loc 1 225 13 view .LVU107
 382              	.LVL20:
 383              	.LBB86:
 384              	.LBI86:
1041:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
1042:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** 
1043:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** /**
1044:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @brief  Disable ExtiLine Falling Edge Trigger for Lines in range 32 to 63
1045:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note The configurable wakeup lines are edge-triggered. No glitch must be
1046:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       generated on these lines. If a Falling edge on a configurable interrupt
1047:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       line occurs during a write operation in the EXTI_FTSR register, the
1048:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       pending bit is not set.
1049:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       Rising and falling edge triggers can be set for the same interrupt line.
1050:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *       In this case, both generate a trigger condition.
1051:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @rmtoll FTSR2        FTx           LL_EXTI_DisableFallingTrig_32_63
1052:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @param  ExtiLine This parameter can be a combination of the following values:
1053:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_32 (*)
1054:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_33 (*)
1055:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_38
1056:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_39
1057:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_40
1058:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   *         @arg @ref LL_EXTI_LINE_41
1059:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @note   (*): Available in some devices
1060:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   * @retval None
1061:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   */
1062:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** __STATIC_INLINE void LL_EXTI_DisableFallingTrig_32_63(uint32_t ExtiLine)
 385              		.loc 2 1062 22 view .LVU108
 386              	.LBB87:
1063:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
1064:../../..\CubeG4\include/stm32g4xx_ll_exti.h ****   CLEAR_BIT(EXTI->FTSR2, ExtiLine);
 387              		.loc 2 1064 3 view .LVU109
 388 00ce 1B4B     		ldr	r3, .L38
 389 00d0 D96A     		ldr	r1, [r3, #44]
 390              	.LVL21:
 391              		.loc 2 1064 3 is_stmt 0 view .LVU110
 392 00d2 21EA0201 		bic	r1, r1, r2
 393 00d6 D962     		str	r1, [r3, #44]
 394              		.loc 2 1064 3 view .LVU111
 395              	.LBE87:
 396              	.LBE86:
 226:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Then Enable IT on provided Lines */
 227:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableRisingTrig_32_63(EXTI_InitStruct->Line_32_63);
 397              		.loc 1 227 13 is_stmt 1 view .LVU112
 398              	.LVL22:
 399              	.LBB88:
 400              	.LBI88:
 789:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 401              		.loc 2 789 22 view .LVU113
 402              	.LBB89:
 791:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 403              		.loc 2 791 3 view .LVU114
 404 00d8 996A     		ldr	r1, [r3, #40]
 405 00da 0A43     		orrs	r2, r2, r1
 406 00dc 9A62     		str	r2, [r3, #40]
 407              	.LVL23:
 408              	.L4:
 791:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 409              		.loc 2 791 3 is_stmt 0 view .LVU115
 410              	.LBE89:
 411              	.LBE88:
 228:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 229:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           case LL_EXTI_TRIGGER_FALLING:
 230:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* First Disable Rising Trigger on provided Lines */
 231:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_DisableRisingTrig_32_63(EXTI_InitStruct->Line_32_63);
 232:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Then Enable Falling Trigger on provided Lines */
 233:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableFallingTrig_32_63(EXTI_InitStruct->Line_32_63);
 234:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 235:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           case LL_EXTI_TRIGGER_RISING_FALLING:
 236:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Enable Rising Trigger on provided Lines */
 237:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableRisingTrig_32_63(EXTI_InitStruct->Line_32_63);
 238:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Enable Falling Trigger on provided Lines */
 239:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             LL_EXTI_EnableFallingTrig_32_63(EXTI_InitStruct->Line_32_63);
 240:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 241:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           default:
 242:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             status |= 0x05u;
 243:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 244:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         }
 245:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****       }
 246:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     }
 247:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   }
 248:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   /* DISABLE LineCommand */
 249:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   else
 250:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   {
 251:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* De-configure IT EXTI Lines in range from 0 to 31 */
 252:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     LL_EXTI_DisableIT_0_31(EXTI_InitStruct->Line_0_31);
 253:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* De-configure Event EXTI Lines in range from 0 to 31 */
 254:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     LL_EXTI_DisableEvent_0_31(EXTI_InitStruct->Line_0_31);
 255:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* De-configure IT EXTI Lines in range from 32 to 63 */
 256:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     LL_EXTI_DisableIT_32_63(EXTI_InitStruct->Line_32_63);
 257:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* De-configure Event EXTI Lines in range from 32 to 63 */
 258:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     LL_EXTI_DisableEvent_32_63(EXTI_InitStruct->Line_32_63);
 259:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   }
 260:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 261:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   return status;
 262:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** }
 412              		.loc 1 262 1 view .LVU116
 413 00de 30BD     		pop	{r4, r5, pc}
 414              	.LVL24:
 415              	.L15:
 205:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Then Enable Event on provided Lines */
 416              		.loc 1 205 11 is_stmt 1 view .LVU117
 417              	.LBB90:
 418              	.LBI90:
 415:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 419              		.loc 2 415 22 view .LVU118
 420              	.LBB91:
 417:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 421              		.loc 2 417 3 view .LVU119
 422 00e0 164B     		ldr	r3, .L38
 423 00e2 1C6A     		ldr	r4, [r3, #32]
 424 00e4 24EA0204 		bic	r4, r4, r2
 425              	.LVL25:
 426              	.L36:
 417:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 427              		.loc 2 417 3 is_stmt 0 view .LVU120
 428              	.LBE91:
 429              	.LBE90:
 430              	.LBB92:
 431              	.LBB93:
 341:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 432              		.loc 2 341 3 view .LVU121
 433 00e8 1C62     		str	r4, [r3, #32]
 434              	.LBE93:
 435              	.LBE92:
 213:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           break;
 436              		.loc 1 213 11 is_stmt 1 view .LVU122
 437              	.LVL26:
 438              	.LBB95:
 439              	.LBI95:
 570:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 440              		.loc 2 570 22 view .LVU123
 441              	.LBB96:
 572:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 442              		.loc 2 572 3 view .LVU124
 443 00ea 5C6A     		ldr	r4, [r3, #36]
 444 00ec 1443     		orrs	r4, r4, r2
 445 00ee 5C62     		str	r4, [r3, #36]
 446 00f0 E5E7     		b	.L19
 447              	.L17:
 572:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 448              		.loc 2 572 3 is_stmt 0 view .LVU125
 449              	.LBE96:
 450              	.LBE95:
 211:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****           /* Directly Enable IT on provided Lines */
 451              		.loc 1 211 11 is_stmt 1 view .LVU126
 452              	.LVL27:
 453              	.LBB97:
 454              	.LBI92:
 339:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 455              		.loc 2 339 22 view .LVU127
 456              	.LBB94:
 341:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 457              		.loc 2 341 3 view .LVU128
 458 00f2 124B     		ldr	r3, .L38
 459 00f4 1C6A     		ldr	r4, [r3, #32]
 460 00f6 1443     		orrs	r4, r4, r2
 461 00f8 F6E7     		b	.L36
 462              	.LVL28:
 463              	.L20:
 341:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 464              		.loc 2 341 3 is_stmt 0 view .LVU129
 465              	.LBE94:
 466              	.LBE97:
 231:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Then Enable Falling Trigger on provided Lines */
 467              		.loc 1 231 13 is_stmt 1 view .LVU130
 468              	.LBB98:
 469              	.LBI98:
 860:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 470              		.loc 2 860 22 view .LVU131
 471              	.LBB99:
 862:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 472              		.loc 2 862 3 view .LVU132
 473 00fa 104B     		ldr	r3, .L38
 474 00fc 996A     		ldr	r1, [r3, #40]
 475              	.LVL29:
 862:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 476              		.loc 2 862 3 is_stmt 0 view .LVU133
 477 00fe 21EA0201 		bic	r1, r1, r2
 478              	.L37:
 862:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 479              		.loc 2 862 3 view .LVU134
 480              	.LBE99:
 481              	.LBE98:
 482              	.LBB100:
 483              	.LBB101:
 791:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 484              		.loc 2 791 3 view .LVU135
 485 0102 9962     		str	r1, [r3, #40]
 486              	.LBE101:
 487              	.LBE100:
 239:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 488              		.loc 1 239 13 is_stmt 1 view .LVU136
 489              	.LVL30:
 490              	.LBB103:
 491              	.LBI103:
 994:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 492              		.loc 2 994 22 view .LVU137
 493              	.LBB104:
 996:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 494              		.loc 2 996 3 view .LVU138
 495 0104 D96A     		ldr	r1, [r3, #44]
 496 0106 0A43     		orrs	r2, r2, r1
 497 0108 DA62     		str	r2, [r3, #44]
 498 010a E8E7     		b	.L4
 499              	.LVL31:
 500              	.L21:
 996:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 501              		.loc 2 996 3 is_stmt 0 view .LVU139
 502              	.LBE104:
 503              	.LBE103:
 237:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             /* Enable Falling Trigger on provided Lines */
 504              		.loc 1 237 13 is_stmt 1 view .LVU140
 505              	.LBB105:
 506              	.LBI100:
 789:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 507              		.loc 2 789 22 view .LVU141
 508              	.LBB102:
 791:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 509              		.loc 2 791 3 view .LVU142
 510 010c 0B4B     		ldr	r3, .L38
 511 010e 996A     		ldr	r1, [r3, #40]
 512              	.LVL32:
 791:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 513              		.loc 2 791 3 is_stmt 0 view .LVU143
 514 0110 1143     		orrs	r1, r1, r2
 515 0112 F6E7     		b	.L37
 516              	.LVL33:
 517              	.L22:
 791:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 518              		.loc 2 791 3 view .LVU144
 519              	.LBE102:
 520              	.LBE105:
 242:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 521              		.loc 1 242 13 is_stmt 1 view .LVU145
 242:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****             break;
 522              		.loc 1 242 20 is_stmt 0 view .LVU146
 523 0114 40F00500 		orr	r0, r0, #5
 524              	.LVL34:
 243:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****         }
 525              		.loc 1 243 13 is_stmt 1 view .LVU147
 526 0118 E1E7     		b	.L4
 527              	.LVL35:
 528              	.L5:
 252:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* De-configure Event EXTI Lines in range from 0 to 31 */
 529              		.loc 1 252 5 view .LVU148
 530              	.LBB106:
 531              	.LBI106:
 388:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 532              		.loc 2 388 22 view .LVU149
 533              	.LBB107:
 390:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 534              		.loc 2 390 3 view .LVU150
 535 011a 0849     		ldr	r1, .L38
 536              	.LVL36:
 390:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 537              		.loc 2 390 3 is_stmt 0 view .LVU151
 538 011c 0C68     		ldr	r4, [r1]
 539 011e DB43     		mvns	r3, r3
 540 0120 1C40     		ands	r4, r4, r3
 541 0122 0C60     		str	r4, [r1]
 542              	.LVL37:
 390:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 543              		.loc 2 390 3 view .LVU152
 544              	.LBE107:
 545              	.LBE106:
 254:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* De-configure IT EXTI Lines in range from 32 to 63 */
 546              		.loc 1 254 5 is_stmt 1 view .LVU153
 547              	.LBB108:
 548              	.LBI108:
 616:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 549              		.loc 2 616 22 view .LVU154
 550              	.LBB109:
 618:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 551              		.loc 2 618 3 view .LVU155
 552 0124 4C68     		ldr	r4, [r1, #4]
 553 0126 2340     		ands	r3, r3, r4
 554 0128 4B60     		str	r3, [r1, #4]
 618:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 555              		.loc 2 618 3 is_stmt 0 view .LVU156
 556              	.LBE109:
 557              	.LBE108:
 256:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****     /* De-configure Event EXTI Lines in range from 32 to 63 */
 558              		.loc 1 256 5 is_stmt 1 view .LVU157
 559              	.LVL38:
 560              	.LBB110:
 561              	.LBI110:
 415:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 562              		.loc 2 415 22 view .LVU158
 563              	.LBB111:
 417:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 564              		.loc 2 417 3 view .LVU159
 565 012a 0B6A     		ldr	r3, [r1, #32]
 566 012c D243     		mvns	r2, r2
 567 012e 1340     		ands	r3, r3, r2
 568 0130 0B62     		str	r3, [r1, #32]
 569              	.LVL39:
 417:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 570              		.loc 2 417 3 is_stmt 0 view .LVU160
 571              	.LBE111:
 572              	.LBE110:
 258:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   }
 573              		.loc 1 258 5 is_stmt 1 view .LVU161
 574              	.LBB112:
 575              	.LBI112:
 640:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** {
 576              		.loc 2 640 22 view .LVU162
 577              	.LBB113:
 642:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 578              		.loc 2 642 3 view .LVU163
 579 0132 4B6A     		ldr	r3, [r1, #36]
 580 0134 1A40     		ands	r2, r2, r3
 581 0136 4A62     		str	r2, [r1, #36]
 582              	.LVL40:
 642:../../..\CubeG4\include/stm32g4xx_ll_exti.h **** }
 583              		.loc 2 642 3 is_stmt 0 view .LVU164
 584              	.LBE113:
 585              	.LBE112:
 261:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** }
 586              		.loc 1 261 3 is_stmt 1 view .LVU165
 261:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** }
 587              		.loc 1 261 10 is_stmt 0 view .LVU166
 588 0138 D1E7     		b	.L4
 589              	.L39:
 590 013a 00BF     		.align	2
 591              	.L38:
 592 013c 00040140 		.word	1073808384
 593              		.cfi_endproc
 594              	.LFE163:
 596              		.section	.text.LL_EXTI_StructInit,"ax",%progbits
 597              		.align	1
 598              		.global	LL_EXTI_StructInit
 599              		.syntax unified
 600              		.thumb
 601              		.thumb_func
 602              		.fpu fpv4-sp-d16
 604              	LL_EXTI_StructInit:
 605              	.LVL41:
 606              	.LFB164:
 263:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** 
 264:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** /**
 265:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @brief  Set each @ref LL_EXTI_InitTypeDef field to default value.
 266:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @param  EXTI_InitStruct Pointer to a @ref LL_EXTI_InitTypeDef structure.
 267:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   * @retval None
 268:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   */
 269:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** void LL_EXTI_StructInit(LL_EXTI_InitTypeDef *EXTI_InitStruct)
 270:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** {
 607              		.loc 1 270 1 is_stmt 1 view -0
 608              		.cfi_startproc
 609              		@ args = 0, pretend = 0, frame = 0
 610              		@ frame_needed = 0, uses_anonymous_args = 0
 611              		@ link register save eliminated.
 271:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->Line_0_31      = LL_EXTI_LINE_NONE;
 612              		.loc 1 271 3 view .LVU168
 272:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->Line_32_63     = LL_EXTI_LINE_NONE;
 613              		.loc 1 272 3 view .LVU169
 273:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->LineCommand    = DISABLE;
 614              		.loc 1 273 3 view .LVU170
 274:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->Mode           = LL_EXTI_MODE_IT;
 615              		.loc 1 274 3 view .LVU171
 275:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->Trigger        = LL_EXTI_TRIGGER_FALLING;
 616              		.loc 1 275 3 view .LVU172
 271:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->Line_32_63     = LL_EXTI_LINE_NONE;
 617              		.loc 1 271 35 is_stmt 0 view .LVU173
 618 0000 0023     		movs	r3, #0
 272:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->LineCommand    = DISABLE;
 619              		.loc 1 272 35 view .LVU174
 620 0002 C0E90033 		strd	r3, r3, [r0]
 273:../../..\CubeG4\src/stm32g4xx_ll_exti.c ****   EXTI_InitStruct->Mode           = LL_EXTI_MODE_IT;
 621              		.loc 1 273 35 view .LVU175
 622 0006 0381     		strh	r3, [r0, #8]	@ movhi
 623              		.loc 1 275 35 view .LVU176
 624 0008 0223     		movs	r3, #2
 625 000a 8372     		strb	r3, [r0, #10]
 276:../../..\CubeG4\src/stm32g4xx_ll_exti.c **** }
 626              		.loc 1 276 1 view .LVU177
 627 000c 7047     		bx	lr
 628              		.cfi_endproc
 629              	.LFE164:
 631              		.text
 632              	.Letext0:
 633              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 634              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 635              		.file 5 "../../..\\CubeG4\\include/core_cm4.h"
 636              		.file 6 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 637              		.file 7 "../../..\\CubeG4\\include/stm32g431xx.h"
 638              		.file 8 "../../..\\CubeG4\\include/stm32g4xx.h"
