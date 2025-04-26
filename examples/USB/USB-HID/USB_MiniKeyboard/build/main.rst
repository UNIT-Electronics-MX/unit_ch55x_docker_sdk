                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _USB_ISR
                                     13 	.globl _USB_interrupt
                                     14 	.globl _KBD_print
                                     15 	.globl _KBD_release
                                     16 	.globl _KBD_press
                                     17 	.globl _HID_init
                                     18 	.globl _NEO_writeColor
                                     19 	.globl _DLY_ms
                                     20 	.globl _PP37
                                     21 	.globl _PP36
                                     22 	.globl _PP35
                                     23 	.globl _PP34
                                     24 	.globl _PP33
                                     25 	.globl _PP32
                                     26 	.globl _PP31
                                     27 	.globl _PP30
                                     28 	.globl _PP17
                                     29 	.globl _PP16
                                     30 	.globl _PP15
                                     31 	.globl _PP14
                                     32 	.globl _PP13
                                     33 	.globl _PP12
                                     34 	.globl _PP11
                                     35 	.globl _PP10
                                     36 	.globl _UIF_BUS_RST
                                     37 	.globl _UIF_DETECT
                                     38 	.globl _UIF_TRANSFER
                                     39 	.globl _UIF_SUSPEND
                                     40 	.globl _UIF_HST_SOF
                                     41 	.globl _UIF_FIFO_OV
                                     42 	.globl _U_SIE_FREE
                                     43 	.globl _U_TOG_OK
                                     44 	.globl _U_IS_NAK
                                     45 	.globl _ADC_CHAN0
                                     46 	.globl _ADC_CHAN1
                                     47 	.globl _CMP_CHAN
                                     48 	.globl _ADC_START
                                     49 	.globl _ADC_IF
                                     50 	.globl _CMP_IF
                                     51 	.globl _CMPO
                                     52 	.globl _U1RI
                                     53 	.globl _U1TI
                                     54 	.globl _U1RB8
                                     55 	.globl _U1TB8
                                     56 	.globl _U1REN
                                     57 	.globl _U1SMOD
                                     58 	.globl _U1SM0
                                     59 	.globl _S0_R_FIFO
                                     60 	.globl _S0_T_FIFO
                                     61 	.globl _S0_FREE
                                     62 	.globl _S0_IF_BYTE
                                     63 	.globl _S0_IF_FIRST
                                     64 	.globl _S0_IF_OV
                                     65 	.globl _S0_FST_ACT
                                     66 	.globl _CP_RL2
                                     67 	.globl _C_T2
                                     68 	.globl _TR2
                                     69 	.globl _EXEN2
                                     70 	.globl _TCLK
                                     71 	.globl _RCLK
                                     72 	.globl _EXF2
                                     73 	.globl _CAP1F
                                     74 	.globl _TF2
                                     75 	.globl _RI
                                     76 	.globl _TI
                                     77 	.globl _RB8
                                     78 	.globl _TB8
                                     79 	.globl _REN
                                     80 	.globl _SM2
                                     81 	.globl _SM1
                                     82 	.globl _SM0
                                     83 	.globl _IT0
                                     84 	.globl _IE0
                                     85 	.globl _IT1
                                     86 	.globl _IE1
                                     87 	.globl _TR0
                                     88 	.globl _TF0
                                     89 	.globl _TR1
                                     90 	.globl _TF1
                                     91 	.globl _RXD
                                     92 	.globl _PWM1_
                                     93 	.globl _TXD
                                     94 	.globl _PWM2_
                                     95 	.globl _AIN3
                                     96 	.globl _VBUS1
                                     97 	.globl _INT0
                                     98 	.globl _TXD1_
                                     99 	.globl _INT1
                                    100 	.globl _T0
                                    101 	.globl _RXD1_
                                    102 	.globl _PWM2
                                    103 	.globl _T1
                                    104 	.globl _UDP
                                    105 	.globl _UDM
                                    106 	.globl _TIN0
                                    107 	.globl _CAP1
                                    108 	.globl _T2
                                    109 	.globl _AIN0
                                    110 	.globl _VBUS2
                                    111 	.globl _TIN1
                                    112 	.globl _CAP2
                                    113 	.globl _T2EX
                                    114 	.globl _RXD_
                                    115 	.globl _TXD_
                                    116 	.globl _AIN1
                                    117 	.globl _UCC1
                                    118 	.globl _TIN2
                                    119 	.globl _SCS
                                    120 	.globl _CAP1_
                                    121 	.globl _T2_
                                    122 	.globl _AIN2
                                    123 	.globl _UCC2
                                    124 	.globl _TIN3
                                    125 	.globl _PWM1
                                    126 	.globl _MOSI
                                    127 	.globl _TIN4
                                    128 	.globl _RXD1
                                    129 	.globl _MISO
                                    130 	.globl _TIN5
                                    131 	.globl _TXD1
                                    132 	.globl _SCK
                                    133 	.globl _IE_SPI0
                                    134 	.globl _IE_TKEY
                                    135 	.globl _IE_USB
                                    136 	.globl _IE_ADC
                                    137 	.globl _IE_UART1
                                    138 	.globl _IE_PWMX
                                    139 	.globl _IE_GPIO
                                    140 	.globl _IE_WDOG
                                    141 	.globl _PX0
                                    142 	.globl _PT0
                                    143 	.globl _PX1
                                    144 	.globl _PT1
                                    145 	.globl _PS
                                    146 	.globl _PT2
                                    147 	.globl _PL_FLAG
                                    148 	.globl _PH_FLAG
                                    149 	.globl _EX0
                                    150 	.globl _ET0
                                    151 	.globl _EX1
                                    152 	.globl _ET1
                                    153 	.globl _ES
                                    154 	.globl _ET2
                                    155 	.globl _E_DIS
                                    156 	.globl _EA
                                    157 	.globl _P
                                    158 	.globl _F1
                                    159 	.globl _OV
                                    160 	.globl _RS0
                                    161 	.globl _RS1
                                    162 	.globl _F0
                                    163 	.globl _AC
                                    164 	.globl _CY
                                    165 	.globl _UEP1_DMA_H
                                    166 	.globl _UEP1_DMA_L
                                    167 	.globl _UEP1_DMA
                                    168 	.globl _UEP0_DMA_H
                                    169 	.globl _UEP0_DMA_L
                                    170 	.globl _UEP0_DMA
                                    171 	.globl _UEP2_3_MOD
                                    172 	.globl _UEP4_1_MOD
                                    173 	.globl _UEP3_DMA_H
                                    174 	.globl _UEP3_DMA_L
                                    175 	.globl _UEP3_DMA
                                    176 	.globl _UEP2_DMA_H
                                    177 	.globl _UEP2_DMA_L
                                    178 	.globl _UEP2_DMA
                                    179 	.globl _USB_DEV_AD
                                    180 	.globl _USB_CTRL
                                    181 	.globl _USB_INT_EN
                                    182 	.globl _UEP4_T_LEN
                                    183 	.globl _UEP4_CTRL
                                    184 	.globl _UEP0_T_LEN
                                    185 	.globl _UEP0_CTRL
                                    186 	.globl _USB_RX_LEN
                                    187 	.globl _USB_MIS_ST
                                    188 	.globl _USB_INT_ST
                                    189 	.globl _USB_INT_FG
                                    190 	.globl _UEP3_T_LEN
                                    191 	.globl _UEP3_CTRL
                                    192 	.globl _UEP2_T_LEN
                                    193 	.globl _UEP2_CTRL
                                    194 	.globl _UEP1_T_LEN
                                    195 	.globl _UEP1_CTRL
                                    196 	.globl _UDEV_CTRL
                                    197 	.globl _USB_C_CTRL
                                    198 	.globl _TKEY_DATH
                                    199 	.globl _TKEY_DATL
                                    200 	.globl _TKEY_DAT
                                    201 	.globl _TKEY_CTRL
                                    202 	.globl _ADC_DATA
                                    203 	.globl _ADC_CFG
                                    204 	.globl _ADC_CTRL
                                    205 	.globl _SBAUD1
                                    206 	.globl _SBUF1
                                    207 	.globl _SCON1
                                    208 	.globl _SPI0_SETUP
                                    209 	.globl _SPI0_CK_SE
                                    210 	.globl _SPI0_CTRL
                                    211 	.globl _SPI0_DATA
                                    212 	.globl _SPI0_STAT
                                    213 	.globl _PWM_CK_SE
                                    214 	.globl _PWM_CTRL
                                    215 	.globl _PWM_DATA1
                                    216 	.globl _PWM_DATA2
                                    217 	.globl _T2CAP1H
                                    218 	.globl _T2CAP1L
                                    219 	.globl _T2CAP1
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _T2COUNT
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _RCAP2
                                    226 	.globl _T2MOD
                                    227 	.globl _T2CON
                                    228 	.globl _SBUF
                                    229 	.globl _SCON
                                    230 	.globl _TH1
                                    231 	.globl _TH0
                                    232 	.globl _TL1
                                    233 	.globl _TL0
                                    234 	.globl _TMOD
                                    235 	.globl _TCON
                                    236 	.globl _XBUS_AUX
                                    237 	.globl _PIN_FUNC
                                    238 	.globl _P3_DIR_PU
                                    239 	.globl _P3_MOD_OC
                                    240 	.globl _P3
                                    241 	.globl _P2
                                    242 	.globl _P1_DIR_PU
                                    243 	.globl _P1_MOD_OC
                                    244 	.globl _P1
                                    245 	.globl _ROM_CTRL
                                    246 	.globl _ROM_DATA_H
                                    247 	.globl _ROM_DATA_L
                                    248 	.globl _ROM_DATA
                                    249 	.globl _ROM_ADDR_H
                                    250 	.globl _ROM_ADDR_L
                                    251 	.globl _ROM_ADDR
                                    252 	.globl _GPIO_IE
                                    253 	.globl _IP_EX
                                    254 	.globl _IE_EX
                                    255 	.globl _IP
                                    256 	.globl _IE
                                    257 	.globl _WDOG_COUNT
                                    258 	.globl _RESET_KEEP
                                    259 	.globl _WAKE_CTRL
                                    260 	.globl _CLOCK_CFG
                                    261 	.globl _PCON
                                    262 	.globl _GLOBAL_CFG
                                    263 	.globl _SAFE_MOD
                                    264 	.globl _DPH
                                    265 	.globl _DPL
                                    266 	.globl _SP
                                    267 	.globl _B
                                    268 	.globl _ACC
                                    269 	.globl _PSW
                                    270 	.globl _EP2_buffer
                                    271 	.globl _EP1_buffer
                                    272 	.globl _EP0_buffer
                                    273 ;--------------------------------------------------------
                                    274 ; special function registers
                                    275 ;--------------------------------------------------------
                                    276 	.area RSEG    (ABS,DATA)
      000000                        277 	.org 0x0000
                           0000D0   278 _PSW	=	0x00d0
                           0000E0   279 _ACC	=	0x00e0
                           0000F0   280 _B	=	0x00f0
                           000081   281 _SP	=	0x0081
                           000082   282 _DPL	=	0x0082
                           000083   283 _DPH	=	0x0083
                           0000A1   284 _SAFE_MOD	=	0x00a1
                           0000B1   285 _GLOBAL_CFG	=	0x00b1
                           000087   286 _PCON	=	0x0087
                           0000B9   287 _CLOCK_CFG	=	0x00b9
                           0000A9   288 _WAKE_CTRL	=	0x00a9
                           0000FE   289 _RESET_KEEP	=	0x00fe
                           0000FF   290 _WDOG_COUNT	=	0x00ff
                           0000A8   291 _IE	=	0x00a8
                           0000B8   292 _IP	=	0x00b8
                           0000E8   293 _IE_EX	=	0x00e8
                           0000E9   294 _IP_EX	=	0x00e9
                           0000C7   295 _GPIO_IE	=	0x00c7
                           008584   296 _ROM_ADDR	=	0x8584
                           000084   297 _ROM_ADDR_L	=	0x0084
                           000085   298 _ROM_ADDR_H	=	0x0085
                           008F8E   299 _ROM_DATA	=	0x8f8e
                           00008E   300 _ROM_DATA_L	=	0x008e
                           00008F   301 _ROM_DATA_H	=	0x008f
                           000086   302 _ROM_CTRL	=	0x0086
                           000090   303 _P1	=	0x0090
                           000092   304 _P1_MOD_OC	=	0x0092
                           000093   305 _P1_DIR_PU	=	0x0093
                           0000A0   306 _P2	=	0x00a0
                           0000B0   307 _P3	=	0x00b0
                           000096   308 _P3_MOD_OC	=	0x0096
                           000097   309 _P3_DIR_PU	=	0x0097
                           0000C6   310 _PIN_FUNC	=	0x00c6
                           0000A2   311 _XBUS_AUX	=	0x00a2
                           000088   312 _TCON	=	0x0088
                           000089   313 _TMOD	=	0x0089
                           00008A   314 _TL0	=	0x008a
                           00008B   315 _TL1	=	0x008b
                           00008C   316 _TH0	=	0x008c
                           00008D   317 _TH1	=	0x008d
                           000098   318 _SCON	=	0x0098
                           000099   319 _SBUF	=	0x0099
                           0000C8   320 _T2CON	=	0x00c8
                           0000C9   321 _T2MOD	=	0x00c9
                           00CBCA   322 _RCAP2	=	0xcbca
                           0000CA   323 _RCAP2L	=	0x00ca
                           0000CB   324 _RCAP2H	=	0x00cb
                           00CDCC   325 _T2COUNT	=	0xcdcc
                           0000CC   326 _TL2	=	0x00cc
                           0000CD   327 _TH2	=	0x00cd
                           00CFCE   328 _T2CAP1	=	0xcfce
                           0000CE   329 _T2CAP1L	=	0x00ce
                           0000CF   330 _T2CAP1H	=	0x00cf
                           00009B   331 _PWM_DATA2	=	0x009b
                           00009C   332 _PWM_DATA1	=	0x009c
                           00009D   333 _PWM_CTRL	=	0x009d
                           00009E   334 _PWM_CK_SE	=	0x009e
                           0000F8   335 _SPI0_STAT	=	0x00f8
                           0000F9   336 _SPI0_DATA	=	0x00f9
                           0000FA   337 _SPI0_CTRL	=	0x00fa
                           0000FB   338 _SPI0_CK_SE	=	0x00fb
                           0000FC   339 _SPI0_SETUP	=	0x00fc
                           0000C0   340 _SCON1	=	0x00c0
                           0000C1   341 _SBUF1	=	0x00c1
                           0000C2   342 _SBAUD1	=	0x00c2
                           000080   343 _ADC_CTRL	=	0x0080
                           00009A   344 _ADC_CFG	=	0x009a
                           00009F   345 _ADC_DATA	=	0x009f
                           0000C3   346 _TKEY_CTRL	=	0x00c3
                           00C5C4   347 _TKEY_DAT	=	0xc5c4
                           0000C4   348 _TKEY_DATL	=	0x00c4
                           0000C5   349 _TKEY_DATH	=	0x00c5
                           000091   350 _USB_C_CTRL	=	0x0091
                           0000D1   351 _UDEV_CTRL	=	0x00d1
                           0000D2   352 _UEP1_CTRL	=	0x00d2
                           0000D3   353 _UEP1_T_LEN	=	0x00d3
                           0000D4   354 _UEP2_CTRL	=	0x00d4
                           0000D5   355 _UEP2_T_LEN	=	0x00d5
                           0000D6   356 _UEP3_CTRL	=	0x00d6
                           0000D7   357 _UEP3_T_LEN	=	0x00d7
                           0000D8   358 _USB_INT_FG	=	0x00d8
                           0000D9   359 _USB_INT_ST	=	0x00d9
                           0000DA   360 _USB_MIS_ST	=	0x00da
                           0000DB   361 _USB_RX_LEN	=	0x00db
                           0000DC   362 _UEP0_CTRL	=	0x00dc
                           0000DD   363 _UEP0_T_LEN	=	0x00dd
                           0000DE   364 _UEP4_CTRL	=	0x00de
                           0000DF   365 _UEP4_T_LEN	=	0x00df
                           0000E1   366 _USB_INT_EN	=	0x00e1
                           0000E2   367 _USB_CTRL	=	0x00e2
                           0000E3   368 _USB_DEV_AD	=	0x00e3
                           00E5E4   369 _UEP2_DMA	=	0xe5e4
                           0000E4   370 _UEP2_DMA_L	=	0x00e4
                           0000E5   371 _UEP2_DMA_H	=	0x00e5
                           00E7E6   372 _UEP3_DMA	=	0xe7e6
                           0000E6   373 _UEP3_DMA_L	=	0x00e6
                           0000E7   374 _UEP3_DMA_H	=	0x00e7
                           0000EA   375 _UEP4_1_MOD	=	0x00ea
                           0000EB   376 _UEP2_3_MOD	=	0x00eb
                           00EDEC   377 _UEP0_DMA	=	0xedec
                           0000EC   378 _UEP0_DMA_L	=	0x00ec
                           0000ED   379 _UEP0_DMA_H	=	0x00ed
                           00EFEE   380 _UEP1_DMA	=	0xefee
                           0000EE   381 _UEP1_DMA_L	=	0x00ee
                           0000EF   382 _UEP1_DMA_H	=	0x00ef
                                    383 ;--------------------------------------------------------
                                    384 ; special function bits
                                    385 ;--------------------------------------------------------
                                    386 	.area RSEG    (ABS,DATA)
      000000                        387 	.org 0x0000
                           0000D7   388 _CY	=	0x00d7
                           0000D6   389 _AC	=	0x00d6
                           0000D5   390 _F0	=	0x00d5
                           0000D4   391 _RS1	=	0x00d4
                           0000D3   392 _RS0	=	0x00d3
                           0000D2   393 _OV	=	0x00d2
                           0000D1   394 _F1	=	0x00d1
                           0000D0   395 _P	=	0x00d0
                           0000AF   396 _EA	=	0x00af
                           0000AE   397 _E_DIS	=	0x00ae
                           0000AD   398 _ET2	=	0x00ad
                           0000AC   399 _ES	=	0x00ac
                           0000AB   400 _ET1	=	0x00ab
                           0000AA   401 _EX1	=	0x00aa
                           0000A9   402 _ET0	=	0x00a9
                           0000A8   403 _EX0	=	0x00a8
                           0000BF   404 _PH_FLAG	=	0x00bf
                           0000BE   405 _PL_FLAG	=	0x00be
                           0000BD   406 _PT2	=	0x00bd
                           0000BC   407 _PS	=	0x00bc
                           0000BB   408 _PT1	=	0x00bb
                           0000BA   409 _PX1	=	0x00ba
                           0000B9   410 _PT0	=	0x00b9
                           0000B8   411 _PX0	=	0x00b8
                           0000EF   412 _IE_WDOG	=	0x00ef
                           0000EE   413 _IE_GPIO	=	0x00ee
                           0000ED   414 _IE_PWMX	=	0x00ed
                           0000EC   415 _IE_UART1	=	0x00ec
                           0000EB   416 _IE_ADC	=	0x00eb
                           0000EA   417 _IE_USB	=	0x00ea
                           0000E9   418 _IE_TKEY	=	0x00e9
                           0000E8   419 _IE_SPI0	=	0x00e8
                           000097   420 _SCK	=	0x0097
                           000097   421 _TXD1	=	0x0097
                           000097   422 _TIN5	=	0x0097
                           000096   423 _MISO	=	0x0096
                           000096   424 _RXD1	=	0x0096
                           000096   425 _TIN4	=	0x0096
                           000095   426 _MOSI	=	0x0095
                           000095   427 _PWM1	=	0x0095
                           000095   428 _TIN3	=	0x0095
                           000095   429 _UCC2	=	0x0095
                           000095   430 _AIN2	=	0x0095
                           000094   431 _T2_	=	0x0094
                           000094   432 _CAP1_	=	0x0094
                           000094   433 _SCS	=	0x0094
                           000094   434 _TIN2	=	0x0094
                           000094   435 _UCC1	=	0x0094
                           000094   436 _AIN1	=	0x0094
                           000093   437 _TXD_	=	0x0093
                           000092   438 _RXD_	=	0x0092
                           000091   439 _T2EX	=	0x0091
                           000091   440 _CAP2	=	0x0091
                           000091   441 _TIN1	=	0x0091
                           000091   442 _VBUS2	=	0x0091
                           000091   443 _AIN0	=	0x0091
                           000090   444 _T2	=	0x0090
                           000090   445 _CAP1	=	0x0090
                           000090   446 _TIN0	=	0x0090
                           0000B7   447 _UDM	=	0x00b7
                           0000B6   448 _UDP	=	0x00b6
                           0000B5   449 _T1	=	0x00b5
                           0000B4   450 _PWM2	=	0x00b4
                           0000B4   451 _RXD1_	=	0x00b4
                           0000B4   452 _T0	=	0x00b4
                           0000B3   453 _INT1	=	0x00b3
                           0000B2   454 _TXD1_	=	0x00b2
                           0000B2   455 _INT0	=	0x00b2
                           0000B2   456 _VBUS1	=	0x00b2
                           0000B2   457 _AIN3	=	0x00b2
                           0000B1   458 _PWM2_	=	0x00b1
                           0000B1   459 _TXD	=	0x00b1
                           0000B0   460 _PWM1_	=	0x00b0
                           0000B0   461 _RXD	=	0x00b0
                           00008F   462 _TF1	=	0x008f
                           00008E   463 _TR1	=	0x008e
                           00008D   464 _TF0	=	0x008d
                           00008C   465 _TR0	=	0x008c
                           00008B   466 _IE1	=	0x008b
                           00008A   467 _IT1	=	0x008a
                           000089   468 _IE0	=	0x0089
                           000088   469 _IT0	=	0x0088
                           00009F   470 _SM0	=	0x009f
                           00009E   471 _SM1	=	0x009e
                           00009D   472 _SM2	=	0x009d
                           00009C   473 _REN	=	0x009c
                           00009B   474 _TB8	=	0x009b
                           00009A   475 _RB8	=	0x009a
                           000099   476 _TI	=	0x0099
                           000098   477 _RI	=	0x0098
                           0000CF   478 _TF2	=	0x00cf
                           0000CF   479 _CAP1F	=	0x00cf
                           0000CE   480 _EXF2	=	0x00ce
                           0000CD   481 _RCLK	=	0x00cd
                           0000CC   482 _TCLK	=	0x00cc
                           0000CB   483 _EXEN2	=	0x00cb
                           0000CA   484 _TR2	=	0x00ca
                           0000C9   485 _C_T2	=	0x00c9
                           0000C8   486 _CP_RL2	=	0x00c8
                           0000FF   487 _S0_FST_ACT	=	0x00ff
                           0000FE   488 _S0_IF_OV	=	0x00fe
                           0000FD   489 _S0_IF_FIRST	=	0x00fd
                           0000FC   490 _S0_IF_BYTE	=	0x00fc
                           0000FB   491 _S0_FREE	=	0x00fb
                           0000FA   492 _S0_T_FIFO	=	0x00fa
                           0000F8   493 _S0_R_FIFO	=	0x00f8
                           0000C7   494 _U1SM0	=	0x00c7
                           0000C5   495 _U1SMOD	=	0x00c5
                           0000C4   496 _U1REN	=	0x00c4
                           0000C3   497 _U1TB8	=	0x00c3
                           0000C2   498 _U1RB8	=	0x00c2
                           0000C1   499 _U1TI	=	0x00c1
                           0000C0   500 _U1RI	=	0x00c0
                           000087   501 _CMPO	=	0x0087
                           000086   502 _CMP_IF	=	0x0086
                           000085   503 _ADC_IF	=	0x0085
                           000084   504 _ADC_START	=	0x0084
                           000083   505 _CMP_CHAN	=	0x0083
                           000081   506 _ADC_CHAN1	=	0x0081
                           000080   507 _ADC_CHAN0	=	0x0080
                           0000DF   508 _U_IS_NAK	=	0x00df
                           0000DE   509 _U_TOG_OK	=	0x00de
                           0000DD   510 _U_SIE_FREE	=	0x00dd
                           0000DC   511 _UIF_FIFO_OV	=	0x00dc
                           0000DB   512 _UIF_HST_SOF	=	0x00db
                           0000DA   513 _UIF_SUSPEND	=	0x00da
                           0000D9   514 _UIF_TRANSFER	=	0x00d9
                           0000D8   515 _UIF_DETECT	=	0x00d8
                           0000D8   516 _UIF_BUS_RST	=	0x00d8
                           000090   517 _PP10	=	0x0090
                           000091   518 _PP11	=	0x0091
                           000092   519 _PP12	=	0x0092
                           000093   520 _PP13	=	0x0093
                           000094   521 _PP14	=	0x0094
                           000095   522 _PP15	=	0x0095
                           000096   523 _PP16	=	0x0096
                           000097   524 _PP17	=	0x0097
                           0000B0   525 _PP30	=	0x00b0
                           0000B1   526 _PP31	=	0x00b1
                           0000B2   527 _PP32	=	0x00b2
                           0000B3   528 _PP33	=	0x00b3
                           0000B4   529 _PP34	=	0x00b4
                           0000B5   530 _PP35	=	0x00b5
                           0000B6   531 _PP36	=	0x00b6
                           0000B7   532 _PP37	=	0x00b7
                                    533 ;--------------------------------------------------------
                                    534 ; overlayable register banks
                                    535 ;--------------------------------------------------------
                                    536 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        537 	.ds 8
                                    538 ;--------------------------------------------------------
                                    539 ; overlayable bit register bank
                                    540 ;--------------------------------------------------------
                                    541 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        542 bits:
      000021                        543 	.ds 1
                           008000   544 	b0 = bits[0]
                           008100   545 	b1 = bits[1]
                           008200   546 	b2 = bits[2]
                           008300   547 	b3 = bits[3]
                           008400   548 	b4 = bits[4]
                           008500   549 	b5 = bits[5]
                           008600   550 	b6 = bits[6]
                           008700   551 	b7 = bits[7]
                                    552 ;--------------------------------------------------------
                                    553 ; internal ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area DSEG    (DATA)
                                    556 ;--------------------------------------------------------
                                    557 ; overlayable items in internal ram
                                    558 ;--------------------------------------------------------
                                    559 ;--------------------------------------------------------
                                    560 ; Stack segment in internal ram
                                    561 ;--------------------------------------------------------
                                    562 	.area	SSEG
      000022                        563 __start__stack:
      000022                        564 	.ds	1
                                    565 
                                    566 ;--------------------------------------------------------
                                    567 ; indirectly addressable internal ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area ISEG    (DATA)
                                    570 ;--------------------------------------------------------
                                    571 ; absolute internal ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area IABS    (ABS,DATA)
                                    574 	.area IABS    (ABS,DATA)
                                    575 ;--------------------------------------------------------
                                    576 ; bit data
                                    577 ;--------------------------------------------------------
                                    578 	.area BSEG    (BIT)
                                    579 ;--------------------------------------------------------
                                    580 ; paged external ram data
                                    581 ;--------------------------------------------------------
                                    582 	.area PSEG    (PAG,XDATA)
                                    583 ;--------------------------------------------------------
                                    584 ; external ram data
                                    585 ;--------------------------------------------------------
                                    586 	.area XSEG    (XDATA)
                           000000   587 _EP0_buffer	=	0x0000
                           00000A   588 _EP1_buffer	=	0x000a
                           000014   589 _EP2_buffer	=	0x0014
                                    590 ;--------------------------------------------------------
                                    591 ; absolute external ram data
                                    592 ;--------------------------------------------------------
                                    593 	.area XABS    (ABS,XDATA)
                                    594 ;--------------------------------------------------------
                                    595 ; external initialized ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area HOME    (CODE)
                                    598 	.area GSINIT0 (CODE)
                                    599 	.area GSINIT1 (CODE)
                                    600 	.area GSINIT2 (CODE)
                                    601 	.area GSINIT3 (CODE)
                                    602 	.area GSINIT4 (CODE)
                                    603 	.area GSINIT5 (CODE)
                                    604 	.area GSINIT  (CODE)
                                    605 	.area GSFINAL (CODE)
                                    606 	.area CSEG    (CODE)
                                    607 ;--------------------------------------------------------
                                    608 ; interrupt vector
                                    609 ;--------------------------------------------------------
                                    610 	.area HOME    (CODE)
      000000                        611 __interrupt_vect:
      000000 02 00 49         [24]  612 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  613 	reti
      000004                        614 	.ds	7
      00000B 32               [24]  615 	reti
      00000C                        616 	.ds	7
      000013 32               [24]  617 	reti
      000014                        618 	.ds	7
      00001B 32               [24]  619 	reti
      00001C                        620 	.ds	7
      000023 32               [24]  621 	reti
      000024                        622 	.ds	7
      00002B 32               [24]  623 	reti
      00002C                        624 	.ds	7
      000033 32               [24]  625 	reti
      000034                        626 	.ds	7
      00003B 32               [24]  627 	reti
      00003C                        628 	.ds	7
      000043 02 00 BD         [24]  629 	ljmp	_USB_ISR
                                    630 ;--------------------------------------------------------
                                    631 ; global & static initialisations
                                    632 ;--------------------------------------------------------
                                    633 	.area HOME    (CODE)
                                    634 	.area GSINIT  (CODE)
                                    635 	.area GSFINAL (CODE)
                                    636 	.area GSINIT  (CODE)
                                    637 	.globl __sdcc_gsinit_startup
                                    638 	.globl __sdcc_program_startup
                                    639 	.globl __start__stack
                                    640 	.globl __mcs51_genRAMCLEAR
                                    641 	.area GSFINAL (CODE)
      0000BA 02 00 46         [24]  642 	ljmp	__sdcc_program_startup
                                    643 ;--------------------------------------------------------
                                    644 ; Home
                                    645 ;--------------------------------------------------------
                                    646 	.area HOME    (CODE)
                                    647 	.area HOME    (CODE)
      000046                        648 __sdcc_program_startup:
      000046 02 00 FC         [24]  649 	ljmp	_main
                                    650 ;	return from main will return to caller
                                    651 ;--------------------------------------------------------
                                    652 ; code
                                    653 ;--------------------------------------------------------
                                    654 	.area CSEG    (CODE)
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'USB_ISR'
                                    657 ;------------------------------------------------------------
                                    658 ;	main.c:20: void USB_ISR(void) __interrupt(INT_NO_USB) {
                                    659 ;	-----------------------------------------
                                    660 ;	 function USB_ISR
                                    661 ;	-----------------------------------------
      0000BD                        662 _USB_ISR:
                           000007   663 	ar7 = 0x07
                           000006   664 	ar6 = 0x06
                           000005   665 	ar5 = 0x05
                           000004   666 	ar4 = 0x04
                           000003   667 	ar3 = 0x03
                           000002   668 	ar2 = 0x02
                           000001   669 	ar1 = 0x01
                           000000   670 	ar0 = 0x00
      0000BD C0 21            [24]  671 	push	bits
      0000BF C0 E0            [24]  672 	push	acc
      0000C1 C0 F0            [24]  673 	push	b
      0000C3 C0 82            [24]  674 	push	dpl
      0000C5 C0 83            [24]  675 	push	dph
      0000C7 C0 07            [24]  676 	push	(0+7)
      0000C9 C0 06            [24]  677 	push	(0+6)
      0000CB C0 05            [24]  678 	push	(0+5)
      0000CD C0 04            [24]  679 	push	(0+4)
      0000CF C0 03            [24]  680 	push	(0+3)
      0000D1 C0 02            [24]  681 	push	(0+2)
      0000D3 C0 01            [24]  682 	push	(0+1)
      0000D5 C0 00            [24]  683 	push	(0+0)
      0000D7 C0 D0            [24]  684 	push	psw
      0000D9 75 D0 00         [24]  685 	mov	psw,#0x00
                                    686 ;	main.c:21: USB_interrupt();
      0000DC 12 07 EA         [24]  687 	lcall	_USB_interrupt
                                    688 ;	main.c:22: }
      0000DF D0 D0            [24]  689 	pop	psw
      0000E1 D0 00            [24]  690 	pop	(0+0)
      0000E3 D0 01            [24]  691 	pop	(0+1)
      0000E5 D0 02            [24]  692 	pop	(0+2)
      0000E7 D0 03            [24]  693 	pop	(0+3)
      0000E9 D0 04            [24]  694 	pop	(0+4)
      0000EB D0 05            [24]  695 	pop	(0+5)
      0000ED D0 06            [24]  696 	pop	(0+6)
      0000EF D0 07            [24]  697 	pop	(0+7)
      0000F1 D0 83            [24]  698 	pop	dph
      0000F3 D0 82            [24]  699 	pop	dpl
      0000F5 D0 F0            [24]  700 	pop	b
      0000F7 D0 E0            [24]  701 	pop	acc
      0000F9 D0 21            [24]  702 	pop	bits
      0000FB 32               [24]  703 	reti
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'main'
                                    706 ;------------------------------------------------------------
                                    707 ;	main.c:62: void main(void) {
                                    708 ;	-----------------------------------------
                                    709 ;	 function main
                                    710 ;	-----------------------------------------
      0000FC                        711 _main:
                                    712 ;	src/system.h:71: SAFE_MOD = 0x55;
      0000FC 75 A1 55         [24]  713 	mov	_SAFE_MOD,#0x55
                                    714 ;	src/system.h:72: SAFE_MOD = 0xAA;                              // enter safe mode
      0000FF 75 A1 AA         [24]  715 	mov	_SAFE_MOD,#0xaa
                                    716 ;	src/system.h:80: __asm__("anl _CLOCK_CFG, #0b11111000");
      000102 53 B9 F8         [24]  717 	anl	_CLOCK_CFG, #0b11111000
                                    718 ;	src/system.h:81: __asm__("orl _CLOCK_CFG, #0b00000101");     // 16MHz	
      000105 43 B9 05         [24]  719 	orl	_CLOCK_CFG, #0b00000101
                                    720 ;	src/system.h:100: SAFE_MOD = 0x00;                              // terminate safe mode
      000108 75 A1 00         [24]  721 	mov	_SAFE_MOD,#0x00
                                    722 ;	main.c:64: DLY_ms(10);
      00010B 90 00 0A         [24]  723 	mov	dptr,#0x000a
      00010E 12 01 B5         [24]  724 	lcall	_DLY_ms
                                    725 ;	main.c:65: PIN_input(PIN_KEY1);
      000111 53 97 FE         [24]  726 	anl	_P3_DIR_PU,#0xfe
      000114 53 96 FE         [24]  727 	anl	_P3_MOD_OC,#0xfe
                                    728 ;	main.c:66: PIN_input(PIN_KEY2);
      000117 53 97 FD         [24]  729 	anl	_P3_DIR_PU,#0xfd
      00011A 53 96 FD         [24]  730 	anl	_P3_MOD_OC,#0xfd
                                    731 ;	main.c:67: PIN_input(PIN_KEY3);
      00011D 53 93 FD         [24]  732 	anl	_P1_DIR_PU,#0xfd
      000120 53 92 FD         [24]  733 	anl	_P1_MOD_OC,#0xfd
                                    734 ;	main.c:68: HID_init();
      000123 12 08 87         [24]  735 	lcall	_HID_init
                                    736 ;	main.c:69: NEO_init();
                                    737 ;	assignBit
      000126 C2 B3            [12]  738 	clr	_PP33
      000128 53 96 F7         [24]  739 	anl	_P3_MOD_OC,#0xf7
      00012B 43 97 08         [24]  740 	orl	_P3_DIR_PU,#0x08
                                    741 ;	main.c:71: while (1) {
      00012E                        742 00111$:
                                    743 ;	main.c:72: if (PIN_read(PIN_KEY1)) {
      00012E 30 B0 1A         [24]  744 	jnb	_PP30,00108$
                                    745 ;	main.c:27: KBD_press(KBD_KEY_UP_ARROW);
      000131 75 82 DA         [24]  746 	mov	dpl,#0xda
      000134 12 02 64         [24]  747 	lcall	_KBD_press
                                    748 ;	main.c:28: KBD_release(KBD_KEY_UP_ARROW);
      000137 75 82 DA         [24]  749 	mov	dpl,#0xda
      00013A 12 02 F2         [24]  750 	lcall	_KBD_release
                                    751 ;	main.c:74: NEO_writeColor(255, 0, 0);
      00013D 75 08 00         [24]  752 	mov	_NEO_writeColor_PARM_2,#0x00
      000140 75 09 00         [24]  753 	mov	_NEO_writeColor_PARM_3,#0x00
      000143 75 82 FF         [24]  754 	mov	dpl,#0xff
      000146 12 01 F3         [24]  755 	lcall	_NEO_writeColor
      000149 80 E3            [24]  756 	sjmp	00111$
      00014B                        757 00108$:
                                    758 ;	main.c:75: } else if (PIN_read(PIN_KEY2)) {
      00014B 30 B1 1A         [24]  759 	jnb	_PP31,00105$
                                    760 ;	main.c:40: KBD_press(KBD_KEY_DOWN_ARROW);
      00014E 75 82 D9         [24]  761 	mov	dpl,#0xd9
      000151 12 02 64         [24]  762 	lcall	_KBD_press
                                    763 ;	main.c:41: KBD_release(KBD_KEY_DOWN_ARROW);
      000154 75 82 D9         [24]  764 	mov	dpl,#0xd9
      000157 12 02 F2         [24]  765 	lcall	_KBD_release
                                    766 ;	main.c:77: NEO_writeColor(0, 255, 0);
      00015A 75 08 FF         [24]  767 	mov	_NEO_writeColor_PARM_2,#0xff
      00015D 75 09 00         [24]  768 	mov	_NEO_writeColor_PARM_3,#0x00
      000160 75 82 00         [24]  769 	mov	dpl,#0x00
      000163 12 01 F3         [24]  770 	lcall	_NEO_writeColor
      000166 80 C6            [24]  771 	sjmp	00111$
      000168                        772 00105$:
                                    773 ;	main.c:78: } else if (PIN_read(PIN_KEY3)) {
      000168 30 91 17         [24]  774 	jnb	_PP11,00102$
                                    775 ;	main.c:53: KBD_print("Unit Electronics");
      00016B 90 09 11         [24]  776 	mov	dptr,#___str_0
      00016E 75 F0 80         [24]  777 	mov	b,#0x80
      000171 12 03 90         [24]  778 	lcall	_KBD_print
                                    779 ;	main.c:80: NEO_writeColor(0, 0, 255);
      000174 75 08 00         [24]  780 	mov	_NEO_writeColor_PARM_2,#0x00
      000177 75 09 FF         [24]  781 	mov	_NEO_writeColor_PARM_3,#0xff
      00017A 75 82 00         [24]  782 	mov	dpl,#0x00
      00017D 12 01 F3         [24]  783 	lcall	_NEO_writeColor
      000180 80 AC            [24]  784 	sjmp	00111$
      000182                        785 00102$:
                                    786 ;	main.c:82: NEO_writeColor(0, 0, 0);
      000182 75 08 00         [24]  787 	mov	_NEO_writeColor_PARM_2,#0x00
      000185 75 09 00         [24]  788 	mov	_NEO_writeColor_PARM_3,#0x00
      000188 75 82 00         [24]  789 	mov	dpl,#0x00
      00018B 12 01 F3         [24]  790 	lcall	_NEO_writeColor
                                    791 ;	main.c:83: DLY_ms(40);
      00018E 90 00 28         [24]  792 	mov	dptr,#0x0028
      000191 12 01 B5         [24]  793 	lcall	_DLY_ms
                                    794 ;	main.c:86: }
      000194 80 98            [24]  795 	sjmp	00111$
                                    796 	.area CSEG    (CODE)
                                    797 	.area CONST   (CODE)
                                    798 	.area CONST   (CODE)
      000911                        799 ___str_0:
      000911 55 6E 69 74 20 45 6C   800 	.ascii "Unit Electronics"
             65 63 74 72 6F 6E 69
             63 73
      000921 00                     801 	.db 0x00
                                    802 	.area CSEG    (CODE)
                                    803 	.area CABS    (ABS,CODE)
