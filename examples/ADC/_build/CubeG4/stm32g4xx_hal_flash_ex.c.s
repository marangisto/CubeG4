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
  13              		.file	"stm32g4xx_hal_flash_ex.c"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text.FLASH_MassErase,"ax",%progbits
  18              		.align	1
  19              		.arch armv7e-m
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  25              	FLASH_MassErase:
  26              	.LVL0:
  27              	.LFB332:
  28              		.file 1 "../../..\\CubeG4\\src\\stm32g4xx_hal_flash_ex.c"
   1:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
   2:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   ******************************************************************************
   3:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @file    stm32g4xx_hal_flash_ex.c
   4:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @author  MCD Application Team
   5:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief   Extended FLASH HAL module driver.
   6:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *          This file provides firmware functions to manage the following
   7:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *          functionalities of the FLASH extended peripheral:
   8:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *           + Extended programming operations functions
   9:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *
  10:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   @verbatim
  11:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   ==============================================================================
  12:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****                    ##### Flash Extended features #####
  13:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   ==============================================================================
  14:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  15:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   [..] Comparing to other previous devices, the FLASH interface for STM32G4xx
  16:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****        devices contains the following additional features
  17:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  18:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****        (+) Capacity up to 512 Kbytes with dual bank architecture supporting read-while-write
  19:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****            capability (RWW)
  20:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****        (+) Dual bank 64-bits memory organization with possibility of single bank 128-bits
  21:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****        (+) Protected areas including WRP, PCROP and Securable memory
  22:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  23:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****                         ##### How to use this driver #####
  24:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   ==============================================================================
  25:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   [..] This driver provides functions to configure and program the FLASH memory
  26:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****        of all STM32G4xx devices. It includes
  27:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (#) Flash Memory Erase functions:
  28:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****            (++) Lock and Unlock the FLASH interface using HAL_FLASH_Unlock() and
  29:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****                 HAL_FLASH_Lock() functions
  30:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****            (++) Erase function: Erase pages, or mass erase banks
  31:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****            (++) There are two modes of erase :
  32:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****              (+++) Polling Mode using HAL_FLASHEx_Erase()
  33:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****              (+++) Interrupt Mode using HAL_FLASHEx_Erase_IT()
  34:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  35:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (#) Option Bytes Programming function: Use HAL_FLASHEx_OBProgram() to:
  36:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Configure the write protection areas (WRP)
  37:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Set the Read protection Level (RDP)
  38:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Program the user Option Bytes
  39:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Configure the Proprietary Code ReadOut protection areas (PCROP)
  40:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Configure the Securable memory areas
  41:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Configure the Boot Lock
  42:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  43:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (#) Get Option Bytes Configuration function: Use HAL_FLASHEx_OBGetConfig() to:
  44:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Get the configuration of write protection areas (WRP)
  45:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Get the level of read protection (RDP)
  46:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Get the value of the user Option Bytes
  47:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Get the configuration of Proprietary Code ReadOut Protection areas (PCROP)
  48:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Get the configuration of Securable memory areas
  49:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Get the status of Boot Lock
  50:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  51:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (#) Activation of Securable memory area: Use HAL_FLASHEx_EnableSecMemProtection()
  52:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         (++) Deny the access to securable memory area
  53:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  54:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (#) Enable or disable debugger: Use HAL_FLASHEx_EnableDebugger() or
  55:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****           HAL_FLASHEx_DisableDebugger()
  56:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  57:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   @endverbatim
  58:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   ******************************************************************************
  59:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @attention
  60:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *
  61:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2019 STMicroelectronics</center></h2>
  62:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *
  63:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * This software component is licensed by ST under BSD 3-Clause license,
  64:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * the "License"; You may not use this file except in compliance with the
  65:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * License. You may obtain a copy of the License at:
  66:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *                       opensource.org/licenses/BSD-3-Clause
  67:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *
  68:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   ******************************************************************************
  69:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
  70:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  71:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Includes ------------------------------------------------------------------*/
  72:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #include "stm32g4xx_hal.h"
  73:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  74:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /** @addtogroup STM32G4xx_HAL_Driver
  75:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @{
  76:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
  77:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  78:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /** @defgroup FLASHEx FLASHEx
  79:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief FLASH Extended HAL module driver
  80:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @{
  81:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
  82:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  83:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #ifdef HAL_FLASH_MODULE_ENABLED
  84:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  85:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Private typedef -----------------------------------------------------------*/
  86:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Private define ------------------------------------------------------------*/
  87:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Private macro -------------------------------------------------------------*/
  88:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Private variables ---------------------------------------------------------*/
  89:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Private function prototypes -----------------------------------------------*/
  90:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Private_Functions FLASHEx Private Functions
  91:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @{
  92:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
  93:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void              FLASH_MassErase(uint32_t Banks);
  94:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_WRPConfig(uint32_t WRPArea, uint32_t WRPStartOffset, uint32_t WRD
  95:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_RDPConfig(uint32_t RDPLevel);
  96:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_UserConfig(uint32_t UserType, uint32_t UserConfig);
  97:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_PCROPConfig(uint32_t PCROPConfig, uint32_t PCROPStartAddr, uint32
  98:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void              FLASH_OB_GetWRP(uint32_t WRPArea, uint32_t *WRPStartOffset, uint32_t *WRDP
  99:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static uint32_t          FLASH_OB_GetRDP(void);
 100:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static uint32_t          FLASH_OB_GetUser(void);
 101:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void              FLASH_OB_GetPCROP(uint32_t *PCROPConfig, uint32_t *PCROPStartAddr, uint32_
 102:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_SecMemConfig(uint32_t SecMemBank, uint32_t SecMemSize);
 103:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void              FLASH_OB_GetSecMem(uint32_t SecMemBank, uint32_t *SecMemSize);
 104:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_BootLockConfig(uint32_t BootLockConfig);
 105:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static uint32_t          FLASH_OB_GetBootLock(void);
 106:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 107:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 108:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @}
 109:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 110:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 111:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Exported functions -------------------------------------------------------*/
 112:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Exported_Functions FLASHEx Exported Functions
 113:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @{
 114:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 115:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 116:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /** @defgroup FLASHEx_Exported_Functions_Group1 Extended IO operation functions
 117:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief   Extended IO operation functions
 118:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *
 119:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** @verbatim
 120:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****  ===============================================================================
 121:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****                 ##### Extended programming operation functions #####
 122:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****  ===============================================================================
 123:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     [..]
 124:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     This subsection provides a set of functions allowing to manage the Extended FLASH
 125:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     programming operations Operations.
 126:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 127:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** @endverbatim
 128:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @{
 129:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 130:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 131:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Perform a mass erase or erase the specified FLASH memory pages.
 132:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[in]  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
 133:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         contains the configuration information for the erasing.
 134:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[out]  PageError pointer to variable that contains the configuration
 135:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         information on faulty page in case of error (0xFFFFFFFF means that all
 136:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         the pages have been correctly erased).
 137:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
 138:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 139:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *PageError)
 140:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 141:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 142:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t page_index;
 143:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 144:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 145:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
 146:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 147:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Process Locked */
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   __HAL_LOCK(&pFlash);
 149:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 150:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 151:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 152:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 153:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (status == HAL_OK)
 154:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 155:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 156:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 157:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Deactivate the cache if they are activated to avoid data misbehavior */
 158:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (READ_BIT(FLASH->ACR, FLASH_ACR_ICEN) != 0U)
 159:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 160:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Disable instruction cache  */
 161:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       __HAL_FLASH_INSTRUCTION_CACHE_DISABLE();
 162:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 163:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       if (READ_BIT(FLASH->ACR, FLASH_ACR_DCEN) != 0U)
 164:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 165:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         /* Disable data cache  */
 166:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         __HAL_FLASH_DATA_CACHE_DISABLE();
 167:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         pFlash.CacheToReactivate = FLASH_CACHE_ICACHE_DCACHE_ENABLED;
 168:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 169:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       else
 170:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 171:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         pFlash.CacheToReactivate = FLASH_CACHE_ICACHE_ENABLED;
 172:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 173:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 174:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else if (READ_BIT(FLASH->ACR, FLASH_ACR_DCEN) != 0U)
 175:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 176:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Disable data cache  */
 177:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       __HAL_FLASH_DATA_CACHE_DISABLE();
 178:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       pFlash.CacheToReactivate = FLASH_CACHE_DCACHE_ENABLED;
 179:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 180:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
 181:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 182:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       pFlash.CacheToReactivate = FLASH_CACHE_DISABLED;
 183:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 184:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 185:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (pEraseInit->TypeErase == FLASH_TYPEERASE_MASSERASE)
 186:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 187:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Mass erase to be done */
 188:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       FLASH_MassErase(pEraseInit->Banks);
 189:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 190:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Wait for last operation to be completed */
 191:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 192:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 193:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 194:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* If the erase operation is completed, disable the MER1 and MER2 Bits */
 195:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       CLEAR_BIT(FLASH->CR, (FLASH_CR_MER1 | FLASH_CR_MER2));
 196:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #else
 197:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* If the erase operation is completed, disable the MER1 Bit */
 198:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       CLEAR_BIT(FLASH->CR, (FLASH_CR_MER1));
 199:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 200:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 201:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
 202:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 203:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /*Initialization of PageError variable*/
 204:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PageError = 0xFFFFFFFFU;
 205:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       for (page_index = pEraseInit->Page; page_index < (pEraseInit->Page + pEraseInit->NbPages); pa
 207:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 208:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         FLASH_PageErase(page_index, pEraseInit->Banks);
 209:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 210:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         /* Wait for last operation to be completed */
 211:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 212:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 213:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         /* If the erase operation is completed, disable the PER Bit */
 214:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         CLEAR_BIT(FLASH->CR, (FLASH_CR_PER | FLASH_CR_PNB));
 215:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 216:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         if (status != HAL_OK)
 217:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         {
 218:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****           /* In case of error, stop erase procedure and return the faulty page */
 219:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****           *PageError = page_index;
 220:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****           break;
 221:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         }
 222:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 223:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 224:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 225:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Flush the caches to be sure of the data consistency */
 226:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_FlushCaches();
 227:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 228:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 229:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Process Unlocked */
 230:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   __HAL_UNLOCK(&pFlash);
 231:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 232:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 233:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 234:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 235:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 236:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Perform a mass erase or erase the specified FLASH memory pages with interrupt enabled.
 237:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
 238:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         contains the configuration information for the erasing.
 239:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
 240:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 241:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit)
 242:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 243:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 244:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 245:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Process Locked */
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   __HAL_LOCK(&pFlash);
 247:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 248:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 249:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
 250:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 252:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 253:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Deactivate the cache if they are activated to avoid data misbehavior */
 254:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (READ_BIT(FLASH->ACR, FLASH_ACR_ICEN) != 0U)
 255:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 256:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Disable instruction cache  */
 257:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     __HAL_FLASH_INSTRUCTION_CACHE_DISABLE();
 258:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 259:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (READ_BIT(FLASH->ACR, FLASH_ACR_DCEN) != 0U)
 260:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 261:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Disable data cache  */
 262:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       __HAL_FLASH_DATA_CACHE_DISABLE();
 263:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       pFlash.CacheToReactivate = FLASH_CACHE_ICACHE_DCACHE_ENABLED;
 264:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 265:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
 266:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 267:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       pFlash.CacheToReactivate = FLASH_CACHE_ICACHE_ENABLED;
 268:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 269:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 270:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else if (READ_BIT(FLASH->ACR, FLASH_ACR_DCEN) != 0U)
 271:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 272:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Disable data cache  */
 273:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     __HAL_FLASH_DATA_CACHE_DISABLE();
 274:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.CacheToReactivate = FLASH_CACHE_DCACHE_ENABLED;
 275:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 276:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
 277:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 278:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.CacheToReactivate = FLASH_CACHE_DISABLED;
 279:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 280:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 281:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Enable End of Operation and Error interrupts */
 282:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP | FLASH_IT_OPERR);
 283:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 284:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pFlash.Bank = pEraseInit->Banks;
 285:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 286:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (pEraseInit->TypeErase == FLASH_TYPEERASE_MASSERASE)
 287:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 288:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Mass erase to be done */
 289:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_MASS_ERASE;
 290:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_MassErase(pEraseInit->Banks);
 291:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 292:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
 293:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 294:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Erase by page to be done */
 295:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.ProcedureOnGoing = FLASH_PROC_PAGE_ERASE;
 296:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.NbPagesToErase = pEraseInit->NbPages;
 297:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.Page = pEraseInit->Page;
 298:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 299:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /*Erase 1st page and wait for IT */
 300:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_PageErase(pEraseInit->Page, pEraseInit->Banks);
 301:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 302:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 303:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 304:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 305:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 306:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 307:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Program Option bytes.
 308:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
 309:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         contains the configuration information for the programming.
 310:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   To configure any option bytes, the option lock bit OPTLOCK must be
 311:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         cleared with the call of HAL_FLASH_OB_Unlock() function.
 312:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   New option bytes configuration will be taken into account in two cases:
 313:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after an option bytes launch through the call of HAL_FLASH_OB_Launch()
 314:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after a power reset (BOR reset or exit from Standby/Shutdown modes)
 315:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
 316:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 317:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit)
 318:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 319:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 320:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 321:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 322:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OPTIONBYTE(pOBInit->OptionType));
 323:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 324:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Process Locked */
 325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   __HAL_LOCK(&pFlash);
 326:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 327:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
 328:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 329:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Write protection configuration */
 330:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->OptionType & OPTIONBYTE_WRP) != 0U)
 331:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 332:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure of Write protection on the selected area */
 333:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (FLASH_OB_WRPConfig(pOBInit->WRPArea, pOBInit->WRPStartOffset, pOBInit->WRPEndOffset) != HAL
 334:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 335:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       status = HAL_ERROR;
 336:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 337:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 338:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 339:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Read protection configuration */
 340:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->OptionType & OPTIONBYTE_RDP) != 0U)
 341:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 342:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the Read protection level */
 343:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (FLASH_OB_RDPConfig(pOBInit->RDPLevel) != HAL_OK)
 344:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 345:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       status = HAL_ERROR;
 346:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 347:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 348:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 349:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* User Configuration */
 350:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->OptionType & OPTIONBYTE_USER) != 0U)
 351:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 352:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the user option bytes */
 353:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (FLASH_OB_UserConfig(pOBInit->USERType, pOBInit->USERConfig) != HAL_OK)
 354:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 355:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       status = HAL_ERROR;
 356:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 357:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 358:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 359:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* PCROP Configuration */
 360:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->OptionType & OPTIONBYTE_PCROP) != 0U)
 361:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 362:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (pOBInit->PCROPStartAddr != pOBInit->PCROPEndAddr)
 363:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 364:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Configure the Proprietary code readout protection */
 365:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       if (FLASH_OB_PCROPConfig(pOBInit->PCROPConfig, pOBInit->PCROPStartAddr, pOBInit->PCROPEndAddr
 366:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 367:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         status = HAL_ERROR;
 368:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 369:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 370:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 371:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 372:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Securable memory Configuration */
 373:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->OptionType & OPTIONBYTE_SEC) != 0U)
 374:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 375:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the securable memory area */
 376:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (FLASH_OB_SecMemConfig(pOBInit->SecBank, pOBInit->SecSize) != HAL_OK)
 377:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 378:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       status = HAL_ERROR;
 379:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 380:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 381:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 382:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Boot Entry Point Configuration */
 383:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->OptionType & OPTIONBYTE_BOOT_LOCK) != 0U)
 384:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 385:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the boot unique entry point option */
 386:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (FLASH_OB_BootLockConfig(pOBInit->BootEntryPoint) != HAL_OK)
 387:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 388:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       status = HAL_ERROR;
 389:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 390:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 391:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 392:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Process Unlocked */
 393:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   __HAL_UNLOCK(&pFlash);
 394:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 395:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 396:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 397:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 398:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 399:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Get the Option bytes configuration.
 400:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that contains the
 401:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         configuration information.
 402:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   The fields pOBInit->WRPArea and pOBInit->PCROPConfig should indicate
 403:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         which area is requested for the WRP and PCROP, else no information will be returned.
 404:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
 405:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 406:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** void HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit)
 407:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 408:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pOBInit->OptionType = (OPTIONBYTE_RDP | OPTIONBYTE_USER);
 409:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 410:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 411:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->WRPArea == OB_WRPAREA_BANK1_AREAA) || (pOBInit->WRPArea == OB_WRPAREA_BANK1_AREAB) 
 412:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (pOBInit->WRPArea == OB_WRPAREA_BANK2_AREAA) || (pOBInit->WRPArea == OB_WRPAREA_BANK2_AREAB))
 413:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #else
 414:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->WRPArea == OB_WRPAREA_BANK1_AREAA) || (pOBInit->WRPArea == OB_WRPAREA_BANK1_AREAB))
 415:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 416:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 417:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pOBInit->OptionType |= OPTIONBYTE_WRP;
 418:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Get write protection on the selected area */
 419:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_OB_GetWRP(pOBInit->WRPArea, &(pOBInit->WRPStartOffset), &(pOBInit->WRPEndOffset));
 420:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 421:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 422:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Get Read protection level */
 423:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pOBInit->RDPLevel = FLASH_OB_GetRDP();
 424:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 425:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Get the user option bytes */
 426:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pOBInit->USERConfig = FLASH_OB_GetUser();
 427:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 428:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 429:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->PCROPConfig == FLASH_BANK_1) || (pOBInit->PCROPConfig == FLASH_BANK_2))
 430:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #else
 431:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (pOBInit->PCROPConfig == FLASH_BANK_1)
 432:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 433:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 434:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pOBInit->OptionType |= OPTIONBYTE_PCROP;
 435:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Get the Proprietary code readout protection */
 436:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_OB_GetPCROP(&(pOBInit->PCROPConfig), &(pOBInit->PCROPStartAddr), &(pOBInit->PCROPEndAddr)
 437:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 438:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 439:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pOBInit->OptionType |= OPTIONBYTE_BOOT_LOCK;
 440:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 441:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Get the boot entry point */
 442:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pOBInit->BootEntryPoint = FLASH_OB_GetBootLock();
 443:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 444:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Get the securable memory area configuration */
 445:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 446:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((pOBInit->SecBank == FLASH_BANK_1) || (pOBInit->SecBank == FLASH_BANK_2))
 447:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #else
 448:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (pOBInit->SecBank == FLASH_BANK_1)
 449:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 450:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 451:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pOBInit->OptionType |= OPTIONBYTE_SEC;
 452:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_OB_GetSecMem(pOBInit->SecBank, &(pOBInit->SecSize));
 453:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 454:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 455:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 456:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 457:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Enable the FLASH Securable Memory protection.
 458:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  Bank: Bank to be protected
 459:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *          This parameter can be one of the following values:
 460:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_1: Bank1 to be protected
 461:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_2: Bank2 to be protected (*)
 462:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_BOTH: Bank1 and Bank2 to be protected (*)
 463:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
 464:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL Status
 465:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 466:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** HAL_StatusTypeDef HAL_FLASHEx_EnableSecMemProtection(uint32_t Bank)
 467:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 468:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 469:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (READ_BIT(FLASH->OPTR, FLASH_OPTR_DBANK) != 0U)
 470:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 471:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Check the parameters */
 472:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     assert_param(IS_FLASH_BANK(Bank));
 473:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 474:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable the Securable Memory Protection Bit for the bank 1 if requested */
 475:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((Bank & FLASH_BANK_1) != 0U)
 476:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 477:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_SEC_PROT1);
 478:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 479:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 480:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable the Securable Memory Protection Bit for the bank 2 if requested */
 481:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((Bank & FLASH_BANK_2) != 0U)
 482:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 483:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_SEC_PROT2);
 484:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 485:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 486:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
 487:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 488:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 489:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_SEC_PROT1);
 490:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 491:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 492:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return HAL_OK;
 493:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 494:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 495:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 496:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Enable Debugger.
 497:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   After calling this API, flash interface allow debugger intrusion.
 498:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
 499:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 500:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** void HAL_FLASHEx_EnableDebugger(void)
 501:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 502:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   FLASH->ACR |= FLASH_ACR_DBG_SWEN;
 503:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 504:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 505:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 506:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 507:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Disable Debugger.
 508:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   After calling this API, Debugger is disabled: it's no more possible to
 509:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         break, see CPU register, etc...
 510:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
 511:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 512:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** void HAL_FLASHEx_DisableDebugger(void)
 513:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 514:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   FLASH->ACR &= ~FLASH_ACR_DBG_SWEN;
 515:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 516:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 517:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 518:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @}
 519:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 520:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 521:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 522:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @}
 523:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 524:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 525:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /* Private functions ---------------------------------------------------------*/
 526:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 527:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /** @addtogroup FLASHEx_Private_Functions
 528:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @{
 529:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 530:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 531:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Mass erase of FLASH memory.
 532:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  Banks Banks to be erased.
 533:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be one of the following values:
 534:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_1: Bank1 to be erased
 535:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_2: Bank2 to be erased (*)
 536:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_BOTH: Bank1 and Bank2 to be erased (*)
 537:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
 538:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
 539:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 540:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void FLASH_MassErase(uint32_t Banks)
 541:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
  29              		.loc 1 541 1 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
 542:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 543:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (READ_BIT(FLASH->OPTR, FLASH_OPTR_DBANK) != 0U)
 544:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 545:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 546:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Check the parameters */
 547:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     assert_param(IS_FLASH_BANK(Banks));
  34              		.loc 1 547 5 view .LVU1
 548:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 549:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set the Mass Erase Bit for the bank 1 if requested */
 550:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((Banks & FLASH_BANK_1) != 0U)
  35              		.loc 1 550 5 view .LVU2
  36 0000 064B     		ldr	r3, .L6
 551:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 552:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_MER1);
  37              		.loc 1 552 7 view .LVU3
 550:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
  38              		.loc 1 550 8 is_stmt 0 view .LVU4
  39 0002 10F0010F 		tst	r0, #1
  40              		.loc 1 552 7 view .LVU5
  41 0006 1EBF     		ittt	ne
  42 0008 5A69     		ldrne	r2, [r3, #20]
  43 000a 42F00402 		orrne	r2, r2, #4
  44 000e 5A61     		strne	r2, [r3, #20]
 553:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 554:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 555:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 556:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set the Mass Erase Bit for the bank 2 if requested */
 557:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((Banks & FLASH_BANK_2) != 0U)
 558:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 559:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_MER2);
 560:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 561:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 562:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 563:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 564:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
 565:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 566:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, (FLASH_CR_MER1 | FLASH_CR_MER2));
 567:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 568:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 569:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 570:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Proceed to erase all sectors */
 571:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   SET_BIT(FLASH->CR, FLASH_CR_STRT);
  45              		.loc 1 571 3 is_stmt 1 view .LVU6
  46 0010 5A69     		ldr	r2, [r3, #20]
  47 0012 42F48032 		orr	r2, r2, #65536
  48 0016 5A61     		str	r2, [r3, #20]
 572:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
  49              		.loc 1 572 1 is_stmt 0 view .LVU7
  50 0018 7047     		bx	lr
  51              	.L7:
  52 001a 00BF     		.align	2
  53              	.L6:
  54 001c 00200240 		.word	1073881088
  55              		.cfi_endproc
  56              	.LFE332:
  58              		.section	.text.HAL_FLASHEx_OBProgram,"ax",%progbits
  59              		.align	1
  60              		.global	HAL_FLASHEx_OBProgram
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  66              	HAL_FLASHEx_OBProgram:
  67              	.LVL1:
  68              	.LFB327:
 318:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
  69              		.loc 1 318 1 is_stmt 1 view -0
  70              		.cfi_startproc
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
 319:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  73              		.loc 1 319 3 view .LVU9
 322:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  74              		.loc 1 322 3 view .LVU10
 325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  75              		.loc 1 325 3 view .LVU11
 325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  76              		.loc 1 325 3 view .LVU12
 318:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
  77              		.loc 1 318 1 is_stmt 0 view .LVU13
  78 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  79              		.cfi_def_cfa_offset 32
  80              		.cfi_offset 3, -32
  81              		.cfi_offset 4, -28
  82              		.cfi_offset 5, -24
  83              		.cfi_offset 6, -20
  84              		.cfi_offset 7, -16
  85              		.cfi_offset 8, -12
  86              		.cfi_offset 9, -8
  87              		.cfi_offset 14, -4
 325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  88              		.loc 1 325 3 view .LVU14
  89 0004 A04B     		ldr	r3, .L119
  90 0006 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  91 0008 012A     		cmp	r2, #1
 318:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
  92              		.loc 1 318 1 view .LVU15
  93 000a 0446     		mov	r4, r0
  94 000c 9846     		mov	r8, r3
 325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  95              		.loc 1 325 3 view .LVU16
  96 000e 00F03981 		beq	.L40
 325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
  97              		.loc 1 325 3 is_stmt 1 discriminator 2 view .LVU17
  98 0012 0127     		movs	r7, #1
  99 0014 1F70     		strb	r7, [r3]
 327:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 100              		.loc 1 327 3 discriminator 2 view .LVU18
 327:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 101              		.loc 1 327 20 is_stmt 0 discriminator 2 view .LVU19
 102 0016 0023     		movs	r3, #0
 103 0018 C8F80430 		str	r3, [r8, #4]
 330:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 104              		.loc 1 330 3 is_stmt 1 discriminator 2 view .LVU20
 330:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 105              		.loc 1 330 28 is_stmt 0 discriminator 2 view .LVU21
 106 001c 0368     		ldr	r3, [r0]
 330:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 107              		.loc 1 330 6 discriminator 2 view .LVU22
 108 001e 3B40     		ands	r3, r3, r7
 109 0020 00F02E81 		beq	.L41
 333:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 110              		.loc 1 333 5 is_stmt 1 view .LVU23
 333:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 111              		.loc 1 333 9 is_stmt 0 view .LVU24
 112 0024 D0E90195 		ldrd	r9, r5, [r0, #4]
 113 0028 C668     		ldr	r6, [r0, #12]
 114              	.LVL2:
 115              	.LBB18:
 116              	.LBI18:
 573:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 574:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 575:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Erase the specified FLASH memory page.
 576:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  Page FLASH page to erase.
 577:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter must be a value between 0 and (max number of pages in the bank - 1).
 578:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  Banks Bank where the page will be erased.
 579:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be one of the following values:
 580:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_1: Page in bank 1 to be erased
 581:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_2: Page in bank 2 to be erased (*)
 582:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
 583:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
 584:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 585:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** void FLASH_PageErase(uint32_t Page, uint32_t Banks)
 586:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 587:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 588:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_PAGE(Page));
 589:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 590:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 591:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (READ_BIT(FLASH->OPTR, FLASH_OPTR_DBANK) == 0U)
 592:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 593:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     CLEAR_BIT(FLASH->CR, FLASH_CR_BKER);
 594:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 595:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
 596:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 597:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     assert_param(IS_FLASH_BANK_EXCLUSIVE(Banks));
 598:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 599:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((Banks & FLASH_BANK_1) != 0U)
 600:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 601:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       CLEAR_BIT(FLASH->CR, FLASH_CR_BKER);
 602:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 603:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
 604:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 605:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       SET_BIT(FLASH->CR, FLASH_CR_BKER);
 606:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 607:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 608:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 609:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 610:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Proceed to erase the page */
 611:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   MODIFY_REG(FLASH->CR, FLASH_CR_PNB, ((Page & 0xFFU) << FLASH_CR_PNB_Pos));
 612:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   SET_BIT(FLASH->CR, FLASH_CR_PER);
 613:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   SET_BIT(FLASH->CR, FLASH_CR_STRT);
 614:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 615:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 616:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 617:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Flush the instruction and data caches.
 618:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
 619:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 620:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** void FLASH_FlushCaches(void)
 621:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 622:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   FLASH_CacheTypeDef cache = pFlash.CacheToReactivate;
 623:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 624:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Flush instruction cache  */
 625:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((cache == FLASH_CACHE_ICACHE_ENABLED) ||
 626:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (cache == FLASH_CACHE_ICACHE_DCACHE_ENABLED))
 627:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 628:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Reset instruction cache */
 629:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     __HAL_FLASH_INSTRUCTION_CACHE_RESET();
 630:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable instruction cache */
 631:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
 632:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 633:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 634:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Flush data cache */
 635:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((cache == FLASH_CACHE_DCACHE_ENABLED) ||
 636:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (cache == FLASH_CACHE_ICACHE_DCACHE_ENABLED))
 637:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 638:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Reset data cache */
 639:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     __HAL_FLASH_DATA_CACHE_RESET();
 640:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable data cache */
 641:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     __HAL_FLASH_DATA_CACHE_ENABLE();
 642:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 643:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 644:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Reset internal variable */
 645:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pFlash.CacheToReactivate = FLASH_CACHE_DISABLED;
 646:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 647:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 648:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 649:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Configure the write protection area into Option Bytes.
 650:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   When the memory read protection level is selected (RDP level = 1),
 651:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         it is not possible to program or erase Flash memory if the CPU debug
 652:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         features are connected (JTAG or single wire) or boot code is being
 653:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         executed from RAM or System flash, even if WRP is not activated.
 654:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   To configure any option bytes, the option lock bit OPTLOCK must be
 655:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         cleared with the call of HAL_FLASH_OB_Unlock() function.
 656:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   New option bytes configuration will be taken into account in two cases:
 657:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after an option bytes launch through the call of HAL_FLASH_OB_Launch()
 658:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after a power reset (BOR reset or exit from Standby/Shutdown modes)
 659:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  WRPArea specifies the area to be configured.
 660:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be one of the following values:
 661:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK1_AREAA: Flash Bank 1 Area A
 662:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK1_AREAB: Flash Bank 1 Area B
 663:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK2_AREAA: Flash Bank 2 Area A (*)
 664:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK2_AREAB: Flash Bank 2 Area B (*)
 665:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
 666:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  WRPStartOffset specifies the start page of the write protected area.
 667:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be page number between 0 and (max number of pages in the bank - 1).
 668:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  WRDPEndOffset specifies the end page of the write protected area.
 669:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be page number between WRPStartOffset and (max number of pages in th
 670:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
 671:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 672:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_WRPConfig(uint32_t WRPArea, uint32_t WRPStartOffset, uint32_t WRD
 117              		.loc 1 672 26 is_stmt 1 view .LVU25
 118              	.LBB19:
 673:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 674:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 119              		.loc 1 674 3 view .LVU26
 675:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 676:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 677:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_WRPAREA(WRPArea));
 120              		.loc 1 677 3 view .LVU27
 678:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_PAGE(WRPStartOffset));
 121              		.loc 1 678 3 view .LVU28
 679:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_PAGE(WRDPEndOffset));
 122              		.loc 1 679 3 view .LVU29
 680:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 681:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 682:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 123              		.loc 1 682 3 view .LVU30
 124              		.loc 1 682 12 is_stmt 0 view .LVU31
 125 002a 4FF47A70 		mov	r0, #1000
 126              	.LVL3:
 127              		.loc 1 682 12 view .LVU32
 128 002e FFF7FEFF 		bl	FLASH_WaitForLastOperation
 129              	.LVL4:
 683:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 684:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (status == HAL_OK)
 130              		.loc 1 684 3 is_stmt 1 view .LVU33
 131              		.loc 1 684 6 is_stmt 0 view .LVU34
 132 0032 90B9     		cbnz	r0, .L10
 685:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 686:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the write protected area */
 687:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (WRPArea == OB_WRPAREA_BANK1_AREAA)
 133              		.loc 1 687 5 is_stmt 1 view .LVU35
 134 0034 954B     		ldr	r3, .L119+4
 135              		.loc 1 687 8 is_stmt 0 view .LVU36
 136 0036 B9F1000F 		cmp	r9, #0
 137 003a 40F01A81 		bne	.L11
 688:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 689:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       FLASH->WRP1AR = ((WRDPEndOffset << FLASH_WRP1AR_WRP1A_END_Pos) | WRPStartOffset);
 138              		.loc 1 689 7 is_stmt 1 view .LVU37
 139              		.loc 1 689 70 is_stmt 0 view .LVU38
 140 003e 45EA0645 		orr	r5, r5, r6, lsl #16
 141              	.LVL5:
 142              		.loc 1 689 21 view .LVU39
 143 0042 DD62     		str	r5, [r3, #44]
 144              	.L12:
 690:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 691:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else if (WRPArea == OB_WRPAREA_BANK1_AREAB)
 692:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 693:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       FLASH->WRP1BR = ((WRDPEndOffset << FLASH_WRP1BR_WRP1B_END_Pos) | WRPStartOffset);
 694:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 695:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 696:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else if (WRPArea == OB_WRPAREA_BANK2_AREAA)
 697:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 698:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       FLASH->WRP2AR = ((WRDPEndOffset << FLASH_WRP2AR_WRP2A_END_Pos) | WRPStartOffset);
 699:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 700:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else if (WRPArea == OB_WRPAREA_BANK2_AREAB)
 701:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 702:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       FLASH->WRP2BR = ((WRDPEndOffset << FLASH_WRP2BR_WRP2B_END_Pos) | WRPStartOffset);
 703:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 704:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 705:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
 706:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 707:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Nothing to do */
 708:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 145              		.loc 1 708 5 is_stmt 1 view .LVU40
 709:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 710:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set OPTSTRT Bit */
 711:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTSTRT);
 146              		.loc 1 711 5 view .LVU41
 147 0044 5A69     		ldr	r2, [r3, #20]
 148 0046 42F40032 		orr	r2, r2, #131072
 149 004a 5A61     		str	r2, [r3, #20]
 712:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 713:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
 714:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 150              		.loc 1 714 5 view .LVU42
 151              		.loc 1 714 14 is_stmt 0 view .LVU43
 152 004c 4FF47A70 		mov	r0, #1000
 153              	.LVL6:
 154              		.loc 1 714 14 view .LVU44
 155 0050 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 156              	.LVL7:
 715:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 716:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 717:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 157              		.loc 1 717 3 is_stmt 1 view .LVU45
 158              		.loc 1 717 3 is_stmt 0 view .LVU46
 159              	.LBE19:
 160              	.LBE18:
 319:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 161              		.loc 1 319 21 view .LVU47
 162 0054 071C     		adds	r7, r0, #0
 163 0056 18BF     		it	ne
 164 0058 0127     		movne	r7, #1
 165              	.L10:
 166              	.LVL8:
 340:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 167              		.loc 1 340 3 is_stmt 1 view .LVU48
 340:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 168              		.loc 1 340 28 is_stmt 0 view .LVU49
 169 005a 2368     		ldr	r3, [r4]
 340:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 170              		.loc 1 340 6 view .LVU50
 171 005c 9D07     		lsls	r5, r3, #30
 172 005e 15D5     		bpl	.L13
 343:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 173              		.loc 1 343 5 is_stmt 1 view .LVU51
 174              	.LBB21:
 175              	.LBB22:
 718:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 719:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 720:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 721:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Set the read protection level into Option Bytes.
 722:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   To configure any option bytes, the option lock bit OPTLOCK must be
 723:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         cleared with the call of HAL_FLASH_OB_Unlock() function.
 724:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   New option bytes configuration will be taken into account in two cases:
 725:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after an option bytes launch through the call of HAL_FLASH_OB_Launch()
 726:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after a power reset (BOR reset or exit from Standby/Shutdown modes)
 727:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   !!! Warning : When enabling OB_RDP level 2 it's no more possible
 728:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         to go back to level 1 or 0 !!!
 729:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  RDPLevel specifies the read protection level.
 730:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be one of the following values:
 731:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_RDP_LEVEL_0: No protection
 732:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_RDP_LEVEL_1: Memory Read protection
 733:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_RDP_LEVEL_2: Full chip protection
 734:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *
 735:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
 736:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 737:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_RDPConfig(uint32_t RDPLevel)
 738:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 739:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 740:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 741:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 742:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_RDP_LEVEL(RDPLevel));
 743:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 744:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 745:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 176              		.loc 1 745 12 is_stmt 0 view .LVU52
 177 0060 4FF47A70 		mov	r0, #1000
 178              	.LBE22:
 179              	.LBE21:
 343:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 180              		.loc 1 343 9 view .LVU53
 181 0064 2569     		ldr	r5, [r4, #16]
 182              	.LVL9:
 183              	.LBB24:
 184              	.LBI21:
 737:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 185              		.loc 1 737 26 is_stmt 1 view .LVU54
 186              	.LBB23:
 739:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 187              		.loc 1 739 3 view .LVU55
 742:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 188              		.loc 1 742 3 view .LVU56
 189              		.loc 1 745 3 view .LVU57
 190              		.loc 1 745 12 is_stmt 0 view .LVU58
 191 0066 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 192              	.LVL10:
 746:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 747:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (status == HAL_OK)
 193              		.loc 1 747 3 is_stmt 1 view .LVU59
 194              		.loc 1 747 6 is_stmt 0 view .LVU60
 195 006a 70B9     		cbnz	r0, .L14
 748:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 749:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the RDP level in the option bytes register */
 750:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     MODIFY_REG(FLASH->OPTR, FLASH_OPTR_RDP, RDPLevel);
 196              		.loc 1 750 5 is_stmt 1 view .LVU61
 197 006c 874A     		ldr	r2, .L119+4
 198 006e 136A     		ldr	r3, [r2, #32]
 199 0070 23F0FF03 		bic	r3, r3, #255
 200 0074 2B43     		orrs	r3, r3, r5
 201 0076 1362     		str	r3, [r2, #32]
 751:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 752:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set OPTSTRT Bit */
 753:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTSTRT);
 202              		.loc 1 753 5 view .LVU62
 203 0078 5369     		ldr	r3, [r2, #20]
 204 007a 43F40033 		orr	r3, r3, #131072
 205 007e 5361     		str	r3, [r2, #20]
 754:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 755:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
 756:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 206              		.loc 1 756 5 view .LVU63
 207              		.loc 1 756 14 is_stmt 0 view .LVU64
 208 0080 4FF47A70 		mov	r0, #1000
 209              	.LVL11:
 210              		.loc 1 756 14 view .LVU65
 211 0084 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 212              	.LVL12:
 757:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 758:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 759:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 213              		.loc 1 759 3 is_stmt 1 view .LVU66
 214              		.loc 1 759 3 is_stmt 0 view .LVU67
 215              	.LBE23:
 216              	.LBE24:
 343:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 217              		.loc 1 343 8 view .LVU68
 218 0088 00B1     		cbz	r0, .L13
 219              	.L14:
 345:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 220              		.loc 1 345 7 is_stmt 1 view .LVU69
 221              	.LVL13:
 345:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 222              		.loc 1 345 14 is_stmt 0 view .LVU70
 223 008a 0127     		movs	r7, #1
 224              	.LVL14:
 225              	.L13:
 350:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 226              		.loc 1 350 3 is_stmt 1 view .LVU71
 350:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 227              		.loc 1 350 28 is_stmt 0 view .LVU72
 228 008c 2368     		ldr	r3, [r4]
 350:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 229              		.loc 1 350 6 view .LVU73
 230 008e 5807     		lsls	r0, r3, #29
 231 0090 40F18280 		bpl	.L15
 353:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 232              		.loc 1 353 5 is_stmt 1 view .LVU74
 233              	.LBB25:
 234              	.LBB26:
 760:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 761:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 762:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 763:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Program the FLASH User Option Bytes.
 764:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   To configure any option bytes, the option lock bit OPTLOCK must be
 765:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         cleared with the call of HAL_FLASH_OB_Unlock() function.
 766:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   New option bytes configuration will be taken into account in two cases:
 767:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after an option bytes launch through the call of HAL_FLASH_OB_Launch()
 768:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after a power reset (BOR reset or exit from Standby/Shutdown modes)
 769:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  UserType The FLASH User Option Bytes to be modified.
 770:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be a combination of @ref FLASH_OB_USER_Type.
 771:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  UserConfig The selected User Option Bytes values:
 772:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be a combination of @ref FLASH_OB_USER_BOR_LEVEL,
 773:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_nRST_STOP, @ref FLASH_OB_USER_nRST_STANDBY ,
 774:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_nRST_SHUTDOWN, @ref FLASH_OB_USER_IWDG_SW,
 775:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_IWDG_STOP, @ref FLASH_OB_USER_IWDG_STANDBY,
 776:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_WWDG_SW, @ref FLASH_OB_USER_WWDG_SW,
 777:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_BFB2 (*), @ref FLASH_OB_USER_nBOOT1,
 778:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_SRAM_PE, @ref FLASH_OB_USER_CCMSRAM_RST,
 779:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_nSWBOOT0, @ref FLASH_OB_USER_nBOOT0,
 780:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_NRST_MODE, @ref FLASH_OB_USER_INTERNAL_RESET_HOLDER
 781:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
 782:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
 783:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 784:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_UserConfig(uint32_t UserType, uint32_t UserConfig)
 785:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 786:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t optr_reg_val = 0;
 787:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t optr_reg_mask = 0;
 788:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 789:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 790:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 791:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_USER_TYPE(UserType));
 792:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 793:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
 794:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 235              		.loc 1 794 12 is_stmt 0 view .LVU75
 236 0094 4FF47A70 		mov	r0, #1000
 237              	.LBE26:
 238              	.LBE25:
 353:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 239              		.loc 1 353 9 view .LVU76
 240 0098 D4E90565 		ldrd	r6, r5, [r4, #20]
 241              	.LVL15:
 242              	.LBB28:
 243              	.LBI25:
 784:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 244              		.loc 1 784 26 is_stmt 1 view .LVU77
 245              	.LBB27:
 786:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t optr_reg_mask = 0;
 246              		.loc 1 786 3 view .LVU78
 787:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 247              		.loc 1 787 3 view .LVU79
 788:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 248              		.loc 1 788 3 view .LVU80
 791:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 249              		.loc 1 791 3 view .LVU81
 250              		.loc 1 794 3 view .LVU82
 251              		.loc 1 794 12 is_stmt 0 view .LVU83
 252 009c FFF7FEFF 		bl	FLASH_WaitForLastOperation
 253              	.LVL16:
 795:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 796:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (status == HAL_OK)
 254              		.loc 1 796 3 is_stmt 1 view .LVU84
 255              		.loc 1 796 6 is_stmt 0 view .LVU85
 256 00a0 0028     		cmp	r0, #0
 257 00a2 78D1     		bne	.L16
 797:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 798:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_BOR_LEV) != 0U)
 258              		.loc 1 798 5 is_stmt 1 view .LVU86
 259              		.loc 1 798 8 is_stmt 0 view .LVU87
 260 00a4 16F00103 		ands	r3, r6, #1
 799:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 800:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* BOR level option byte should be modified */
 801:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_BOR_LEVEL(UserConfig & FLASH_OPTR_BOR_LEV));
 261              		.loc 1 801 7 is_stmt 1 view .LVU88
 802:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 803:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for BOR level option byte */
 804:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_BOR_LEV);
 262              		.loc 1 804 7 view .LVU89
 786:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t optr_reg_mask = 0;
 263              		.loc 1 786 12 is_stmt 0 view .LVU90
 264 00a8 0EBF     		itee	eq
 265 00aa 1A46     		moveq	r2, r3
 266              		.loc 1 804 35 view .LVU91
 267 00ac 05F4E062 		andne	r2, r5, #1792
 268              	.LVL17:
 805:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_BOR_LEV;
 269              		.loc 1 805 7 is_stmt 1 view .LVU92
 270              		.loc 1 805 21 is_stmt 0 view .LVU93
 271 00b0 4FF4E063 		movne	r3, #1792
 272              	.LVL18:
 806:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 807:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 808:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_nRST_STOP) != 0U)
 273              		.loc 1 808 5 is_stmt 1 view .LVU94
 274              		.loc 1 808 8 is_stmt 0 view .LVU95
 275 00b4 B107     		lsls	r1, r6, #30
 809:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 810:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* nRST_STOP option byte should be modified */
 811:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_STOP(UserConfig & FLASH_OPTR_nRST_STOP));
 276              		.loc 1 811 7 is_stmt 1 view .LVU96
 812:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 813:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for nRST_STOP option byte */
 814:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_nRST_STOP);
 277              		.loc 1 814 7 view .LVU97
 278              		.loc 1 814 35 is_stmt 0 view .LVU98
 279 00b6 42BF     		ittt	mi
 280 00b8 05F48051 		andmi	r1, r5, #4096
 281              		.loc 1 814 20 view .LVU99
 282 00bc 0A43     		orrmi	r2, r2, r1
 283              	.LVL19:
 815:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_nRST_STOP;
 284              		.loc 1 815 7 is_stmt 1 view .LVU100
 285              		.loc 1 815 21 is_stmt 0 view .LVU101
 286 00be 43F48053 		orrmi	r3, r3, #4096
 287              	.LVL20:
 816:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 817:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 818:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_nRST_STDBY) != 0U)
 288              		.loc 1 818 5 is_stmt 1 view .LVU102
 289              		.loc 1 818 8 is_stmt 0 view .LVU103
 290 00c2 7007     		lsls	r0, r6, #29
 291              	.LVL21:
 819:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 820:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* nRST_STDBY option byte should be modified */
 821:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_STANDBY(UserConfig & FLASH_OPTR_nRST_STDBY));
 292              		.loc 1 821 7 is_stmt 1 view .LVU104
 822:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 823:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for nRST_STDBY option byte */
 824:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_nRST_STDBY);
 293              		.loc 1 824 7 view .LVU105
 294              		.loc 1 824 35 is_stmt 0 view .LVU106
 295 00c4 42BF     		ittt	mi
 296 00c6 05F40051 		andmi	r1, r5, #8192
 297              		.loc 1 824 20 view .LVU107
 298 00ca 0A43     		orrmi	r2, r2, r1
 299              	.LVL22:
 825:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_nRST_STDBY;
 300              		.loc 1 825 7 is_stmt 1 view .LVU108
 301              		.loc 1 825 21 is_stmt 0 view .LVU109
 302 00cc 43F40053 		orrmi	r3, r3, #8192
 303              	.LVL23:
 826:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 827:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 828:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_nRST_SHDW) != 0U)
 304              		.loc 1 828 5 is_stmt 1 view .LVU110
 305              		.loc 1 828 8 is_stmt 0 view .LVU111
 306 00d0 F104     		lsls	r1, r6, #19
 829:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 830:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* nRST_SHDW option byte should be modified */
 831:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_SHUTDOWN(UserConfig & FLASH_OPTR_nRST_SHDW));
 307              		.loc 1 831 7 is_stmt 1 view .LVU112
 832:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 833:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for nRST_SHDW option byte */
 834:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_nRST_SHDW);
 308              		.loc 1 834 7 view .LVU113
 309              		.loc 1 834 35 is_stmt 0 view .LVU114
 310 00d2 42BF     		ittt	mi
 311 00d4 05F48041 		andmi	r1, r5, #16384
 312              		.loc 1 834 20 view .LVU115
 313 00d8 0A43     		orrmi	r2, r2, r1
 314              	.LVL24:
 835:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_nRST_SHDW;
 315              		.loc 1 835 7 is_stmt 1 view .LVU116
 316              		.loc 1 835 21 is_stmt 0 view .LVU117
 317 00da 43F48043 		orrmi	r3, r3, #16384
 318              	.LVL25:
 836:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 837:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 838:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_IWDG_SW) != 0U)
 319              		.loc 1 838 5 is_stmt 1 view .LVU118
 320              		.loc 1 838 8 is_stmt 0 view .LVU119
 321 00de 3007     		lsls	r0, r6, #28
 839:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 840:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* IWDG_SW option byte should be modified */
 841:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_IWDG(UserConfig & FLASH_OPTR_IWDG_SW));
 322              		.loc 1 841 7 is_stmt 1 view .LVU120
 842:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 843:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for IWDG_SW option byte */
 844:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_IWDG_SW);
 323              		.loc 1 844 7 view .LVU121
 324              		.loc 1 844 35 is_stmt 0 view .LVU122
 325 00e0 42BF     		ittt	mi
 326 00e2 05F48031 		andmi	r1, r5, #65536
 327              		.loc 1 844 20 view .LVU123
 328 00e6 0A43     		orrmi	r2, r2, r1
 329              	.LVL26:
 845:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_IWDG_SW;
 330              		.loc 1 845 7 is_stmt 1 view .LVU124
 331              		.loc 1 845 21 is_stmt 0 view .LVU125
 332 00e8 43F48033 		orrmi	r3, r3, #65536
 333              	.LVL27:
 846:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 847:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 848:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_IWDG_STOP) != 0U)
 334              		.loc 1 848 5 is_stmt 1 view .LVU126
 335              		.loc 1 848 8 is_stmt 0 view .LVU127
 336 00ec F106     		lsls	r1, r6, #27
 849:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 850:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* IWDG_STOP option byte should be modified */
 851:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_IWDG_STOP(UserConfig & FLASH_OPTR_IWDG_STOP));
 337              		.loc 1 851 7 is_stmt 1 view .LVU128
 852:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 853:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for IWDG_STOP option byte */
 854:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_IWDG_STOP);
 338              		.loc 1 854 7 view .LVU129
 339              		.loc 1 854 35 is_stmt 0 view .LVU130
 340 00ee 42BF     		ittt	mi
 341 00f0 05F40031 		andmi	r1, r5, #131072
 342              		.loc 1 854 20 view .LVU131
 343 00f4 0A43     		orrmi	r2, r2, r1
 344              	.LVL28:
 855:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_IWDG_STOP;
 345              		.loc 1 855 7 is_stmt 1 view .LVU132
 346              		.loc 1 855 21 is_stmt 0 view .LVU133
 347 00f6 43F40033 		orrmi	r3, r3, #131072
 348              	.LVL29:
 856:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 857:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 858:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_IWDG_STDBY) != 0U)
 349              		.loc 1 858 5 is_stmt 1 view .LVU134
 350              		.loc 1 858 8 is_stmt 0 view .LVU135
 351 00fa B006     		lsls	r0, r6, #26
 859:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 860:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* IWDG_STDBY option byte should be modified */
 861:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_IWDG_STDBY(UserConfig & FLASH_OPTR_IWDG_STDBY));
 352              		.loc 1 861 7 is_stmt 1 view .LVU136
 862:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 863:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for IWDG_STDBY option byte */
 864:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_IWDG_STDBY);
 353              		.loc 1 864 7 view .LVU137
 354              		.loc 1 864 35 is_stmt 0 view .LVU138
 355 00fc 42BF     		ittt	mi
 356 00fe 05F48021 		andmi	r1, r5, #262144
 357              		.loc 1 864 20 view .LVU139
 358 0102 0A43     		orrmi	r2, r2, r1
 359              	.LVL30:
 865:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_IWDG_STDBY;
 360              		.loc 1 865 7 is_stmt 1 view .LVU140
 361              		.loc 1 865 21 is_stmt 0 view .LVU141
 362 0104 43F48023 		orrmi	r3, r3, #262144
 363              	.LVL31:
 866:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 867:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 868:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_WWDG_SW) != 0U)
 364              		.loc 1 868 5 is_stmt 1 view .LVU142
 365              		.loc 1 868 8 is_stmt 0 view .LVU143
 366 0108 7106     		lsls	r1, r6, #25
 869:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 870:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* WWDG_SW option byte should be modified */
 871:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_WWDG(UserConfig & FLASH_OPTR_WWDG_SW));
 367              		.loc 1 871 7 is_stmt 1 view .LVU144
 872:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 873:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for WWDG_SW option byte */
 874:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_WWDG_SW);
 368              		.loc 1 874 7 view .LVU145
 369              		.loc 1 874 35 is_stmt 0 view .LVU146
 370 010a 42BF     		ittt	mi
 371 010c 05F40021 		andmi	r1, r5, #524288
 372              		.loc 1 874 20 view .LVU147
 373 0110 0A43     		orrmi	r2, r2, r1
 374              	.LVL32:
 875:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_WWDG_SW;
 375              		.loc 1 875 7 is_stmt 1 view .LVU148
 376              		.loc 1 875 21 is_stmt 0 view .LVU149
 377 0112 43F40023 		orrmi	r3, r3, #524288
 378              	.LVL33:
 876:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 877:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 878:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_BFB2)
 879:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_BFB2) != 0U)
 880:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 881:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* BFB2 option byte should be modified */
 882:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_BFB2(UserConfig & FLASH_OPTR_BFB2));
 883:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 884:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for BFB2 option byte */
 885:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_BFB2);
 886:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_BFB2;
 887:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 888:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 889:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 890:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_nBOOT1) != 0U)
 379              		.loc 1 890 5 is_stmt 1 view .LVU150
 380              		.loc 1 890 8 is_stmt 0 view .LVU151
 381 0116 B005     		lsls	r0, r6, #22
 891:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 892:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* nBOOT1 option byte should be modified */
 893:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_BOOT1(UserConfig & FLASH_OPTR_nBOOT1));
 382              		.loc 1 893 7 is_stmt 1 view .LVU152
 894:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 895:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for nBOOT1 option byte */
 896:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_nBOOT1);
 383              		.loc 1 896 7 view .LVU153
 384              		.loc 1 896 35 is_stmt 0 view .LVU154
 385 0118 42BF     		ittt	mi
 386 011a 05F40001 		andmi	r1, r5, #8388608
 387              		.loc 1 896 20 view .LVU155
 388 011e 0A43     		orrmi	r2, r2, r1
 389              	.LVL34:
 897:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_nBOOT1;
 390              		.loc 1 897 7 is_stmt 1 view .LVU156
 391              		.loc 1 897 21 is_stmt 0 view .LVU157
 392 0120 43F40003 		orrmi	r3, r3, #8388608
 393              	.LVL35:
 898:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 899:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 900:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_SRAM_PE) != 0U)
 394              		.loc 1 900 5 is_stmt 1 view .LVU158
 395              		.loc 1 900 8 is_stmt 0 view .LVU159
 396 0124 7105     		lsls	r1, r6, #21
 901:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 902:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* SRAM_PE option byte should be modified */
 903:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_SRAM_PARITY(UserConfig & FLASH_OPTR_SRAM_PE));
 397              		.loc 1 903 7 is_stmt 1 view .LVU160
 904:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 905:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for SRAM_PE option byte */
 906:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_SRAM_PE);
 398              		.loc 1 906 7 view .LVU161
 399              		.loc 1 906 35 is_stmt 0 view .LVU162
 400 0126 42BF     		ittt	mi
 401 0128 05F08071 		andmi	r1, r5, #16777216
 402              		.loc 1 906 20 view .LVU163
 403 012c 0A43     		orrmi	r2, r2, r1
 404              	.LVL36:
 907:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_SRAM_PE;
 405              		.loc 1 907 7 is_stmt 1 view .LVU164
 406              		.loc 1 907 21 is_stmt 0 view .LVU165
 407 012e 43F08073 		orrmi	r3, r3, #16777216
 408              	.LVL37:
 908:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 909:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 910:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_CCMSRAM_RST) != 0U)
 409              		.loc 1 910 5 is_stmt 1 view .LVU166
 410              		.loc 1 910 8 is_stmt 0 view .LVU167
 411 0132 3005     		lsls	r0, r6, #20
 911:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 912:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* CCMSRAM_RST option byte should be modified */
 913:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_CCMSRAM_RST(UserConfig & FLASH_OPTR_CCMSRAM_RST));
 412              		.loc 1 913 7 is_stmt 1 view .LVU168
 914:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 915:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for CCMSRAM_RST option byte */
 916:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_CCMSRAM_RST);
 413              		.loc 1 916 7 view .LVU169
 414              		.loc 1 916 35 is_stmt 0 view .LVU170
 415 0134 42BF     		ittt	mi
 416 0136 05F00071 		andmi	r1, r5, #33554432
 417              		.loc 1 916 20 view .LVU171
 418 013a 0A43     		orrmi	r2, r2, r1
 419              	.LVL38:
 917:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_CCMSRAM_RST;
 420              		.loc 1 917 7 is_stmt 1 view .LVU172
 421              		.loc 1 917 21 is_stmt 0 view .LVU173
 422 013c 43F00073 		orrmi	r3, r3, #33554432
 423              	.LVL39:
 918:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 919:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 920:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_nSWBOOT0) != 0U)
 424              		.loc 1 920 5 is_stmt 1 view .LVU174
 425              		.loc 1 920 8 is_stmt 0 view .LVU175
 426 0140 B104     		lsls	r1, r6, #18
 921:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 922:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* nSWBOOT0 option byte should be modified */
 923:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_SWBOOT0(UserConfig & FLASH_OPTR_nSWBOOT0));
 427              		.loc 1 923 7 is_stmt 1 view .LVU176
 924:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 925:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for nSWBOOT0 option byte */
 926:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_nSWBOOT0);
 428              		.loc 1 926 7 view .LVU177
 429              		.loc 1 926 35 is_stmt 0 view .LVU178
 430 0142 42BF     		ittt	mi
 431 0144 05F08061 		andmi	r1, r5, #67108864
 432              		.loc 1 926 20 view .LVU179
 433 0148 0A43     		orrmi	r2, r2, r1
 434              	.LVL40:
 927:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_nSWBOOT0;
 435              		.loc 1 927 7 is_stmt 1 view .LVU180
 436              		.loc 1 927 21 is_stmt 0 view .LVU181
 437 014a 43F08063 		orrmi	r3, r3, #67108864
 438              	.LVL41:
 928:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 929:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 930:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_nBOOT0) != 0U)
 439              		.loc 1 930 5 is_stmt 1 view .LVU182
 440              		.loc 1 930 8 is_stmt 0 view .LVU183
 441 014e 7004     		lsls	r0, r6, #17
 931:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 932:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* nBOOT0 option byte should be modified */
 933:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_BOOT0(UserConfig & FLASH_OPTR_nBOOT0));
 442              		.loc 1 933 7 is_stmt 1 view .LVU184
 934:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 935:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for nBOOT0 option byte */
 936:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_nBOOT0);
 443              		.loc 1 936 7 view .LVU185
 444              		.loc 1 936 35 is_stmt 0 view .LVU186
 445 0150 42BF     		ittt	mi
 446 0152 05F00061 		andmi	r1, r5, #134217728
 447              		.loc 1 936 20 view .LVU187
 448 0156 0A43     		orrmi	r2, r2, r1
 449              	.LVL42:
 937:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_nBOOT0;
 450              		.loc 1 937 7 is_stmt 1 view .LVU188
 451              		.loc 1 937 21 is_stmt 0 view .LVU189
 452 0158 43F00063 		orrmi	r3, r3, #134217728
 453              	.LVL43:
 938:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 939:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 940:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_NRST_MODE) != 0U)
 454              		.loc 1 940 5 is_stmt 1 view .LVU190
 941:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 942:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Reset Configuration option byte should be modified */
 943:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_NRST_MODE(UserConfig & FLASH_OPTR_NRST_MODE));
 944:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 945:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for Reset Configuration option byte */
 946:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_NRST_MODE);
 947:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_NRST_MODE;
 948:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 949:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 950:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if ((UserType & OB_USER_IRHEN) != 0U)
 951:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 952:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* IRH option byte should be modified */
 953:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       assert_param(IS_OB_USER_IRHEN(UserConfig & FLASH_OPTR_IRHEN));
 954:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 955:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Set value and mask for IRH option byte */
 956:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_val |= (UserConfig & FLASH_OPTR_IRHEN);
 957:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_IRHEN;
 958:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 959:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 960:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the option bytes register */
 961:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     MODIFY_REG(FLASH->OPTR, optr_reg_mask, optr_reg_val);
 455              		.loc 1 961 5 is_stmt 0 view .LVU191
 456 015c 4B48     		ldr	r0, .L119+4
 940:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 457              		.loc 1 940 8 view .LVU192
 458 015e 3104     		lsls	r1, r6, #16
 943:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 459              		.loc 1 943 7 is_stmt 1 view .LVU193
 946:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_NRST_MODE;
 460              		.loc 1 946 7 view .LVU194
 946:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_NRST_MODE;
 461              		.loc 1 946 35 is_stmt 0 view .LVU195
 462 0160 42BF     		ittt	mi
 463 0162 05F04051 		andmi	r1, r5, #805306368
 946:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_NRST_MODE;
 464              		.loc 1 946 20 view .LVU196
 465 0166 0A43     		orrmi	r2, r2, r1
 466              	.LVL44:
 947:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 467              		.loc 1 947 7 is_stmt 1 view .LVU197
 947:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 468              		.loc 1 947 21 is_stmt 0 view .LVU198
 469 0168 43F04053 		orrmi	r3, r3, #805306368
 470              	.LVL45:
 950:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 471              		.loc 1 950 5 is_stmt 1 view .LVU199
 472              		.loc 1 961 5 is_stmt 0 view .LVU200
 473 016c 016A     		ldr	r1, [r0, #32]
 950:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 474              		.loc 1 950 8 view .LVU201
 475 016e F603     		lsls	r6, r6, #15
 476              	.LVL46:
 953:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 477              		.loc 1 953 7 is_stmt 1 view .LVU202
 956:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_IRHEN;
 478              		.loc 1 956 7 view .LVU203
 956:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_IRHEN;
 479              		.loc 1 956 35 is_stmt 0 view .LVU204
 480 0170 42BF     		ittt	mi
 481 0172 05F08045 		andmi	r5, r5, #1073741824
 482              	.LVL47:
 957:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 483              		.loc 1 957 21 view .LVU205
 484 0176 43F08043 		orrmi	r3, r3, #1073741824
 485              	.LVL48:
 956:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       optr_reg_mask |= FLASH_OPTR_IRHEN;
 486              		.loc 1 956 20 view .LVU206
 487 017a 2A43     		orrmi	r2, r2, r5
 488              	.LVL49:
 957:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 489              		.loc 1 957 7 is_stmt 1 view .LVU207
 490              		.loc 1 961 5 view .LVU208
 491 017c 21EA0303 		bic	r3, r1, r3
 492              	.LVL50:
 493              		.loc 1 961 5 is_stmt 0 view .LVU209
 494 0180 1A43     		orrs	r2, r2, r3
 495              	.LVL51:
 496              		.loc 1 961 5 view .LVU210
 497 0182 0262     		str	r2, [r0, #32]
 962:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 963:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set OPTSTRT Bit */
 964:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTSTRT);
 498              		.loc 1 964 5 is_stmt 1 view .LVU211
 499 0184 4369     		ldr	r3, [r0, #20]
 500 0186 43F40033 		orr	r3, r3, #131072
 501 018a 4361     		str	r3, [r0, #20]
 965:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 966:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
 967:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 502              		.loc 1 967 5 view .LVU212
 503              		.loc 1 967 14 is_stmt 0 view .LVU213
 504 018c 4FF47A70 		mov	r0, #1000
 505 0190 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 506              	.LVL52:
 968:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 969:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 970:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 507              		.loc 1 970 3 is_stmt 1 view .LVU214
 508              		.loc 1 970 3 is_stmt 0 view .LVU215
 509              	.LBE27:
 510              	.LBE28:
 353:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 511              		.loc 1 353 8 view .LVU216
 512 0194 00B1     		cbz	r0, .L15
 513              	.L16:
 355:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 514              		.loc 1 355 7 is_stmt 1 view .LVU217
 515              	.LVL53:
 355:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 516              		.loc 1 355 14 is_stmt 0 view .LVU218
 517 0196 0127     		movs	r7, #1
 518              	.LVL54:
 519              	.L15:
 360:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 520              		.loc 1 360 3 is_stmt 1 view .LVU219
 360:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 521              		.loc 1 360 28 is_stmt 0 view .LVU220
 522 0198 2368     		ldr	r3, [r4]
 360:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 523              		.loc 1 360 6 view .LVU221
 524 019a 1807     		lsls	r0, r3, #28
 525 019c 2ED5     		bpl	.L32
 362:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 526              		.loc 1 362 5 is_stmt 1 view .LVU222
 362:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 527              		.loc 1 362 43 is_stmt 0 view .LVU223
 528 019e D4E90896 		ldrd	r9, r6, [r4, #32]
 362:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 529              		.loc 1 362 8 view .LVU224
 530 01a2 B145     		cmp	r9, r6
 531 01a4 2AD0     		beq	.L32
 365:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 532              		.loc 1 365 7 is_stmt 1 view .LVU225
 533              	.LBB29:
 534              	.LBB30:
 971:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 972:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 973:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
 974:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Configure the Proprietary code readout protection area into Option Bytes.
 975:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   To configure any option bytes, the option lock bit OPTLOCK must be
 976:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         cleared with the call of HAL_FLASH_OB_Unlock() function.
 977:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   New option bytes configuration will be taken into account in two cases:
 978:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after an option bytes launch through the call of HAL_FLASH_OB_Launch()
 979:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after a power reset (BOR reset or exit from Standby/Shutdown modes)
 980:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  PCROPConfig specifies the configuration (Bank to be configured and PCROP_RDP option).
 981:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter must be a combination of FLASH_BANK_1 or FLASH_BANK_2 (*)
 982:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         with OB_PCROP_RDP_NOT_ERASE or OB_PCROP_RDP_ERASE.
 983:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
 984:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  PCROPStartAddr specifies the start address of the Proprietary code readout protection.
 985:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be an address between begin and end of the bank.
 986:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  PCROPEndAddr specifies the end address of the Proprietary code readout protection.
 987:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be an address between PCROPStartAddr and end of the bank.
 988:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
 989:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
 990:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_PCROPConfig(uint32_t PCROPConfig, uint32_t PCROPStartAddr, uint32
 991:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 992:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 993:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t reg_value;
 994:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t bank1_addr;
 995:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 996:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t bank2_addr;
 997:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 998:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 999:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
1000:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_BANK_EXCLUSIVE(PCROPConfig & FLASH_BANK_BOTH));
1001:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_PCROP_RDP(PCROPConfig & FLASH_PCROP1ER_PCROP_RDP));
1002:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_MAIN_MEM_ADDRESS(PCROPStartAddr));
1003:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_MAIN_MEM_ADDRESS(PCROPEndAddr));
1004:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1005:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
1006:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 535              		.loc 1 1006 12 is_stmt 0 view .LVU226
 536 01a6 4FF47A70 		mov	r0, #1000
 537              	.LBE30:
 538              	.LBE29:
 365:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 539              		.loc 1 365 11 view .LVU227
 540 01aa E569     		ldr	r5, [r4, #28]
 541              	.LVL55:
 542              	.LBB32:
 543              	.LBI29:
 990:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 544              		.loc 1 990 26 is_stmt 1 view .LVU228
 545              	.LBB31:
 992:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t reg_value;
 546              		.loc 1 992 3 view .LVU229
 993:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t bank1_addr;
 547              		.loc 1 993 3 view .LVU230
 994:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 548              		.loc 1 994 3 view .LVU231
1000:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_PCROP_RDP(PCROPConfig & FLASH_PCROP1ER_PCROP_RDP));
 549              		.loc 1 1000 3 view .LVU232
1001:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_MAIN_MEM_ADDRESS(PCROPStartAddr));
 550              		.loc 1 1001 3 view .LVU233
