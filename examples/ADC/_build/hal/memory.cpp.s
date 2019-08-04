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
  13              		.file	"memory.cpp"
  14              		.text
  15              	.Ltext0:
  16              		.cfi_sections	.debug_frame
  17              		.section	.text._Znwj,"ax",%progbits
  18              		.align	1
  19              		.global	_Znwj
  20              		.arch armv7e-m
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu fpv4-sp-d16
  26              	_Znwj:
  27              	.LVL0:
  28              	.LFB19:
  29              		.file 1 "../../..\\hal\\src\\memory.cpp"
   1:../../..\hal\src/memory.cpp **** #include <cstddef>
   2:../../..\hal\src/memory.cpp **** #include <cstdlib>
   3:../../..\hal\src/memory.cpp **** 
   4:../../..\hal\src/memory.cpp **** void *operator new(size_t n)
   5:../../..\hal\src/memory.cpp **** {
  30              		.loc 1 5 1 view -0
  31              		.cfi_startproc
  32              		@ args = 0, pretend = 0, frame = 0
  33              		@ frame_needed = 0, uses_anonymous_args = 0
  34              		@ link register save eliminated.
   6:../../..\hal\src/memory.cpp ****     void *const p = malloc(n);
  35              		.loc 1 6 5 view .LVU1
  36              		.loc 1 6 27 is_stmt 0 view .LVU2
  37 0000 FFF7FEBF 		b	malloc
  38              	.LVL1:
  39              		.loc 1 6 27 view .LVU3
  40              		.cfi_endproc
  41              	.LFE19:
  43              		.section	.text._ZdlPv,"ax",%progbits
  44              		.align	1
  45              		.global	_ZdlPv
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu fpv4-sp-d16
  51              	_ZdlPv:
  52              	.LVL2:
  53              	.LFB20:
   7:../../..\hal\src/memory.cpp ****     // FIXME: handle failure
   8:../../..\hal\src/memory.cpp ****     return p;
   9:../../..\hal\src/memory.cpp **** }
  10:../../..\hal\src/memory.cpp **** 
  11:../../..\hal\src/memory.cpp **** void operator delete(void * p)
  12:../../..\hal\src/memory.cpp **** {
  54              		.loc 1 12 1 is_stmt 1 view -0
  55              		.cfi_startproc
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
  58              		@ link register save eliminated.
  13:../../..\hal\src/memory.cpp ****     free(p);
  59              		.loc 1 13 5 view .LVU5
  60              		.loc 1 13 9 is_stmt 0 view .LVU6
  61 0000 FFF7FEBF 		b	free
  62              	.LVL3:
  63              		.loc 1 13 9 view .LVU7
  64              		.cfi_endproc
  65              	.LFE20:
  67              		.section	.text._ZdlPvj,"ax",%progbits
  68              		.align	1
  69              		.global	_ZdlPvj
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  75              	_ZdlPvj:
  76              	.LVL4:
  77              	.LFB21:
  14:../../..\hal\src/memory.cpp **** }
  15:../../..\hal\src/memory.cpp **** 
  16:../../..\hal\src/memory.cpp **** void operator delete(void * p, size_t n)
  17:../../..\hal\src/memory.cpp **** {
  78              		.loc 1 17 1 is_stmt 1 view -0
  79              		.cfi_startproc
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  18:../../..\hal\src/memory.cpp ****     free(p);
  83              		.loc 1 18 5 view .LVU9
  84              		.loc 1 18 9 is_stmt 0 view .LVU10
  85 0000 FFF7FEBF 		b	free
  86              	.LVL5:
  87              		.loc 1 18 9 view .LVU11
  88              		.cfi_endproc
  89              	.LFE21:
  91              		.text
  92              	.Letext0:
  93              		.file 2 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
  94              		.file 3 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
  95              		.file 4 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
  96              		.file 5 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\lib\\gcc\\arm-none-eabi
  97              		.file 6 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
  98              		.file 7 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
  99              		.file 8 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 100              		.file 9 "c:\\program files (x86)\\gnu tools arm embedded\\8 2018-q4-major\\arm-none-eabi\\include\
 101              		.file 10 "<built-in>"
