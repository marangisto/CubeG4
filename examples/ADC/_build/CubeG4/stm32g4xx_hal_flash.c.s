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
  13              		.file	"stm32g4xx_hal_flash.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.FLASH_Program_Fast,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	FLASH_Program_Fast:
  26              	.LVL0:
  27              	.LFB338:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_flash.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @file    stm32g4xx_hal_flash.c
   4:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief   FLASH HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *          functionalities of the internal FLASH memory:
   8:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           + Program operations functions
   9:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           + Memory Control functions
  10:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           + Peripheral Errors functions
  11:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
  12:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   @verbatim
  13:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   ==============================================================================
  14:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                         ##### FLASH peripheral features #####
  15:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   ==============================================================================
  16:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  17:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   [..] The Flash memory interface manages CPU AHB I-Code and D-Code accesses
  18:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        to the Flash memory. It implements the erase and program Flash memory operations
  19:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        and the read and write protection mechanisms.
  20:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  21:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   [..] The Flash memory interface accelerates code execution with a system of instruction
  22:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        prefetch and cache lines.
  23:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  24:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   [..] The FLASH main features are:
  25:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) Flash memory read operations
  26:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) Flash memory program/erase operations
  27:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) Read / write protections
  28:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) Option bytes programming
  29:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) Prefetch on I-Code
  30:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) 32 cache lines of 4*64 or 2*128 bits on I-Code
  31:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) 8 cache lines of 4*64 or 2*128 bits on D-Code
  32:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (+) Error code correction (ECC) : Data in flash are 72-bits word
  33:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****           (8 bits added per double word)
  34:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  35:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  36:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                         ##### How to use this driver #####
  37:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   ==============================================================================
  38:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     [..]
  39:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       This driver provides functions and macros to configure and program the FLASH
  40:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       memory of all STM32G4xx devices.
  41:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  42:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (#) Flash Memory IO Programming functions:
  43:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) Lock and Unlock the FLASH interface using HAL_FLASH_Unlock() and
  44:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                 HAL_FLASH_Lock() functions
  45:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) Program functions: double word and fast program (full row programming)
  46:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) There are two modes of programming :
  47:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****             (+++) Polling mode using HAL_FLASH_Program() function
  48:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****             (+++) Interrupt mode using HAL_FLASH_Program_IT() function
  49:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  50:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (#) Interrupts and flags management functions:
  51:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) Handle FLASH interrupts by calling HAL_FLASH_IRQHandler()
  52:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) Callback functions are called when the flash operations are finished :
  53:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                 HAL_FLASH_EndOfOperationCallback() when everything is ok, otherwise
  54:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                 HAL_FLASH_OperationErrorCallback()
  55:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) Get error flag status by calling HAL_GetError()
  56:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  57:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       (#) Option bytes management functions:
  58:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) Lock and Unlock the option bytes using HAL_FLASH_OB_Unlock() and
  59:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                 HAL_FLASH_OB_Lock() functions
  60:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****            (++) Launch the reload of the option bytes using HAL_FLASH_Launch() function.
  61:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                 In this case, a reset is generated
  62:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  63:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     [..]
  64:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       In addition to these functions, this driver includes a set of macros allowing
  65:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       to handle the following operations:
  66:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        (+) Set the latency
  67:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        (+) Enable/Disable the prefetch buffer
  68:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        (+) Enable/Disable the Instruction cache and the Data cache
  69:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        (+) Reset the Instruction cache and the Data cache
  70:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        (+) Enable/Disable the Flash power-down during low-power run and sleep modes
  71:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        (+) Enable/Disable the Flash interrupts
  72:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****        (+) Monitor the Flash flags status
  73:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  74:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   @endverbatim
  75:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   ******************************************************************************
  76:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @attention
  77:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
  78:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * <h2><center>&copy; COPYRIGHT(c) 2019 STMicroelectronics</center></h2>
  79:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
  80:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  81:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * the "License"; You may not use this file except in compliance with the
  82:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * License. You may obtain a copy of the License at:
  83:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *                       opensource.org/licenses/BSD-3-Clause
  84:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
  85:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   ******************************************************************************
  86:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
  87:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  88:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Includes ------------------------------------------------------------------*/
  89:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #include "stm32g4xx_hal.h"
  90:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  91:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @addtogroup STM32G4xx_HAL_Driver
  92:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
  93:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
  94:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
  95:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH FLASH
  96:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief FLASH HAL module driver
  97:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
  98:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
  99:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 100:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #ifdef HAL_FLASH_MODULE_ENABLED
 101:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 102:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Private typedef -----------------------------------------------------------*/
 103:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Private defines -----------------------------------------------------------*/
 104:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH_Private_Constants FLASH Private Constants
 105:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 106:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 107:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #define FLASH_NB_DOUBLE_WORDS_IN_ROW  32
 108:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 109:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @}
 110:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 111:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 112:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Private macros ------------------------------------------------------------*/
 113:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Private variables ---------------------------------------------------------*/
 114:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH_Private_Variables FLASH Private Variables
 115:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 116:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 117:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 118:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 119:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Variable used for Program/Erase sectors under interruption
 120:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 121:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** FLASH_ProcessTypeDef pFlash  = {.Lock = HAL_UNLOCKED,
 122:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                                 .ErrorCode = HAL_FLASH_ERROR_NONE,
 123:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                                 .ProcedureOnGoing = FLASH_PROC_NONE,
 124:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                                 .Address = 0U,
 125:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                                 .Bank = FLASH_BANK_1,
 126:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                                 .Page = 0U,
 127:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                                 .NbPagesToErase = 0U,
 128:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                                 .CacheToReactivate = FLASH_CACHE_DISABLED};
 129:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 130:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @}
 131:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 132:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 133:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Private function prototypes -----------------------------------------------*/
 134:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH_Private_Functions FLASH Private Functions
 135:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 136:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 137:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** static void          FLASH_Program_DoubleWord(uint32_t Address, uint64_t Data);
 138:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** static void          FLASH_Program_Fast(uint32_t Address, uint32_t DataAddress);
 139:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 140:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @}
 141:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 142:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 143:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Exported functions --------------------------------------------------------*/
 144:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions FLASH Exported Functions
 145:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 146:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 147:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 148:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions_Group1 Programming operation functions
 149:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *  @brief   Programming operation functions
 150:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
 151:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** @verbatim
 152:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****  ===============================================================================
 153:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                   ##### Programming operation functions #####
 154:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****  ===============================================================================
 155:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     [..]
 156:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     This subsection provides a set of functions allowing to manage the FLASH
 157:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     program operations.
 158:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 159:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** @endverbatim
 160:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 161:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 162:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 163:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 164:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Program double word or fast program of a row at a specified address.
 165:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  TypeProgram Indicate the way to program at a specified address.
 166:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *         This parameter can be a value of @ref FLASH_Type_Program.
 167:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Address specifies the address to be programmed.
 168:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Data specifies the data to be programmed.
 169:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *         This parameter is the data for the double word program and the address where
 170:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *         are stored the data for the row fast program.
 171:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
 172:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 173:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 174:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data)
 175:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 176:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 177:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t prog_bit = 0;
 178:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 179:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check the parameters */
 180:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
 181:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 182:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Process Locked */
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   __HAL_LOCK(&pFlash);
 184:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 185:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Wait for last operation to be completed */
 186:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 187:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 188:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (status == HAL_OK)
 189:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 190:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 191:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 192:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (TypeProgram == FLASH_TYPEPROGRAM_DOUBLEWORD)
 193:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 194:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Program double-word (64-bit) at a specified address */
 195:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       FLASH_Program_DoubleWord(Address, Data);
 196:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       prog_bit = FLASH_CR_PG;
 197:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 198:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else if ((TypeProgram == FLASH_TYPEPROGRAM_FAST) || (TypeProgram == FLASH_TYPEPROGRAM_FAST_AND_
 199:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 200:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Fast program a 32 row double-word (64-bit) at a specified address */
 201:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       FLASH_Program_Fast(Address, (uint32_t)Data);
 202:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 203:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* If it is the last row, the bit will be cleared at the end of the operation */
 204:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       if (TypeProgram == FLASH_TYPEPROGRAM_FAST_AND_LAST)
 205:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 206:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         prog_bit = FLASH_CR_FSTPG;
 207:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 208:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 209:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else
 210:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 211:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Nothing to do */
 212:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 213:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 214:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Wait for last operation to be completed */
 215:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 216:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 217:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* If the program operation is completed, disable the PG or FSTPG Bit */
 218:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (prog_bit != 0U)
 219:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 220:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       CLEAR_BIT(FLASH->CR, prog_bit);
 221:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 222:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 223:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 224:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Process Unlocked */
 225:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   __HAL_UNLOCK(&pFlash);
 226:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 227:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* return status */
 228:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return status;
 229:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 230:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 231:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 232:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Program double word or fast program of a row at a specified address with interrupt enab
 233:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  TypeProgram Indicate the way to program at a specified address.
 234:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *         This parameter can be a value of @ref FLASH_Type_Program.
 235:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Address specifies the address to be programmed.
 236:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Data specifies the data to be programmed.
 237:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *         This parameter is the data for the double word program and the address where
 238:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *         are stored the data for the row fast program.
 239:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
 240:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 241:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 242:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data)
 243:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 244:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 245:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 246:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check the parameters */
 247:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
 248:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 249:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Process Locked */
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   __HAL_LOCK(&pFlash);
 251:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 252:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Reset error code */
 253:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 254:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 255:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Wait for last operation to be completed */
 256:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
 257:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 258:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (status != HAL_OK)
 259:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 260:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Process Unlocked */
 261:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_UNLOCK(&pFlash);
 262:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 263:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   else
 264:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 265:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Set internal variables used by the IRQ handler */
 266:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (TypeProgram == FLASH_TYPEPROGRAM_FAST_AND_LAST)
 267:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 268:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       pFlash.ProcedureOnGoing = FLASH_PROC_PROGRAM_LAST;
 269:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 270:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else
 271:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 272:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       pFlash.ProcedureOnGoing = FLASH_PROC_PROGRAM;
 273:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 274:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     pFlash.Address = Address;
 275:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 276:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Enable End of Operation and Error interrupts */
 277:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP | FLASH_IT_OPERR);
 278:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 279:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (TypeProgram == FLASH_TYPEPROGRAM_DOUBLEWORD)
 280:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 281:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Program double-word (64-bit) at a specified address */
 282:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       FLASH_Program_DoubleWord(Address, Data);
 283:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 284:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else if ((TypeProgram == FLASH_TYPEPROGRAM_FAST) || (TypeProgram == FLASH_TYPEPROGRAM_FAST_AND_
 285:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 286:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Fast program a 32 row double-word (64-bit) at a specified address */
 287:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       FLASH_Program_Fast(Address, (uint32_t)Data);
 288:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 289:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else
 290:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 291:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Nothing to do */
 292:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 293:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 294:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 295:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return status;
 296:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 297:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 298:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 299:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Handle FLASH interrupt request.
 300:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval None
 301:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 302:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** void HAL_FLASH_IRQHandler(void)
 303:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 304:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t tmp_page;
 305:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t error;
 306:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   FLASH_ProcedureTypeDef procedure;
 307:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 308:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* If the operation is completed, disable the PG, PNB, MER1, MER2 and PER Bit */
 309:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   CLEAR_BIT(FLASH->CR, (FLASH_CR_PG | FLASH_CR_MER1 | FLASH_CR_PER | FLASH_CR_PNB));
 310:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #if defined (FLASH_OPTR_DBANK)
 311:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   CLEAR_BIT(FLASH->CR, FLASH_CR_MER2);
 312:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #endif
 313:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 314:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Disable the FSTPG Bit only if it is the last row programmed */
 315:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (pFlash.ProcedureOnGoing == FLASH_PROC_PROGRAM_LAST)
 316:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 317:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     CLEAR_BIT(FLASH->CR, FLASH_CR_FSTPG);
 318:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 319:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 320:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check FLASH operation error flags */
 321:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   error = (FLASH->SR & FLASH_FLAG_SR_ERRORS);
 322:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 323:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (error != 0U)
 324:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 325:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Save the error code */
 326:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     pFlash.ErrorCode |= error;
 327:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 328:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Clear error programming flags */
 329:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(error);
 330:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 331:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Flush the caches to be sure of the data consistency */
 332:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     FLASH_FlushCaches() ;
 333:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 334:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* FLASH error interrupt user callback */
 335:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     procedure = pFlash.ProcedureOnGoing;
 336:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (procedure == FLASH_PROC_PAGE_ERASE)
 337:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 338:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       HAL_FLASH_OperationErrorCallback(pFlash.Page);
 339:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 340:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else if (procedure == FLASH_PROC_MASS_ERASE)
 341:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 342:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       HAL_FLASH_OperationErrorCallback(pFlash.Bank);
 343:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 344:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else if ((procedure == FLASH_PROC_PROGRAM) ||
 345:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****              (procedure == FLASH_PROC_PROGRAM_LAST))
 346:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 347:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       HAL_FLASH_OperationErrorCallback(pFlash.Address);
 348:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 349:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else
 350:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 351:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Nothing to do */
 352:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 353:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 354:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /*Stop the procedure ongoing*/
 355:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 356:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 357:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 358:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check FLASH End of Operation flag  */
 359:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP))
 360:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 361:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Clear FLASH End of Operation pending bit */
 362:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
 363:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 364:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (pFlash.ProcedureOnGoing == FLASH_PROC_PAGE_ERASE)
 365:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 366:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Nb of pages to erased can be decreased */
 367:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       pFlash.NbPagesToErase--;
 368:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 369:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Check if there are still pages to erase*/
 370:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       if (pFlash.NbPagesToErase != 0U)
 371:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 372:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* Indicate user which page has been erased*/
 373:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         HAL_FLASH_EndOfOperationCallback(pFlash.Page);
 374:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 375:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* Increment page number */
 376:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         pFlash.Page++;
 377:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         tmp_page = pFlash.Page;
 378:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         FLASH_PageErase(tmp_page, pFlash.Bank);
 379:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 380:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       else
 381:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 382:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* No more pages to Erase */
 383:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* Reset Address and stop Erase pages procedure */
 384:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         pFlash.Page = 0xFFFFFFFFU;
 385:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 386:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 387:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* Flush the caches to be sure of the data consistency */
 388:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         FLASH_FlushCaches() ;
 389:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 390:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* FLASH EOP interrupt user callback */
 391:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         HAL_FLASH_EndOfOperationCallback(pFlash.Page);
 392:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 393:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 394:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     else
 395:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 396:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /* Flush the caches to be sure of the data consistency */
 397:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       FLASH_FlushCaches() ;
 398:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 399:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       procedure = pFlash.ProcedureOnGoing;
 400:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       if (procedure == FLASH_PROC_MASS_ERASE)
 401:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 402:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* MassErase ended. Return the selected bank */
 403:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* FLASH EOP interrupt user callback */
 404:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         HAL_FLASH_EndOfOperationCallback(pFlash.Bank);
 405:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 406:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       else if ((procedure == FLASH_PROC_PROGRAM) ||
 407:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                (procedure == FLASH_PROC_PROGRAM_LAST))
 408:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 409:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* Program ended. Return the selected address */
 410:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* FLASH EOP interrupt user callback */
 411:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         HAL_FLASH_EndOfOperationCallback(pFlash.Address);
 412:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 413:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       else
 414:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 415:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         /* Nothing to do */
 416:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 417:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 418:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       /*Clear the procedure ongoing*/
 419:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 420:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 421:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 422:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 423:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (pFlash.ProcedureOnGoing == FLASH_PROC_NONE)
 424:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 425:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Disable End of Operation and Error interrupts */
 426:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_FLASH_DISABLE_IT(FLASH_IT_EOP | FLASH_IT_OPERR);
 427:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 428:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Process Unlocked */
 429:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_UNLOCK(&pFlash);
 430:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 431:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 432:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 433:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 434:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  FLASH end of operation interrupt callback.
 435:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  ReturnValue The value saved in this parameter depends on the ongoing procedure:
 436:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           @arg Mass Erase: Bank number which has been requested to erase
 437:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           @arg Page Erase: Page which has been erased
 438:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *                            (if 0xFFFFFFFF, it means that all the selected pages have been erase
 439:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           @arg Program: Address which was selected for data program
 440:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval None
 441:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 442:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** __weak void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue)
 443:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 444:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Prevent unused argument(s) compilation warning */
 445:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   UNUSED(ReturnValue);
 446:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 447:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 448:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****             the HAL_FLASH_EndOfOperationCallback could be implemented in the user file
 449:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****    */
 450:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 451:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 452:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 453:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  FLASH operation error interrupt callback.
 454:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  ReturnValue The value saved in this parameter depends on the ongoing procedure:
 455:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           @arg Mass Erase: Bank number which has been requested to erase
 456:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           @arg Page Erase: Page number which returned an error
 457:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *           @arg Program: Address which was selected for data program
 458:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval None
 459:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 460:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** __weak void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue)
 461:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 462:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Prevent unused argument(s) compilation warning */
 463:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   UNUSED(ReturnValue);
 464:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 465:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 466:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****             the HAL_FLASH_OperationErrorCallback could be implemented in the user file
 467:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****    */
 468:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 469:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 470:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 471:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @}
 472:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 473:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 474:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions_Group2 Peripheral Control functions
 475:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief   Management functions
 476:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
 477:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** @verbatim
 478:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****  ===============================================================================
 479:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                       ##### Peripheral Control functions #####
 480:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****  ===============================================================================
 481:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     [..]
 482:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     This subsection provides a set of functions allowing to control the FLASH
 483:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     memory operations.
 484:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 485:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** @endverbatim
 486:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 487:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 488:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 489:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 490:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Unlock the FLASH control register access.
 491:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 492:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 493:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Unlock(void)
 494:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 495:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 496:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 497:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (READ_BIT(FLASH->CR, FLASH_CR_LOCK) != 0U)
 498:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 499:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Authorize the FLASH Registers access */
 500:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR, FLASH_KEY1);
 501:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR, FLASH_KEY2);
 502:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 503:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* verify Flash is unlocked */
 504:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (READ_BIT(FLASH->CR, FLASH_CR_LOCK) != 0U)
 505:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 506:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       status = HAL_ERROR;
 507:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 508:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 509:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 510:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return status;
 511:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 512:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 513:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 514:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Lock the FLASH control register access.
 515:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 516:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 517:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_Lock(void)
 518:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 519:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 520:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 521:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Set the LOCK Bit to lock the FLASH Registers access */
 522:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   SET_BIT(FLASH->CR, FLASH_CR_LOCK);
 523:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 524:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* verify Flash is locked */
 525:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (READ_BIT(FLASH->CR, FLASH_CR_LOCK) != 0U)
 526:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 527:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     status = HAL_OK;
 528:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 529:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 530:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return status;
 531:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 532:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 533:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 534:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Unlock the FLASH Option Bytes Registers access.
 535:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 536:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 537:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void)
 538:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 539:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 540:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 541:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (READ_BIT(FLASH->CR, FLASH_CR_OPTLOCK) != 0U)
 542:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 543:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Authorizes the Option Byte register programming */
 544:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY1);
 545:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY2);
 546:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 547:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* verify option bytes are unlocked */
 548:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (READ_BIT(FLASH->CR, FLASH_CR_OPTLOCK) != 0U)
 549:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 550:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       status = HAL_ERROR;
 551:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 552:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 553:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 554:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return status;
 555:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 556:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 557:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 558:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Lock the FLASH Option Bytes Registers access.
 559:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 560:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 561:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_OB_Lock(void)
 562:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 563:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 564:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 565:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Set the OPTLOCK Bit to lock the FLASH Option Byte Registers access */
 566:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   SET_BIT(FLASH->CR, FLASH_CR_OPTLOCK);
 567:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 568:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Verify option bytes are locked */
 569:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (READ_BIT(FLASH->CR, FLASH_CR_OPTLOCK) != 0U)
 570:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 571:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     status = HAL_OK;
 572:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 573:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 574:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return status;
 575:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 576:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 577:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 578:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Launch the option byte loading.
 579:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 580:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 581:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef HAL_FLASH_OB_Launch(void)
 582:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 583:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Set the bit to force the option byte reloading */
 584:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   SET_BIT(FLASH->CR, FLASH_CR_OBL_LAUNCH);
 585:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 586:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Wait for last operation to be completed */
 587:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return (FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE));
 588:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 589:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 590:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 591:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @}
 592:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 593:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 594:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @defgroup FLASH_Exported_Functions_Group3 Peripheral State and Errors functions
 595:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief   Peripheral Errors functions
 596:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *
 597:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** @verbatim
 598:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****  ===============================================================================
 599:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                 ##### Peripheral Errors functions #####
 600:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****  ===============================================================================
 601:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     [..]
 602:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     This subsection permits to get in run-time Errors of the FLASH peripheral.
 603:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 604:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** @endverbatim
 605:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 606:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 607:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 608:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 609:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Get the specific FLASH error flag.
 610:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval FLASH_ErrorCode. The returned value can be:
 611:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_RD: FLASH Read Protection error flag (PCROP)
 612:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_PGS: FLASH Programming Sequence error flag
 613:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_PGP: FLASH Programming Parallelism error flag
 614:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_PGA: FLASH Programming Alignment error flag
 615:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_WRP: FLASH Write protected error flag
 616:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_OPERATION: FLASH operation Error flag
 617:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_NONE: No error set
 618:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_OP: FLASH Operation error
 619:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_PROG: FLASH Programming error
 620:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_WRP: FLASH Write protection error
 621:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_PGA: FLASH Programming alignment error
 622:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_SIZ: FLASH Size error
 623:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_PGS: FLASH Programming sequence error
 624:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_MIS: FLASH Fast programming data miss error
 625:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_FAST: FLASH Fast programming error
 626:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_RD: FLASH PCROP read error
 627:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *            @arg HAL_FLASH_ERROR_OPTV: FLASH Option validity error
 628:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 629:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** uint32_t HAL_FLASH_GetError(void)
 630:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 631:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return pFlash.ErrorCode;
 632:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 633:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 634:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 635:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @}
 636:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 637:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 638:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 639:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @}
 640:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 641:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 642:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /* Private functions ---------------------------------------------------------*/
 643:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 644:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /** @addtogroup FLASH_Private_Functions
 645:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @{
 646:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 647:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 648:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 649:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Wait for a FLASH operation to complete.
 650:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Timeout maximum flash operation timeout.
 651:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval HAL_Status
 652:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 653:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout)
 654:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 655:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
 656:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****      Even if the FLASH operation fails, the BUSY flag will be reset and an error
 657:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****      flag will be set */
 658:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 659:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t tickstart = HAL_GetTick();
 660:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t error;
 661:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 662:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   while (__HAL_FLASH_GET_FLAG(FLASH_FLAG_BSY))
 663:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 664:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if ((HAL_GetTick() - tickstart) > Timeout)
 665:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 666:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       return HAL_TIMEOUT;
 667:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 668:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 669:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 670:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check FLASH operation error flags */
 671:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   error = (FLASH->SR & FLASH_FLAG_SR_ERRORS);
 672:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (error != 0u)
 673:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 674:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Save the error code */
 675:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     pFlash.ErrorCode |= error;
 676:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 677:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Clear error programming flags */
 678:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(error);
 679:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 680:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     return HAL_ERROR;
 681:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 682:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 683:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check FLASH End of Operation flag  */
 684:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP))
 685:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 686:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     /* Clear FLASH End of Operation pending bit */
 687:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
 688:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 689:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 690:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* If there is an error flag set */
 691:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return HAL_OK;
 692:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 693:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 694:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 695:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Program double-word (64-bit) at a specified address.
 696:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Address specifies the address to be programmed.
 697:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Data specifies the data to be programmed.
 698:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval None
 699:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 700:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** static void FLASH_Program_DoubleWord(uint32_t Address, uint64_t Data)
 701:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 702:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check the parameters */
 703:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   assert_param(IS_FLASH_PROGRAM_ADDRESS(Address));
 704:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 705:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Set PG bit */
 706:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   SET_BIT(FLASH->CR, FLASH_CR_PG);
 707:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 708:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Program first word */
 709:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *(uint32_t *)Address = (uint32_t)Data;
 710:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 711:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Barrier to ensure programming is performed in 2 steps, in right order
 712:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     (independently of compiler optimization behavior) */
 713:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   __ISB();
 714:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 715:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Program second word */
 716:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   *(uint32_t *)(Address + 4U) = (uint32_t)(Data >> 32U);
 717:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 718:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 719:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** /**
 720:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @brief  Fast program a row double-word (64-bit) at a specified address.
 721:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  Address specifies the address to be programmed.
 722:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @param  DataAddress specifies the address where the data are stored.
 723:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   * @retval None
 724:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   */
 725:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** static void FLASH_Program_Fast(uint32_t Address, uint32_t DataAddress)
 726:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
  29              		.loc 1 726 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
 727:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint8_t row_index = (2 * FLASH_NB_DOUBLE_WORDS_IN_ROW);
  33              		.loc 1 727 3 view .LVU1
 728:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t *dest_addr = (uint32_t *)Address;
  34              		.loc 1 728 3 view .LVU2
 729:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t *src_addr = (uint32_t *)DataAddress;
  35              		.loc 1 729 3 view .LVU3
 730:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t primask_bit;
  36              		.loc 1 730 3 view .LVU4
 731:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 732:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Check the parameters */
 733:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   assert_param(IS_FLASH_MAIN_MEM_ADDRESS(Address));
  37              		.loc 1 733 3 view .LVU5
 734:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 735:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Set FSTPG bit */
 736:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   SET_BIT(FLASH->CR, FLASH_CR_FSTPG);
  38              		.loc 1 736 3 view .LVU6
  39 0000 094A     		ldr	r2, .L4
  40 0002 5369     		ldr	r3, [r2, #20]
  41 0004 43F48023 		orr	r3, r3, #262144
 726:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint8_t row_index = (2 * FLASH_NB_DOUBLE_WORDS_IN_ROW);
  42              		.loc 1 726 1 is_stmt 0 view .LVU7
  43 0008 10B5     		push	{r4, lr}
  44              		.cfi_def_cfa_offset 8
  45              		.cfi_offset 4, -8
  46              		.cfi_offset 14, -4
  47              		.loc 1 736 3 view .LVU8
  48 000a 5361     		str	r3, [r2, #20]
 737:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 738:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Enter critical section: Disable interrupts to avoid any interruption during the loop */
 739:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   primask_bit = __get_PRIMASK();
  49              		.loc 1 739 3 is_stmt 1 view .LVU9
  50              	.LBB10:
  51              	.LBI10:
  52              		.file 2 "../../..\\CubeG4\\include/cmsis_gcc.h"
   1:../../..\CubeG4\include/cmsis_gcc.h **** /**************************************************************************//**
   2:../../..\CubeG4\include/cmsis_gcc.h ****  * @file     cmsis_gcc.h
   3:../../..\CubeG4\include/cmsis_gcc.h ****  * @brief    CMSIS compiler GCC header file
   4:../../..\CubeG4\include/cmsis_gcc.h ****  * @version  V5.0.4
   5:../../..\CubeG4\include/cmsis_gcc.h ****  * @date     09. April 2018
   6:../../..\CubeG4\include/cmsis_gcc.h ****  ******************************************************************************/
   7:../../..\CubeG4\include/cmsis_gcc.h **** /*
   8:../../..\CubeG4\include/cmsis_gcc.h ****  * Copyright (c) 2009-2018 Arm Limited. All rights reserved.
   9:../../..\CubeG4\include/cmsis_gcc.h ****  *
  10:../../..\CubeG4\include/cmsis_gcc.h ****  * SPDX-License-Identifier: Apache-2.0
  11:../../..\CubeG4\include/cmsis_gcc.h ****  *
  12:../../..\CubeG4\include/cmsis_gcc.h ****  * Licensed under the Apache License, Version 2.0 (the License); you may
  13:../../..\CubeG4\include/cmsis_gcc.h ****  * not use this file except in compliance with the License.
  14:../../..\CubeG4\include/cmsis_gcc.h ****  * You may obtain a copy of the License at
  15:../../..\CubeG4\include/cmsis_gcc.h ****  *
  16:../../..\CubeG4\include/cmsis_gcc.h ****  * www.apache.org/licenses/LICENSE-2.0
  17:../../..\CubeG4\include/cmsis_gcc.h ****  *
  18:../../..\CubeG4\include/cmsis_gcc.h ****  * Unless required by applicable law or agreed to in writing, software
  19:../../..\CubeG4\include/cmsis_gcc.h ****  * distributed under the License is distributed on an AS IS BASIS, WITHOUT
  20:../../..\CubeG4\include/cmsis_gcc.h ****  * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  21:../../..\CubeG4\include/cmsis_gcc.h ****  * See the License for the specific language governing permissions and
  22:../../..\CubeG4\include/cmsis_gcc.h ****  * limitations under the License.
  23:../../..\CubeG4\include/cmsis_gcc.h ****  */
  24:../../..\CubeG4\include/cmsis_gcc.h **** 
  25:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef __CMSIS_GCC_H
  26:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_H
  27:../../..\CubeG4\include/cmsis_gcc.h **** 
  28:../../..\CubeG4\include/cmsis_gcc.h **** /* ignore some GCC warnings */
  29:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic push
  30:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wsign-conversion"
  31:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wconversion"
  32:../../..\CubeG4\include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wunused-parameter"
  33:../../..\CubeG4\include/cmsis_gcc.h **** 
  34:../../..\CubeG4\include/cmsis_gcc.h **** /* Fallback for __has_builtin */
  35:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef __has_builtin
  36:../../..\CubeG4\include/cmsis_gcc.h ****   #define __has_builtin(x) (0)
  37:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  38:../../..\CubeG4\include/cmsis_gcc.h **** 
  39:../../..\CubeG4\include/cmsis_gcc.h **** /* CMSIS compiler specific defines */
  40:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __ASM
  41:../../..\CubeG4\include/cmsis_gcc.h ****   #define __ASM                                  __asm
  42:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  43:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __INLINE
  44:../../..\CubeG4\include/cmsis_gcc.h ****   #define __INLINE                               inline
  45:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  46:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __STATIC_INLINE
  47:../../..\CubeG4\include/cmsis_gcc.h ****   #define __STATIC_INLINE                        static inline
  48:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  49:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __STATIC_FORCEINLINE                 
  50:../../..\CubeG4\include/cmsis_gcc.h ****   #define __STATIC_FORCEINLINE                   __attribute__((always_inline)) static inline
  51:../../..\CubeG4\include/cmsis_gcc.h **** #endif                                           
  52:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __NO_RETURN
  53:../../..\CubeG4\include/cmsis_gcc.h ****   #define __NO_RETURN                            __attribute__((__noreturn__))
  54:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  55:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __USED
  56:../../..\CubeG4\include/cmsis_gcc.h ****   #define __USED                                 __attribute__((used))
  57:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  58:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __WEAK
  59:../../..\CubeG4\include/cmsis_gcc.h ****   #define __WEAK                                 __attribute__((weak))
  60:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  61:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED
  62:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED                               __attribute__((packed, aligned(1)))
  63:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  64:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED_STRUCT
  65:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED_STRUCT                        struct __attribute__((packed, aligned(1)))
  66:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  67:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __PACKED_UNION
  68:../../..\CubeG4\include/cmsis_gcc.h ****   #define __PACKED_UNION                         union __attribute__((packed, aligned(1)))
  69:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  70:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32        /* deprecated */
  71:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  72:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  73:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  74:../../..\CubeG4\include/cmsis_gcc.h ****   struct __attribute__((packed)) T_UINT32 { uint32_t v; };
  75:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  76:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32(x)                  (((struct T_UINT32 *)(x))->v)
  77:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  78:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT16_WRITE
  79:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  80:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  81:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  82:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT16_WRITE { uint16_t v; };
  83:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  84:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT16_WRITE(addr, val)    (void)((((struct T_UINT16_WRITE *)(void *)(addr))-
  85:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  86:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT16_READ
  87:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  88:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  89:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  90:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT16_READ { uint16_t v; };
  91:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
  92:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT16_READ(addr)          (((const struct T_UINT16_READ *)(const void *)(add
  93:../../..\CubeG4\include/cmsis_gcc.h **** #endif
  94:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32_WRITE
  95:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
  96:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
  97:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
  98:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT32_WRITE { uint32_t v; };
  99:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
 100:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32_WRITE(addr, val)    (void)((((struct T_UINT32_WRITE *)(void *)(addr))-
 101:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 102:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __UNALIGNED_UINT32_READ
 103:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic push
 104:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wpacked"
 105:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic ignored "-Wattributes"
 106:../../..\CubeG4\include/cmsis_gcc.h ****   __PACKED_STRUCT T_UINT32_READ { uint32_t v; };
 107:../../..\CubeG4\include/cmsis_gcc.h ****   #pragma GCC diagnostic pop
 108:../../..\CubeG4\include/cmsis_gcc.h ****   #define __UNALIGNED_UINT32_READ(addr)          (((const struct T_UINT32_READ *)(const void *)(add
 109:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 110:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __ALIGNED
 111:../../..\CubeG4\include/cmsis_gcc.h ****   #define __ALIGNED(x)                           __attribute__((aligned(x)))
 112:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 113:../../..\CubeG4\include/cmsis_gcc.h **** #ifndef   __RESTRICT
 114:../../..\CubeG4\include/cmsis_gcc.h ****   #define __RESTRICT                             __restrict
 115:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 116:../../..\CubeG4\include/cmsis_gcc.h **** 
 117:../../..\CubeG4\include/cmsis_gcc.h **** 
 118:../../..\CubeG4\include/cmsis_gcc.h **** /* ###########################  Core Function Access  ########################### */
 119:../../..\CubeG4\include/cmsis_gcc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
 120:../../..\CubeG4\include/cmsis_gcc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
 121:../../..\CubeG4\include/cmsis_gcc.h ****   @{
 122:../../..\CubeG4\include/cmsis_gcc.h ****  */
 123:../../..\CubeG4\include/cmsis_gcc.h **** 
 124:../../..\CubeG4\include/cmsis_gcc.h **** /**
 125:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Enable IRQ Interrupts
 126:../../..\CubeG4\include/cmsis_gcc.h ****   \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
 127:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 128:../../..\CubeG4\include/cmsis_gcc.h ****  */
 129:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __enable_irq(void)
 130:../../..\CubeG4\include/cmsis_gcc.h **** {
 131:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsie i" : : : "memory");
 132:../../..\CubeG4\include/cmsis_gcc.h **** }
 133:../../..\CubeG4\include/cmsis_gcc.h **** 
 134:../../..\CubeG4\include/cmsis_gcc.h **** 
 135:../../..\CubeG4\include/cmsis_gcc.h **** /**
 136:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Disable IRQ Interrupts
 137:../../..\CubeG4\include/cmsis_gcc.h ****   \details Disables IRQ interrupts by setting the I-bit in the CPSR.
 138:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 139:../../..\CubeG4\include/cmsis_gcc.h ****  */
 140:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __disable_irq(void)
 141:../../..\CubeG4\include/cmsis_gcc.h **** {
 142:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsid i" : : : "memory");
 143:../../..\CubeG4\include/cmsis_gcc.h **** }
 144:../../..\CubeG4\include/cmsis_gcc.h **** 
 145:../../..\CubeG4\include/cmsis_gcc.h **** 
 146:../../..\CubeG4\include/cmsis_gcc.h **** /**
 147:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Control Register
 148:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the Control Register.
 149:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Control Register value
 150:../../..\CubeG4\include/cmsis_gcc.h ****  */
 151:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_CONTROL(void)
 152:../../..\CubeG4\include/cmsis_gcc.h **** {
 153:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 154:../../..\CubeG4\include/cmsis_gcc.h **** 
 155:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
 156:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 157:../../..\CubeG4\include/cmsis_gcc.h **** }
 158:../../..\CubeG4\include/cmsis_gcc.h **** 
 159:../../..\CubeG4\include/cmsis_gcc.h **** 
 160:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 161:../../..\CubeG4\include/cmsis_gcc.h **** /**
 162:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Control Register (non-secure)
 163:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the non-secure Control Register when in secure mode.
 164:../../..\CubeG4\include/cmsis_gcc.h ****   \return               non-secure Control Register value
 165:../../..\CubeG4\include/cmsis_gcc.h ****  */
 166:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_CONTROL_NS(void)
 167:../../..\CubeG4\include/cmsis_gcc.h **** {
 168:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 169:../../..\CubeG4\include/cmsis_gcc.h **** 
 170:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control_ns" : "=r" (result) );
 171:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 172:../../..\CubeG4\include/cmsis_gcc.h **** }
 173:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 174:../../..\CubeG4\include/cmsis_gcc.h **** 
 175:../../..\CubeG4\include/cmsis_gcc.h **** 
 176:../../..\CubeG4\include/cmsis_gcc.h **** /**
 177:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Control Register
 178:../../..\CubeG4\include/cmsis_gcc.h ****   \details Writes the given value to the Control Register.
 179:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
 180:../../..\CubeG4\include/cmsis_gcc.h ****  */
 181:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_CONTROL(uint32_t control)
 182:../../..\CubeG4\include/cmsis_gcc.h **** {
 183:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
 184:../../..\CubeG4\include/cmsis_gcc.h **** }
 185:../../..\CubeG4\include/cmsis_gcc.h **** 
 186:../../..\CubeG4\include/cmsis_gcc.h **** 
 187:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 188:../../..\CubeG4\include/cmsis_gcc.h **** /**
 189:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Control Register (non-secure)
 190:../../..\CubeG4\include/cmsis_gcc.h ****   \details Writes the given value to the non-secure Control Register when in secure state.
 191:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
 192:../../..\CubeG4\include/cmsis_gcc.h ****  */
 193:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_CONTROL_NS(uint32_t control)
 194:../../..\CubeG4\include/cmsis_gcc.h **** {
 195:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR control_ns, %0" : : "r" (control) : "memory");
 196:../../..\CubeG4\include/cmsis_gcc.h **** }
 197:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 198:../../..\CubeG4\include/cmsis_gcc.h **** 
 199:../../..\CubeG4\include/cmsis_gcc.h **** 
 200:../../..\CubeG4\include/cmsis_gcc.h **** /**
 201:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get IPSR Register
 202:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the IPSR Register.
 203:../../..\CubeG4\include/cmsis_gcc.h ****   \return               IPSR Register value
 204:../../..\CubeG4\include/cmsis_gcc.h ****  */
 205:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_IPSR(void)
 206:../../..\CubeG4\include/cmsis_gcc.h **** {
 207:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 208:../../..\CubeG4\include/cmsis_gcc.h **** 
 209:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 210:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 211:../../..\CubeG4\include/cmsis_gcc.h **** }
 212:../../..\CubeG4\include/cmsis_gcc.h **** 
 213:../../..\CubeG4\include/cmsis_gcc.h **** 
 214:../../..\CubeG4\include/cmsis_gcc.h **** /**
 215:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get APSR Register
 216:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the APSR Register.
 217:../../..\CubeG4\include/cmsis_gcc.h ****   \return               APSR Register value
 218:../../..\CubeG4\include/cmsis_gcc.h ****  */
 219:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_APSR(void)
 220:../../..\CubeG4\include/cmsis_gcc.h **** {
 221:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 222:../../..\CubeG4\include/cmsis_gcc.h **** 
 223:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 224:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 225:../../..\CubeG4\include/cmsis_gcc.h **** }
 226:../../..\CubeG4\include/cmsis_gcc.h **** 
 227:../../..\CubeG4\include/cmsis_gcc.h **** 
 228:../../..\CubeG4\include/cmsis_gcc.h **** /**
 229:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get xPSR Register
 230:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the content of the xPSR Register.
 231:../../..\CubeG4\include/cmsis_gcc.h ****   \return               xPSR Register value
 232:../../..\CubeG4\include/cmsis_gcc.h ****  */
 233:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_xPSR(void)
 234:../../..\CubeG4\include/cmsis_gcc.h **** {
 235:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 236:../../..\CubeG4\include/cmsis_gcc.h **** 
 237:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 238:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 239:../../..\CubeG4\include/cmsis_gcc.h **** }
 240:../../..\CubeG4\include/cmsis_gcc.h **** 
 241:../../..\CubeG4\include/cmsis_gcc.h **** 
 242:../../..\CubeG4\include/cmsis_gcc.h **** /**
 243:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer
 244:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer (PSP).
 245:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSP Register value
 246:../../..\CubeG4\include/cmsis_gcc.h ****  */
 247:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PSP(void)
 248:../../..\CubeG4\include/cmsis_gcc.h **** {
 249:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 250:../../..\CubeG4\include/cmsis_gcc.h **** 
 251:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp"  : "=r" (result) );
 252:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 253:../../..\CubeG4\include/cmsis_gcc.h **** }
 254:../../..\CubeG4\include/cmsis_gcc.h **** 
 255:../../..\CubeG4\include/cmsis_gcc.h **** 
 256:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 257:../../..\CubeG4\include/cmsis_gcc.h **** /**
 258:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer (non-secure)
 259:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Process Stack Pointer (PSP) when in secure s
 260:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSP Register value
 261:../../..\CubeG4\include/cmsis_gcc.h ****  */
 262:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PSP_NS(void)
 263:../../..\CubeG4\include/cmsis_gcc.h **** {
 264:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 265:../../..\CubeG4\include/cmsis_gcc.h **** 
 266:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp_ns"  : "=r" (result) );
 267:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 268:../../..\CubeG4\include/cmsis_gcc.h **** }
 269:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 270:../../..\CubeG4\include/cmsis_gcc.h **** 
 271:../../..\CubeG4\include/cmsis_gcc.h **** 
 272:../../..\CubeG4\include/cmsis_gcc.h **** /**
 273:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer
 274:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer (PSP).
 275:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 276:../../..\CubeG4\include/cmsis_gcc.h ****  */
 277:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PSP(uint32_t topOfProcStack)
 278:../../..\CubeG4\include/cmsis_gcc.h **** {
 279:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
 280:../../..\CubeG4\include/cmsis_gcc.h **** }
 281:../../..\CubeG4\include/cmsis_gcc.h **** 
 282:../../..\CubeG4\include/cmsis_gcc.h **** 
 283:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 284:../../..\CubeG4\include/cmsis_gcc.h **** /**
 285:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer (non-secure)
 286:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Process Stack Pointer (PSP) when in secure sta
 287:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 288:../../..\CubeG4\include/cmsis_gcc.h ****  */
 289:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PSP_NS(uint32_t topOfProcStack)
 290:../../..\CubeG4\include/cmsis_gcc.h **** {
 291:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psp_ns, %0" : : "r" (topOfProcStack) : );
 292:../../..\CubeG4\include/cmsis_gcc.h **** }
 293:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 294:../../..\CubeG4\include/cmsis_gcc.h **** 
 295:../../..\CubeG4\include/cmsis_gcc.h **** 
 296:../../..\CubeG4\include/cmsis_gcc.h **** /**
 297:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer
 298:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer (MSP).
 299:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSP Register value
 300:../../..\CubeG4\include/cmsis_gcc.h ****  */
 301:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_MSP(void)
 302:../../..\CubeG4\include/cmsis_gcc.h **** {
 303:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 304:../../..\CubeG4\include/cmsis_gcc.h **** 
 305:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp" : "=r" (result) );
 306:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 307:../../..\CubeG4\include/cmsis_gcc.h **** }
 308:../../..\CubeG4\include/cmsis_gcc.h **** 
 309:../../..\CubeG4\include/cmsis_gcc.h **** 
 310:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 311:../../..\CubeG4\include/cmsis_gcc.h **** /**
 312:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer (non-secure)
 313:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Main Stack Pointer (MSP) when in secure stat
 314:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSP Register value
 315:../../..\CubeG4\include/cmsis_gcc.h ****  */
 316:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_MSP_NS(void)
 317:../../..\CubeG4\include/cmsis_gcc.h **** {
 318:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 319:../../..\CubeG4\include/cmsis_gcc.h **** 
 320:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp_ns" : "=r" (result) );
 321:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 322:../../..\CubeG4\include/cmsis_gcc.h **** }
 323:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 324:../../..\CubeG4\include/cmsis_gcc.h **** 
 325:../../..\CubeG4\include/cmsis_gcc.h **** 
 326:../../..\CubeG4\include/cmsis_gcc.h **** /**
 327:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer
 328:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer (MSP).
 329:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfMainStack  Main Stack Pointer value to set
 330:../../..\CubeG4\include/cmsis_gcc.h ****  */
 331:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_MSP(uint32_t topOfMainStack)
 332:../../..\CubeG4\include/cmsis_gcc.h **** {
 333:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
 334:../../..\CubeG4\include/cmsis_gcc.h **** }
 335:../../..\CubeG4\include/cmsis_gcc.h **** 
 336:../../..\CubeG4\include/cmsis_gcc.h **** 
 337:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 338:../../..\CubeG4\include/cmsis_gcc.h **** /**
 339:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer (non-secure)
 340:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Main Stack Pointer (MSP) when in secure state.
 341:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfMainStack  Main Stack Pointer value to set
 342:../../..\CubeG4\include/cmsis_gcc.h ****  */
 343:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_MSP_NS(uint32_t topOfMainStack)
 344:../../..\CubeG4\include/cmsis_gcc.h **** {
 345:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msp_ns, %0" : : "r" (topOfMainStack) : );
 346:../../..\CubeG4\include/cmsis_gcc.h **** }
 347:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 348:../../..\CubeG4\include/cmsis_gcc.h **** 
 349:../../..\CubeG4\include/cmsis_gcc.h **** 
 350:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 351:../../..\CubeG4\include/cmsis_gcc.h **** /**
 352:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Stack Pointer (non-secure)
 353:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Stack Pointer (SP) when in secure state.
 354:../../..\CubeG4\include/cmsis_gcc.h ****   \return               SP Register value
 355:../../..\CubeG4\include/cmsis_gcc.h ****  */
 356:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_SP_NS(void)
 357:../../..\CubeG4\include/cmsis_gcc.h **** {
 358:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 359:../../..\CubeG4\include/cmsis_gcc.h **** 
 360:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, sp_ns" : "=r" (result) );
 361:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 362:../../..\CubeG4\include/cmsis_gcc.h **** }
 363:../../..\CubeG4\include/cmsis_gcc.h **** 
 364:../../..\CubeG4\include/cmsis_gcc.h **** 
 365:../../..\CubeG4\include/cmsis_gcc.h **** /**
 366:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Stack Pointer (non-secure)
 367:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Stack Pointer (SP) when in secure state.
 368:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    topOfStack  Stack Pointer value to set
 369:../../..\CubeG4\include/cmsis_gcc.h ****  */
 370:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_SP_NS(uint32_t topOfStack)
 371:../../..\CubeG4\include/cmsis_gcc.h **** {
 372:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR sp_ns, %0" : : "r" (topOfStack) : );
 373:../../..\CubeG4\include/cmsis_gcc.h **** }
 374:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 375:../../..\CubeG4\include/cmsis_gcc.h **** 
 376:../../..\CubeG4\include/cmsis_gcc.h **** 
 377:../../..\CubeG4\include/cmsis_gcc.h **** /**
 378:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Priority Mask
 379:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current state of the priority mask bit from the Priority Mask Register.
 380:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Priority Mask value
 381:../../..\CubeG4\include/cmsis_gcc.h ****  */
 382:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PRIMASK(void)
  53              		.loc 2 382 31 view .LVU10
  54              	.LBB11:
 383:../../..\CubeG4\include/cmsis_gcc.h **** {
 384:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
  55              		.loc 2 384 3 view .LVU11
 385:../../..\CubeG4\include/cmsis_gcc.h **** 
 386:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) :: "memory");
  56              		.loc 2 386 3 view .LVU12
  57              		.syntax unified
  58              	@ 386 "../../..\CubeG4\include/cmsis_gcc.h" 1
  59 000c EFF31082 		MRS r2, primask
  60              	@ 0 "" 2
  61              	.LVL1:
 387:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
  62              		.loc 2 387 3 view .LVU13
  63              		.loc 2 387 3 is_stmt 0 view .LVU14
  64              		.thumb
  65              		.syntax unified
  66              	.LBE11:
  67              	.LBE10:
 740:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   __disable_irq();
  68              		.loc 1 740 3 is_stmt 1 view .LVU15
  69              	.LBB12:
  70              	.LBI12:
 140:../../..\CubeG4\include/cmsis_gcc.h **** {
  71              		.loc 2 140 27 view .LVU16
  72              	.LBB13:
 142:../../..\CubeG4\include/cmsis_gcc.h **** }
  73              		.loc 2 142 3 view .LVU17
  74              		.syntax unified
  75              	@ 142 "../../..\CubeG4\include/cmsis_gcc.h" 1
  76 0010 72B6     		cpsid i
  77              	@ 0 "" 2
  78              		.thumb
  79              		.syntax unified
  80 0012 0023     		movs	r3, #0
  81              	.LVL2:
  82              	.L2:
 142:../../..\CubeG4\include/cmsis_gcc.h **** }
  83              		.loc 2 142 3 is_stmt 0 view .LVU18
  84              	.LBE13:
  85              	.LBE12:
 741:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 742:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Program the double words of the row */
 743:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   do
  86              		.loc 1 743 3 is_stmt 1 discriminator 1 view .LVU19
 744:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 745:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     *dest_addr = *src_addr;
  87              		.loc 1 745 5 discriminator 1 view .LVU20
  88              		.loc 1 745 18 is_stmt 0 discriminator 1 view .LVU21
  89 0014 CC58     		ldr	r4, [r1, r3]
  90              		.loc 1 745 16 discriminator 1 view .LVU22
  91 0016 C450     		str	r4, [r0, r3]
 746:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     dest_addr++;
  92              		.loc 1 746 5 is_stmt 1 discriminator 1 view .LVU23
  93              	.LVL3:
 747:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     src_addr++;
  94              		.loc 1 747 5 discriminator 1 view .LVU24
 748:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     row_index--;
  95              		.loc 1 748 5 discriminator 1 view .LVU25
  96 0018 0433     		adds	r3, r3, #4
  97              	.LVL4:
 749:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 750:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   while (row_index != 0U);
  98              		.loc 1 750 3 is_stmt 0 discriminator 1 view .LVU26
  99 001a B3F5807F 		cmp	r3, #256
 100 001e F9D1     		bne	.L2
 751:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 752:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Exit critical section: restore previous priority mask */
 753:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   __set_PRIMASK(primask_bit);
 101              		.loc 1 753 3 is_stmt 1 view .LVU27
 102              	.LVL5:
 103              	.LBB14:
 104              	.LBI14:
 388:../../..\CubeG4\include/cmsis_gcc.h **** }
 389:../../..\CubeG4\include/cmsis_gcc.h **** 
 390:../../..\CubeG4\include/cmsis_gcc.h **** 
 391:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 392:../../..\CubeG4\include/cmsis_gcc.h **** /**
 393:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Priority Mask (non-secure)
 394:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current state of the non-secure priority mask bit from the Priority Mask Reg
 395:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Priority Mask value
 396:../../..\CubeG4\include/cmsis_gcc.h ****  */
 397:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PRIMASK_NS(void)
 398:../../..\CubeG4\include/cmsis_gcc.h **** {
 399:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 400:../../..\CubeG4\include/cmsis_gcc.h **** 
 401:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask_ns" : "=r" (result) :: "memory");
 402:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 403:../../..\CubeG4\include/cmsis_gcc.h **** }
 404:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 405:../../..\CubeG4\include/cmsis_gcc.h **** 
 406:../../..\CubeG4\include/cmsis_gcc.h **** 
 407:../../..\CubeG4\include/cmsis_gcc.h **** /**
 408:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Priority Mask
 409:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Priority Mask Register.
 410:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 411:../../..\CubeG4\include/cmsis_gcc.h ****  */
 412:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PRIMASK(uint32_t priMask)
 105              		.loc 2 412 27 view .LVU28
 106              	.LBB15:
 413:../../..\CubeG4\include/cmsis_gcc.h **** {
 414:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
 107              		.loc 2 414 3 view .LVU29
 108              		.syntax unified
 109              	@ 414 "../../..\CubeG4\include/cmsis_gcc.h" 1
 110 0020 82F31088 		MSR primask, r2
 111              	@ 0 "" 2
 112              	.LVL6:
 113              		.loc 2 414 3 is_stmt 0 view .LVU30
 114              		.thumb
 115              		.syntax unified
 116              	.LBE15:
 117              	.LBE14:
 754:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 118              		.loc 1 754 1 view .LVU31
 119 0024 10BD     		pop	{r4, pc}
 120              	.L5:
 121 0026 00BF     		.align	2
 122              	.L4:
 123 0028 00200240 		.word	1073881088
 124              		.cfi_endproc
 125              	.LFE338:
 127              		.section	.text.HAL_FLASH_EndOfOperationCallback,"ax",%progbits
 128              		.align	1
 129              		.weak	HAL_FLASH_EndOfOperationCallback
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 135              	HAL_FLASH_EndOfOperationCallback:
 136              	.LVL7:
 137              	.LFB328:
 443:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Prevent unused argument(s) compilation warning */
 138              		.loc 1 443 1 is_stmt 1 view -0
 139              		.cfi_startproc
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 445:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 143              		.loc 1 445 3 view .LVU33
 450:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 144              		.loc 1 450 1 is_stmt 0 view .LVU34
 145 0000 7047     		bx	lr
 146              		.cfi_endproc
 147              	.LFE328:
 149              		.section	.text.HAL_FLASH_OperationErrorCallback,"ax",%progbits
 150              		.align	1
 151              		.weak	HAL_FLASH_OperationErrorCallback
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 157              	HAL_FLASH_OperationErrorCallback:
 158              	.LFB341:
 159              		.cfi_startproc
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 7047     		bx	lr
 164              		.cfi_endproc
 165              	.LFE341:
 167              		.section	.text.HAL_FLASH_IRQHandler,"ax",%progbits
 168              		.align	1
 169              		.global	HAL_FLASH_IRQHandler
 170              		.syntax unified
 171              		.thumb
 172              		.thumb_func
 173              		.fpu fpv4-sp-d16
 175              	HAL_FLASH_IRQHandler:
 176              	.LFB327:
 303:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t tmp_page;
 177              		.loc 1 303 1 is_stmt 1 view -0
 178              		.cfi_startproc
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 304:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t error;
 181              		.loc 1 304 3 view .LVU36
 305:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   FLASH_ProcedureTypeDef procedure;
 182              		.loc 1 305 3 view .LVU37
 306:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 183              		.loc 1 306 3 view .LVU38
 309:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #if defined (FLASH_OPTR_DBANK)
 184              		.loc 1 309 3 view .LVU39
 185 0000 354B     		ldr	r3, .L28
 186 0002 5A69     		ldr	r2, [r3, #20]
 187 0004 22F4FF72 		bic	r2, r2, #510
 303:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t tmp_page;
 188              		.loc 1 303 1 is_stmt 0 view .LVU40
 189 0008 10B5     		push	{r4, lr}
 190              		.cfi_def_cfa_offset 8
 191              		.cfi_offset 4, -8
 192              		.cfi_offset 14, -4
 309:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #if defined (FLASH_OPTR_DBANK)
 193              		.loc 1 309 3 view .LVU41
 194 000a 22F00102 		bic	r2, r2, #1
 315:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 195              		.loc 1 315 13 view .LVU42
 196 000e 334C     		ldr	r4, .L28+4
 309:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** #if defined (FLASH_OPTR_DBANK)
 197              		.loc 1 309 3 view .LVU43
 198 0010 5A61     		str	r2, [r3, #20]
 315:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 199              		.loc 1 315 3 is_stmt 1 view .LVU44
 315:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 200              		.loc 1 315 13 is_stmt 0 view .LVU45
 201 0012 227A     		ldrb	r2, [r4, #8]	@ zero_extendqisi2
 315:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 202              		.loc 1 315 6 view .LVU46
 203 0014 042A     		cmp	r2, #4
 317:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 204              		.loc 1 317 5 is_stmt 1 view .LVU47
 205 0016 02BF     		ittt	eq
 206 0018 5A69     		ldreq	r2, [r3, #20]
 207 001a 22F48022 		biceq	r2, r2, #262144
 208 001e 5A61     		streq	r2, [r3, #20]
 321:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 209              		.loc 1 321 3 view .LVU48
 321:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 210              		.loc 1 321 17 is_stmt 0 view .LVU49
 211 0020 1A69     		ldr	r2, [r3, #16]
 321:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 212              		.loc 1 321 9 view .LVU50
 213 0022 4CF2FA31 		movw	r1, #50170
 214              	.LVL8:
 323:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 215              		.loc 1 323 3 is_stmt 1 view .LVU51
 323:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 216              		.loc 1 323 6 is_stmt 0 view .LVU52
 217 0026 0A40     		ands	r2, r2, r1
 218              	.LVL9:
 323:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 219              		.loc 1 323 6 view .LVU53
 220 0028 0ED0     		beq	.L10
 326:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 221              		.loc 1 326 5 is_stmt 1 view .LVU54
 326:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 222              		.loc 1 326 22 is_stmt 0 view .LVU55
 223 002a 6168     		ldr	r1, [r4, #4]
 224 002c 1143     		orrs	r1, r1, r2
 225 002e 6160     		str	r1, [r4, #4]
 329:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 226              		.loc 1 329 5 is_stmt 1 view .LVU56
 329:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 227              		.loc 1 329 5 view .LVU57
 329:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 228              		.loc 1 329 5 view .LVU58
 329:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 229              		.loc 1 329 5 view .LVU59
 230 0030 1A61     		str	r2, [r3, #16]
 332:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 231              		.loc 1 332 5 view .LVU60
 232 0032 FFF7FEFF 		bl	FLASH_FlushCaches
 233              	.LVL10:
 335:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (procedure == FLASH_PROC_PAGE_ERASE)
 234              		.loc 1 335 5 view .LVU61
 335:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     if (procedure == FLASH_PROC_PAGE_ERASE)
 235              		.loc 1 335 15 is_stmt 0 view .LVU62
 236 0036 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 237 0038 DBB2     		uxtb	r3, r3
 238              	.LVL11:
 336:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 239              		.loc 1 336 5 is_stmt 1 view .LVU63
 336:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 240              		.loc 1 336 8 is_stmt 0 view .LVU64
 241 003a 012B     		cmp	r3, #1
 242 003c 27D1     		bne	.L11
 338:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 243              		.loc 1 338 7 is_stmt 1 view .LVU65
 244 003e 6069     		ldr	r0, [r4, #20]
 245              	.LVL12:
 246              	.L26:
 347:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 247              		.loc 1 347 7 is_stmt 0 view .LVU66
 248 0040 FFF7FEFF 		bl	HAL_FLASH_OperationErrorCallback
 249              	.LVL13:
 250              	.L12:
 352:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 251              		.loc 1 352 5 is_stmt 1 view .LVU67
 355:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 252              		.loc 1 355 5 view .LVU68
 355:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 253              		.loc 1 355 29 is_stmt 0 view .LVU69
 254 0044 0023     		movs	r3, #0
 255 0046 2372     		strb	r3, [r4, #8]
 256              	.L10:
 359:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 257              		.loc 1 359 3 is_stmt 1 view .LVU70
 359:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 258              		.loc 1 359 7 is_stmt 0 view .LVU71
 259 0048 234B     		ldr	r3, .L28
 260 004a 1A69     		ldr	r2, [r3, #16]
 359:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 261              		.loc 1 359 6 view .LVU72
 262 004c D207     		lsls	r2, r2, #31
 263 004e 13D5     		bpl	.L14
 362:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 264              		.loc 1 362 5 is_stmt 1 discriminator 4 view .LVU73
 362:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 265              		.loc 1 362 5 discriminator 4 view .LVU74
 362:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 266              		.loc 1 362 5 discriminator 4 view .LVU75
 362:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 267              		.loc 1 362 5 discriminator 4 view .LVU76
 268 0050 0122     		movs	r2, #1
 269 0052 1A61     		str	r2, [r3, #16]
 364:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 270              		.loc 1 364 5 discriminator 4 view .LVU77
 364:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 271              		.loc 1 364 15 is_stmt 0 discriminator 4 view .LVU78
 272 0054 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 364:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 273              		.loc 1 364 8 discriminator 4 view .LVU79
 274 0056 9342     		cmp	r3, r2
 275 0058 2CD1     		bne	.L15
 367:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 276              		.loc 1 367 7 is_stmt 1 view .LVU80
 367:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 277              		.loc 1 367 13 is_stmt 0 view .LVU81
 278 005a A369     		ldr	r3, [r4, #24]
 367:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 279              		.loc 1 367 28 view .LVU82
 280 005c 013B     		subs	r3, r3, #1
 281 005e A361     		str	r3, [r4, #24]
 370:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 282              		.loc 1 370 7 is_stmt 1 view .LVU83
 370:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 283              		.loc 1 370 17 is_stmt 0 view .LVU84
 284 0060 A369     		ldr	r3, [r4, #24]
 370:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 285              		.loc 1 370 10 view .LVU85
 286 0062 EBB1     		cbz	r3, .L16
 373:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 287              		.loc 1 373 9 is_stmt 1 view .LVU86
 288 0064 6069     		ldr	r0, [r4, #20]
 289 0066 FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 290              	.LVL14:
 376:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         tmp_page = pFlash.Page;
 291              		.loc 1 376 9 view .LVU87
 376:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         tmp_page = pFlash.Page;
 292              		.loc 1 376 15 is_stmt 0 view .LVU88
 293 006a 6369     		ldr	r3, [r4, #20]
 376:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         tmp_page = pFlash.Page;
 294              		.loc 1 376 20 view .LVU89
 295 006c 0133     		adds	r3, r3, #1
 296 006e 6361     		str	r3, [r4, #20]
 377:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         FLASH_PageErase(tmp_page, pFlash.Bank);
 297              		.loc 1 377 9 is_stmt 1 view .LVU90
 377:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         FLASH_PageErase(tmp_page, pFlash.Bank);
 298              		.loc 1 377 18 is_stmt 0 view .LVU91
 299 0070 6069     		ldr	r0, [r4, #20]
 300              	.LVL15:
 378:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 301              		.loc 1 378 9 is_stmt 1 view .LVU92
 302 0072 2169     		ldr	r1, [r4, #16]
 303 0074 FFF7FEFF 		bl	FLASH_PageErase
 304              	.LVL16:
 305              	.L14:
 423:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 306              		.loc 1 423 3 view .LVU93
 423:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 307              		.loc 1 423 13 is_stmt 0 view .LVU94
 308 0078 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 423:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 309              		.loc 1 423 6 view .LVU95
 310 007a 03F0FF01 		and	r1, r3, #255
 311 007e 2BB9     		cbnz	r3, .L8
 426:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 312              		.loc 1 426 5 is_stmt 1 discriminator 4 view .LVU96
 426:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 313              		.loc 1 426 5 discriminator 4 view .LVU97
 426:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 314              		.loc 1 426 5 discriminator 4 view .LVU98
 426:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 315              		.loc 1 426 5 discriminator 4 view .LVU99
 316 0080 154A     		ldr	r2, .L28
 317 0082 5369     		ldr	r3, [r2, #20]
 318 0084 23F04073 		bic	r3, r3, #50331648
 319 0088 5361     		str	r3, [r2, #20]
 429:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 320              		.loc 1 429 5 discriminator 4 view .LVU100
 429:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 321              		.loc 1 429 5 discriminator 4 view .LVU101
 322 008a 2170     		strb	r1, [r4]
 323              	.L8:
 431:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 324              		.loc 1 431 1 is_stmt 0 view .LVU102
 325 008c 10BD     		pop	{r4, pc}
 326              	.LVL17:
 327              	.L11:
 340:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 328              		.loc 1 340 10 is_stmt 1 view .LVU103
 340:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 329              		.loc 1 340 13 is_stmt 0 view .LVU104
 330 008e 022B     		cmp	r3, #2
 331 0090 01D1     		bne	.L13
 342:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 332              		.loc 1 342 7 is_stmt 1 view .LVU105
 333 0092 2069     		ldr	r0, [r4, #16]
 334 0094 D4E7     		b	.L26
 335              	.L13:
 344:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****              (procedure == FLASH_PROC_PROGRAM_LAST))
 336              		.loc 1 344 10 view .LVU106
 344:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****              (procedure == FLASH_PROC_PROGRAM_LAST))
 337              		.loc 1 344 13 is_stmt 0 view .LVU107
 338 0096 033B     		subs	r3, r3, #3
 339              	.LVL18:
 344:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****              (procedure == FLASH_PROC_PROGRAM_LAST))
 340              		.loc 1 344 13 view .LVU108
 341 0098 012B     		cmp	r3, #1
 342 009a D3D8     		bhi	.L12
 347:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 343              		.loc 1 347 7 is_stmt 1 view .LVU109
 344 009c E068     		ldr	r0, [r4, #12]
 345 009e CFE7     		b	.L26
 346              	.LVL19:
 347              	.L16:
 384:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 348              		.loc 1 384 9 view .LVU110
 384:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****         pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
 349              		.loc 1 384 21 is_stmt 0 view .LVU111
 350 00a0 4FF0FF32 		mov	r2, #-1
 351 00a4 6261     		str	r2, [r4, #20]
 385:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 352              		.loc 1 385 9 is_stmt 1 view .LVU112
 385:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 353              		.loc 1 385 33 is_stmt 0 view .LVU113
 354 00a6 2372     		strb	r3, [r4, #8]
 388:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 355              		.loc 1 388 9 is_stmt 1 view .LVU114
 356 00a8 FFF7FEFF 		bl	FLASH_FlushCaches
 357              	.LVL20:
 391:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 358              		.loc 1 391 9 view .LVU115
 359 00ac 6069     		ldr	r0, [r4, #20]
 360 00ae FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 361              	.LVL21:
 362 00b2 E1E7     		b	.L14
 363              	.L15:
 397:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 364              		.loc 1 397 7 view .LVU116
 365 00b4 FFF7FEFF 		bl	FLASH_FlushCaches
 366              	.LVL22:
 399:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       if (procedure == FLASH_PROC_MASS_ERASE)
 367              		.loc 1 399 7 view .LVU117
 399:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       if (procedure == FLASH_PROC_MASS_ERASE)
 368              		.loc 1 399 17 is_stmt 0 view .LVU118
 369 00b8 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 370 00ba DBB2     		uxtb	r3, r3
 371              	.LVL23:
 400:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 372              		.loc 1 400 7 is_stmt 1 view .LVU119
 400:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 373              		.loc 1 400 10 is_stmt 0 view .LVU120
 374 00bc 022B     		cmp	r3, #2
 375 00be 05D1     		bne	.L17
 404:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 376              		.loc 1 404 9 is_stmt 1 view .LVU121
 377 00c0 2069     		ldr	r0, [r4, #16]
 378              	.LVL24:
 379              	.L27:
 411:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 380              		.loc 1 411 9 is_stmt 0 view .LVU122
 381 00c2 FFF7FEFF 		bl	HAL_FLASH_EndOfOperationCallback
 382              	.LVL25:
 383              	.L18:
 416:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 384              		.loc 1 416 7 is_stmt 1 view .LVU123
 419:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 385              		.loc 1 419 7 view .LVU124
 419:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 386              		.loc 1 419 31 is_stmt 0 view .LVU125
 387 00c6 0023     		movs	r3, #0
 388 00c8 2372     		strb	r3, [r4, #8]
 389 00ca D5E7     		b	.L14
 390              	.LVL26:
 391              	.L17:
 406:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                (procedure == FLASH_PROC_PROGRAM_LAST))
 392              		.loc 1 406 12 is_stmt 1 view .LVU126
 406:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                (procedure == FLASH_PROC_PROGRAM_LAST))
 393              		.loc 1 406 15 is_stmt 0 view .LVU127
 394 00cc 033B     		subs	r3, r3, #3
 395              	.LVL27:
 406:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****                (procedure == FLASH_PROC_PROGRAM_LAST))
 396              		.loc 1 406 15 view .LVU128
 397 00ce 012B     		cmp	r3, #1
 398 00d0 F9D8     		bhi	.L18
 411:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 399              		.loc 1 411 9 is_stmt 1 view .LVU129
 400 00d2 E068     		ldr	r0, [r4, #12]
 401 00d4 F5E7     		b	.L27
 402              	.L29:
 403 00d6 00BF     		.align	2
 404              	.L28:
 405 00d8 00200240 		.word	1073881088
 406 00dc 00000000 		.word	.LANCHOR0
 407              		.cfi_endproc
 408              	.LFE327:
 410              		.section	.text.HAL_FLASH_Unlock,"ax",%progbits
 411              		.align	1
 412              		.global	HAL_FLASH_Unlock
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu fpv4-sp-d16
 418              	HAL_FLASH_Unlock:
 419              	.LFB330:
 494:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 420              		.loc 1 494 1 view -0
 421              		.cfi_startproc
 422              		@ args = 0, pretend = 0, frame = 0
 423              		@ frame_needed = 0, uses_anonymous_args = 0
 424              		@ link register save eliminated.
 495:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 425              		.loc 1 495 3 view .LVU131
 426              	.LVL28:
 497:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 427              		.loc 1 497 3 view .LVU132
 497:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 428              		.loc 1 497 7 is_stmt 0 view .LVU133
 429 0000 064B     		ldr	r3, .L33
 430 0002 5A69     		ldr	r2, [r3, #20]
 497:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 431              		.loc 1 497 6 view .LVU134
 432 0004 002A     		cmp	r2, #0
 500:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     WRITE_REG(FLASH->KEYR, FLASH_KEY2);
 433              		.loc 1 500 5 is_stmt 1 view .LVU135
 434 0006 BFBF     		itttt	lt
 435 0008 054A     		ldrlt	r2, .L33+4
 436 000a 9A60     		strlt	r2, [r3, #8]
 501:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 437              		.loc 1 501 5 view .LVU136
 438 000c 02F18832 		addlt	r2, r2, #-2004318072
 439 0010 9A60     		strlt	r2, [r3, #8]
 504:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 440              		.loc 1 504 5 view .LVU137
 504:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 441              		.loc 1 504 9 is_stmt 0 view .LVU138
 442 0012 BABF     		itte	lt
 443 0014 5869     		ldrlt	r0, [r3, #20]
 495:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 444              		.loc 1 495 21 view .LVU139
 445 0016 C00F     		lsrlt	r0, r0, #31
 446 0018 0020     		movge	r0, #0
 447              	.LVL29:
 510:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 448              		.loc 1 510 3 is_stmt 1 view .LVU140
 511:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 449              		.loc 1 511 1 is_stmt 0 view .LVU141
 450 001a 7047     		bx	lr
 451              	.L34:
 452              		.align	2
 453              	.L33:
 454 001c 00200240 		.word	1073881088
 455 0020 23016745 		.word	1164378403
 456              		.cfi_endproc
 457              	.LFE330:
 459              		.section	.text.HAL_FLASH_Lock,"ax",%progbits
 460              		.align	1
 461              		.global	HAL_FLASH_Lock
 462              		.syntax unified
 463              		.thumb
 464              		.thumb_func
 465              		.fpu fpv4-sp-d16
 467              	HAL_FLASH_Lock:
 468              	.LFB331:
 518:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 469              		.loc 1 518 1 is_stmt 1 view -0
 470              		.cfi_startproc
 471              		@ args = 0, pretend = 0, frame = 0
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 473              		@ link register save eliminated.
 519:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 474              		.loc 1 519 3 view .LVU143
 475              	.LVL30:
 522:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 476              		.loc 1 522 3 view .LVU144
 477 0000 044B     		ldr	r3, .L36
 478 0002 5A69     		ldr	r2, [r3, #20]
 479 0004 42F00042 		orr	r2, r2, #-2147483648
 480 0008 5A61     		str	r2, [r3, #20]
 525:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 481              		.loc 1 525 3 view .LVU145
 525:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 482              		.loc 1 525 7 is_stmt 0 view .LVU146
 483 000a 5869     		ldr	r0, [r3, #20]
 484              	.LVL31:
 530:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 485              		.loc 1 530 3 is_stmt 1 view .LVU147
 531:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 486              		.loc 1 531 1 is_stmt 0 view .LVU148
 487 000c C043     		mvns	r0, r0
 488              	.LVL32:
 531:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 489              		.loc 1 531 1 view .LVU149
 490 000e C00F     		lsrs	r0, r0, #31
 491              	.LVL33:
 531:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 492              		.loc 1 531 1 view .LVU150
 493 0010 7047     		bx	lr
 494              	.L37:
 495 0012 00BF     		.align	2
 496              	.L36:
 497 0014 00200240 		.word	1073881088
 498              		.cfi_endproc
 499              	.LFE331:
 501              		.section	.text.HAL_FLASH_OB_Unlock,"ax",%progbits
 502              		.align	1
 503              		.global	HAL_FLASH_OB_Unlock
 504              		.syntax unified
 505              		.thumb
 506              		.thumb_func
 507              		.fpu fpv4-sp-d16
 509              	HAL_FLASH_OB_Unlock:
 510              	.LFB332:
 538:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_OK;
 511              		.loc 1 538 1 is_stmt 1 view -0
 512              		.cfi_startproc
 513              		@ args = 0, pretend = 0, frame = 0
 514              		@ frame_needed = 0, uses_anonymous_args = 0
 515              		@ link register save eliminated.
 539:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 516              		.loc 1 539 3 view .LVU152
 517              	.LVL34:
 541:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 518              		.loc 1 541 3 view .LVU153
 541:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 519              		.loc 1 541 7 is_stmt 0 view .LVU154
 520 0000 064B     		ldr	r3, .L41
 521 0002 5869     		ldr	r0, [r3, #20]
 541:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 522              		.loc 1 541 6 view .LVU155
 523 0004 10F08040 		ands	r0, r0, #1073741824
 524 0008 07D0     		beq	.L39
 544:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY2);
 525              		.loc 1 544 5 is_stmt 1 view .LVU156
 526 000a 054A     		ldr	r2, .L41+4
 527 000c DA60     		str	r2, [r3, #12]
 545:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 528              		.loc 1 545 5 view .LVU157
 529 000e 02F14432 		add	r2, r2, #1145324612
 530 0012 DA60     		str	r2, [r3, #12]
 548:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 531              		.loc 1 548 5 view .LVU158
 548:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 532              		.loc 1 548 9 is_stmt 0 view .LVU159
 533 0014 5869     		ldr	r0, [r3, #20]
 539:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 534              		.loc 1 539 21 view .LVU160
 535 0016 C0F38070 		ubfx	r0, r0, #30, #1
 536              	.L39:
 537              	.LVL35:
 554:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 538              		.loc 1 554 3 is_stmt 1 view .LVU161
 555:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 539              		.loc 1 555 1 is_stmt 0 view .LVU162
 540 001a 7047     		bx	lr
 541              	.L42:
 542              		.align	2
 543              	.L41:
 544 001c 00200240 		.word	1073881088
 545 0020 3B2A1908 		.word	135866939
 546              		.cfi_endproc
 547              	.LFE332:
 549              		.section	.text.HAL_FLASH_OB_Lock,"ax",%progbits
 550              		.align	1
 551              		.global	HAL_FLASH_OB_Lock
 552              		.syntax unified
 553              		.thumb
 554              		.thumb_func
 555              		.fpu fpv4-sp-d16
 557              	HAL_FLASH_OB_Lock:
 558              	.LFB333:
 562:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status = HAL_ERROR;
 559              		.loc 1 562 1 is_stmt 1 view -0
 560              		.cfi_startproc
 561              		@ args = 0, pretend = 0, frame = 0
 562              		@ frame_needed = 0, uses_anonymous_args = 0
 563              		@ link register save eliminated.
 563:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 564              		.loc 1 563 3 view .LVU164
 565              	.LVL36:
 566:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 566              		.loc 1 566 3 view .LVU165
 567 0000 054B     		ldr	r3, .L44
 568 0002 5A69     		ldr	r2, [r3, #20]
 569 0004 42F08042 		orr	r2, r2, #1073741824
 570 0008 5A61     		str	r2, [r3, #20]
 569:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 571              		.loc 1 569 3 view .LVU166
 569:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 572              		.loc 1 569 7 is_stmt 0 view .LVU167
 573 000a 5869     		ldr	r0, [r3, #20]
 574              	.LVL37:
 574:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 575              		.loc 1 574 3 is_stmt 1 view .LVU168
 569:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 576              		.loc 1 569 6 is_stmt 0 view .LVU169
 577 000c 80F08040 		eor	r0, r0, #1073741824
 578              	.LVL38:
 575:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 579              		.loc 1 575 1 view .LVU170
 580 0010 C0F38070 		ubfx	r0, r0, #30, #1
 581              	.LVL39:
 575:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 582              		.loc 1 575 1 view .LVU171
 583 0014 7047     		bx	lr
 584              	.L45:
 585 0016 00BF     		.align	2
 586              	.L44:
 587 0018 00200240 		.word	1073881088
 588              		.cfi_endproc
 589              	.LFE333:
 591              		.section	.text.HAL_FLASH_GetError,"ax",%progbits
 592              		.align	1
 593              		.global	HAL_FLASH_GetError
 594              		.syntax unified
 595              		.thumb
 596              		.thumb_func
 597              		.fpu fpv4-sp-d16
 599              	HAL_FLASH_GetError:
 600              	.LFB335:
 630:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   return pFlash.ErrorCode;
 601              		.loc 1 630 1 is_stmt 1 view -0
 602              		.cfi_startproc
 603              		@ args = 0, pretend = 0, frame = 0
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605              		@ link register save eliminated.
 631:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 606              		.loc 1 631 3 view .LVU173
 631:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 607              		.loc 1 631 16 is_stmt 0 view .LVU174
 608 0000 014B     		ldr	r3, .L47
 609 0002 5868     		ldr	r0, [r3, #4]
 632:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 610              		.loc 1 632 1 view .LVU175
 611 0004 7047     		bx	lr
 612              	.L48:
 613 0006 00BF     		.align	2
 614              	.L47:
 615 0008 00000000 		.word	.LANCHOR0
 616              		.cfi_endproc
 617              	.LFE335:
 619              		.section	.text.FLASH_WaitForLastOperation,"ax",%progbits
 620              		.align	1
 621              		.global	FLASH_WaitForLastOperation
 622              		.syntax unified
 623              		.thumb
 624              		.thumb_func
 625              		.fpu fpv4-sp-d16
 627              	FLASH_WaitForLastOperation:
 628              	.LVL40:
 629              	.LFB336:
 654:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
 630              		.loc 1 654 1 is_stmt 1 view -0
 631              		.cfi_startproc
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 659:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t error;
 634              		.loc 1 659 3 view .LVU177
 654:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
 635              		.loc 1 654 1 is_stmt 0 view .LVU178
 636 0000 70B5     		push	{r4, r5, r6, lr}
 637              		.cfi_def_cfa_offset 16
 638              		.cfi_offset 4, -16
 639              		.cfi_offset 5, -12
 640              		.cfi_offset 6, -8
 641              		.cfi_offset 14, -4
 654:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
 642              		.loc 1 654 1 view .LVU179
 643 0002 0646     		mov	r6, r0
 659:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t error;
 644              		.loc 1 659 24 view .LVU180
 645 0004 FFF7FEFF 		bl	HAL_GetTick
 646              	.LVL41:
 662:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 647              		.loc 1 662 10 view .LVU181
 648 0008 0F4C     		ldr	r4, .L56
 659:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t error;
 649              		.loc 1 659 24 view .LVU182
 650 000a 0546     		mov	r5, r0
 651              	.LVL42:
 660:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 652              		.loc 1 660 3 is_stmt 1 view .LVU183
 662:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 653              		.loc 1 662 3 view .LVU184
 654              	.L50:
 662:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 655              		.loc 1 662 10 is_stmt 0 view .LVU185
 656 000c 2369     		ldr	r3, [r4, #16]
 662:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 657              		.loc 1 662 9 view .LVU186
 658 000e DB03     		lsls	r3, r3, #15
 659 0010 0BD4     		bmi	.L52
 671:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (error != 0u)
 660              		.loc 1 671 3 is_stmt 1 view .LVU187
 671:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (error != 0u)
 661              		.loc 1 671 17 is_stmt 0 view .LVU188
 662 0012 2069     		ldr	r0, [r4, #16]
 671:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   if (error != 0u)
 663              		.loc 1 671 9 view .LVU189
 664 0014 4CF2FA32 		movw	r2, #50170
 665              	.LVL43:
 672:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 666              		.loc 1 672 3 is_stmt 1 view .LVU190
 672:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 667              		.loc 1 672 6 is_stmt 0 view .LVU191
 668 0018 0240     		ands	r2, r0, r2
 669              	.LVL44:
 672:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 670              		.loc 1 672 6 view .LVU192
 671 001a 0DD0     		beq	.L53
 675:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 672              		.loc 1 675 5 is_stmt 1 view .LVU193
 675:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 673              		.loc 1 675 22 is_stmt 0 view .LVU194
 674 001c 0B49     		ldr	r1, .L56+4
 675 001e 4B68     		ldr	r3, [r1, #4]
 676 0020 1343     		orrs	r3, r3, r2
 677 0022 4B60     		str	r3, [r1, #4]
 678:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 678              		.loc 1 678 5 is_stmt 1 view .LVU195
 678:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 679              		.loc 1 678 5 view .LVU196
 678:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 680              		.loc 1 678 5 view .LVU197
 678:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 681              		.loc 1 678 5 view .LVU198
 680:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 682              		.loc 1 680 12 is_stmt 0 view .LVU199
 683 0024 0120     		movs	r0, #1
 678:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 684              		.loc 1 678 5 view .LVU200
 685 0026 2261     		str	r2, [r4, #16]
 680:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 686              		.loc 1 680 5 is_stmt 1 view .LVU201
 687              	.LVL45:
 688              	.L51:
 692:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 689              		.loc 1 692 1 is_stmt 0 view .LVU202
 690 0028 70BD     		pop	{r4, r5, r6, pc}
 691              	.LVL46:
 692              	.L52:
 664:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 693              		.loc 1 664 5 is_stmt 1 view .LVU203
 664:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 694              		.loc 1 664 10 is_stmt 0 view .LVU204
 695 002a FFF7FEFF 		bl	HAL_GetTick
 696              	.LVL47:
 664:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 697              		.loc 1 664 24 view .LVU205
 698 002e 401B     		subs	r0, r0, r5
 664:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 699              		.loc 1 664 8 view .LVU206
 700 0030 B042     		cmp	r0, r6
 701 0032 EBD9     		bls	.L50
 666:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 702              		.loc 1 666 14 view .LVU207
 703 0034 0320     		movs	r0, #3
 704 0036 F7E7     		b	.L51
 705              	.LVL48:
 706              	.L53:
 707              	.LBB18:
 708              	.LBI18:
 653:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 709              		.loc 1 653 19 is_stmt 1 view .LVU208
 710              	.LBB19:
 684:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 711              		.loc 1 684 3 view .LVU209
 684:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 712              		.loc 1 684 7 is_stmt 0 view .LVU210
 713 0038 2069     		ldr	r0, [r4, #16]
 684:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 714              		.loc 1 684 6 view .LVU211
 715 003a 10F00100 		ands	r0, r0, #1
 716 003e F3D0     		beq	.L51
 687:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 717              		.loc 1 687 5 is_stmt 1 view .LVU212
 687:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 718              		.loc 1 687 5 view .LVU213
 687:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 719              		.loc 1 687 5 view .LVU214
 687:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 720              		.loc 1 687 5 view .LVU215
 721 0040 0123     		movs	r3, #1
 722 0042 2361     		str	r3, [r4, #16]
 723 0044 1046     		mov	r0, r2
 724 0046 EFE7     		b	.L51
 725              	.L57:
 726              		.align	2
 727              	.L56:
 728 0048 00200240 		.word	1073881088
 729 004c 00000000 		.word	.LANCHOR0
 730              	.LBE19:
 731              	.LBE18:
 732              		.cfi_endproc
 733              	.LFE336:
 735              		.section	.text.HAL_FLASH_Program,"ax",%progbits
 736              		.align	1
 737              		.global	HAL_FLASH_Program
 738              		.syntax unified
 739              		.thumb
 740              		.thumb_func
 741              		.fpu fpv4-sp-d16
 743              	HAL_FLASH_Program:
 744              	.LVL49:
 745              	.LFB325:
 175:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 746              		.loc 1 175 1 view -0
 747              		.cfi_startproc
 748              		@ args = 0, pretend = 0, frame = 0
 749              		@ frame_needed = 0, uses_anonymous_args = 0
 176:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   uint32_t prog_bit = 0;
 750              		.loc 1 176 3 view .LVU217
 177:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 751              		.loc 1 177 3 view .LVU218
 180:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 752              		.loc 1 180 3 view .LVU219
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 753              		.loc 1 183 3 view .LVU220
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 754              		.loc 1 183 3 view .LVU221
 175:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 755              		.loc 1 175 1 is_stmt 0 view .LVU222
 756 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 757              		.cfi_def_cfa_offset 32
 758              		.cfi_offset 3, -32
 759              		.cfi_offset 4, -28
 760              		.cfi_offset 5, -24
 761              		.cfi_offset 6, -20
 762              		.cfi_offset 7, -16
 763              		.cfi_offset 8, -12
 764              		.cfi_offset 9, -8
 765              		.cfi_offset 14, -4
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 766              		.loc 1 183 3 view .LVU223
 767 0004 1C4D     		ldr	r5, .L69
 175:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 768              		.loc 1 175 1 view .LVU224
 769 0006 9946     		mov	r9, r3
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 770              		.loc 1 183 3 view .LVU225
 771 0008 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 772 000a 012B     		cmp	r3, #1
 175:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 773              		.loc 1 175 1 view .LVU226
 774 000c 0646     		mov	r6, r0
 775 000e 0F46     		mov	r7, r1
 776 0010 9046     		mov	r8, r2
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 777              		.loc 1 183 3 view .LVU227
 778 0012 2ED0     		beq	.L65
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 779              		.loc 1 183 3 is_stmt 1 discriminator 2 view .LVU228
 780 0014 0124     		movs	r4, #1
 186:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 781              		.loc 1 186 12 is_stmt 0 discriminator 2 view .LVU229
 782 0016 4FF47A70 		mov	r0, #1000
 783              	.LVL50:
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 784              		.loc 1 183 3 discriminator 2 view .LVU230
 785 001a 2C70     		strb	r4, [r5]
 186:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 786              		.loc 1 186 3 is_stmt 1 discriminator 2 view .LVU231
 186:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 787              		.loc 1 186 12 is_stmt 0 discriminator 2 view .LVU232
 788 001c FFF7FEFF 		bl	FLASH_WaitForLastOperation
 789              	.LVL51:
 188:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 790              		.loc 1 188 3 is_stmt 1 discriminator 2 view .LVU233
 188:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 791              		.loc 1 188 6 is_stmt 0 discriminator 2 view .LVU234
 792 0020 A8B9     		cbnz	r0, .L60
 190:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 793              		.loc 1 190 5 is_stmt 1 view .LVU235
 190:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 794              		.loc 1 190 22 is_stmt 0 view .LVU236
 795 0022 6860     		str	r0, [r5, #4]
 192:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 796              		.loc 1 192 5 is_stmt 1 view .LVU237
 192:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 797              		.loc 1 192 8 is_stmt 0 view .LVU238
 798 0024 BEB9     		cbnz	r6, .L61
 195:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       prog_bit = FLASH_CR_PG;
 799              		.loc 1 195 7 is_stmt 1 view .LVU239
 800              	.LVL52:
 801              	.LBB24:
 802              	.LBI24:
 700:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 803              		.loc 1 700 13 view .LVU240
 804              	.LBB25:
 703:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 805              		.loc 1 703 3 view .LVU241
 706:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 806              		.loc 1 706 3 view .LVU242
 807 0026 154A     		ldr	r2, .L69+4
 808 0028 5069     		ldr	r0, [r2, #20]
 809              	.LVL53:
 706:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 810              		.loc 1 706 3 is_stmt 0 view .LVU243
 811 002a 2043     		orrs	r0, r0, r4
 812 002c 5061     		str	r0, [r2, #20]
 709:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 813              		.loc 1 709 3 is_stmt 1 view .LVU244
 709:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 814              		.loc 1 709 26 is_stmt 0 view .LVU245
 815 002e C7F80080 		str	r8, [r7]
 713:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 816              		.loc 1 713 3 is_stmt 1 view .LVU246
 817              	.LBB26:
 818              	.LBI26:
 415:../../..\CubeG4\include/cmsis_gcc.h **** }
 416:../../..\CubeG4\include/cmsis_gcc.h **** 
 417:../../..\CubeG4\include/cmsis_gcc.h **** 
 418:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 419:../../..\CubeG4\include/cmsis_gcc.h **** /**
 420:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Priority Mask (non-secure)
 421:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Priority Mask Register when in secure state.
 422:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 423:../../..\CubeG4\include/cmsis_gcc.h ****  */
 424:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PRIMASK_NS(uint32_t priMask)
 425:../../..\CubeG4\include/cmsis_gcc.h **** {
 426:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR primask_ns, %0" : : "r" (priMask) : "memory");
 427:../../..\CubeG4\include/cmsis_gcc.h **** }
 428:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 429:../../..\CubeG4\include/cmsis_gcc.h **** 
 430:../../..\CubeG4\include/cmsis_gcc.h **** 
 431:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 432:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 433:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    )
 434:../../..\CubeG4\include/cmsis_gcc.h **** /**
 435:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Enable FIQ
 436:../../..\CubeG4\include/cmsis_gcc.h ****   \details Enables FIQ interrupts by clearing the F-bit in the CPSR.
 437:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 438:../../..\CubeG4\include/cmsis_gcc.h ****  */
 439:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __enable_fault_irq(void)
 440:../../..\CubeG4\include/cmsis_gcc.h **** {
 441:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsie f" : : : "memory");
 442:../../..\CubeG4\include/cmsis_gcc.h **** }
 443:../../..\CubeG4\include/cmsis_gcc.h **** 
 444:../../..\CubeG4\include/cmsis_gcc.h **** 
 445:../../..\CubeG4\include/cmsis_gcc.h **** /**
 446:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Disable FIQ
 447:../../..\CubeG4\include/cmsis_gcc.h ****   \details Disables FIQ interrupts by setting the F-bit in the CPSR.
 448:../../..\CubeG4\include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 449:../../..\CubeG4\include/cmsis_gcc.h ****  */
 450:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __disable_fault_irq(void)
 451:../../..\CubeG4\include/cmsis_gcc.h **** {
 452:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("cpsid f" : : : "memory");
 453:../../..\CubeG4\include/cmsis_gcc.h **** }
 454:../../..\CubeG4\include/cmsis_gcc.h **** 
 455:../../..\CubeG4\include/cmsis_gcc.h **** 
 456:../../..\CubeG4\include/cmsis_gcc.h **** /**
 457:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Base Priority
 458:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Base Priority register.
 459:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Base Priority register value
 460:../../..\CubeG4\include/cmsis_gcc.h ****  */
 461:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_BASEPRI(void)
 462:../../..\CubeG4\include/cmsis_gcc.h **** {
 463:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 464:../../..\CubeG4\include/cmsis_gcc.h **** 
 465:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri" : "=r" (result) );
 466:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 467:../../..\CubeG4\include/cmsis_gcc.h **** }
 468:../../..\CubeG4\include/cmsis_gcc.h **** 
 469:../../..\CubeG4\include/cmsis_gcc.h **** 
 470:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 471:../../..\CubeG4\include/cmsis_gcc.h **** /**
 472:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Base Priority (non-secure)
 473:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Base Priority register when in secure state.
 474:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Base Priority register value
 475:../../..\CubeG4\include/cmsis_gcc.h ****  */
 476:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_BASEPRI_NS(void)
 477:../../..\CubeG4\include/cmsis_gcc.h **** {
 478:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 479:../../..\CubeG4\include/cmsis_gcc.h **** 
 480:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri_ns" : "=r" (result) );
 481:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 482:../../..\CubeG4\include/cmsis_gcc.h **** }
 483:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 484:../../..\CubeG4\include/cmsis_gcc.h **** 
 485:../../..\CubeG4\include/cmsis_gcc.h **** 
 486:../../..\CubeG4\include/cmsis_gcc.h **** /**
 487:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority
 488:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register.
 489:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 490:../../..\CubeG4\include/cmsis_gcc.h ****  */
 491:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_BASEPRI(uint32_t basePri)
 492:../../..\CubeG4\include/cmsis_gcc.h **** {
 493:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
 494:../../..\CubeG4\include/cmsis_gcc.h **** }
 495:../../..\CubeG4\include/cmsis_gcc.h **** 
 496:../../..\CubeG4\include/cmsis_gcc.h **** 
 497:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 498:../../..\CubeG4\include/cmsis_gcc.h **** /**
 499:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority (non-secure)
 500:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Base Priority register when in secure state.
 501:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 502:../../..\CubeG4\include/cmsis_gcc.h ****  */
 503:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_BASEPRI_NS(uint32_t basePri)
 504:../../..\CubeG4\include/cmsis_gcc.h **** {
 505:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_ns, %0" : : "r" (basePri) : "memory");
 506:../../..\CubeG4\include/cmsis_gcc.h **** }
 507:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 508:../../..\CubeG4\include/cmsis_gcc.h **** 
 509:../../..\CubeG4\include/cmsis_gcc.h **** 
 510:../../..\CubeG4\include/cmsis_gcc.h **** /**
 511:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Base Priority with condition
 512:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register only if BASEPRI masking is disable
 513:../../..\CubeG4\include/cmsis_gcc.h ****            or the new value increases the BASEPRI priority level.
 514:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 515:../../..\CubeG4\include/cmsis_gcc.h ****  */
 516:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_BASEPRI_MAX(uint32_t basePri)
 517:../../..\CubeG4\include/cmsis_gcc.h **** {
 518:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
 519:../../..\CubeG4\include/cmsis_gcc.h **** }
 520:../../..\CubeG4\include/cmsis_gcc.h **** 
 521:../../..\CubeG4\include/cmsis_gcc.h **** 
 522:../../..\CubeG4\include/cmsis_gcc.h **** /**
 523:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Fault Mask
 524:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Fault Mask register.
 525:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Fault Mask register value
 526:../../..\CubeG4\include/cmsis_gcc.h ****  */
 527:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_FAULTMASK(void)
 528:../../..\CubeG4\include/cmsis_gcc.h **** {
 529:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 530:../../..\CubeG4\include/cmsis_gcc.h **** 
 531:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask" : "=r" (result) );
 532:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 533:../../..\CubeG4\include/cmsis_gcc.h **** }
 534:../../..\CubeG4\include/cmsis_gcc.h **** 
 535:../../..\CubeG4\include/cmsis_gcc.h **** 
 536:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 537:../../..\CubeG4\include/cmsis_gcc.h **** /**
 538:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Fault Mask (non-secure)
 539:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Fault Mask register when in secure state.
 540:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Fault Mask register value
 541:../../..\CubeG4\include/cmsis_gcc.h ****  */
 542:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_FAULTMASK_NS(void)
 543:../../..\CubeG4\include/cmsis_gcc.h **** {
 544:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 545:../../..\CubeG4\include/cmsis_gcc.h **** 
 546:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask_ns" : "=r" (result) );
 547:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 548:../../..\CubeG4\include/cmsis_gcc.h **** }
 549:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 550:../../..\CubeG4\include/cmsis_gcc.h **** 
 551:../../..\CubeG4\include/cmsis_gcc.h **** 
 552:../../..\CubeG4\include/cmsis_gcc.h **** /**
 553:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Fault Mask
 554:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Fault Mask register.
 555:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 556:../../..\CubeG4\include/cmsis_gcc.h ****  */
 557:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_FAULTMASK(uint32_t faultMask)
 558:../../..\CubeG4\include/cmsis_gcc.h **** {
 559:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
 560:../../..\CubeG4\include/cmsis_gcc.h **** }
 561:../../..\CubeG4\include/cmsis_gcc.h **** 
 562:../../..\CubeG4\include/cmsis_gcc.h **** 
 563:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE ) && (__ARM_FEATURE_CMSE == 3))
 564:../../..\CubeG4\include/cmsis_gcc.h **** /**
 565:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Fault Mask (non-secure)
 566:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Fault Mask register when in secure state.
 567:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 568:../../..\CubeG4\include/cmsis_gcc.h ****  */
 569:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_FAULTMASK_NS(uint32_t faultMask)
 570:../../..\CubeG4\include/cmsis_gcc.h **** {
 571:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask_ns, %0" : : "r" (faultMask) : "memory");
 572:../../..\CubeG4\include/cmsis_gcc.h **** }
 573:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 574:../../..\CubeG4\include/cmsis_gcc.h **** 
 575:../../..\CubeG4\include/cmsis_gcc.h **** #endif /* ((defined (__ARM_ARCH_7M__      ) && (__ARM_ARCH_7M__      == 1)) || \
 576:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_7EM__     ) && (__ARM_ARCH_7EM__     == 1)) || \
 577:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1))    ) */
 578:../../..\CubeG4\include/cmsis_gcc.h **** 
 579:../../..\CubeG4\include/cmsis_gcc.h **** 
 580:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) || \
 581:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__ARM_ARCH_8M_BASE__ ) && (__ARM_ARCH_8M_BASE__ == 1))    )
 582:../../..\CubeG4\include/cmsis_gcc.h **** 
 583:../../..\CubeG4\include/cmsis_gcc.h **** /**
 584:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer Limit
 585:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 586:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always in non-secure
 587:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 588:../../..\CubeG4\include/cmsis_gcc.h ****   
 589:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer Limit (PSPLIM).
 590:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSPLIM Register value
 591:../../..\CubeG4\include/cmsis_gcc.h ****  */
 592:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_PSPLIM(void)
 593:../../..\CubeG4\include/cmsis_gcc.h **** {
 594:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 595:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 596:../../..\CubeG4\include/cmsis_gcc.h ****     // without main extensions, the non-secure PSPLIM is RAZ/WI
 597:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 598:../../..\CubeG4\include/cmsis_gcc.h **** #else
 599:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 600:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psplim"  : "=r" (result) );
 601:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 602:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 603:../../..\CubeG4\include/cmsis_gcc.h **** }
 604:../../..\CubeG4\include/cmsis_gcc.h **** 
 605:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE) && (__ARM_FEATURE_CMSE == 3))
 606:../../..\CubeG4\include/cmsis_gcc.h **** /**
 607:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer Limit (non-secure)
 608:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 609:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always.
 610:../../..\CubeG4\include/cmsis_gcc.h **** 
 611:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Process Stack Pointer Limit (PSPLIM) when in
 612:../../..\CubeG4\include/cmsis_gcc.h ****   \return               PSPLIM Register value
 613:../../..\CubeG4\include/cmsis_gcc.h ****  */
 614:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_PSPLIM_NS(void)
 615:../../..\CubeG4\include/cmsis_gcc.h **** {
 616:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 617:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 618:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 619:../../..\CubeG4\include/cmsis_gcc.h **** #else
 620:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 621:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psplim_ns"  : "=r" (result) );
 622:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 623:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 624:../../..\CubeG4\include/cmsis_gcc.h **** }
 625:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 626:../../..\CubeG4\include/cmsis_gcc.h **** 
 627:../../..\CubeG4\include/cmsis_gcc.h **** 
 628:../../..\CubeG4\include/cmsis_gcc.h **** /**
 629:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer Limit
 630:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 631:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored in non-secure
 632:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 633:../../..\CubeG4\include/cmsis_gcc.h ****   
 634:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer Limit (PSPLIM).
 635:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
 636:../../..\CubeG4\include/cmsis_gcc.h ****  */
 637:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_PSPLIM(uint32_t ProcStackPtrLimit)
 638:../../..\CubeG4\include/cmsis_gcc.h **** {
 639:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 640:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 641:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 642:../../..\CubeG4\include/cmsis_gcc.h ****   (void)ProcStackPtrLimit;
 643:../../..\CubeG4\include/cmsis_gcc.h **** #else
 644:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psplim, %0" : : "r" (ProcStackPtrLimit));
 645:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 646:../../..\CubeG4\include/cmsis_gcc.h **** }
 647:../../..\CubeG4\include/cmsis_gcc.h **** 
 648:../../..\CubeG4\include/cmsis_gcc.h **** 
 649:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 650:../../..\CubeG4\include/cmsis_gcc.h **** /**
 651:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer (non-secure)
 652:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 653:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored.
 654:../../..\CubeG4\include/cmsis_gcc.h **** 
 655:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Process Stack Pointer Limit (PSPLIM) when in s
 656:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
 657:../../..\CubeG4\include/cmsis_gcc.h ****  */
 658:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_PSPLIM_NS(uint32_t ProcStackPtrLimit)
 659:../../..\CubeG4\include/cmsis_gcc.h **** {
 660:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 661:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure PSPLIM is RAZ/WI
 662:../../..\CubeG4\include/cmsis_gcc.h ****   (void)ProcStackPtrLimit;
 663:../../..\CubeG4\include/cmsis_gcc.h **** #else
 664:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR psplim_ns, %0\n" : : "r" (ProcStackPtrLimit));
 665:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 666:../../..\CubeG4\include/cmsis_gcc.h **** }
 667:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 668:../../..\CubeG4\include/cmsis_gcc.h **** 
 669:../../..\CubeG4\include/cmsis_gcc.h **** 
 670:../../..\CubeG4\include/cmsis_gcc.h **** /**
 671:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer Limit
 672:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 673:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always in non-secure
 674:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 675:../../..\CubeG4\include/cmsis_gcc.h **** 
 676:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer Limit (MSPLIM).
 677:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSPLIM Register value
 678:../../..\CubeG4\include/cmsis_gcc.h ****  */
 679:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_MSPLIM(void)
 680:../../..\CubeG4\include/cmsis_gcc.h **** {
 681:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 682:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 683:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 684:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 685:../../..\CubeG4\include/cmsis_gcc.h **** #else
 686:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 687:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msplim" : "=r" (result) );
 688:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 689:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 690:../../..\CubeG4\include/cmsis_gcc.h **** }
 691:../../..\CubeG4\include/cmsis_gcc.h **** 
 692:../../..\CubeG4\include/cmsis_gcc.h **** 
 693:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 694:../../..\CubeG4\include/cmsis_gcc.h **** /**
 695:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer Limit (non-secure)
 696:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 697:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence zero is returned always.
 698:../../..\CubeG4\include/cmsis_gcc.h **** 
 699:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the non-secure Main Stack Pointer Limit(MSPLIM) when in sec
 700:../../..\CubeG4\include/cmsis_gcc.h ****   \return               MSPLIM Register value
 701:../../..\CubeG4\include/cmsis_gcc.h ****  */
 702:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __TZ_get_MSPLIM_NS(void)
 703:../../..\CubeG4\include/cmsis_gcc.h **** {
 704:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 705:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 706:../../..\CubeG4\include/cmsis_gcc.h ****   return 0U;
 707:../../..\CubeG4\include/cmsis_gcc.h **** #else
 708:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 709:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msplim_ns" : "=r" (result) );
 710:../../..\CubeG4\include/cmsis_gcc.h ****   return result;
 711:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 712:../../..\CubeG4\include/cmsis_gcc.h **** }
 713:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 714:../../..\CubeG4\include/cmsis_gcc.h **** 
 715:../../..\CubeG4\include/cmsis_gcc.h **** 
 716:../../..\CubeG4\include/cmsis_gcc.h **** /**
 717:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer Limit
 718:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 719:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored in non-secure
 720:../../..\CubeG4\include/cmsis_gcc.h ****   mode.
 721:../../..\CubeG4\include/cmsis_gcc.h **** 
 722:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer Limit (MSPLIM).
 723:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    MainStackPtrLimit  Main Stack Pointer Limit value to set
 724:../../..\CubeG4\include/cmsis_gcc.h ****  */
 725:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_MSPLIM(uint32_t MainStackPtrLimit)
 726:../../..\CubeG4\include/cmsis_gcc.h **** {
 727:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) && \
 728:../../..\CubeG4\include/cmsis_gcc.h ****     (!defined (__ARM_FEATURE_CMSE) || (__ARM_FEATURE_CMSE < 3)))
 729:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 730:../../..\CubeG4\include/cmsis_gcc.h ****   (void)MainStackPtrLimit;
 731:../../..\CubeG4\include/cmsis_gcc.h **** #else
 732:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msplim, %0" : : "r" (MainStackPtrLimit));
 733:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 734:../../..\CubeG4\include/cmsis_gcc.h **** }
 735:../../..\CubeG4\include/cmsis_gcc.h **** 
 736:../../..\CubeG4\include/cmsis_gcc.h **** 
 737:../../..\CubeG4\include/cmsis_gcc.h **** #if (defined (__ARM_FEATURE_CMSE  ) && (__ARM_FEATURE_CMSE   == 3))
 738:../../..\CubeG4\include/cmsis_gcc.h **** /**
 739:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer Limit (non-secure)
 740:../../..\CubeG4\include/cmsis_gcc.h ****   Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
 741:../../..\CubeG4\include/cmsis_gcc.h ****   Stack Pointer Limit register hence the write is silently ignored.
 742:../../..\CubeG4\include/cmsis_gcc.h **** 
 743:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the non-secure Main Stack Pointer Limit (MSPLIM) when in secu
 744:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    MainStackPtrLimit  Main Stack Pointer value to set
 745:../../..\CubeG4\include/cmsis_gcc.h ****  */
 746:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __TZ_set_MSPLIM_NS(uint32_t MainStackPtrLimit)
 747:../../..\CubeG4\include/cmsis_gcc.h **** {
 748:../../..\CubeG4\include/cmsis_gcc.h **** #if (!(defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)))
 749:../../..\CubeG4\include/cmsis_gcc.h ****   // without main extensions, the non-secure MSPLIM is RAZ/WI
 750:../../..\CubeG4\include/cmsis_gcc.h ****   (void)MainStackPtrLimit;
 751:../../..\CubeG4\include/cmsis_gcc.h **** #else
 752:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("MSR msplim_ns, %0" : : "r" (MainStackPtrLimit));
 753:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 754:../../..\CubeG4\include/cmsis_gcc.h **** }
 755:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 756:../../..\CubeG4\include/cmsis_gcc.h **** 
 757:../../..\CubeG4\include/cmsis_gcc.h **** #endif /* ((defined (__ARM_ARCH_8M_MAIN__ ) && (__ARM_ARCH_8M_MAIN__ == 1)) || \
 758:../../..\CubeG4\include/cmsis_gcc.h ****            (defined (__ARM_ARCH_8M_BASE__ ) && (__ARM_ARCH_8M_BASE__ == 1))    ) */
 759:../../..\CubeG4\include/cmsis_gcc.h **** 
 760:../../..\CubeG4\include/cmsis_gcc.h **** 
 761:../../..\CubeG4\include/cmsis_gcc.h **** /**
 762:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Get FPSCR
 763:../../..\CubeG4\include/cmsis_gcc.h ****   \details Returns the current value of the Floating Point Status/Control register.
 764:../../..\CubeG4\include/cmsis_gcc.h ****   \return               Floating Point Status/Control register value
 765:../../..\CubeG4\include/cmsis_gcc.h ****  */
 766:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE uint32_t __get_FPSCR(void)
 767:../../..\CubeG4\include/cmsis_gcc.h **** {
 768:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)) && \
 769:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__FPU_USED   ) && (__FPU_USED    == 1U))     )
 770:../../..\CubeG4\include/cmsis_gcc.h **** #if __has_builtin(__builtin_arm_get_fpscr) 
 771:../../..\CubeG4\include/cmsis_gcc.h **** // Re-enable using built-in when GCC has been fixed
 772:../../..\CubeG4\include/cmsis_gcc.h **** // || (__GNUC__ > 7) || (__GNUC__ == 7 && __GNUC_MINOR__ >= 2)
 773:../../..\CubeG4\include/cmsis_gcc.h ****   /* see https://gcc.gnu.org/ml/gcc-patches/2017-04/msg00443.html */
 774:../../..\CubeG4\include/cmsis_gcc.h ****   return __builtin_arm_get_fpscr();
 775:../../..\CubeG4\include/cmsis_gcc.h **** #else
 776:../../..\CubeG4\include/cmsis_gcc.h ****   uint32_t result;
 777:../../..\CubeG4\include/cmsis_gcc.h **** 
 778:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("VMRS %0, fpscr" : "=r" (result) );
 779:../../..\CubeG4\include/cmsis_gcc.h ****   return(result);
 780:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 781:../../..\CubeG4\include/cmsis_gcc.h **** #else
 782:../../..\CubeG4\include/cmsis_gcc.h ****   return(0U);
 783:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 784:../../..\CubeG4\include/cmsis_gcc.h **** }
 785:../../..\CubeG4\include/cmsis_gcc.h **** 
 786:../../..\CubeG4\include/cmsis_gcc.h **** 
 787:../../..\CubeG4\include/cmsis_gcc.h **** /**
 788:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Set FPSCR
 789:../../..\CubeG4\include/cmsis_gcc.h ****   \details Assigns the given value to the Floating Point Status/Control register.
 790:../../..\CubeG4\include/cmsis_gcc.h ****   \param [in]    fpscr  Floating Point Status/Control value to set
 791:../../..\CubeG4\include/cmsis_gcc.h ****  */
 792:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __set_FPSCR(uint32_t fpscr)
 793:../../..\CubeG4\include/cmsis_gcc.h **** {
 794:../../..\CubeG4\include/cmsis_gcc.h **** #if ((defined (__FPU_PRESENT) && (__FPU_PRESENT == 1U)) && \
 795:../../..\CubeG4\include/cmsis_gcc.h ****      (defined (__FPU_USED   ) && (__FPU_USED    == 1U))     )
 796:../../..\CubeG4\include/cmsis_gcc.h **** #if __has_builtin(__builtin_arm_set_fpscr)
 797:../../..\CubeG4\include/cmsis_gcc.h **** // Re-enable using built-in when GCC has been fixed
 798:../../..\CubeG4\include/cmsis_gcc.h **** // || (__GNUC__ > 7) || (__GNUC__ == 7 && __GNUC_MINOR__ >= 2)
 799:../../..\CubeG4\include/cmsis_gcc.h ****   /* see https://gcc.gnu.org/ml/gcc-patches/2017-04/msg00443.html */
 800:../../..\CubeG4\include/cmsis_gcc.h ****   __builtin_arm_set_fpscr(fpscr);
 801:../../..\CubeG4\include/cmsis_gcc.h **** #else
 802:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("VMSR fpscr, %0" : : "r" (fpscr) : "vfpcc", "memory");
 803:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 804:../../..\CubeG4\include/cmsis_gcc.h **** #else
 805:../../..\CubeG4\include/cmsis_gcc.h ****   (void)fpscr;
 806:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 807:../../..\CubeG4\include/cmsis_gcc.h **** }
 808:../../..\CubeG4\include/cmsis_gcc.h **** 
 809:../../..\CubeG4\include/cmsis_gcc.h **** 
 810:../../..\CubeG4\include/cmsis_gcc.h **** /*@} end of CMSIS_Core_RegAccFunctions */
 811:../../..\CubeG4\include/cmsis_gcc.h **** 
 812:../../..\CubeG4\include/cmsis_gcc.h **** 
 813:../../..\CubeG4\include/cmsis_gcc.h **** /* ##########################  Core Instruction Access  ######################### */
 814:../../..\CubeG4\include/cmsis_gcc.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
 815:../../..\CubeG4\include/cmsis_gcc.h ****   Access to dedicated instructions
 816:../../..\CubeG4\include/cmsis_gcc.h ****   @{
 817:../../..\CubeG4\include/cmsis_gcc.h **** */
 818:../../..\CubeG4\include/cmsis_gcc.h **** 
 819:../../..\CubeG4\include/cmsis_gcc.h **** /* Define macros for porting to both thumb1 and thumb2.
 820:../../..\CubeG4\include/cmsis_gcc.h ****  * For thumb1, use low register (r0-r7), specified by constraint "l"
 821:../../..\CubeG4\include/cmsis_gcc.h ****  * Otherwise, use general registers, specified by constraint "r" */
 822:../../..\CubeG4\include/cmsis_gcc.h **** #if defined (__thumb__) && !defined (__thumb2__)
 823:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 824:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_RW_REG(r) "+l" (r)
 825:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 826:../../..\CubeG4\include/cmsis_gcc.h **** #else
 827:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 828:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_RW_REG(r) "+r" (r)
 829:../../..\CubeG4\include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 830:../../..\CubeG4\include/cmsis_gcc.h **** #endif
 831:../../..\CubeG4\include/cmsis_gcc.h **** 
 832:../../..\CubeG4\include/cmsis_gcc.h **** /**
 833:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   No Operation
 834:../../..\CubeG4\include/cmsis_gcc.h ****   \details No Operation does nothing. This instruction can be used for code alignment purposes.
 835:../../..\CubeG4\include/cmsis_gcc.h ****  */
 836:../../..\CubeG4\include/cmsis_gcc.h **** #define __NOP()                             __ASM volatile ("nop")
 837:../../..\CubeG4\include/cmsis_gcc.h **** 
 838:../../..\CubeG4\include/cmsis_gcc.h **** /**
 839:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Wait For Interrupt
 840:../../..\CubeG4\include/cmsis_gcc.h ****   \details Wait For Interrupt is a hint instruction that suspends execution until one of a number o
 841:../../..\CubeG4\include/cmsis_gcc.h ****  */
 842:../../..\CubeG4\include/cmsis_gcc.h **** #define __WFI()                             __ASM volatile ("wfi")
 843:../../..\CubeG4\include/cmsis_gcc.h **** 
 844:../../..\CubeG4\include/cmsis_gcc.h **** 
 845:../../..\CubeG4\include/cmsis_gcc.h **** /**
 846:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Wait For Event
 847:../../..\CubeG4\include/cmsis_gcc.h ****   \details Wait For Event is a hint instruction that permits the processor to enter
 848:../../..\CubeG4\include/cmsis_gcc.h ****            a low-power state until one of a number of events occurs.
 849:../../..\CubeG4\include/cmsis_gcc.h ****  */
 850:../../..\CubeG4\include/cmsis_gcc.h **** #define __WFE()                             __ASM volatile ("wfe")
 851:../../..\CubeG4\include/cmsis_gcc.h **** 
 852:../../..\CubeG4\include/cmsis_gcc.h **** 
 853:../../..\CubeG4\include/cmsis_gcc.h **** /**
 854:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Send Event
 855:../../..\CubeG4\include/cmsis_gcc.h ****   \details Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 856:../../..\CubeG4\include/cmsis_gcc.h ****  */
 857:../../..\CubeG4\include/cmsis_gcc.h **** #define __SEV()                             __ASM volatile ("sev")
 858:../../..\CubeG4\include/cmsis_gcc.h **** 
 859:../../..\CubeG4\include/cmsis_gcc.h **** 
 860:../../..\CubeG4\include/cmsis_gcc.h **** /**
 861:../../..\CubeG4\include/cmsis_gcc.h ****   \brief   Instruction Synchronization Barrier
 862:../../..\CubeG4\include/cmsis_gcc.h ****   \details Instruction Synchronization Barrier flushes the pipeline in the processor,
 863:../../..\CubeG4\include/cmsis_gcc.h ****            so that all instructions following the ISB are fetched from cache or memory,
 864:../../..\CubeG4\include/cmsis_gcc.h ****            after the instruction has been completed.
 865:../../..\CubeG4\include/cmsis_gcc.h ****  */
 866:../../..\CubeG4\include/cmsis_gcc.h **** __STATIC_FORCEINLINE void __ISB(void)
 819              		.loc 2 866 27 view .LVU247
 820              	.LBB27:
 867:../../..\CubeG4\include/cmsis_gcc.h **** {
 868:../../..\CubeG4\include/cmsis_gcc.h ****   __ASM volatile ("isb 0xF":::"memory");
 821              		.loc 2 868 3 view .LVU248
 822              		.syntax unified
 823              	@ 868 "../../..\CubeG4\include/cmsis_gcc.h" 1
 824 0032 BFF36F8F 		isb 0xF
 825              	@ 0 "" 2
 826              		.thumb
 827              		.syntax unified
 828              	.LBE27:
 829              	.LBE26:
 716:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 830              		.loc 1 716 3 view .LVU249
 716:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 831              		.loc 1 716 33 is_stmt 0 view .LVU250
 832 0036 C7F80490 		str	r9, [r7, #4]
 833              	.LVL54:
 834              	.L62:
 716:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 835              		.loc 1 716 33 view .LVU251
 836              	.LBE25:
 837              	.LBE24:
 212:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 838              		.loc 1 212 5 is_stmt 1 view .LVU252
 215:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 839              		.loc 1 215 5 view .LVU253
 215:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 840              		.loc 1 215 14 is_stmt 0 view .LVU254
 841 003a 4FF47A70 		mov	r0, #1000
 842 003e FFF7FEFF 		bl	FLASH_WaitForLastOperation
 843              	.LVL55:
 218:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 844              		.loc 1 218 5 is_stmt 1 view .LVU255
 218:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 845              		.loc 1 218 8 is_stmt 0 view .LVU256
 846 0042 24B1     		cbz	r4, .L60
 220:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 847              		.loc 1 220 7 is_stmt 1 view .LVU257
 848 0044 0D4A     		ldr	r2, .L69+4
 849 0046 5369     		ldr	r3, [r2, #20]
 850 0048 23EA0404 		bic	r4, r3, r4
 851              	.LVL56:
 220:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 852              		.loc 1 220 7 is_stmt 0 view .LVU258
 853 004c 5461     		str	r4, [r2, #20]
 854              	.L60:
 225:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 855              		.loc 1 225 3 is_stmt 1 view .LVU259
 225:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 856              		.loc 1 225 3 view .LVU260
 857 004e 0023     		movs	r3, #0
 858 0050 2B70     		strb	r3, [r5]
 228:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 859              		.loc 1 228 3 view .LVU261
 860              	.LVL57:
 861              	.L59:
 229:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 862              		.loc 1 229 1 is_stmt 0 view .LVU262
 863 0052 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 864              	.LVL58:
 865              	.L61:
 198:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 866              		.loc 1 198 10 is_stmt 1 view .LVU263
 198:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 867              		.loc 1 198 54 is_stmt 0 view .LVU264
 868 0056 731E     		subs	r3, r6, #1
 198:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 869              		.loc 1 198 13 view .LVU265
 870 0058 012B     		cmp	r3, #1
 871 005a 01D9     		bls	.L63
 872              	.LVL59:
 873              	.L64:
 177:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 874              		.loc 1 177 12 view .LVU266
 875 005c 0024     		movs	r4, #0
 876 005e ECE7     		b	.L62
 877              	.LVL60:
 878              	.L63:
 201:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 879              		.loc 1 201 7 is_stmt 1 view .LVU267
 880 0060 4146     		mov	r1, r8
 881 0062 3846     		mov	r0, r7
 882              	.LVL61:
 201:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 883              		.loc 1 201 7 is_stmt 0 view .LVU268
 884 0064 FFF7FEFF 		bl	FLASH_Program_Fast
 885              	.LVL62:
 204:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 886              		.loc 1 204 7 is_stmt 1 view .LVU269
 204:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       {
 887              		.loc 1 204 10 is_stmt 0 view .LVU270
 888 0068 022E     		cmp	r6, #2
 889 006a F7D1     		bne	.L64
 890              	.LVL63:
 206:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****       }
 891              		.loc 1 206 18 view .LVU271
 892 006c 4FF48024 		mov	r4, #262144
 893 0070 E3E7     		b	.L62
 894              	.LVL64:
 895              	.L65:
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 896              		.loc 1 183 3 view .LVU272
 897 0072 0220     		movs	r0, #2
 898              	.LVL65:
 183:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 899              		.loc 1 183 3 view .LVU273
 900 0074 EDE7     		b	.L59
 901              	.L70:
 902 0076 00BF     		.align	2
 903              	.L69:
 904 0078 00000000 		.word	.LANCHOR0
 905 007c 00200240 		.word	1073881088
 906              		.cfi_endproc
 907              	.LFE325:
 909              		.section	.text.HAL_FLASH_Program_IT,"ax",%progbits
 910              		.align	1
 911              		.global	HAL_FLASH_Program_IT
 912              		.syntax unified
 913              		.thumb
 914              		.thumb_func
 915              		.fpu fpv4-sp-d16
 917              	HAL_FLASH_Program_IT:
 918              	.LVL66:
 919              	.LFB326:
 243:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 920              		.loc 1 243 1 is_stmt 1 view -0
 921              		.cfi_startproc
 922              		@ args = 0, pretend = 0, frame = 0
 923              		@ frame_needed = 0, uses_anonymous_args = 0
 244:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 924              		.loc 1 244 3 view .LVU275
 247:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 925              		.loc 1 247 3 view .LVU276
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 926              		.loc 1 250 3 view .LVU277
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 927              		.loc 1 250 3 view .LVU278
 243:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 928              		.loc 1 243 1 is_stmt 0 view .LVU279
 929 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 930              		.cfi_def_cfa_offset 40
 931              		.cfi_offset 3, -40
 932              		.cfi_offset 4, -36
 933              		.cfi_offset 5, -32
 934              		.cfi_offset 6, -28
 935              		.cfi_offset 7, -24
 936              		.cfi_offset 8, -20
 937              		.cfi_offset 9, -16
 938              		.cfi_offset 10, -12
 939              		.cfi_offset 11, -8
 940              		.cfi_offset 14, -4
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 941              		.loc 1 250 3 view .LVU280
 942 0004 1C4D     		ldr	r5, .L79
 243:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 943              		.loc 1 243 1 view .LVU281
 944 0006 9946     		mov	r9, r3
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 945              		.loc 1 250 3 view .LVU282
 946 0008 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 947 000a 012B     		cmp	r3, #1
 243:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   HAL_StatusTypeDef status;
 948              		.loc 1 243 1 view .LVU283
 949 000c 0446     		mov	r4, r0
 950 000e 0E46     		mov	r6, r1
 951 0010 9046     		mov	r8, r2
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 952              		.loc 1 250 3 view .LVU284
 953 0012 2FD0     		beq	.L77
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 954              		.loc 1 250 3 is_stmt 1 discriminator 2 view .LVU285
 955 0014 0123     		movs	r3, #1
 253:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 956              		.loc 1 253 20 is_stmt 0 discriminator 2 view .LVU286
 957 0016 4FF0000B 		mov	fp, #0
 256:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 958              		.loc 1 256 12 discriminator 2 view .LVU287
 959 001a 4FF47A70 		mov	r0, #1000
 960              	.LVL67:
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 961              		.loc 1 250 3 discriminator 2 view .LVU288
 962 001e 2B70     		strb	r3, [r5]
 253:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 963              		.loc 1 253 3 is_stmt 1 discriminator 2 view .LVU289
 253:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 964              		.loc 1 253 20 is_stmt 0 discriminator 2 view .LVU290
 965 0020 C5F804B0 		str	fp, [r5, #4]
 256:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 966              		.loc 1 256 3 is_stmt 1 discriminator 2 view .LVU291
 256:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 967              		.loc 1 256 12 is_stmt 0 discriminator 2 view .LVU292
 968 0024 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 969              	.LVL68:
 258:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 970              		.loc 1 258 3 is_stmt 1 discriminator 2 view .LVU293
 258:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   {
 971              		.loc 1 258 6 is_stmt 0 discriminator 2 view .LVU294
 972 0028 0746     		mov	r7, r0
 973 002a 20B1     		cbz	r0, .L73
 261:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 974              		.loc 1 261 5 is_stmt 1 view .LVU295
 261:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   }
 975              		.loc 1 261 5 view .LVU296
 976 002c 85F800B0 		strb	fp, [r5]
 977              	.LVL69:
 978              	.L72:
 296:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 979              		.loc 1 296 1 is_stmt 0 view .LVU297
 980 0030 3846     		mov	r0, r7
 981 0032 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 982              	.LVL70:
 983              	.L73:
 266:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 984              		.loc 1 266 5 is_stmt 1 view .LVU298
 266:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 985              		.loc 1 266 8 is_stmt 0 view .LVU299
 986 0036 022C     		cmp	r4, #2
 268:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 987              		.loc 1 268 7 is_stmt 1 view .LVU300
 277:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 988              		.loc 1 277 5 is_stmt 0 view .LVU301
 989 0038 1048     		ldr	r0, .L79+4
 990              	.LVL71:
 268:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 991              		.loc 1 268 31 view .LVU302
 992 003a 0CBF     		ite	eq
 993 003c 0423     		moveq	r3, #4
 272:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 994              		.loc 1 272 7 is_stmt 1 view .LVU303
 272:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 995              		.loc 1 272 31 is_stmt 0 view .LVU304
 996 003e 0323     		movne	r3, #3
 997 0040 2B72     		strb	r3, [r5, #8]
 274:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 998              		.loc 1 274 5 is_stmt 1 view .LVU305
 274:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 999              		.loc 1 274 20 is_stmt 0 view .LVU306
 1000 0042 EE60     		str	r6, [r5, #12]
 277:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1001              		.loc 1 277 5 is_stmt 1 view .LVU307
 277:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1002              		.loc 1 277 5 view .LVU308
 277:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1003              		.loc 1 277 5 view .LVU309
 277:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1004              		.loc 1 277 5 view .LVU310
 1005 0044 4569     		ldr	r5, [r0, #20]
 1006 0046 45F04075 		orr	r5, r5, #50331648
 1007 004a 4561     		str	r5, [r0, #20]
 279:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 1008              		.loc 1 279 5 view .LVU311
 279:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 1009              		.loc 1 279 8 is_stmt 0 view .LVU312
 1010 004c 54B9     		cbnz	r4, .L76
 282:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 1011              		.loc 1 282 7 is_stmt 1 view .LVU313
 1012              	.LVL72:
 1013              	.LBB32:
 1014              	.LBI32:
 700:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** {
 1015              		.loc 1 700 13 view .LVU314
 1016              	.LBB33:
 703:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1017              		.loc 1 703 3 view .LVU315
 706:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1018              		.loc 1 706 3 view .LVU316
 1019 004e 4469     		ldr	r4, [r0, #20]
 1020              	.LVL73:
 706:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1021              		.loc 1 706 3 is_stmt 0 view .LVU317
 1022 0050 44F00104 		orr	r4, r4, #1
 1023 0054 4461     		str	r4, [r0, #20]
 709:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1024              		.loc 1 709 3 is_stmt 1 view .LVU318
 709:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1025              		.loc 1 709 26 is_stmt 0 view .LVU319
 1026 0056 C6F80080 		str	r8, [r6]
 713:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1027              		.loc 1 713 3 is_stmt 1 view .LVU320
 1028              	.LBB34:
 1029              	.LBI34:
 866:../../..\CubeG4\include/cmsis_gcc.h **** {
 1030              		.loc 2 866 27 view .LVU321
 1031              	.LBB35:
 1032              		.loc 2 868 3 view .LVU322
 1033              		.syntax unified
 1034              	@ 868 "../../..\CubeG4\include/cmsis_gcc.h" 1
 1035 005a BFF36F8F 		isb 0xF
 1036              	@ 0 "" 2
 1037              		.thumb
 1038              		.syntax unified
 1039              	.LBE35:
 1040              	.LBE34:
 716:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 1041              		.loc 1 716 3 view .LVU323
 716:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 1042              		.loc 1 716 33 is_stmt 0 view .LVU324
 1043 005e C6F80490 		str	r9, [r6, #4]
 1044 0062 E5E7     		b	.L72
 1045              	.LVL74:
 1046              	.L76:
 716:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 1047              		.loc 1 716 33 view .LVU325
 1048              	.LBE33:
 1049              	.LBE32:
 284:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 1050              		.loc 1 284 10 is_stmt 1 view .LVU326
 284:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 1051              		.loc 1 284 54 is_stmt 0 view .LVU327
 1052 0064 013C     		subs	r4, r4, #1
 1053              	.LVL75:
 284:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     {
 1054              		.loc 1 284 13 view .LVU328
 1055 0066 012C     		cmp	r4, #1
 1056 0068 E2D8     		bhi	.L72
 287:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****     }
 1057              		.loc 1 287 7 is_stmt 1 view .LVU329
 1058 006a 4146     		mov	r1, r8
 1059 006c 3046     		mov	r0, r6
 1060 006e FFF7FEFF 		bl	FLASH_Program_Fast
 1061              	.LVL76:
 1062 0072 DDE7     		b	.L72
 1063              	.LVL77:
 1064              	.L77:
 250:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1065              		.loc 1 250 3 is_stmt 0 view .LVU330
 1066 0074 0227     		movs	r7, #2
 1067 0076 DBE7     		b	.L72
 1068              	.L80:
 1069              		.align	2
 1070              	.L79:
 1071 0078 00000000 		.word	.LANCHOR0
 1072 007c 00200240 		.word	1073881088
 1073              		.cfi_endproc
 1074              	.LFE326:
 1076              		.section	.text.HAL_FLASH_OB_Launch,"ax",%progbits
 1077              		.align	1
 1078              		.global	HAL_FLASH_OB_Launch
 1079              		.syntax unified
 1080              		.thumb
 1081              		.thumb_func
 1082              		.fpu fpv4-sp-d16
 1084              	HAL_FLASH_OB_Launch:
 1085              	.LFB334:
 582:../../..\CubeG4\src/stm32g4xx_hal_flash.c ****   /* Set the bit to force the option byte reloading */
 1086              		.loc 1 582 1 is_stmt 1 view -0
 1087              		.cfi_startproc
 1088              		@ args = 0, pretend = 0, frame = 0
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090              		@ link register save eliminated.
 584:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** 
 1091              		.loc 1 584 3 view .LVU332
 1092 0000 044A     		ldr	r2, .L82
 1093 0002 5369     		ldr	r3, [r2, #20]
 1094 0004 43F00063 		orr	r3, r3, #134217728
 1095 0008 5361     		str	r3, [r2, #20]
 587:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 1096              		.loc 1 587 3 view .LVU333
 587:../../..\CubeG4\src/stm32g4xx_hal_flash.c **** }
 1097              		.loc 1 587 11 is_stmt 0 view .LVU334
 1098 000a 4FF47A70 		mov	r0, #1000
 1099 000e FFF7FEBF 		b	FLASH_WaitForLastOperation
 1100              	.LVL78:
 1101              	.L83:
 1102 0012 00BF     		.align	2
 1103              	.L82:
 1104 0014 00200240 		.word	1073881088
 1105              		.cfi_endproc
 1106              	.LFE334:
 1108              		.global	pFlash
 1109              		.section	.data.pFlash,"aw"
 1110              		.align	2
 1111              		.set	.LANCHOR0,. + 0
 1114              	pFlash:
 1115 0000 00       		.byte	0
 1116 0001 000000   		.space	3
 1117 0004 00000000 		.word	0
 1118 0008 00       		.byte	0
 1119 0009 000000   		.space	3
 1120 000c 00000000 		.word	0
 1121 0010 01000000 		.word	1
 1122 0014 00000000 		.word	0
 1123 0018 00000000 		.word	0
 1124 001c 00       		.byte	0
 1125 001d 000000   		.space	3
 1126              		.text
 1127              	.Letext0:
 1128              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1129              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1130              		.file 5 "../../..\\CubeG4\\include/core_cm4.h"
 1131              		.file 6 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 1132              		.file 7 "../../..\\CubeG4\\include/stm32g431xx.h"
 1133              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 1134              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 1135              		.file 10 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
 1136              		.file 11 "../../..\\CubeG4\\include/stm32g4xx_hal_flash_ex.h"
