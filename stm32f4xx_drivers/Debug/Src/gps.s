	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"gps.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	gps_inst
	.section	.bss.gps_inst,"aw",%nobits
	.align	2
	.type	gps_inst, %object
	.size	gps_inst, 4
gps_inst:
	.space	4
	.section	.text.usart_init,"ax",%progbits
	.align	1
	.global	usart_init
	.syntax unified
	.thumb
	.thumb_func
	.type	usart_init, %function
usart_init:
.LFB0:
	.file 1 "../Src/gps.c"
	.loc 1 7 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 8 10
	ldr	r3, .L2
	ldr	r3, [r3]
	.loc 1 8 22
	mov	r2, #115200
	str	r2, [r3, #4]
	.loc 1 9 1
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L3:
	.align	2
.L2:
	.word	gps_inst
	.cfi_endproc
.LFE0:
	.size	usart_init, .-usart_init
	.text
.Letext0:
	.file 2 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../Src/../inc/../Drivers/Inc/stm32f407_usart_driver.h"
	.file 5 "../Src/../inc/gps.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x170
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x4
	.4byte	.LASF972
	.byte	0x1d
	.4byte	.LASF973
	.4byte	.LASF974
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF946
	.uleb128 0x3
	.4byte	.LASF951
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF947
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF948
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF949
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF950
	.uleb128 0x3
	.4byte	.LASF952
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF953
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF954
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF955
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF956
	.uleb128 0x3
	.4byte	.LASF957
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x31
	.uleb128 0x3
	.4byte	.LASF958
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x59
	.uleb128 0x6
	.byte	0x30
	.byte	0x4
	.byte	0x62
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x1
	.4byte	.LASF959
	.byte	0x64
	.byte	0xc
	.4byte	0x94
	.byte	0
	.uleb128 0x1
	.4byte	.LASF960
	.byte	0x65
	.byte	0xc
	.4byte	0x94
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF961
	.byte	0x66
	.byte	0xc
	.4byte	0x94
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF962
	.byte	0x67
	.byte	0xc
	.4byte	0x94
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF963
	.byte	0x68
	.byte	0xc
	.4byte	0x94
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF964
	.byte	0x69
	.byte	0xc
	.4byte	0x94
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF965
	.byte	0x6a
	.byte	0xc
	.4byte	0x94
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF966
	.byte	0x6b
	.byte	0xc
	.4byte	0x94
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF967
	.byte	0x6c
	.byte	0xc
	.4byte	0x94
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF968
	.byte	0x6d
	.byte	0xb
	.4byte	0x88
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF969
	.byte	0x6e
	.byte	0xa
	.4byte	0x12e
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF970
	.uleb128 0x3
	.4byte	.LASF971
	.byte	0x4
	.byte	0x70
	.byte	0x3
	.4byte	0xa0
	.uleb128 0x7
	.4byte	.LASF975
	.byte	0x5
	.byte	0xd
	.byte	0x18
	.4byte	0x14d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x135
	.uleb128 0x9
	.4byte	0x141
	.byte	0x1
	.byte	0x5
	.byte	0x11
	.uleb128 0x5
	.byte	0x3
	.4byte	gps_inst
	.uleb128 0xa
	.4byte	.LASF976
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x7
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x5
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x6
	.uleb128 0
	.4byte	.LASF392
	.byte	0x6
	.uleb128 0
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0
	.4byte	.LASF394
	.byte	0x6
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0
	.4byte	.LASF398
	.byte	0x6
	.uleb128 0
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x6
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0
	.4byte	.LASF421
	.byte	0x6
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x6
	.uleb128 0
	.4byte	.LASF424
	.byte	0x6
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x6
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x6
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x6
	.uleb128 0
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0
	.4byte	.LASF443
	.byte	0x6
	.uleb128 0
	.4byte	.LASF444
	.byte	0x6
	.uleb128 0
	.4byte	.LASF445
	.byte	0x6
	.uleb128 0
	.4byte	.LASF446
	.byte	0x6
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF451
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4
	.file 6 "../Src/../inc/../Drivers/Inc/stm32f4xx.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF452
	.file 7 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/include/stdint.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x7
	.file 8 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF453
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF454
	.file 9 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/features.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF455
	.file 10 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 11 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/../../../../arm-none-eabi/include/sys/_intsup.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF610
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.file 12 "../Src/../inc/../Drivers/Inc/stm32f407xx_gpio_driver.h"
	.byte	0x3
	.uleb128 0x1ea
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF806
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x6
	.byte	0x4
	.file 13 "C:\\ST\\STM32CubeIDE_1.12.1\\STM32CubeIDE\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.win32_1.1.1.202309131626\\tools\\bin/../lib/gcc/arm-none-eabi/11.3.1/include/stdbool.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 14 "../Src/../inc/../Drivers/Inc/stm32f407xx_spi_driver.h"
	.byte	0x3
	.uleb128 0x1eb
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x3
	.uleb128 0x1ec
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF945
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._newlib_version.h.4.529115dae5e4f67702b1de0b6e841f38,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF460
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.features.h.33.3e67abe6fb64142d4f6fa9496796153c,comdat
.Ldebug_macro3:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF462
	.byte	0x6
	.uleb128 0x83
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF464
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF466
	.byte	0x6
	.uleb128 0x8a
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF468
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF480
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._default_types.h.15.247e5cd201eca3442cbf5404108c4935,comdat
.Ldebug_macro4:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF491
	.byte	0x6
	.uleb128 0xf4
	.4byte	.LASF492
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._intsup.h.10.48bafbb683905c4daa4565a85aeeb264,comdat
.Ldebug_macro5:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF494
	.byte	0x6
	.uleb128 0x2b
	.4byte	.LASF495
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF496
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF497
	.byte	0x6
	.uleb128 0x2e
	.4byte	.LASF498
	.byte	0x2
	.uleb128 0x2f
	.ascii	"int\000"
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF499
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF500
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF523
	.byte	0x6
	.uleb128 0xb8
	.4byte	.LASF495
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF496
	.byte	0x6
	.uleb128 0xba
	.4byte	.LASF497
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF498
	.byte	0x2
	.uleb128 0xbc
	.ascii	"int\000"
	.byte	0x6
	.uleb128 0xbd
	.4byte	.LASF501
	.byte	0x6
	.uleb128 0xc2
	.4byte	.LASF499
	.byte	0x6
	.uleb128 0xc3
	.4byte	.LASF500
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF540
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.23.d53047a68f4a85177f80b422d52785ed,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x180
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x18c
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x1a4
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x1b1
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF609
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stm32f4xx.h.21.b4a8d8ee18d8123e41fc114b3fbae0c5,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF805
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.29.4a1c88fe569adb8d03217dd16982ca34,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF811
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stm32f407xx_gpio_driver.h.18.3b6e6263f9188e5e6b08abe322f27349,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF860
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stm32f407xx_spi_driver.h.9.1cd7da15d9d3d027ffd003991ffa7f84,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF883
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stm32f407_usart_driver.h.10.61b10102c83aa9848f455bb29bae6465,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF944
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF866:
	.ascii	"DIVISOR_32 (4)\000"
.LASF930:
	.ascii	"USART_CR3_ONEBIT 11\000"
.LASF457:
	.ascii	"_NEWLIB_VERSION \"4.2.0\"\000"
.LASF599:
	.ascii	"WINT_MIN (__WINT_MIN__)\000"
.LASF186:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF354:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF478:
	.ascii	"__SVID_VISIBLE 1\000"
.LASF629:
	.ascii	"GPIOG_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x1800)\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF225:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF374:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF892:
	.ascii	"USART_SR_TXE 7\000"
.LASF366:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF799:
	.ascii	"SPI_BSY_FLAG (0x80)\000"
.LASF962:
	.ascii	"stop_bits\000"
.LASF227:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF616:
	.ascii	"SRAM SRAM1_BASEADDR\000"
.LASF787:
	.ascii	"SPI_CR2_TXEIE 7\000"
.LASF318:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF338:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF310:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF833:
	.ascii	"GPIO_PIN_5 (5)\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF555:
	.ascii	"INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)\000"
.LASF532:
	.ascii	"_UINT32_T_DECLARED \000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF335:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF220:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF701:
	.ascii	"I2C2_PCLK_EN (RCC_INST->APB1ENR |= (1 << 22))\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF311:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF298:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF500:
	.ascii	"__int20__\000"
.LASF847:
	.ascii	"GPIO_AF3 (3)\000"
.LASF715:
	.ascii	"GPIOC_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 2))\000"
.LASF694:
	.ascii	"GPIOE_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 4))\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF169:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF258:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF477:
	.ascii	"__POSIX_VISIBLE 200809\000"
.LASF294:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF246:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF763:
	.ascii	"ENABLE_RED_LED (GPIOD->ODR |= (1 << 14))\000"
.LASF445:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF331:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF34:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF893:
	.ascii	"USART_SR_LBD 8\000"
.LASF584:
	.ascii	"UINT_FAST32_MAX (__UINT_FAST32_MAX__)\000"
.LASF43:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF206:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF877:
	.ascii	"SPI_SLAVE (0)\000"
.LASF293:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF203:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF182:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF180:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF652:
	.ascii	"PRIORITY_LVL_0 (0x00)\000"
.LASF44:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF678:
	.ascii	"SYSCFG ((SYSCFG_RegDef_t*)SYSCFG_BASEADDR)\000"
.LASF700:
	.ascii	"I2C1_PCLK_EN (RCC_INST->APB1ENR |= (1 << 21))\000"
.LASF221:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF718:
	.ascii	"GPIOF_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 4))\000"
.LASF932:
	.ascii	"WORD_9 1\000"
.LASF691:
	.ascii	"GPIOB_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 1))\000"
.LASF512:
	.ascii	"__INT8 \"hh\"\000"
.LASF367:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF562:
	.ascii	"INT_LEAST16_MAX (__INT_LEAST16_MAX__)\000"
.LASF670:
	.ascii	"GPIOC ((GPIO_RegDef_t*) GPIOC_BASEADDR)\000"
.LASF580:
	.ascii	"INT_FAST16_MAX (__INT_FAST16_MAX__)\000"
.LASF281:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF42:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF656:
	.ascii	"PRIORITY_LVL_4 (0x40)\000"
.LASF37:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF695:
	.ascii	"GPIOF_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 4))\000"
.LASF553:
	.ascii	"INT8_MAX (__INT8_MAX__)\000"
.LASF244:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF594:
	.ascii	"PTRDIFF_MAX (__PTRDIFF_MAX__)\000"
.LASF202:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF941:
	.ascii	"DEVICE_RX 0\000"
.LASF754:
	.ascii	"IRQ_NO_SPI3 (51)\000"
.LASF254:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF212:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF758:
	.ascii	"SET ENABLE\000"
.LASF199:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF942:
	.ascii	"DEVICE_TX 1\000"
.LASF559:
	.ascii	"INT16_MAX (__INT16_MAX__)\000"
.LASF905:
	.ascii	"USART_CR1_PCE 10\000"
.LASF922:
	.ascii	"USART_CR3_HDSEL 3\000"
.LASF271:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF217:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF846:
	.ascii	"GPIO_AF2 (2)\000"
.LASF631:
	.ascii	"GPIOI_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x2000)\000"
.LASF547:
	.ascii	"__int_fast32_t_defined 1\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF619:
	.ascii	"APB2PERIPHERAL_BASEADDR 0x40010000U\000"
.LASF306:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF668:
	.ascii	"GPIOA ((GPIO_RegDef_t*) GPIOA_BASEADDR)\000"
.LASF602:
	.ascii	"INT16_C(x) __INT16_C(x)\000"
.LASF963:
	.ascii	"cpha\000"
.LASF250:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF745:
	.ascii	"IRQ_NO_EXTI0 (6)\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF340:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF859:
	.ascii	"GPIO_AF15 (15)\000"
.LASF330:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF888:
	.ascii	"USART_SR_ORE 3\000"
.LASF552:
	.ascii	"INT8_MIN (-__INT8_MAX__ - 1)\000"
.LASF274:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF524:
	.ascii	"_SYS__STDINT_H \000"
.LASF574:
	.ascii	"INT_LEAST64_MAX (__INT_LEAST64_MAX__)\000"
.LASF216:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF698:
	.ascii	"GPIOI_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 8))\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF861:
	.ascii	"DRIVERS_INC_STM32F407XX_SPI_DRIVER_H_ \000"
.LASF857:
	.ascii	"GPIO_AF13 (13)\000"
.LASF727:
	.ascii	"SPI2_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 14))\000"
.LASF307:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF556:
	.ascii	"INT_LEAST8_MAX (__INT_LEAST8_MAX__)\000"
.LASF951:
	.ascii	"__uint8_t\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF419:
	.ascii	"__VFP_FP__ 1\000"
.LASF522:
	.ascii	"__LEAST32 \"l\"\000"
.LASF515:
	.ascii	"__INT64 \"ll\"\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF767:
	.ascii	"SPI_CR1_CPHA 0\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF573:
	.ascii	"INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)\000"
.LASF461:
	.ascii	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_M"
	.ascii	"INOR__ >= ((maj) << 16) + (min))\000"
.LASF263:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF539:
	.ascii	"_INTPTR_T_DECLARED \000"
.LASF685:
	.ascii	"USART3 ((usart_regdef_t*)USART3_BASEADDR)\000"
.LASF863:
	.ascii	"DIVISOR_4 (1)\000"
.LASF243:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF582:
	.ascii	"INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)\000"
.LASF843:
	.ascii	"GPIO_PIN_15 (15)\000"
.LASF55:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF870:
	.ascii	"LEADING_EDGE (0)\000"
.LASF868:
	.ascii	"DIVISOR_128 (6)\000"
.LASF702:
	.ascii	"I2C3_PCLK_EN (RCC_INST->APB1ENR |= (1 << 23))\000"
.LASF296:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF791:
	.ascii	"SPI_SR_UDR 3\000"
.LASF302:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF950:
	.ascii	"long int\000"
.LASF856:
	.ascii	"GPIO_AF12 (12)\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF236:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF173:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF583:
	.ascii	"INT_FAST32_MAX (__INT_FAST32_MAX__)\000"
.LASF925:
	.ascii	"USART_CR3_DMAR 6\000"
.LASF240:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF633:
	.ascii	"RCC_RESET_REG (AHB1PERIPHERAL_BASEADDR + 0x10)\000"
.LASF838:
	.ascii	"GPIO_PIN_10 (10)\000"
.LASF59:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF358:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF585:
	.ascii	"INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)\000"
.LASF370:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF889:
	.ascii	"USART_SR_IDLE 4\000"
.LASF487:
	.ascii	"___int64_t_defined 1\000"
.LASF429:
	.ascii	"__ARM_NEON__\000"
.LASF551:
	.ascii	"UINTPTR_MAX (__UINTPTR_MAX__)\000"
.LASF201:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF432:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF284:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF769:
	.ascii	"SPI_CR1_MSTER 2\000"
.LASF33:
	.ascii	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\"\000"
.LASF535:
	.ascii	"_UINT64_T_DECLARED \000"
.LASF692:
	.ascii	"GPIOC_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 2))\000"
.LASF782:
	.ascii	"SPI_CR2_TXDMAEN 1\000"
.LASF41:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF468:
	.ascii	"_POSIX_C_SOURCE 200809L\000"
.LASF179:
	.ascii	"__DBL_IS_IEC_60559__ 2\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF968:
	.ascii	"over8\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF945:
	.ascii	"DEFAULT_BAUD 115200\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF232:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF615:
	.ascii	"ROM 0x1FFF0000U\000"
.LASF517:
	.ascii	"__FAST16 \000"
.LASF804:
	.ascii	"SPI_DFF_VALUE (0x400)\000"
.LASF572:
	.ascii	"UINT64_MAX (__UINT64_MAX__)\000"
.LASF475:
	.ascii	"__LARGEFILE_VISIBLE 0\000"
.LASF931:
	.ascii	"WORD_8 0\000"
.LASF907:
	.ascii	"USART_CR1_M 12\000"
.LASF458:
	.ascii	"__NEWLIB__ 4\000"
.LASF32:
	.ascii	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\"\000"
.LASF681:
	.ascii	"SPI3 ((SPI_RegDef_t*) SPI3_BASEADDR)\000"
.LASF360:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF783:
	.ascii	"SPI_CR2_SSOE 2\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF526:
	.ascii	"_UINT8_T_DECLARED \000"
.LASF946:
	.ascii	"signed char\000"
.LASF957:
	.ascii	"uint8_t\000"
.LASF589:
	.ascii	"INTMAX_MIN (-INTMAX_MAX - 1)\000"
.LASF428:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF364:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF596:
	.ascii	"WCHAR_MIN (__WCHAR_MIN__)\000"
.LASF614:
	.ascii	"SRAM2_BASEADDR 0x2001C000U\000"
.LASF256:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF919:
	.ascii	"USART_CR3_EIE 0\000"
.LASF320:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF373:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF175:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF8:
	.ascii	"__VERSION__ \"11.3.1 20220712\"\000"
.LASF845:
	.ascii	"GPIO_AF1 (1)\000"
.LASF407:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF453:
	.ascii	"_STDINT_H \000"
.LASF289:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF899:
	.ascii	"USART_CR1_IDLEIE 4\000"
.LASF219:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF824:
	.ascii	"GPIO_SPEED_VHIGH (3)\000"
.LASF797:
	.ascii	"SPI_TX_BUFFER_EMPTY (0x2)\000"
.LASF753:
	.ascii	"IRQ_NO_SPI2 (36)\000"
.LASF65:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF947:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF241:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF779:
	.ascii	"SPI_CR1_BIDI_OE 14\000"
.LASF259:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF645:
	.ascii	"SPI1_BASEADDR (APB2PERIPHERAL_BASEADDR + 0x3000)\000"
.LASF781:
	.ascii	"SPI_CR2_RXDMAEN 0\000"
.LASF734:
	.ascii	"UART5_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 20))\000"
.LASF760:
	.ascii	"GPIO_PIN_SET SET\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF655:
	.ascii	"PRIORITY_LVL_3 (0x30)\000"
.LASF653:
	.ascii	"PRIORITY_LVL_1 (0x10)\000"
.LASF618:
	.ascii	"APB1PERIPHERAL_BASEADDR PERIPHERAL_BASEADDR\000"
.LASF853:
	.ascii	"GPIO_AF9 (9)\000"
.LASF577:
	.ascii	"INT_FAST8_MAX (__INT_FAST8_MAX__)\000"
.LASF590:
	.ascii	"UINTMAX_MAX (__UINTMAX_MAX__)\000"
.LASF334:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF886:
	.ascii	"USART_SR_FE 1\000"
.LASF548:
	.ascii	"__int_fast64_t_defined 1\000"
.LASF912:
	.ascii	"USART_CR2_LBDIE 7\000"
.LASF675:
	.ascii	"GPIOH ((GPIO_RegDef_t*) GPIOH_BASEADDR)\000"
.LASF414:
	.ascii	"__thumb2__ 1\000"
.LASF321:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF62:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF623:
	.ascii	"GPIOA_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x0000)\000"
.LASF929:
	.ascii	"USART_CR3_CTSIE 10\000"
.LASF455:
	.ascii	"_SYS_FEATURES_H \000"
.LASF736:
	.ascii	"GPIOA_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 0));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 0)); } while(0)\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF661:
	.ascii	"PRIORITY_LVL_9 (0x90)\000"
.LASF36:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF897:
	.ascii	"USART_CR1_RE 2\000"
.LASF497:
	.ascii	"char\000"
.LASF357:
	.ascii	"__USA_IBIT__ 16\000"
.LASF368:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF608:
	.ascii	"INTMAX_C(x) __INTMAX_C(x)\000"
.LASF595:
	.ascii	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)\000"
