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
  13              		.file	"startup.cpp"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text._Z17__default_handlerv,"ax",%progbits
  18              		.align	1
  19              		.global	_Z17__default_handlerv
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	_Z17__default_handlerv:
  27              	.LFB143:
  28              		.file 1 "../../..\\hal\\src\\startup.cpp"
   1:../../..\hal\src/startup.cpp **** #include <hal.h>
   2:../../..\hal\src/startup.cpp **** 
   3:../../..\hal\src/startup.cpp **** extern uint32_t __sbss, __ebss;
   4:../../..\hal\src/startup.cpp **** extern uint32_t __sdata, __edata;
   5:../../..\hal\src/startup.cpp **** extern uint32_t __sidata;
   6:../../..\hal\src/startup.cpp **** extern uint32_t __estack;
   7:../../..\hal\src/startup.cpp **** 
   8:../../..\hal\src/startup.cpp **** extern void system_init(void);
   9:../../..\hal\src/startup.cpp **** extern int main(void);
  10:../../..\hal\src/startup.cpp **** 
  11:../../..\hal\src/startup.cpp **** template<> void handler<interrupt::RESET>()
  12:../../..\hal\src/startup.cpp **** {
  13:../../..\hal\src/startup.cpp ****     uint32_t *bss = &__sbss;
  14:../../..\hal\src/startup.cpp ****     uint32_t *data = &__sdata;
  15:../../..\hal\src/startup.cpp ****     uint32_t *idata = &__sidata;
  16:../../..\hal\src/startup.cpp **** 
  17:../../..\hal\src/startup.cpp ****     while (data < &__edata)
  18:../../..\hal\src/startup.cpp ****         *data++ = *idata++;
  19:../../..\hal\src/startup.cpp **** 
  20:../../..\hal\src/startup.cpp ****     while (bss < &__ebss)
  21:../../..\hal\src/startup.cpp ****         *bss++ = 0;
  22:../../..\hal\src/startup.cpp **** 
  23:../../..\hal\src/startup.cpp ****     system_init();
  24:../../..\hal\src/startup.cpp **** 
  25:../../..\hal\src/startup.cpp ****     main();
  26:../../..\hal\src/startup.cpp **** 
  27:../../..\hal\src/startup.cpp ****     while (1)
  28:../../..\hal\src/startup.cpp ****         ;
  29:../../..\hal\src/startup.cpp **** }
  30:../../..\hal\src/startup.cpp **** 
  31:../../..\hal\src/startup.cpp **** extern "C" void __reset() __attribute__ ((alias("_Z7handlerILN9interrupt11interrupt_tEn15EEvv")));
  32:../../..\hal\src/startup.cpp **** 
  33:../../..\hal\src/startup.cpp **** extern void __default_handler(void) {}
  29              		.loc 1 33 37 view -0
  30              		.cfi_startproc
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33              		@ link register save eliminated.
  34              		.loc 1 33 38 is_stmt 0 view .LVU1
  35 0000 7047     		bx	lr
  36              		.cfi_endproc
  37              	.LFE143:
  39              		.weak	_Z7handlerILN9interrupt11interrupt_tE101EEvv
  40              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE101EEvv,_Z17__default_handlerv
  41              		.weak	_Z7handlerILN9interrupt11interrupt_tE100EEvv
  42              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE100EEvv,_Z17__default_handlerv
  43              		.weak	_Z7handlerILN9interrupt11interrupt_tE97EEvv
  44              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE97EEvv,_Z17__default_handlerv
  45              		.weak	_Z7handlerILN9interrupt11interrupt_tE94EEvv
  46              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE94EEvv,_Z17__default_handlerv
  47              		.weak	_Z7handlerILN9interrupt11interrupt_tE93EEvv
  48              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE93EEvv,_Z17__default_handlerv
  49              		.weak	_Z7handlerILN9interrupt11interrupt_tE92EEvv
  50              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE92EEvv,_Z17__default_handlerv
  51              		.weak	_Z7handlerILN9interrupt11interrupt_tE91EEvv
  52              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE91EEvv,_Z17__default_handlerv
  53              		.weak	_Z7handlerILN9interrupt11interrupt_tE90EEvv
  54              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE90EEvv,_Z17__default_handlerv
  55              		.weak	_Z7handlerILN9interrupt11interrupt_tE85EEvv
  56              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE85EEvv,_Z17__default_handlerv
  57              		.weak	_Z7handlerILN9interrupt11interrupt_tE81EEvv
  58              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE81EEvv,_Z17__default_handlerv
  59              		.weak	_Z7handlerILN9interrupt11interrupt_tE76EEvv
  60              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE76EEvv,_Z17__default_handlerv
  61              		.weak	_Z7handlerILN9interrupt11interrupt_tE75EEvv
  62              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE75EEvv,_Z17__default_handlerv
  63              		.weak	_Z7handlerILN9interrupt11interrupt_tE65EEvv
  64              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE65EEvv,_Z17__default_handlerv
  65              		.weak	_Z7handlerILN9interrupt11interrupt_tE64EEvv
  66              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE64EEvv,_Z17__default_handlerv
  67              		.weak	_Z7handlerILN9interrupt11interrupt_tE63EEvv
  68              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE63EEvv,_Z17__default_handlerv
  69              		.weak	_Z7handlerILN9interrupt11interrupt_tE60EEvv
  70              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE60EEvv,_Z17__default_handlerv
  71              		.weak	_Z7handlerILN9interrupt11interrupt_tE59EEvv
  72              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE59EEvv,_Z17__default_handlerv
  73              		.weak	_Z7handlerILN9interrupt11interrupt_tE58EEvv
  74              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE58EEvv,_Z17__default_handlerv
  75              		.weak	_Z7handlerILN9interrupt11interrupt_tE57EEvv
  76              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE57EEvv,_Z17__default_handlerv
  77              		.weak	_Z7handlerILN9interrupt11interrupt_tE56EEvv
  78              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE56EEvv,_Z17__default_handlerv
  79              		.weak	_Z7handlerILN9interrupt11interrupt_tE55EEvv
  80              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE55EEvv,_Z17__default_handlerv
  81              		.weak	_Z7handlerILN9interrupt11interrupt_tE54EEvv
  82              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE54EEvv,_Z17__default_handlerv
  83              		.weak	_Z7handlerILN9interrupt11interrupt_tE52EEvv
  84              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE52EEvv,_Z17__default_handlerv
  85              		.weak	_Z7handlerILN9interrupt11interrupt_tE51EEvv
  86              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE51EEvv,_Z17__default_handlerv
  87              		.weak	_Z7handlerILN9interrupt11interrupt_tE49EEvv
  88              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE49EEvv,_Z17__default_handlerv
  89              		.weak	_Z7handlerILN9interrupt11interrupt_tE46EEvv
  90              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE46EEvv,_Z17__default_handlerv
  91              		.weak	_Z7handlerILN9interrupt11interrupt_tE45EEvv
  92              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE45EEvv,_Z17__default_handlerv
  93              		.weak	_Z7handlerILN9interrupt11interrupt_tE44EEvv
  94              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE44EEvv,_Z17__default_handlerv
  95              		.weak	_Z7handlerILN9interrupt11interrupt_tE43EEvv
  96              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE43EEvv,_Z17__default_handlerv
  97              		.weak	_Z7handlerILN9interrupt11interrupt_tE42EEvv
  98              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE42EEvv,_Z17__default_handlerv
  99              		.weak	_Z7handlerILN9interrupt11interrupt_tE41EEvv
 100              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE41EEvv,_Z17__default_handlerv
 101              		.weak	_Z7handlerILN9interrupt11interrupt_tE40EEvv
 102              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE40EEvv,_Z17__default_handlerv
 103              		.weak	_Z7handlerILN9interrupt11interrupt_tE39EEvv
 104              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE39EEvv,_Z17__default_handlerv
 105              		.weak	_Z7handlerILN9interrupt11interrupt_tE38EEvv
 106              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE38EEvv,_Z17__default_handlerv
 107              		.weak	_Z7handlerILN9interrupt11interrupt_tE37EEvv
 108              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE37EEvv,_Z17__default_handlerv
 109              		.weak	_Z7handlerILN9interrupt11interrupt_tE36EEvv
 110              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE36EEvv,_Z17__default_handlerv
 111              		.weak	_Z7handlerILN9interrupt11interrupt_tE35EEvv
 112              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE35EEvv,_Z17__default_handlerv
 113              		.weak	_Z7handlerILN9interrupt11interrupt_tE34EEvv
 114              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE34EEvv,_Z17__default_handlerv
 115              		.weak	_Z7handlerILN9interrupt11interrupt_tE33EEvv
 116              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE33EEvv,_Z17__default_handlerv
 117              		.weak	_Z7handlerILN9interrupt11interrupt_tE32EEvv
 118              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE32EEvv,_Z17__default_handlerv
 119              		.weak	_Z7handlerILN9interrupt11interrupt_tE31EEvv
 120              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE31EEvv,_Z17__default_handlerv
 121              		.weak	_Z7handlerILN9interrupt11interrupt_tE30EEvv
 122              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE30EEvv,_Z17__default_handlerv
 123              		.weak	_Z7handlerILN9interrupt11interrupt_tE29EEvv
 124              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE29EEvv,_Z17__default_handlerv
 125              		.weak	_Z7handlerILN9interrupt11interrupt_tE28EEvv
 126              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE28EEvv,_Z17__default_handlerv
 127              		.weak	_Z7handlerILN9interrupt11interrupt_tE27EEvv
 128              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE27EEvv,_Z17__default_handlerv
 129              		.weak	_Z7handlerILN9interrupt11interrupt_tE26EEvv
 130              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE26EEvv,_Z17__default_handlerv
 131              		.weak	_Z7handlerILN9interrupt11interrupt_tE25EEvv
 132              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE25EEvv,_Z17__default_handlerv
 133              		.weak	_Z7handlerILN9interrupt11interrupt_tE24EEvv
 134              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE24EEvv,_Z17__default_handlerv
 135              		.weak	_Z7handlerILN9interrupt11interrupt_tE23EEvv
 136              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE23EEvv,_Z17__default_handlerv
 137              		.weak	_Z7handlerILN9interrupt11interrupt_tE22EEvv
 138              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE22EEvv,_Z17__default_handlerv
 139              		.weak	_Z7handlerILN9interrupt11interrupt_tE21EEvv
 140              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE21EEvv,_Z17__default_handlerv
 141              		.weak	_Z7handlerILN9interrupt11interrupt_tE20EEvv
 142              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE20EEvv,_Z17__default_handlerv
 143              		.weak	_Z7handlerILN9interrupt11interrupt_tE19EEvv
 144              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE19EEvv,_Z17__default_handlerv
 145              		.weak	_Z7handlerILN9interrupt11interrupt_tE18EEvv
 146              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE18EEvv,_Z17__default_handlerv
 147              		.weak	_Z7handlerILN9interrupt11interrupt_tE16EEvv
 148              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE16EEvv,_Z17__default_handlerv
 149              		.weak	_Z7handlerILN9interrupt11interrupt_tE15EEvv
 150              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE15EEvv,_Z17__default_handlerv
 151              		.weak	_Z7handlerILN9interrupt11interrupt_tE14EEvv
 152              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE14EEvv,_Z17__default_handlerv
 153              		.weak	_Z7handlerILN9interrupt11interrupt_tE13EEvv
 154              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE13EEvv,_Z17__default_handlerv
 155              		.weak	_Z7handlerILN9interrupt11interrupt_tE12EEvv
 156              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE12EEvv,_Z17__default_handlerv
 157              		.weak	_Z7handlerILN9interrupt11interrupt_tE11EEvv
 158              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE11EEvv,_Z17__default_handlerv
 159              		.weak	_Z7handlerILN9interrupt11interrupt_tE10EEvv
 160              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE10EEvv,_Z17__default_handlerv
 161              		.weak	_Z7handlerILN9interrupt11interrupt_tE9EEvv
 162              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE9EEvv,_Z17__default_handlerv
 163              		.weak	_Z7handlerILN9interrupt11interrupt_tE8EEvv
 164              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE8EEvv,_Z17__default_handlerv
 165              		.weak	_Z7handlerILN9interrupt11interrupt_tE7EEvv
 166              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE7EEvv,_Z17__default_handlerv
 167              		.weak	_Z7handlerILN9interrupt11interrupt_tE6EEvv
 168              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE6EEvv,_Z17__default_handlerv
 169              		.weak	_Z7handlerILN9interrupt11interrupt_tE5EEvv
 170              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE5EEvv,_Z17__default_handlerv
 171              		.weak	_Z7handlerILN9interrupt11interrupt_tE4EEvv
 172              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE4EEvv,_Z17__default_handlerv
 173              		.weak	_Z7handlerILN9interrupt11interrupt_tE3EEvv
 174              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE3EEvv,_Z17__default_handlerv
 175              		.weak	_Z7handlerILN9interrupt11interrupt_tE2EEvv
 176              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE2EEvv,_Z17__default_handlerv
 177              		.weak	_Z7handlerILN9interrupt11interrupt_tE1EEvv
 178              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE1EEvv,_Z17__default_handlerv
 179              		.weak	_Z7handlerILN9interrupt11interrupt_tE0EEvv
 180              		.thumb_set _Z7handlerILN9interrupt11interrupt_tE0EEvv,_Z17__default_handlerv
 181              		.weak	_Z7handlerILN9interrupt11interrupt_tEn1EEvv
 182              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn1EEvv,_Z17__default_handlerv
 183              		.weak	_Z7handlerILN9interrupt11interrupt_tEn2EEvv
 184              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn2EEvv,_Z17__default_handlerv
 185              		.weak	_Z7handlerILN9interrupt11interrupt_tEn4EEvv
 186              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn4EEvv,_Z17__default_handlerv
 187              		.weak	_Z7handlerILN9interrupt11interrupt_tEn5EEvv
 188              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn5EEvv,_Z17__default_handlerv
 189              		.weak	_Z7handlerILN9interrupt11interrupt_tEn10EEvv
 190              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn10EEvv,_Z17__default_handlerv
 191              		.weak	_Z7handlerILN9interrupt11interrupt_tEn11EEvv
 192              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn11EEvv,_Z17__default_handlerv
 193              		.weak	_Z7handlerILN9interrupt11interrupt_tEn12EEvv
 194              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn12EEvv,_Z17__default_handlerv
 195              		.weak	_Z7handlerILN9interrupt11interrupt_tEn13EEvv
 196              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn13EEvv,_Z17__default_handlerv
 197              		.weak	_Z7handlerILN9interrupt11interrupt_tEn14EEvv
 198              		.thumb_set _Z7handlerILN9interrupt11interrupt_tEn14EEvv,_Z17__default_handlerv
 199              		.section	.text._Z7handlerILN9interrupt11interrupt_tEn15EEvv,"ax",%progbits
 200              		.align	1
 201              		.global	_Z7handlerILN9interrupt11interrupt_tEn15EEvv
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 207              	_Z7handlerILN9interrupt11interrupt_tEn15EEvv:
 208              	.LFB142:
  12:../../..\hal\src/startup.cpp ****     uint32_t *bss = &__sbss;
 209              		.loc 1 12 1 is_stmt 1 view -0
 210              		.cfi_startproc
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
  13:../../..\hal\src/startup.cpp ****     uint32_t *data = &__sdata;
 213              		.loc 1 13 5 view .LVU3
 214              	.LVL0:
  14:../../..\hal\src/startup.cpp ****     uint32_t *idata = &__sidata;
 215              		.loc 1 14 5 view .LVU4
  15:../../..\hal\src/startup.cpp **** 
 216              		.loc 1 15 5 view .LVU5
  12:../../..\hal\src/startup.cpp ****     uint32_t *bss = &__sbss;
 217              		.loc 1 12 1 is_stmt 0 view .LVU6
 218 0000 08B5     		push	{r3, lr}
 219              		.cfi_def_cfa_offset 8
 220              		.cfi_offset 3, -8
 221              		.cfi_offset 14, -4
  15:../../..\hal\src/startup.cpp **** 
 222              		.loc 1 15 15 view .LVU7
 223 0002 0B4A     		ldr	r2, .L8
  14:../../..\hal\src/startup.cpp ****     uint32_t *idata = &__sidata;
 224              		.loc 1 14 15 view .LVU8
 225 0004 0B4B     		ldr	r3, .L8+4
  17:../../..\hal\src/startup.cpp ****         *data++ = *idata++;
 226              		.loc 1 17 17 view .LVU9
 227 0006 0C48     		ldr	r0, .L8+8
 228              	.LVL1:
 229              	.L4:
  17:../../..\hal\src/startup.cpp ****         *data++ = *idata++;
 230              		.loc 1 17 5 is_stmt 1 view .LVU10
  17:../../..\hal\src/startup.cpp ****         *data++ = *idata++;
 231              		.loc 1 17 17 is_stmt 0 view .LVU11
 232 0008 8342     		cmp	r3, r0
 233 000a 04D2     		bcs	.L7
  18:../../..\hal\src/startup.cpp **** 
 234              		.loc 1 18 9 is_stmt 1 view .LVU12
  18:../../..\hal\src/startup.cpp **** 
 235              		.loc 1 18 17 is_stmt 0 view .LVU13
 236 000c 52F8041B 		ldr	r1, [r2], #4
 237              	.LVL2:
  18:../../..\hal\src/startup.cpp **** 
 238              		.loc 1 18 17 view .LVU14
 239 0010 43F8041B 		str	r1, [r3], #4
 240              	.LVL3:
  17:../../..\hal\src/startup.cpp ****         *data++ = *idata++;
 241              		.loc 1 17 5 view .LVU15
 242 0014 F8E7     		b	.L4
 243              	.LVL4:
 244              	.L7:
  13:../../..\hal\src/startup.cpp ****     uint32_t *data = &__sdata;
 245              		.loc 1 13 15 view .LVU16
 246 0016 094B     		ldr	r3, .L8+12
 247              	.LVL5:
  20:../../..\hal\src/startup.cpp ****         *bss++ = 0;
 248              		.loc 1 20 16 view .LVU17
 249 0018 0949     		ldr	r1, .L8+16
  21:../../..\hal\src/startup.cpp **** 
 250              		.loc 1 21 16 view .LVU18
 251 001a 0022     		movs	r2, #0
 252              	.LVL6:
 253              	.L3:
  20:../../..\hal\src/startup.cpp ****         *bss++ = 0;
 254              		.loc 1 20 5 is_stmt 1 view .LVU19
  20:../../..\hal\src/startup.cpp ****         *bss++ = 0;
 255              		.loc 1 20 16 is_stmt 0 view .LVU20
 256 001c 8B42     		cmp	r3, r1
 257 001e 02D2     		bcs	.L5
  21:../../..\hal\src/startup.cpp **** 
 258              		.loc 1 21 9 is_stmt 1 view .LVU21
  21:../../..\hal\src/startup.cpp **** 
 259              		.loc 1 21 16 is_stmt 0 view .LVU22
 260 0020 43F8042B 		str	r2, [r3], #4
 261              	.LVL7:
  20:../../..\hal\src/startup.cpp ****         *bss++ = 0;
 262              		.loc 1 20 5 view .LVU23
 263 0024 FAE7     		b	.L3
 264              	.LVL8:
 265              	.L5:
  23:../../..\hal\src/startup.cpp **** 
 266              		.loc 1 23 5 is_stmt 1 view .LVU24
  23:../../..\hal\src/startup.cpp **** 
 267              		.loc 1 23 16 is_stmt 0 view .LVU25
 268 0026 FFF7FEFF 		bl	_Z11system_initv
 269              	.LVL9:
  25:../../..\hal\src/startup.cpp **** 
 270              		.loc 1 25 5 is_stmt 1 view .LVU26
  25:../../..\hal\src/startup.cpp **** 
 271              		.loc 1 25 9 is_stmt 0 view .LVU27
 272 002a FFF7FEFF 		bl	main
 273              	.LVL10:
 274              	.L6:
  27:../../..\hal\src/startup.cpp ****         ;
 275              		.loc 1 27 5 is_stmt 1 discriminator 1 view .LVU28
 276 002e FEE7     		b	.L6
 277              	.L9:
 278              		.align	2
 279              	.L8:
 280 0030 00000000 		.word	__sidata
 281 0034 00000000 		.word	__sdata
 282 0038 00000000 		.word	__edata
 283 003c 00000000 		.word	__sbss
 284 0040 00000000 		.word	__ebss
 285              		.cfi_endproc
 286              	.LFE142:
 288              		.global	__reset
 289              		.thumb_set __reset,_Z7handlerILN9interrupt11interrupt_tEn15EEvv
 290              		.global	vectors
 291              		.section	.vectors,"aw"
 292              		.align	2
 295              	vectors:
 296 0000 00000000 		.word	__estack
 297 0004 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn15EEvv
 298 0008 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn14EEvv
 299 000c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn13EEvv
 300 0010 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn12EEvv
 301 0014 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn11EEvv
 302 0018 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn10EEvv
 303 001c 00000000 		.word	0
 304 0020 00000000 		.word	0
 305 0024 00000000 		.word	0
 306 0028 00000000 		.word	0
 307 002c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn5EEvv
 308 0030 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn4EEvv
 309 0034 00000000 		.word	0
 310 0038 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn2EEvv
 311 003c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tEn1EEvv
 312 0040 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE0EEvv
 313 0044 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE1EEvv
 314 0048 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE2EEvv
 315 004c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE3EEvv
 316 0050 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE4EEvv
 317 0054 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE5EEvv
 318 0058 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE6EEvv
 319 005c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE7EEvv
 320 0060 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE8EEvv
 321 0064 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE9EEvv
 322 0068 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE10EEvv
 323 006c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE11EEvv
 324 0070 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE12EEvv
 325 0074 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE13EEvv
 326 0078 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE14EEvv
 327 007c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE15EEvv
 328 0080 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE16EEvv
 329 0084 00000000 		.word	0
 330 0088 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE18EEvv
 331 008c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE19EEvv
 332 0090 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE20EEvv
 333 0094 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE21EEvv
 334 0098 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE22EEvv
 335 009c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE23EEvv
 336 00a0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE24EEvv
 337 00a4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE25EEvv
 338 00a8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE26EEvv
 339 00ac 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE27EEvv
 340 00b0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE28EEvv
 341 00b4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE29EEvv
 342 00b8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE30EEvv
 343 00bc 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE31EEvv
 344 00c0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE32EEvv
 345 00c4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE33EEvv
 346 00c8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE34EEvv
 347 00cc 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE35EEvv
 348 00d0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE36EEvv
 349 00d4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE37EEvv
 350 00d8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE38EEvv
 351 00dc 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE39EEvv
 352 00e0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE40EEvv
 353 00e4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE41EEvv
 354 00e8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE42EEvv
 355 00ec 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE43EEvv
 356 00f0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE44EEvv
 357 00f4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE45EEvv
 358 00f8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE46EEvv
 359 00fc 00000000 		.word	0
 360 0100 00000000 		.word	0
 361 0104 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE49EEvv
 362 0108 00000000 		.word	0
 363 010c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE51EEvv
 364 0110 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE52EEvv
 365 0114 00000000 		.word	0
 366 0118 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE54EEvv
 367 011c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE55EEvv
 368 0120 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE56EEvv
 369 0124 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE57EEvv
 370 0128 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE58EEvv
 371 012c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE59EEvv
 372 0130 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE60EEvv
 373 0134 00000000 		.word	0
 374 0138 00000000 		.word	0
 375 013c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE63EEvv
 376 0140 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE64EEvv
 377 0144 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE65EEvv
 378 0148 00000000 		.word	0
 379 014c 00000000 		.word	0
 380 0150 00000000 		.word	0
 381 0154 00000000 		.word	0
 382 0158 00000000 		.word	0
 383 015c 00000000 		.word	0
 384 0160 00000000 		.word	0
 385 0164 00000000 		.word	0
 386 0168 00000000 		.word	0
 387 016c 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE75EEvv
 388 0170 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE76EEvv
 389 0174 00000000 		.word	0
 390 0178 00000000 		.word	0
 391 017c 00000000 		.word	0
 392 0180 00000000 		.word	0
 393 0184 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE81EEvv
 394 0188 00000000 		.word	0
 395 018c 00000000 		.word	0
 396 0190 00000000 		.word	0
 397 0194 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE85EEvv
 398 0198 00000000 		.word	0
 399 019c 00000000 		.word	0
 400 01a0 00000000 		.word	0
 401 01a4 00000000 		.word	0
 402 01a8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE90EEvv
 403 01ac 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE91EEvv
 404 01b0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE92EEvv
 405 01b4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE93EEvv
 406 01b8 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE94EEvv
 407 01bc 00000000 		.word	0
 408 01c0 00000000 		.word	0
 409 01c4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE97EEvv
 410 01c8 00000000 		.word	0
 411 01cc 00000000 		.word	0
 412 01d0 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE100EEvv
 413 01d4 00000000 		.word	_Z7handlerILN9interrupt11interrupt_tE101EEvv
 414              		.text
 415              	.Letext0:
 416              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 417              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\lib\\gcc\\arm-none-eabi
 418              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 419              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 420              		.file 6 "../../..\\hal\\include/device/stm32g431.h"
 421              		.file 7 "../../..\\hal\\src\\vector/stm32g431.cpp"
 422              		.file 8 "<built-in>"
 423              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 424              		.file 10 "../../..\\hal\\include/hal.h"
