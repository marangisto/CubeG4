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
  13              		.file	"stm32g4xx_hal_timebase_tim_template.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_InitTick,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_InitTick
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_InitTick:
  27              	.LVL0:
  28              	.LFB325:
  29              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_timebase_tim_template.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @file    stm32g4xx_hal_timebase_tim_template.c
   4:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @brief   HAL time base based on the hardware TIM Template.
   6:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *
   7:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *          This file override the native HAL time base functions (defined as weak)
   8:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *          the TIM time base:
   9:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *           + Intializes the TIM peripheral to generate a Period elapsed Event each 1ms
  10:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *           + HAL_IncTick is called inside HAL_TIM_PeriodElapsedCallback ie each 1ms
  11:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****  @verbatim
  13:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   ==============================================================================
  14:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****                         ##### How to use this driver #####
  15:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   ==============================================================================
  16:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     [..]
  17:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     This file must be copied to the application folder and modified as follows:
  18:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     (#) Rename it to 'stm32g4xx_hal_timebase_tim.c'
  19:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     (#) Add this file and the TIM HAL driver files to your project and make sure
  20:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****        HAL_TIM_MODULE_ENABLED is defined in stm32g4xx_hal_conf.h
  21:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  22:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     [..]
  23:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     (@) The application needs to ensure that the time base is always set to 1 millisecond
  24:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****        to have correct HAL operation.
  25:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  26:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   @endverbatim
  27:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   ******************************************************************************
  28:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @attention
  29:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *
  30:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  31:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * All rights reserved.</center></h2>
  32:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *
  33:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  34:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * the "License"; You may not use this file except in compliance with the
  35:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * License. You may obtain a copy of the License at:
  36:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *                        opensource.org/licenses/BSD-3-Clause
  37:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *
  38:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   ******************************************************************************
  39:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
  40:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  41:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /* Includes ------------------------------------------------------------------*/
  42:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** #include "stm32g4xx_hal.h"
  43:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  44:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /** @addtogroup STM32G4xx_HAL_Driver
  45:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @{
  46:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
  47:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  48:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /** @addtogroup HAL_TimeBase
  49:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @{
  50:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
  51:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  52:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /* Private typedef -----------------------------------------------------------*/
  53:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /* Private define ------------------------------------------------------------*/
  54:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /* Private macro -------------------------------------------------------------*/
  55:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /* Private variables ---------------------------------------------------------*/
  56:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** TIM_HandleTypeDef        TimHandle;
  57:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /* Private function prototypes -----------------------------------------------*/
  58:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** void TIM6_DAC_IRQHandler(void);
  59:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /* Private functions ---------------------------------------------------------*/
  60:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  61:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /**
  62:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @brief  This function configures the TIM6 as a time base source.
  63:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *         The time source is configured  to have 1ms time base with a dedicated
  64:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *         Tick interrupt priority.
  65:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @note   This function is called  automatically at the beginning of program after
  66:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   *         reset by HAL_Init() or at any time when clock is configured, by HAL_RCC_ClockConfig().
  67:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @param  TickPriority: Tick interrupt priority.
  68:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @retval HAL status
  69:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
  70:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
  71:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** {
  30              		.loc 1 71 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 32
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  72:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   RCC_ClkInitTypeDef    clkconfig;
  34              		.loc 1 72 3 view .LVU1
  73:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   uint32_t              uwTimclock;
  35              		.loc 1 73 3 view .LVU2
  74:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   uint32_t              uwAPB1Prescaler;
  36              		.loc 1 74 3 view .LVU3
  75:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   uint32_t              uwPrescalerValue;
  37              		.loc 1 75 3 view .LVU4
  76:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   uint32_t              pFLatency;
  38              		.loc 1 76 3 view .LVU5
  77:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  78:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Configure the TIM6 IRQ priority */
  79:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   HAL_NVIC_SetPriority(TIM6_DAC_IRQn, TickPriority, 0U);
  39              		.loc 1 79 3 view .LVU6
  71:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   RCC_ClkInitTypeDef    clkconfig;
  40              		.loc 1 71 1 is_stmt 0 view .LVU7
  41 0000 10B5     		push	{r4, lr}
  42              		.cfi_def_cfa_offset 8
  43              		.cfi_offset 4, -8
  44              		.cfi_offset 14, -4
  45              		.loc 1 79 3 view .LVU8
  46 0002 0146     		mov	r1, r0
  71:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   RCC_ClkInitTypeDef    clkconfig;
  47              		.loc 1 71 1 view .LVU9
  48 0004 88B0     		sub	sp, sp, #32
  49              		.cfi_def_cfa_offset 40
  50              		.loc 1 79 3 view .LVU10
  51 0006 0022     		movs	r2, #0
  52 0008 3620     		movs	r0, #54
  53              	.LVL1:
  54              		.loc 1 79 3 view .LVU11
  55 000a FFF7FEFF 		bl	HAL_NVIC_SetPriority
  56              	.LVL2:
  80:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  81:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Enable the TIM6 global Interrupt */
  82:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   HAL_NVIC_EnableIRQ(TIM6_DAC_IRQn);
  57              		.loc 1 82 3 is_stmt 1 view .LVU12
  58 000e 3620     		movs	r0, #54
  59 0010 FFF7FEFF 		bl	HAL_NVIC_EnableIRQ
  60              	.LVL3:
  83:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  84:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Enable TIM6 clock */
  85:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   __HAL_RCC_TIM6_CLK_ENABLE();
  61              		.loc 1 85 3 view .LVU13
  62              	.LBB2:
  63              		.loc 1 85 3 view .LVU14
  64              		.loc 1 85 3 view .LVU15
  65 0014 174B     		ldr	r3, .L6
  66 0016 9A6D     		ldr	r2, [r3, #88]
  67 0018 42F01002 		orr	r2, r2, #16
  68 001c 9A65     		str	r2, [r3, #88]
  69              		.loc 1 85 3 view .LVU16
  70 001e 9B6D     		ldr	r3, [r3, #88]
  71 0020 03F01003 		and	r3, r3, #16
  72 0024 0293     		str	r3, [sp, #8]
  73              		.loc 1 85 3 view .LVU17
  74              	.LBE2:
  86:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  87:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Get clock configuration */
  88:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   HAL_RCC_GetClockConfig(&clkconfig, &pFLatency);
  75              		.loc 1 88 3 is_stmt 0 view .LVU18
  76 0026 01A9     		add	r1, sp, #4
  77 0028 03A8     		add	r0, sp, #12
  78              	.LBB3:
  85:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  79              		.loc 1 85 3 view .LVU19
  80 002a 029B     		ldr	r3, [sp, #8]
  81              	.LBE3:
  82              		.loc 1 88 3 is_stmt 1 view .LVU20
  83 002c FFF7FEFF 		bl	HAL_RCC_GetClockConfig
  84              	.LVL4:
  89:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  90:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Get APB1 prescaler */
  91:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   uwAPB1Prescaler = clkconfig.APB1CLKDivider;
  85              		.loc 1 91 3 view .LVU21
  92:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
  93:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Compute TIM6 clock */
  94:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   if (uwAPB1Prescaler == RCC_HCLK_DIV1)
  86              		.loc 1 94 3 view .LVU22
  87              		.loc 1 94 6 is_stmt 0 view .LVU23
  88 0030 069B     		ldr	r3, [sp, #24]
  89 0032 C3B9     		cbnz	r3, .L2
  95:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   {
  96:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     uwTimclock = HAL_RCC_GetPCLK1Freq();
  90              		.loc 1 96 5 is_stmt 1 view .LVU24
  91              		.loc 1 96 18 is_stmt 0 view .LVU25
  92 0034 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
  93              	.LVL5:
  94              	.L3:
  97:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   }
  98:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   else
  99:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   {
 100:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     uwTimclock = 2U * HAL_RCC_GetPCLK1Freq();
 101:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   }
 102:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 103:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Compute the prescaler value to have TIM6 counter clock equal to 1MHz */
 104:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   uwPrescalerValue = (uint32_t)((uwTimclock / 1000000U) - 1U);
  95              		.loc 1 104 3 is_stmt 1 view .LVU26
 105:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 106:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Initialize TIM6 */
 107:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Instance = TIM6;
  96              		.loc 1 107 3 view .LVU27
  97              		.loc 1 107 22 is_stmt 0 view .LVU28
  98 0038 0F4C     		ldr	r4, .L6+4
  99 003a 104B     		ldr	r3, .L6+8
 100 003c 2360     		str	r3, [r4]
 108:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 109:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Initialize TIMx peripheral as follow:
 110:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   + Period = [(TIM6CLK/1000) - 1]. to have a (1/1000) s time base.
 111:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   + Prescaler = (uwTimclock/1000000 - 1) to have a 1MHz counter clock.
 112:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   + ClockDivision = 0
 113:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   + Counter direction = Up
 114:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.Period = (1000000U / 1000U) - 1U;
 101              		.loc 1 115 3 is_stmt 1 view .LVU29
 102              		.loc 1 115 25 is_stmt 0 view .LVU30
 103 003e 40F2E733 		movw	r3, #999
 104 0042 E360     		str	r3, [r4, #12]
 116:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.Prescaler = uwPrescalerValue;
 105              		.loc 1 116 3 is_stmt 1 view .LVU31
 104:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 106              		.loc 1 104 45 is_stmt 0 view .LVU32
 107 0044 0E4B     		ldr	r3, .L6+12
 108 0046 B0FBF3F0 		udiv	r0, r0, r3
 109              	.LVL6:
 104:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 110              		.loc 1 104 20 view .LVU33
 111 004a 0138     		subs	r0, r0, #1
 112              	.LVL7:
 117:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.ClockDivision = 0;
 113              		.loc 1 117 32 view .LVU34
 114 004c 0023     		movs	r3, #0
 116:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.Prescaler = uwPrescalerValue;
 115              		.loc 1 116 28 view .LVU35
 116 004e 6060     		str	r0, [r4, #4]
 117              		.loc 1 117 3 is_stmt 1 view .LVU36
 118:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.CounterMode = TIM_COUNTERMODE_UP;
 119:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   if (HAL_TIM_Base_Init(&TimHandle) == HAL_OK)
 118              		.loc 1 119 7 is_stmt 0 view .LVU37
 119 0050 2046     		mov	r0, r4
 120              	.LVL8:
 117:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.ClockDivision = 0;
 121              		.loc 1 117 32 view .LVU38
 122 0052 2361     		str	r3, [r4, #16]
 118:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.CounterMode = TIM_COUNTERMODE_UP;
 123              		.loc 1 118 3 is_stmt 1 view .LVU39
 118:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   TimHandle.Init.CounterMode = TIM_COUNTERMODE_UP;
 124              		.loc 1 118 30 is_stmt 0 view .LVU40
 125 0054 A360     		str	r3, [r4, #8]
 126              		.loc 1 119 3 is_stmt 1 view .LVU41
 127              		.loc 1 119 7 is_stmt 0 view .LVU42
 128 0056 FFF7FEFF 		bl	HAL_TIM_Base_Init
 129              	.LVL9:
 130              		.loc 1 119 6 view .LVU43
 131 005a 40B9     		cbnz	r0, .L5
 120:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   {
 121:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     /* Start the TIM time Base generation in interrupt mode */
 122:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****     return HAL_TIM_Base_Start_IT(&TimHandle);
 132              		.loc 1 122 5 is_stmt 1 view .LVU44
 133              		.loc 1 122 12 is_stmt 0 view .LVU45
 134 005c 2046     		mov	r0, r4
 135 005e FFF7FEFF 		bl	HAL_TIM_Base_Start_IT
 136              	.LVL10:
 137              	.L4:
 123:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   }
 124:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 125:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Return function status */
 126:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   return HAL_ERROR;
 127:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** }
 138              		.loc 1 127 1 view .LVU46
 139 0062 08B0     		add	sp, sp, #32
 140              		.cfi_remember_state
 141              		.cfi_def_cfa_offset 8
 142              		@ sp needed
 143 0064 10BD     		pop	{r4, pc}
 144              	.LVL11:
 145              	.L2:
 146              		.cfi_restore_state
 100:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   }
 147              		.loc 1 100 5 is_stmt 1 view .LVU47
 100:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   }
 148              		.loc 1 100 23 is_stmt 0 view .LVU48
 149 0066 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
 150              	.LVL12:
 100:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   }
 151              		.loc 1 100 16 view .LVU49
 152 006a 4000     		lsls	r0, r0, #1
 153              	.LVL13:
 100:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   }
 154              		.loc 1 100 16 view .LVU50
 155 006c E4E7     		b	.L3
 156              	.LVL14:
 157              	.L5:
 126:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** }
 158              		.loc 1 126 10 view .LVU51
 159 006e 0120     		movs	r0, #1
 160 0070 F7E7     		b	.L4
 161              	.L7:
 162 0072 00BF     		.align	2
 163              	.L6:
 164 0074 00100240 		.word	1073876992
 165 0078 00000000 		.word	TimHandle
 166 007c 00100040 		.word	1073745920
 167 0080 40420F00 		.word	1000000
 168              		.cfi_endproc
 169              	.LFE325:
 171              		.section	.text.HAL_SuspendTick,"ax",%progbits
 172              		.align	1
 173              		.global	HAL_SuspendTick
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu fpv4-sp-d16
 179              	HAL_SuspendTick:
 180              	.LFB326:
 128:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 129:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /**
 130:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @brief  Suspend Tick increment.
 131:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @note   Disable the tick increment by disabling TIM6 update interrupt.
 132:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @param  None
 133:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @retval None
 134:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
 135:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** void HAL_SuspendTick(void)
 136:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** {
 181              		.loc 1 136 1 is_stmt 1 view -0
 182              		.cfi_startproc
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185              		@ link register save eliminated.
 137:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Disable TIM6 update interrupt */
 138:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   __HAL_TIM_DISABLE_IT(&TimHandle, TIM_IT_UPDATE);
 186              		.loc 1 138 3 view .LVU53
 187 0000 034B     		ldr	r3, .L9
 188 0002 1A68     		ldr	r2, [r3]
 189 0004 D368     		ldr	r3, [r2, #12]
 190 0006 23F00103 		bic	r3, r3, #1
 191 000a D360     		str	r3, [r2, #12]
 139:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** }
 192              		.loc 1 139 1 is_stmt 0 view .LVU54
 193 000c 7047     		bx	lr
 194              	.L10:
 195 000e 00BF     		.align	2
 196              	.L9:
 197 0010 00000000 		.word	TimHandle
 198              		.cfi_endproc
 199              	.LFE326:
 201              		.section	.text.HAL_ResumeTick,"ax",%progbits
 202              		.align	1
 203              		.global	HAL_ResumeTick
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu fpv4-sp-d16
 209              	HAL_ResumeTick:
 210              	.LFB327:
 140:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 141:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /**
 142:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @brief  Resume Tick increment.
 143:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @note   Enable the tick increment by enabling TIM6 update interrupt.
 144:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @param  None
 145:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @retval None
 146:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
 147:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** void HAL_ResumeTick(void)
 148:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** {
 211              		.loc 1 148 1 is_stmt 1 view -0
 212              		.cfi_startproc
 213              		@ args = 0, pretend = 0, frame = 0
 214              		@ frame_needed = 0, uses_anonymous_args = 0
 215              		@ link register save eliminated.
 149:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   /* Enable TIM6 update interrupt */
 150:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   __HAL_TIM_ENABLE_IT(&TimHandle, TIM_IT_UPDATE);
 216              		.loc 1 150 3 view .LVU56
 217 0000 034B     		ldr	r3, .L12
 218 0002 1A68     		ldr	r2, [r3]
 219 0004 D368     		ldr	r3, [r2, #12]
 220 0006 43F00103 		orr	r3, r3, #1
 221 000a D360     		str	r3, [r2, #12]
 151:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** }
 222              		.loc 1 151 1 is_stmt 0 view .LVU57
 223 000c 7047     		bx	lr
 224              	.L13:
 225 000e 00BF     		.align	2
 226              	.L12:
 227 0010 00000000 		.word	TimHandle
 228              		.cfi_endproc
 229              	.LFE327:
 231              		.section	.text.HAL_TIM_PeriodElapsedCallback,"ax",%progbits
 232              		.align	1
 233              		.global	HAL_TIM_PeriodElapsedCallback
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu fpv4-sp-d16
 239              	HAL_TIM_PeriodElapsedCallback:
 240              	.LVL15:
 241              	.LFB328:
 152:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 153:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /**
 154:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @brief  Period elapsed callback in non blocking mode
 155:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @note   This function is called  when TIM6 interrupt took place, inside
 156:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
 157:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * a global variable "uwTick" used as application time base.
 158:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @param  htim : TIM handle
 159:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @retval None
 160:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
 161:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
 162:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** {
 242              		.loc 1 162 1 is_stmt 1 view -0
 243              		.cfi_startproc
 244              		@ args = 0, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246              		@ link register save eliminated.
 163:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   HAL_IncTick();
 247              		.loc 1 163 3 view .LVU59
 248 0000 FFF7FEBF 		b	HAL_IncTick
 249              	.LVL16:
 250              		.loc 1 163 3 is_stmt 0 view .LVU60
 251              		.cfi_endproc
 252              	.LFE328:
 254              		.section	.text.TIM6_DAC_IRQHandler,"ax",%progbits
 255              		.align	1
 256              		.global	TIM6_DAC_IRQHandler
 257              		.syntax unified
 258              		.thumb
 259              		.thumb_func
 260              		.fpu fpv4-sp-d16
 262              	TIM6_DAC_IRQHandler:
 263              	.LFB329:
 164:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** }
 165:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** 
 166:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** /**
 167:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @brief  This function handles TIM interrupt request.
 168:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @param  None
 169:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   * @retval None
 170:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   */
 171:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** void TIM6_DAC_IRQHandler(void)
 172:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c **** {
 264              		.loc 1 172 1 is_stmt 1 view -0
 265              		.cfi_startproc
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268              		@ link register save eliminated.
 173:../../..\CubeG4\src/stm32g4xx_hal_timebase_tim_template.c ****   HAL_TIM_IRQHandler(&TimHandle);
 269              		.loc 1 173 3 view .LVU62
 270 0000 0148     		ldr	r0, .L16
 271 0002 FFF7FEBF 		b	HAL_TIM_IRQHandler
 272              	.LVL17:
 273              	.L17:
 274 0006 00BF     		.align	2
 275              	.L16:
 276 0008 00000000 		.word	TimHandle
 277              		.cfi_endproc
 278              	.LFE329:
 280              		.comm	TimHandle,64,4
 281              		.text
 282              	.Letext0:
 283              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 284              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 285              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 286              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 287              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 288              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 289              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_rcc.h"
 290              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_dma.h"
 291              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 292              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_tim.h"
 293              		.file 12 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
 294              		.file 13 "../../..\\CubeG4\\include/stm32g4xx_hal_cortex.h"