1002:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_MAIN_MEM_ADDRESS(PCROPEndAddr));
 551              		.loc 1 1002 3 view .LVU234
1003:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 552              		.loc 1 1003 3 view .LVU235
 553              		.loc 1 1006 3 view .LVU236
 554              		.loc 1 1006 12 is_stmt 0 view .LVU237
 555 01ac FFF7FEFF 		bl	FLASH_WaitForLastOperation
 556              	.LVL56:
1007:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1008:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (status == HAL_OK)
 557              		.loc 1 1008 3 is_stmt 1 view .LVU238
 558              		.loc 1 1008 6 is_stmt 0 view .LVU239
 559 01b0 18BB     		cbnz	r0, .L33
1009:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1010:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1011:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Get the information about the bank swapping */
1012:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (READ_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_FB_MODE) == 0U)
1013:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1014:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       bank1_addr = FLASH_BASE;
1015:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       bank2_addr = FLASH_BASE + FLASH_BANK_SIZE;
1016:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1017:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
1018:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1019:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       bank1_addr = FLASH_BASE + FLASH_BANK_SIZE;
1020:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       bank2_addr = FLASH_BASE;
1021:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1022:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #else
1023:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     bank1_addr = FLASH_BASE;
 560              		.loc 1 1023 5 is_stmt 1 view .LVU240
 561              	.LVL57:
1024:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1025:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1026:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1027:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (READ_BIT(FLASH->OPTR, FLASH_OPTR_DBANK) == 0U)
1028:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1029:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Configure the Proprietary code readout protection */
1030:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       if ((PCROPConfig & FLASH_BANK_BOTH) == FLASH_BANK_1)
1031:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
1032:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPStartAddr - FLASH_BASE) >> 4);
1033:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP1SR, FLASH_PCROP1SR_PCROP1_STRT, reg_value);
1034:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1035:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPEndAddr - FLASH_BASE) >> 4);
1036:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP1ER, FLASH_PCROP1ER_PCROP1_END, reg_value);
1037:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
1038:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       else if ((PCROPConfig & FLASH_BANK_BOTH) == FLASH_BANK_2)
1039:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
1040:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPStartAddr - FLASH_BASE) >> 4);
1041:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP2SR, FLASH_PCROP2SR_PCROP2_STRT, reg_value);
1042:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1043:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPEndAddr - FLASH_BASE) >> 4);
1044:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP2ER, FLASH_PCROP2ER_PCROP2_END, reg_value);
1045:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
1046:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       else
1047:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
1048:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         /* Nothing to do */
1049:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
1050:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1051:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
1052:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1053:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1054:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Configure the Proprietary code readout protection */
1055:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       if ((PCROPConfig & FLASH_BANK_BOTH) == FLASH_BANK_1)
 562              		.loc 1 1055 7 view .LVU241
 563              		.loc 1 1055 10 is_stmt 0 view .LVU242
 564 01b2 E907     		lsls	r1, r5, #31
 565 01b4 10D5     		bpl	.L34