.LASF699:
	.ascii	"SYSCFG_PCLK_EN (RCC_INST->APB2ENR |= (1 << 14))\000"
.LASF775:
	.ascii	"SPI_CR1_RX_ONLY 10\000"
.LASF66:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF906:
	.ascii	"USART_CR1_WAKE 11\000"
.LASF156:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF346:
	.ascii	"__HA_FBIT__ 7\000"
.LASF436:
	.ascii	"__FDPIC__\000"
.LASF776:
	.ascii	"SPI_CR1_DFF 11\000"
.LASF213:
	.ascii	"__FLT32_IS_IEC_60559__ 2\000"
.LASF593:
	.ascii	"SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))\000"
.LASF831:
	.ascii	"GPIO_PIN_3 (3)\000"
.LASF626:
	.ascii	"GPIOD_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x0C00)\000"
.LASF610:
	.ascii	"_GCC_WRAP_STDINT_H \000"
.LASF921:
	.ascii	"USART_CR3_IRLP 2\000"
.LASF611:
	.ascii	"__vo volatile\000"
.LASF253:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF430:
	.ascii	"__ARM_NEON\000"
.LASF756:
	.ascii	"ENABLE 1\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF538:
	.ascii	"_UINTMAX_T_DECLARED \000"
.LASF823:
	.ascii	"GPIO_SPEED_HIGH (2)\000"
