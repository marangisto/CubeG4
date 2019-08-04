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
  13              		.file	"stm32g4xx_hal_msp_template.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.HAL_MspInit,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_MspInit
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_MspInit:
  27              	.LFB325:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_msp_template.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @file    stm32g4xx_hal_msp_template.c
   4:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @brief   HAL MSP module.
   6:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   *          This file template is located in the HAL folder and should be copied
   7:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   *          to the user folder.
   8:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   ******************************************************************************
   9:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @attention
  10:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  12:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * All rights reserved.</center></h2>
  13:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   *
  14:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  15:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * the "License"; You may not use this file except in compliance with the
  16:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * License. You may obtain a copy of the License at:
  17:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   *                        opensource.org/licenses/BSD-3-Clause
  18:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   *
  19:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   ******************************************************************************
  20:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   */
  21:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** 
  22:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /* Includes ------------------------------------------------------------------*/
  23:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** #include "stm32g4xx_hal.h"
  24:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** 
  25:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /** @addtogroup STM32G4xx_HAL_Driver
  26:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @{
  27:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   */
  28:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** 
  29:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /** @defgroup HAL_MSP HAL MSP module driver
  30:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @brief HAL MSP module.
  31:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @{
  32:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   */
  33:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** 
  34:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /* Private typedef -----------------------------------------------------------*/
  35:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /* Private define ------------------------------------------------------------*/
  36:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /* Private macro -------------------------------------------------------------*/
  37:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /* Private variables ---------------------------------------------------------*/
  38:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /* Private function prototypes -----------------------------------------------*/
  39:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /* Private functions ---------------------------------------------------------*/
  40:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** 
  41:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /** @defgroup HAL_MSP_Private_Functions
  42:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @{
  43:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   */
  44:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** 
  45:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** /**
  46:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @brief  Initialize the Global MSP.
  47:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @param  None
  48:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   * @retval None
  49:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   */
  50:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** void HAL_MspInit(void)
  51:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** {
  29              		.loc 1 51 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
  52:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****   /* NOTE : This function is generated automatically by STM32CubeMX and eventually
  53:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****             modified by the user
  54:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c ****    */
  55:../../..\CubeG4\src/stm32g4xx_hal_msp_template.c **** }
  34              		.loc 1 55 1 view .LVU1
  35 0000 7047     		bx	lr
  36              		.cfi_endproc
  37              	.LFE325:
  39              		.section	.text.HAL_MspDeInit,"ax",%progbits
  40              		.align	1
  41              		.global	HAL_MspDeInit
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  47              	HAL_MspDeInit:
  48              	.LFB330:
  49              		.cfi_startproc
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 7047     		bx	lr
  54              		.cfi_endproc
  55              	.LFE330:
  57              		.section	.text.HAL_PPP_MspInit,"ax",%progbits
  58              		.align	1
  59              		.global	HAL_PPP_MspInit
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv4-sp-d16
  65              	HAL_PPP_MspInit:
  66              	.LFB332:
  67              		.cfi_startproc
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 7047     		bx	lr
  72              		.cfi_endproc
  73              	.LFE332:
  75              		.section	.text.HAL_PPP_MspDeInit,"ax",%progbits
  76              		.align	1
  77              		.global	HAL_PPP_MspDeInit
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv4-sp-d16
  83              	HAL_PPP_MspDeInit:
  84              	.LFB334:
  85              		.cfi_startproc
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88              		@ link register save eliminated.
  89 0000 7047     		bx	lr
  90              		.cfi_endproc
  91              	.LFE334:
  93              		.text
  94              	.Letext0:
  95              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
  96              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
  97              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
  98              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
  99              		.file 6 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 100              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 101              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