1056:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
1057:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPStartAddr - bank1_addr) >> 3);
 566              		.loc 1 1057 9 is_stmt 1 view .LVU243
 567              	.LVL58:
1058:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP1SR, FLASH_PCROP1SR_PCROP1_STRT, reg_value);
 568              		.loc 1 1058 9 view .LVU244
 569 01b6 354B     		ldr	r3, .L119+4
 570 01b8 596A     		ldr	r1, [r3, #36]
 571 01ba A0F58040 		sub	r0, r0, #16384
 572              	.LVL59:
1057:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP1SR, FLASH_PCROP1SR_PCROP1_STRT, reg_value);
 573              		.loc 1 1057 38 is_stmt 0 view .LVU245
 574 01be 09F17849 		add	r9, r9, #-134217728
 575              	.LVL60:
 576              		.loc 1 1058 9 view .LVU246
 577 01c2 0140     		ands	r1, r1, r0
 578 01c4 41EAD901 		orr	r1, r1, r9, lsr #3
 579 01c8 5962     		str	r1, [r3, #36]
1059:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1060:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPEndAddr - bank1_addr) >> 3);
 580              		.loc 1 1060 9 is_stmt 1 view .LVU247
 581              	.LVL61:
1061:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP1ER, FLASH_PCROP1ER_PCROP1_END, reg_value);
 582              		.loc 1 1061 9 view .LVU248
 583 01ca 9A6A     		ldr	r2, [r3, #40]
1060:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP1ER, FLASH_PCROP1ER_PCROP1_END, reg_value);
 584              		.loc 1 1060 36 is_stmt 0 view .LVU249
 585 01cc 06F17846 		add	r6, r6, #-134217728
 586              	.LVL62:
 587              		.loc 1 1061 9 view .LVU250
 588 01d0 0240     		ands	r2, r2, r0
 589 01d2 42EAD602 		orr	r2, r2, r6, lsr #3
 590 01d6 9A62     		str	r2, [r3, #40]
 591              	.LVL63:
 592              	.L34:
1062:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
1063:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1064:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       else if ((PCROPConfig & FLASH_BANK_BOTH) == FLASH_BANK_2)
1065:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
1066:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPStartAddr - bank2_addr) >> 3);
1067:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP2SR, FLASH_PCROP2SR_PCROP2_STRT, reg_value);
1068:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1069:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         reg_value = ((PCROPEndAddr - bank2_addr) >> 3);
1070:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         MODIFY_REG(FLASH->PCROP2ER, FLASH_PCROP2ER_PCROP2_END, reg_value);
1071:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
1072:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1073:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       else
1074:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
1075:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         /* Nothing to do */
1076:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 593              		.loc 1 1076 7 is_stmt 1 view .LVU251
1077:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1078:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1079:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     MODIFY_REG(FLASH->PCROP1ER, FLASH_PCROP1ER_PCROP_RDP, (PCROPConfig & FLASH_PCROP1ER_PCROP_RDP))
 594              		.loc 1 1079 5 view .LVU252
 595 01d8 2C4A     		ldr	r2, .L119+4
 596 01da 936A     		ldr	r3, [r2, #40]
 597 01dc 05F00045 		and	r5, r5, #-2147483648
 598              	.LVL64:
 599              		.loc 1 1079 5 is_stmt 0 view .LVU253
 600 01e0 23F00043 		bic	r3, r3, #-2147483648
 601 01e4 2B43     		orrs	r3, r3, r5
 602 01e6 9362     		str	r3, [r2, #40]
1080:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1081:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set OPTSTRT Bit */
1082:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTSTRT);
 603              		.loc 1 1082 5 is_stmt 1 view .LVU254
 604 01e8 5369     		ldr	r3, [r2, #20]
 605 01ea 43F40033 		orr	r3, r3, #131072
 606 01ee 5361     		str	r3, [r2, #20]
1083:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1084:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
1085:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 607              		.loc 1 1085 5 view .LVU255
 608              		.loc 1 1085 14 is_stmt 0 view .LVU256
 609 01f0 4FF47A70 		mov	r0, #1000
 610 01f4 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 611              	.LVL65:
1086:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1087:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1088:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 612              		.loc 1 1088 3 is_stmt 1 view .LVU257
 613              		.loc 1 1088 3 is_stmt 0 view .LVU258
 614              	.LBE31:
 615              	.LBE32:
 365:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 616              		.loc 1 365 10 view .LVU259
 617 01f8 00B1     		cbz	r0, .L32
 618              	.LVL66:
 619              	.L33:
 367:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 620              		.loc 1 367 9 is_stmt 1 view .LVU260
 367:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 621              		.loc 1 367 16 is_stmt 0 view .LVU261
 622 01fa 0127     		movs	r7, #1
 623              	.LVL67:
 624              	.L32:
 373:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 625              		.loc 1 373 3 is_stmt 1 view .LVU262
 373:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 626              		.loc 1 373 28 is_stmt 0 view .LVU263
 627 01fc 2368     		ldr	r3, [r4]
 373:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 628              		.loc 1 373 6 view .LVU264
 629 01fe 9A06     		lsls	r2, r3, #26
 630 0200 18D5     		bpl	.L35
 376:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 631              		.loc 1 376 5 is_stmt 1 view .LVU265
 632              	.LBB33:
 633              	.LBB34:
1089:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1090:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1091:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1092:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Configure the Securable memory area into Option Bytes.
1093:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   To configure any option bytes, the option lock bit OPTLOCK must be
1094:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         cleared with the call of HAL_FLASH_OB_Unlock() function.
1095:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   New option bytes configuration will be taken into account in two cases:
1096:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after an option bytes launch through the call of HAL_FLASH_OB_Launch()
1097:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after a power reset (BOR reset or exit from Standby/Shutdown modes)
1098:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  SecBank specifies bank of securable memory area to be configured.
1099:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *          This parameter can be one of the following values:
1100:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_1: Securable memory in Bank1 to be configured
1101:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_2: Securable memory in Bank2 to be configured (*)
1102:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
1103:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  SecSize specifies the number of pages of the Securable memory area,
1104:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         starting from first page of the bank.
1105:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This parameter can be page number between 0 and (max number of pages in the bank - 1)
1106:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL Status
1107:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1108:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_SecMemConfig(uint32_t SecBank, uint32_t SecSize)
1109:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1110:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
1111:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1112:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
1113:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_FLASH_BANK_EXCLUSIVE(SecBank));
1114:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_SECMEM_SIZE(SecSize));
1115:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1116:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
1117:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 634              		.loc 1 1117 12 is_stmt 0 view .LVU266
 635 0202 4FF47A70 		mov	r0, #1000
 636              	.LBE34:
 637              	.LBE33:
 376:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 638              		.loc 1 376 9 view .LVU267
 639 0206 D4E90B65 		ldrd	r6, r5, [r4, #44]
 640              	.LVL68:
 641              	.LBB36:
 642              	.LBI33:
1108:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 643              		.loc 1 1108 26 is_stmt 1 view .LVU268
 644              	.LBB35:
1110:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 645              		.loc 1 1110 3 view .LVU269
1113:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_SECMEM_SIZE(SecSize));
 646              		.loc 1 1113 3 view .LVU270
1114:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 647              		.loc 1 1114 3 view .LVU271
 648              		.loc 1 1117 3 view .LVU272
 649              		.loc 1 1117 12 is_stmt 0 view .LVU273
 650 020a FFF7FEFF 		bl	FLASH_WaitForLastOperation
 651              	.LVL69:
1118:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1119:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (status == HAL_OK)
 652              		.loc 1 1119 3 is_stmt 1 view .LVU274
 653              		.loc 1 1119 6 is_stmt 0 view .LVU275
 654 020e 80B9     		cbnz	r0, .L36
1120:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1121:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Configure the write protected area */
1122:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (SecBank == FLASH_BANK_1)
 655              		.loc 1 1122 5 is_stmt 1 view .LVU276
 656 0210 1E4A     		ldr	r2, .L119+4
1123:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1124:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       MODIFY_REG(FLASH->SEC1R, FLASH_SEC1R_SEC_SIZE1, SecSize);
 657              		.loc 1 1124 7 view .LVU277
1122:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 658              		.loc 1 1122 8 is_stmt 0 view .LVU278
 659 0212 012E     		cmp	r6, #1
 660              		.loc 1 1124 7 view .LVU279
 661 0214 01BF     		itttt	eq
 662 0216 136F     		ldreq	r3, [r2, #112]
 663 0218 23F07F03 		biceq	r3, r3, #127
 664 021c 2B43     		orreq	r3, r3, r5
 665 021e 1367     		streq	r3, [r2, #112]
1125:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1126:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1127:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else if (SecBank == FLASH_BANK_2)
1128:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1129:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       MODIFY_REG(FLASH->SEC2R, FLASH_SEC2R_SEC_SIZE2, SecSize);
1130:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1131:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
1132:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1133:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Nothing to do */
1134:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1135:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1136:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1137:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set OPTSTRT Bit */
1138:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTSTRT);
 666              		.loc 1 1138 5 is_stmt 1 view .LVU280
 667 0220 5369     		ldr	r3, [r2, #20]
 668 0222 43F40033 		orr	r3, r3, #131072
 669 0226 5361     		str	r3, [r2, #20]
1139:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1140:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
1141:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 670              		.loc 1 1141 5 view .LVU281
 671              		.loc 1 1141 14 is_stmt 0 view .LVU282
 672 0228 4FF47A70 		mov	r0, #1000
 673              	.LVL70:
 674              		.loc 1 1141 14 view .LVU283
 675 022c FFF7FEFF 		bl	FLASH_WaitForLastOperation
 676              	.LVL71:
1142:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1143:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1144:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 677              		.loc 1 1144 3 is_stmt 1 view .LVU284
 678              		.loc 1 1144 3 is_stmt 0 view .LVU285
 679              	.LBE35:
 680              	.LBE36:
 376:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 681              		.loc 1 376 8 view .LVU286
 682 0230 00B1     		cbz	r0, .L35
 683              	.L36:
 378:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 684              		.loc 1 378 7 is_stmt 1 view .LVU287
 685              	.LVL72:
 378:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 686              		.loc 1 378 14 is_stmt 0 view .LVU288
 687 0232 0127     		movs	r7, #1
 688              	.LVL73:
 689              	.L35:
 383:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 690              		.loc 1 383 3 is_stmt 1 view .LVU289
 383:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 691              		.loc 1 383 28 is_stmt 0 view .LVU290
 692 0234 2368     		ldr	r3, [r4]
 383:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 693              		.loc 1 383 6 view .LVU291
 694 0236 DB06     		lsls	r3, r3, #27
 695 0238 15D5     		bpl	.L38
 386:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 696              		.loc 1 386 5 is_stmt 1 view .LVU292
 697              	.LBB37:
 698              	.LBB38:
1145:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1146:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1147:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Configure the Boot Lock into Option Bytes.
1149:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   To configure any option bytes, the option lock bit OPTLOCK must be
1150:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         cleared with the call of HAL_FLASH_OB_Unlock() function.
1151:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   New option bytes configuration will be taken into account in two cases:
1152:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after an option bytes launch through the call of HAL_FLASH_OB_Launch()
1153:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         - after a power reset (BOR reset or exit from Standby/Shutdown modes)
1154:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param  BootLockConfig specifies the boot lock configuration.
1155:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *          This parameter can be one of the following values:
1156:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_BOOT_LOCK_ENABLE: Enable Boot Lock
1157:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_BOOT_LOCK_DISABLE: Disable Boot Lock
1158:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *
1159:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval HAL_Status
1160:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1161:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static HAL_StatusTypeDef FLASH_OB_BootLockConfig(uint32_t BootLockConfig)
1162:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1163:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
1164:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1165:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
1166:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   assert_param(IS_OB_BOOT_LOCK(BootLockConfig));
1167:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1168:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Wait for last operation to be completed */
1169:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 699              		.loc 1 1169 12 is_stmt 0 view .LVU293
 700 023a 4FF47A70 		mov	r0, #1000
 701              	.LBE38:
 702              	.LBE37:
 386:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 703              		.loc 1 386 9 view .LVU294
 704 023e A46A     		ldr	r4, [r4, #40]
 705              	.LVL74:
 706              	.LBB40:
 707              	.LBI37:
1161:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 708              		.loc 1 1161 26 is_stmt 1 view .LVU295
 709              	.LBB39:
1163:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 710              		.loc 1 1163 3 view .LVU296
1166:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 711              		.loc 1 1166 3 view .LVU297
 712              		.loc 1 1169 3 view .LVU298
 713              		.loc 1 1169 12 is_stmt 0 view .LVU299
 714 0240 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 715              	.LVL75:
1170:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1171:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (status == HAL_OK)
 716              		.loc 1 1171 3 is_stmt 1 view .LVU300
 717              		.loc 1 1171 6 is_stmt 0 view .LVU301
 718 0244 70B9     		cbnz	r0, .L39
1172:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1173:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     MODIFY_REG(FLASH->SEC1R, FLASH_SEC1R_BOOT_LOCK, BootLockConfig);
 719              		.loc 1 1173 5 is_stmt 1 view .LVU302
 720 0246 114A     		ldr	r2, .L119+4
 721 0248 136F     		ldr	r3, [r2, #112]
 722 024a 23F48033 		bic	r3, r3, #65536
 723 024e 2343     		orrs	r3, r3, r4
 724 0250 1367     		str	r3, [r2, #112]
1174:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1175:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Set OPTSTRT Bit */
1176:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     SET_BIT(FLASH->CR, FLASH_CR_OPTSTRT);
 725              		.loc 1 1176 5 view .LVU303
 726 0252 5369     		ldr	r3, [r2, #20]
 727 0254 43F40033 		orr	r3, r3, #131072
 728 0258 5361     		str	r3, [r2, #20]
1177:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1178:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Wait for last operation to be completed */
1179:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     status = FLASH_WaitForLastOperation((uint32_t)FLASH_TIMEOUT_VALUE);
 729              		.loc 1 1179 5 view .LVU304
 730              		.loc 1 1179 14 is_stmt 0 view .LVU305
 731 025a 4FF47A70 		mov	r0, #1000
 732              	.LVL76:
 733              		.loc 1 1179 14 view .LVU306
 734 025e FFF7FEFF 		bl	FLASH_WaitForLastOperation
 735              	.LVL77:
1180:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1181:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1182:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return status;
 736              		.loc 1 1182 3 is_stmt 1 view .LVU307
 737              		.loc 1 1182 3 is_stmt 0 view .LVU308
 738              	.LBE39:
 739              	.LBE40:
 386:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 740              		.loc 1 386 8 view .LVU309
 741 0262 00B1     		cbz	r0, .L38
 742              	.L39:
 388:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 743              		.loc 1 388 7 is_stmt 1 view .LVU310
 744              	.LVL78:
 388:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 745              		.loc 1 388 14 is_stmt 0 view .LVU311
 746 0264 0127     		movs	r7, #1
 747              	.LVL79:
 748              	.L38:
 393:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 749              		.loc 1 393 3 is_stmt 1 view .LVU312
 393:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 750              		.loc 1 393 3 view .LVU313
 751 0266 0023     		movs	r3, #0
 752 0268 88F80030 		strb	r3, [r8]
 395:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 753              		.loc 1 395 3 view .LVU314
 754              	.LVL80:
 755              	.L9:
 396:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 756              		.loc 1 396 1 is_stmt 0 view .LVU315
 757 026c 3846     		mov	r0, r7
 758 026e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 759              	.LVL81:
 760              	.L11:
 761              	.LBB41:
 762              	.LBB20:
 691:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 763              		.loc 1 691 10 is_stmt 1 view .LVU316
 691:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 764              		.loc 1 691 13 is_stmt 0 view .LVU317
 765 0272 B9F1010F 		cmp	r9, #1
 693:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 766              		.loc 1 693 7 is_stmt 1 view .LVU318
 693:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 767              		.loc 1 693 70 is_stmt 0 view .LVU319
 768 0276 04BF     		itt	eq
 769 0278 45EA0645 		orreq	r5, r5, r6, lsl #16
 770              	.LVL82:
 693:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 771              		.loc 1 693 21 view .LVU320
 772 027c 1D63     		streq	r5, [r3, #48]
 773 027e E1E6     		b	.L12
 774              	.LVL83:
 775              	.L41:
 693:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 776              		.loc 1 693 21 view .LVU321
 777              	.LBE20:
 778              	.LBE41:
 319:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 779              		.loc 1 319 21 view .LVU322
 780 0280 1F46     		mov	r7, r3
 781 0282 EAE6     		b	.L10
 782              	.L40:
 325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 783              		.loc 1 325 3 view .LVU323
 784 0284 0227     		movs	r7, #2
 785 0286 F1E7     		b	.L9
 786              	.L120:
 787              		.align	2
 788              	.L119:
 789 0288 00000000 		.word	pFlash
 790 028c 00200240 		.word	1073881088
 791              		.cfi_endproc
 792              	.LFE327:
 794              		.section	.text.HAL_FLASHEx_OBGetConfig,"ax",%progbits
 795              		.align	1
 796              		.global	HAL_FLASHEx_OBGetConfig
 797              		.syntax unified
 798              		.thumb
 799              		.thumb_func
 800              		.fpu fpv4-sp-d16
 802              	HAL_FLASHEx_OBGetConfig:
 803              	.LVL84:
 804              	.LFB328:
 407:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   pOBInit->OptionType = (OPTIONBYTE_RDP | OPTIONBYTE_USER);
 805              		.loc 1 407 1 is_stmt 1 view -0
 806              		.cfi_startproc
 807              		@ args = 0, pretend = 0, frame = 0
 808              		@ frame_needed = 0, uses_anonymous_args = 0
 809              		@ link register save eliminated.
 408:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 810              		.loc 1 408 3 view .LVU325
 414:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 811              		.loc 1 414 15 is_stmt 0 view .LVU326
 812 0000 4268     		ldr	r2, [r0, #4]
 408:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 813              		.loc 1 408 23 view .LVU327
 814 0002 0623     		movs	r3, #6
 414:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 815              		.loc 1 414 6 view .LVU328
 816 0004 012A     		cmp	r2, #1
 408:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 817              		.loc 1 408 23 view .LVU329
 818 0006 0360     		str	r3, [r0]
 414:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 819              		.loc 1 414 3 is_stmt 1 view .LVU330
 414:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 820              		.loc 1 414 6 is_stmt 0 view .LVU331
 821 0008 0CD8     		bhi	.L122
 417:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Get write protection on the selected area */
 822              		.loc 1 417 5 is_stmt 1 view .LVU332
 417:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Get write protection on the selected area */
 823              		.loc 1 417 25 is_stmt 0 view .LVU333
 824 000a 0723     		movs	r3, #7
 825 000c 0360     		str	r3, [r0]
 419:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 826              		.loc 1 419 5 is_stmt 1 view .LVU334
 827              	.LVL85:
 828              	.LBB54:
 829              	.LBI54:
1183:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1184:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1185:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1186:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Return the Securable memory area configuration into Option Bytes.
1187:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[in]  SecBank specifies the bank where securable memory area is located.
1188:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *          This parameter can be one of the following values:
1189:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_1: Securable memory in Bank1
1190:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg FLASH_BANK_2: Securable memory in Bank2 (*)
1191:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note   (*) availability depends on devices
1192:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[out]  SecSize specifies the number of pages used in the securable
1193:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****                  memory area of the bank.
1194:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
1195:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1196:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void FLASH_OB_GetSecMem(uint32_t SecBank, uint32_t *SecSize)
1197:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1198:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Get the configuration of the securable memory area */
1199:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (SecBank == FLASH_BANK_1)
1200:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1201:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *SecSize = READ_BIT(FLASH->SEC1R, FLASH_SEC1R_SEC_SIZE1);
1202:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1203:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1204:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else if (SecBank == FLASH_BANK_2)
1205:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *SecSize = READ_BIT(FLASH->SEC2R, FLASH_SEC2R_SEC_SIZE2);
1207:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1208:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
1209:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1210:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Nothing to do */
1211:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1212:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1213:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1214:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1215:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1216:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Return the Boot Lock configuration into Option Byte.
1217:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval BootLockConfig.
1218:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This return value can be one of the following values:
1219:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_BOOT_LOCK_ENABLE: Boot lock enabled
1220:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_BOOT_LOCK_DISABLE: Boot lock disabled
1221:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1222:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static uint32_t FLASH_OB_GetBootLock(void)
1223:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1224:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return (READ_REG(FLASH->SEC1R) & FLASH_SEC1R_BOOT_LOCK);
1225:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1226:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1227:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1228:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Return the Write Protection configuration into Option Bytes.
1229:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[in]  WRPArea specifies the area to be returned.
1230:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *          This parameter can be one of the following values:
1231:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK1_AREAA: Flash Bank 1 Area A
1232:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK1_AREAB: Flash Bank 1 Area B
1233:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK2_AREAA: Flash Bank 2 Area A (don't apply to STM32G43x/STM32G44x
1234:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_WRPAREA_BANK2_AREAB: Flash Bank 2 Area B (don't apply to STM32G43x/STM32G44x
1235:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[out]  WRPStartOffset specifies the address where to copied the start page
1236:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *              of the write protected area.
1237:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[out]  WRDPEndOffset specifies the address where to copied the end page of
1238:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *              the write protected area.
1239:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
1240:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1241:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void FLASH_OB_GetWRP(uint32_t WRPArea, uint32_t *WRPStartOffset, uint32_t *WRDPEndOffset)
 830              		.loc 1 1241 13 view .LVU335
 831              	.LBB55:
1242:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1243:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Get the configuration of the write protected area */
1244:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (WRPArea == OB_WRPAREA_BANK1_AREAA)
 832              		.loc 1 1244 3 view .LVU336
 833 000e 264B     		ldr	r3, .L132
 834              		.loc 1 1244 6 is_stmt 0 view .LVU337
 835 0010 002A     		cmp	r2, #0
 836 0012 42D1     		bne	.L123
1245:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRPStartOffset = READ_BIT(FLASH->WRP1AR, FLASH_WRP1AR_WRP1A_STRT);
 837              		.loc 1 1246 5 is_stmt 1 view .LVU338
 838              		.loc 1 1246 23 is_stmt 0 view .LVU339
 839 0014 DA6A     		ldr	r2, [r3, #44]
 840              	.LVL86:
 841              		.loc 1 1246 23 view .LVU340
 842 0016 02F03F02 		and	r2, r2, #63
 843              		.loc 1 1246 21 view .LVU341
 844 001a 8260     		str	r2, [r0, #8]
1247:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP1AR, FLASH_WRP1AR_WRP1A_END) >> FLASH_WRP1AR_WRP1A_END_Pos
 845              		.loc 1 1247 5 is_stmt 1 view .LVU342
 846              		.loc 1 1247 23 is_stmt 0 view .LVU343
 847 001c DB6A     		ldr	r3, [r3, #44]
 848              	.L131:
1248:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1249:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else if (WRPArea == OB_WRPAREA_BANK1_AREAB)
1250:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRPStartOffset = READ_BIT(FLASH->WRP1BR, FLASH_WRP1BR_WRP1B_STRT);
1252:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP1BR, FLASH_WRP1BR_WRP1B_END) >> FLASH_WRP1BR_WRP1B_END_Pos
 849              		.loc 1 1252 71 view .LVU344
 850 001e C3F30543 		ubfx	r3, r3, #16, #6
 851              		.loc 1 1252 20 view .LVU345
 852 0022 C360     		str	r3, [r0, #12]
 853              	.LVL87:
 854              	.L122:
 855              		.loc 1 1252 20 view .LVU346
 856              	.LBE55:
 857              	.LBE54:
 423:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 858              		.loc 1 423 3 is_stmt 1 view .LVU347
 859              	.LBB57:
 860              	.LBI57:
1253:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1254:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1255:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else if (WRPArea == OB_WRPAREA_BANK2_AREAA)
1256:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1257:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRPStartOffset = READ_BIT(FLASH->WRP2AR, FLASH_WRP2AR_WRP2A_STRT);
1258:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP2AR, FLASH_WRP2AR_WRP2A_END) >> FLASH_WRP2AR_WRP2A_END_Pos
1259:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1260:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else if (WRPArea == OB_WRPAREA_BANK2_AREAB)
1261:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1262:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRPStartOffset = READ_BIT(FLASH->WRP2BR, FLASH_WRP2BR_WRP2B_STRT);
1263:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP2BR, FLASH_WRP2BR_WRP2B_END) >> FLASH_WRP2BR_WRP2B_END_Pos
1264:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1265:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1266:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
1267:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1268:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Nothing to do */
1269:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1270:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1271:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1272:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1273:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Return the FLASH Read Protection level into Option Bytes.
1274:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval RDP_Level
1275:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This return value can be one of the following values:
1276:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_RDP_LEVEL_0: No protection
1277:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_RDP_LEVEL_1: Read protection of the memory
1278:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *            @arg OB_RDP_LEVEL_2: Full chip protection
1279:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1280:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static uint32_t FLASH_OB_GetRDP(void)
 861              		.loc 1 1280 17 view .LVU348
 862              	.LBB58:
1281:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1282:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t rdp_level = READ_BIT(FLASH->OPTR, FLASH_OPTR_RDP);
 863              		.loc 1 1282 3 view .LVU349
 864              		.loc 1 1282 24 is_stmt 0 view .LVU350
 865 0024 204B     		ldr	r3, .L132
 866 0026 1A6A     		ldr	r2, [r3, #32]
 867              		.loc 1 1282 12 view .LVU351
 868 0028 D2B2     		uxtb	r2, r2
 869              	.LVL88:
1283:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1284:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if ((rdp_level != OB_RDP_LEVEL_0) && (rdp_level != OB_RDP_LEVEL_2))
 870              		.loc 1 1284 3 is_stmt 1 view .LVU352
 871              		.loc 1 1284 6 is_stmt 0 view .LVU353
 872 002a AA2A     		cmp	r2, #170
 873 002c 02D0     		beq	.L124
1285:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1286:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     return (OB_RDP_LEVEL_1);
 874              		.loc 1 1286 12 view .LVU354
 875 002e CC2A     		cmp	r2, #204
 876 0030 18BF     		it	ne
 877 0032 BB22     		movne	r2, #187
 878              	.LVL89:
 879              	.L124:
 880              		.loc 1 1286 12 view .LVU355
 881              	.LBE58:
 882              	.LBE57:
 423:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 883              		.loc 1 423 21 view .LVU356
 884 0034 0261     		str	r2, [r0, #16]
 426:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 885              		.loc 1 426 3 is_stmt 1 view .LVU357
 886              	.LBB59:
 887              	.LBI59:
1287:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1288:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
1289:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1290:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     return rdp_level;
1291:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1292:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1293:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1294:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1295:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Return the FLASH User Option Byte value.
1296:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval OB_user_config
1297:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         This return value is a combination of @ref FLASH_OB_USER_BOR_LEVEL,
1298:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_nRST_STOP, @ref FLASH_OB_USER_nRST_STANDBY,
1299:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_nRST_SHUTDOWN, @ref FLASH_OB_USER_IWDG_SW,
1300:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_IWDG_STOP, @ref FLASH_OB_USER_IWDG_STANDBY,
1301:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_WWDG_SW, @ref FLASH_OB_USER_WWDG_SW,
1302:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_BFB2 (*), @ref FLASH_OB_USER_DBANK (*),
1303:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_nBOOT1, @ref FLASH_OB_USER_SRAM_PE,
1304:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_CCMSRAM_RST, @ref OB_USER_nSWBOOT0,@ref FLASH_OB_USER_nBOOT0,
1305:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *         @ref FLASH_OB_USER_NRST_MODE, @ref FLASH_OB_USER_INTERNAL_RESET_HOLDER
1306:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @note  (*) availability depends on devices
1307:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1308:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static uint32_t FLASH_OB_GetUser(void)
 888              		.loc 1 1308 17 view .LVU358
 889              	.LBB60:
1309:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1310:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t user_config = READ_REG(FLASH->OPTR);
 890              		.loc 1 1310 3 view .LVU359
 891              		.loc 1 1310 12 is_stmt 0 view .LVU360
 892 0036 1A6A     		ldr	r2, [r3, #32]
 893              	.LVL90:
1311:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   CLEAR_BIT(user_config, FLASH_OPTR_RDP);
 894              		.loc 1 1311 3 is_stmt 1 view .LVU361
1312:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1313:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   return user_config;
 895              		.loc 1 1313 3 view .LVU362
1311:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   CLEAR_BIT(user_config, FLASH_OPTR_RDP);
 896              		.loc 1 1311 3 is_stmt 0 view .LVU363
 897 0038 22F0FF02 		bic	r2, r2, #255
 898              	.LBE60:
 899              	.LBE59:
 426:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 900              		.loc 1 426 23 view .LVU364
 901 003c 8261     		str	r2, [r0, #24]
 431:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 902              		.loc 1 431 3 is_stmt 1 view .LVU365
 431:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 903              		.loc 1 431 6 is_stmt 0 view .LVU366
 904 003e C269     		ldr	r2, [r0, #28]
 905 0040 012A     		cmp	r2, #1
 906 0042 16D1     		bne	.L125
 434:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Get the Proprietary code readout protection */
 907              		.loc 1 434 5 is_stmt 1 view .LVU367
 434:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Get the Proprietary code readout protection */
 908              		.loc 1 434 25 is_stmt 0 view .LVU368
 909 0044 0268     		ldr	r2, [r0]
 910 0046 42F00802 		orr	r2, r2, #8
 911 004a 0260     		str	r2, [r0]
 436:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 912              		.loc 1 436 5 is_stmt 1 view .LVU369
 913              	.LVL91:
 914              	.LBB61:
 915              	.LBI61:
1314:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
1315:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1316:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** /**
1317:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @brief  Return the FLASH PCROP configuration into Option Bytes.
1318:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[in,out] PCROPConfig specifies the configuration (Bank to be configured and PCROP_RDP opt
1319:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *        This parameter must be a combination of FLASH_BANK_1 or FLASH_BANK_2
1320:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *        with OB_PCROP_RDP_NOT_ERASE or OB_PCROP_RDP_ERASE.
1321:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[out] PCROPStartAddr specifies the address where to copied the start address
1322:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *        of the Proprietary code readout protection.
1323:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @param[out] PCROPEndAddr specifies the address where to copied the end address of
1324:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *        the Proprietary code readout protection.
1325:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   * @retval None
1326:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   */
1327:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** static void FLASH_OB_GetPCROP(uint32_t *PCROPConfig, uint32_t *PCROPStartAddr, uint32_t *PCROPEndAd
 916              		.loc 1 1327 13 view .LVU370
 917              	.LBB62:
1328:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
1329:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t reg_value;
 918              		.loc 1 1329 3 view .LVU371
1330:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t bank1_addr;
 919              		.loc 1 1330 3 view .LVU372
1331:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1332:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t bank2_addr;
1333:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1334:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Get the information about the bank swapping */
1335:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (READ_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_FB_MODE) == 0U)
1336:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1337:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     bank1_addr = FLASH_BASE;
1338:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     bank2_addr = FLASH_BASE + FLASH_BANK_SIZE;
1339:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1340:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
1341:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1342:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     bank1_addr = FLASH_BASE + FLASH_BANK_SIZE;
1343:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     bank2_addr = FLASH_BASE;
1344:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1345:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #else
1346:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   bank1_addr = FLASH_BASE;
 920              		.loc 1 1346 3 view .LVU373
1347:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1348:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1349:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1350:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   if (READ_BIT(FLASH->OPTR, FLASH_OPTR_DBANK) == 0U)
1351:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1352:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (((*PCROPConfig) & FLASH_BANK_BOTH) == FLASH_BANK_1)
1353:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1354:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value       = (READ_REG(FLASH->PCROP1SR) & FLASH_PCROP1SR_PCROP1_STRT);
1355:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPStartAddr = (reg_value << 4) + FLASH_BASE;
1356:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1357:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value     = (READ_REG(FLASH->PCROP1ER) & FLASH_PCROP1ER_PCROP1_END);
1358:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPEndAddr = (reg_value << 4) + FLASH_BASE;
1359:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1360:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else if (((*PCROPConfig) & FLASH_BANK_BOTH) == FLASH_BANK_2)
1361:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1362:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value       = (READ_REG(FLASH->PCROP2SR) & FLASH_PCROP2SR_PCROP2_STRT);
1363:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPStartAddr = (reg_value << 4) + FLASH_BASE;
1364:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1365:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value     = (READ_REG(FLASH->PCROP2ER) & FLASH_PCROP2ER_PCROP2_END);
1366:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPEndAddr = (reg_value << 4) + FLASH_BASE;
1367:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1368:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
1369:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1370:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Nothing to do */
1371:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1372:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1373:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   else
1374:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1375:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
1376:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     if (((*PCROPConfig) & FLASH_BANK_BOTH) == FLASH_BANK_1)
 921              		.loc 1 1376 5 view .LVU374
1377:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1378:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value       = (READ_REG(FLASH->PCROP1SR) & FLASH_PCROP1SR_PCROP1_STRT);
 922              		.loc 1 1378 7 view .LVU375
 923              		.loc 1 1378 26 is_stmt 0 view .LVU376
 924 004c 596A     		ldr	r1, [r3, #36]
 925              	.LVL92:
1379:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPStartAddr = (reg_value << 3) + bank1_addr;
 926              		.loc 1 1379 7 is_stmt 1 view .LVU377
 927              		.loc 1 1379 36 is_stmt 0 view .LVU378
 928 004e 174A     		ldr	r2, .L132+4
 929 0050 02EAC101 		and	r1, r2, r1, lsl #3
 930              	.LVL93:
 931              		.loc 1 1379 42 view .LVU379
 932 0054 01F10061 		add	r1, r1, #134217728
 933              		.loc 1 1379 23 view .LVU380
 934 0058 0162     		str	r1, [r0, #32]
1380:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1381:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value     = (READ_REG(FLASH->PCROP1ER) & FLASH_PCROP1ER_PCROP1_END);
 935              		.loc 1 1381 7 is_stmt 1 view .LVU381
 936              		.loc 1 1381 24 is_stmt 0 view .LVU382
 937 005a 996A     		ldr	r1, [r3, #40]
 938              	.LVL94:
1382:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPEndAddr = (reg_value << 3) + bank1_addr;
 939              		.loc 1 1382 7 is_stmt 1 view .LVU383
 940              		.loc 1 1382 34 is_stmt 0 view .LVU384
 941 005c 02EAC102 		and	r2, r2, r1, lsl #3
 942              		.loc 1 1382 40 view .LVU385
 943 0060 02F10062 		add	r2, r2, #134217728
 944              		.loc 1 1382 21 view .LVU386
 945 0064 4262     		str	r2, [r0, #36]
1383:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1384:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
1385:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else if (((*PCROPConfig) & FLASH_BANK_BOTH) == FLASH_BANK_2)
1386:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1387:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value       = (READ_REG(FLASH->PCROP2SR) & FLASH_PCROP2SR_PCROP2_STRT);
1388:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPStartAddr = (reg_value << 3) + bank2_addr;
1389:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1390:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       reg_value     = (READ_REG(FLASH->PCROP2ER) & FLASH_PCROP2ER_PCROP2_END);
1391:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       *PCROPEndAddr = (reg_value << 3) + bank2_addr;
1392:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
1393:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
1394:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     else
1395:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
1396:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       /* Nothing to do */
1397:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 946              		.loc 1 1397 5 is_stmt 1 view .LVU387
1398:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
1399:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
1400:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   *PCROPConfig |= (READ_REG(FLASH->PCROP1ER) & FLASH_PCROP1ER_PCROP_RDP);
 947              		.loc 1 1400 3 view .LVU388
 948              		.loc 1 1400 20 is_stmt 0 view .LVU389
 949 0066 9B6A     		ldr	r3, [r3, #40]
 950              		.loc 1 1400 46 view .LVU390
 951 0068 03F00043 		and	r3, r3, #-2147483648
 952              		.loc 1 1400 16 view .LVU391
 953 006c 43F00103 		orr	r3, r3, #1
 954 0070 C361     		str	r3, [r0, #28]
 955              	.LVL95:
 956              	.L125:
 957              		.loc 1 1400 16 view .LVU392
 958              	.LBE62:
 959              	.LBE61:
 439:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 960              		.loc 1 439 3 is_stmt 1 view .LVU393
 439:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 961              		.loc 1 439 23 is_stmt 0 view .LVU394
 962 0072 0368     		ldr	r3, [r0]
 963              	.LBB63:
 964              	.LBB64:
1224:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 965              		.loc 1 1224 11 view .LVU395
 966 0074 0C49     		ldr	r1, .L132
 967              	.LBE64:
 968              	.LBE63:
 439:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 969              		.loc 1 439 23 view .LVU396
 970 0076 43F01002 		orr	r2, r3, #16
 971 007a 0260     		str	r2, [r0]
 442:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 972              		.loc 1 442 3 is_stmt 1 view .LVU397
 973              	.LBB66:
 974              	.LBI63:
1222:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 975              		.loc 1 1222 17 view .LVU398
 976              	.LBB65:
1224:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 977              		.loc 1 1224 3 view .LVU399
1224:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 978              		.loc 1 1224 11 is_stmt 0 view .LVU400
 979 007c 0A6F     		ldr	r2, [r1, #112]
1224:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 980              		.loc 1 1224 34 view .LVU401
 981 007e 02F48032 		and	r2, r2, #65536
 982              	.LBE65:
 983              	.LBE66:
 442:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 984              		.loc 1 442 27 view .LVU402
 985 0082 8262     		str	r2, [r0, #40]
 448:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 986              		.loc 1 448 3 is_stmt 1 view .LVU403
 448:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 987              		.loc 1 448 6 is_stmt 0 view .LVU404
 988 0084 C26A     		ldr	r2, [r0, #44]
 989 0086 012A     		cmp	r2, #1
 990 0088 06D1     		bne	.L121
 451:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_OB_GetSecMem(pOBInit->SecBank, &(pOBInit->SecSize));
 991              		.loc 1 451 5 is_stmt 1 view .LVU405
 451:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_OB_GetSecMem(pOBInit->SecBank, &(pOBInit->SecSize));
 992              		.loc 1 451 25 is_stmt 0 view .LVU406
 993 008a 43F03003 		orr	r3, r3, #48
 994 008e 0360     		str	r3, [r0]
 452:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 995              		.loc 1 452 5 is_stmt 1 view .LVU407
 996              	.LVL96:
 997              	.LBB67:
 998              	.LBI67:
1196:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** {
 999              		.loc 1 1196 13 view .LVU408
 1000              	.LBB68:
1199:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1001              		.loc 1 1199 3 view .LVU409
1201:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1002              		.loc 1 1201 5 view .LVU410
1201:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1003              		.loc 1 1201 16 is_stmt 0 view .LVU411
 1004 0090 0B6F     		ldr	r3, [r1, #112]
 1005 0092 03F07F03 		and	r3, r3, #127
1201:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1006              		.loc 1 1201 14 view .LVU412
 1007 0096 0363     		str	r3, [r0, #48]
 1008              	.LVL97:
 1009              	.L121:
1201:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1010              		.loc 1 1201 14 view .LVU413
 1011              	.LBE68:
 1012              	.LBE67:
 454:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1013              		.loc 1 454 1 view .LVU414
 1014 0098 7047     		bx	lr
 1015              	.LVL98:
 1016              	.L123:
 1017              	.LBB69:
 1018              	.LBB56:
1249:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1019              		.loc 1 1249 8 is_stmt 1 view .LVU415
1251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP1BR, FLASH_WRP1BR_WRP1B_END) >> FLASH_WRP1BR_WRP1B_END_Pos
 1020              		.loc 1 1251 5 view .LVU416
1251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP1BR, FLASH_WRP1BR_WRP1B_END) >> FLASH_WRP1BR_WRP1B_END_Pos
 1021              		.loc 1 1251 23 is_stmt 0 view .LVU417
 1022 009a 1A6B     		ldr	r2, [r3, #48]
 1023              	.LVL99:
1251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP1BR, FLASH_WRP1BR_WRP1B_END) >> FLASH_WRP1BR_WRP1B_END_Pos
 1024              		.loc 1 1251 23 view .LVU418
 1025 009c 02F03F02 		and	r2, r2, #63
1251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     *WRDPEndOffset = (READ_BIT(FLASH->WRP1BR, FLASH_WRP1BR_WRP1B_END) >> FLASH_WRP1BR_WRP1B_END_Pos
 1026              		.loc 1 1251 21 view .LVU419
 1027 00a0 8260     		str	r2, [r0, #8]
1252:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1028              		.loc 1 1252 5 is_stmt 1 view .LVU420
1252:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1029              		.loc 1 1252 23 is_stmt 0 view .LVU421
 1030 00a2 1B6B     		ldr	r3, [r3, #48]
 1031 00a4 BBE7     		b	.L131
 1032              	.L133:
 1033 00a6 00BF     		.align	2
 1034              	.L132:
 1035 00a8 00200240 		.word	1073881088
 1036 00ac F8FF0100 		.word	131064
 1037              	.LBE56:
 1038              	.LBE69:
 1039              		.cfi_endproc
 1040              	.LFE328:
 1042              		.section	.text.HAL_FLASHEx_EnableSecMemProtection,"ax",%progbits
 1043              		.align	1
 1044              		.global	HAL_FLASHEx_EnableSecMemProtection
 1045              		.syntax unified
 1046              		.thumb
 1047              		.thumb_func
 1048              		.fpu fpv4-sp-d16
 1050              	HAL_FLASHEx_EnableSecMemProtection:
 1051              	.LVL100:
 1052              	.LFB329:
 467:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #if defined (FLASH_OPTR_DBANK)
 1053              		.loc 1 467 1 is_stmt 1 view -0
 1054              		.cfi_startproc
 1055              		@ args = 0, pretend = 0, frame = 0
 1056              		@ frame_needed = 0, uses_anonymous_args = 0
 1057              		@ link register save eliminated.
 489:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1058              		.loc 1 489 5 view .LVU423
 1059 0000 034A     		ldr	r2, .L135
 1060 0002 5369     		ldr	r3, [r2, #20]
 1061 0004 43F08053 		orr	r3, r3, #268435456
 1062 0008 5361     		str	r3, [r2, #20]
 492:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1063              		.loc 1 492 3 view .LVU424
 493:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1064              		.loc 1 493 1 is_stmt 0 view .LVU425
 1065 000a 0020     		movs	r0, #0
 1066              	.LVL101:
 493:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1067              		.loc 1 493 1 view .LVU426
 1068 000c 7047     		bx	lr
 1069              	.L136:
 1070 000e 00BF     		.align	2
 1071              	.L135:
 1072 0010 00200240 		.word	1073881088
 1073              		.cfi_endproc
 1074              	.LFE329:
 1076              		.section	.text.HAL_FLASHEx_EnableDebugger,"ax",%progbits
 1077              		.align	1
 1078              		.global	HAL_FLASHEx_EnableDebugger
 1079              		.syntax unified
 1080              		.thumb
 1081              		.thumb_func
 1082              		.fpu fpv4-sp-d16
 1084              	HAL_FLASHEx_EnableDebugger:
 1085              	.LFB330:
 501:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   FLASH->ACR |= FLASH_ACR_DBG_SWEN;
 1086              		.loc 1 501 1 is_stmt 1 view -0
 1087              		.cfi_startproc
 1088              		@ args = 0, pretend = 0, frame = 0
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090              		@ link register save eliminated.
 502:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1091              		.loc 1 502 3 view .LVU428
 502:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1092              		.loc 1 502 14 is_stmt 0 view .LVU429
 1093 0000 024A     		ldr	r2, .L138
 1094 0002 1368     		ldr	r3, [r2]
 1095 0004 43F48023 		orr	r3, r3, #262144
 1096 0008 1360     		str	r3, [r2]
 503:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1097              		.loc 1 503 1 view .LVU430
 1098 000a 7047     		bx	lr
 1099              	.L139:
 1100              		.align	2
 1101              	.L138:
 1102 000c 00200240 		.word	1073881088
 1103              		.cfi_endproc
 1104              	.LFE330:
 1106              		.section	.text.HAL_FLASHEx_DisableDebugger,"ax",%progbits
 1107              		.align	1
 1108              		.global	HAL_FLASHEx_DisableDebugger
 1109              		.syntax unified
 1110              		.thumb
 1111              		.thumb_func
 1112              		.fpu fpv4-sp-d16
 1114              	HAL_FLASHEx_DisableDebugger:
 1115              	.LFB331:
 513:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   FLASH->ACR &= ~FLASH_ACR_DBG_SWEN;
 1116              		.loc 1 513 1 is_stmt 1 view -0
 1117              		.cfi_startproc
 1118              		@ args = 0, pretend = 0, frame = 0
 1119              		@ frame_needed = 0, uses_anonymous_args = 0
 1120              		@ link register save eliminated.
 514:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1121              		.loc 1 514 3 view .LVU432
 514:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1122              		.loc 1 514 14 is_stmt 0 view .LVU433
 1123 0000 024A     		ldr	r2, .L141
 1124 0002 1368     		ldr	r3, [r2]
 1125 0004 23F48023 		bic	r3, r3, #262144
 1126 0008 1360     		str	r3, [r2]
 515:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1127              		.loc 1 515 1 view .LVU434
 1128 000a 7047     		bx	lr
 1129              	.L142:
 1130              		.align	2
 1131              	.L141:
 1132 000c 00200240 		.word	1073881088
 1133              		.cfi_endproc
 1134              	.LFE331:
 1136              		.section	.text.FLASH_PageErase,"ax",%progbits
 1137              		.align	1
 1138              		.global	FLASH_PageErase
 1139              		.syntax unified
 1140              		.thumb
 1141              		.thumb_func
 1142              		.fpu fpv4-sp-d16
 1144              	FLASH_PageErase:
 1145              	.LVL102:
 1146              	.LFB333:
 586:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   /* Check the parameters */
 1147              		.loc 1 586 1 is_stmt 1 view -0
 1148              		.cfi_startproc
 1149              		@ args = 0, pretend = 0, frame = 0
 1150              		@ frame_needed = 0, uses_anonymous_args = 0
 1151              		@ link register save eliminated.
 588:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1152              		.loc 1 588 3 view .LVU436
 611:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   SET_BIT(FLASH->CR, FLASH_CR_PER);
 1153              		.loc 1 611 3 view .LVU437
 1154 0000 084B     		ldr	r3, .L144
 1155 0002 5A69     		ldr	r2, [r3, #20]
 1156 0004 C000     		lsls	r0, r0, #3
 1157              	.LVL103:
 611:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   SET_BIT(FLASH->CR, FLASH_CR_PER);
 1158              		.loc 1 611 3 is_stmt 0 view .LVU438
 1159 0006 22F4FC72 		bic	r2, r2, #504
 1160 000a 00F4FF60 		and	r0, r0, #2040
 1161 000e 1043     		orrs	r0, r0, r2
 1162 0010 5861     		str	r0, [r3, #20]
 612:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   SET_BIT(FLASH->CR, FLASH_CR_STRT);
 1163              		.loc 1 612 3 is_stmt 1 view .LVU439
 1164 0012 5A69     		ldr	r2, [r3, #20]
 1165 0014 42F00202 		orr	r2, r2, #2
 1166 0018 5A61     		str	r2, [r3, #20]
 613:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1167              		.loc 1 613 3 view .LVU440
 1168 001a 5A69     		ldr	r2, [r3, #20]
 1169 001c 42F48032 		orr	r2, r2, #65536
 1170 0020 5A61     		str	r2, [r3, #20]
 614:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1171              		.loc 1 614 1 is_stmt 0 view .LVU441
 1172 0022 7047     		bx	lr
 1173              	.L145:
 1174              		.align	2
 1175              	.L144:
 1176 0024 00200240 		.word	1073881088
 1177              		.cfi_endproc
 1178              	.LFE333:
 1180              		.section	.text.HAL_FLASHEx_Erase_IT,"ax",%progbits
 1181              		.align	1
 1182              		.global	HAL_FLASHEx_Erase_IT
 1183              		.syntax unified
 1184              		.thumb
 1185              		.thumb_func
 1186              		.fpu fpv4-sp-d16
 1188              	HAL_FLASHEx_Erase_IT:
 1189              	.LVL104:
 1190              	.LFB326:
 242:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 1191              		.loc 1 242 1 is_stmt 1 view -0
 1192              		.cfi_startproc
 1193              		@ args = 0, pretend = 0, frame = 0
 1194              		@ frame_needed = 0, uses_anonymous_args = 0
 243:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1195              		.loc 1 243 3 view .LVU443
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1196              		.loc 1 246 3 view .LVU444
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1197              		.loc 1 246 3 view .LVU445
 1198 0000 214B     		ldr	r3, .L156
 1199 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1200 0004 012A     		cmp	r2, #1
 242:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status = HAL_OK;
 1201              		.loc 1 242 1 is_stmt 0 view .LVU446
 1202 0006 10B5     		push	{r4, lr}
 1203              		.cfi_def_cfa_offset 8
 1204              		.cfi_offset 4, -8
 1205              		.cfi_offset 14, -4
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1206              		.loc 1 246 3 view .LVU447
 1207 0008 3CD0     		beq	.L153
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1208              		.loc 1 246 3 is_stmt 1 discriminator 2 view .LVU448
 251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1209              		.loc 1 251 20 is_stmt 0 discriminator 2 view .LVU449
 1210 000a 0022     		movs	r2, #0
 1211 000c 5A60     		str	r2, [r3, #4]
 254:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1212              		.loc 1 254 7 discriminator 2 view .LVU450
 1213 000e 1F4A     		ldr	r2, .L156+4
 1214 0010 1168     		ldr	r1, [r2]
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1215              		.loc 1 246 3 discriminator 2 view .LVU451
 1216 0012 0124     		movs	r4, #1
 254:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1217              		.loc 1 254 6 discriminator 2 view .LVU452
 1218 0014 11F4007F 		tst	r1, #512
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1219              		.loc 1 246 3 discriminator 2 view .LVU453
 1220 0018 1C70     		strb	r4, [r3]
 249:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1221              		.loc 1 249 3 is_stmt 1 discriminator 2 view .LVU454
 251:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1222              		.loc 1 251 3 discriminator 2 view .LVU455
 254:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1223              		.loc 1 254 3 discriminator 2 view .LVU456
 257:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1224              		.loc 1 257 5 is_stmt 0 discriminator 2 view .LVU457
 1225 001a 1168     		ldr	r1, [r2]
 254:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1226              		.loc 1 254 6 discriminator 2 view .LVU458
 1227 001c 1ED0     		beq	.L148
 257:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1228              		.loc 1 257 5 is_stmt 1 view .LVU459
 1229 001e 21F40071 		bic	r1, r1, #512
 1230 0022 1160     		str	r1, [r2]
 259:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1231              		.loc 1 259 5 view .LVU460
 259:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1232              		.loc 1 259 9 is_stmt 0 view .LVU461
 1233 0024 1168     		ldr	r1, [r2]
 259:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1234              		.loc 1 259 8 view .LVU462
 1235 0026 4905     		lsls	r1, r1, #21
 1236 0028 06D5     		bpl	.L149
 262:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       pFlash.CacheToReactivate = FLASH_CACHE_ICACHE_DCACHE_ENABLED;
 1237              		.loc 1 262 7 is_stmt 1 view .LVU463
 1238 002a 1168     		ldr	r1, [r2]
 1239 002c 21F48061 		bic	r1, r1, #1024
 1240 0030 1160     		str	r1, [r2]
 263:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1241              		.loc 1 263 7 view .LVU464
 263:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1242              		.loc 1 263 32 is_stmt 0 view .LVU465
 1243 0032 0322     		movs	r2, #3
 1244              	.L154:
 274:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1245              		.loc 1 274 30 view .LVU466
 1246 0034 1A77     		strb	r2, [r3, #28]
 1247 0036 00E0     		b	.L150
 1248              	.L149:
 267:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1249              		.loc 1 267 7 is_stmt 1 view .LVU467
 267:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1250              		.loc 1 267 32 is_stmt 0 view .LVU468
 1251 0038 1C77     		strb	r4, [r3, #28]
 1252              	.L150:
 282:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1253              		.loc 1 282 3 is_stmt 1 discriminator 4 view .LVU469
 282:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1254              		.loc 1 282 3 discriminator 4 view .LVU470
 282:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1255              		.loc 1 282 3 discriminator 4 view .LVU471
 282:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1256              		.loc 1 282 3 discriminator 4 view .LVU472
 1257 003a 1449     		ldr	r1, .L156+4
 1258 003c 4A69     		ldr	r2, [r1, #20]
 1259 003e 42F04072 		orr	r2, r2, #50331648
 1260 0042 4A61     		str	r2, [r1, #20]
 284:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1261              		.loc 1 284 3 discriminator 4 view .LVU473
 286:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1262              		.loc 1 286 6 is_stmt 0 discriminator 4 view .LVU474
 1263 0044 0268     		ldr	r2, [r0]
 284:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1264              		.loc 1 284 27 discriminator 4 view .LVU475
 1265 0046 4168     		ldr	r1, [r0, #4]
 284:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1266              		.loc 1 284 15 discriminator 4 view .LVU476
 1267 0048 1961     		str	r1, [r3, #16]
 286:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1268              		.loc 1 286 3 is_stmt 1 discriminator 4 view .LVU477
 286:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1269              		.loc 1 286 6 is_stmt 0 discriminator 4 view .LVU478
 1270 004a 012A     		cmp	r2, #1
 1271 004c 11D1     		bne	.L152
 289:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_MassErase(pEraseInit->Banks);
 1272              		.loc 1 289 5 is_stmt 1 view .LVU479
 289:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_MassErase(pEraseInit->Banks);
 1273              		.loc 1 289 29 is_stmt 0 view .LVU480
 1274 004e 0222     		movs	r2, #2
 290:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1275              		.loc 1 290 5 view .LVU481
 1276 0050 0846     		mov	r0, r1
 1277              	.LVL105:
 289:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     FLASH_MassErase(pEraseInit->Banks);
 1278              		.loc 1 289 29 view .LVU482
 1279 0052 1A72     		strb	r2, [r3, #8]
 290:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1280              		.loc 1 290 5 is_stmt 1 view .LVU483
 1281 0054 FFF7FEFF 		bl	FLASH_MassErase
 1282              	.LVL106:
 1283              	.L155:
 303:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1284              		.loc 1 303 10 is_stmt 0 view .LVU484
 1285 0058 0020     		movs	r0, #0
 1286              	.L147:
 304:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1287              		.loc 1 304 1 view .LVU485
 1288 005a 10BD     		pop	{r4, pc}
 1289              	.LVL107:
 1290              	.L148:
 270:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1291              		.loc 1 270 8 is_stmt 1 view .LVU486
 270:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1292              		.loc 1 270 11 is_stmt 0 view .LVU487
 1293 005c 11F48061 		ands	r1, r1, #1024
 1294 0060 05D0     		beq	.L151
 273:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.CacheToReactivate = FLASH_CACHE_DCACHE_ENABLED;
 1295              		.loc 1 273 5 is_stmt 1 view .LVU488
 1296 0062 1168     		ldr	r1, [r2]
 1297 0064 21F48061 		bic	r1, r1, #1024
 1298 0068 1160     		str	r1, [r2]
 274:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1299              		.loc 1 274 5 view .LVU489
 274:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1300              		.loc 1 274 30 is_stmt 0 view .LVU490
 1301 006a 0222     		movs	r2, #2
 1302 006c E2E7     		b	.L154
 1303              	.L151:
 278:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1304              		.loc 1 278 5 is_stmt 1 view .LVU491
 278:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1305              		.loc 1 278 30 is_stmt 0 view .LVU492
 1306 006e 1977     		strb	r1, [r3, #28]
 1307 0070 E3E7     		b	.L150
 1308              	.L152:
 295:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.NbPagesToErase = pEraseInit->NbPages;
 1309              		.loc 1 295 5 is_stmt 1 view .LVU493
 295:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.NbPagesToErase = pEraseInit->NbPages;
 1310              		.loc 1 295 29 is_stmt 0 view .LVU494
 1311 0072 0122     		movs	r2, #1
 1312 0074 1A72     		strb	r2, [r3, #8]
 296:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.Page = pEraseInit->Page;
 1313              		.loc 1 296 5 is_stmt 1 view .LVU495
 296:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.Page = pEraseInit->Page;
 1314              		.loc 1 296 39 is_stmt 0 view .LVU496
 1315 0076 C268     		ldr	r2, [r0, #12]
 297:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1316              		.loc 1 297 29 view .LVU497
 1317 0078 8068     		ldr	r0, [r0, #8]
 1318              	.LVL108:
 296:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     pFlash.Page = pEraseInit->Page;
 1319              		.loc 1 296 27 view .LVU498
 1320 007a 9A61     		str	r2, [r3, #24]
 297:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1321              		.loc 1 297 5 is_stmt 1 view .LVU499
 297:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1322              		.loc 1 297 17 is_stmt 0 view .LVU500
 1323 007c 5861     		str	r0, [r3, #20]
 300:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1324              		.loc 1 300 5 is_stmt 1 view .LVU501
 1325 007e FFF7FEFF 		bl	FLASH_PageErase
 1326              	.LVL109:
 1327 0082 E9E7     		b	.L155
 1328              	.LVL110:
 1329              	.L153:
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1330              		.loc 1 246 3 is_stmt 0 view .LVU502
 1331 0084 0220     		movs	r0, #2
 1332              	.LVL111:
 246:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1333              		.loc 1 246 3 view .LVU503
 1334 0086 E8E7     		b	.L147
 1335              	.L157:
 1336              		.align	2
 1337              	.L156:
 1338 0088 00000000 		.word	pFlash
 1339 008c 00200240 		.word	1073881088
 1340              		.cfi_endproc
 1341              	.LFE326:
 1343              		.section	.text.FLASH_FlushCaches,"ax",%progbits
 1344              		.align	1
 1345              		.global	FLASH_FlushCaches
 1346              		.syntax unified
 1347              		.thumb
 1348              		.thumb_func
 1349              		.fpu fpv4-sp-d16
 1351              	FLASH_FlushCaches:
 1352              	.LFB334:
 621:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   FLASH_CacheTypeDef cache = pFlash.CacheToReactivate;
 1353              		.loc 1 621 1 is_stmt 1 view -0
 1354              		.cfi_startproc
 1355              		@ args = 0, pretend = 0, frame = 0
 1356              		@ frame_needed = 0, uses_anonymous_args = 0
 1357              		@ link register save eliminated.
 622:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1358              		.loc 1 622 3 view .LVU505
 622:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1359              		.loc 1 622 22 is_stmt 0 view .LVU506
 1360 0000 1349     		ldr	r1, .L161
 1361 0002 0B7F     		ldrb	r3, [r1, #28]	@ zero_extendqisi2
 1362 0004 DBB2     		uxtb	r3, r3
 1363              	.LVL112:
 625:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (cache == FLASH_CACHE_ICACHE_DCACHE_ENABLED))
 1364              		.loc 1 625 3 is_stmt 1 view .LVU507
 625:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (cache == FLASH_CACHE_ICACHE_DCACHE_ENABLED))
 1365              		.loc 1 625 6 is_stmt 0 view .LVU508
 1366 0006 03F0FD02 		and	r2, r3, #253
 1367 000a 012A     		cmp	r2, #1
 1368 000c 0CD1     		bne	.L159
 629:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable instruction cache */
 1369              		.loc 1 629 5 is_stmt 1 view .LVU509
 629:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable instruction cache */
 1370              		.loc 1 629 5 view .LVU510
 1371 000e 114A     		ldr	r2, .L161+4
 1372 0010 1068     		ldr	r0, [r2]
 1373 0012 40F40060 		orr	r0, r0, #2048
 1374 0016 1060     		str	r0, [r2]
 629:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable instruction cache */
 1375              		.loc 1 629 5 view .LVU511
 1376 0018 1068     		ldr	r0, [r2]
 1377 001a 20F40060 		bic	r0, r0, #2048
 1378 001e 1060     		str	r0, [r2]
 631:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1379              		.loc 1 631 5 view .LVU512
 1380 0020 1068     		ldr	r0, [r2]
 1381 0022 40F40070 		orr	r0, r0, #512
 1382 0026 1060     		str	r0, [r2]
 1383              	.L159:
 635:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (cache == FLASH_CACHE_ICACHE_DCACHE_ENABLED))
 1384              		.loc 1 635 3 view .LVU513
 635:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (cache == FLASH_CACHE_ICACHE_DCACHE_ENABLED))
 1385              		.loc 1 635 6 is_stmt 0 view .LVU514
 1386 0028 023B     		subs	r3, r3, #2
 1387              	.LVL113:
 635:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       (cache == FLASH_CACHE_ICACHE_DCACHE_ENABLED))
 1388              		.loc 1 635 6 view .LVU515
 1389 002a 012B     		cmp	r3, #1
 1390 002c 0CD8     		bhi	.L160
 639:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable data cache */
 1391              		.loc 1 639 5 is_stmt 1 view .LVU516
 639:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable data cache */
 1392              		.loc 1 639 5 view .LVU517
 1393 002e 094B     		ldr	r3, .L161+4
 1394              	.LVL114:
 639:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable data cache */
 1395              		.loc 1 639 5 is_stmt 0 view .LVU518
 1396 0030 1A68     		ldr	r2, [r3]
 1397 0032 42F48052 		orr	r2, r2, #4096
 1398 0036 1A60     		str	r2, [r3]
 639:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     /* Enable data cache */
 1399              		.loc 1 639 5 is_stmt 1 view .LVU519
 1400 0038 1A68     		ldr	r2, [r3]
 1401 003a 22F48052 		bic	r2, r2, #4096
 1402 003e 1A60     		str	r2, [r3]
 641:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1403              		.loc 1 641 5 view .LVU520
 1404 0040 1A68     		ldr	r2, [r3]
 1405 0042 42F48062 		orr	r2, r2, #1024
 1406 0046 1A60     		str	r2, [r3]
 1407              	.L160:
 645:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1408              		.loc 1 645 3 view .LVU521
 645:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1409              		.loc 1 645 28 is_stmt 0 view .LVU522
 1410 0048 0023     		movs	r3, #0
 1411 004a 0B77     		strb	r3, [r1, #28]
 646:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1412              		.loc 1 646 1 view .LVU523
 1413 004c 7047     		bx	lr
 1414              	.L162:
 1415 004e 00BF     		.align	2
 1416              	.L161:
 1417 0050 00000000 		.word	pFlash
 1418 0054 00200240 		.word	1073881088
 1419              		.cfi_endproc
 1420              	.LFE334:
 1422              		.section	.text.HAL_FLASHEx_Erase,"ax",%progbits
 1423              		.align	1
 1424              		.global	HAL_FLASHEx_Erase
 1425              		.syntax unified
 1426              		.thumb
 1427              		.thumb_func
 1428              		.fpu fpv4-sp-d16
 1430              	HAL_FLASHEx_Erase:
 1431              	.LVL115:
 1432              	.LFB325:
 140:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 1433              		.loc 1 140 1 is_stmt 1 view -0
 1434              		.cfi_startproc
 1435              		@ args = 0, pretend = 0, frame = 0
 1436              		@ frame_needed = 0, uses_anonymous_args = 0
 141:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   uint32_t page_index;
 1437              		.loc 1 141 3 view .LVU525
 142:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1438              		.loc 1 142 3 view .LVU526
 145:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1439              		.loc 1 145 3 view .LVU527
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1440              		.loc 1 148 3 view .LVU528
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1441              		.loc 1 148 3 view .LVU529
 140:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 1442              		.loc 1 140 1 is_stmt 0 view .LVU530
 1443 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1444              		.cfi_def_cfa_offset 32
 1445              		.cfi_offset 3, -32
 1446              		.cfi_offset 4, -28
 1447              		.cfi_offset 5, -24
 1448              		.cfi_offset 6, -20
 1449              		.cfi_offset 7, -16
 1450              		.cfi_offset 8, -12
 1451              		.cfi_offset 9, -8
 1452              		.cfi_offset 14, -4
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1453              		.loc 1 148 3 view .LVU531
 1454 0004 334C     		ldr	r4, .L177
 1455 0006 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1456 0008 012B     		cmp	r3, #1
 140:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   HAL_StatusTypeDef status;
 1457              		.loc 1 140 1 view .LVU532
 1458 000a 0646     		mov	r6, r0
 1459 000c 8846     		mov	r8, r1
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1460              		.loc 1 148 3 view .LVU533
 1461 000e 5ED0     		beq	.L175
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1462              		.loc 1 148 3 is_stmt 1 discriminator 2 view .LVU534
 1463 0010 0127     		movs	r7, #1
 151:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1464              		.loc 1 151 12 is_stmt 0 discriminator 2 view .LVU535
 1465 0012 4FF47A70 		mov	r0, #1000
 1466              	.LVL116:
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1467              		.loc 1 148 3 discriminator 2 view .LVU536
 1468 0016 2770     		strb	r7, [r4]
 151:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1469              		.loc 1 151 3 is_stmt 1 discriminator 2 view .LVU537
 151:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1470              		.loc 1 151 12 is_stmt 0 discriminator 2 view .LVU538
 1471 0018 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 1472              	.LVL117:
 153:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1473              		.loc 1 153 3 is_stmt 1 discriminator 2 view .LVU539
 153:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   {
 1474              		.loc 1 153 6 is_stmt 0 discriminator 2 view .LVU540
 1475 001c 0546     		mov	r5, r0
 1476 001e 30BB     		cbnz	r0, .L165
 155:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1477              		.loc 1 155 5 is_stmt 1 view .LVU541
 158:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1478              		.loc 1 158 9 is_stmt 0 view .LVU542
 1479 0020 2D4B     		ldr	r3, .L177+4
 155:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1480              		.loc 1 155 22 view .LVU543
 1481 0022 6060     		str	r0, [r4, #4]
 158:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1482              		.loc 1 158 5 is_stmt 1 view .LVU544
 158:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1483              		.loc 1 158 9 is_stmt 0 view .LVU545
 1484 0024 1A68     		ldr	r2, [r3]
 158:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1485              		.loc 1 158 8 view .LVU546
 1486 0026 12F4007F 		tst	r2, #512
 161:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1487              		.loc 1 161 7 view .LVU547
 1488 002a 1A68     		ldr	r2, [r3]
 158:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1489              		.loc 1 158 8 view .LVU548
 1490 002c 24D0     		beq	.L166
 161:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1491              		.loc 1 161 7 is_stmt 1 view .LVU549
 1492 002e 22F40072 		bic	r2, r2, #512
 1493 0032 1A60     		str	r2, [r3]
 163:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1494              		.loc 1 163 7 view .LVU550
 163:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1495              		.loc 1 163 11 is_stmt 0 view .LVU551
 1496 0034 1A68     		ldr	r2, [r3]
 163:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1497              		.loc 1 163 10 view .LVU552
 1498 0036 5105     		lsls	r1, r2, #21
 1499 0038 06D5     		bpl	.L167
 166:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         pFlash.CacheToReactivate = FLASH_CACHE_ICACHE_DCACHE_ENABLED;
 1500              		.loc 1 166 9 is_stmt 1 view .LVU553
 1501 003a 1A68     		ldr	r2, [r3]
 1502 003c 22F48062 		bic	r2, r2, #1024
 1503 0040 1A60     		str	r2, [r3]
 167:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 1504              		.loc 1 167 9 view .LVU554
 167:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 1505              		.loc 1 167 34 is_stmt 0 view .LVU555
 1506 0042 0323     		movs	r3, #3
 1507              	.L176:
 178:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1508              		.loc 1 178 32 view .LVU556
 1509 0044 2377     		strb	r3, [r4, #28]
 1510 0046 00E0     		b	.L168
 1511              	.L167:
 171:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 1512              		.loc 1 171 9 is_stmt 1 view .LVU557
 171:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       }
 1513              		.loc 1 171 34 is_stmt 0 view .LVU558
 1514 0048 2777     		strb	r7, [r4, #28]
 1515              	.L168:
 185:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1516              		.loc 1 185 5 is_stmt 1 view .LVU559
 185:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1517              		.loc 1 185 8 is_stmt 0 view .LVU560
 1518 004a 3368     		ldr	r3, [r6]
 1519 004c 012B     		cmp	r3, #1
 1520 004e 1DD1     		bne	.L170
 188:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1521              		.loc 1 188 7 is_stmt 1 view .LVU561
 1522 0050 7068     		ldr	r0, [r6, #4]
 1523              	.LVL118:
 188:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1524              		.loc 1 188 7 is_stmt 0 view .LVU562
 1525 0052 FFF7FEFF 		bl	FLASH_MassErase
 1526              	.LVL119:
 191:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1527              		.loc 1 191 7 is_stmt 1 view .LVU563
 191:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1528              		.loc 1 191 16 is_stmt 0 view .LVU564
 1529 0056 4FF47A70 		mov	r0, #1000
 1530 005a FFF7FEFF 		bl	FLASH_WaitForLastOperation
 1531              	.LVL120:
 198:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 1532              		.loc 1 198 7 view .LVU565
 1533 005e 1E4A     		ldr	r2, .L177+4
 1534 0060 5369     		ldr	r3, [r2, #20]
 1535 0062 23F00403 		bic	r3, r3, #4
 191:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1536              		.loc 1 191 16 view .LVU566
 1537 0066 0546     		mov	r5, r0
 1538              	.LVL121:
 198:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** #endif
 1539              		.loc 1 198 7 is_stmt 1 view .LVU567
 1540 0068 5361     		str	r3, [r2, #20]
 1541              	.LVL122:
 1542              	.L171:
 226:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****   }
 1543              		.loc 1 226 5 view .LVU568
 1544 006a FFF7FEFF 		bl	FLASH_FlushCaches
 1545              	.LVL123:
 1546              	.L165:
 230:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1547              		.loc 1 230 3 view .LVU569
 230:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1548              		.loc 1 230 3 view .LVU570
 1549 006e 0023     		movs	r3, #0
 1550 0070 2370     		strb	r3, [r4]
 232:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** }
 1551              		.loc 1 232 3 view .LVU571
 1552              	.LVL124:
 1553              	.L164:
 233:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1554              		.loc 1 233 1 is_stmt 0 view .LVU572
 1555 0072 2846     		mov	r0, r5
 1556 0074 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1557              	.LVL125:
 1558              	.L166:
 174:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1559              		.loc 1 174 10 is_stmt 1 view .LVU573
 174:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     {
 1560              		.loc 1 174 13 is_stmt 0 view .LVU574
 1561 0078 5205     		lsls	r2, r2, #21
 1562 007a 05D5     		bpl	.L169
 177:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       pFlash.CacheToReactivate = FLASH_CACHE_DCACHE_ENABLED;
 1563              		.loc 1 177 7 is_stmt 1 view .LVU575
 1564 007c 1A68     		ldr	r2, [r3]
 1565 007e 22F48062 		bic	r2, r2, #1024
 1566 0082 1A60     		str	r2, [r3]
 178:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1567              		.loc 1 178 7 view .LVU576
 178:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1568              		.loc 1 178 32 is_stmt 0 view .LVU577
 1569 0084 0223     		movs	r3, #2
 1570 0086 DDE7     		b	.L176
 1571              	.L169:
 182:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1572              		.loc 1 182 7 is_stmt 1 view .LVU578
 182:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****     }
 1573              		.loc 1 182 32 is_stmt 0 view .LVU579
 1574 0088 2077     		strb	r0, [r4, #28]
 1575 008a DEE7     		b	.L168
 1576              	.L170:
 204:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1577              		.loc 1 204 7 is_stmt 1 view .LVU580
 204:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1578              		.loc 1 204 18 is_stmt 0 view .LVU581
 1579 008c 4FF0FF33 		mov	r3, #-1
 1580 0090 C8F80030 		str	r3, [r8]
 206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1581              		.loc 1 206 7 is_stmt 1 view .LVU582
 206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1582              		.loc 1 206 23 is_stmt 0 view .LVU583
 1583 0094 B768     		ldr	r7, [r6, #8]
 1584              	.LVL126:
 214:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1585              		.loc 1 214 9 view .LVU584
 1586 0096 DFF84090 		ldr	r9, .L177+4
 1587              	.L172:
 1588              	.LVL127:
 206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1589              		.loc 1 206 74 discriminator 1 view .LVU585
 1590 009a D6E90232 		ldrd	r3, r2, [r6, #8]
 1591 009e 1344     		add	r3, r3, r2
 206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1592              		.loc 1 206 7 discriminator 1 view .LVU586
 1593 00a0 BB42     		cmp	r3, r7
 1594 00a2 E2D9     		bls	.L171
 208:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1595              		.loc 1 208 9 is_stmt 1 view .LVU587
 1596 00a4 7168     		ldr	r1, [r6, #4]
 1597 00a6 3846     		mov	r0, r7
 1598 00a8 FFF7FEFF 		bl	FLASH_PageErase
 1599              	.LVL128:
 211:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1600              		.loc 1 211 9 view .LVU588
 211:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1601              		.loc 1 211 18 is_stmt 0 view .LVU589
 1602 00ac 4FF47A70 		mov	r0, #1000
 1603 00b0 FFF7FEFF 		bl	FLASH_WaitForLastOperation
 1604              	.LVL129:
 214:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1605              		.loc 1 214 9 is_stmt 1 view .LVU590
 1606 00b4 D9F81430 		ldr	r3, [r9, #20]
 1607 00b8 23F4FD73 		bic	r3, r3, #506
 1608 00bc C9F81430 		str	r3, [r9, #20]
 216:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         {
 1609              		.loc 1 216 9 view .LVU591
 216:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         {
 1610              		.loc 1 216 12 is_stmt 0 view .LVU592
 1611 00c0 18B1     		cbz	r0, .L173
 219:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****           break;
 1612              		.loc 1 219 11 is_stmt 1 view .LVU593
 219:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****           break;
 1613              		.loc 1 219 22 is_stmt 0 view .LVU594
 1614 00c2 C8F80070 		str	r7, [r8]
 220:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         }
 1615              		.loc 1 220 11 is_stmt 1 view .LVU595
 211:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1616              		.loc 1 211 18 is_stmt 0 view .LVU596
 1617 00c6 0546     		mov	r5, r0
 220:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****         }
 1618              		.loc 1 220 11 view .LVU597
 1619 00c8 CFE7     		b	.L171
 1620              	.L173:
 206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1621              		.loc 1 206 108 discriminator 2 view .LVU598
 1622 00ca 0137     		adds	r7, r7, #1
 1623              	.LVL130:
 206:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c ****       {
 1624              		.loc 1 206 108 discriminator 2 view .LVU599
 1625 00cc E5E7     		b	.L172
 1626              	.LVL131:
 1627              	.L175:
 148:../../..\CubeG4\src/stm32g4xx_hal_flash_ex.c **** 
 1628              		.loc 1 148 3 view .LVU600
 1629 00ce 0225     		movs	r5, #2
 1630 00d0 CFE7     		b	.L164
 1631              	.L178:
 1632 00d2 00BF     		.align	2
 1633              	.L177:
 1634 00d4 00000000 		.word	pFlash
 1635 00d8 00200240 		.word	1073881088
 1636              		.cfi_endproc
 1637              	.LFE325:
 1639              		.text
 1640              	.Letext0:
 1641              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1642              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 1643              		.file 4 "../../..\\CubeG4\\include/core_cm4.h"
 1644              		.file 5 "../../..\\CubeG4\\include/system_stm32g4xx.h"
 1645              		.file 6 "../../..\\CubeG4\\include/stm32g431xx.h"
 1646              		.file 7 "../../..\\CubeG4\\include/stm32g4xx_hal_def.h"
 1647              		.file 8 "../../..\\CubeG4\\include/stm32g4xx_hal_flash.h"
 1648              		.file 9 "../../..\\CubeG4\\include/stm32g4xx_hal.h"