.LASF184:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF885:
	.ascii	"USART_SR_PE 0\000"
.LASF527:
	.ascii	"__int8_t_defined 1\000"
.LASF176:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF762:
	.ascii	"ENABLE_GREEN_LED (GPIOD->ODR |= (1 << 12))\000"
.LASF903:
	.ascii	"USART_CR1_PEIE 8\000"
.LASF943:
	.ascii	"OVERSAMPLE16 0\000"
.LASF588:
	.ascii	"INTMAX_MAX (__INTMAX_MAX__)\000"
.LASF565:
	.ascii	"INT32_MAX (__INT32_MAX__)\000"
.LASF640:
	.ascii	"USART2_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x4400)\000"
.LASF836:
	.ascii	"GPIO_PIN_8 (8)\000"
.LASF740:
	.ascii	"GPIOE_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 4));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 4)); } while(0)\000"
.LASF350:
	.ascii	"__DA_FBIT__ 31\000"
.LASF954:
	.ascii	"long long int\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1016\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF489:
	.ascii	"___int_least16_t_defined 1\000"
.LASF916:
	.ascii	"USART_CR2_CLKEN 11\000"
.LASF158:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF520:
	.ascii	"__LEAST8 \"hh\"\000"
.LASF325:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF827:
	.ascii	"GPIO_PIN_PD (2)\000"
