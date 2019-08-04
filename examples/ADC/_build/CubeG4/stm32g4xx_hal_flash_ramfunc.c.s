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
  13              		.file	"stm32g4xx_hal_flash_ramfunc.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.RamFunc,"ax",%progbits
  18              		.align	1
  19              		.global	HAL_FLASHEx_EnableRunPowerDown
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	HAL_FLASHEx_EnableRunPowerDown:
  27              	.LFB325:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_flash_ramfunc.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @file    stm32g4xx_hal_flash_ramfunc.c
   4:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @brief   FLASH RAMFUNC driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *          This file provides a Flash firmware functions which should be
   7:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *          executed from internal SRAM
   8:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *            + FLASH Power Down in Run mode
   9:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *            + FLASH DBANK User Option Byte
  10:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *
  11:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   @verbatim
  13:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   ==============================================================================
  14:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****                    ##### Flash RAM functions #####
  15:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   ==============================================================================
  16:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  17:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     *** ARM Compiler ***
  18:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     --------------------
  19:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     [..] RAM functions are defined using the toolchain options.
  20:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****          Functions that are executed in RAM should reside in a separate
  21:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****          source module. Using the 'Options for File' dialog you can simply change
  22:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****          the 'Code / Const' area of a module to a memory space in physical RAM.
  23:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****          Available memory areas are declared in the 'Target' tab of the
  24:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****          Options for Target' dialog.
  25:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  26:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     *** ICCARM Compiler ***
  27:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     -----------------------
  28:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     [..] RAM functions are defined using a specific toolchain keyword "__ramfunc".
  29:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  30:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     *** GNU Compiler ***
  31:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     --------------------
  32:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     [..] RAM functions are defined using a specific toolchain attribute
  33:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****          "__attribute__((section(".RamFunc")))".
  34:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  35:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   @endverbatim
  36:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   ******************************************************************************
  37:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @attention
  38:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *
  39:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * <h2><center>&copy; COPYRIGHT(c) 2019 STMicroelectronics</center></h2>
  40:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *
  41:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  42:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * the "License"; You may not use this file except in compliance with the
  43:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * License. You may obtain a copy of the License at:
  44:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *                       opensource.org/licenses/BSD-3-Clause
  45:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   *
  46:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   ******************************************************************************
  47:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   */
  48:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  49:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /* Includes ------------------------------------------------------------------*/
  50:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** #include "stm32g4xx_hal.h"
  51:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  52:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /** @addtogroup STM32G4xx_HAL_Driver
  53:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @{
  54:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   */
  55:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  56:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /** @defgroup FLASH_RAMFUNC FLASH_RAMFUNC
  57:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @brief FLASH functions executed from RAM
  58:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @{
  59:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   */
  60:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  61:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** #ifdef HAL_FLASH_MODULE_ENABLED
  62:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  63:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /* Private typedef -----------------------------------------------------------*/
  64:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /* Private define ------------------------------------------------------------*/
  65:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /* Private macro -------------------------------------------------------------*/
  66:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /* Private variables ---------------------------------------------------------*/
  67:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /* Private function prototypes -----------------------------------------------*/
  68:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /* Exported functions -------------------------------------------------------*/
  69:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  70:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /** @defgroup FLASH_RAMFUNC_Exported_Functions FLASH_RAMFUNC Exported Functions
  71:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @{
  72:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   */
  73:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  74:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /** @defgroup FLASH_RAMFUNC_Exported_Functions_Group1 Peripheral features functions
  75:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****  *  @brief   Data transfers functions
  76:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****  *
  77:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** @verbatim
  78:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****  ===============================================================================
  79:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****                       ##### ramfunc functions #####
  80:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****  ===============================================================================
  81:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     [..]
  82:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****     This subsection provides a set of functions that should be executed from RAM.
  83:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  84:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** @endverbatim
  85:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @{
  86:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   */
  87:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  88:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /**
  89:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @brief  Enable the Power down in Run Mode
  90:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @note   This function should be called and executed from SRAM memory.
  91:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @retval None
  92:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   */
  93:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** __RAM_FUNC HAL_StatusTypeDef HAL_FLASHEx_EnableRunPowerDown(void)
  94:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** {
  29              		.loc 1 94 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
  95:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   /* Enable the Power Down in Run mode*/
  96:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   __HAL_FLASH_POWER_DOWN_ENABLE();
  34              		.loc 1 96 3 view .LVU1
  35              		.loc 1 96 3 view .LVU2
  36 0000 054B     		ldr	r3, .L2
  37 0002 064A     		ldr	r2, .L2+4
  38 0004 5A60     		str	r2, [r3, #4]
  39              		.loc 1 96 3 view .LVU3
  40 0006 064A     		ldr	r2, .L2+8
  41 0008 5A60     		str	r2, [r3, #4]
  42              		.loc 1 96 3 view .LVU4
  43 000a 1A68     		ldr	r2, [r3]
  44 000c 42F40052 		orr	r2, r2, #8192
  45 0010 1A60     		str	r2, [r3]
  97:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
  98:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   return HAL_OK;
  46              		.loc 1 98 3 view .LVU5
  99:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
 100:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** }
  47              		.loc 1 100 1 is_stmt 0 view .LVU6
  48 0012 0020     		movs	r0, #0
  49 0014 7047     		bx	lr
  50              	.L3:
  51 0016 00BF     		.align	2
  52              	.L2:
  53 0018 00200240 		.word	1073881088
  54 001c 37261504 		.word	68494903
  55 0020 FDFCFBFA 		.word	-84148995
  56              		.cfi_endproc
  57              	.LFE325:
  59              		.align	1
  60              		.global	HAL_FLASHEx_DisableRunPowerDown
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  66              	HAL_FLASHEx_DisableRunPowerDown:
  67              	.LFB326:
 101:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
 102:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** /**
 103:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @brief  Disable the Power down in Run Mode
 104:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @note   This function should be called and executed from SRAM memory.
 105:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   * @retval None
 106:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   */
 107:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** __RAM_FUNC HAL_StatusTypeDef HAL_FLASHEx_DisableRunPowerDown(void)
 108:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** {
  68              		.loc 1 108 1 is_stmt 1 view -0
  69              		.cfi_startproc
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
 109:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   /* Disable the Power Down in Run mode*/
 110:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   __HAL_FLASH_POWER_DOWN_DISABLE();
  73              		.loc 1 110 3 view .LVU8
  74              		.loc 1 110 3 view .LVU9
  75 0024 054B     		ldr	r3, .L5
  76 0026 064A     		ldr	r2, .L5+4
  77 0028 5A60     		str	r2, [r3, #4]
  78              		.loc 1 110 3 view .LVU10
  79 002a 064A     		ldr	r2, .L5+8
  80 002c 5A60     		str	r2, [r3, #4]
  81              		.loc 1 110 3 view .LVU11
  82 002e 1A68     		ldr	r2, [r3]
  83 0030 22F40052 		bic	r2, r2, #8192
  84 0034 1A60     		str	r2, [r3]
 111:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** 
 112:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c ****   return HAL_OK;
  85              		.loc 1 112 3 view .LVU12
 113:../../..\CubeG4\src/stm32g4xx_hal_flash_ramfunc.c **** }
  86              		.loc 1 113 1 is_stmt 0 view .LVU13
  87 0036 0020     		movs	r0, #0
  88 0038 7047     		bx	lr
  89              	.L6:
  90 003a 00BF     		.align	2
  91              	.L5:
  92 003c 00200240 		.word	1073881088
  93 0040 37261504 		.word	68494903
  94 0044 FDFCFBFA 		.word	-84148995
  95              		.cfi_endproc
  96              	.LFE326:
  98              		.text
  99              	.Letext0:
 100              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 101              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 102              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 103              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 104              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 105              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 106              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 107              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
