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
  13              		.file	"system.cpp"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text._ZN3hal8sys_tick8delay_msEm,"ax",%progbits
  18              		.align	1
  19              		.global	_ZN3hal8sys_tick8delay_msEm
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	_ZN3hal8sys_tick8delay_msEm:
  27              	.LVL0:
  28              	.LFB143:
  29              		.file 1 "../../..\\hal\\src\\system.cpp"
   1:../../..\hal\src/system.cpp **** #include <hal.h>
   2:../../..\hal\src/system.cpp **** 
   3:../../..\hal\src/system.cpp **** namespace hal
   4:../../..\hal\src/system.cpp **** {
   5:../../..\hal\src/system.cpp **** 
   6:../../..\hal\src/system.cpp **** using namespace device;
   7:../../..\hal\src/system.cpp **** 
   8:../../..\hal\src/system.cpp **** namespace internal
   9:../../..\hal\src/system.cpp **** {
  10:../../..\hal\src/system.cpp **** 
  11:../../..\hal\src/system.cpp **** template<uint32_t x, uint32_t b, uint8_t nbits>
  12:../../..\hal\src/system.cpp **** static constexpr uint32_t encode()
  13:../../..\hal\src/system.cpp **** {
  14:../../..\hal\src/system.cpp ****     static_assert(x < (1 << nbits), "bit field overflow");
  15:../../..\hal\src/system.cpp ****     return ((x & (1 << 0)) ? (b << 0) : 0)
  16:../../..\hal\src/system.cpp ****          | ((x & (1 << 1)) ? (b << 1) : 0)
  17:../../..\hal\src/system.cpp ****          | ((x & (1 << 2)) ? (b << 2) : 0)
  18:../../..\hal\src/system.cpp ****          | ((x & (1 << 3)) ? (b << 3) : 0)
  19:../../..\hal\src/system.cpp ****          | ((x & (1 << 4)) ? (b << 4) : 0)
  20:../../..\hal\src/system.cpp ****          | ((x & (1 << 5)) ? (b << 5) : 0)
  21:../../..\hal\src/system.cpp ****          | ((x & (1 << 6)) ? (b << 6) : 0)
  22:../../..\hal\src/system.cpp ****          | ((x & (1 << 7)) ? (b << 7) : 0)
  23:../../..\hal\src/system.cpp ****          | ((x & (1 << 8)) ? (b << 8) : 0)
  24:../../..\hal\src/system.cpp ****          ;
  25:../../..\hal\src/system.cpp **** }
  26:../../..\hal\src/system.cpp **** 
  27:../../..\hal\src/system.cpp **** } // namespace internal
  28:../../..\hal\src/system.cpp **** 
  29:../../..\hal\src/system.cpp **** void sys_tick::delay_ms(uint32_t ms)
  30:../../..\hal\src/system.cpp **** {
  30              		.loc 1 30 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
  31:../../..\hal\src/system.cpp ****     uint32_t now = ms_counter, then = now + ms;
  35              		.loc 1 31 5 view .LVU1
  36              		.loc 1 31 20 is_stmt 0 view .LVU2
  37 0000 044B     		ldr	r3, .L5
  38 0002 1A68     		ldr	r2, [r3]
  39              	.LVL1:
  40              		.loc 1 31 32 view .LVU3
  41 0004 1044     		add	r0, r0, r2
  42              	.LVL2:
  43              	.L3:
  32:../../..\hal\src/system.cpp **** 
  33:../../..\hal\src/system.cpp ****     while (ms_counter >= now && ms_counter < then)
  44              		.loc 1 33 5 is_stmt 1 view .LVU4
  45              		.loc 1 33 23 is_stmt 0 view .LVU5
  46 0006 1968     		ldr	r1, [r3]
  47              		.loc 1 33 30 view .LVU6
  48 0008 9142     		cmp	r1, r2
  49 000a 02D3     		bcc	.L1
  50              		.loc 1 33 44 discriminator 1 view .LVU7
  51 000c 1968     		ldr	r1, [r3]
  52              		.loc 1 33 30 discriminator 1 view .LVU8
  53 000e 8142     		cmp	r1, r0
  54 0010 F9D3     		bcc	.L3
  55              	.L1:
  34:../../..\hal\src/system.cpp ****         ;   // busy wait
  35:../../..\hal\src/system.cpp **** }
  56              		.loc 1 35 1 view .LVU9
  57 0012 7047     		bx	lr
  58              	.L6:
  59              		.align	2
  60              	.L5:
  61 0014 00000000 		.word	.LANCHOR0
  62              		.cfi_endproc
  63              	.LFE143:
  65              		.section	.text._ZN3hal8sys_tick4initEm,"ax",%progbits
  66              		.align	1
  67              		.global	_ZN3hal8sys_tick4initEm
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu fpv4-sp-d16
  73              	_ZN3hal8sys_tick4initEm:
  74              	.LVL3:
  75              	.LFB144:
  36:../../..\hal\src/system.cpp **** 
  37:../../..\hal\src/system.cpp **** void sys_tick::init(uint32_t n)
  38:../../..\hal\src/system.cpp **** {
  76              		.loc 1 38 1 is_stmt 1 view -0
  77              		.cfi_startproc
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  39:../../..\hal\src/system.cpp ****     using namespace hal;
  81              		.loc 1 39 5 view .LVU11
  40:../../..\hal\src/system.cpp ****     typedef stk_t _;
  82              		.loc 1 40 5 view .LVU12
  41:../../..\hal\src/system.cpp **** 
  42:../../..\hal\src/system.cpp ****     ms_counter = 0;                             // start new epoq
  83              		.loc 1 42 5 view .LVU13
  84              		.loc 1 42 16 is_stmt 0 view .LVU14
  85 0000 084B     		ldr	r3, .L8
  86 0002 0022     		movs	r2, #0
  87 0004 1A60     		str	r2, [r3]
  43:../../..\hal\src/system.cpp **** 
  44:../../..\hal\src/system.cpp **** #if defined(STM32F051) || defined(STM32G070)
  45:../../..\hal\src/system.cpp ****     STK.CSR = _::CSR_RESET_VALUE;               // reset controls
  46:../../..\hal\src/system.cpp ****     STK.RVR = n - 1;                            // reload value
  47:../../..\hal\src/system.cpp ****     STK.CVR = _::CVR_RESET_VALUE;               // current counter value
  48:../../..\hal\src/system.cpp ****     STK.CSR |= _::CSR_CLKSOURCE;                // systick clock source
  49:../../..\hal\src/system.cpp ****     STK.CSR |= _::CSR_ENABLE | _::CSR_TICKINT;  // enable counter & interrupts
  50:../../..\hal\src/system.cpp **** #elif defined(STM32F103) || defined(STM32F411) || defined(STM32G431)
  51:../../..\hal\src/system.cpp ****     STK.CTRL = _::CTRL_RESET_VALUE;                 // reset controls
  88              		.loc 1 51 5 is_stmt 1 view .LVU15
  89              		.loc 1 51 14 is_stmt 0 view .LVU16
  90 0006 084B     		ldr	r3, .L8+4
  52:../../..\hal\src/system.cpp ****     STK.LOAD = n - 1;                               // reload value
  91              		.loc 1 52 18 view .LVU17
  92 0008 0138     		subs	r0, r0, #1
  93              	.LVL4:
  51:../../..\hal\src/system.cpp ****     STK.LOAD = n - 1;                               // reload value
  94              		.loc 1 51 14 view .LVU18
  95 000a 1A60     		str	r2, [r3]
  96              		.loc 1 52 5 is_stmt 1 view .LVU19
  97              		.loc 1 52 14 is_stmt 0 view .LVU20
  98 000c 5860     		str	r0, [r3, #4]
  53:../../..\hal\src/system.cpp ****     STK.VAL = _::VAL_RESET_VALUE;                   // current counter value
  99              		.loc 1 53 5 is_stmt 1 view .LVU21
 100              		.loc 1 53 13 is_stmt 0 view .LVU22
 101 000e 9A60     		str	r2, [r3, #8]
  54:../../..\hal\src/system.cpp ****     STK.CTRL |= _::CTRL_CLKSOURCE;                  // systick clock source
 102              		.loc 1 54 5 is_stmt 1 view .LVU23
 103              		.loc 1 54 14 is_stmt 0 view .LVU24
 104 0010 1A68     		ldr	r2, [r3]
 105 0012 42F00402 		orr	r2, r2, #4
 106 0016 1A60     		str	r2, [r3]
  55:../../..\hal\src/system.cpp ****     STK.CTRL |= _::CTRL_ENABLE | _::CTRL_TICKINT;   // enable counter & interrupts
 107              		.loc 1 55 5 is_stmt 1 view .LVU25
 108              		.loc 1 55 14 is_stmt 0 view .LVU26
 109 0018 1A68     		ldr	r2, [r3]
 110 001a 42F00302 		orr	r2, r2, #3
 111 001e 1A60     		str	r2, [r3]
  56:../../..\hal\src/system.cpp **** #else
  57:../../..\hal\src/system.cpp ****     static_assert(false, "no featured sys-tick initialzation");
  58:../../..\hal\src/system.cpp **** #endif
  59:../../..\hal\src/system.cpp **** }
 112              		.loc 1 59 1 view .LVU27
 113 0020 7047     		bx	lr
 114              	.L9:
 115 0022 00BF     		.align	2
 116              	.L8:
 117 0024 00000000 		.word	.LANCHOR0
 118 0028 10E000E0 		.word	-536813552
 119              		.cfi_endproc
 120              	.LFE144:
 122              		.section	.text._ZN3hal9sys_clock4initEv,"ax",%progbits
 123              		.align	1
 124              		.global	_ZN3hal9sys_clock4initEv
 125              		.syntax unified
 126              		.thumb
 127              		.thumb_func
 128              		.fpu fpv4-sp-d16
 130              	_ZN3hal9sys_clock4initEv:
 131              	.LFB147:
  60:../../..\hal\src/system.cpp **** 
  61:../../..\hal\src/system.cpp **** volatile uint32_t sys_tick::ms_counter = 0;
  62:../../..\hal\src/system.cpp **** 
  63:../../..\hal\src/system.cpp **** inline void sys_tick_init(uint32_t n) { sys_tick::init(n); }
  64:../../..\hal\src/system.cpp **** inline void sys_tick_update() { ++sys_tick::ms_counter; } // N.B. wraps in 49 days!
  65:../../..\hal\src/system.cpp **** 
  66:../../..\hal\src/system.cpp **** uint32_t sys_clock::m_freq;
  67:../../..\hal\src/system.cpp **** 
  68:../../..\hal\src/system.cpp **** void sys_clock::init()
  69:../../..\hal\src/system.cpp **** {
 132              		.loc 1 69 1 is_stmt 1 view -0
 133              		.cfi_startproc
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136              		@ link register save eliminated.
  70:../../..\hal\src/system.cpp ****     using namespace hal;
 137              		.loc 1 70 5 view .LVU29
  71:../../..\hal\src/system.cpp ****     typedef rcc_t _;
 138              		.loc 1 71 5 view .LVU30
  72:../../..\hal\src/system.cpp **** 
  73:../../..\hal\src/system.cpp **** #if defined(STM32F051)
  74:../../..\hal\src/system.cpp ****     m_freq = 48000000;
  75:../../..\hal\src/system.cpp **** 
  76:../../..\hal\src/system.cpp ****     // reset clock control registers
  77:../../..\hal\src/system.cpp **** 
  78:../../..\hal\src/system.cpp ****     RCC.CR = _::CR_RESET_VALUE;
  79:../../..\hal\src/system.cpp ****     RCC.CFGR = _::CFGR_RESET_VALUE;
  80:../../..\hal\src/system.cpp ****     RCC.CFGR2 = _::CFGR2_RESET_VALUE;
  81:../../..\hal\src/system.cpp ****     RCC.CFGR3 = _::CFGR3_RESET_VALUE;
  82:../../..\hal\src/system.cpp ****     RCC.CR2 = _::CR2_RESET_VALUE;
  83:../../..\hal\src/system.cpp ****     RCC.CIR = _::CIR_RESET_VALUE;
  84:../../..\hal\src/system.cpp **** 
  85:../../..\hal\src/system.cpp ****     // set system clock to HSI-PLL 48MHz
  86:../../..\hal\src/system.cpp **** 
  87:../../..\hal\src/system.cpp ****     Flash.ACR = flash_t::ACR_PRFTBE | flash_t::ACR_LATENCY<0x1>;
  88:../../..\hal\src/system.cpp **** 
  89:../../..\hal\src/system.cpp ****     RCC.CFGR |= _::CFGR_PLLMUL<0xa>;        // PLL multiplier 12
  90:../../..\hal\src/system.cpp ****     RCC.CR |= _::CR_PLLON;                  // enable PLL
  91:../../..\hal\src/system.cpp ****     while (!(RCC.CR & _::CR_PLLRDY));       // wait for PLL to be ready
  92:../../..\hal\src/system.cpp ****     RCC.CFGR |= _::CFGR_SW<0x2>;            // select PLL as system clock
  93:../../..\hal\src/system.cpp **** 
  94:../../..\hal\src/system.cpp ****     // wait for PLL as system clock
  95:../../..\hal\src/system.cpp **** 
  96:../../..\hal\src/system.cpp ****     while ((RCC.CFGR & _::CFGR_SWS<0x3>) != _::CFGR_SWS<0x2>);
  97:../../..\hal\src/system.cpp **** #elif defined(STM32F411)
  98:../../..\hal\src/system.cpp ****     m_freq = 100000000;
  99:../../..\hal\src/system.cpp **** 
 100:../../..\hal\src/system.cpp ****     // reset clock control registers
 101:../../..\hal\src/system.cpp **** 
 102:../../..\hal\src/system.cpp ****     RCC.CR = _::CR_RESET_VALUE;
 103:../../..\hal\src/system.cpp ****     RCC.CFGR = _::CFGR_RESET_VALUE;
 104:../../..\hal\src/system.cpp ****     RCC.CIR = _::CIR_RESET_VALUE;
 105:../../..\hal\src/system.cpp **** 
 106:../../..\hal\src/system.cpp ****     // set system clock to HSI-PLL 100MHz
 107:../../..\hal\src/system.cpp **** 
 108:../../..\hal\src/system.cpp ****     constexpr uint8_t wait_states = 0x3;    // 3 wait-states for 100MHz at 2.7-3.3V
 109:../../..\hal\src/system.cpp **** 
 110:../../..\hal\src/system.cpp ****     FLASH.ACR = flash_t::ACR_PRFTEN | flash_t::ACR_LATENCY<wait_states>;
 111:../../..\hal\src/system.cpp ****     while ((FLASH.ACR & flash_t::ACR_LATENCY<0x7>) != flash_t::ACR_LATENCY<wait_states>); // wait t
 112:../../..\hal\src/system.cpp **** 
 113:../../..\hal\src/system.cpp ****     enum pllP_t { pllP_2 = 0x0, pllP_4 = 0x1, pllP_6 = 0x2, pllP_8 = 0x3 };
 114:../../..\hal\src/system.cpp **** 
 115:../../..\hal\src/system.cpp ****     // fVCO = hs[ei] * pllN / pllM                      // must be 100MHz - 400MHz
 116:../../..\hal\src/system.cpp ****     // fSYS = fVCO / pllP                               // <= 100MHz
 117:../../..\hal\src/system.cpp ****     // fUSB = fVCO / pllQ                               // <= 48MHz
 118:../../..\hal\src/system.cpp **** 
 119:../../..\hal\src/system.cpp ****     // pllN = 200, pllM = 8, pllP = 4, pllQ = 9, fSYS = 1.0e8, fUSB = 4.4445e7
 120:../../..\hal\src/system.cpp **** 
 121:../../..\hal\src/system.cpp ****     constexpr uint16_t pllN = 200;                      // 9 bits, valid range [50..432]
 122:../../..\hal\src/system.cpp ****     constexpr uint8_t pllM = 8;                         // 6 bits, valid range [2..63]
 123:../../..\hal\src/system.cpp ****     constexpr pllP_t pllP = pllP_4;                     // 2 bits, enum range [2, 4, 6, 8]
 124:../../..\hal\src/system.cpp ****     constexpr uint8_t pllQ = 9;                         // 4 bits, valid range [2..15]
 125:../../..\hal\src/system.cpp ****     constexpr uint8_t pllSRC = 0;                       // 1 bit, 0 = HSI, 1 = HSE
 126:../../..\hal\src/system.cpp **** 
 127:../../..\hal\src/system.cpp ****     using internal::encode;
 128:../../..\hal\src/system.cpp **** 
 129:../../..\hal\src/system.cpp ****     RCC.PLLCFGR = encode<pllSRC, _::PLLCFGR_PLLSRC, 1>()
 130:../../..\hal\src/system.cpp ****                 | encode<pllN, _::PLLCFGR_PLLN0, 9>()
 131:../../..\hal\src/system.cpp ****                 | encode<pllM, _::PLLCFGR_PLLM0, 6>()
 132:../../..\hal\src/system.cpp ****                 | encode<pllP, _::PLLCFGR_PLLP0, 2>()
 133:../../..\hal\src/system.cpp ****                 | encode<pllQ, _::PLLCFGR_PLLQ0, 4>()
 134:../../..\hal\src/system.cpp ****                 ;
 135:../../..\hal\src/system.cpp **** 
 136:../../..\hal\src/system.cpp ****     RCC.CR |= _::CR_PLLON;                              // enable PLL
 137:../../..\hal\src/system.cpp ****     while (!(RCC.CR & _::CR_PLLRDY));                   // wait for PLL to be ready
 138:../../..\hal\src/system.cpp ****     RCC.CFGR |= encode<0x2, _::CFGR_SW0, 2>();          // select PLL as system clock
 139:../../..\hal\src/system.cpp **** 
 140:../../..\hal\src/system.cpp ****     // wait for PLL as system clock
 141:../../..\hal\src/system.cpp **** 
 142:../../..\hal\src/system.cpp ****     while ((RCC.CFGR & encode<0x3, _::CFGR_SWS0, 2>()) != encode<0x2, _::CFGR_SWS0, 2>());
 143:../../..\hal\src/system.cpp **** #elif defined(STM32G070)
 144:../../..\hal\src/system.cpp ****     m_freq = 64000000;
 145:../../..\hal\src/system.cpp **** 
 146:../../..\hal\src/system.cpp ****     // reset clock control registers
 147:../../..\hal\src/system.cpp **** 
 148:../../..\hal\src/system.cpp ****     RCC.CR = _::CR_RESET_VALUE;
 149:../../..\hal\src/system.cpp ****     RCC.CFGR = _::CFGR_RESET_VALUE;
 150:../../..\hal\src/system.cpp **** 
 151:../../..\hal\src/system.cpp ****     // set system clock to HSI-PLL 64MHz and p-clock = 64MHz
 152:../../..\hal\src/system.cpp **** 
 153:../../..\hal\src/system.cpp ****     constexpr uint8_t wait_states = 0x2;                // 2 wait-states for 64Hz at Vcore range 1
 154:../../..\hal\src/system.cpp **** 
 155:../../..\hal\src/system.cpp ****     FLASH.ACR = flash_t::ACR_PRFTEN | flash_t::ACR_LATENCY<wait_states>;
 156:../../..\hal\src/system.cpp ****     while ((FLASH.ACR & flash_t::ACR_LATENCY<0x7>) != flash_t::ACR_LATENCY<wait_states>); // wait t
 157:../../..\hal\src/system.cpp **** 
 158:../../..\hal\src/system.cpp ****     // fR (fSYS) = fVCO / pllR                          // <= 64MHz
 159:../../..\hal\src/system.cpp ****     // fP = fVCO / pllP                                 // <= 122MHz
 160:../../..\hal\src/system.cpp **** 
 161:../../..\hal\src/system.cpp ****     // pllN = 8.0, pllM = 1.0, pllP = 2.0, pllR = 2.0, fSYS = 6.4e7, fPllP = 6.4e7, fVCO = 1.28e8
 162:../../..\hal\src/system.cpp **** 
 163:../../..\hal\src/system.cpp ****     constexpr uint16_t pllN = 8;                        // 7 bits, valid range [8..86]
 164:../../..\hal\src/system.cpp ****     constexpr uint8_t pllM = 1 - 1;                     // 3 bits, valid range [1..8]-1
 165:../../..\hal\src/system.cpp ****     constexpr uint8_t pllP = 2 - 1;                     // 5 bits, valid range [2..32]-1
 166:../../..\hal\src/system.cpp ****     constexpr uint8_t pllR = 2 - 1;                     // 3 bits, valid range [2..8]-1
 167:../../..\hal\src/system.cpp ****     constexpr uint8_t pllSRC = 2;                       // 2 bits, 2 = HSI16, 3 = HSE
 168:../../..\hal\src/system.cpp **** 
 169:../../..\hal\src/system.cpp ****     RCC.PLLSYSCFGR = _::PLLSYSCFGR_PLLSRC<pllSRC>
 170:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLN<pllN>
 171:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLM<pllM>
 172:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLP<pllP>
 173:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLR<pllR>
 174:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLREN
 175:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLPEN
 176:../../..\hal\src/system.cpp ****                    ;
 177:../../..\hal\src/system.cpp **** 
 178:../../..\hal\src/system.cpp ****     RCC.CR |= _::CR_PLLON;                              // enable PLL
 179:../../..\hal\src/system.cpp ****     while (!(RCC.CR & _::CR_PLLRDY));                   // wait for PLL to be ready
 180:../../..\hal\src/system.cpp **** 
 181:../../..\hal\src/system.cpp ****     RCC.CFGR |= _::CFGR_SW<0x2>;                        // select PLL as system clock
 182:../../..\hal\src/system.cpp **** 
 183:../../..\hal\src/system.cpp ****     // wait for PLL as system clock
 184:../../..\hal\src/system.cpp **** 
 185:../../..\hal\src/system.cpp ****     while ((RCC.CFGR & _::CFGR_SWS<0x3>) != _::CFGR_SWS<0x2>);
 186:../../..\hal\src/system.cpp **** #elif defined(STM32G431)
 187:../../..\hal\src/system.cpp ****     m_freq = 170000000;
 139              		.loc 1 187 5 view .LVU31
 140              		.loc 1 187 12 is_stmt 0 view .LVU32
 141 0000 194A     		ldr	r2, .L18
 142 0002 1A4B     		ldr	r3, .L18+4
 143 0004 1360     		str	r3, [r2]
 188:../../..\hal\src/system.cpp **** 
 189:../../..\hal\src/system.cpp ****     // reset clock control registers
 190:../../..\hal\src/system.cpp **** 
 191:../../..\hal\src/system.cpp ****     RCC.CR = _::CR_RESET_VALUE;
 144              		.loc 1 191 5 is_stmt 1 view .LVU33
 145              		.loc 1 191 12 is_stmt 0 view .LVU34
 146 0006 1A4B     		ldr	r3, .L18+8
 147 0008 6321     		movs	r1, #99
 148 000a 1960     		str	r1, [r3]
 192:../../..\hal\src/system.cpp ****     RCC.CFGR = _::CFGR_RESET_VALUE;
 149              		.loc 1 192 5 is_stmt 1 view .LVU35
 150              		.loc 1 192 14 is_stmt 0 view .LVU36
 151 000c 0521     		movs	r1, #5
 152 000e 9960     		str	r1, [r3, #8]
 193:../../..\hal\src/system.cpp **** 
 194:../../..\hal\src/system.cpp ****     // set system clock to HSI-PLL 170MHz (R) and same for P and Q clocks
 195:../../..\hal\src/system.cpp **** 
 196:../../..\hal\src/system.cpp ****     constexpr uint8_t wait_states = 0x8;                // 8 wait-states for 170MHz at Vcore range 
 153              		.loc 1 196 5 is_stmt 1 view .LVU37
 154              	.LVL5:
 197:../../..\hal\src/system.cpp **** 
 198:../../..\hal\src/system.cpp ****     FLASH.ACR = flash_t::ACR_PRFTEN | flash_t::ACR_LATENCY<wait_states>;
 155              		.loc 1 198 5 view .LVU38
 156              		.loc 1 198 15 is_stmt 0 view .LVU39
 157 0010 1849     		ldr	r1, .L18+12
 158 0012 4FF48470 		mov	r0, #264
 159 0016 0860     		str	r0, [r1]
 160              	.L11:
 199:../../..\hal\src/system.cpp ****     while ((FLASH.ACR & flash_t::ACR_LATENCY<0xf>) != flash_t::ACR_LATENCY<wait_states>); // wait t
 161              		.loc 1 199 5 is_stmt 1 view .LVU40
 162              		.loc 1 199 19 is_stmt 0 view .LVU41
 163 0018 0868     		ldr	r0, [r1]
 164              		.loc 1 199 23 view .LVU42
 165 001a 00F00F00 		and	r0, r0, #15
 166              		.loc 1 199 52 view .LVU43
 167 001e 0828     		cmp	r0, #8
 168 0020 FAD1     		bne	.L11
 200:../../..\hal\src/system.cpp **** 
 201:../../..\hal\src/system.cpp ****     // pllN = 85.0, pllM = 4.0, pllP = 7.0, pllPDIV = 2.0, pllQ = 2.0, pllR = 2.0, fSYS = 1.7e8, fP
 202:../../..\hal\src/system.cpp **** 
 203:../../..\hal\src/system.cpp ****     constexpr uint16_t pllN = 85;                       // 7 bits, valid range [8..127]
 169              		.loc 1 203 5 is_stmt 1 view .LVU44
 170              	.LVL6:
 204:../../..\hal\src/system.cpp ****     constexpr uint8_t pllM = 4 - 1;                     // 3 bits, valid range [1..15]-1
 171              		.loc 1 204 5 view .LVU45
 205:../../..\hal\src/system.cpp ****     constexpr uint8_t pllPDIV = 2;                      // 5 bits, valid range [2..31]
 172              		.loc 1 205 5 view .LVU46
 206:../../..\hal\src/system.cpp ****     constexpr uint8_t pllR = 0;                         // 2 bits, 0 = 2, 1 = 4, 2 = 6, 3 = 8
 173              		.loc 1 206 5 view .LVU47
 207:../../..\hal\src/system.cpp ****     constexpr uint8_t pllQ = 0;                         // 2 bits, 0 = 2, 1 = 4, 2 = 6, 3 = 8
 174              		.loc 1 207 5 view .LVU48
 208:../../..\hal\src/system.cpp ****     constexpr uint8_t pllSRC = 2;                       // 2 bits, 2 = HSI16, 3 = HSE
 175              		.loc 1 208 5 view .LVU49
 209:../../..\hal\src/system.cpp **** 
 210:../../..\hal\src/system.cpp ****     RCC.PLLSYSCFGR = _::PLLSYSCFGR_PLLSRC<pllSRC>
 176              		.loc 1 210 5 view .LVU50
 177              		.loc 1 210 20 is_stmt 0 view .LVU51
 178 0022 1549     		ldr	r1, .L18+16
 179 0024 D960     		str	r1, [r3, #12]
 211:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLSYSN<pllN>
 212:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLSYSM<pllM>
 213:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLSYSPDIV<pllPDIV>
 214:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLSYSQ<pllQ>
 215:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLSYSR<pllR>
 216:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLPEN
 217:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLSYSQEN
 218:../../..\hal\src/system.cpp ****                    | _::PLLSYSCFGR_PLLSYSREN
 219:../../..\hal\src/system.cpp ****                    ;
 220:../../..\hal\src/system.cpp **** 
 221:../../..\hal\src/system.cpp ****     RCC.CR |= _::CR_PLLSYSON;                           // enable PLL
 180              		.loc 1 221 5 is_stmt 1 view .LVU52
 181              		.loc 1 221 12 is_stmt 0 view .LVU53
 182 0026 1968     		ldr	r1, [r3]
 183 0028 41F08071 		orr	r1, r1, #16777216
 184 002c 1960     		str	r1, [r3]
 185              	.L12:
 222:../../..\hal\src/system.cpp ****     while (!(RCC.CR & _::CR_PLLSYSRDY));                // wait for PLL to be ready
 186              		.loc 1 222 5 is_stmt 1 view .LVU54
 187              		.loc 1 222 18 is_stmt 0 view .LVU55
 188 002e 1968     		ldr	r1, [r3]
 189              		.loc 1 222 12 view .LVU56
 190 0030 8901     		lsls	r1, r1, #6
 191 0032 FCD5     		bpl	.L12
 223:../../..\hal\src/system.cpp **** 
 224:../../..\hal\src/system.cpp ****     RCC.CFGR |= _::CFGR_SW<0x3>;                        // select PLL as system clock
 192              		.loc 1 224 5 is_stmt 1 view .LVU57
 193              		.loc 1 224 14 is_stmt 0 view .LVU58
 194 0034 9968     		ldr	r1, [r3, #8]
 195 0036 41F00301 		orr	r1, r1, #3
 196 003a 9960     		str	r1, [r3, #8]
 197              	.LBB10:
 198              	.LBI10:
  68:../../..\hal\src/system.cpp **** {
 199              		.loc 1 68 6 is_stmt 1 view .LVU59
 200              	.L13:
 201              	.LBB11:
 225:../../..\hal\src/system.cpp **** 
 226:../../..\hal\src/system.cpp ****     // wait for PLL as system clock
 227:../../..\hal\src/system.cpp **** 
 228:../../..\hal\src/system.cpp ****     while ((RCC.CFGR & _::CFGR_SWS<0x3>) != _::CFGR_SWS<0x3>);
 202              		.loc 1 228 5 view .LVU60
 203              		.loc 1 228 17 is_stmt 0 view .LVU61
 204 003c 9968     		ldr	r1, [r3, #8]
 205              		.loc 1 228 22 view .LVU62
 206 003e 01F00C01 		and	r1, r1, #12
 207              		.loc 1 228 42 view .LVU63
 208 0042 0C29     		cmp	r1, #12
 209 0044 FAD1     		bne	.L13
 229:../../..\hal\src/system.cpp **** 
 230:../../..\hal\src/system.cpp ****     // enable FPU
 231:../../..\hal\src/system.cpp **** 
 232:../../..\hal\src/system.cpp ****     FPU_CPACR.CPACR |= fpu_cpacr_t::CPACR_CP<0xf>;      // enable co-processors
 210              		.loc 1 232 5 is_stmt 1 view .LVU64
 211              		.loc 1 232 21 is_stmt 0 view .LVU65
 212 0046 0D49     		ldr	r1, .L18+20
 213 0048 0B68     		ldr	r3, [r1]
 214 004a 43F47003 		orr	r3, r3, #15728640
 215 004e 0B60     		str	r3, [r1]
 233:../../..\hal\src/system.cpp ****     __asm volatile ("dsb");                             // data pipe-line reset
 216              		.loc 1 233 5 is_stmt 1 view .LVU66
 217              		.loc 1 233 27 is_stmt 0 view .LVU67
 218              		.syntax unified
 219              	@ 233 "../../..\hal\src\system.cpp" 1
 220 0050 BFF34F8F 		dsb
 221              	@ 0 "" 2
 234:../../..\hal\src/system.cpp ****     __asm volatile ("isb");                             // instruction pipe-line reset
 222              		.loc 1 234 5 is_stmt 1 view .LVU68
 223              		.loc 1 234 27 is_stmt 0 view .LVU69
 224              	@ 234 "../../..\hal\src\system.cpp" 1
 225 0054 BFF36F8F 		isb
 226              	@ 0 "" 2
 235:../../..\hal\src/system.cpp **** 
 236:../../..\hal\src/system.cpp **** #else
 237:../../..\hal\src/system.cpp ****     static_assert(false, "no featured clock initialzation");
 238:../../..\hal\src/system.cpp **** #endif
 239:../../..\hal\src/system.cpp ****     // initialize sys-tick for milli-second counts
 240:../../..\hal\src/system.cpp **** 
 241:../../..\hal\src/system.cpp ****     hal::sys_tick_init(m_freq / 1000);
 227              		.loc 1 241 5 is_stmt 1 view .LVU70
 228              	.LVL7:
 229              		.thumb
 230              		.syntax unified
 231              	.LBB12:
 232              	.LBI12:
  63:../../..\hal\src/system.cpp **** inline void sys_tick_update() { ++sys_tick::ms_counter; } // N.B. wraps in 49 days!
 233              		.loc 1 63 13 view .LVU71
 234              	.LBB13:
  63:../../..\hal\src/system.cpp **** inline void sys_tick_update() { ++sys_tick::ms_counter; } // N.B. wraps in 49 days!
 235              		.loc 1 63 41 view .LVU72
  63:../../..\hal\src/system.cpp **** inline void sys_tick_update() { ++sys_tick::ms_counter; } // N.B. wraps in 49 days!
 236              		.loc 1 63 55 is_stmt 0 view .LVU73
 237 0058 4FF47A73 		mov	r3, #1000
 238              	.LBE13:
 239              	.LBE12:
 240              		.loc 1 241 23 view .LVU74
 241 005c 1068     		ldr	r0, [r2]
 242              	.LBB15:
 243              	.LBB14:
  63:../../..\hal\src/system.cpp **** inline void sys_tick_update() { ++sys_tick::ms_counter; } // N.B. wraps in 49 days!
 244              		.loc 1 63 55 view .LVU75
 245 005e B0FBF3F0 		udiv	r0, r0, r3
 246              	.LVL8:
  63:../../..\hal\src/system.cpp **** inline void sys_tick_update() { ++sys_tick::ms_counter; } // N.B. wraps in 49 days!
 247              		.loc 1 63 55 view .LVU76
 248 0062 FFF7FEBF 		b	_ZN3hal8sys_tick4initEm
 249              	.LVL9:
 250              	.L19:
  63:../../..\hal\src/system.cpp **** inline void sys_tick_update() { ++sys_tick::ms_counter; } // N.B. wraps in 49 days!
 251              		.loc 1 63 55 view .LVU77
 252 0066 00BF     		.align	2
 253              	.L18:
 254 0068 00000000 		.word	.LANCHOR1
 255 006c 80FE210A 		.word	170000000
 256 0070 00100240 		.word	1073876992
 257 0074 00200240 		.word	1073881088
 258 0078 32551111 		.word	286348594
 259 007c 88ED00E0 		.word	-536810104
 260              	.LBE14:
 261              	.LBE15:
 262              	.LBE11:
 263              	.LBE10:
 264              		.cfi_endproc
 265              	.LFE147:
 267              		.section	.text._Z7handlerILN9interrupt11interrupt_tEn1EEvv,"ax",%progbits
 268              		.align	1
 269              		.global	_Z7handlerILN9interrupt11interrupt_tEn1EEvv
 270              		.syntax unified
 271              		.thumb
 272              		.thumb_func
 273              		.fpu fpv4-sp-d16
 275              	_Z7handlerILN9interrupt11interrupt_tEn1EEvv:
 276              	.LFB159:
 242:../../..\hal\src/system.cpp **** }
 243:../../..\hal\src/system.cpp **** 
 244:../../..\hal\src/system.cpp **** } //  namespace hal
 245:../../..\hal\src/system.cpp **** 
 246:../../..\hal\src/system.cpp **** template<> void handler<interrupt::SYSTICK>()
 247:../../..\hal\src/system.cpp **** {
 277              		.loc 1 247 1 is_stmt 1 view -0
 278              		.cfi_startproc
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 248:../../..\hal\src/system.cpp ****     hal::sys_tick_update();
 282              		.loc 1 248 5 view .LVU79
 283              	.LBB18:
 284              	.LBI18:
  64:../../..\hal\src/system.cpp **** 
 285              		.loc 1 64 13 view .LVU80
 286              	.LBB19:
  64:../../..\hal\src/system.cpp **** 
 287              		.loc 1 64 33 view .LVU81
 288 0000 024A     		ldr	r2, .L21
 289 0002 1368     		ldr	r3, [r2]
 290 0004 0133     		adds	r3, r3, #1
 291 0006 1360     		str	r3, [r2]
 292              	.LBE19:
 293              	.LBE18:
 249:../../..\hal\src/system.cpp **** }
 294              		.loc 1 249 1 is_stmt 0 view .LVU82
 295 0008 7047     		bx	lr
 296              	.L22:
 297 000a 00BF     		.align	2
 298              	.L21:
 299 000c 00000000 		.word	.LANCHOR0
 300              		.cfi_endproc
 301              	.LFE159:
 303              		.section	.text._Z11system_initv,"ax",%progbits
 304              		.align	1
 305              		.global	_Z11system_initv
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 311              	_Z11system_initv:
 312              	.LFB160:
 250:../../..\hal\src/system.cpp **** 
 251:../../..\hal\src/system.cpp **** extern void system_init(void)
 252:../../..\hal\src/system.cpp **** {
 313              		.loc 1 252 1 is_stmt 1 view -0
 314              		.cfi_startproc
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 253:../../..\hal\src/system.cpp ****     hal::sys_clock::init();
 318              		.loc 1 253 5 view .LVU84
 319              		.loc 1 253 25 is_stmt 0 view .LVU85
 320 0000 FFF7FEBF 		b	_ZN3hal9sys_clock4initEv
 321              	.LVL10:
 322              		.cfi_endproc
 323              	.LFE160:
 325              		.global	_ZN3hal9sys_clock6m_freqE
 326              		.global	_ZN3hal8sys_tick10ms_counterE
 327              		.section	.bss._ZN3hal8sys_tick10ms_counterE,"aw",%nobits
 328              		.align	2
 329              		.set	.LANCHOR0,. + 0
 332              	_ZN3hal8sys_tick10ms_counterE:
 333 0000 00000000 		.space	4
 334              		.section	.bss._ZN3hal9sys_clock6m_freqE,"aw",%nobits
 335              		.align	2
 336              		.set	.LANCHOR1,. + 0
 339              	_ZN3hal9sys_clock6m_freqE:
 340 0000 00000000 		.space	4
 341              		.text
 342              	.Letext0:
 343              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 344              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\lib\\gcc\\arm-none-eabi
 345              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 346              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 347              		.file 6 "../../..\\hal\\include/device/stm32g431.h"
 348              		.file 7 "../../..\\hal\\include/hal.h"
 349              		.file 8 "<built-in>"
 350              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