.LASF813:
	.ascii	"GPIO_MODE_OUTPUT (1)\000"
.LASF563:
	.ascii	"UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF303:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF684:
	.ascii	"USART2 ((usart_regdef_t*)USART2_BASEADDR)\000"
.LASF157:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF895:
	.ascii	"USART_CR1_SBK 0\000"
.LASF713:
	.ascii	"GPIOA_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 0))\000"
.LASF874:
	.ascii	"SPI_SW_SSM (1)\000"
.LASF416:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF542:
	.ascii	"__int_least16_t_defined 1\000"
.LASF632:
	.ascii	"RCC_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x3800)\000"
.LASF444:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF568:
	.ascii	"INT_LEAST32_MAX (__INT_LEAST32_MAX__)\000"
.LASF567:
	.ascii	"INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF737:
	.ascii	"GPIOB_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 1));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 1)); } while(0)\000"
.LASF621:
	.ascii	"AHB2PERIPHERAL_BASEADDR 0x50000000U\000"
.LASF291:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF964:
	.ascii	"cpol\000"
.LASF476:
	.ascii	"__MISC_VISIBLE 1\000"
.LASF844:
	.ascii	"GPIO_AF0 (0)\000"
.LASF211:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF194:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF751:
	.ascii	"IRQ_NO_EXTI15_10 (40)\000"
.LASF795:
	.ascii	"SPI_SR_BSY 7\000"
.LASF352:
	.ascii	"__TA_FBIT__ 63\000"
.LASF667:
	.ascii	"PRIORITY_LVL_15 (0xf0)\000"
.LASF549:
	.ascii	"INTPTR_MIN (-__INTPTR_MAX__ - 1)\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF952:
	.ascii	"__uint32_t\000"
.LASF829:
	.ascii	"GPIO_PIN_1 (1)\000"
.LASF821:
	.ascii	"GPIO_SPEED_LOW (0)\000"
.LASF808:
	.ascii	"bool _Bool\000"
.LASF347:
	.ascii	"__HA_IBIT__ 8\000"
.LASF898:
	.ascii	"USART_CR1_TE 3\000"
.LASF337:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF974:
	.ascii	"D:/Repos/STM32_Projects/stm32f4xx_drivers/stm32f4xx"
	.ascii	"_drivers/Debug\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF162:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF592:
	.ascii	"SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)\000"
.LASF852:
	.ascii	"GPIO_AF8 (8)\000"
.LASF528:
	.ascii	"_INT16_T_DECLARED \000"
.LASF245:
	.ascii	"__FLT32X_IS_IEC_60559__ 2\000"
.LASF777:
	.ascii	"SPI_CR1_CRC_NEXT 12\000"
.LASF913:
	.ascii	"USART_CR2_LBCL 8\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF676:
	.ascii	"GPIOI ((GPIO_RegDef_t*) GPIOI_BASEADDR)\000"
.LASF544:
	.ascii	"__int_least64_t_defined 1\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF742:
	.ascii	"GPIOG_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 6));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 6)); } while(0)\000"
.LASF622:
	.ascii	"AHB3PERIPHERAL_BASEADDR 0xA0000000U\000"
.LASF959:
	.ascii	"device_mode\000"
.LASF820:
	.ascii	"GPIO_OP_TYPE_OD (1)\000"
.LASF490:
	.ascii	"___int_least32_t_defined 1\000"
.LASF319:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF660:
	.ascii	"PRIORITY_LVL_8 (0x80)\000"
.LASF650:
	.ascii	"NVIC_ICER_BASEADDR (0XE000E180)\000"
.LASF830:
	.ascii	"GPIO_PIN_2 (2)\000"
.LASF363:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF872:
	.ascii	"IDLE_HIGH (1)\000"
.LASF703:
	.ascii	"SPI1_PCLK_EN (RCC_INST->APB2ENR |= (1 << 12))\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF606:
	.ascii	"INT64_C(x) __INT64_C(x)\000"
.LASF469:
	.ascii	"_ATFILE_SOURCE\000"
.LASF579:
	.ascii	"INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF786:
	.ascii	"SPI_CR2_RXNEIE 6\000"
.LASF920:
	.ascii	"USART_CR3_IREN 1\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF388:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF973:
	.ascii	"../Src/gps.c\000"
.LASF564:
	.ascii	"INT32_MIN (-__INT32_MAX__ - 1)\000"
.LASF395:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF901:
	.ascii	"USART_CR1_TCIE 6\000"
.LASF654:
	.ascii	"PRIORITY_LVL_2 (0x20)\000"
.LASF784:
	.ascii	"SPI_CR2_FRF 4\000"
.LASF510:
	.ascii	"_INTPTR_EQ_INT \000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF234:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF728:
	.ascii	"SPI3_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 15))\000"
.LASF766:
	.ascii	"DELAY ((for(int i = 0; i < 500000; i++)))\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF174:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF268:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF902:
	.ascii	"USART_CR1_TXEIE 7\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF160:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF774:
	.ascii	"SPI_CR1_SSM 9\000"
.LASF299:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF850:
	.ascii	"GPIO_AF6 (6)\000"
.LASF382:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF484:
	.ascii	"___int8_t_defined 1\000"
.LASF248:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF953:
	.ascii	"long unsigned int\000"
.LASF349:
	.ascii	"__SA_IBIT__ 16\000"
.LASF64:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF495:
	.ascii	"signed\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF397:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF235:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF422:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF48:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF465:
	.ascii	"_POSIX_SOURCE\000"
.LASF790:
	.ascii	"SPI_SR_CHSIDE 2\000"
.LASF624:
	.ascii	"GPIOB_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x0400)\000"
.LASF680:
	.ascii	"SPI2 ((SPI_RegDef_t*) SPI2_BASEADDR)\000"
.LASF908:
	.ascii	"USART_CR1_UE 13\000"
.LASF819:
	.ascii	"GPIO_OP_TYPE_PP (0)\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF508:
	.ascii	"int +2\000"
.LASF600:
	.ascii	"INT8_C(x) __INT8_C(x)\000"
.LASF63:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF317:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF738:
	.ascii	"GPIOC_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 2));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 2)); } while(0)\000"
.LASF260:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF909:
	.ascii	"USART_CR1_OVER8 15\000"
.LASF904:
	.ascii	"USART_CR1_PS 9\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF411:
	.ascii	"__APCS_32__ 1\000"
.LASF446:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF464:
	.ascii	"_DEFAULT_SOURCE 1\000"
.LASF910:
	.ascii	"USART_CR2_ADD 0\000"
.LASF197:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF867:
	.ascii	"DIVISOR_64 (5)\000"
.LASF208:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF58:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF251:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF191:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF714:
	.ascii	"GPIOB_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 1))\000"
.LASF372:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF168:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF519:
	.ascii	"__FAST64 \"ll\"\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF503:
	.ascii	"unsigned +0\000"
.LASF242:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF719:
	.ascii	"GPIOG_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 6))\000"
.LASF343:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF383:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF304:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF531:
	.ascii	"_INT32_T_DECLARED \000"
.LASF796:
	.ascii	"SPI_SR_FRE 8\000"
.LASF222:
	.ascii	"__FLT64_NORM_MAX__ 1.7976931348623157e+308F64\000"
.LASF613:
	.ascii	"SRAM1_BASEADDR 0x20000000U\000"
.LASF518:
	.ascii	"__FAST32 \000"
.LASF805:
	.ascii	"FULL_REG_MASK (0xffffffff)\000"
.LASF506:
	.ascii	"__int20 +2\000"
.LASF638:
	.ascii	"SPI3_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x3c00)\000"
.LASF641:
	.ascii	"USART3_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x4800)\000"
.LASF192:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF773:
	.ascii	"SPI_CR1_SSI 8\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF389:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF530:
	.ascii	"__int16_t_defined 1\000"
.LASF282:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF731:
	.ascii	"USART2_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 17))\000"
.LASF646:
	.ascii	"USART1_BASEADDR (APB2PERIPHERAL_BASEADDR + 0x1000)\000"
.LASF5:
	.ascii	"__GNUC__ 11\000"
.LASF381:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF739:
	.ascii	"GPIOD_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 3));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 3)); } while(0)\000"
.LASF647:
	.ascii	"USART6_BASEADDR (APB2PERIPHERAL_BASEADDR + 0x1400)\000"
.LASF894:
	.ascii	"USART_SR_CTS 9\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF154:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF301:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF851:
	.ascii	"GPIO_AF7 (7)\000"
.LASF265:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF597:
	.ascii	"WCHAR_MAX (__WCHAR_MAX__)\000"
.LASF513:
	.ascii	"__INT16 \"h\"\000"
.LASF721:
	.ascii	"GPIOI_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 8))\000"
.LASF456:
	.ascii	"_NEWLIB_VERSION_H__ 1\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF313:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF255:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF188:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF410:
	.ascii	"__ARM_ARCH 7\000"
.LASF934:
	.ascii	"STOP_HALF 0x1\000"
.LASF842:
	.ascii	"GPIO_PIN_14 (14)\000"
.LASF933:
	.ascii	"STOP_1 0x0\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF688:
	.ascii	"NVIC_CLR_EN ((NVIC_DI_RegDef_t*)NVIC_ICER_BASEADDR)"
	.ascii	"\000"
.LASF398:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF911:
	.ascii	"USART_CR2_LBDL 6\000"
.LASF566:
	.ascii	"UINT32_MAX (__UINT32_MAX__)\000"
.LASF855:
	.ascii	"GPIO_AF11 (11)\000"
.LASF683:
	.ascii	"USART1 ((usart_regdef_t*)USART1_BASEADDR)\000"
.LASF195:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF764:
	.ascii	"DISABLE_GREEN_LED (GPIOD->ODR &= ~(1 << 12))\000"
.LASF598:
	.ascii	"WINT_MAX (__WINT_MAX__)\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF725:
	.ascii	"SPI1_PCLK_DI (RCC_INST->APB2ENR &= ~(1 << 12))\000"
.LASF420:
	.ascii	"__ARM_FP\000"
.LASF666:
	.ascii	"PRIORITY_LVL_14 (0xe0)\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF239:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF218:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF648:
	.ascii	"SYSCFG_BASEADDR (APB2PERIPHERAL_BASEADDR + 0x3800)\000"
.LASF970:
	.ascii	"double\000"
.LASF223:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF486:
	.ascii	"___int32_t_defined 1\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF46:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF620:
	.ascii	"AHB1PERIPHERAL_BASEADDR 0x40020000U\000"
.LASF266:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF560:
	.ascii	"UINT16_MAX (__UINT16_MAX__)\000"
.LASF384:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF744:
	.ascii	"GPIO_BASEADDR_TO_CODE(x) ((x == GPIOA)? 0 : (x == G"
	.ascii	"PIOB) ? 1 : (x == GPIOC) ? 2 : (x == GPIOD) ? 3 : ("
	.ascii	"x == GPIOE) ? 4 : (x == GPIOF) ? 5 : (x == GPIOG) ?"
	.ascii	" 6 : (x == GPIOH) ? 7 : (x == GPIOI) ? 8 : 0)\000"
.LASF472:
	.ascii	"__BSD_VISIBLE 1\000"
.LASF561:
	.ascii	"INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)\000"
.LASF837:
	.ascii	"GPIO_PIN_9 (9)\000"
.LASF264:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF802:
	.ascii	"SPI_ENABLE(pSPIx) (pSPIx->CR1 |= (ENABLE << SPI_CR1"
	.ascii	"_SPE))\000"
.LASF491:
	.ascii	"___int_least64_t_defined 1\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF247:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF470:
	.ascii	"_ATFILE_SOURCE 1\000"
.LASF494:
	.ascii	"__STDINT_EXP(x) __ ##x ##__\000"
.LASF481:
	.ascii	"__EXP(x) __ ##x ##__\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF207:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF431:
	.ascii	"__ARM_NEON_FP\000"
.LASF812:
	.ascii	"GPIO_MODE_INPUT (0)\000"
.LASF261:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF342:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF172:
	.ascii	"__DBL_NORM_MAX__ ((double)1.7976931348623157e+308L)"
	.ascii	"\000"
.LASF546:
	.ascii	"__int_fast16_t_defined 1\000"
.LASF716:
	.ascii	"GPIOD_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 3))\000"
.LASF185:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF571:
	.ascii	"INT64_MAX (__INT64_MAX__)\000"
.LASF956:
	.ascii	"unsigned int\000"
.LASF459:
	.ascii	"__NEWLIB_MINOR__ 2\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF228:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF605:
	.ascii	"UINT32_C(x) __UINT32_C(x)\000"
.LASF891:
	.ascii	"USART_SR_TC 6\000"
.LASF324:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF292:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF576:
	.ascii	"INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)\000"
.LASF226:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF305:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF900:
	.ascii	"USART_CR1_RXNEIE 5\000"
.LASF361:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF705:
	.ascii	"SPI3_PCLK_EN (RCC_INST->APB1ENR |= (1 << 15))\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF696:
	.ascii	"GPIOG_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 6))\000"
.LASF772:
	.ascii	"SPI_CR1_LSB_FIRST 7\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF492:
	.ascii	"__EXP\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF708:
	.ascii	"USART6_PCLK_EN (RCC_INST->APB2ENR |= (1 << 5))\000"
.LASF697:
	.ascii	"GPIOH_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 7))\000"
.LASF399:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF336:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF928:
	.ascii	"USART_CR3_CTSE 9\000"
.LASF803:
	.ascii	"SPI_DISABLE(pSPIx) (pSPIx->CR1 |= (DISABLE << SPI_C"
	.ascii	"R1_SPE))\000"
.LASF424:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF625:
	.ascii	"GPIOC_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x0800)\000"
.LASF269:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF386:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF659:
	.ascii	"PRIORITY_LVL_7 (0x70)\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF488:
	.ascii	"___int_least8_t_defined 1\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF47:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF545:
	.ascii	"__int_fast8_t_defined 1\000"
.LASF822:
	.ascii	"GPIO_SPEED_MED (1)\000"
.LASF441:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF792:
	.ascii	"SPI_SR_CRCERR 4\000"
.LASF810:
	.ascii	"false 0\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF637:
	.ascii	"SPI2_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x3800)\000"
.LASF550:
	.ascii	"INTPTR_MAX (__INTPTR_MAX__)\000"
.LASF612:
	.ascii	"FLASH_BASEADDR 0x08000000U\000"
.LASF809:
	.ascii	"true 1\000"
.LASF356:
	.ascii	"__USA_FBIT__ 16\000"
.LASF693:
	.ascii	"GPIOD_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 3))\000"
.LASF711:
	.ascii	"UART4_PCLK_EN (RCC_INST->APB1ENR |= (1 << 19))\000"
.LASF61:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF183:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF161:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF471:
	.ascii	"__ATFILE_VISIBLE 1\000"
.LASF712:
	.ascii	"UART5_PCLK_EN (RCC_INST->APB1ENR |= (1 << 20))\000"
.LASF270:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF860:
	.ascii	"ALT_FUNC_EN(VAL,SHIFT) (VAL << (4 * SHIFT))\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF238:
	.ascii	"__FLT32X_NORM_MAX__ 1.7976931348623157e+308F32x\000"
.LASF408:
	.ascii	"__arm__ 1\000"
.LASF743:
	.ascii	"GPIOH_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 7));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 7)); } while(0)\000"
.LASF735:
	.ascii	"SYSCFG_PCLK_DI (RCC_INST->APB2ENR &= ~(1 << 14))\000"
.LASF914:
	.ascii	"USART_CR2_CPHA 9\000"
.LASF200:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF915:
	.ascii	"USART_CR2_CPOL 10\000"
.LASF741:
	.ascii	"GPIOF_RESET() do{ (RCC_INST->AHB1RSTR |= (1 << 5));"
	.ascii	" (RCC_INST->AHB1RSTR &= ~(1 << 5)); } while(0)\000"
.LASF474:
	.ascii	"__ISO_C_VISIBLE 2011\000"
.LASF558:
	.ascii	"INT16_MIN (-__INT16_MAX__ - 1)\000"
.LASF924:
	.ascii	"USART_CR3_SCEN 5\000"
.LASF423:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF189:
	.ascii	"__LDBL_NORM_MAX__ 1.7976931348623157e+308L\000"
.LASF746:
	.ascii	"IRQ_NO_EXTI1 (7\000"
.LASF828:
	.ascii	"GPIO_PIN_0 (0)\000"
.LASF454:
	.ascii	"_MACHINE__DEFAULT_TYPES_H \000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF890:
	.ascii	"USART_SR_RXNE 5\000"
.LASF353:
	.ascii	"__TA_IBIT__ 64\000"
.LASF690:
	.ascii	"GPIOA_PCLK_EN (RCC_INST->AHB1ENR |= (1 << 0))\000"
.LASF523:
	.ascii	"__LEAST64 \"ll\"\000"
.LASF729:
	.ascii	"USART1_PCLK_DI (RCC_INST->APB2ENR &= ~(1 << 4))\000"
.LASF966:
	.ascii	"parity_type\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF617:
	.ascii	"PERIPHERAL_BASEADDR 0x40000000U\000"
.LASF862:
	.ascii	"DIVISOR_2 (0)\000"
.LASF789:
	.ascii	"SPI_SR_TXE 1\000"
.LASF417:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF501:
	.ascii	"long\000"
.LASF834:
	.ascii	"GPIO_PIN_6 (6)\000"
.LASF709:
	.ascii	"USART2_PCLK_EN (RCC_INST->APB1ENR |= (1 << 17))\000"
.LASF498:
	.ascii	"short\000"
.LASF262:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF396:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF677:
	.ascii	"EXTI ((EXTI_RegDef_t*) EXTI_BASEADDR)\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF267:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF451:
	.ascii	"INC_GPS_H_ \000"
.LASF166:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF785:
	.ascii	"SPI_CR2_ERRIE 5\000"
.LASF193:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF937:
	.ascii	"RX_DEVICE 0\000"
.LASF778:
	.ascii	"SPI_CR1_CRC_EN 13\000"
.LASF198:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF452:
	.ascii	"INC_STM32F4XX_H_ \000"
.LASF865:
	.ascii	"DIVISOR_16 (3)\000"
.LASF689:
	.ascii	"NVIC_SET_EN ((NVIC_EN_RegDef_t*) NVIC_ISER_BASEADDR"
	.ascii	")\000"
.LASF961:
	.ascii	"word_length\000"
.LASF707:
	.ascii	"USART1_PCLK_EN (RCC_INST->APB2ENR |= (1 << 4))\000"
.LASF609:
	.ascii	"UINTMAX_C(x) __UINTMAX_C(x)\000"
.LASF944:
	.ascii	"OVERSAMPLE8 1\000"
.LASF587:
	.ascii	"UINT_FAST64_MAX (__UINT_FAST64_MAX__)\000"
.LASF502:
	.ascii	"signed +0\000"
.LASF635:
	.ascii	"I2C2_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x5800)\000"
.LASF665:
	.ascii	"PRIORITY_LVL_13 (0xd0)\000"
.LASF286:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF971:
	.ascii	"usart_config_t\000"
.LASF976:
	.ascii	"usart_init\000"
.LASF768:
	.ascii	"SPI_CR1_CPOL 1\000"
.LASF390:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF53:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF642:
	.ascii	"UART4_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x4c00)\000"
.LASF858:
	.ascii	"GPIO_AF14 (14)\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF257:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF229:
	.ascii	"__FLT64_IS_IEC_60559__ 2\000"
.LASF460:
	.ascii	"__NEWLIB_PATCHLEVEL__ 0\000"
.LASF627:
	.ascii	"GPIOE_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x1000)\000"
.LASF674:
	.ascii	"GPIOG ((GPIO_RegDef_t*) GPIOG_BASEADDR)\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF155:
	.ascii	"__FLT_NORM_MAX__ 3.4028234663852886e+38F\000"
.LASF955:
	.ascii	"long long unsigned int\000"
.LASF575:
	.ascii	"UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF312:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF196:
	.ascii	"__LDBL_IS_IEC_60559__ 2\000"
.LASF35:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF533:
	.ascii	"__int32_t_defined 1\000"
.LASF332:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF473:
	.ascii	"__GNU_VISIBLE 0\000"
.LASF771:
	.ascii	"SPI_CR1_SPE 6\000"
.LASF287:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF339:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF770:
	.ascii	"SPI_CR1_BAUDRATE 3\000"
.LASF704:
	.ascii	"SPI2_PCLK_EN (RCC_INST->APB1ENR |= (1 << 14))\000"
.LASF60:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF630:
	.ascii	"GPIOH_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x1C00)\000"
.LASF288:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF662:
	.ascii	"PRIORITY_LVL_10 (0xA0)\000"
.LASF975:
	.ascii	"gps_inst\000"
.LASF56:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF794:
	.ascii	"SPI_SR_OVR 6\000"
.LASF537:
	.ascii	"_INTMAX_T_DECLARED \000"
.LASF309:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF40:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF634:
	.ascii	"I2C1_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x5400)\000"
.LASF231:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF869:
	.ascii	"DIVISOR_256 (7)\000"
.LASF344:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF672:
	.ascii	"GPIOE ((GPIO_RegDef_t*) GPIOE_BASEADDR)\000"
.LASF482:
	.ascii	"__have_longlong64 1\000"
.LASF967:
	.ascii	"synchronous_mode\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF540:
	.ascii	"_UINTPTR_T_DECLARED \000"
.LASF936:
	.ascii	"STOP_ONE_HALF 0x3\000"
.LASF314:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF825:
	.ascii	"GPIO_NO_PUPD (0)\000"
.LASF682:
	.ascii	"SPI4 ((SPI_RegDef_t*) SPI4_BASEADDR)\000"
.LASF832:
	.ascii	"GPIO_PIN_4 (4)\000"
.LASF849:
	.ascii	"GPIO_AF5 (5)\000"
.LASF273:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF591:
	.ascii	"SIZE_MAX (__SIZE_MAX__)\000"
.LASF972:
	.ascii	"GNU C11 11.3.1 20220712 -mcpu=cortex-m4 -mfpu=fpv4-"
	.ascii	"sp-d16 -mfloat-abi=hard -mthumb -march=armv7e-m+fp "
	.ascii	"-g3 -O0 -std=gnu11 -ffunction-sections -fdata-secti"
	.ascii	"ons -fstack-usage -fcyclomatic-complexity\000"
.LASF333:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF939:
	.ascii	"SYNCHRONOUS 0\000"
.LASF447:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF45:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF369:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF639:
	.ascii	"SPI4_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x3400)\000"
.LASF748:
	.ascii	"IRQ_NO_EXTI3 (9)\000"
.LASF726:
	.ascii	"SPI4_PCLK_DI (RCC_INST->APB2ENR &= ~(1 << 13))\000"
.LASF706:
	.ascii	"SPI4_PCLK_EN (RCC_INST->APB2ENR |= (1 << 13))\000"
.LASF507:
	.ascii	"__int20__ +2\000"
.LASF636:
	.ascii	"I2C3_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x5c00)\000"
.LASF534:
	.ascii	"_INT64_T_DECLARED \000"
.LASF826:
	.ascii	"GPIO_PIN_PU (1)\000"
.LASF816:
	.ascii	"GPIO_MODE_IT_FT (4)\000"
.LASF752:
	.ascii	"IRQ_NO_SPI1 (35)\000"
.LASF717:
	.ascii	"GPIOE_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 4))\000"
.LASF965:
	.ascii	"parity_ctrl\000"
.LASF345:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF658:
	.ascii	"PRIORITY_LVL_6 (0x60)\000"
.LASF348:
	.ascii	"__SA_FBIT__ 15\000"
.LASF237:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF485:
	.ascii	"___int16_t_defined 1\000"
.LASF732:
	.ascii	"USART3_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 18))\000"
.LASF435:
	.ascii	"__ARM_EABI__ 1\000"
.LASF873:
	.ascii	"IDLE_LOW (0)\000"
.LASF449:
	.ascii	"__ELF__ 1\000"
.LASF163:
	.ascii	"__FLT_IS_IEC_60559__ 2\000"
.LASF415:
	.ascii	"__THUMBEL__ 1\000"
.LASF759:
	.ascii	"RESET DISABLE\000"
.LASF387:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF327:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF817:
	.ascii	"GPIO_MODE_IT_RT (5)\000"
.LASF923:
	.ascii	"USART_CR3_NACK 4\000"
.LASF607:
	.ascii	"UINT64_C(x) __UINT64_C(x)\000"
.LASF316:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF730:
	.ascii	"USART6_PCLK_DI (RCC_INST->APB2ENR &= ~(1 << 5))\000"
.LASF39:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF233:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF557:
	.ascii	"UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)\000"
.LASF341:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF57:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF38:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF798:
	.ascii	"SPI_RX_BUFFER_EMPTY (0x1)\000"
.LASF835:
	.ascii	"GPIO_PIN_7 (7)\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF918:
	.ascii	"USART_CR2_LINEN 14\000"
.LASF864:
	.ascii	"DIVISOR_8 (2)\000"
.LASF433:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF425:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF295:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF178:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF604:
	.ascii	"INT32_C(x) __INT32_C(x)\000"
.LASF581:
	.ascii	"UINT_FAST16_MAX (__UINT_FAST16_MAX__)\000"
.LASF279:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF881:
	.ascii	"SPI_CONFIG_FD (2)\000"
.LASF569:
	.ascii	"UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)\000"
.LASF504:
	.ascii	"char +0\000"
.LASF67:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF68:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF275:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF362:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF204:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF165:
	.ascii	"__DBL_DIG__ 15\000"
.LASF529:
	.ascii	"_UINT16_T_DECLARED \000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF50:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF543:
	.ascii	"__int_least32_t_defined 1\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF879:
	.ascii	"DFF_16BIT (1)\000"
.LASF190:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF442:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF297:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF761:
	.ascii	"GPIO_PIN_RESET RESET\000"
.LASF496:
	.ascii	"unsigned\000"
.LASF679:
	.ascii	"SPI1 ((SPI_RegDef_t*) SPI1_BASEADDR)\000"
.LASF723:
	.ascii	"I2C2_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 22))\000"
.LASF818:
	.ascii	"GPIO_MODE_IT_RFT (6)\000"
.LASF948:
	.ascii	"short int\000"
.LASF644:
	.ascii	"EXTI_BASEADDR (APB2PERIPHERAL_BASEADDR + 0x3c00)\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF359:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF521:
	.ascii	"__LEAST16 \"h\"\000"
.LASF365:
	.ascii	"__NO_INLINE__ 1\000"
.LASF687:
	.ascii	"NVIC_Priority_Set ((NVIC_ipr_RegDef_t*) NVIC_IPR_BA"
	.ascii	"SEADDR)\000"
.LASF896:
	.ascii	"USART_CR1_RWU 1\000"
.LASF570:
	.ascii	"INT64_MIN (-__INT64_MAX__ - 1)\000"
.LASF793:
	.ascii	"SPI_SR_MODF 5\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF440:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF722:
	.ascii	"I2C1_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 21))\000"
.LASF177:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF214:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF664:
	.ascii	"PRIORITY_LVL_12 (0xc0)\000"
.LASF757:
	.ascii	"DISABLE 0\000"
.LASF878:
	.ascii	"DFF_8BIT (0)\000"
.LASF686:
	.ascii	"RCC_INST ((RCC_RegDef_t*) RCC_BASEADDR)\000"
.LASF450:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF601:
	.ascii	"UINT8_C(x) __UINT8_C(x)\000"
.LASF788:
	.ascii	"SPI_SR_RXNE 0\000"
.LASF628:
	.ascii	"GPIOF_BASEADDR (AHB1PERIPHERAL_BASEADDR + 0x1400)\000"
.LASF170:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF483:
	.ascii	"__have_long32 1\000"
.LASF841:
	.ascii	"GPIO_PIN_13 (13)\000"
.LASF806:
	.ascii	"INC_STM32F407XX_GPIO_DRIVER_H_ \000"
.LASF887:
	.ascii	"USART_SR_NF 2\000"
.LASF536:
	.ascii	"__int64_t_defined 1\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF371:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF854:
	.ascii	"GPIO_AF10 (10)\000"
.LASF848:
	.ascii	"GPIO_AF4 (4)\000"
.LASF480:
	.ascii	"__SSP_FORTIFY_LEVEL 0\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF479:
	.ascii	"__XSI_VISIBLE 0\000"
.LASF927:
	.ascii	"USART_CR3_RTSE 8\000"
.LASF326:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF814:
	.ascii	"GPIO_MODE_ALTFN (2)\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF747:
	.ascii	"IRQ_NO_EXTI2 (8)\000"
.LASF224:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF462:
	.ascii	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)\000"
.LASF724:
	.ascii	"I2C3_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 23))\000"
.LASF673:
	.ascii	"GPIOF ((GPIO_RegDef_t*) GPIOF_BASEADDR)\000"
.LASF322:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF393:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF285:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF882:
	.ascii	"SPI_SIMPLEX_RX_ONLY (3)\000"
.LASF54:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF385:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF391:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF448:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF187:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF840:
	.ascii	"GPIO_PIN_12 (12)\000"
.LASF308:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF209:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF516:
	.ascii	"__FAST8 \000"
.LASF323:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF780:
	.ascii	"SPI_CR1_BIDI_MODE 15\000"
.LASF749:
	.ascii	"IRQ_NO_EXTI4 (10)\000"
.LASF514:
	.ascii	"__INT32 \"l\"\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF800:
	.ascii	"SPI_RX 0\000"
.LASF49:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF394:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF649:
	.ascii	"NVIC_ISER_BASEADDR (0xE000E100)\000"
.LASF463:
	.ascii	"_DEFAULT_SOURCE\000"
.LASF434:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF671:
	.ascii	"GPIOD ((GPIO_RegDef_t*) GPIOD_BASEADDR)\000"
.LASF969:
	.ascii	"clk_freq\000"
.LASF283:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF807:
	.ascii	"_STDBOOL_H \000"
.LASF733:
	.ascii	"UART4_PCLK_DI (RCC_INST->APB1ENR &= ~(1 << 19))\000"
.LASF801:
	.ascii	"SPI_TX 1\000"
.LASF883:
	.ascii	"SPI_ENABLE_MASK (0x20)\000"
.LASF525:
	.ascii	"_INT8_T_DECLARED \000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF277:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF603:
	.ascii	"UINT16_C(x) __UINT16_C(x)\000"
.LASF278:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF958:
	.ascii	"uint32_t\000"
.LASF493:
	.ascii	"_SYS__INTSUP_H \000"
.LASF643:
	.ascii	"UART5_BASEADDR (APB1PERIPHERAL_BASEADDR + 0x5000)\000"
.LASF290:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF412:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__ 1\000"
.LASF586:
	.ascii	"INT_FAST64_MAX (__INT_FAST64_MAX__)\000"
.LASF421:
	.ascii	"__ARM_FP 4\000"
.LASF466:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF657:
	.ascii	"PRIORITY_LVL_5 (0x50)\000"
.LASF355:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF300:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF315:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF940:
	.ascii	"ASYNCHRONOUS 1\000"
.LASF181:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF960:
	.ascii	"baud_rate\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF215:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF511:
	.ascii	"_INT32_EQ_LONG \000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF669:
	.ascii	"GPIOB ((GPIO_RegDef_t*) GPIOB_BASEADDR)\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF755:
	.ascii	"IRQ_NO_SPI4 (84)\000"
.LASF52:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF159:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF171:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF949:
	.ascii	"short unsigned int\000"
.LASF276:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF210:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF413:
	.ascii	"__thumb__ 1\000"
.LASF839:
	.ascii	"GPIO_PIN_11 (11)\000"
.LASF418:
	.ascii	"__ARMEL__ 1\000"
.LASF875:
	.ascii	"SPI_HW_SSM (0)\000"
.LASF328:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF811:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF651:
	.ascii	"NVIC_IPR_BASEADDR (0xE000E400)\000"
.LASF876:
	.ascii	"SPI_MASTER (1)\000"
.LASF871:
	.ascii	"TRAILING_EDGE (1)\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF710:
	.ascii	"USART3_PCLK_EN (RCC_INST->APB1ENR |= (1 << 18))\000"
.LASF409:
	.ascii	"__ARM_ARCH\000"
.LASF554:
	.ascii	"UINT8_MAX (__UINT8_MAX__)\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF578:
	.ascii	"UINT_FAST8_MAX (__UINT_FAST8_MAX__)\000"
.LASF541:
	.ascii	"__int_least8_t_defined 1\000"
.LASF509:
	.ascii	"long +4\000"
.LASF926:
	.ascii	"USART_CR3_DMAT 7\000"
.LASF938:
	.ascii	"TX_DEVICE 1\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF280:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF765:
	.ascii	"DISABLE_RED_LED (GPIOD->ODR &= ~(1 << 14))\000"
.LASF249:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF230:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF351:
	.ascii	"__DA_IBIT__ 32\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF252:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF505:
	.ascii	"short +1\000"
.LASF935:
	.ascii	"STOP_2 0x2\000"
.LASF720:
	.ascii	"GPIOH_PCLK_DI (RCC_INST->AHB1ENR &= ~(1 << 7))\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF51:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF329:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF167:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF499:
	.ascii	"__int20\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF205:
	.ascii	"__FLT32_NORM_MAX__ 3.4028234663852886e+38F32\000"
.LASF917:
	.ascii	"USART_CR2_STOP 12\000"
.LASF880:
	.ascii	"SPI_CONFIG_HD (1)\000"
.LASF467:
	.ascii	"_POSIX_C_SOURCE\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF164:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF272:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF750:
	.ascii	"IRQ_NO_EXTI9_5 (23)\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF663:
	.ascii	"PRIORITY_LVL_11 (0xb0)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF443:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF884:
	.ascii	"DRIVERS_INC_STM32F407_USART_DRIVER_H_ \000"
.LASF815:
	.ascii	"GPIO_MODE_ANALOG (3)\000"
	.ident	"GCC: (GNU Tools for STM32 11.3.rel1.20230912-1600) 11.3.1 20220712"